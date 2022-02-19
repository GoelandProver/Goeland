%------------------------------------------------------------------------------
% File     : SET609+3 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory
% Problem  : X \ (Y \ Z) = (X \ Y) U X ^ Z
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : The difference of X and (the difference of Y and Z) is the union
%            of (the difference of X and Y) and the intersection of X and Z.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (81) [TS89]

% Status   : Theorem
% Rating   : 0.69 v7.4.0, 0.67 v7.3.0, 0.59 v7.2.0, 0.55 v7.1.0, 0.52 v7.0.0, 0.50 v6.3.0, 0.58 v6.2.0, 0.68 v6.1.0, 0.80 v6.0.0, 0.87 v5.5.0, 0.85 v5.4.0, 0.86 v5.3.0, 0.85 v5.2.0, 0.80 v5.1.0, 0.76 v5.0.0, 0.75 v4.1.0, 0.70 v4.0.1, 0.65 v4.0.0, 0.58 v3.7.0, 0.55 v3.5.0, 0.58 v3.4.0, 0.68 v3.3.0, 0.71 v3.2.0, 0.82 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
% Syntax   : Number of formulae    :   10 (   4 unit)
%            Number of atoms       :   22 (   5 equality)
%            Maximal formula depth :    7 (   5 average)
%            Number of connectives :   13 (   1 ~  ;   1  |;   3  &)
%                                         (   7 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-2 arity)
%            Number of functors    :    3 (   0 constant; 2-2 arity)
%            Number of variables   :   25 (   0 singleton;  25 !;   0 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%---- line(boole - df(2),1833042)
fof(union_defn,axiom,
    ( ! [B,C,D] :
        ( member(D,union(B,C))
      <=> ( member(D,B)
          | member(D,C) ) ) )).

%---- line(boole - df(3),1833060)
fof(intersection_defn,axiom,
    ( ! [B,C,D] :
        ( member(D,intersection(B,C))
      <=> ( member(D,B)
          & member(D,C) ) ) )).

%---- line(boole - df(4),1833078)
fof(difference_defn,axiom,
    ( ! [B,C,D] :
        ( member(D,difference(B,C))
      <=> ( member(D,B)
          & ~ member(D,C) ) ) )).

%---- line(boole - df(8),1833103)
fof(equal_defn,axiom,
    ( ! [B,C] :
        ( B = C
      <=> ( subset(B,C)
          & subset(C,B) ) ) )).

%---- property(commutativity,op(union,2,function))
fof(commutativity_of_union,axiom,
    ( ! [B,C] : union(B,C) = union(C,B) )).

%---- property(commutativity,op(intersection,2,function))
fof(commutativity_of_intersection,axiom,
    ( ! [B,C] : intersection(B,C) = intersection(C,B) )).

%---- line(tarski - df(3),1832749)
fof(subset_defn,axiom,
    ( ! [B,C] :
        ( subset(B,C)
      <=> ! [D] :
            ( member(D,B)
           => member(D,C) ) ) )).

%---- property(reflexivity,op(subset,2,predicate))
fof(reflexivity_of_subset,axiom,
    ( ! [B] : subset(B,B) )).

%---- line(hidden - axiom144,1832615)
fof(equal_member_defn,axiom,
    ( ! [B,C] :
        ( B = C
      <=> ! [D] :
            ( member(D,B)
          <=> member(D,C) ) ) )).

%---- line(boole - th(81),1833972)
fof(prove_th81,conjecture,
    ( ! [B,C,D] : difference(B,difference(C,D)) = union(difference(B,C),intersection(B,D)) )).

%------------------------------------------------------------------------------
