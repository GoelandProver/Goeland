%------------------------------------------------------------------------------
% File     : LCL577+1 : TPTP v8.1.2. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Problem  : Prove axiom s3 from the S1-0M10 axiomatization of S5
% Version  : [Zem73] axioms.
% English  :

% Refs     : [Zem73] Zeman (1973), Modal Logic, the Lewis-Modal systems
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0, 0.33 v7.0.0, 0.00 v6.4.0, 0.33 v6.2.0, 0.36 v6.0.0, 0.54 v5.5.0, 0.25 v5.4.0, 0.57 v5.3.0, 0.71 v5.2.0, 0.67 v5.0.0, 0.57 v4.1.0, 0.80 v4.0.0, 0.75 v3.7.0, 0.33 v3.5.0, 0.95 v3.4.0, 1.00 v3.3.0
% Syntax   : Number of formulae    :   48 (  16 unt;   0 def)
%            Number of atoms       :   86 (  10 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   38 (   0   ~;   0   |;   2   &)
%                                         (  23 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   35 (  34 usr;  33 prp; 0-2 aty)
%            Number of functors    :    9 (   9 usr;   0 con; 1-2 aty)
%            Number of variables   :   55 (  55   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : This was thought to be a Theorem
%------------------------------------------------------------------------------
%----Include axioms of propositional logic
include('Axioms/LCL006+1.ax').
%----Include axioms of modal logic
include('Axioms/LCL007+0.ax').
include('Axioms/LCL007+1.ax').
%----Include axioms for S1-0
include('Axioms/LCL007+4.ax').
%----Include axioms for M10
include('Axioms/LCL007+6.ax').
%------------------------------------------------------------------------------
fof(s1_0_m6s3m9b_axiom_s3,conjecture,
    axiom_s3 ).

%------------------------------------------------------------------------------
