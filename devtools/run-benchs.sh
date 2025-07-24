if [ ! -d "$1" ] || [ ! -d "$2" ]; then
	echo "Usage: $0 axioms_directory problem_directory"
	exit 1
fi

FLAGS="-dmt -preinner"
TIMEOUT=120

clone_and_make() {
	folder=$1
	commit=$2

	prev_folder=$(pwd)

	cd $folder
	git clone https://github.com/GoelandProver/Goeland.git && cd Goeland || (echo "Error while cloning"; exit 1)
	git config --add remote.origin.fetch "+refs/pull/*/head:refs/remotes/origin/pr/*"
	git fetch --all
	git checkout $commit

	cd src
	make

	cd $prev_folder
}

run () {
	folder=$1
	file=$2
	problem=$3
	axiom_folder=$4
	prev_folder=$(pwd)

	cd $folder/Goeland/src
	res=$(TPTP=$axiom_folder timeout $TIMEOUT ./_build/goeland $FLAGS $prev_folder/$problem)
	time=$(echo "$res" | grep "% RES")
	if [ ! -z "$time" ]; then
		parsed_time=$(echo $time | awk '{print $2}' | cut -d '[' -f2 | cut -d ']' -f1 )
		echo "$problem,1,$parsed_time\n" >> $file
	else
		echo "$problem,0,$TIMEOUT\n" >> $file
	fi

	cd $prev_folder
}

compare_last () {
	new=$1
	old=$2
	out=$3

	problem=$(tail -n 2 $new | tr ',' ' ' | awk '{print $1}')

	new_result=$(tail -n 2 $new | tr ',' ' ' | awk '{print $2}')
	old_result=$(tail -n 2 $old | tr ',' ' ' | awk '{print $2}')

	new_time=$(tail -n 2 $new | tr ',' ' ' | awk '{print $3}' | sed 's/.$//')
	old_time=$(tail -n 2 $old | tr ',' ' ' | awk '{print $3}' | sed 's/.$//')

	result=""
	if [ "$new_result" = "$old_result" ]; then
		result="0"
	elif [ "$new_result" = "1" ]; then
		result="1"
	else
		result="-1"
	fi

	time=$(echo "scale=5; ($new_time / $old_time) - 1" | bc)

	echo "$problem,$result,$old_time,$new_time,$time%\n" >> $out
}

make_recap () {
	result_file=$1
	out_file=$2

	diff="0"
	old_sum="0"
	new_sum="0"

	cat $result_file | while read line; do
		result=$(echo $line | tr ',' ' ' | awk '{print $2}')
		old_time=$(echo $line | tr ',' ' ' | awk '{print $3}')
		new_time=$(echo $line | tr ',' ' ' | awk '{print $4}')

		if [ ! -z $result ]; then
			diff=$(echo "$diff + $result" | bc)
		fi

		if [ ! -z $old_time ]; then
			old_sum=$(echo "$old_sum + $old_time" | bc)
		fi

		if [ ! -z $new_time ]; then
			new_sum=$(echo "$new_sum + $new_time" | bc)
		fi

		echo "$diff,$old_sum,$new_sum\n" >> $out_file
	done

	final_line=$(cat $out_file | tail -n 2 | tr ',' ' ')
	diff=$(echo $final_line | awk '{print $1}')
	new_sum=$(echo $final_line | awk '{print $2}')
	old_sum=$(echo $final_line | awk '{print $3}')

	average=$(echo "scale=5; ($new_sum / $old_sum) - 1" | bc)
	if [ $(echo "$average > 0" | bc -l) -eq 1 ]; then
		echo "Problems diff: $diff, average performance: +$average%" > $out_file
	else
		echo "Problems diff: $diff, average performance: $average%" > $out_file
	fi

}

axiom_folder=$1
target_folder=$2

new_commit=$(git rev-parse HEAD)
old_commit=$(git merge-base HEAD^1 $new_commit)

echo "Goéland's benchs will start on folder $target_folder.\nComparison between $new_commit (new) and $old_commit (old).\n"

root_benchs="/tmp/benchs"
new_folder="$root_benchs/goeland-$new_commit"
old_folder="$root_benchs/goeland-$old_commit"
new_timings="$root_benchs/timings-$new_commit.txt"
old_timings="$root_benchs/timings-$old_commit.txt"
both_timings="$root_benchs/timings.txt"

mkdir -p $new_folder
mkdir -p $old_folder

clone_and_make $new_folder $new_commit
clone_and_make $old_folder $old_commit

touch $new_timings
touch $old_timings
touch $both_timings

for problem in $(find $target_folder -type f -name '*.p'); do
	run $new_folder $new_timings $problem $axiom_folder
	run $old_folder $old_timings $problem $axiom_folder

	compare_last $new_timings $old_timings $both_timings
done

recap="$root_benchs/recap.txt"
touch $recap

make_recap $both_timings $recap

echo "\nNew commit results:"
cat $new_timings | sed '1i Problem,Result,Time\n' | column -s, -t

echo "\nOld commit results:"
cat $old_timings | sed '1i Problem,Result,Time\n' | column -s, -t

echo "\nComparison:"
cat $both_timings | sed '1i Problem,Result,Old commit time,New commit time,Percentage loss/gain\n' | column -s, -t

result=$(cat $out_file)
echo "recap=$result"
rm -rf $root_benchs
