%------------------------------------------------------------------------------
% File     : PHI017+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Philosophy
% Problem  : Independence of SE from the DAPI
% Version  : [Hor19] axioms.
% English  :

% Refs     : [Hor19] Horner (2019), A Computationally Assisted Reconstructi
%            [Hor20] Horner (2020), Email to Geoff Sutcliffe
% Source   : [Hor20]
% Names    : APPENDIX 2 [Hor19]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0
% Syntax   : Number of formulae    :   18 (   0 unt;   0 def)
%            Number of atoms       :   63 (   2 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :   55 (  10   ~;   4   |;  20   &)
%                                         (  12 <=>;   9  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   48 (  47 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   30 (  30   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
include('Axioms/PHI002+0.ax').
include('Axioms/PHI002+1.ax').
%------------------------------------------------------------------------------
fof(has_substance_exists,conjecture,
    ! [X] :
      ( substance(X)
     => exists(X) ) ).

%------------------------------------------------------------------------------
