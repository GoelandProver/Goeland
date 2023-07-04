%------------------------------------------------------------------------------
% File     : KLE127+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Kleene Algebra (Modal with Divergence)
% Problem  : Loop refinement theorem
% Version  : [Hoe08] axioms.
% English  : If x quasicommutes over y, then all infinite behaviours of x+y
%            can be separated into infinite behaviours of x and a infinite
%            behaviour of y after finitely many x steps.

% Refs     : [Str08] Struth (2008), Modal Tools for Separation and Refineme
%          : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.97 v7.1.0, 1.00 v7.0.0, 0.97 v6.4.0, 1.00 v4.0.0
% Syntax   : Number of formulae    :   29 (  26 unt;   0 def)
%            Number of atoms       :   32 (  31 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :   16 (  16 usr;   2 con; 0-2 aty)
%            Number of variables   :   49 (  49   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : Equational encoding
%------------------------------------------------------------------------------
%---Include axioms for modal Kleene algebra with divergence
include('Axioms/KLE001+0.ax').
%---Include axioms for Boolean domain/codomain
include('Axioms/KLE001+4.ax').
%---Include axioms for diamond and boxes
include('Axioms/KLE001+6.ax').
%---Include axioms for divergence
include('Axioms/KLE001+7.ax').
%------------------------------------------------------------------------------
fof(goals,conjecture,
    ! [X0,X1] :
      ( addition(multiplication(X0,X1),multiplication(X1,star(addition(X1,X0)))) = multiplication(X1,star(addition(X1,X0)))
     => divergence(addition(X1,X0)) = addition(divergence(X1),forward_diamond(star(X1),divergence(X0))) ) ).

%------------------------------------------------------------------------------
