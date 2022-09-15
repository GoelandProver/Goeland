%------------------------------------------------------------------------------
% File     : MSC010+1 : TPTP v8.1.0. Released v3.1.0.
% Domain   : Miscellaneous
% Problem  : Simple, but hard, obligation from proof verification
% Version  : Especial.
% English  : Verification of the negation of a conjecture, which is simply to
%            prove the double negated version of a formula from the formula.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.22 v7.4.0, 0.23 v7.3.0, 0.21 v7.2.0, 0.17 v7.1.0, 0.22 v7.0.0, 0.23 v6.4.0, 0.27 v6.3.0, 0.25 v6.2.0, 0.32 v6.1.0, 0.33 v6.0.0, 0.22 v5.5.0, 0.33 v5.4.0, 0.39 v5.3.0, 0.52 v5.2.0, 0.35 v5.1.0, 0.38 v5.0.0, 0.42 v4.1.0, 0.48 v4.0.0, 0.50 v3.7.0, 0.45 v3.5.0, 0.47 v3.4.0, 0.58 v3.3.0, 0.57 v3.2.0, 0.82 v3.1.0
% Syntax   : Number of formulae    :    2 (   0 unt;   0 def)
%            Number of atoms       :  136 (  30 equ)
%            Maximal formula atoms :   68 (  68 avg)
%            Number of connectives :  140 (   6   ~;   0   |; 102   &)
%                                         (   0 <=>;  32  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   26 (  25 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :   18 (  18 usr;  16 con; 0-3 aty)
%            Number of variables   :   44 (  44   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(n1,axiom,
    ( ( pv63 != pv64
      & leq(n0,pv5)
      & leq(n0,pv63)
      & leq(n0,pv64)
      & leq(pv5,n998)
      & leq(pv63,n5)
      & leq(pv64,n5)
      & ! [X1,X2] :
          ( ( leq(n0,X1)
            & leq(n0,X2)
            & leq(X1,n2)
            & leq(X2,n5) )
         => a_select3(h_ds1_filter_init,X1,X2) = init )
      & ! [X3,X4] :
          ( ( leq(n0,X3)
            & leq(n0,X4)
            & leq(X3,n5)
            & leq(X4,n5) )
         => a_select3(phi_ds1_filter_init,X3,X4) = init )
      & ! [X5,X6] :
          ( ( leq(n0,X5)
            & leq(n0,X6)
            & leq(X5,n5)
            & leq(X6,n0) )
         => a_select3(dv_ds1_filter_init,X5,X6) = init )
      & ! [X7,X8] :
          ( ( leq(n0,X7)
            & leq(n0,X8)
            & leq(X7,n5)
            & leq(X8,n5) )
         => a_select3(q_ds1_filter_init,X7,X8) = init )
      & ! [X9,X10] :
          ( ( leq(n0,X9)
            & leq(n0,X10)
            & leq(X9,n2)
            & leq(X10,n2) )
         => a_select3(r_ds1_filter_init,X9,X10) = init )
      & ! [X11,X12] :
          ( ( leq(n0,X11)
            & leq(n0,X12)
            & leq(X11,n5)
            & leq(X12,n0) )
         => a_select3(xhatmin_ds1_filter_init,X11,X12) = init )
      & ! [X13,X14] :
          ( ( leq(n0,X13)
            & leq(n0,X14)
            & leq(X13,n5)
            & leq(X14,n5) )
         => a_select3(pminus_ds1_filter_init,X13,X14) = init )
      & ! [X15,X16] :
          ( ( leq(n0,X15)
            & leq(n0,X16)
            & leq(X15,n5)
            & leq(X16,n5) )
         => ( ( X15 = pv63
              & gt(pv64,X16) )
           => a_select3(id_ds1_filter_init,X15,X16) = init ) )
      & ! [X17,X18] :
          ( ( leq(n0,X17)
            & leq(n0,X18)
            & leq(X17,n5)
            & leq(X18,n5) )
         => ( gt(pv63,X17)
           => a_select3(id_ds1_filter_init,X17,X18) = init ) )
      & ! [X19] :
          ( ( leq(n0,X19)
            & leq(X19,pred(pv63)) )
         => ! [X20] :
              ( ( leq(n0,X20)
                & leq(X20,n5) )
             => a_select3(id_ds1_filter_init,X19,X20) = init ) ) )
   => ! [X21,X22] :
        ( ( leq(n0,X21)
          & leq(n0,X22)
          & leq(X21,n5)
          & leq(X22,n5) )
       => ( ( pv64 != X22
            & X21 = pv63
            & leq(X22,pv64) )
         => a_select3(id_ds1_filter_init,X21,X22) = init ) ) ) ).

fof(n91,conjecture,
    ~ ~ ( ( pv63 != pv64
          & leq(n0,pv5)
          & leq(n0,pv63)
          & leq(n0,pv64)
          & leq(pv5,n998)
          & leq(pv63,n5)
          & leq(pv64,n5)
          & ! [X1,X2] :
              ( ( leq(n0,X1)
                & leq(n0,X2)
                & leq(X1,n2)
                & leq(X2,n5) )
             => a_select3(h_ds1_filter_init,X1,X2) = init )
          & ! [X3,X4] :
              ( ( leq(n0,X3)
                & leq(n0,X4)
                & leq(X3,n5)
                & leq(X4,n5) )
             => a_select3(phi_ds1_filter_init,X3,X4) = init )
          & ! [X5,X6] :
              ( ( leq(n0,X5)
                & leq(n0,X6)
                & leq(X5,n5)
                & leq(X6,n0) )
             => a_select3(dv_ds1_filter_init,X5,X6) = init )
          & ! [X7,X8] :
              ( ( leq(n0,X7)
                & leq(n0,X8)
                & leq(X7,n5)
                & leq(X8,n5) )
             => a_select3(q_ds1_filter_init,X7,X8) = init )
          & ! [X9,X10] :
              ( ( leq(n0,X9)
                & leq(n0,X10)
                & leq(X9,n2)
                & leq(X10,n2) )
             => a_select3(r_ds1_filter_init,X9,X10) = init )
          & ! [X11,X12] :
              ( ( leq(n0,X11)
                & leq(n0,X12)
                & leq(X11,n5)
                & leq(X12,n0) )
             => a_select3(xhatmin_ds1_filter_init,X11,X12) = init )
          & ! [X13,X14] :
              ( ( leq(n0,X13)
                & leq(n0,X14)
                & leq(X13,n5)
                & leq(X14,n5) )
             => a_select3(pminus_ds1_filter_init,X13,X14) = init )
          & ! [X15,X16] :
              ( ( leq(n0,X15)
                & leq(n0,X16)
                & leq(X15,n5)
                & leq(X16,n5) )
             => ( ( X15 = pv63
                  & gt(pv64,X16) )
               => a_select3(id_ds1_filter_init,X15,X16) = init ) )
          & ! [X17,X18] :
              ( ( leq(n0,X17)
                & leq(n0,X18)
                & leq(X17,n5)
                & leq(X18,n5) )
             => ( gt(pv63,X17)
               => a_select3(id_ds1_filter_init,X17,X18) = init ) )
          & ! [X19] :
              ( ( leq(n0,X19)
                & leq(X19,pred(pv63)) )
             => ! [X20] :
                  ( ( leq(n0,X20)
                    & leq(X20,n5) )
                 => a_select3(id_ds1_filter_init,X19,X20) = init ) ) )
       => ! [X21,X22] :
            ( ( leq(n0,X21)
              & leq(n0,X22)
              & leq(X21,n5)
              & leq(X22,n5) )
           => ( ( pv64 != X22
                & X21 = pv63
                & leq(X22,pv64) )
             => a_select3(id_ds1_filter_init,X21,X22) = init ) ) ) ).

%------------------------------------------------------------------------------
