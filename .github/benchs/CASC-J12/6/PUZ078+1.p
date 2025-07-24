fof(tuesday_follows_monday,axiom,
    tuesday = consecutive(monday) ).

fof(day2_follows_day1,axiom,
    ! [X] :
      ( day2(consecutive(X))
    <=> day1(X) ) ).

fof(day2_once,axiom,
    ? [X] : day2(X) ).

fof(statement3,axiom,
    ! [X] :
      ( day3(X)
     => ( ( ~ truthday(friday)
          & ~ truthday(wednesday) )
      <=> truthday(X) ) ) ).

fof(day3_follows_day2,axiom,
    ! [X] :
      ( day2(X)
    <=> day3(consecutive(X)) ) ).

fof(saturday_follows_friday,axiom,
    saturday = consecutive(friday) ).

fof(monday_follows_sunday,axiom,
    consecutive(sunday) = monday ).

fof(sunday_follows_saturday,axiom,
    sunday = consecutive(saturday) ).

fof(day3_unique,axiom,
    ! [X,Y] :
      ( Y = X
     <= ( day3(Y)
        & day3(X) ) ) ).

fof(day2_unique,axiom,
    ! [X,Y] :
      ( X = Y
     <= ( day2(X)
        & day2(Y) ) ) ).

fof(wednesday_follows_tuesday,axiom,
    consecutive(tuesday) = wednesday ).

fof(tuesday_leo_tells_truths,conjecture,
    truthday(tuesday) ).

fof(truth_once,axiom,
    ? [X] : truthday(X) ).

fof(uniquenames,axiom,
    ( monday != wednesday
    & monday != thursday
    & monday != saturday
    & monday != sunday
    & tuesday != friday
    & wednesday != thursday
    & wednesday != friday
    & friday != saturday
    & friday != sunday
    & saturday != sunday
    & sunday != thursday
    & thursday != saturday
    & friday != thursday
    & wednesday != sunday
    & saturday != wednesday
    & tuesday != sunday
    & tuesday != saturday
    & tuesday != thursday
    & tuesday != wednesday
    & monday != friday
    & tuesday != monday ) ).

fof(days_of_week,axiom,
    ! [X] :
      ( wednesday = X
      | X = saturday
      | X = sunday
      | friday = X
      | X = thursday
      | tuesday = X
      | monday = X ) ).

fof(day3_once,axiom,
    ? [X] : day3(X) ).

fof(statement2,axiom,
    ! [X] :
      ( ( ( day2(thursday)
          | day2(saturday)
          | day2(sunday) )
      <=> truthday(X) )
     <= day2(X) ) ).

fof(thursday_follows_wednesday,axiom,
    thursday = consecutive(wednesday) ).

fof(statement1,axiom,
    ! [X] :
      ( day1(X)
     => ( ( ~ truthday(tuesday)
          & ~ truthday(monday) )
      <=> truthday(X) ) ) ).

fof(friday_follows_thursday,axiom,
    consecutive(thursday) = friday ).

fof(day1_unique,axiom,
    ! [X,Y] :
      ( X = Y
     <= ( day1(Y)
        & day1(X) ) ) ).

fof(truth_unique,axiom,
    ! [X,Y] :
      ( ( truthday(Y)
        & truthday(X) )
     => X = Y ) ).

fof(day1_once,axiom,
    ? [X] : day1(X) ).

