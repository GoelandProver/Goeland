%------------------------------------------------------------------------------
% File     : SEV437+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Set Theory
% Problem  : Naive set theory based on Goedel's set theory
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v6.4.0
% Syntax   : Number of formulae    :   33 (   1 unt;   0 def)
%            Number of atoms       :  167 (   7 equ)
%            Maximal formula atoms :   13 (   5 avg)
%            Number of connectives :  137 (   3   ~;   2   |;  67   &)
%                                         (  35 <=>;  30  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   9 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   20 (  19 usr;   0 prp; 2-6 aty)
%            Number of functors    :   16 (  16 usr;   1 con; 0-5 aty)
%            Number of variables   :  162 ( 150   !;  12   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Naive set theory based on Goedel's set theory
include('Axioms/SET006+0.ax').
%----Mapping axioms for the SET006+0 set theory axioms
include('Axioms/SET006+1.ax').
%----Equivalence relation axioms for the SET006+0 set theory axioms
include('Axioms/SET006+2.ax').
%------------------------------------------------------------------------------
