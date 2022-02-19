%--------------------------------------------------------------------------
% File     : SYN386+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2138
% Version  : Especial.
% English  :

% Refs     : [And86] Andrews (1986), An Introduction to Mathematical Logic
%          : [And94] Andrews (1994), Email to G. Sutcliffe
% Source   : [And94]
% Names    : X2138 [And86]

% Status   : Theorem
% Rating   : 0.14 v7.4.0, 0.19 v7.3.0, 0.00 v7.0.0, 0.14 v6.3.0, 0.23 v6.2.0, 0.27 v6.1.0, 0.12 v6.0.0, 0.25 v5.5.0, 0.17 v5.4.0, 0.13 v5.2.0, 0.07 v5.0.0, 0.10 v4.1.0, 0.11 v4.0.1, 0.21 v4.0.0, 0.20 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.17 v3.3.0, 0.11 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   10 (   0 equality)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :    9 (   0 ~  ;   0  |;   3  &)
%                                         (   0 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 2-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   17 (   0 singleton;  11 !;   6 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(x2138,conjecture,
    ( ( ! [X] :
        ? [Y] : big_f(X,Y)
      & ? [X] :
        ! [E] :
        ? [N] :
        ! [W] :
          ( big_s(N,W)
         => big_d(W,X,E) )
      & ! [E] :
        ? [D] :
        ! [A,B] :
          ( big_d(A,B,D)
         => ! [Y,Z] :
              ( ( big_f(A,Y)
                & big_f(B,Z) )
             => big_d(Y,Z,E) ) ) )
   => ? [Y] :
      ! [E] :
      ? [M] :
      ! [W] :
        ( big_s(M,W)
       => ! [Z] :
            ( big_f(W,Z)
           => big_d(Z,Y,E) ) ) )).

%--------------------------------------------------------------------------