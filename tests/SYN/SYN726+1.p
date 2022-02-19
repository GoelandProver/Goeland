%--------------------------------------------------------------------------
% File     : SYN726+1 : TPTP v7.4.0. Released v2.5.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem THM400
% Version  : Especial.
% English  :

% Refs     : [And97] Andrews (1994), Email to G. Sutcliffe
% Source   : [And97]
% Names    : THM400 [And97]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.5.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   12 (   0 equality)
%            Maximal formula depth :   10 (  10 average)
%            Number of connectives :   11 (   0 ~  ;   2  |;   5  &)
%                                         (   0 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   14 (   0 singleton;  14 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(thm400,conjecture,
    ( ( ( ! [X,Y,Z] :
            ( ( p(X,Y)
              & p(Y,Z) )
           => p(X,Z) )
        & ! [X,Y,Z] :
            ( ( q(X,Y)
              & q(Y,Z) )
           => q(X,Z) )
        & ! [X,Y] :
            ( q(X,Y)
           => q(Y,X) )
        & ! [X,Y] :
            ( p(X,Y)
            | q(X,Y) ) )
     => ! [X,Y] : p(X,Y) )
    | ! [X,Y] : q(X,Y) )).

%--------------------------------------------------------------------------