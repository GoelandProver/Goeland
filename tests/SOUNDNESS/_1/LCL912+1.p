%------------------------------------------------------------------------------
% File     : LCL912+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Logical Calculi (Propositional modal)
% Problem  : KM4B axiomatization of S5 based on Hilbert's PC
% Version  : [HC96] axioms.
% English  :

% Refs     : [HC96]  Hughes & Cresswell (1996), A New Introduction to Modal
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.1.0, 0.25 v7.0.0, 0.00 v6.4.0
% Syntax   : Number of formulae    :   82 (  24 unt;   0 def)
%            Number of atoms       :  149 (  11 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   67 (   0   ~;   0   |;   3   &)
%                                         (  49 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   60 (  59 usr;  58 prp; 0-2 aty)
%            Number of functors    :    9 (   9 usr;   0 con; 1-2 aty)
%            Number of variables   :  110 ( 110   !;   0   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Propositional logic rules and axioms
include('Axioms/LCL006+0.ax').
%----Propositional logic definitions
include('Axioms/LCL006+1.ax').
%----Hilbert's axiomatization of propositional logic
include('Axioms/LCL006+2.ax').
%----Propositional modal logic rules and axioms
include('Axioms/LCL007+0.ax').
%----Propositional modal logic definitions
include('Axioms/LCL007+1.ax').
%----KM4B axiomatization of S5 based on Hilbert's PC
include('Axioms/LCL007+3.ax').
%------------------------------------------------------------------------------
