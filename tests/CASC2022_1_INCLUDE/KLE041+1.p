%------------------------------------------------------------------------------
% File     : KLE041+1 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Kleene Algebra
% Problem  : Star isotony
% Version  : [Hoe08] axioms.
% English  : The star operation is isotone.

% Refs     : [Koz94] Kozen (1994), A Completeness Theorem for Kleene Algebr
%          : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Theorem
% Rating   : 0.44 v8.1.0, 0.42 v7.5.0, 0.50 v7.4.0, 0.37 v7.3.0, 0.38 v7.2.0, 0.41 v7.1.0, 0.30 v7.0.0, 0.43 v6.4.0, 0.42 v6.3.0, 0.38 v6.2.0, 0.52 v6.1.0, 0.57 v6.0.0, 0.48 v5.5.0, 0.56 v5.4.0, 0.57 v5.3.0, 0.63 v5.2.0, 0.55 v5.1.0, 0.57 v5.0.0, 0.62 v4.1.0, 0.57 v4.0.1, 0.52 v4.0.0
% Syntax   : Number of formulae    :   17 (  13 unt;   0 def)
%            Number of atoms       :   21 (  12 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :   32 (  32   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Inequational encoding
%------------------------------------------------------------------------------
%---Include axioms for Kleene algebra
%------------------------------------------------------------------------------
% File     : KLE002+0 : TPTP v8.1.0. Released v3.6.0.
% Domain   : Kleene algebra
% Axioms   : Kleene algebra
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   16 (  13 unt;   0 def)
%            Number of atoms       :   19 (  12 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :   30 (  30   !;   0   ?)
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

fof(additive_idempotence,axiom,
    ! [A] : addition(A,A) = A ).

%----Multiplicative and commutative monoid
fof(multiplicative_associativity,axiom,
    ! [A,B,C] : multiplication(A,multiplication(B,C)) = multiplication(multiplication(A,B),C) ).

fof(multiplicative_right_identity,axiom,
    ! [A] : multiplication(A,one) = A ).

fof(multiplicative_left_identity,axiom,
    ! [A] : multiplication(one,A) = A ).

%----Distributivity laws
fof(right_distributivity,axiom,
    ! [A,B,C] : multiplication(A,addition(B,C)) = addition(multiplication(A,B),multiplication(A,C)) ).

fof(left_distributivity,axiom,
    ! [A,B,C] : multiplication(addition(A,B),C) = addition(multiplication(A,C),multiplication(B,C)) ).

%----Annihilation
fof(right_annihilation,axiom,
    ! [A] : multiplication(A,zero) = zero ).

fof(left_annihilation,axiom,
    ! [A] : multiplication(zero,A) = zero ).

%----Order
fof(order,axiom,
    ! [A,B] :
      ( leq(A,B)
    <=> addition(A,B) = B ) ).

%----Finite iteration (star)

%----Unfold laws
fof(star_unfold_right,axiom,
    ! [A] : leq(addition(one,multiplication(A,star(A))),star(A)) ).

fof(star_unfold_left,axiom,
    ! [A] : leq(addition(one,multiplication(star(A),A)),star(A)) ).

%----Induction laws
fof(star_induction_left,axiom,
    ! [A,B,C] :
      ( leq(addition(multiplication(A,B),C),B)
     => leq(multiplication(star(A),C),B) ) ).

fof(star_induction_right,axiom,
    ! [A,B,C] :
      ( leq(addition(multiplication(A,B),C),A)
     => leq(multiplication(C,star(B)),A) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(goals,conjecture,
    ! [X0,X1] :
      ( leq(X0,X1)
     => leq(star(X0),star(X1)) ) ).

%------------------------------------------------------------------------------
