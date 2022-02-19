%--------------------------------------------------------------------------
% File     : SYN319+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.2 (5)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.2 (5) [Chu56]

% Status   : Theorem
% Rating   : 0.05 v7.4.0, 0.00 v7.0.0, 0.07 v6.3.0, 0.08 v6.2.0, 0.09 v6.1.0, 0.12 v6.0.0, 0.00 v5.5.0, 0.08 v5.4.0, 0.09 v5.3.0, 0.17 v5.2.0, 0.07 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.11 v4.0.0, 0.10 v3.7.0, 0.33 v3.5.0, 0.12 v3.4.0, 0.08 v3.3.0, 0.00 v3.2.0, 0.22 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :   12 (   0 equality)
%            Maximal formula depth :   11 (  11 average)
%            Number of connectives :   12 (   1 ~  ;   2  |;   2  &)
%                                         (   0 <=>;   7 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    4 (   0 singleton;   2 !;   2 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_2_5,conjecture,
    ( ? [X,Y] :
      ! [Z1,Z2] :
        ( ( ( big_f(Y)
           => big_g(Z1) )
         => ( big_g(X)
            & ~ big_f(Z1) ) )
       => ( ( ( big_f(X)
              | big_g(X) )
           => big_h(X) )
         => ( big_h(Z2)
            & ( big_h(Y)
             => ( ( big_f(Z2)
                  | big_g(Z2) )
               => big_h(Z2) ) ) ) ) ) )).

%--------------------------------------------------------------------------