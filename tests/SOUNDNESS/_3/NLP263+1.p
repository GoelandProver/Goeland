%------------------------------------------------------------------------------
% File     : NLP263+1 : TPTP v8.1.2. Bugfixed v4.0.1.
% Domain   : Natural Language Processing
% Problem  : Satisfiability of WordNet axioms
% Version  : Especial.
% English  :

% Refs     : [Fel98] Felbaum (1998), WordNet: An Electronic Lexical Databas
%          : [deM09] de Melo (2009), Email to Geoff Sutcliffe
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Rating   : 0.33 v6.2.0, 0.60 v6.1.0, 0.40 v6.0.0, 0.50 v5.5.0, 0.67 v5.4.0, 0.71 v5.3.0, 0.86 v5.2.0, 0.75 v5.0.0, 1.00 v4.0.1
% Syntax   : Number of formulae    : 1026857 (1026857 unt;   0 def)
%            Number of atoms       : 1026857 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   30 (  30 usr;   0 prp; 2-2 aty)
%            Number of functors    : 383180 (383180 usr;383180 con; 0-0 aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
% Bugfixes : v4.0.1 - Added _c to constants that were the same as predicates.
%------------------------------------------------------------------------------
%----Include axioms from SUMO
include('Axioms/NLP001+0.ax').
%------------------------------------------------------------------------------
