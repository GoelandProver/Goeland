%------------------------------------------------------------------------------
% File     : SWV487+3 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Software Verification
% Problem  : Matrix is upper triangular
% Version  : Especial.
% English  :

% Refs     : [KV09]  Kovacs (2009), Email to Geoff Sutcliffe
% Source   : [KV09] 
% Names    : Id3 [KV09]

% Status   : Theorem
% Rating   : 0.50 v8.1.0, 0.47 v7.5.0, 0.50 v7.4.0, 0.47 v7.3.0, 0.41 v7.1.0, 0.48 v7.0.0, 0.47 v6.4.0, 0.46 v6.3.0, 0.42 v6.2.0, 0.52 v6.1.0, 0.67 v6.0.0, 0.70 v5.5.0, 0.63 v5.4.0, 0.71 v5.3.0, 0.74 v5.2.0, 0.60 v5.1.0, 0.62 v5.0.0, 0.58 v4.1.0, 0.57 v4.0.1, 0.52 v4.0.0
% Syntax   : Number of formulae    :   13 (   4 unt;   0 def)
%            Number of atoms       :   43 (  12 equ)
%            Maximal formula atoms :   17 (   3 avg)
%            Number of connectives :   32 (   2   ~;   2   |;  15   &)
%                                         (   3 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    7 (   7 usr;   5 con; 0-2 aty)
%            Number of variables   :   29 (  28   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(int_leq,axiom,
    ! [I,J] :
      ( int_leq(I,J)
    <=> ( int_less(I,J)
        | I = J ) ) ).

fof(int_less_transitive,axiom,
    ! [I,J,K] :
      ( ( int_less(I,J)
        & int_less(J,K) )
     => int_less(I,K) ) ).

fof(int_less_irreflexive,axiom,
    ! [I,J] :
      ( int_less(I,J)
     => I != J ) ).

fof(int_less_total,axiom,
    ! [I,J] :
      ( int_less(I,J)
      | int_leq(J,I) ) ).

fof(int_zero_one,axiom,
    int_less(int_zero,int_one) ).

fof(plus_commutative,axiom,
    ! [I,J] : plus(I,J) = plus(J,I) ).

fof(plus_zero,axiom,
    ! [I] : plus(I,int_zero) = I ).

fof(plus_and_order1,axiom,
    ! [I1,J1,I2,J2] :
      ( ( int_less(I1,J1)
        & int_leq(I2,J2) )
     => int_leq(plus(I1,I2),plus(J1,J2)) ) ).

fof(plus_and_inverse,axiom,
    ! [I,J] :
      ( int_less(I,J)
    <=> ? [K] :
          ( plus(I,K) = J
          & int_less(int_zero,K) ) ) ).

fof(one_successor_of_zero,axiom,
    ! [I] :
      ( int_less(int_zero,I)
    <=> int_leq(int_one,I) ) ).

fof(real_constants,axiom,
    real_zero != real_one ).

fof(qii,hypothesis,
    ! [I,J] :
      ( ( int_leq(int_one,I)
        & int_leq(I,n)
        & int_leq(int_one,J)
        & int_leq(J,n) )
     => ( ! [C] :
            ( ( int_less(int_zero,C)
              & I = plus(J,C) )
           => ! [K] :
                ( ( int_leq(int_one,K)
                  & int_leq(K,J) )
               => a(plus(K,C),K) = real_zero ) )
        & ! [K] :
            ( ( int_leq(int_one,K)
              & int_leq(K,J) )
           => a(K,K) = real_one )
        & ! [C] :
            ( ( int_less(int_zero,C)
              & J = plus(I,C) )
           => ! [K] :
                ( ( int_leq(int_one,K)
                  & int_leq(K,I) )
               => a(K,plus(K,C)) = real_zero ) ) ) ) ).

fof(ut,conjecture,
    ! [I,J] :
      ( ( int_leq(int_one,J)
        & int_less(J,I)
        & int_leq(I,n) )
     => a(I,J) = real_zero ) ).

%------------------------------------------------------------------------------
