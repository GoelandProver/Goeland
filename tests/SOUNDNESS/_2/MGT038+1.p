%--------------------------------------------------------------------------
% File     : MGT038+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Management (Organisation Theory)
% Problem  : FMs become extinct in stable environments
% Version  : [PB+94] axioms : Reduced & Augmented > Complete.
% English  : First movers become extinct past a certain point in time
%            in stable environments.

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [Kam95] Kamps (1995), Email to G. Sutcliffe
% Source   : [Kam95]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0, 0.00 v6.1.0, 0.09 v6.0.0, 0.00 v4.1.0, 0.40 v4.0.1, 0.20 v4.0.0, 0.00 v3.5.0, 0.33 v3.4.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    8 (   1 unt;   0 def)
%            Number of atoms       :   27 (   2 equ)
%            Maximal formula atoms :    5 (   3 avg)
%            Number of connectives :   19 (   0   ~;   0   |;  12   &)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-2 aty)
%            Number of functors    :    9 (   9 usr;   7 con; 0-2 aty)
%            Number of variables   :   15 (  12   !;   3   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP7. The cardinality of the first mover set is always integer.
fof(mp7_first_movers_exist,axiom,
    finite_set(first_movers) ).

%----MP. First movers appear in stable environments.
fof(mp_stable_first_movers,axiom,
    ! [E] :
      ( ( environment(E)
        & stable(E) )
     => in_environment(E,appear(first_movers,E)) ) ).

%----MP. If a set with finitely many elements always contracts past a
%----certain point of time, then it becomes empty sooner or later.
fof(mp_contracting_time,axiom,
    ! [S,To] :
      ( ( finite_set(S)
        & contracts_from(To,S) )
     => ? [T2] :
          ( greater(T2,To)
          & cardinality_at_time(s,t2) = zero ) ) ).

%----MP. Stable environments are long.
fof(mp_long_stable_environments,axiom,
    ! [E,T1,T2] :
      ( ( environment(E)
        & stable(E)
        & in_environment(E,T1)
        & greater(T2,T1) )
     => in_environment(E,T2) ) ).

%----MP. inequality
fof(mp_greater_transitivity,axiom,
    ! [X,Y,Z] :
      ( ( greater(X,Y)
        & greater(Y,Z) )
     => greater(X,Z) ) ).

%----L9. The first mover set begins to contract past a certain time in
%----stable environments.
fof(l9,hypothesis,
    ! [E] :
      ( ( environment(E)
        & stable(E) )
     => ? [To] :
          ( greater(To,appear(efficient_producers,E))
          & contracts_from(To,first_movers) ) ) ).

%----A13. First movers appear sooner in the environment, than efficient
%----producers.
fof(a13,hypothesis,
    ! [E] :
      ( environment(E)
     => greater(appear(efficient_producers,e),appear(first_movers,E)) ) ).

%----GOAL: T7. First movers disappear past a certain time after their
%----appearence in stable environments.
fof(prove_t7,conjecture,
    ! [E] :
      ( ( environment(E)
        & stable(E) )
     => ? [To] :
          ( in_environment(E,To)
          & greater(To,appear(first_movers,E))
          & cardinality_at_time(first_movers,to) = zero ) ) ).

%--------------------------------------------------------------------------
