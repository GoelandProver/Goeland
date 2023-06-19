%------------------------------------------------------------------------------
% File     : MSC013+1 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Miscellaneous
% Problem  : Single-valued relation between 5-tuple and domain element
% Version  : Especial.
% English  : The existence of a single-valued relation between a 5-tuple of
%            Booleans and a domain element

% Refs     : [Bez05] Bezem (2005), Email to Geoff Sutcliffe
% Source   : [Bez05]
% Names    : inj5 [Bez05]

% Status   : CounterSatisfiable
% Rating   : 0.67 v8.1.0, 0.33 v7.5.0, 0.00 v7.3.0, 0.33 v7.1.0, 0.00 v6.4.0, 0.50 v6.3.0, 0.33 v6.2.0, 0.56 v6.1.0, 0.70 v6.0.0, 0.71 v5.5.0, 0.43 v5.4.0, 0.33 v5.3.0, 0.31 v5.2.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.67 v4.0.1, 0.00 v3.7.0, 0.33 v3.5.0, 0.25 v3.4.0, 0.33 v3.2.0

% Syntax   : Number of formulae    :    6 (   1 unt;   0 def)
%            Number of atoms       :   20 (   0 equ)
%            Maximal formula atoms :    7 (   3 avg)
%            Number of connectives :   14 (   0   ~;   0   |;  10   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    3 (   3 usr;   1 prp; 0-6 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :   17 (  16   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(n0_and_n1_reflexive,axiom,
    ( equalish(n0,n0)
    & equalish(n1,n1) ) ).

fof(n0_equal_n1,axiom,
    ( equalish(n0,n1)
   => goal ) ).

fof(n1_equal_n0,axiom,
    ( equalish(n1,n0)
   => goal ) ).

fof(relation_exists,axiom,
    ! [A,B,C,D,E] :
      ( ( equalish(A,A)
        & equalish(B,B)
        & equalish(C,C)
        & equalish(D,D)
        & equalish(E,E) )
     => ? [F] : f(A,B,C,D,E,F) ) ).

fof(relation_injective,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K] :
      ( ( f(A,B,C,D,E,K)
        & f(F,G,H,I,J,K) )
     => ( equalish(A,F)
        & equalish(B,G)
        & equalish(C,H)
        & equalish(D,I)
        & equalish(E,J) ) ) ).

fof(goal_to_be_proved,conjecture,
    goal ).

%------------------------------------------------------------------------------
