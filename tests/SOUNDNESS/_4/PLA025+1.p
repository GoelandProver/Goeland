%--------------------------------------------------------------------------
% File     : PLA025+1 : TPTP v8.1.2. Bugfixed v2.5.0.
% Domain   : Planning
% Problem  : Blocks 3/2/1, 5/4, 9/8/7/6 => 1/5, 8/9/4, 2/3/7/6
% Version  : [Bau99] axioms.
% English  :

% Refs     : [Bau99] Baumgartner (1999), FTP'2000 - Problem Sets
%            [KS96]  Kautz & Selman (1996), Pushing the Envelope: Planning,
%            [KS92]  Kautz & Selman (1992), Planning as Satisfiability
% Source   : [Bau99]
% Names    : huge [Bau99]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.3.0, 0.00 v7.0.0, 0.33 v6.4.0, 0.25 v6.3.0, 0.17 v6.2.0, 0.33 v6.1.0, 0.30 v6.0.0, 0.00 v5.5.0, 0.29 v5.4.0, 0.33 v5.3.0, 0.46 v5.2.0, 0.38 v5.0.0, 0.33 v4.1.0, 0.17 v4.0.1, 0.33 v3.7.0, 0.00 v3.4.0, 0.75 v3.3.0, 0.33 v3.1.0, 0.83 v2.7.0, 1.00 v2.5.0
% Syntax   : Number of formulae    :  114 (  85 unt;   0 def)
%            Number of atoms       :  252 (   0 equ)
%            Maximal formula atoms :   13 (   2 avg)
%            Number of connectives :  163 (  25   ~;  27   |;  54   &)
%                                         (   0 <=>;  57  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   3 avg)
%            Maximal term depth    :    7 (   1 avg)
%            Number of predicates  :   12 (  12 usr;   0 prp; 1-3 aty)
%            Number of functors    :   12 (  12 usr;  11 con; 0-1 aty)
%            Number of variables   :   70 (  70   !;   0   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
% Bugfixes : v2.5.0 - Combined multiple conjecture formulae.
%--------------------------------------------------------------------------
%----Include blocks world axioms
include('Axioms/PLA002+0.ax').
%--------------------------------------------------------------------------
fof(different_not_equal,hypothesis,
    ! [Y,X] :
      ( ( different(X,Y)
        | different(Y,X) )
     => neq(X,Y) ) ).

fof(block_1_not_block_2,hypothesis,
    different(block_1,block_2) ).

fof(block_1_not_block_3,hypothesis,
    different(block_1,block_3) ).

fof(block_1_not_block_4,hypothesis,
    different(block_1,block_4) ).

fof(block_1_not_block_5,hypothesis,
    different(block_1,block_5) ).

fof(block_1_not_block_6,hypothesis,
    different(block_1,block_6) ).

fof(block_1_not_block_7,hypothesis,
    different(block_1,block_7) ).

fof(block_1_not_block_8,hypothesis,
    different(block_1,block_8) ).

fof(block_1_not_block_9,hypothesis,
    different(block_1,block_9) ).

fof(block_1_not_table,hypothesis,
    different(block_1,table) ).

fof(block_2_not_block_3,hypothesis,
    different(block_2,block_3) ).

fof(block_2_not_block_4,hypothesis,
    different(block_2,block_4) ).

fof(block_2_not_block_5,hypothesis,
    different(block_2,block_5) ).

fof(block_2_not_block_6,hypothesis,
    different(block_2,block_6) ).

fof(block_2_not_block_7,hypothesis,
    different(block_2,block_7) ).

fof(block_2_not_block_8,hypothesis,
    different(block_2,block_8) ).

fof(block_2_not_block_9,hypothesis,
    different(block_2,block_9) ).

fof(block_2_not_table,hypothesis,
    different(block_2,table) ).

fof(block_3_not_block_4,hypothesis,
    different(block_3,block_4) ).

fof(block_3_not_block_5,hypothesis,
    different(block_3,block_5) ).

fof(block_3_not_block_6,hypothesis,
    different(block_3,block_6) ).

fof(block_3_not_block_7,hypothesis,
    different(block_3,block_7) ).

fof(block_3_not_block_8,hypothesis,
    different(block_3,block_8) ).

fof(block_3_not_block_9,hypothesis,
    different(block_3,block_9) ).

fof(block_3_not_table,hypothesis,
    different(block_3,table) ).

fof(block_4_not_block_5,hypothesis,
    different(block_4,block_5) ).

fof(block_4_not_block_6,hypothesis,
    different(block_4,block_6) ).

fof(block_4_not_block_7,hypothesis,
    different(block_4,block_7) ).

fof(block_4_not_block_8,hypothesis,
    different(block_4,block_8) ).

fof(block_4_not_block_9,hypothesis,
    different(block_4,block_9) ).

fof(block_4_not_table,hypothesis,
    different(block_4,table) ).

fof(block_5_not_block_6,hypothesis,
    different(block_5,block_6) ).

fof(block_5_not_block_7,hypothesis,
    different(block_5,block_7) ).

fof(block_5_not_block_8,hypothesis,
    different(block_5,block_8) ).

fof(block_5_not_block_9,hypothesis,
    different(block_5,block_9) ).

fof(block_5_not_table,hypothesis,
    different(block_5,table) ).

fof(block_6_not_block_7,hypothesis,
    different(block_6,block_7) ).

fof(block_6_not_block_8,hypothesis,
    different(block_6,block_8) ).

fof(block_6_not_block_9,hypothesis,
    different(block_6,block_9) ).

fof(block_6_not_table,hypothesis,
    different(block_6,table) ).

fof(block_7_not_block_8,hypothesis,
    different(block_7,block_8) ).

fof(block_7_not_block_9,hypothesis,
    different(block_7,block_9) ).

fof(block_7_not_table,hypothesis,
    different(block_7,table) ).

fof(block_8_not_block_9,hypothesis,
    different(block_8,block_9) ).

fof(block_8_not_table,hypothesis,
    different(block_8,table) ).

fof(block_9_not_table,hypothesis,
    different(block_9,table) ).

%----Domain of blocks
fof(block_1,hypothesis,
    a_block(block_1) ).

fof(block_2,hypothesis,
    a_block(block_2) ).

fof(block_3,hypothesis,
    a_block(block_3) ).

fof(block_4,hypothesis,
    a_block(block_4) ).

fof(block_5,hypothesis,
    a_block(block_5) ).

fof(block_6,hypothesis,
    a_block(block_6) ).

fof(block_7,hypothesis,
    a_block(block_7) ).

fof(block_8,hypothesis,
    a_block(block_8) ).

fof(block_9,hypothesis,
    a_block(block_9) ).

fof(table,hypothesis,
    a_block(table) ).

%----Table
fof(fixed_table,hypothesis,
    fixed(table) ).

fof(nonfixed_block_1,hypothesis,
    nonfixed(block_1) ).

fof(nonfixed_block_2,hypothesis,
    nonfixed(block_2) ).

fof(nonfixed_block_3,hypothesis,
    nonfixed(block_3) ).

fof(nonfixed_block_4,hypothesis,
    nonfixed(block_4) ).

fof(nonfixed_block_5,hypothesis,
    nonfixed(block_5) ).

fof(nonfixed_block_6,hypothesis,
    nonfixed(block_6) ).

fof(nonfixed_block_7,hypothesis,
    nonfixed(block_7) ).

fof(nonfixed_block_8,hypothesis,
    nonfixed(block_8) ).

fof(nonfixed_block_9,hypothesis,
    nonfixed(block_9) ).

fof(time_0,hypothesis,
    time(time_0) ).

fof(time_1,hypothesis,
    time(s(time_0)) ).

fof(time_2,hypothesis,
    time(s(s(time_0))) ).

fof(time_3,hypothesis,
    time(s(s(s(time_0)))) ).

fof(time_4,hypothesis,
    time(s(s(s(s(time_0))))) ).

fof(time_5,hypothesis,
    time(s(s(s(s(s(time_0)))))) ).

fof(time_6,hypothesis,
    time(s(s(s(s(s(s(time_0))))))) ).

%----At any time, have some source, destination and object
fof(some_source,hypothesis,
    ! [I] :
      ( time(I)
     => ( source(block_1,I)
        | source(block_2,I)
        | source(block_3,I)
        | source(block_4,I)
        | source(block_5,I)
        | source(block_6,I)
        | source(block_7,I)
        | source(block_8,I)
        | source(block_9,I)
        | source(table,I) ) ) ).

fof(some_destination,hypothesis,
    ! [I] :
      ( time(I)
     => ( destination(block_1,I)
        | destination(block_2,I)
        | destination(block_3,I)
        | destination(block_4,I)
        | destination(block_5,I)
        | destination(block_6,I)
        | destination(block_7,I)
        | destination(block_8,I)
        | destination(block_9,I)
        | destination(table,I) ) ) ).

fof(some_object,hypothesis,
    ! [I] :
      ( time(I)
     => ( object(block_1,I)
        | object(block_2,I)
        | object(block_3,I)
        | object(block_4,I)
        | object(block_5,I)
        | object(block_6,I)
        | object(block_7,I)
        | object(block_8,I)
        | object(block_9,I) ) ) ).

%----Initial state
fof(initial_3_on_2,hypothesis,
    on(block_3,block_2,time_0) ).

fof(inital_clear_3,hypothesis,
    clear(block_3,time_0) ).

fof(initial_2_on_1,hypothesis,
    on(block_2,block_1,time_0) ).

fof(initial_1_on_table,hypothesis,
    on(block_1,table,time_0) ).

fof(initial_5_on_4,hypothesis,
    on(block_5,block_4,time_0) ).

fof(initial_clear_5,hypothesis,
    clear(block_5,time_0) ).

fof(initial_4_on_table,hypothesis,
    on(block_4,table,time_0) ).

fof(initial_9_on_8,hypothesis,
    on(block_9,block_8,time_0) ).

fof(initial_clear_9,hypothesis,
    clear(block_9,time_0) ).

fof(initial_8_on_7,hypothesis,
    on(block_8,block_7,time_0) ).

fof(initial_7_on_6,hypothesis,
    on(block_7,block_6,time_0) ).

fof(initial_6_on_table,hypothesis,
    on(block_6,table,time_0) ).

%----Final state
fof(goal_time_6,hypothesis,
    goal_time(s(s(s(s(s(s(time_0))))))) ).

%----This one is an augmentation in the orginal files
%      => ! [Y] :
%           ( ( a_block(Y)
%             & neq(Y,table)
%             & neq(block_4,Y) )
%          => ~ on(block_4,Y,S) ) )   )).
fof(goal_state,conjecture,
    ! [S] :
      ( goal_time(S)
     => ( clear(block_1,S)
        & on(block_1,block_5,S)
        & on(block_5,table,S)
        & clear(block_8,S)
        & on(block_8,block_9,S)
        & on(block_9,block_4,S)
        & on(block_4,table,S)
        & clear(block_2,S)
        & on(block_2,block_3,S)
        & on(block_3,block_7,S)
        & on(block_7,block_6,S)
        & on(block_6,table,S) ) ) ).

%--------------------------------------------------------------------------
