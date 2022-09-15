%------------------------------------------------------------------------------
% File     : KLE147+2 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Kleene Algebra (Demonic Refinement Algebra)
% Problem  : Sliding of strong iteration
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [vW02]  von Wright (2002), From Kleene Algebra to Refinement A
%          : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Theorem
% Rating   : 0.72 v7.4.0, 0.73 v7.3.0, 0.69 v7.2.0, 0.72 v7.1.0, 0.70 v7.0.0, 0.80 v6.4.0, 0.77 v6.3.0, 0.71 v6.2.0, 0.76 v6.1.0, 0.87 v5.5.0, 0.89 v5.4.0, 0.86 v5.3.0, 0.93 v5.2.0, 0.85 v5.1.0, 0.86 v5.0.0, 0.83 v4.1.0, 0.87 v4.0.0
% Syntax   : Number of formulae    :   19 (  14 unt;   0 def)
%            Number of atoms       :   24 (  15 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   1   &)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   6 usr;   2 con; 0-2 aty)
%            Number of variables   :   36 (  36   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%---Include axioms for demonic refinement algebra
%------------------------------------------------------------------------------
% File     : KLE004+0 : TPTP v8.1.0. Released v3.6.0.
% Domain   : Kleene Algebra
% Axioms   : Demonic Refinement Algebra
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   18 (  14 unt;   0 def)
%            Number of atoms       :   22 (  15 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   6 usr;   2 con; 0-2 aty)
%            Number of variables   :   34 (  34   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----Additive idempotent monoid
fof(additive_commutativity,axiom,
    ! [A,B] : addition(A,B) = addition(B,A) ).

fof(additive_associativity,axiom,
    ! [C,B,A] : addition(A,addition(B,C)) = addition(addition(A,B),C) ).

fof(additive_identity,axiom,
    ! [A] : addition(A,zero) = A ).

fof(idempotence,axiom,
    ! [A] : addition(A,A) = A ).

%----Multiplicative and commutative monoid
fof(multiplicative_associativity,axiom,
    ! [A,B,C] : multiplication(A,multiplication(B,C)) = multiplication(multiplication(A,B),C) ).

fof(multiplicative_right_identity,axiom,
    ! [A] : multiplication(A,one) = A ).

fof(multiplicative_left_identity,axiom,
    ! [A] : multiplication(one,A) = A ).

%----Distributivity laws
fof(distributivity1,axiom,
    ! [A,B,C] : multiplication(A,addition(B,C)) = addition(multiplication(A,B),multiplication(A,C)) ).

fof(distributivity2,axiom,
    ! [A,B,C] : multiplication(addition(A,B),C) = addition(multiplication(A,C),multiplication(B,C)) ).

%----Annihilation (right zero law)
fof(left_annihilation,axiom,
    ! [A] : multiplication(zero,A) = zero ).

%----Kleene star
fof(star_unfold1,axiom,
    ! [A] : addition(one,multiplication(A,star(A))) = star(A) ).

fof(star_unfold2,axiom,
    ! [A] : addition(one,multiplication(star(A),A)) = star(A) ).

fof(star_induction1,axiom,
    ! [A,B,C] :
      ( leq(addition(multiplication(A,C),B),C)
     => leq(multiplication(star(A),B),C) ) ).

fof(star_induction2,axiom,
    ! [A,B,C] :
      ( leq(addition(multiplication(C,A),B),C)
     => leq(multiplication(B,star(A)),C) ) ).

%----Strong iteration
fof(infty_unfold1,axiom,
    ! [A] : strong_iteration(A) = addition(multiplication(A,strong_iteration(A)),one) ).

fof(infty_coinduction,axiom,
    ! [A,B,C] :
      ( leq(C,addition(multiplication(A,C),B))
     => leq(C,multiplication(strong_iteration(A),B)) ) ).

fof(isolation,axiom,
    ! [A] : strong_iteration(A) = addition(star(A),multiplication(strong_iteration(A),zero)) ).

%----Ordering
fof(order,axiom,
    ! [A,B] :
      ( leq(A,B)
    <=> addition(A,B) = B ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(goals,conjecture,
    ! [X0,X1] :
      ( leq(strong_iteration(multiplication(star(X0),X1)),multiplication(star(X1),strong_iteration(multiplication(star(X0),X1))))
      & leq(multiplication(star(X1),strong_iteration(multiplication(star(X0),X1))),strong_iteration(multiplication(star(X0),X1))) ) ).

%------------------------------------------------------------------------------
