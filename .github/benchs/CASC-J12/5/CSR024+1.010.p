include('Axioms/CSR001+0.ax').
include('Axioms/CSR001+3.ax').
fof(less9,axiom,
    ! [X] :
      ( less(X,n9)
    <=> less_or_equal(X,n8) ) ).

fof(less7,axiom,
    ! [X] :
      ( less(X,n7)
    <=> less_or_equal(X,n6) ) ).

fof(plus0_0,axiom,
    plus(n0,n0) = n0 ).

fof(plus1_3,axiom,
    n4 = plus(n1,n3) ).

fof(plus0_3,axiom,
    plus(n0,n3) = n3 ).

fof(plus0_2,axiom,
    plus(n0,n2) = n2 ).

fof(less3,axiom,
    ! [X] :
      ( less(X,n3)
    <=> less_or_equal(X,n2) ) ).

fof(spinning_3,conjecture,
    ( holdsAt(spinning(trolley2),n1)
    & holdsAt(spinning(trolley4),n1)
    & holdsAt(spinning(trolley7),n1)
    & holdsAt(spinning(trolley8),n1)
    & holdsAt(spinning(trolley9),n1)
    & holdsAt(spinning(trolley10),n1)
    & holdsAt(spinning(trolley6),n1)
    & holdsAt(spinning(trolley5),n1)
    & holdsAt(spinning(trolley3),n1)
    & holdsAt(spinning(trolley1),n1) ) ).

fof(less0,axiom,
    ~ ? [X] : less(X,n0) ).

fof(plus3_3,axiom,
    plus(n3,n3) = n6 ).

fof(less_or_equal,axiom,
    ! [X,Y] :
      ( ( X = Y
        | less(X,Y) )
    <=> less_or_equal(X,Y) ) ).

fof(plus2_3,axiom,
    n5 = plus(n2,n3) ).

fof(less4,axiom,
    ! [X] :
      ( less_or_equal(X,n3)
    <=> less(X,n4) ) ).

fof(distinct_agents_and_trolleys,hypothesis,
    ( trolley2 != trolley1
    & agent2 != agent1
    & trolley1 != trolley3
    & agent3 != agent1
    & agent1 != agent4
    & trolley5 != trolley1
    & agent5 != agent1
    & trolley6 != trolley1
    & agent6 != agent1
    & trolley1 != trolley8
    & agent1 != agent8
    & trolley1 != trolley9
    & agent9 != agent1
    & trolley1 != trolley10
    & agent1 != agent10
    & trolley3 != trolley2
    & trolley4 != trolley2
    & trolley2 != trolley6
    & trolley8 != trolley2
    & agent2 != agent8
    & agent2 != agent9
    & agent10 != agent2
    & trolley4 != trolley3
    & agent4 != agent3
    & trolley5 != trolley3
    & trolley7 != trolley3
    & trolley3 != trolley8
    & agent3 != agent8
    & trolley3 != trolley9
    & agent3 != agent9
    & trolley10 != trolley3
    & agent3 != agent10
    & trolley4 != trolley5
    & agent4 != agent5
    & trolley6 != trolley4
    & agent7 != agent4
    & trolley4 != trolley8
    & agent8 != agent4
    & trolley4 != trolley9
    & agent9 != agent4
    & trolley4 != trolley10
    & agent10 != agent4
    & trolley5 != trolley7
    & trolley5 != trolley8
    & agent8 != agent5
    & agent10 != agent5
    & trolley6 != trolley7
    & agent7 != agent6
    & agent6 != agent8
    & trolley9 != trolley6
    & trolley6 != trolley10
    & trolley8 != trolley7
    & agent7 != agent9
    & trolley8 != trolley10
    & agent8 != agent10
    & agent10 != agent9
    & trolley9 != trolley10
    & agent9 != agent8
    & trolley8 != trolley9
    & agent10 != agent7
    & trolley10 != trolley7
    & trolley7 != trolley9
    & agent7 != agent8
    & agent6 != agent10
    & agent9 != agent6
    & trolley8 != trolley6
    & trolley5 != trolley10
    & agent5 != agent9
    & trolley9 != trolley5
    & agent7 != agent5
    & agent6 != agent5
    & trolley6 != trolley5
    & trolley7 != trolley4
    & agent6 != agent4
    & agent3 != agent7
    & agent3 != agent6
    & trolley3 != trolley6
    & agent3 != agent5
    & trolley2 != trolley10
    & trolley9 != trolley2
    & agent7 != agent2
    & trolley7 != trolley2
    & agent2 != agent6
    & agent5 != agent2
    & trolley2 != trolley5
    & agent4 != agent2
    & agent3 != agent2
    & agent7 != agent1
    & trolley7 != trolley1
    & trolley4 != trolley1 ) ).

