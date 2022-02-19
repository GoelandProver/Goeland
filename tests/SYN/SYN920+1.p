%--------------------------------------------------------------------------
% File     : SYN920+1 : TPTP v7.4.0. Released v3.1.0.
% Domain   : Syntactic
% Problem  : From Smullyan
% Version  : Especial.
% English  :

% Refs     : [Smu68] Smullyan (1968), First-Order Logic
%            [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.11 v3.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   15 (   0 equality)
%            Maximal formula depth :    7 (   7 average)
%            Number of connectives :   16 (   2 ~  ;   1  |;   6  &)
%                                         (   0 <=>;   7 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    6 (   0 singleton;   4 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ( ( ! [X] :
            ( ( f(X)
              & g(X) )
           => h(X) )
       => ? [X] :
            ( f(X)
            & ~ g(X) ) )
      & ( ! [W] :
            ( f(W)
           => g(W) )
        | ! [Z] :
            ( f(Z)
           => h(Z) ) ) )
   => ( ! [R] :
          ( ( f(R)
            & h(R) )
         => g(R) )
     => ? [V] :
          ( f(V)
          & g(V)
          & ~ h(V) ) ) )).

%--------------------------------------------------------------------------