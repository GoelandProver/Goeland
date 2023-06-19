%------------------------------------------------------------------------------
% File     : SEV438+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Set Theory
% Problem  : Order relation (Naive set theory)
% Version  : [Pas05] axioms.
% English  :

% Refs     : [Pas05] Pastre (2005), Email to G. Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v6.4.0
% Syntax   : Number of formulae    :   21 (   1 unt;   0 def)
%            Number of atoms       :   85 (   6 equ)
%            Maximal formula atoms :   14 (   4 avg)
%            Number of connectives :   66 (   2   ~;   3   |;  25   &)
%                                         (  20 <=>;  16  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   15 (  14 usr;   0 prp; 2-4 aty)
%            Number of functors    :    9 (   9 usr;   1 con; 0-2 aty)
%            Number of variables   :   74 (  73   !;   1   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Naive set theory based on Goedel's set theory
include('Axioms/SET006+0.ax').
%----Order relation (Naive set theory)
include('Axioms/SET006+3.ax').
%------------------------------------------------------------------------------
