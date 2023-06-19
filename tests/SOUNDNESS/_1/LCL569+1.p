%------------------------------------------------------------------------------
% File     : LCL569+1 : TPTP v8.1.2. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Problem  : Prove axiom m10 from the S1-0M6S3M9B axiomatization of S5
% Version  : [Zem73] axioms.
% English  :

% Refs     : [Zem73] Zeman (1973), Modal Logic, the Lewis-Modal systems
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.45 v6.1.0, 0.36 v6.0.0, 0.54 v5.5.0, 0.38 v5.4.0, 0.57 v5.3.0, 0.71 v5.2.0, 0.67 v5.0.0, 0.71 v4.1.0, 1.00 v3.3.0
% Syntax   : Number of formulae    :   51 (  19 unt;   0 def)
%            Number of atoms       :   89 (  10 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   38 (   0   ~;   0   |;   2   &)
%                                         (  23 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   36 (  35 usr;  34 prp; 0-2 aty)
%            Number of functors    :    9 (   9 usr;   0 con; 1-2 aty)
%            Number of variables   :   55 (  55   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms of propositional logic
include('Axioms/LCL006+1.ax').
%----Include axioms of modal logic
include('Axioms/LCL007+0.ax').
include('Axioms/LCL007+1.ax').
%----Include axioms for S1-0
include('Axioms/LCL007+4.ax').
%----Include axioms for M6S3M9B
include('Axioms/LCL007+5.ax').
%------------------------------------------------------------------------------
fof(s1_0_m10_axiom_m10,conjecture,
    axiom_m10 ).

%------------------------------------------------------------------------------
