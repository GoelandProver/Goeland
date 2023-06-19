%--------------------------------------------------------------------------
% File     : SET781+3 : TPTP v8.1.2. Bugfixed v5.4.0.
% Domain   : Set Theory
% Problem  : Set theory axioms based on NBG set theory
% Version  : [Quaife, 1992] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v6.3.0, 0.80 v6.2.0, 0.83 v6.1.0, 1.00 v5.4.0
% Syntax   : Number of formulae    :   43 (  16 unt;   0 def)
%            Number of atoms       :  100 (  19 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   62 (   5   ~;   3   |;  26   &)
%                                         (  19 <=>;   9  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :   26 (  26 usr;   5 con; 0-3 aty)
%            Number of variables   :   86 (  81   !;   5   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : Infinox says this has no finite (counter-) models.
% Bugfixed : v5.4.0 - Bugfixes to SET005+0 axiom file.
%--------------------------------------------------------------------------
%----Include Set theory axioms based on NBG set theory
include('Axioms/SET005+0.ax').
%--------------------------------------------------------------------------
