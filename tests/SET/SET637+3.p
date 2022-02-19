%--------------------------------------------------------------------------
% File     : SET637+3 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory
% Problem  : Trybulec's 119th Boolean property of sets
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (119) [TS89]

% Status   : Theorem
% Rating   : 0.28 v7.4.0, 0.17 v7.2.0, 0.14 v7.1.0, 0.13 v6.4.0, 0.12 v6.3.0, 0.25 v6.2.0, 0.20 v6.1.0, 0.27 v6.0.0, 0.30 v5.5.0, 0.22 v5.4.0, 0.29 v5.3.0, 0.30 v5.2.0, 0.05 v5.0.0, 0.12 v4.1.0, 0.17 v4.0.1, 0.26 v4.0.0, 0.25 v3.7.0, 0.20 v3.5.0, 0.21 v3.4.0, 0.32 v3.3.0, 0.29 v3.2.0, 0.36 v3.1.0, 0.22 v2.7.0, 0.17 v2.6.0, 0.14 v2.5.0, 0.25 v2.4.0, 0.25 v2.3.0, 0.33 v2.2.1
% Syntax   : Number of formulae    :    9 (   2 unit)
%            Number of atoms       :   19 (   3 equality)
%            Maximal formula depth :    6 (   5 average)
%            Number of connectives :   13 (   3 ~  ;   0  |;   2  &)
%                                         (   7 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   1 constant; 0-2 arity)
%            Number of variables   :   20 (   0 singleton;  19 !;   1 ?)
%            Maximal term depth    :    2 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%---- line(boole - df(3),1833060)
fof(intersection_defn,axiom,
    ( ! [B,C,D] :
        ( member(D,intersection(B,C))
      <=> ( member(D,B)
          & member(D,C) ) ) )).

%---- line(boole - df(5),1833080)
fof(intersect_defn,axiom,
    ( ! [B,C] :
        ( intersect(B,C)
      <=> ? [D] :
            ( member(D,B)
            & member(D,C) ) ) )).

%---- line(hidden - axiom223,1832636)
fof(empty_set_defn,axiom,
    ( ! [B] : ~ member(B,empty_set) )).

%---- line(hidden - axiom224,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] :
        ( B = C
      <=> ! [D] :
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(hidden - axiom225,1832619)
fof(not_equal_defn,axiom,
    ( ! [B,C] :
        ( not_equal(B,C)
      <=> B != C ) )).

%---- property(commutativity,op(intersection,2,function))
fof(commutativity_of_intersection,axiom,
    ( ! [B,C] : intersection(B,C) = intersection(C,B) )).

%---- property(symmetry,op(intersect,2,predicate))
fof(symmetry_of_intersect,axiom,
    ( ! [B,C] :
        ( intersect(B,C)
       => intersect(C,B) ) )).

%---- line(hidden - axiom227,1832628)
fof(empty_defn,axiom,
    ( ! [B] :
        ( empty(B)
      <=> ! [C] : ~ member(C,B) ) )).

%---- line(boole - th(119),1834490)
fof(prove_th119,conjecture,
    ( ! [B,C] :
        ( intersect(B,C)
      <=> not_equal(intersection(B,C),empty_set) ) )).

%--------------------------------------------------------------------------
