
%--------------------------------------------------------------------------
% File     : SYN917+1 : TPTP v7.4.0. Released v3.1.0.
% Domain   : Syntactic
% Problem  : Combined problems from Smullyan
% Version  : Especial.
% English  :

% Refs     : [Smu68] Smullyan (1968), First-Order Logic
%            [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.05 v7.4.0, 0.00 v6.1.0, 0.08 v6.0.0, 0.25 v5.5.0, 0.21 v5.4.0, 0.22 v5.3.0, 0.30 v5.2.0, 0.21 v5.0.0, 0.20 v4.1.0, 0.22 v4.0.1, 0.21 v4.0.0, 0.25 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.17 v3.3.0, 0.33 v3.2.0, 0.78 v3.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   94 (   0 equality)
%            Maximal formula depth :   23 (  23 average)
%            Number of connectives :   98 (   5 ~  ;   8  |;  39  &)
%                                         (  10 <=>;  36 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   1 propositional; 0-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   56 (   2 singleton;  34 !;  22 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ( ( ! [X] :
            ( ( ( f(X)
                & g(X) )
             => h(X) )
           => ? [Y] :
                ( f(Y)
                & ~ g(Y) ) )
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
            & ~ h(V) ) ) )
    & ( ( ! [X,Y] :
            ( r(X,Y)
           => r(Y,X) )
        & ! [X,Y,Z] :
            ( ( r(X,Y)
              & r(Y,Z) )
           => r(X,Z) ) )
     => ! [X,Y] :
          ( r(X,Y)
         => r(X,X) ) )
    & ( ( ( ! [X] :
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
            & ~ h(V) ) ) )
    & ? [X] :
      ! [Y] :
        ( ( p(Y)
         => q(X) )
       => ( p(X)
         => q(X) ) )
    & ( ! [X] :
          ( p(X)
          & q(X) )
    <=> ( ! [X] : p(X)
        & ! [X] : q(X) ) )
    & ( ( ! [X] : p(X)
        | ! [X] : q(X) )
     => ! [X] :
          ( p(X)
          | q(X) ) )
    & ( ? [X] :
          ( p(X)
          | q(X) )
    <=> ( ? [X] : p(X)
        | ? [X] : q(X) ) )
    & ? [Y] :
        ( p(Y)
       => ! [X] : p(X) )
    & ( ? [X] :
          ( p(X)
          & q(X) )
     => ( ? [X] : p(X)
        & ? [X] : q(X) ) )
    & ! [Y] :
        ( ! [X] : p(X)
       => p(Y) )
    & ( ! [X] : p(X)
     => ? [X] : p(X) )
    & ( ~ ( ? [Y] : p(Y) )
     => ! [Y] :
          ( ? [X] : p(X)
         => p(Y) ) )
    & ( ! [X] :
          ( p(X)
          | c )
    <=> ( ! [X] : p(X)
        | c ) )
    & ( ? [X] :
          ( p(X)
          & c )
    <=> ( ? [X] : p(X)
        & c ) )
    & ( ? [X] : c
    <=> c )
    & ( ! [X] : c
    <=> c )
    & ( ? [X] :
          ( c
         => p(X) )
    <=> ( c
       => ? [X] : p(X) ) )
    & ( ? [X] :
          ( p(X)
         => c )
    <=> ( ! [X] : p(X)
       => c ) )
    & ( ! [X] :
          ( c
         => p(X) )
    <=> ( c
       => ! [X] : p(X) ) )
    & ( ! [X] :
          ( p(X)
         => c )
    <=> ( ? [X] : p(X)
       => c ) ) )).

%--------------------------------------------------------------------------

