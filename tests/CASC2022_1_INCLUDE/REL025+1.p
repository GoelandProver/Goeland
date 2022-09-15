%------------------------------------------------------------------------------
% File     : REL025+1 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Relation Algebra
% Problem  : For subidentities converse is redundant
% Version  : [Mad95] (equational) axioms.
% English  : If x is a subidentity then the converse of x equals x.

% Refs     : [Mad95] Maddux (1995), Relation-Algebraic Semantics
%          : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Theorem
% Rating   : 0.50 v8.1.0, 0.48 v7.4.0, 0.41 v7.3.0, 0.23 v7.2.0, 0.25 v7.1.0, 0.27 v7.0.0, 0.40 v6.4.0, 0.36 v6.2.0, 0.45 v6.1.0, 0.42 v5.5.0, 0.25 v5.4.0, 0.22 v5.3.0, 0.00 v4.1.0, 0.36 v4.0.1, 0.30 v4.0.0
% Syntax   : Number of formulae    :   14 (  13 unt;   0 def)
%            Number of atoms       :   15 (  15 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   3 con; 0-2 aty)
%            Number of variables   :   26 (  26   !;   0   ?)
% SPC      : FOF_THM_RFO_PEQ

% Comments :
%------------------------------------------------------------------------------
%---Include axioms for relation algebra
%------------------------------------------------------------------------------
% File     : REL001+0 : TPTP v8.1.0. Released v3.6.0.
% Domain   : Relation Algebra
% Axioms   : Relation Algebra
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Mad95] Maddux, R. (1995), Relation-algebraic semantics
%          : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [Hoe08]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   13 (  13 unt;   0 def)
%            Number of atoms       :   13 (  13 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   3 con; 0-2 aty)
%            Number of variables   :   25 (  25   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----Definition of Boolean algebra a la Maddux
fof(maddux1_join_commutativity,axiom,
    ! [X0,X1] : join(X0,X1) = join(X1,X0) ).

fof(maddux2_join_associativity,axiom,
    ! [X0,X1,X2] : join(X0,join(X1,X2)) = join(join(X0,X1),X2) ).

fof(maddux3_a_kind_of_de_Morgan,axiom,
    ! [X0,X1] : X0 = join(complement(join(complement(X0),complement(X1))),complement(join(complement(X0),X1))) ).

fof(maddux4_definiton_of_meet,axiom,
    ! [X0,X1] : meet(X0,X1) = complement(join(complement(X0),complement(X1))) ).

%----Definition of Sequential Composition
fof(composition_associativity,axiom,
    ! [X0,X1,X2] : composition(X0,composition(X1,X2)) = composition(composition(X0,X1),X2) ).

fof(composition_identity,axiom,
    ! [X0] : composition(X0,one) = X0 ).

fof(composition_distributivity,axiom,
    ! [X0,X1,X2] : composition(join(X0,X1),X2) = join(composition(X0,X2),composition(X1,X2)) ).

%----Definition of Converse
fof(converse_idempotence,axiom,
    ! [X0] : converse(converse(X0)) = X0 ).

fof(converse_additivity,axiom,
    ! [X0,X1] : converse(join(X0,X1)) = join(converse(X0),converse(X1)) ).

fof(converse_multiplicativity,axiom,
    ! [X0,X1] : converse(composition(X0,X1)) = composition(converse(X1),converse(X0)) ).

fof(converse_cancellativity,axiom,
    ! [X0,X1] : join(composition(converse(X0),complement(composition(X0,X1))),complement(X1)) = complement(X1) ).

%---Definition of Identities (greatest and smallest element)
fof(def_top,axiom,
    ! [X0] : top = join(X0,complement(X0)) ).

fof(def_zero,axiom,
    ! [X0] : zero = meet(X0,complement(X0)) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(goals,conjecture,
    ! [X0] :
      ( join(X0,one) = one
     => converse(X0) = X0 ) ).

%------------------------------------------------------------------------------
