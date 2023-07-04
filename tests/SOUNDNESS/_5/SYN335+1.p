%--------------------------------------------------------------------------
% File     : SYN335+1 : TPTP v8.1.2. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.14 (7)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.14 (7) [Chu56]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.33 v7.4.0, 0.00 v7.1.0, 0.33 v6.4.0, 0.00 v6.3.0, 0.33 v6.2.0, 0.67 v6.1.0, 0.50 v6.0.0, 0.43 v5.5.0, 0.29 v5.4.0, 0.60 v5.3.0, 0.62 v5.2.0, 0.75 v5.0.0, 0.44 v4.1.0, 0.67 v3.7.0, 0.33 v3.5.0, 0.50 v3.3.0, 0.33 v3.2.0, 0.00 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.3.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :   12 (  12 avg)
%            Number of connectives :   11 (   0   ~;   0   |;   0   &)
%                                         (   4 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (  10 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (   1   !;   2   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_14_7,conjecture,
    ? [X,Y] :
    ! [Z] :
      ( big_f(X,Z)
     => ( ( ( big_f(Z,Z)
           => big_g(Z,Z) )
        <=> big_f(X,Y) )
       => ( ( ( big_g(Z,Z)
             => big_f(Z,Z) )
          <=> big_g(X,Y) )
         => ( ( ( big_g(X,Y)
               => big_f(Y,X) )
            <=> big_g(Y,Z) )
           => ( big_f(Z,Y)
            <=> big_f(Y,X) ) ) ) ) ) ).

%--------------------------------------------------------------------------
