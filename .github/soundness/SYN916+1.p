%--------------------------------------------------------------------------
% File     : SYN916+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Syntactic
% Problem  : FALSE
% Version  : Biased.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 def)
%            Number of atoms       :    1 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of predicates  :    1 (   0 usr;   1 prp; 0-0 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : FOF_CSA_PRP

% Comments : Biased because it has $false which some systems don't understand
%            yet.
%--------------------------------------------------------------------------
fof(falsity,conjecture,
    $false ).

%--------------------------------------------------------------------------
