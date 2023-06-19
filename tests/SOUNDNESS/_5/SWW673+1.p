%------------------------------------------------------------------------------
% File     : SWW673+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Software Verification
% Problem  : Priority queue checker
% Version  : [dNP05] axioms.
% English  :

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v6.4.0
% Syntax   : Number of formulae    :   62 (  23 unt;   0 def)
%            Number of atoms       :  128 (  40 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   82 (  16   ~;   4   |;  21   &)
%                                         (  16 <=>;  25  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   5 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :   21 (  19 usr;   1 prp; 0-3 aty)
%            Number of functors    :   26 (  26 usr;   4 con; 0-3 aty)
%            Number of variables   :  163 ( 160   !;   3   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Priority queue checker: quasi-order set with bottom element
include('Axioms/SWV007+0.ax').
%----Priority queue checker: priority queues
include('Axioms/SWV007+1.ax').
%----Priority queue checker: system of lower bounds
include('Axioms/SWV007+2.ax').
%----Priority queue checker: checked priority queues
include('Axioms/SWV007+3.ax').
%----Priority queue checker: implementation function, Pi, Pi#
include('Axioms/SWV007+4.ax').
%------------------------------------------------------------------------------
