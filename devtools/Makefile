ci-soundness:
	cd ../src && make
	python3 run_soundness_tests.py ../.github/soundness 120
	python3 run_soundness_tests.py ../.github/soundness 120 -inner
	python3 run_soundness_tests.py ../.github/soundness 120 -preinner
	python3 run_soundness_tests.py ../.github/soundness 120 -dmt
