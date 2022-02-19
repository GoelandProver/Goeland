%--------------------------------------------------------------------------
% File     : SYN351+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.18 (3)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.18 (3) [Chu56]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.04 v6.0.0, 0.25 v5.5.0, 0.12 v5.4.0, 0.09 v5.3.0, 0.13 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.05 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    9 (   0 equality)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :    8 (   0 ~  ;   0  |;   1  &)
%                                         (   2 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 4-4 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    5 (   0 singleton;   3 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_18_3,conjecture,
    ( ! [X1,X2] :
      ? [Y1,Y2] :
      ! [Z] :
        ( big_f(X1,Y2,X1,Z)
       => ( ( big_f(X1,Y1,X1,Y2)
          <=> big_f(Y1,X2,Y1,Y2) )
         => ( big_f(X1,Y1,X1,Y2)
           => ( ( big_f(X1,Y2,Y1,Y2)
               => big_f(X1,Z,Y1,Z) )
              & ( big_f(X1,Z,Y1,Z)
               => ( big_f(X1,Y1,X1,Y2)
                <=> big_f(X1,Y2,Y1,Y2) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------