

%--------------------------------------------------------------------------
% File     : SYN354+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.20 (1)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.20 (1) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.04 v5.3.0, 0.17 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   11 (   0 equality)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   10 (   0 ~  ;   0  |;   2  &)
%                                         (   2 <=>;   6 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    2 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    5 (   0 singleton;   3 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_20_1,conjecture,
    ( ! [X1,X2] :
      ? [Y1,Y2] :
      ! [Z] :
        ( big_f(X1,X2)
       => ( big_g(X1,X2)
         => ( ( ( big_g(X2,Z)
              <=> big_g(Y2,Z) )
             => ( big_f(Y1,Y2)
               => big_f(X2,Y2) ) )
           => ( ( big_g(X2,Z)
              <=> big_g(Y1,Z) )
             => ( big_f(X1,Y1)
                & big_f(X2,Y1)
                & big_f(Y1,Y2) ) ) ) ) ) )).

%--------------------------------------------------------------------------
