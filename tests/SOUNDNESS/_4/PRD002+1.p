%------------------------------------------------------------------------------
% File     : PRD002+1 : TPTP v8.1.2. Released v6.2.0.
% Domain   : Products
% Problem  : No French wine
% Version  : [Men15] axioms : Especial.
% English  :

% Refs     : [Fod15] Fodor (2015), Email to G. Sutcliffe
%          : [Men15] Meng (2015), Email to G. Sutcliffe
% Source   : [Fod15]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.3.0, 0.25 v6.2.0
% Syntax   : Number of formulae    : 1615 ( 654 unt;   0 def)
%            Number of atoms       : 3122 (   0 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives : 1507 (   0   ~;   0   |; 546   &)
%                                         (   0 <=>; 961  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :  338 ( 338 usr;   0 prp; 1-2 aty)
%            Number of functors    :  161 ( 161 usr; 161 con; 0-0 aty)
%            Number of variables   : 1377 (1376   !;   1   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
include('Axioms/PRD001+0.ax').
%------------------------------------------------------------------------------
fof(act3_formula21,conjecture,
    ? [X] : frenchwine(X) ).

%------------------------------------------------------------------------------
