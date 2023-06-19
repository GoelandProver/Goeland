%------------------------------------------------------------------------------
% File     : AGT042+1 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Agents
% Problem  : Axioms for CPlanT
% Version  : [Bar03] axioms : Especial.
% English  :

% Refs     : [Bar03] Barta, J. (2003), Email to G. Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 .0, 0.00 v6.4.0
% Syntax   : Number of formulae    :  636 ( 616 unt;   0 def)
%            Number of atoms       :  714 (   0 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :  124 (  46   ~;   0   |;  58   &)
%                                         (  14 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   1 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   10 (  10 usr;   0 prp; 2-4 aty)
%            Number of functors    :   60 (  60 usr;  60 con; 0-0 aty)
%            Number of variables   :   35 (  35   !;   0   ?)
% SPC      : FOF_SAT_EPR_NEQ

% Comments : 
%------------------------------------------------------------------------------
%----CPlanT system axioms
include('Axioms/AGT001+0.ax').
%----CPlanT events axioms
include('Axioms/AGT001+1.ax').
%----CPlanT lemmas axioms
include('Axioms/AGT001+2.ax').
%------------------------------------------------------------------------------
