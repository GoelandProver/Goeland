%--------------------------------------------------------------------------
% File     : SYN345+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.16 (4)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.16 (4) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v6.3.0, 0.08 v6.2.0, 0.00 v5.5.0, 0.08 v5.4.0, 0.04 v5.3.0, 0.13 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   12 (   0 equality)
%            Maximal formula depth :   11 (  11 average)
%            Number of connectives :   11 (   0 ~  ;   0  |;   1  &)
%                                         (   1 <=>;   9 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 3-3 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    5 (   0 singleton;   3 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_16_4,conjecture,
    ( ! [X1,X2] :
      ? [Y1,Y2] :
      ! [Z] :
        ( ( ( big_f(X1,X2,Y1)
           => big_f(Y2,Y1,Z) )
         => ( big_f(X1,X1,X2)
           => big_f(X1,X2,X2) ) )
       => ( ( ( big_f(X2,Y1,Y2)
             => big_f(Y1,Z,Z) )
           => ( big_f(X1,X2,X2)
             => big_f(X1,X1,X2) ) )
         => ( big_f(Y1,Y2,Z)
           => ( big_f(X2,X2,Y1)
              & ( big_f(X1,X1,X2)
              <=> big_f(X1,X2,X2) ) ) ) ) ) )).

%--------------------------------------------------------------------------