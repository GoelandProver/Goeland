%------------------------------------------------------------------------------
% File     : KLE173+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Kleene Algebra
% Problem  : Idempotent semirings with tests
% Version  : [Hoe08] axioms.
% English  :

% Refs     : [Hoe08] Hoefner (2008), Email to G. Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.5.0, 0.33 v7.3.0, 0.00 v7.1.0, 0.25 v7.0.0, 0.00 v6.4.0
% Syntax   : Number of formulae    :   20 (  11 unt;   0 def)
%            Number of atoms       :   40 (  19 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   21 (   1   ~;   0   |;   8   &)
%                                         (   7 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-3 aty)
%            Number of functors    :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :   41 (  40   !;   1   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Idempotent semirings
include('Axioms/KLE001+0.ax').
%----Characterisation of tests by complement predicate
include('Axioms/KLE001+1.ax').
%----de Morgan's laws for tests
include('Axioms/KLE001+2.ax').
%----Universal characterisation of meet
include('Axioms/KLE001+3.ax').
%------------------------------------------------------------------------------
