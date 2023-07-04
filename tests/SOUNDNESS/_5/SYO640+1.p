%------------------------------------------------------------------------------
% File     : SYO640+1 : TPTP v8.1.2. Released v7.1.0.
% Domain   : Syntactic
% Problem  : Itmul0
% Version  : Especial.
% English  :

% Refs     : [Lam17] Lampert (2017), Email to Geoff Sutcliffe
% Source   : [Lam17]
% Names    :

% Status   : Satisfiable
% Rating   : 0.00 v7.3.0, 0.67 v7.1.0, 1.00 v7.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    8 (   8 avg)
%            Number of connectives :   11 (   4   ~;   3   |;   4   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (  12 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 3-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    9 (   5   !;   4   ?)
% SPC      : FOF_SAT_EPR_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(itmul0,axiom,
    ( ? [Y4,Y2,Y1] :
        ( f(Y2,Y1,Y4)
        & f(Y1,Y2,Y4)
        & ? [Y3] :
            ( ! [X1] :
                ( f(Y1,Y1,X1)
                | ~ f(Y1,Y3,X1) )
            & ~ f(Y1,Y3,Y4) ) )
    & ! [X1,X2,X3,X4] :
        ( f(X1,X3,X4)
        | ~ f(X1,X2,X4)
        | ~ f(X2,X3,X4) ) ) ).

%------------------------------------------------------------------------------
