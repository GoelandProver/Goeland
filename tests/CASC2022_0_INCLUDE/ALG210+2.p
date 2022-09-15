%--------------------------------------------------------------------------
% File     : ALG210+2 : TPTP v8.1.0. Released v3.1.0.
% Domain   : General Algebra
% Problem  : Star-algebras are closed under multiplication
% Version  : Especial.
%            Theorem formulation : Expanded.
% English  :

% Refs     : [Col04] Colton (2004), Email to G.Sutcliffe
% Source   : [Col04]
% Names    :

% Status   : Theorem
% Rating   : 0.25 v7.5.0, 0.31 v7.4.0, 0.13 v7.3.0, 0.28 v7.2.0, 0.31 v7.1.0, 0.26 v7.0.0, 0.20 v6.4.0, 0.31 v6.3.0, 0.29 v6.2.0, 0.32 v6.1.0, 0.33 v6.0.0, 0.26 v5.5.0, 0.41 v5.4.0, 0.43 v5.3.0, 0.48 v5.2.0, 0.35 v5.1.0, 0.33 v5.0.0, 0.38 v4.1.0, 0.39 v4.0.1, 0.43 v4.0.0, 0.46 v3.7.0, 0.40 v3.5.0, 0.37 v3.3.0, 0.14 v3.2.0, 0.18 v3.1.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :    8 (   4 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   3   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :    8 (   7   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(axiom_1,axiom,
    ! [A,B,C] : times(times(A,B),C) = times(B,times(C,A)) ).

fof(axiom_2,axiom,
    ! [B] :
      ( element(B)
    <=> ? [C] :
          ( times(B,C) = B
          & times(B,B) = C ) ) ).

fof(conjecture_1,conjecture,
    ! [A,B,C] :
      ( ( element(A)
        & element(B)
        & C = times(A,B) )
     => element(C) ) ).

%--------------------------------------------------------------------------
