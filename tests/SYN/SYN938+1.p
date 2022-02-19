
%--------------------------------------------------------------------------
% File     : SYN938+1 : TPTP v7.4.0. Released v3.1.0.
% Domain   : Syntactic
% Problem  : Combined syntactic from Shults
% Version  : Especial.
% English  :

% Refs     : [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.19 v7.4.0, 0.12 v7.3.0, 0.14 v7.2.0, 0.17 v7.1.0, 0.25 v7.0.0, 0.07 v6.3.0, 0.23 v6.2.0, 0.18 v6.1.0, 0.16 v6.0.0, 0.25 v5.5.0, 0.29 v5.4.0, 0.30 v5.3.0, 0.39 v5.2.0, 0.36 v5.0.0, 0.35 v4.1.0, 0.33 v4.0.1, 0.32 v4.0.0, 0.35 v3.7.0, 0.29 v3.5.0, 0.25 v3.4.0, 0.00 v3.3.0, 0.33 v3.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  203 (   0 equality)
%            Maximal formula depth :   55 (  55 average)
%            Number of connectives :  206 (   4 ~  ;  11  |;  97  &)
%                                         (   7 <=>;  87 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   21 (   5 propositional; 0-2 arity)
%            Number of functors    :    2 (   1 constant; 0-1 arity)
%            Number of variables   :  141 (   0 singleton;  78 !;  63 ?)
%            Maximal term depth    :    2 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ! [C,B] :
        ( ! [Z] : q1(f(Z))
       => ? [X,Y] :
            ( ( p1(f(Y))
             => p1(X) )
            & ( r1(Y)
             => ( r1(B)
                & r1(C) ) )
            & q1(X) ) )
    & ! [B,C] :
        ( ! [Z] : q1(f(Z))
       => ? [X,Y] :
            ( ( p1(f(Y))
             => ( p1(X)
                & ( r1(Y)
                 => ( r1(B)
                    & r1(C) ) ) ) )
            & q1(X) ) )
    & ! [B,C] :
        ( q1(f(B))
       => ? [X,Y] :
            ( ( p1(f(Y))
             => ( p1(X)
                & ( r1(Y)
                 => ( r1(B)
                    & r1(C) ) ) ) )
            & q1(X) ) )
    & ( ( ! [X] :
            ( a1(X)
           => ( b(X)
              | c(X) ) )
        & ~ ( ! [X] :
                ( a1(X)
               => b(X) ) ) )
     => ? [X] :
          ( a1(X)
          & c(X) ) )
    & ! [A] :
      ? [X,X2,X3,X4,Y] :
        ( ( p1(A)
          & e(A)
          & ( e(X)
           => ( g(X)
              | s(X,f(X)) ) )
          & ( e(X2)
           => ( g(X2)
              | c(f(X2)) ) )
          & ( s(A,Y)
           => p1(Y) ) )
       => ( ( p1(X3)
            & g(X3) )
          | ( p1(X4)
            & c(X4) ) ) )
    & ! [A,B,C] :
        ( ( s1(A)
          & s1(B)
          & r(B,C)
          & ! [X] :
              ( s1(X)
             => p1(X) )
          & ! [X,Y] :
              ( r(X,Y)
             => q(X,Y) ) )
       => ? [X,Y] :
            ( p1(X)
            & q(X,Y) ) )
    & ( ! [X] : p1(X)
     => ! [A,B] :
          ( p1(A)
          & p1(B) ) )
    & ( ( ! [X] : p1(X)
        & ? [Y] : q1(Y) )
     => ? [Z] :
        ! [Y] :
          ( p1(Y)
          | r1(Z) ) )
    & ( ! [X] :
        ? [Y] :
          ( p1(X)
          & q1(Y) )
     => ? [Z] :
        ! [Y] :
          ( p1(Y)
          | r1(Z) ) )
    & ( ! [X] :
        ? [Y] :
          ( a(X,Y)
          & a(Y,Y) )
     => ? [Z] : a(Z,Z) )
    & ! [A,B,C] :
        ( ( s1(A)
          & s1(B)
          & r(B,C)
          & ! [X] :
              ( s1(X)
             => p1(X) )
          & ! [X,Y] :
              ( r(X,Y)
             => q(X,Y) ) )
       => ? [X,Y] :
            ( p1(X)
            & q(X,Y) ) )
    & ! [A,B] :
        ( ! [Y] :
            ( q1(Y)
           => p1(Y) )
       => ? [X] :
            ( ( p1(X)
             => p1(A) )
            & ( q1(X)
             => p1(B) ) ) )
    & ( ? [X] : p1(X)
     => ( ? [X] : p1(X)
        & ( a0
         => ( ( b0
              | ~ b0 )
            & ( q0
             => q0 ) ) ) ) )
    & ( ! [X] : p1(X)
     => ? [Y] : p1(Y) )
    & ( ! [X] :
          ( p1(X)
         => q1(X) )
     => ( ! [X] : p1(X)
       => ! [X] : q1(X) ) )
    & ! [A,B] :
        ( ! [Z] :
            ( q1(Z)
           => p1(Z) )
       => ? [X] :
            ( ( p1(X)
             => p1(A) )
            & ( q1(X)
             => p1(B) ) ) )
    & ( ! [X] :
          ( a1(X)
         => b(X) )
     => ( ? [X] : a1(X)
       => ? [X] : b(X) ) )
    & ( ? [X] :
          ( a1(X)
         => b(X) )
     => ( ! [X] : a1(X)
       => ? [X] : b(X) ) )
    & ~ ( ? [Y] :
          ! [X] :
            ( a(X,Y)
          <=> ~ a(X,X) ) )
    & ( ( ? [X] : a1(X)
        & ! [X] : b(X) )
     => ? [X] :
          ( a1(X)
          & b(X) ) )
    & ( ? [X] : b(X)
     => ? [X] :
          ( a1(X)
          | b(X) ) )
    & ( ? [X,Y] : a(X,Y)
    <=> ? [Y,X] : a(X,Y) )
    & ! [A,B] :
        ( ! [X] : p1(X)
       => ( p1(A)
          & p1(B) ) )
    & ( ! [X] : p1(X)
     => ( ! [X] : p1(X)
        & ! [Y] : p1(Y) ) )
    & ( ? [X] : p1(X)
    <=> ? [Y] : p1(Y) )
    & ( ? [X] : p1(X)
     => ? [Z] : p1(Z) )
    & ? [Z] :
      ! [X] :
      ? [Y] :
        ( ( p(Y,X)
         => ? [W] : p(W,Y) )
        & ( ( p(Z,Y)
            & p(Y,Z) )
         => p(Y,X) ) )
    & ( ! [X,Y] :
          ( eq(X,Y)
        <=> ! [Z] :
              ( a_member_of(Z,X)
            <=> a_member_of(Z,Y) ) )
     => ! [A,B] :
          ( eq(A,B)
         => eq(B,A) ) )
    & ! [A,B] :
        ( ! [Y] :
            ( q1(Y)
           => p1(Y) )
       => ? [X] :
            ( ( p1(X)
             => p1(A) )
            & ( q1(X)
             => p1(B) ) ) )
    & ? [X] :
      ! [Y] :
        ( p1(X)
       => p1(Y) )
    & ! [B] :
        ( ( ! [X] :
              ( p1(X)
             => q1(X) )
          & r1(B) )
       => ( ! [Y] :
              ( r1(Y)
             => p1(Y) )
         => q1(B) ) )
    & ! [A,B] :
      ? [X,Y] :
        ( ( p1(X)
         => r1(Y) )
       => ( p1(A)
         => r1(B) ) )
    & ? [Y] :
        ( ? [X] : p1(X)
       => p1(Y) )
    & ( ? [X] :
        ! [Y] : p(X,Y)
     => ! [Y] :
        ? [X] : p(X,Y) )
    & ( p1(z)
     => p1(z) )
    & ( ? [X] : p1(X)
     => ? [Y] : p1(Y) )
    & ( ! [X,Y] : p(X,Y)
     => ! [X] : p(X,X) )
    & ! [A] :
        ( ( ( f0
            | g0 )
          & ! [X] :
              ( p1(X)
              & q1(X) ) )
       => q1(A) )
    & ( ( a0
      <=> b0 )
      | a0
      | b0 )
    & ( ( a0
        & b0 )
     => ( a0
      <=> b0 ) )
    & ! [A,B] :
      ? [X,Y] :
        ( ( ( q1(X)
           => p(X,A) )
          & q1(A)
          & q1(B)
          & ( r1(Y)
           => p(B,Y) )
          & r1(A)
          & r1(B)
          & ( s1(A)
           => p(X,Y) )
          & s1(A) )
       => p(A,B) )
    & ! [B] :
        ( ! [Y] :
            ( ( r1(B)
             => r1(Y) )
           => p(f(Y),Y) )
       => ? [X,Y] :
            ( p(X,Y)
            & ( q(f(B),B)
             => q(X,Y) ) ) )
    & ( ( ! [X] :
            ( p1(X)
           => q1(X) )
        & ? [Y] :
            ( q1(Y)
           => r1(Y) ) )
     => ? [Z] :
          ( p1(Z)
         => r1(Z) ) ) )).

%--------------------------------------------------------------------------

