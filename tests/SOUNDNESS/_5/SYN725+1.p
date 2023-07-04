%--------------------------------------------------------------------------
% File     : SYN725+1 : TPTP v8.1.2. Released v2.5.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem THM39
% Version  : Especial.
% English  :

% Refs     : [And97] Andrews (1994), Email to G. Sutcliffe
% Source   : [And97]
% Names    : THM39 [And97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.17 v2.6.0, 0.33 v2.5.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    6 (   6 avg)
%            Number of connectives :    5 (   0   ~;   1   |;   1   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (   2   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(thm39,conjecture,
    ( ! [X] :
        ( r(X)
        | ( s(X)
        <=> ( r(X)
            & s(X) ) ) )
   => ! [X] :
        ( r(X)
       => s(X) ) ) ).

%--------------------------------------------------------------------------
