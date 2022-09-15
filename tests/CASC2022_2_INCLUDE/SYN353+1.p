%--------------------------------------------------------------------------
% File     : SYN353+1 : TPTP v8.1.0. Released v2.0.0.
% Domain   : Syntactic
% Problem  : Church problem 46.18 (5)
% Version  : Especial.
% English  :

% Refs     : [Chu56] Church (1956), Introduction to Mathematical Logic I
% Source   : [Chu56]
% Names    : 46.18 (5) [Chu56]

% Status   : Theorem
% Rating   : 0.40 v8.1.0, 0.50 v7.5.0, 0.43 v7.4.0, 0.31 v7.3.0, 0.29 v7.2.0, 0.33 v7.1.0, 0.50 v7.0.0, 0.36 v6.3.0, 0.38 v6.2.0, 0.45 v6.1.0, 0.48 v6.0.0, 0.75 v5.5.0, 0.54 v5.4.0, 0.52 v5.3.0, 0.57 v5.2.0, 0.43 v5.0.0, 0.45 v4.1.0, 0.44 v4.0.1, 0.53 v4.0.0, 0.55 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.42 v3.3.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   20 (   0 equ)
%            Maximal formula atoms :   20 (  20 avg)
%            Number of connectives :   20 (   1   ~;   1   |;   4   &)
%                                         (   4 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (  14 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 3-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (   2   !;   3   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(church_46_18_5,conjecture,
    ! [X] :
    ? [Y1,Y2,Y3] :
    ! [Z] :
      ( ( big_f(Y1,Y2,Y3)
       => ( big_f(X,X,Z)
         => ( big_f(Y2,Y3,Y1)
            | big_f(Y3,Y1,Y2) ) ) )
     => ( ( ( big_f(Y3,Y1,Y2)
           => ( big_f(Y1,Y2,Y3)
              & big_f(Y2,Y3,Y1) ) )
        <=> big_f(Y2,Y1,Z) )
       => ( ( ( big_f(Y2,Y3,Y1)
             => ( big_f(Y1,Y2,Y3)
                & big_f(Y3,Y1,Y2) ) )
          <=> big_f(Y1,Z,Y2) )
         => ( ( ( ( big_f(Y3,Y1,Y2)
                 => ~ big_f(Y2,Y3,Y1) )
               => big_f(Y1,Y2,Y3) )
            <=> big_f(Z,Y2,Y1) )
           => ( ( big_f(Y1,Y2,Y3)
                & big_f(Y2,Y3,Y1)
                & big_f(Y3,Y1,Y2) )
            <=> big_f(Z,Z,Z) ) ) ) ) ) ).

%--------------------------------------------------------------------------
