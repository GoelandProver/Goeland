%------------------------------------------------------------------------------
% File     : LCL908+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Logical Calculi (Propositional)
% Problem  : Lukasiewicz's axiomatization of propositional logic
% Version  : [Zem73] axioms.
% English  :

% Refs     : [Zem73] Zeman (1973), Modal Logic, the Lewis-Modal systems
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.1.0, 0.25 v7.0.0, 0.00 v6.4.0
% Syntax   : Number of formulae    :   39 (   8 unt;   0 def)
%            Number of atoms       :   73 (   6 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   34 (   0   ~;   0   |;   1   &)
%                                         (  26 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   34 (  33 usr;  32 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   0 con; 1-2 aty)
%            Number of variables   :   65 (  65   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Propositional logic rules and axioms
include('Axioms/LCL006+0.ax').
%----Propositional logic definitions
include('Axioms/LCL006+1.ax').
%----Lukasiewicz's axiomatization of propositional logic
include('Axioms/LCL006+3.ax').
%------------------------------------------------------------------------------
