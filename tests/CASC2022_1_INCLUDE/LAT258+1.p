%------------------------------------------------------------------------------
% File     : LAT258+1 : TPTP v8.1.0. Released v3.2.0.
% Domain   : Lattice Theory
% Problem  : A duality result on distributivity in lattices
% Version  : Especial.
% English  :

% Refs     : [Bez05] Bezem (2005), Email to Geoff Sutcliffe
% Source   : [Bez05]
% Names    : latt [Bez05]

% Status   : Theorem
% Rating   : 0.80 v8.1.0, 0.79 v7.5.0, 0.81 v7.3.0, 0.86 v7.2.0, 0.83 v7.1.0, 0.75 v7.0.0, 0.86 v6.4.0, 0.79 v6.3.0, 0.62 v6.2.0, 0.73 v6.1.0, 0.92 v6.0.0, 0.75 v5.5.0, 0.92 v5.4.0, 0.87 v5.3.0, 0.91 v5.2.0, 0.79 v5.0.0, 0.90 v4.1.0, 0.89 v4.0.0, 0.90 v3.7.0, 0.33 v3.5.0, 0.75 v3.4.0, 0.83 v3.3.0, 1.00 v3.2.0

% Syntax   : Number of formulae    :   18 (   4 unt;   0 def)
%            Number of atoms       :   48 (   0 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   30 (   0   ~;   0   |;  18   &)
%                                         (   0 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   1 prp; 0-3 aty)
%            Number of functors    :    8 (   8 usr;   8 con; 0-0 aty)
%            Number of variables   :   49 (  48   !;   1   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(join_assumption,axiom,
    ( join(x,y,t)
    & join(x,z,u) ) ).

fof(meet_assumption,axiom,
    meet(t,u,v) ).

fof(meet_join_assumption,axiom,
    ( meet(y,z,w)
    & join(x,w,p) ) ).

fof(goal_ax,axiom,
    ( less_than(v,p)
   => goal ) ).

fof(less_than_reflexive,axiom,
    ! [A] : less_than(A,A) ).

fof(less_than_transitive,axiom,
    ! [A,B,C] :
      ( ( less_than(A,B)
        & less_than(B,C) )
     => less_than(A,C) ) ).

fof(lower_bound_meet,axiom,
    ! [A,B,C] :
      ( meet(A,B,C)
     => ( less_than(C,A)
        & less_than(C,B) ) ) ).

fof(greatest_lower_bound_meet,axiom,
    ! [A,B,C,D] :
      ( ( meet(A,B,C)
        & less_than(D,A)
        & less_than(D,B) )
     => less_than(D,C) ) ).

fof(upper_bound_join,axiom,
    ! [A,B,C] :
      ( join(A,B,C)
     => ( less_than(A,C)
        & less_than(B,C) ) ) ).

fof(least_upper_bound_join,axiom,
    ! [A,B,C,D] :
      ( ( join(A,B,C)
        & less_than(A,D)
        & less_than(B,D) )
     => less_than(C,D) ) ).

fof(less_than_meet_join,axiom,
    ! [A,B] :
      ( less_than(A,B)
     => ( meet(A,B,A)
        & join(A,B,B) ) ) ).

fof(commutitivity_meet,axiom,
    ! [A,B,C] :
      ( meet(A,B,C)
     => meet(B,A,C) ) ).

fof(commutitivity_join,axiom,
    ! [A,B,C] :
      ( join(A,B,C)
     => join(B,A,C) ) ).

fof(associativity_meet,axiom,
    ! [A,B,C,D,E,F] :
      ( ( meet(A,B,D)
        & meet(D,C,E)
        & meet(B,C,F) )
     => meet(A,F,E) ) ).

fof(associativity_join,axiom,
    ! [A,B,C,D,E,F] :
      ( ( join(A,B,D)
        & join(D,C,E)
        & join(B,C,F) )
     => join(A,F,E) ) ).

fof(lo_le_distr,axiom,
    ! [A,B,C,D,E,F,G,H] :
      ( ( join(B,C,H)
        & meet(A,H,D)
        & meet(A,B,E)
        & meet(A,C,F)
        & join(E,F,G) )
     => less_than(D,G) ) ).

fof(do_lattice,axiom,
    ! [A,B] :
    ? [C] : meet(A,B,C) ).

fof(goal_to_be_proved,conjecture,
    goal ).

%------------------------------------------------------------------------------