fof(not_releasedAt,hypothesis,
    ! [Fluent,Time] : ~ releasedAt(Fluent,Time) ).

fof(less6,axiom,
    ! [X] :
      ( less(X,n6)
    <=> less_or_equal(X,n5) ) ).

fof(less8,axiom,
    ! [X] :
      ( less_or_equal(X,n7)
    <=> less(X,n8) ) ).

fof(less5,axiom,
    ! [X] :
      ( less(X,n5)
    <=> less_or_equal(X,n4) ) ).

fof(less2,axiom,
    ! [X] :
      ( less_or_equal(X,n1)
    <=> less(X,n2) ) ).

fof(symmetry_of_plus,axiom,
    ! [X,Y] : plus(X,Y) = plus(Y,X) ).

fof(plus0_1,axiom,
    n1 = plus(n0,n1) ).

fof(plus2_2,axiom,
    n4 = plus(n2,n2) ).

fof(less1,axiom,
    ! [X] :
      ( less_or_equal(X,n0)
    <=> less(X,n1) ) ).

fof(initial_cond,hypothesis,
    ( ~ holdsAt(backwards(trolley1),n0)
    & ~ holdsAt(spinning(trolley1),n0)
    & ~ holdsAt(forwards(trolley2),n0)
    & ~ holdsAt(backwards(trolley2),n0)
    & ~ holdsAt(backwards(trolley4),n0)
    & ~ holdsAt(spinning(trolley4),n0)
    & ~ holdsAt(spinning(trolley5),n0)
    & ~ holdsAt(spinning(trolley6),n0)
    & ~ holdsAt(backwards(trolley7),n0)
    & ~ holdsAt(backwards(trolley8),n0)
    & ~ holdsAt(backwards(trolley9),n0)
    & ~ holdsAt(backwards(trolley10),n0)
    & ~ holdsAt(spinning(trolley10),n0)
    & ~ holdsAt(forwards(trolley10),n0)
    & ~ holdsAt(spinning(trolley9),n0)
    & ~ holdsAt(forwards(trolley9),n0)
    & ~ holdsAt(spinning(trolley8),n0)
    & ~ holdsAt(forwards(trolley8),n0)
    & ~ holdsAt(spinning(trolley7),n0)
    & ~ holdsAt(forwards(trolley7),n0)
    & ~ holdsAt(backwards(trolley6),n0)
    & ~ holdsAt(forwards(trolley6),n0)
    & ~ holdsAt(backwards(trolley5),n0)
    & ~ holdsAt(forwards(trolley5),n0)
    & ~ holdsAt(forwards(trolley4),n0)
    & ~ holdsAt(spinning(trolley3),n0)
    & ~ holdsAt(backwards(trolley3),n0)
    & ~ holdsAt(forwards(trolley3),n0)
    & ~ holdsAt(spinning(trolley2),n0)
    & ~ holdsAt(forwards(trolley1),n0) ) ).

fof(happens_all_defn,axiom,
    ! [Event,Time] :
      ( happens(Event,Time)
    <=> ( ( push(agent2,trolley2) = Event
          & Time = n0 )
        | ( Time = n0
          & pull(agent4,trolley4) = Event )
        | ( Event = push(agent4,trolley4)
          & n0 = Time )
        | ( Event = push(agent5,trolley5)
          & Time = n0 )
        | ( Time = n0
          & pull(agent6,trolley6) = Event )
        | ( n0 = Time
          & push(agent6,trolley6) = Event )
        | ( pull(agent7,trolley7) = Event
          & n0 = Time )
        | ( push(agent7,trolley7) = Event
          & Time = n0 )
        | ( Time = n0
          & pull(agent8,trolley8) = Event )
        | ( Event = pull(agent10,trolley10)
          & n0 = Time )
        | ( Event = push(agent10,trolley10)
          & n0 = Time )
        | ( Event = push(agent9,trolley9)
          & n0 = Time )
        | ( n0 = Time
          & pull(agent9,trolley9) = Event )
        | ( Time = n0
          & Event = push(agent8,trolley8) )
        | ( Event = pull(agent5,trolley5)
          & Time = n0 )
        | ( push(agent3,trolley3) = Event
          & n0 = Time )
        | ( n0 = Time
          & Event = pull(agent3,trolley3) )
        | ( Event = pull(agent2,trolley2)
          & n0 = Time )
        | ( push(agent1,trolley1) = Event
          & Time = n0 )
        | ( Event = pull(agent1,trolley1)
          & n0 = Time ) ) ) ).

fof(less_property,axiom,
    ! [X,Y] :
      ( less(X,Y)
    <=> ( ~ less(Y,X)
        & Y != X ) ) ).

fof(plus1_2,axiom,
    n3 = plus(n1,n2) ).

fof(plus1_1,axiom,
    plus(n1,n1) = n2 ).

