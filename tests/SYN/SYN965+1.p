%--------------------------------------------------------------------------
% File     : SYN965+1 : TPTP v7.4.0. Released v3.1.0.
% Domain   : Syntactic
% Problem  : Syntactic from Shults
% Version  : Especial.
% English  :

% Refs     : [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v6.3.0, 0.08 v6.2.0, 0.00 v5.5.0, 0.08 v5.4.0, 0.04 v5.3.0, 0.13 v5.2.0, 0.07 v5.0.0, 0.10 v4.1.0, 0.11 v4.0.1, 0.16 v4.0.0, 0.15 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.22 v3.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    5 (   0 equality)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :    4 (   0 ~  ;   0  |;   2  &)
%                                         (   0 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    4 (   0 singleton;   1 !;   3 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ? [Z] :
      ! [X] :
      ? [Y] :
        ( ( p(Y,X)
         => ? [W] : p(W,Y) )
        & ( ( p(Z,Y)
            & p(Y,Z) )
         => p(Y,X) ) ) )).

%--------------------------------------------------------------------------