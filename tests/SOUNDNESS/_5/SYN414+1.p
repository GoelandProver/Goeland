%--------------------------------------------------------------------------
% File     : SYN414+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 265
% Version  : Especial.
% English  :

% Refs     : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : kalish265 [Hah94]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.3.0, 0.08 v5.2.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    8 (   8 avg)
%            Number of connectives :    7 (   0   ~;   0   |;   4   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    3 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (   4   !;   2   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(kalish265,conjecture,
    ( ! [X] :
        ( ? [Y] :
            ( h(X,Y)
            & f(Y) )
       => ? [Z] :
            ( h(X,Z)
            & g(Z) ) )
  <=> ! [U,V,W] :
        ( ( h(U,V)
          & f(V) )
       => ( h(U,W)
          & g(W) ) ) ) ).

%--------------------------------------------------------------------------
