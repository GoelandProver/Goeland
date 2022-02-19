%--------------------------------------------------------------------------
% File     : SYN343+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.16 (2)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.16 (2) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.08 v5.4.0, 0.04 v5.3.0, 0.13 v5.2.0, 0.07 v5.0.0, 0.10 v4.1.0, 0.11 v4.0.1, 0.16 v4.0.0, 0.15 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    5 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :    4 (   0 ~  ;   0  |;   1  &)
%                                         (   0 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    4 (   0 singleton;   1 !;   3 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : Not sure how X is supposed to be quantified, because the
%            quantifier is missing in [Chu56].
%--------------------------------------------------------------------------
fof(church_46_16_2,conjecture,
    ( ? [X,Y1,Y2] :
      ! [Z] :
        ( ( ( big_f(X,Y1)
           => big_f(Z,X) )
         => big_f(X,X) )
       => ( big_f(X,X)
          & big_f(Y1,Y2) ) ) )).

%--------------------------------------------------------------------------