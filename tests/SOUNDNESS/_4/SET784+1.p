%--------------------------------------------------------------------------
% File     : SET784+1 : TPTP v8.1.2. Released v2.5.0.
% Domain   : Set Theory
% Problem  : Mapping axioms for the SET006+0 set theory axioms
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v3.1.0, 0.83 v2.7.0, 0.67 v2.6.0, 1.00 v2.5.0
% Syntax   : Number of formulae    :   28 (   1 unt;   0 def)
%            Number of atoms       :  128 (   6 equ)
%            Maximal formula atoms :   11 (   4 avg)
%            Number of connectives :  102 (   2   ~;   2   |;  50   &)
%                                         (  30 <=>;  18  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   9 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   16 (  15 usr;   0 prp; 2-6 aty)
%            Number of functors    :   15 (  15 usr;   1 con; 0-5 aty)
%            Number of variables   :  133 ( 124   !;   9   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : Infinox says this has no finite (counter-) models.
%--------------------------------------------------------------------------
%----Include Naive set theory axioms based on Goedel's set theory
include('Axioms/SET006+0.ax').
%----Include Mapping axioms for the SET006+0 set theory axioms
include('Axioms/SET006+1.ax').
%--------------------------------------------------------------------------
