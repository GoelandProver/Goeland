%------------------------------------------------------------------------------
% File     : KLE177+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Kleene Algebra
% Problem  : Kleene algebra
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.1.0, 0.25 v7.0.0, 0.00 v6.4.0
% Syntax   : Number of formulae    :   32 (  28 unt;   0 def)
%            Number of atoms       :   36 (  29 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :   16 (  16 usr;   2 con; 0-2 aty)
%            Number of variables   :   55 (  55   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Kleene algebra
include('Axioms/KLE002+0.ax').
%----Boolean domain, antidomain, codomain, coantidomain
include('Axioms/KLE001+4.ax').
%----Modal operators
include('Axioms/KLE001+6.ax').
%----Divergence Kleene algebras
include('Axioms/KLE001+7.ax').
%------------------------------------------------------------------------------
