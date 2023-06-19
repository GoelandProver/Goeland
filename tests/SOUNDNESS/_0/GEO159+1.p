%--------------------------------------------------------------------------
% File     : GEO159+1 : TPTP v8.1.2. Released v2.5.0.
% Domain   : Geometry (Oriented curves)
% Problem  : Betweenness for simple curves
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v3.1.0, 0.83 v2.7.0, 0.67 v2.6.0, 1.00 v2.5.0
% Syntax   : Number of formulae    :   17 (   1 unt;   0 def)
%            Number of atoms       :   73 (  11 equ)
%            Maximal formula atoms :   12 (   4 avg)
%            Number of connectives :   61 (   5   ~;   9   |;  25   &)
%                                         (  10 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    9 (   8 usr;   0 prp; 1-4 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   58 (  48   !;  10   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include Simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include Betweenness for simple curves
include('Axioms/GEO004+1.ax').
%--------------------------------------------------------------------------
