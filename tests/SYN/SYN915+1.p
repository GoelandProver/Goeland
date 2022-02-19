%--------------------------------------------------------------------------
% File     : SYN915+1 : TPTP v7.4.0. Released v3.1.0.
% Domain   : Syntactic
% Problem  : TRUE
% Version  : Biased.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v4.1.0, 0.11 v4.0.1, 0.16 v4.0.0, 0.20 v3.7.0, 0.33 v3.5.0, 0.25 v3.4.0, 0.33 v3.3.0, 0.22 v3.2.0, 0.11 v3.1.0
% Syntax   : Number of formulae    :    1 (   1 unit)
%            Number of atoms       :    1 (   0 equality)
%            Maximal formula depth :    1 (   1 average)
%            Number of connectives :    0 (   0 ~  ;   0  |;   0  &)
%                                         (   0 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   1 propositional; 0-0 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    0 (   0 singleton;   0 !;   0 ?)
%            Maximal term depth    :    0 (   0 average)
% SPC      : FOF_THM_PRP

% Comments : Biased because it has $true which some systems don't understand
%            yet.
%--------------------------------------------------------------------------
fof(truth,conjecture,
    ( $true )).
%--------------------------------------------------------------------------