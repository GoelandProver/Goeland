%--------------------------------------------------------------------------
% File     : SYN324+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.9 (1)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.9 (1) [Chu56]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.27 v5.3.0, 0.31 v5.2.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.33 v3.5.0, 0.25 v3.4.0, 0.33 v3.3.0, 0.17 v3.2.0, 0.00 v3.1.0, 0.17 v2.6.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    4 (   4 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   2 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (   1   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_9_1,conjecture,
    ? [X] :
    ! [Y] :
      ( ( big_f(X,Y)
      <=> big_f(X,X) )
     => ( big_f(X,Y)
      <=> big_f(Y,Y) ) ) ).

%--------------------------------------------------------------------------
