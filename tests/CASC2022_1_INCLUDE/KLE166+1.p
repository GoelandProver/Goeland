%------------------------------------------------------------------------------
% File     : KLE166+1 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Kleene Algebra (Demonic Refinement Algebra)
% Problem  : Strong iteration
% Version  : [Hoe08] axioms.
% English  : If x weakly quasicommutes over y, x and y is strongly terminating
%            iff x + y strongly terminates.

% Refs     : [Str06] Struth (2006), Abstract Abstract Reduction
%          : [HS08]  Hoefner & Struth (2008), On Automating the Calculus of
%          : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Theorem
% Rating   : 0.86 v8.1.0, 0.89 v7.5.0, 0.97 v7.4.0, 1.00 v4.0.0
% Syntax   : Number of formulae    :   19 (  14 unt;   0 def)
%            Number of atoms       :   25 (  17 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   0   &)
%                                         (   2 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    4 (   2 avg)
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
      ( leq(multiplication(X0,X1),multiplication(X1,strong_iteration(addition(X1,X0))))
     => ( multiplication(strong_iteration(addition(X1,X0)),zero) = zero
      <=> addition(multiplication(strong_iteration(X1),zero),multiplication(strong_iteration(X0),zero)) = zero ) ) ).

%------------------------------------------------------------------------------
