%--------------------------------------------------------------------------
% File     : CSR017+1 : TPTP v8.1.0. Bugfixed v3.1.0.
% Domain   : Commonsense Reasoning
% Problem  : Not spinning at time 1
% Version  : [Mue04] axioms : Especial.
% English  :

% Refs     : [MS05]  Mueller & Sutcliffe (2005), Reasoning in the Event Cal
%          : [Mue04] Mueller (2004), A Tool for Satisfiability-based Common
%          : [MS02]  Miller & Shanahan (2002), Some Alternative Formulation
% Source   : [MS05]
% Names    :

% Status   : Theorem
% Rating   : 0.25 v8.1.0, 0.28 v7.5.0, 0.31 v7.4.0, 0.23 v7.3.0, 0.28 v7.2.0, 0.24 v7.1.0, 0.22 v7.0.0, 0.23 v6.4.0, 0.27 v6.3.0, 0.17 v6.2.0, 0.28 v6.1.0, 0.43 v6.0.0, 0.26 v5.5.0, 0.33 v5.4.0, 0.36 v5.3.0, 0.41 v5.2.0, 0.35 v5.1.0, 0.33 v5.0.0, 0.25 v4.1.0, 0.26 v4.0.1, 0.30 v4.0.0, 0.29 v3.7.0, 0.25 v3.5.0, 0.21 v3.4.0, 0.26 v3.3.0, 0.36 v3.1.0
% Syntax   : Number of formulae    :   48 (  22 unt;   0 def)
%            Number of atoms       :  138 (  43 equ)
%            Maximal formula atoms :   19 (   2 avg)
%            Number of connectives :  123 (  33   ~;  13   |;  51   &)
%                                         (  16 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 2-4 aty)
%            Number of functors    :   16 (  16 usr;  15 con; 0-2 aty)
%            Number of variables   :   73 (  64   !;   9   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include standard discrete event calculus axioms
%------------------------------------------------------------------------------
% File     : CSR001+0 : TPTP v8.1.0. Released .0.
% Domain   : Commonsense Reasoning
% Axioms   : Standard discrete event calculus axioms
% Version  : [Mue04] axioms : Especial.
% English  :

% Refs     : [Mue04] Mueller (2004), A Tool for Satisfiability-based Common
%          : [MS02]  Miller & Shanahan (2002), Some Alternative Formulation
% Source   : [Mue04]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   12 (   0 unt;   0 def)
%            Number of atoms       :   54 (   0 equ)
%            Maximal formula atoms :    6 (   4 avg)
%            Number of connectives :   56 (  14   ~;   2   |;  28   &)
%                                         (   2 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   9 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   11 (  11 usr;   0 prp; 2-4 aty)
%            Number of functors    :    3 (   3 usr;   2 con; 0-2 aty)
%            Number of variables   :   44 (  36   !;   8   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----DEC1
fof(stoppedin_defn,axiom,
    ! [Time1,Fluent,Time2] :
      ( stoppedIn(Time1,Fluent,Time2)
    <=> ? [Event,Time] :
          ( happens(Event,Time)
          & less(Time1,Time)
          & less(Time,Time2)
          & terminates(Event,Fluent,Time) ) ) ).

%----DEC2
fof(startedin_defn,axiom,
    ! [Time1,Time2,Fluent] :
      ( startedIn(Time1,Fluent,Time2)
    <=> ? [Event,Time] :
          ( happens(Event,Time)
          & less(Time1,Time)
          & less(Time,Time2)
          & initiates(Event,Fluent,Time) ) ) ).

%----DEC3
fof(change_holding,axiom,
    ! [Event,Time,Fluent,Fluent2,Offset] :
      ( ( happens(Event,Time)
        & initiates(Event,Fluent,Time)
        & less(n0,Offset)
        & trajectory(Fluent,Time,Fluent2,Offset)
        & ~ stoppedIn(Time,Fluent,plus(Time,Offset)) )
     => holdsAt(Fluent2,plus(Time,Offset)) ) ).

%----DEC4
fof(antitrajectory,axiom,
    ! [Event,Time1,Fluent1,Time2,Fluent2] :
      ( ( happens(Event,Time1)
        & terminates(Event,Fluent1,Time1)
        & less(n0,Time2)
        & antitrajectory(Fluent1,Time1,Fluent2,Time2)
        & ~ startedIn(Time1,Fluent1,plus(Time1,Time2)) )
     => holdsAt(Fluent2,plus(Time1,Time2)) ) ).

%----DEC5
fof(keep_holding,axiom,
    ! [Fluent,Time] :
      ( ( holdsAt(Fluent,Time)
        & ~ releasedAt(Fluent,plus(Time,n1))
        & ~ ? [Event] :
              ( happens(Event,Time)
              & terminates(Event,Fluent,Time) ) )
     => holdsAt(Fluent,plus(Time,n1)) ) ).

%----DEC6
fof(keep_not_holding,axiom,
    ! [Fluent,Time] :
      ( ( ~ holdsAt(Fluent,Time)
        & ~ releasedAt(Fluent,plus(Time,n1))
        & ~ ? [Event] :
              ( happens(Event,Time)
              & initiates(Event,Fluent,Time) ) )
     => ~ holdsAt(Fluent,plus(Time,n1)) ) ).

%----DEC7
fof(keep_released,axiom,
    ! [Fluent,Time] :
      ( ( releasedAt(Fluent,Time)
        & ~ ? [Event] :
              ( happens(Event,Time)
              & ( initiates(Event,Fluent,Time)
                | terminates(Event,Fluent,Time) ) ) )
     => releasedAt(Fluent,plus(Time,n1)) ) ).

%----DEC8
fof(keep_not_released,axiom,
    ! [Fluent,Time] :
      ( ( ~ releasedAt(Fluent,Time)
        & ~ ? [Event] :
              ( happens(Event,Time)
              & releases(Event,Fluent,Time) ) )
     => ~ releasedAt(Fluent,plus(Time,n1)) ) ).

%----DEC9
fof(happens_holds,axiom,
    ! [Event,Time,Fluent] :
      ( ( happens(Event,Time)
        & initiates(Event,Fluent,Time) )
     => holdsAt(Fluent,plus(Time,n1)) ) ).

%----DEC10
fof(happens_terminates_not_holds,axiom,
    ! [Event,Time,Fluent] :
      ( ( happens(Event,Time)
        & terminates(Event,Fluent,Time) )
     => ~ holdsAt(Fluent,plus(Time,n1)) ) ).

%----DEC11
fof(happens_releases,axiom,
    ! [Event,Time,Fluent] :
      ( ( happens(Event,Time)
        & releases(Event,Fluent,Time) )
     => releasedAt(Fluent,plus(Time,n1)) ) ).

%----DEC12
fof(happens_not_released,axiom,
    ! [Event,Time,Fluent] :
      ( ( happens(Event,Time)
        & ( initiates(Event,Fluent,Time)
          | terminates(Event,Fluent,Time) ) )
     => ~ releasedAt(Fluent,plus(Time,n1)) ) ).

%------------------------------------------------------------------------------

%----Include supermarket trolley axioms
%------------------------------------------------------------------------------
% File     : CSR001+2 : TPTP v8.1.0. Released .0.
% Domain   : Commonsense Reasoning
% Axioms   : Supermarket trolley scenario
% Version  : [Sha97] axioms : Especial.
% English  :

% Refs     : [Sha97] Shanahan (1997), Solving the Frame Problem
% Source   : [Sha97]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    8 (   5 unt;   0 def)
%            Number of atoms       :   43 (  30 equ)
%            Maximal formula atoms :   19 (   5 avg)
%            Number of connectives :   46 (  11   ~;  10   |;  22   &)
%                                         (   3 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 2-3 aty)
%            Number of functors    :    8 (   8 usr;   8 con; 0-0 aty)
%            Number of variables   :   11 (  11   !;   0   ?)
% SPC      : 

% Comments : Requires CSR001+0.ax
%------------------------------------------------------------------------------
fof(initiates_all_defn,axiom,
    ! [Event,Fluent,Time] :
      ( initiates(Event,Fluent,Time)
    <=> ( ( Event = push
          & Fluent = forwards
          & ~ happens(pull,Time) )
        | ( Event = pull
          & Fluent = backwards
          & ~ happens(push,Time) )
        | ( Event = pull
          & Fluent = spinning
          & happens(push,Time) ) ) ) ).

fof(terminates_all_defn,axiom,
    ! [Event,Fluent,Time] :
      ( terminates(Event,Fluent,Time)
    <=> ( ( Event = push
          & Fluent = backwards
          & ~ happens(pull,Time) )
        | ( Event = pull
          & Fluent = forwards
          & ~ happens(push,Time) )
        | ( Event = pull
          & Fluent = forwards
          & happens(push,Time) )
        | ( Event = pull
          & Fluent = backwards
          & happens(push,Time) )
        | ( Event = push
          & Fluent = spinning
          & ~ happens(pull,Time) )
        | ( Event = pull
          & Fluent = spinning
          & ~ happens(push,Time) ) ) ) ).

fof(releases_all_defn,axiom,
    ! [Event,Fluent,Time] : ~ releases(Event,Fluent,Time) ).

fof(happens_all_defn,axiom,
    ! [Event,Time] :
      ( happens(Event,Time)
    <=> ( ( Event = push
          & Time = n0 )
        | ( Event = pull
          & Time = n1 )
        | ( Event = pull
          & Time = n2 )
        | ( Event = push
          & Time = n2 ) ) ) ).

%----Distinct events
fof(push_not_pull,axiom,
    push != pull ).

%----Distinct fluents
fof(forwards_not_backwards,axiom,
    forwards != backwards ).

fof(forwards_not_spinning,axiom,
    forwards != spinning ).

fof(spinning_not_backwards,axiom,
    spinning != backwards ).

%------------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(plus0_0,axiom,
    plus(n0,n0) = n0 ).

fof(plus0_1,axiom,
    plus(n0,n1) = n1 ).

fof(plus0_2,axiom,
    plus(n0,n2) = n2 ).

fof(plus0_3,axiom,
    plus(n0,n3) = n3 ).

fof(plus1_1,axiom,
    plus(n1,n1) = n2 ).

fof(plus1_2,axiom,
    plus(n1,n2) = n3 ).

fof(plus1_3,axiom,
    plus(n1,n3) = n4 ).

fof(plus2_2,axiom,
    plus(n2,n2) = n4 ).

fof(plus2_3,axiom,
    plus(n2,n3) = n5 ).

fof(plus3_3,axiom,
    plus(n3,n3) = n6 ).

fof(symmetry_of_plus,axiom,
    ! [X,Y] : plus(X,Y) = plus(Y,X) ).

fof(less_or_equal,axiom,
    ! [X,Y] :
      ( less_or_equal(X,Y)
    <=> ( less(X,Y)
        | X = Y ) ) ).

fof(less0,axiom,
    ~ ? [X] : less(X,n0) ).

fof(less1,axiom,
    ! [X] :
      ( less(X,n1)
    <=> less_or_equal(X,n0) ) ).

fof(less2,axiom,
    ! [X] :
      ( less(X,n2)
    <=> less_or_equal(X,n1) ) ).

fof(less3,axiom,
    ! [X] :
      ( less(X,n3)
    <=> less_or_equal(X,n2) ) ).

fof(less4,axiom,
    ! [X] :
      ( less(X,n4)
    <=> less_or_equal(X,n3) ) ).

fof(less5,axiom,
    ! [X] :
      ( less(X,n5)
    <=> less_or_equal(X,n4) ) ).

fof(less6,axiom,
    ! [X] :
      ( less(X,n6)
    <=> less_or_equal(X,n5) ) ).

fof(less7,axiom,
    ! [X] :
      ( less(X,n7)
    <=> less_or_equal(X,n6) ) ).

fof(less8,axiom,
    ! [X] :
      ( less(X,n8)
    <=> less_or_equal(X,n7) ) ).

fof(less9,axiom,
    ! [X] :
      ( less(X,n9)
    <=> less_or_equal(X,n8) ) ).

fof(less_property,axiom,
    ! [X,Y] :
      ( less(X,Y)
    <=> ( ~ less(Y,X)
        & Y != X ) ) ).

%----Initial conditions
fof(not_forwards_0,hypothesis,
    ~ holdsAt(forwards,n0) ).

fof(not_backwards_0,hypothesis,
    ~ holdsAt(backwards,n0) ).

fof(not_splinning_0,hypothesis,
    ~ holdsAt(spinning,n0) ).

fof(not_releasedAt,hypothesis,
    ! [Fluent,Time] : ~ releasedAt(Fluent,Time) ).

fof(not_spinning_1,conjecture,
    ~ holdsAt(spinning,n1) ).

%--------------------------------------------------------------------------
