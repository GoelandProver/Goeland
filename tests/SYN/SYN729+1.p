%--------------------------------------------------------------------------
% File     : SYN729+1 : TPTP v7.4.0. Released v2.5.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem THM72
% Version  : Especial.
% English  :

% Refs     : [And97] Andrews (1994), Email to G. Sutcliffe
% Source   : [And97]
% Names    : THM72 [And97]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.04 v5.3.0, 0.09 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.00 v2.5.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    9 (   0 equality)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :    8 (   0 ~  ;   0  |;   4  &)
%                                         (   0 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   0 constant; 1-1 arity)
%            Number of variables   :    5 (   0 singleton;   3 !;   2 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(thm72,conjecture,
    ( ( ! [X] :
        ? [Y] :
          ( p(X)
         => ( l(X,g(h(Y)))
            & p(Y) ) )
      & ! [W] :
          ( p(W)
         => ( p(g(W))
            & p(h(W)) ) ) )
   => ! [X] :
        ( p(X)
       => ? [Y] :
            ( l(X,Y)
            & p(Y) ) ) )).

%--------------------------------------------------------------------------