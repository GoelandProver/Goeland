%--------------------------------------------------------------------------
% File     : SYN931+1 : TPTP v7.4.0. Released v3.1.0.
% Domain   : Syntactic
% Problem  : From Smullyan
% Version  : Especial.
% English  :

% Refs     : [Smu68] Smullyan (1968), First-Order Logic
%            [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.11 v5.4.0, 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v3.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    4 (   0 equality)
%            Maximal formula depth :    4 (   4 average)
%            Number of connectives :    3 (   0 ~  ;   0  |;   2  &)
%                                         (   1 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   1 propositional; 0-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    2 (   0 singleton;   0 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ? [X] :
        ( p(X)
        & c )
  <=> ( ? [X] : p(X)
      & c ) )).

%--------------------------------------------------------------------------