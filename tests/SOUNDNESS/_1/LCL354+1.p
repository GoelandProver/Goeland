%--------------------------------------------------------------------------
% File     : LCL354+1 : TPTP v8.1.2. Released v2.3.0.
% Domain   : Logic Calculi (Temporal)
% Problem  : Independence of an Axiom for Temporal Intervals
% Version  : [Zha98] axioms : Especial.
% English  : Shows that the 5th axiom of temporal intervals is not dependant
%            on the first three by building a model of the first three and
%            the negation of the 5th.

% Refs     : [Zha98] Zhang (1998), Showing the Independence of An Axiom for
% Source   : [Zha98]
% Names    : - [Zha98]

% Status   : Satisfiable
% Rating   : 0.33 v7.1.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.40 v6.0.0, 0.50 v5.5.0, 0.33 v5.4.0, 0.57 v5.2.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.50 v4.0.1, 0.33 v3.7.0, 0.67 v3.5.0, 0.33 v3.4.0, 0.60 v3.3.0, 0.67 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    4 (   0 unt;   0 def)
%            Number of atoms       :   18 (   0 equ)
%            Maximal formula atoms :    7 (   4 avg)
%            Number of connectives :   15 (   1   ~;   0   |;   9   &)
%                                         (   0 <=>;   3  =>;   0  <=;   2 <~>)
%            Maximal formula depth :   11 (   9 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   18 (  11   !;   7   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(m1,axiom,
    ! [P,Q,R,S] :
      ( ( meets(P,Q)
        & meets(P,S)
        & meets(R,Q) )
     => meets(R,S) ) ).

fof(m2,axiom,
    ! [P,Q,R,S] :
      ( ( meets(P,Q)
        & meets(R,S) )
     => ( ( meets(P,S)
        <~> ? [T] :
              ( meets(P,T)
              & meets(T,S) ) )
      <~> ? [T] :
            ( meets(R,T)
            & meets(T,Q) ) ) ) ).

fof(m3,axiom,
    ! [P] :
    ? [Q,R] :
      ( meets(Q,P)
      & meets(P,R) ) ).

fof(not_m5,axiom,
    ~ ! [P,Q] :
        ( meets(P,Q)
       => ? [R,S,T] :
            ( meets(R,P)
            & meets(Q,S)
            & meets(R,T)
            & meets(T,S) ) ) ).

%--------------------------------------------------------------------------
