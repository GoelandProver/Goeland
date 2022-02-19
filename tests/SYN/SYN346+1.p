%--------------------------------------------------------------------------
% File     : SYN346+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.17 (2)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.17 (2) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v4.0.1, 0.05 v3.7.0, 0.00 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   0 equality)
%            Maximal formula depth :   11 (  11 average)
%            Number of connectives :    5 (   0 ~  ;   1  |;   2  &)
%                                         (   0 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    6 (   1 singleton;   4 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : X1 does not occur, but that's how it is in the book.
%--------------------------------------------------------------------------
fof(church_46_17_2,conjecture,
    ( ! [X1,X2] :
      ? [Y1,Y2] :
      ! [Z1,Z2] :
        ( big_f(X2,Z1)
       => ( big_f(Y1,Z2)
         => ( ( big_f(Y1,Z1)
              & big_f(Y2,Z1) )
            | ( big_f(X2,Z2)
              & big_f(Y2,Z2) ) ) ) ) )).

%--------------------------------------------------------------------------