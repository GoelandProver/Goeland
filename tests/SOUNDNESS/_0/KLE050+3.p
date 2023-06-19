%------------------------------------------------------------------------------
% File     : KLE050+3 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Kleene Algebra (with Tests)
% Problem  : Loop denesting
% Version  : [Hoe08] axioms : Augmented.
% English  : Encoding of the law while p do (x ; while q do y) = if p then
%            (x ; while p+q do if q then y else x) else skip.

% Refs     : [Koz97] Kozen (1997), Kleene Algebra with Tests
%          : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.50 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0, 0.67 v6.2.0, 0.82 v6.0.0, 0.85 v5.5.0, 0.75 v5.4.0, 0.86 v5.3.0, 1.00 v4.0.0
% Syntax   : Number of formulae    :   23 (  13 unt;   0 def)
%            Number of atoms       :   39 (  20 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   17 (   1   ~;   0   |;   5   &)
%                                         (   4 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    8 (   2 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    6 (   6 usr;   2 con; 0-2 aty)
%            Number of variables   :   45 (  44   !;   1   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : Equational encoding
%------------------------------------------------------------------------------
%---Include axioms for Kleene algebra with tests
include('Axioms/KLE002+0.ax').
%---Include test axioms
include('Axioms/KLE001+1.ax').
%---Include additionally axioms
include('Axioms/KLE001+2.ax').
%------------------------------------------------------------------------------
fof(goals,conjecture,
    ! [X0,X1,X2,X3] :
      ( ( test(X2)
        & test(X3) )
     => multiplication(star(multiplication(multiplication(multiplication(X2,X0),star(multiplication(X3,X1))),c(X3))),c(X2)) = addition(multiplication(multiplication(multiplication(multiplication(X2,X0),addition(X2,X3)),star(addition(multiplication(X3,X1),multiplication(c(X3),X0)))),c(addition(X2,X3))),c(X2)) ) ).

%------------------------------------------------------------------------------
