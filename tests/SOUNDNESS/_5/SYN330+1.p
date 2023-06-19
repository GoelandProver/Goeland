%--------------------------------------------------------------------------
% File     : SYN330+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.14 (2)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.14 (2) [Chu56]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.33 v7.4.0, 0.00 v7.1.0, 0.33 v7.0.0, 0.00 v6.3.0, 0.17 v6.2.0, 0.22 v6.1.0, 0.30 v6.0.0, 0.29 v5.5.0, 0.14 v5.4.0, 0.40 v5.3.0, 0.38 v5.2.0, 0.25 v5.0.0, 0.11 v4.1.0, 0.33 v3.5.0, 0.25 v3.4.0, 0.33 v3.3.0, 0.17 v3.2.0, 0.00 v3.1.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.33 v2.3.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    8 (   8 avg)
%            Number of connectives :    7 (   0   ~;   0   |;   0   &)
%                                         (   4 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (   1   !;   2   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_14_2,conjecture,
    ? [X,Y] :
    ! [Z] :
      ( ( big_f(X,Z)
      <=> big_f(Z,Y) )
     => ( ( big_f(Z,Y)
        <=> big_f(Z,Z) )
       => ( ( big_f(X,Y)
          <=> big_f(Y,X) )
         => ( big_f(X,Y)
          <=> big_f(X,Z) ) ) ) ) ).

%--------------------------------------------------------------------------
