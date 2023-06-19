%--------------------------------------------------------------------------
% File     : SET785+1 : TPTP v8.1.2. Released v2.5.0.
% Domain   : Set Theory
% Problem  : Equivalence relation axioms for the SET006+0 set theory axioms
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v3.1.0, 0.83 v2.7.0, 0.67 v2.6.0, 1.00 v2.5.0
% Syntax   : Number of formulae    :   16 (   1 unt;   0 def)
%            Number of atoms       :   68 (   4 equ)
%            Maximal formula atoms :   13 (   4 avg)
%            Number of connectives :   55 (   3   ~;   2   |;  21   &)
%                                         (  15 <=>;  14  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    9 (   8 usr;   0 prp; 2-3 aty)
%            Number of functors    :   10 (  10 usr;   1 con; 0-3 aty)
%            Number of variables   :   57 (  53   !;   4   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : Infinox says this has no finite (counter-) models.
%--------------------------------------------------------------------------
%----Include Naive set theory axioms based on Goedel's set theory
include('Axioms/SET006+0.ax').
%----Include Equivalence relation axioms for the SET006+0 set theory axioms
include('Axioms/SET006+2.ax').
%--------------------------------------------------------------------------
