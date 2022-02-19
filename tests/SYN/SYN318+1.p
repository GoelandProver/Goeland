%--------------------------------------------------------------------------
% File     : SYN318+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.2 (4)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.2 (4) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.04 v5.4.0, 0.09 v5.3.0, 0.13 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   0 equality)
%            Maximal formula depth :    6 (   6 average)
%            Number of connectives :    5 (   0 ~  ;   0  |;   0  &)
%                                         (   0 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   1 propositional; 0-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    3 (   0 singleton;   2 !;   1 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : The free variable is existentially quantified. Based on CNF.
%--------------------------------------------------------------------------
fof(church_46_2_4,conjecture,
    ( ? [Y] :
        ( ! [X] :
            ( big_f(X)
           => ( big_f(Y)
             => big_g(X) ) )
       => ( p
         => ! [X] :
              ( big_f(X)
             => big_g(Y) ) ) ) )).

%--------------------------------------------------------------------------