%------------------------------------------------------------------------------
% File     : LCL907+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Logical Calculi (Propositional modal)
% Problem  : Hilbert's axiomatization of propositional logic
% Version  : [HB34] axioms.
% English  :

% Refs     : [HB34]  Hilbert & Bernays (1934), Grundlagen der Mathematick
%          : [Hac66] Hackstaff (1966), Systems of Formal Logic
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.1.0, 0.25 v7.0.0, 0.00 v6.4.0
% Syntax   : Number of formulae    :   49 (  18 unt;   0 def)
%            Number of atoms       :   83 (   6 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   34 (   0   ~;   0   |;   1   &)
%                                         (  26 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   33 (  32 usr;  31 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   0 con; 1-2 aty)
%            Number of variables   :   65 (  65   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Propositional logic rules and axioms
include('Axioms/LCL006+0.ax').
%----Propositional logic definitions
include('Axioms/LCL006+1.ax').
%----Hilbert's axiomatization of propositional logic
include('Axioms/LCL006+2.ax').
%------------------------------------------------------------------------------
