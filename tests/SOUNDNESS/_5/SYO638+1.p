%------------------------------------------------------------------------------
% File     : SYO638+1 : TPTP v8.1.2. Released v7.1.0.
% Domain   : Syntactic
% Problem  : Hilbert
% Version  : Especial.
% English  :

% Refs     : [HB34]  Hilbert & Bernays (1934), Grundlagen der Mathematick
%          : [Lam17] Lampert (2017), Email to Geoff Sutcliffe
% Source   : [Lam17]
% Names    :

% Status   : Satisfiable
% Rating   : 0.67 v7.1.0, 1.00 v7.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    5 (   5 avg)
%            Number of connectives :    5 (   1   ~;   0   |;   3   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (   5   !;   1   ?)
% SPC      : FOF_SAT_RFO_NEQ

% Comments : Has only infinite models.
%------------------------------------------------------------------------------
fof(hilbert,axiom,
    ( ! [X] :
      ? [Y] : f(X,Y)
    & ! [X,Y,Z] :
        ( ( f(X,Y)
          & f(Y,Z) )
       => f(X,Z) )
    & ! [X] : ~ f(X,X) ) ).

%------------------------------------------------------------------------------
