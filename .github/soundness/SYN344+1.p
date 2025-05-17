%--------------------------------------------------------------------------
% File     : SYN344+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.16 (3)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.16 (3) [Chu56]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.07 v5.3.0, 0.08 v5.2.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    7 (   0 equ)
%            Maximal formula atoms :    7 (   7 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   9 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (   2   !;   2   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_16_3,conjecture,
    ! [X] :
    ? [Y1,Y2] :
    ! [Z] :
      ( ( ( big_f(X,Z)
         => ( big_f(Y1,Z)
           => big_f(Y2,X) ) )
       => big_f(X,X) )
     => ( big_f(X,X)
        & ( big_f(Y1,Y2)
         => big_f(Z,Z) ) ) ) ).

%--------------------------------------------------------------------------
