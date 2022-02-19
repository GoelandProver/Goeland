%--------------------------------------------------------------------------
% File     : SYN728+1 : TPTP v7.4.0. Released v2.5.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem THM69
% Version  : Especial.
% English  :

% Refs     : [And97] Andrews (1994), Email to G. Sutcliffe
% Source   : [And97]
% Names    : THM69 [And97]

% Status   : Theorem
% Rating   : 0.00 v6.4.0, 0.07 v6.3.0, 0.08 v6.2.0, 0.09 v6.1.0, 0.04 v6.0.0, 0.00 v5.5.0, 0.04 v5.4.0, 0.09 v5.3.0, 0.17 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.11 v4.0.0, 0.10 v3.7.0, 0.00 v2.5.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    9 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    9 (   1 ~  ;   1  |;   4  &)
%                                         (   0 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :    8 (   0 singleton;   5 !;   3 ?)
%            Maximal term depth    :    2 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(thm69,conjecture,
    ( ( ! [X] :
          ( ? [Y] : p(X,Y)
         => ! [Z] : p(Z,Z) )
      & ! [R] :
        ? [S] :
          ( p(R,S)
          | ( m(R)
            & q(f(R,S)) ) )
      & ! [W] :
          ( q(W)
         => ~ m(g(W)) ) )
   => ! [U] :
      ? [V] :
        ( p(g(U),V)
        & p(U,U) ) )).

%--------------------------------------------------------------------------