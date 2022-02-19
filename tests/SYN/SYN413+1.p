%--------------------------------------------------------------------------
% File     : SYN413+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 256
% Version  : Especial.
% English  :

% Refs     : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : kalish256 [Hah94]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v3.3.0, 0.11 v3.1.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    4 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    5 (   2 ~  ;   0  |;   1  &)
%                                         (   1 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    5 (   0 singleton;   3 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(kalish256,conjecture,
    ( ! [Z] :
      ? [Y] :
      ! [X] :
        ( f(X,Y)
      <=> ( f(X,Z)
          & ~ f(X,X) ) )
   => ~ ( ? [V] :
          ! [U] : f(U,V) ) )).

%--------------------------------------------------------------------------