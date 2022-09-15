%--------------------------------------------------------------------------
% File     : GEO094+1 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Geometry (Oriented curves)
% Problem  : Meeting point is not an endpoint of contianing curve
% Version  : [EHK99] axioms.
% English  : A meeting point of two curves is not an endpoint of any curve
%            that includes both as sub-curves.

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Proposition 2.14 (3) [KE99]

% Status   : Theorem
% Rating   : 0.36 v7.5.0, 0.41 v7.4.0, 0.37 v7.3.0, 0.34 v7.2.0, 0.31 v7.1.0, 0.30 v7.0.0, 0.27 v6.3.0, 0.33 v6.2.0, 0.40 v6.1.0, 0.43 v6.0.0, 0.48 v5.4.0, 0.50 v5.3.0, 0.48 v5.2.0, 0.35 v5.1.0, 0.38 v5.0.0, 0.33 v4.1.0, 0.35 v4.0.1, 0.43 v4.0.0, 0.42 v3.7.0, 0.35 v3.5.0, 0.32 v3.3.0, 0.29 v3.2.0, 0.36 v3.1.0, 0.44 v2.7.0, 0.33 v2.6.0, 0.50 v2.4.0
% Syntax   : Number of formulae    :   17 (   1 unt;   0 def)
%            Number of atoms       :   71 (  10 equ)
%            Maximal formula atoms :   12 (   4 avg)
%            Number of connectives :   59 (   5   ~;   9   |;  23   &)
%                                         (   9 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    8 (   7 usr;   0 prp; 1-3 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   57 (  48   !;   9   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include simple curve axioms
%--------------------------------------------------------------------------
% File     : GEO004+0 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Geometry (Oriented curves)
% Axioms   : Simple curve axioms
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   16 (   1 unt;   0 def)
%            Number of atoms       :   67 (  10 equ)
%            Maximal formula atoms :   12 (   4 avg)
%            Number of connectives :   55 (   4   ~;   9   |;  21   &)
%                                         (   9 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    8 (   7 usr;   0 prp; 1-3 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   53 (  44   !;   9   ?)
% SPC      : 

% Comments :
%--------------------------------------------------------------------------
fof(part_of_defn,axiom,
    ! [C,C1] :
      ( part_of(C1,C)
    <=> ! [P] :
          ( incident_c(P,C1)
         => incident_c(P,C) ) ) ).

fof(sum_defn,axiom,
    ! [C,C1,C2] :
      ( C = sum(C1,C2)
    <=> ! [Q] :
          ( incident_c(Q,C)
        <=> ( incident_c(Q,C1)
            | incident_c(Q,C2) ) ) ) ).

fof(end_point_defn,axiom,
    ! [P,C] :
      ( end_point(P,C)
    <=> ( incident_c(P,C)
        & ! [C1,C2] :
            ( ( part_of(C1,C)
              & part_of(C2,C)
              & incident_c(P,C1)
              & incident_c(P,C2) )
           => ( part_of(C1,C2)
              | part_of(C2,C1) ) ) ) ) ).

fof(inner_point_defn,axiom,
    ! [P,C] :
      ( inner_point(P,C)
    <=> ( incident_c(P,C)
        & ~ end_point(P,C) ) ) ).

fof(meet_defn,axiom,
    ! [P,C,C1] :
      ( meet(P,C,C1)
    <=> ( incident_c(P,C)
        & incident_c(P,C1)
        & ! [Q] :
            ( ( incident_c(Q,C)
              & incident_c(Q,C1) )
           => ( end_point(Q,C)
              & end_point(Q,C1) ) ) ) ) ).

fof(closed_defn,axiom,
    ! [C] :
      ( closed(C)
    <=> ~ ? [P] : end_point(P,C) ) ).

fof(open_defn,axiom,
    ! [C] :
      ( open(C)
    <=> ? [P] : end_point(P,C) ) ).

fof(c1,axiom,
    ! [C,C1] :
      ( ( part_of(C1,C)
        & C1 != C )
     => open(C1) ) ).

fof(c2,axiom,
    ! [C,C1,C2,C3] :
      ( ( part_of(C1,C)
        & part_of(C2,C)
        & part_of(C3,C)
        & ? [P] :
            ( end_point(P,C1)
            & end_point(P,C2)
            & end_point(P,C3) ) )
     => ( part_of(C2,C3)
        | part_of(C3,C2)
        | part_of(C1,C2)
        | part_of(C2,C1)
        | part_of(C1,C3)
        | part_of(C3,C1) ) ) ).

fof(c3,axiom,
    ! [C] :
    ? [P] : inner_point(P,C) ).

fof(c4,axiom,
    ! [C,P] :
      ( inner_point(P,C)
     => ? [C1,C2] :
          ( meet(P,C1,C2)
          & C = sum(C1,C2) ) ) ).

fof(c5,axiom,
    ! [C,P,Q,R] :
      ( ( end_point(P,C)
        & end_point(Q,C)
        & end_point(R,C) )
     => ( P = Q
        | P = R
        | Q = R ) ) ).

fof(c6,axiom,
    ! [C,P] :
      ( end_point(P,C)
     => ? [Q] :
          ( end_point(Q,C)
          & P != Q ) ) ).

fof(c7,axiom,
    ! [C,C1,C2,P] :
      ( ( closed(C)
        & meet(P,C1,C2)
        & C = sum(C1,C2) )
     => ! [Q] :
          ( end_point(Q,C1)
         => meet(Q,C1,C2) ) ) ).

fof(c8,axiom,
    ! [C1,C2] :
      ( ? [P] : meet(P,C1,C2)
     => ? [C] : C = sum(C1,C2) ) ).

fof(c9,axiom,
    ! [C,C1] :
      ( ! [P] :
          ( incident_c(P,C)
        <=> incident_c(P,C1) )
     => C = C1 ) ).

%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(proposition_2_14_3,conjecture,
    ! [C,C1,C2,P] :
      ( ( meet(P,C1,C2)
        & part_of(C1,C)
        & part_of(C2,C) )
     => ~ end_point(P,C) ) ).

%--------------------------------------------------------------------------
