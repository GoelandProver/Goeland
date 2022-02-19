%--------------------------------------------------------------------------
% File     : SYN723+1 : TPTP v7.4.0. Released v2.5.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem THM138
% Version  : Especial.
% English  :

% Refs     : [And97] Andrews (1994), Email to G. Sutcliffe
% Source   : [And97]
% Names    : THM138 [And97]

% Status   : Theorem
% Rating   : 0.14 v7.4.0, 0.06 v7.3.0, 0.00 v7.0.0, 0.07 v6.4.0, 0.14 v6.3.0, 0.15 v6.2.0, 0.09 v6.1.0, 0.28 v6.0.0, 0.25 v5.5.0, 0.50 v5.4.0, 0.52 v5.3.0, 0.57 v5.2.0, 0.43 v5.1.0, 0.36 v5.0.0, 0.40 v4.1.0, 0.39 v4.0.1, 0.32 v4.0.0, 0.35 v3.7.0, 0.33 v3.5.0, 0.38 v3.4.0, 0.42 v3.3.0, 0.44 v3.2.0, 0.67 v3.1.0, 0.83 v2.7.0, 0.67 v2.6.0, 0.50 v2.5.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   16 (   0 equality)
%            Maximal formula depth :   10 (  10 average)
%            Number of connectives :   15 (   0 ~  ;   0  |;   0  &)
%                                         (  15 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   16 (   0 singleton;   8 !;   8 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(thm138,conjecture,
    ( ? [X] :
      ! [Y] :
        ( p(X)
      <=> p(Y) )
  <=> ( ( ? [X] : q(X)
      <=> ! [Y] : r(Y) )
    <=> ( ( ? [X] :
            ! [Y] :
              ( q(X)
            <=> q(Y) )
        <=> ( ? [X] : r(X)
          <=> ! [Y] : s(Y) ) )
      <=> ( ? [X] :
            ! [Y] :
              ( r(X)
            <=> r(Y) )
        <=> ( ( ? [X] : s(X)
            <=> ! [Y] : p(Y) )
          <=> ( ? [X] :
                ! [Y] :
                  ( s(X)
                <=> s(Y) )
            <=> ( ? [X] : p(X)
              <=> ! [Y] : q(Y) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------