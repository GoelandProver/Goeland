%------------------------------------------------------------------------------
% File     : SEV426_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Set Theory
% Problem  : Bound on the number of allocated objects in a recursive function
% Version  : Especial.
% English  : Bound on the number of allocated objects in a recursive function
%            that incorporates container C into another container.

% Refs     : [KNR07] Kuncak et al. (2007), Deciding Boolean Algebra with Pr
%          : [KR07]  Kuncak & Rinard (2007), Towards Efficient Satisfiabili
% Source   : [KR07]
% Names    : VC#6 [KR07]

% Status   : CounterSatisfiable
% Rating   : 0.67 v7.1.0, 0.75 v7.0.0, 0.67 v6.3.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :   24 (   0 unt;  11 typ;   0 def)
%            Number of atoms       :   33 (  13 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   23 (   3   ~;   1   |;   5   &)
%                                         (  12 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number arithmetic     :    9 (   3 atm;   2 fun;   4 num;   0 var)
%            Number of types       :    4 (   2 usr;   1 ari)
%            Number of type conns  :   13 (   8   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :   10 (   7 usr;   3 con; 0-2 aty)
%            Number of variables   :   33 (  33   !;   0   ?;  33   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(set_type,type,
    set: $tType ).

tff(element_type,type,
    element: $tType ).

tff(empty_set_type,type,
    empty_set: set ).

tff(singleton_type,type,
    singleton: element > set ).

tff(member_type,type,
    member: ( element * set ) > $o ).

tff(subset_type,type,
    subset: ( set * set ) > $o ).

tff(intersection_type,type,
    intersection: ( set * set ) > set ).

tff(union_type,type,
    union: ( set * set ) > set ).

tff(difference_type,type,
    difference: ( set * set ) > set ).

tff(complement_type,type,
    complement: set > set ).

tff(cardinality_type,type,
    cardinality: set > $int ).

tff(empty_set,axiom,
    ! [S: set] :
      ( ! [X: element] : ~ member(X,S)
    <=> ( S = empty_set ) ) ).

tff(singleton,axiom,
    ! [X: element,A: element] :
      ( member(X,singleton(A))
    <=> ( X = A ) ) ).

tff(subset,axiom,
    ! [A: set,B: set] :
      ( subset(A,B)
    <=> ! [X: element] :
          ( member(X,A)
         => member(X,B) ) ) ).

tff(intersection,axiom,
    ! [X: element,A: set,B: set] :
      ( member(X,intersection(A,B))
    <=> ( member(X,A)
        & member(X,B) ) ) ).

tff(union,axiom,
    ! [X: element,A: set,B: set] :
      ( member(X,union(A,B))
    <=> ( member(X,A)
        | member(X,B) ) ) ).

tff(difference,axiom,
    ! [B: element,A: set,E: set] :
      ( member(B,difference(E,A))
    <=> ( member(B,E)
        & ~ member(B,A) ) ) ).

tff(complement,axiom,
    ! [X: element,S: set] :
      ( member(X,S)
    <=> ~ member(X,complement(S)) ) ).

%----From Swen (combined two of his)
tff(cardinality_empty_set,axiom,
    ! [S: set] :
      ( ( cardinality(S) = 0 )
    <=> ( S = empty_set ) ) ).

tff(cardinality_intersection_1,axiom,
    ! [X: element,S: set] :
      ( ( intersection(singleton(X),S) = singleton(X) )
    <=> ( cardinality(union(singleton(X),S)) = cardinality(S) ) ) ).

tff(cardinality_intersection_2,axiom,
    ! [X: element,S: set] :
      ( ( intersection(singleton(X),S) = empty_set )
    <=> ( cardinality(union(singleton(X),S)) = $sum(cardinality(S),1) ) ) ).

tff(cardinality_intersection_3,axiom,
    ! [S: set,T: set] :
      ( ( cardinality(intersection(S,T)) = 0 )
    <=> ( intersection(S,T) = empty_set ) ) ).

%----From Swen, modified to <=>
tff(cardinality_union,axiom,
    ! [A: set,B: set] :
      ( ( intersection(A,B) = empty_set )
    <=> ( cardinality(union(A,B)) = $sum(cardinality(A),cardinality(B)) ) ) ).

tff(vc6,conjecture,
    ! [X: element,C: set,C1: set,A0: set,A1: set,A2: set] :
      ( ( member(X,C)
        & ( C1 = difference(C,singleton(X)) )
        & $lesseq(cardinality(difference(A1,A0)),1)
        & $lesseq(cardinality(difference(A2,A1)),cardinality(C1)) )
     => $lesseq(cardinality(difference(A2,A0)),cardinality(C)) ) ).

%------------------------------------------------------------------------------
