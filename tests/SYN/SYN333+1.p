%--------------------------------------------------------------------------
% File     : SYN333+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.14 (5)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.14 (5) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v7.0.0, 0.25 v6.4.0, 0.00 v5.3.0, 0.18 v5.2.0, 0.25 v5.0.0, 0.00 v4.1.0, 0.11 v4.0.1, 0.16 v4.0.0, 0.15 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.11 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    7 (   0 equality)
%            Maximal formula depth :    9 (   9 average)
%            Number of connectives :    6 (   0 ~  ;   0  |;   4  &)
%                                         (   0 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    3 (   0 singleton;   1 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_14_5,conjecture,
    ( ? [X,Y] :
      ! [Z] :
        ( big_f(X,Y)
       => ( big_f(Y,Z)
          & big_f(Z,Z)
          & ( ( big_f(X,Y)
              & big_g(X,Y) )
           => ( big_g(X,Z)
              & big_g(Z,Z) ) ) ) ) )).

%--------------------------------------------------------------------------