%------------------------------------------------------------------------------
% File     : LCL913+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Logical Calculi (Propositional modal)
% Problem  : Axiomatization of S1-0
% Version  : [Fey50] axioms.
% English  :

% Refs     : [Fey50] Feys (1950), Les systemes formalises de modalites aris
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.5.0, 0.33 v7.3.0, 0.00 v7.1.0, 0.50 v7.0.0, 0.00 v6.4.0
% Syntax   : Number of formulae    :   46 (  14 unt;   0 def)
%            Number of atoms       :   84 (  10 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   38 (   0   ~;   0   |;   2   &)
%                                         (  23 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   35 (  34 usr;  33 prp; 0-2 aty)
%            Number of functors    :    9 (   9 usr;   0 con; 1-2 aty)
%            Number of variables   :   55 (  55   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Propositional logic definitions
include('Axioms/LCL006+1.ax').
%----Propositional modal logic rules and axioms
include('Axioms/LCL007+0.ax').
%----Propositional modal logic definitions
include('Axioms/LCL007+1.ax').
%----Axiomatization of S1-0
include('Axioms/LCL007+4.ax').
%------------------------------------------------------------------------------
