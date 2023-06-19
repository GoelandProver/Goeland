%--------------------------------------------------------------------------
% File     : GEO131+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Geometry (Oriented curves)
% Problem  : Betweenness and precedence for three points, corollary
% Version  : [EHK99] axioms.
% English  :

% Refs     : [KE99]  Kulik & Eschenbach (1999), A Geometry of Oriented Curv
%          : [EHK99] Eschenbach et al. (1999), Representing Simple Trajecto
% Source   : [KE99]
% Names    : Corollary 4.16 [KE99]

% Status   : CounterSatisfiable
% Rating   : 1.00 v6.2.0, 0.91 v6.1.0, 1.00 v2.4.0
% Syntax   : Number of formulae    :   28 (   2 unt;   0 def)
%            Number of atoms       :  115 (  16 equ)
%            Maximal formula atoms :   12 (   4 avg)
%            Number of connectives :   95 (   8   ~;  10   |;  38   &)
%                                         (  21 <=>;  18  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   7 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   15 (  14 usr;   0 prp; 1-4 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-2 aty)
%            Number of variables   :   98 (  84   !;  14   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include simple curve axioms
include('Axioms/GEO004+0.ax').
%----Include axioms of betweenness for simple curves
include('Axioms/GEO004+1.ax').
%----Include oriented curve axioms
include('Axioms/GEO004+2.ax').
%--------------------------------------------------------------------------
fof(corollary_4_16,conjecture,
    ! [P,Q,R,O] :
      ( between(O,P,Q,R)
     => ( ordered_by(O,P,Q)
      <=> ordered_by(O,P,R) ) ) ).

%--------------------------------------------------------------------------
