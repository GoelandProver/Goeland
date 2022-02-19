%--------------------------------------------------------------------------
% File     : SET586+3 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory
% Problem  : If X (= Y, then X ^ Z (= Y ^ Z
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : If X is a subset of Y, then the intersection of X and Z is a
%            subset of the intersection of Y and Z.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (40) [TS89]

% Status   : Theorem
% Rating   : 0.09 v7.4.0, 0.10 v7.2.0, 0.07 v7.1.0, 0.00 v7.0.0, 0.03 v6.4.0, 0.08 v6.3.0, 0.04 v6.2.0, 0.00 v6.1.0, 0.10 v6.0.0, 0.09 v5.5.0, 0.07 v5.4.0, 0.14 v5.3.0, 0.26 v5.2.0, 0.10 v5.1.0, 0.14 v5.0.0, 0.17 v4.1.0, 0.13 v4.0.0, 0.12 v3.7.0, 0.10 v3.5.0, 0.11 v3.3.0, 0.07 v3.2.0, 0.18 v3.1.0, 0.11 v2.7.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :    6 (   2 unit)
%            Number of atoms       :   13 (   2 equality)
%            Maximal formula depth :    6 (   5 average)
%            Number of connectives :    7 (   0 ~  ;   0  |;   1  &)
%                                         (   4 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   15 (   0 singleton;  15 !;   0 ?)
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

%---- line(tarski - df(3),1832749)
fof(subset_defn,axiom,
    ( ! [B,C] :
        ( subset(B,C)
      <=> ! [D] :
            ( member(D,B)
           => member(D,C) ) ) )).

%---- property(commutativity,op(intersection,2,function))
fof(commutativity_of_intersection,axiom,
    ( ! [B,C] : intersection(B,C) = intersection(C,B) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(reflexivity_of_subset,axiom,
    ( ! [B] : subset(B,B) )).

%---- line(hidden - axiom51,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] :
        ( B = C
      <=> ! [D] :
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(40),1833318) Looks like Quaife's LA3.2, but not mine
fof(prove_intersection_of_subset,conjecture,
    ( ! [B,C,D] :
        ( subset(B,C)
       => subset(intersection(B,D),intersection(C,D)) ) )).

%--------------------------------------------------------------------------
