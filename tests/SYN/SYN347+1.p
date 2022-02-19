

%--------------------------------------------------------------------------
% File     : SYN347+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.17 (3)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.17 (3) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.08 v5.4.0, 0.09 v5.3.0, 0.13 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.05 v4.0.0, 0.10 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.11 v3.2.0, 0.33 v3.1.0, 0.17 v2.7.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    5 (   0 equality)
%            Maximal formula depth :    9 (   9 average)
%            Number of connectives :    4 (   0 ~  ;   1  |;   0  &)
%                                         (   3 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    5 (   0 singleton;   3 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : In [Chu56] the variables Z1 and Z2 are not quantified.
%            I have assumed universal quantification.
%--------------------------------------------------------------------------
fof(church_46_17_3,conjecture,
    ( ! [Z1,Z2] :
      ? [X1,X2] :
      ! [Y] :
        ( ( ( big_f(X1,Y)
          <=> big_f(X2,Y) )
        <=> big_f(Z1,Z2) )
        | ( big_f(Z1,Y)
        <=> big_f(Z2,Y) ) ) )).

%--------------------------------------------------------------------------
