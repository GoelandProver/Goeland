%--------------------------------------------------------------------------
% File     : GEO161+1 : TPTP v8.1.2. Released v2.5.0.
% Domain   : Geometry (Oriented curves)
% Problem  : Trajectories
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [EHK99]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v3.1.0, 0.83 v2.7.0, 0.67 v2.6.0, 1.00 v2.5.0
% Syntax   : Number of formulae    :   36 (   3 unt;   0 def)
%            Number of atoms       :  132 (  17 equ)
%            Maximal formula atoms :   12 (   3 avg)
%            Number of connectives :  105 (   9   ~;  10   |;  41   &)
%                                         (  24 <=>;  21  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   7 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   16 (  15 usr;   0 prp; 1-4 aty)
%            Number of functors    :    5 (   5 usr;   0 con; 1-2 aty)
%            Number of variables   :  118 ( 102   !;  16   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include Simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include Betweenness for simple curves
include('Axioms/GEO004+1.ax').
%----Include Oriented curves
include('Axioms/GEO004+2.ax').
%----Include Trajectories
include('Axioms/GEO004+3.ax').
%--------------------------------------------------------------------------
