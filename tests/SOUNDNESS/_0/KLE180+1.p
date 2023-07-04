%------------------------------------------------------------------------------
% File     : KLE180+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Kleene Algebra
% Problem  : Omega algebra
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.1.0, 0.25 v7.0.0, 0.00 v6.4.0
% Syntax   : Number of formulae    :   34 (  29 unt;   0 def)
%            Number of atoms       :   39 (  30 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :   17 (  17 usr;   2 con; 0-2 aty)
%            Number of variables   :   59 (  59   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Omega algebra
include('Axioms/KLE003+0.ax').
%----Boolean domain, antidomain, codomain, coantidomain
include('Axioms/KLE001+4.ax').
%----Modal operators
include('Axioms/KLE001+6.ax').
%----Divergence Kleene algebras
include('Axioms/KLE001+7.ax').
%------------------------------------------------------------------------------
