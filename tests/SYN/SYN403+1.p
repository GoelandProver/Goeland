%--------------------------------------------------------------------------
% File     : SYN403+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 234
% Version  : Especial.
% English  : Laws of alphabetic variance.

% Refs     : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : kalish234 [Hah94]

% Status   : Theorem
% Rating   : 0.00 v5.3.0, 0.09 v5.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    6 (   0 equality)
%            Maximal formula depth :    5 (   5 average)
%            Number of connectives :    5 (   0 ~  ;   0  |;   1  &)
%                                         (   0 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-1 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    1 (   0 singleton;   1 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(kalish234,conjecture,
    ( ! [X] :
        ( ( ( f(X)
           => g(X) )
          & ( g(X)
           => h(X) ) )
       => ( f(X)
         => h(X) ) ) )).

%--------------------------------------------------------------------------