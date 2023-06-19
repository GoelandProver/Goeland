%--------------------------------------------------------------------------
% File     : MGT038+2 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Management (Organisation Theory)
% Problem  : FMs become extinct in stable environments
% Version  : [PM93] axioms.
% English  : First movers become extinct past a certain point in time
%            in stable environments.

% Refs     : [PM93]  Peli & Masuch (1993), The Logic of Propogation Strateg
%          : [PM94]  Peli & Masuch (1994), The Logic of Propogation Strateg
%          : [PB+94] Peli et al. (1994), A Logical Approach to Formalizing
% Source   : [PM93]
% Names    : THEOREM 7 [PM93]
%          : T7 [PB+94]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.18 v6.1.0, 0.27 v6.0.0, 0.46 v5.5.0, 0.25 v5.4.0, 0.43 v5.2.0, 0.33 v5.0.0, 0.43 v4.1.0, 0.80 v4.0.1, 0.60 v4.0.0, 0.50 v3.7.0, 0.33 v3.5.0, 0.67 v3.4.0, 0.33 v3.1.0, 0.67 v2.6.0, 0.75 v2.5.0, 0.67 v2.4.0, 1.00 v2.1.0
% Syntax   : Number of formulae    :   16 (   1 unt;   0 def)
%            Number of atoms       :   70 (   4 equ)
%            Maximal formula atoms :   10 (   4 avg)
%            Number of connectives :   54 (   0   ~;   3   |;  32   &)
%                                         (   1 <=>;  18  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    9 (   8 usr;   0 prp; 1-4 aty)
%            Number of functors    :   11 (  11 usr;   7 con; 0-2 aty)
%            Number of variables   :   36 (  30   !;   6   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Subsitution axioms
%----Problem axioms
%----MP7. The number of the first movers is always a non-negative integer.
fof(mp7_first_movers_exist,axiom,
    finite_set(first_movers) ).

%----MP. If a set with finitely many elements always contracts past a
%----certain point of time, then it becomes empty sooner or later.
fof(mp_contracting_time,axiom,
    ! [S,To] :
      ( ( finite_set(S)
        & contracts_from(To,S) )
     => ? [T2] :
          ( greater(T2,To)
          & cardinality_at_time(s,t2) = zero ) ) ).

%----MP on "contracts from"
fof(mp_contracts_from,axiom,
    ! [E,To] :
      ( ( environment(E)
        & stable(E)
        & in_environment(E,To)
        & ! [T] :
            ( ( greater(cardinality_at_time(first_movers,T),zero)
              & greater_or_equal(T,To) )
           => greater(zero,growth_rate(first_movers,T)) ) )
     => contracts_from(To,first_movers) ) ).

%----MP.  If the number of both first movers abd efficient producers is
%----positive in an environment, then the population in this environment
%----contains a first mover and an efficient producer subpopulation.
fof(mp_contains_FM_and_EP,axiom,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater(cardinality_at_time(first_movers,T),zero)
        & greater(cardinality_at_time(efficient_producers,T),zero) )
     => subpopulations(first_movers,efficient_producers,E,T) ) ).

%----MP. Stable environments are long.
fof(mp_long_stable_environments,axiom,
    ! [E,T1,T2] :
      ( ( environment(E)
        & stable(E)
        & in_environment(E,T1)
        & greater(T2,T1) )
     => in_environment(E,T2) ) ).

%----MP. First movers appear in stable environments.
fof(mp_stable_first_movers,axiom,
    ! [E] :
      ( ( environment(E)
        & stable(E) )
     => in_environment(E,appear(first_movers,E)) ) ).

%----MP. Efficient producers appear in stable environments.
fof(mp_stable_efficient_producers,axiom,
    ! [E] :
      ( ( environment(E)
        & stable(E) )
     => in_environment(E,appear(efficient_producers,E)) ) ).

%----MP. If first movers have negative growth rate past time t1 in a
%----stable environment, then there is also a time, t2, which is after the
%----appearence of EP,  and FM has negative growth rate past t2.
fof(mp_first_movers_negative_growth,axiom,
    ! [E] :
      ( ( environment(E)
        & stable(E)
        & ? [T1] :
            ( in_environment(E,T1)
            & ! [T] :
                ( ( subpopulations(first_movers,efficient_producers,E,T)
                  & greater_or_equal(T,T1) )
               => greater(zero,growth_rate(first_movers,T)) ) ) )
     => ? [T2] :
          ( greater(T2,appear(efficient_producers,E))
          & ! [T] :
              ( ( subpopulations(first_movers,efficient_producers,E,T)
                & greater_or_equal(T,T2) )
             => greater(zero,growth_rate(first_movers,T)) ) ) ) ).

%----MP. inequality
fof(mp_greater_transitivity,axiom,
    ! [X,Y,Z] :
      ( ( greater(X,Y)
        & greater(Y,Z) )
     => greater(X,Z) ) ).

%----MP. times in environment
fof(mp_times_in_environment,axiom,
    ! [E,T1,T2] :
      ( ( in_environment(E,T1)
        & in_environment(E,T2) )
     => ( greater(T2,T1)
        | T2 = T1
        | greater(T1,T2) ) ) ).

%----MP. on "greater or equal to"
fof(mp_greater_or_equal,axiom,
    ! [X,Y] :
      ( greater_or_equal(X,Y)
    <=> ( greater(X,Y)
        | X = Y ) ) ).

%----A3. First movers appear sooner in the environment, than efficient
%----producers.
fof(a3,hypothesis,
    ! [E] :
      ( environment(E)
     => greater(appear(efficient_producers,e),appear(first_movers,E)) ) ).

%----A5. The state of equilibrium is reached in stable environments.
fof(a5,hypothesis,
    ! [E] :
      ( ( environment(E)
        & stable(E) )
     => ? [T] :
          ( in_environment(E,T)
          & greater_or_equal(T,equilibrium(E)) ) ) ).

%----T6. Once appeared in an environment, efficient producers do not
%----disappear.
fof(t6,hypothesis,
    ! [E,T] :
      ( ( environment(E)
        & in_environment(E,T)
        & greater_or_equal(T,appear(efficient_producers,E)) )
     => greater(cardinality_at_time(efficient_producers,T),zero) ) ).

%----L1. The growth rate of efficient producers exceeds the growth rate of
%----first movers past a certain time in stable environments.
fof(l1,hypothesis,
    ! [E] :
      ( ( environment(E)
        & stable(E) )
     => ? [To] :
          ( in_environment(E,To)
          & ! [T] :
              ( ( subpopulations(first_movers,efficient_producers,E,T)
                & greater_or_equal(T,To) )
             => greater(growth_rate(efficient_producers,T),growth_rate(first_movers,T)) ) ) ) ).

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
