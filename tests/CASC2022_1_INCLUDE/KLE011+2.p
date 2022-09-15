%------------------------------------------------------------------------------
% File     : KLE011+2 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Kleene Algebra (Idempotent Test Semirings)
% Problem  : Split 1 into p,q and the product of their complements
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Theorem
% Rating   : 0.56 v8.1.0, 0.50 v7.5.0, 0.56 v7.4.0, 0.40 v7.3.0, 0.41 v7.2.0, 0.45 v7.1.0, 0.43 v7.0.0, 0.47 v6.4.0, 0.46 v6.3.0, 0.50 v6.2.0, 0.52 v6.1.0, 0.67 v6.0.0, 0.52 v5.5.0, 0.63 v5.4.0, 0.64 v5.3.0, 0.70 v5.2.0, 0.65 v5.1.0, 0.71 v5.0.0, 0.75 v4.1.0, 0.70 v4.0.0
% Syntax   : Number of formulae    :   17 (  11 unt;   0 def)
%            Number of atoms       :   28 (  17 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   12 (   1   ~;   0   |;   4   &)
%                                         (   4 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :   31 (  30   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Inequational encoding : proof goal is split into 2 inequations
%------------------------------------------------------------------------------
%---Include axioms for idempotent test semiring
%------------------------------------------------------------------------------
% File     : KLE001+0 : TPTP v8.1.0. Released v3.6.0.
% Domain   : Kleene Algebra
% Axioms   : Idempotent semirings
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   12 (  11 unt;   0 def)
%            Number of atoms       :   13 (  12 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   4 usr;   2 con; 0-2 aty)
%            Number of variables   :   22 (  22   !;   0   ?)
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

%------------------------------------------------------------------------------

%---Include test axioms
%------------------------------------------------------------------------------
% File     : KLE001+1 : TPTP v8.1.0. Released v3.6.0.
% Domain   : Kleene Algebra
% Axioms   : Characterisation of tests by complement predicate
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    4 (   0 unt;   0 def)
%            Number of atoms       :   11 (   5 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :    8 (   1   ~;   0   |;   2   &)
%                                         (   3 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :    7 (   6   !;   1   ?)
% SPC      : 

% Comments : Requires KLE001+0.ax, KLE002+0.ax or KLE003+0.ax
%          : Combined with KLE001+0 generates Idempotent semirings with tests
%            Combined with KLE002+0 generates Kleene Algebra with tests
%            Combined with KLE003+0 generates Omega Algebra with tests
%------------------------------------------------------------------------------
fof(test_1,axiom,
    ! [X0] :
      ( test(X0)
    <=> ? [X1] : complement(X1,X0) ) ).

fof(test_2,axiom,
    ! [X0,X1] :
      ( complement(X1,X0)
    <=> ( multiplication(X0,X1) = zero
        & multiplication(X1,X0) = zero
        & addition(X0,X1) = one ) ) ).

fof(test_3,axiom,
    ! [X0,X1] :
      ( test(X0)
     => ( c(X0) = X1
      <=> complement(X0,X1) ) ) ).

fof(test_4,axiom,
    ! [X0] :
      ( ~ test(X0)
     => c(X0) = zero ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(goals,conjecture,
    ! [X0,X1] :
      ( ( test(X1)
        & test(X0) )
     => ( leq(one,addition(addition(multiplication(addition(X1,c(X1)),X0),multiplication(addition(X0,c(X0)),X1)),multiplication(c(X0),c(X1))))
        & leq(addition(addition(multiplication(addition(X1,c(X1)),X0),multiplication(addition(X0,c(X0)),X1)),multiplication(c(X0),c(X1))),one) ) ) ).

%------------------------------------------------------------------------------
