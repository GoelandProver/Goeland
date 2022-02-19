

%--------------------------------------------------------------------------
% File     : SYN979+1 : TPTP v7.4.0. Released v3.1.0.
% Domain   : Syntactic
% Problem  : Syntactic from Shults
% Version  : Especial.
% English  :

% Refs     : [Shu04] Shults (2004), Email to G. Sutcliffe
% Source   : [Shu04]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v3.2.0, 0.11 v3.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   12 (   0 equality)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   11 (   0 ~  ;   0  |;   7  &)
%                                         (   0 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    4 (   0 singleton;   2 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(prove_this,conjecture,
    ( ! [A,B] :
      ? [X,Y] :
        ( ( ( q(X)
           => p(X,A) )
          & q(A)
          & q(B)
          & ( r(Y)
           => p(B,Y) )
          & r(A)
          & r(B)
          & ( s(A)
           => p(X,Y) )
          & s(A) )
       => p(A,B) ) )).

%--------------------------------------------------------------------------
