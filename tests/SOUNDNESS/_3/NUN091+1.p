%------------------------------------------------------------------------------
% File     : NUN091+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Number Theory
% Problem  : Translation of Axiom 1-3 from Robinson Arithmetics (Q)
% Version  : Especial.
% English  : Translation of Axiom 1-3 from Robinson Arithmetics (Q) to FOL with
%            identity. Axiom 1-3 only refer to the successor function (no
%            addition or multiplication). Axiom 5 of the formula translates 
%            Axiom 3 of Q, which substitutes the induction schema of PA.

% Refs     : [BBJ03] Boolos et al. (2003), Computability and Logic
%          : [Smi07] Smith (2007), An Introduction to Goedel's Theorems
%          : [Lam19] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam19]
% Names    : 

% Status   : Satisfiable
% Rating   : 1.00 v7.4.0
% Syntax   : Number of formulae    :    5 (   0 unt;   0 def)
%            Number of atoms       :   19 (   9 equ)
%            Maximal formula atoms :    4 (   3 avg)
%            Number of connectives :   24 (  10   ~;   8   |;   6   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   16 (  11   !;   5   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
fof(axiom_1,axiom,
    ? [Y24] :
    ! [X19] :
      ( ( ~ r1(X19)
        & X19 != Y24 )
      | ( r1(X19)
        & X19 = Y24 ) ) ).

fof(axiom_2,axiom,
    ! [X11] :
    ? [Y21] :
    ! [X12] :
      ( ( ~ r2(X11,X12)
        & X12 != Y21 )
      | ( r2(X11,X12)
        & X12 = Y21 ) ) ).

fof(axiom_3,axiom,
    ! [X3,X10] :
      ( ! [Y12] :
          ( ! [Y13] :
              ( ~ r2(X3,Y13)
              | Y13 != Y12 )
          | ~ r2(X10,Y12) )
      | X3 = X10 ) ).

fof(axiom_4,axiom,
    ! [X6] :
      ( ? [Y19] :
          ( r1(Y19)
          & X6 = Y19 )
      | ? [Y1,Y11] :
          ( r2(Y1,Y11)
          & X6 = Y11 ) ) ).

fof(axiom_5,axiom,
    ! [X7,Y10] :
      ( ! [Y20] :
          ( ~ r1(Y20)
          | Y20 != Y10 )
      | ~ r2(X7,Y10) ) ).

%------------------------------------------------------------------------------
