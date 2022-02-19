

%--------------------------------------------------------------------------
% File     : SYN400+1 : TPTP v7.4.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 227
% Version  : Especial.
% English  : Laws of vacuous quantification.

% Refs     : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : kalish227 [Hah94]

% Status   : Theorem
% Rating   : 0.00 v4.0.1, 0.05 v3.7.0, 0.00 v3.2.0, 0.11 v3.1.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    2 (   0 equality)
%            Maximal formula depth :    3 (   3 average)
%            Number of connectives :    1 (   0 ~  ;   0  |;   0  &)
%                                         (   1 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   1 propositional; 0-0 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    1 (   1 singleton;   1 !;   0 ?)
%            Maximal term depth    :    0 (   0 average)
% SPC      : FOF_THM_PRP

% Comments : The unused quantified variable is meant to be there. It's the
%            crux of the problem, to show it can be ignored.
%--------------------------------------------------------------------------
fof(kalish227,conjecture,
    ( ! [X] : p
  <=> p )).

%--------------------------------------------------------------------------
