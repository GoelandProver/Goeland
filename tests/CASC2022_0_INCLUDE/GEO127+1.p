%--------------------------------------------------------------------------
% File     : GEO127+1 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Geometry (Oriented curves)
% Problem  : Incidence on oriented curves can be defined using precedence
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Theorem 4.12 [KE99]
%          : T9 [EHK99]

% Status   : Theorem
% Rating   : 0.47 v8.1.0, 0.44 v7.5.0, 0.50 v7.4.0, 0.40 v7.3.0, 0.48 v7.0.0, 0.37 v6.4.0, 0.50 v6.2.0, 0.52 v6.1.0, 0.57 v6.0.0, 0.52 v5.5.0, 0.56 v5.4.0, 0.54 v5.3.0, 0.59 v5.2.0, 0.50 v5.1.0, 0.52 v5.0.0, 0.50 v4.1.0, 0.52 v4.0.0, 0.54 v3.7.0, 0.50 v3.5.0, 0.42 v3.4.0, 0.53 v3.3.0, 0.50 v3.2.0, 0.45 v3.1.0, 0.56 v2.7.0, 0.50 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :   28 (   2 unt;   0 def)
%            Number of atoms       :  115 (  16 equ)
%            Maximal formula atoms :   12 (   4 avg)
%            Number of connectives :   95 (   8   ~;  11   |;  38   &)
%                                         (  21 <=>;  17  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-4 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-2 aty)
%            Number of variables   :   97 (  82   !;  15   ?)
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

%----Include axioms of betweenness for simple curves
%--------------------------------------------------------------------------
% File     : GEO004+1 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Geometry (Oriented curves)
% Axioms   : Betweenness for simple curves
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    6 (   1 equ)
%            Maximal formula atoms :    6 (   6 avg)
%            Number of connectives :    6 (   1   ~;   0   |;   4   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (  11 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 2-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (   4   !;   1   ?)
% SPC      : 

% Comments : Requires GEO004+0.ax
%--------------------------------------------------------------------------
fof(between_c_defn,axiom,
    ! [C,P,Q,R] :
      ( between_c(C,P,Q,R)
    <=> ( P != R
        & ? [Cpp] :
            ( part_of(Cpp,C)
            & end_point(P,Cpp)
            & end_point(R,Cpp)
            & inner_point(Q,Cpp) ) ) ) ).

%--------------------------------------------------------------------------

%----Include oriented curve axioms
%--------------------------------------------------------------------------
% File     : GEO004+2 : TPTP v8.1.0. Released v2.4.0.
% Domain   : Geometry (Oriented curves)
% Axioms   : Oriented curves
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   10 (   1 unt;   0 def)
%            Number of atoms       :   39 (   5 equ)
%            Maximal formula atoms :    7 (   3 avg)
%            Number of connectives :   32 (   3   ~;   1   |;  13   &)
%                                         (  10 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    9 (   8 usr;   0 prp; 1-4 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 1-1 aty)
%            Number of variables   :   36 (  32   !;   4   ?)
% SPC      : 

% Comments : Requires GEO004+0.ax GEO004+1.ax
%--------------------------------------------------------------------------
fof(between_o_defn,axiom,
    ! [O,P,Q,R] :
      ( between_o(O,P,Q,R)
    <=> ( ( ordered_by(O,P,Q)
          & ordered_by(O,Q,R) )
        | ( ordered_by(O,R,Q)
          & ordered_by(O,Q,P) ) ) ) ).

fof(start_point_defn,axiom,
    ! [P,O] :
      ( start_point(P,O)
    <=> ( incident_o(P,O)
        & ! [Q] :
            ( ( P != Q
              & incident_o(Q,O) )
           => ordered_by(O,P,Q) ) ) ) ).

fof(finish_point_defn,axiom,
    ! [P,O] :
      ( finish_point(P,O)
    <=> ( incident_o(P,O)
        & ! [Q] :
            ( ( P != Q
              & incident_o(Q,O) )
           => ordered_by(O,Q,P) ) ) ) ).

fof(o1,axiom,
    ! [O,P,Q] :
      ( ordered_by(O,P,Q)
     => ( incident_o(P,O)
        & incident_o(Q,O) ) ) ).

fof(o2,axiom,
    ! [O] :
    ? [C] :
      ( open(C)
      & ! [P] :
          ( incident_o(P,O)
        <=> incident_c(P,C) ) ) ).

fof(o3,axiom,
    ! [P,Q,R,O] :
      ( between_o(O,P,Q,R)
    <=> ? [C] :
          ( ! [P] :
              ( incident_o(P,O)
            <=> incident_c(P,C) )
          & between_c(C,P,Q,R) ) ) ).

fof(o4,axiom,
    ! [O] :
    ? [P] : start_point(P,O) ).

fof(o5,axiom,
    ! [P,Q,C] :
      ( ( open(C)
        & P != Q
        & incident_c(P,C)
        & incident_c(Q,C) )
     => ? [O] :
          ( ! [R] :
              ( incident_o(R,O)
            <=> incident_c(R,C) )
          & ordered_by(O,P,Q) ) ) ).

fof(o6,axiom,
    ! [O1,O2] :
      ( ! [P,Q] :
          ( ordered_by(O1,P,Q)
        <=> ordered_by(O2,P,Q) )
     => O1 = O2 ) ).

fof(underlying_curve_defn,axiom,
    ! [C,O] :
      ( C = underlying_curve(O)
    <=> ! [P] :
          ( incident_o(P,O)
        <=> incident_c(P,C) ) ) ).

%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(theorem_4_12,conjecture,
    ! [O,P] :
      ( incident_o(P,O)
    <=> ? [Q] :
          ( ordered_by(O,P,Q)
          | ordered_by(O,Q,P) ) ) ).

%--------------------------------------------------------------------------
