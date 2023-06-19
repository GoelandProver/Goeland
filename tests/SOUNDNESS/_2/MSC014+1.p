%------------------------------------------------------------------------------
% File     : MSC014+1 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Miscellaneous
% Problem  : Find a model with a functional relation which is injective, n=4
% Version  : Especial.

% Refs     : [Bez05] Bezem (2005), Email to Geoff Sutcliffe
% Source   : [Bez05]
% Names    : inj5 [Bez05]

% Status   : Satisfiable
% Rating   : 0.00 v7.1.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.40 v6.1.0, 0.20 v6.0.0, 0.25 v5.5.0, 0.33 v5.4.0, 0.29 v5.2.0, 0.25 v5.0.0, 0.33 v4.1.0, 0.25 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.33 v3.4.0, 0.40 v3.3.0, 0.33 v3.2.0

% Syntax   : Number of formulae    :    4 (   0 unt;   0 def)
%            Number of atoms       :   15 (   0 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :   13 (   2   ~;   0   |;   9   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-5 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :   14 (  13   !;   1   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(n0_and_n1_reflexive,axiom,
    ( equalish(n0,n0)
    & equalish(n1,n1) ) ).

fof(n0_not_n1,axiom,
    ( ~ equalish(n0,n1)
    & ~ equalish(n1,n0) ) ).

fof(exists_f,axiom,
    ! [X1,X2,X3,X4] :
      ( ( equalish(X1,X1)
        & equalish(X2,X2)
        & equalish(X3,X3)
        & equalish(X4,X4) )
     => ? [Z] : f(X1,X2,X3,X4,Z) ) ).

fof(inject_f,axiom,
    ! [X1,X2,X3,X4,Y1,Y2,Y3,Y4,Z] :
      ( ( f(X1,X2,X3,X4,Z)
        & f(Y1,Y2,Y3,Y4,Z) )
     => ( equalish(X1,Y1)
        & equalish(X2,Y2)
        & equalish(X3,Y3)
        & equalish(X4,Y4) ) ) ).

%------------------------------------------------------------------------------
