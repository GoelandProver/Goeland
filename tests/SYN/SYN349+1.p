%--------------------------------------------------------------------------
% File     : SYN349+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.17 (5)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.17 (5) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.04 v5.3.0, 0.13 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.11 v4.0.0, 0.15 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.11 v3.2.0, 0.33 v3.1.0, 0.17 v2.7.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   0 equality)
%            Maximal formula depth :    9 (   9 average)
%            Number of connectives :    5 (   0 ~  ;   0  |;   0  &)
%                                         (   4 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    4 (   0 singleton;   2 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_17_5,conjecture,
    ( ? [X1] :
      ! [X2] :
      ? [X3] :
      ! [X4] :
        ( ( big_f(X1,X4)
        <=> big_f(X2,X4) )
       => ( ( ( big_f(X1,X4)
            <=> big_f(X4,X3) )
          <=> big_f(X3,X4) )
        <=> big_f(X4,X2) ) ) )).

%--------------------------------------------------------------------------