%------------------------------------------------------------------------------
% File     : KLE136+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Kleene Algebra (Modal with Divergence)
% Problem  : Newman's lemma holds in divergence Kleene algebras
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Ter03] Terese (2003), Term Rewriting Systems
%          : [DMS04] Desharnais et al. (2004), Termination in Modal Kleene
%          : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.45 v6.1.0, 0.55 v6.0.0, 0.69 v5.5.0, 0.62 v5.4.0, 0.71 v5.3.0, 0.86 v5.2.0, 1.00 v4.0.0
% Syntax   : Number of formulae    :   29 (  26 unt;   0 def)
%            Number of atoms       :   33 (  32 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   1   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :   16 (  16 usr;   2 con; 0-2 aty)
%            Number of variables   :   49 (  49   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : The usual relational statement is expressed more abstractly at
%            the level of modal Kleene algebras.
%          : Equational encoding
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
      ( ( divergence(addition(X0,X1)) = zero
        & addition(multiplication(X1,X0),multiplication(star(X0),star(X1))) = multiplication(star(X0),star(X1)) )
     => addition(star(addition(X0,X1)),multiplication(star(X0),star(X1))) = multiplication(star(X0),star(X1)) ) ).

%------------------------------------------------------------------------------
