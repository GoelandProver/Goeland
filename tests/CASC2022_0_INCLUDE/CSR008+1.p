%--------------------------------------------------------------------------
% File     : CSR008+1 : TPTP v8.1.0. Bugfixed v3.1.0.
% Domain   : Commonsense Reasoning
% Problem  : Waterlevel is 2 at time 2
% Version  : [Mue04] axioms : Especial.
% English  :

% Refs     : [MS05]  Mueller & Sutcliffe (2005), Reasoning in the Event Cal
%          : [Mue04] Mueller (2004), A Tool for Satisfiability-based Common
%          : [MS02]  Miller & Shanahan (2002), Some Alternative Formulation
% Source   : [MS05]
% Names    :

% Status   : Theorem
% Rating   : 0.50 v8.1.0, 0.53 v7.5.0, 0.59 v7.4.0, 0.50 v7.3.0, 0.52 v7.1.0, 0.48 v7.0.0, 0.47 v6.4.0, 0.58 v6.3.0, 0.46 v6.2.0, 0.60 v6.1.0, 0.67 v6.0.0, 0.61 v5.5.0, 0.67 v5.4.0, 0.68 v5.3.0, 0.70 v5.2.0, 0.55 v5.1.0, 0.62 v5.0.0, 0.67 v4.1.0, 0.74 v4.0.1, 0.70 v4.0.0, 0.75 v3.5.0, 0.68 v3.4.0, 0.63 v3.3.0, 0.57 v3.2.0, 0.64 v3.1.0
% Syntax   : Number of formulae    :   55 (  25 unt;   0 def)
%            Number of atoms       :  136 (  40 equ)
%            Maximal formula atoms :   11 (   2 avg)
%            Number of connectives :  109 (  28   ~;   8   |;  43   &)
%                                         (  18 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 2-4 aty)
%            Number of functors    :   17 (  17 usr;  15 con; 0-2 aty)
%            Number of variables   :   86 (  74   !;  12   ?)
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

%----Include kitchen sink scenario axioms
%------------------------------------------------------------------------------
% File     : CSR001+1 : TPTP v8.1.0. Released .0.
% Domain   : Commonsense Reasoning
% Axioms   : Kitchen sink scenario
% Version  : [Sha97] axioms : Especial.
% English  :

% Refs     : [Sha97] Shanahan (1997), Solving the Frame Problem
% Source   : [Sha97]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   13 (   6 unt;   0 def)
%            Number of atoms       :   39 (  27 equ)
%            Maximal formula atoms :   11 (   3 avg)
%            Number of connectives :   32 (   6   ~;   5   |;  14   &)
%                                         (   5 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 2-4 aty)
%            Number of functors    :    9 (   9 usr;   7 con; 0-2 aty)
%            Number of variables   :   25 (  22   !;   3   ?)
% SPC      : 

% Comments : Requires CSR001+0.ax
%------------------------------------------------------------------------------
fof(initiates_all_defn,axiom,
    ! [Event,Fluent,Time] :
      ( initiates(Event,Fluent,Time)
    <=> ( ( Event = tapOn
          & Fluent = filling )
        | ( Event = overflow
          & Fluent = spilling )
        | ? [Height] :
            ( holdsAt(waterLevel(Height),Time)
            & Event = tapOff
            & Fluent = waterLevel(Height) )
        | ? [Height] :
            ( holdsAt(waterLevel(Height),Time)
            & Event = overflow
            & Fluent = waterLevel(Height) ) ) ) ).

fof(terminates_all_defn,axiom,
    ! [Event,Fluent,Time] :
      ( terminates(Event,Fluent,Time)
    <=> ( ( Event = tapOff
          & Fluent = filling )
        | ( Event = overflow
          & Fluent = filling ) ) ) ).

%----tapOn event releases all waterLevels at all times
fof(releases_all_defn,axiom,
    ! [Event,Fluent,Time] :
      ( releases(Event,Fluent,Time)
    <=> ? [Height] :
          ( Event = tapOn
          & Fluent = waterLevel(Height) ) ) ).

fof(happens_all_defn,axiom,
    ! [Event,Time] :
      ( happens(Event,Time)
    <=> ( ( Event = tapOn
          & Time = n0 )
        | ( holdsAt(waterLevel(n3),Time)
          & holdsAt(filling,Time)
          & Event = overflow ) ) ) ).

fof(change_of_waterLevel,axiom,
    ! [Height1,Time,Height2,Offset] :
      ( ( holdsAt(waterLevel(Height1),Time)
        & Height2 = plus(Height1,Offset) )
     => trajectory(filling,Time,waterLevel(Height2),Offset) ) ).

fof(same_waterLevel,axiom,
    ! [Time,Height1,Height2] :
      ( ( holdsAt(waterLevel(Height1),Time)
        & holdsAt(waterLevel(Height2),Time) )
     => Height1 = Height2 ) ).

%----Distinct events
fof(tapOff_not_tapOn,axiom,
    tapOff != tapOn ).

fof(tapOff_not_overflow,axiom,
    tapOff != overflow ).

fof(overflow_not_tapOn,axiom,
    overflow != tapOn ).

%----Distinct fluents
fof(filling_not_waterLevel,axiom,
    ! [X] : filling != waterLevel(X) ).

fof(spilling_not_waterLevel,axiom,
    ! [X] : spilling != waterLevel(X) ).

fof(filling_not_spilling,axiom,
    filling != spilling ).

fof(distinct_waterLevels,axiom,
    ! [X,Y] :
      ( waterLevel(X) = waterLevel(Y)
    <=> X = Y ) ).

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
fof(waterLevel_0,hypothesis,
    holdsAt(waterLevel(n0),n0) ).

fof(not_filling_0,hypothesis,
    ~ holdsAt(filling,n0) ).

fof(not_spilling_0,hypothesis,
    ~ holdsAt(spilling,n0) ).

fof(not_released_waterLevel_0,hypothesis,
    ! [Height] : ~ releasedAt(waterLevel(Height),n0) ).

fof(not_released_filling_0,hypothesis,
    ~ releasedAt(filling,n0) ).

fof(not_released_spilling_0,hypothesis,
    ~ releasedAt(spilling,n0) ).

fof(waterLevel_2,conjecture,
    holdsAt(waterLevel(n2),n2) ).

%--------------------------------------------------------------------------
