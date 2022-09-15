%------------------------------------------------------------------------------
% File     : SWV037+1 : TPTP v8.1.0. Bugfixed v3.3.0.
% Domain   : Software Verification
% Problem  : Unsimplified proof obligation gauss_init_0061
% Version  : [DFS04] axioms : Especial.
% English  : Proof obligation emerging from the init-safety verification for
%            the gauss program. init-safety ensures that each variable or
%            individual array element has been assigned a defined value before
%            it is used.

% Refs     : [Fis04] Fischer (2004), Email to G. Sutcliffe
%          : [DFS04] Denney et al. (2004), Using Automated Theorem Provers
% Source   : [Fis04]
% Names    : gauss_init_0061 [Fis04]

% Status   : Theorem
% Rating   : 0.78 v8.1.0, 0.75 v7.5.0, 0.81 v7.4.0, 0.70 v7.3.0, 0.69 v7.2.0, 0.66 v7.1.0, 0.74 v7.0.0, 0.73 v6.3.0, 0.79 v6.2.0, 0.88 v6.1.0, 0.93 v6.0.0, 0.91 v5.5.0, 0.93 v5.3.0, 0.96 v5.2.0, 0.90 v5.0.0, 0.88 v4.1.0, 0.83 v4.0.1, 0.91 v4.0.0, 0.92 v3.7.0, 0.85 v3.5.0, 0.84 v3.3.0
% Syntax   : Number of formulae    :  100 (  64 unt;   0 def)
%            Number of atoms       :  465 ( 163 equ)
%            Maximal formula atoms :  201 (   4 avg)
%            Number of connectives :  376 (  11   ~;  17   |; 247   &)
%                                         (   5 <=>;  96  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   42 (   4 avg)
%            Maximal term depth    :    9 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   1 prp; 0-2 aty)
%            Number of functors    :   55 (  55 usr;  34 con; 0-4 aty)
%            Number of variables   :  194 ( 194   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixes : v3.3.0 - Bugfix in SWV003+0
%------------------------------------------------------------------------------
%----Include NASA software certification axioms
%------------------------------------------------------------------------------
% File     : SWV003+0 : TPTP v8.1.0. Bugfixed v3.3.0.
% Domain   : Software Verification
% Axioms   : NASA software certification axioms
% Version  : [DFS04] axioms : Especial.
% English  :

% Refs     : [Fis04] Fischer (2004), Email to G. Sutcliffe
%          : [DFS04] Denney et al. (2004), Using Automated Theorem Provers
% Source   : [Fis04]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   52 (  23 unt;   0 def)
%            Number of atoms       :  190 (  54 equ)
%            Maximal formula atoms :   20 (   3 avg)
%            Number of connectives :  143 (   5   ~;   2   |;  86   &)
%                                         (   5 <=>;  45  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   5 avg)
%            Maximal term depth    :    9 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   1 prp; 0-2 aty)
%            Number of functors    :   28 (  28 usr;  10 con; 0-4 aty)
%            Number of variables   :  162 ( 162   !;   0   ?)
% SPC      : 

% Comments :
% Bugfixes : v3.3.0 - Fixed symmetry axioms
%------------------------------------------------------------------------------
%----Axioms for gt
fof(totality,axiom,
    ! [X,Y] :
      ( gt(X,Y)
      | gt(Y,X)
      | X = Y ) ).

fof(transitivity_gt,axiom,
    ! [X,Y,Z] :
      ( ( gt(X,Y)
        & gt(Y,Z) )
     => gt(X,Z) ) ).

fof(irreflexivity_gt,axiom,
    ! [X] : ~ gt(X,X) ).

%----Axioms for leq
fof(reflexivity_leq,axiom,
    ! [X] : leq(X,X) ).

fof(transitivity_leq,axiom,
    ! [X,Y,Z] :
      ( ( leq(X,Y)
        & leq(Y,Z) )
     => leq(X,Z) ) ).

%----Axioms for lt/geq
fof(lt_gt,axiom,
    ! [X,Y] :
      ( lt(X,Y)
    <=> gt(Y,X) ) ).

fof(leq_geq,axiom,
    ! [X,Y] :
      ( geq(X,Y)
    <=> leq(Y,X) ) ).

%----Axioms for combinations of gt and leq
fof(leq_gt1,axiom,
    ! [X,Y] :
      ( gt(Y,X)
     => leq(X,Y) ) ).

fof(leq_gt2,axiom,
    ! [X,Y] :
      ( ( leq(X,Y)
        & X != Y )
     => gt(Y,X) ) ).

%----leq/gt and pred/succ
fof(leq_gt_pred,axiom,
    ! [X,Y] :
      ( leq(X,pred(Y))
    <=> gt(Y,X) ) ).

fof(gt_succ,axiom,
    ! [X] : gt(succ(X),X) ).

fof(leq_succ,axiom,
    ! [X,Y] :
      ( leq(X,Y)
     => leq(X,succ(Y)) ) ).

fof(leq_succ_gt_equiv,axiom,
    ! [X,Y] :
      ( leq(X,Y)
    <=> gt(succ(Y),X) ) ).

%----uniform_int_rand
%----Restriction:  LB of uniform_int_rnd is 0
fof(uniform_int_rand_ranges_hi,axiom,
    ! [X,C] :
      ( leq(n0,X)
     => leq(uniform_int_rnd(C,X),X) ) ).

fof(uniform_int_rand_ranges_lo,axiom,
    ! [X,C] :
      ( leq(n0,X)
     => leq(n0,uniform_int_rnd(C,X)) ) ).

%----Axioms for constant arrays
fof(const_array1_select,axiom,
    ! [I,L,U,Val] :
      ( ( leq(L,I)
        & leq(I,U) )
     => a_select2(tptp_const_array1(dim(L,U),Val),I) = Val ) ).

fof(const_array2_select,axiom,
    ! [I,L1,U1,J,L2,U2,Val] :
      ( ( leq(L1,I)
        & leq(I,U1)
        & leq(L2,J)
        & leq(J,U2) )
     => a_select3(tptp_const_array2(dim(L1,U1),dim(L2,U2),Val),I,J) = Val ) ).

%----Symmetry axioms for matrix operations
fof(matrix_symm_trans,axiom,
    ! [A,N] :
      ( ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(A,I,J) = a_select3(A,J,I) )
     => ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(trans(A),I,J) = a_select3(trans(A),J,I) ) ) ).

fof(matrix_symm_inv,axiom,
    ! [A,N] :
      ( ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(A,I,J) = a_select3(A,J,I) )
     => ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(inv(A),I,J) = a_select3(inv(A),J,I) ) ) ).

fof(matrix_symm_update_diagonal,axiom,
    ! [A,N] :
      ( ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(A,I,J) = a_select3(A,J,I) )
     => ! [I,J,K,VAL] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N)
            & leq(n0,K)
            & leq(K,N) )
         => a_select3(tptp_update3(A,K,K,VAL),I,J) = a_select3(tptp_update3(A,K,K,VAL),J,I) ) ) ).

fof(matrix_symm_add,axiom,
    ! [A,B,N] :
      ( ( ! [I,J] :
            ( ( leq(n0,I)
              & leq(I,N)
              & leq(n0,J)
              & leq(J,N) )
           => a_select3(A,I,J) = a_select3(A,J,I) )
        & ! [I,J] :
            ( ( leq(n0,I)
              & leq(I,N)
              & leq(n0,J)
              & leq(J,N) )
           => a_select3(B,I,J) = a_select3(B,J,I) ) )
     => ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(tptp_madd(A,B),I,J) = a_select3(tptp_madd(A,B),J,I) ) ) ).

fof(matrix_symm_sub,axiom,
    ! [A,B,N] :
      ( ( ! [I,J] :
            ( ( leq(n0,I)
              & leq(I,N)
              & leq(n0,J)
              & leq(J,N) )
           => a_select3(A,I,J) = a_select3(A,J,I) )
        & ! [I,J] :
            ( ( leq(n0,I)
              & leq(I,N)
              & leq(n0,J)
              & leq(J,N) )
           => a_select3(B,I,J) = a_select3(B,J,I) ) )
     => ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(tptp_msub(A,B),I,J) = a_select3(tptp_msub(A,B),J,I) ) ) ).

fof(matrix_symm_aba1,axiom,
    ! [A,B,N] :
      ( ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(B,I,J) = a_select3(B,J,I) )
     => ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(tptp_mmul(A,tptp_mmul(B,trans(A))),I,J) = a_select3(tptp_mmul(A,tptp_mmul(B,trans(A))),J,I) ) ) ).

%----This is the generalized version where the matrix dimensions
%----can be different for B and the ABA'
fof(matrix_symm_aba2,axiom,
    ! [A,B,N,M] :
      ( ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,M)
            & leq(n0,J)
            & leq(J,M) )
         => a_select3(B,I,J) = a_select3(B,J,I) )
     => ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(tptp_mmul(A,tptp_mmul(B,trans(A))),I,J) = a_select3(tptp_mmul(A,tptp_mmul(B,trans(A))),J,I) ) ) ).

fof(matrix_symm_joseph_update,axiom,
    ! [A,B,C,D,E,F,N,M] :
      ( ( ! [I,J] :
            ( ( leq(n0,I)
              & leq(I,M)
              & leq(n0,J)
              & leq(J,M) )
           => a_select3(D,I,J) = a_select3(D,J,I) )
        & ! [I,J] :
            ( ( leq(n0,I)
              & leq(I,N)
              & leq(n0,J)
              & leq(J,N) )
           => a_select3(A,I,J) = a_select3(A,J,I) )
        & ! [I,J] :
            ( ( leq(n0,I)
              & leq(I,N)
              & leq(n0,J)
              & leq(J,N) )
           => a_select3(F,I,J) = a_select3(F,J,I) ) )
     => ! [I,J] :
          ( ( leq(n0,I)
            & leq(I,N)
            & leq(n0,J)
            & leq(J,N) )
         => a_select3(tptp_madd(A,tptp_mmul(B,tptp_mmul(tptp_madd(tptp_mmul(C,tptp_mmul(D,trans(C))),tptp_mmul(E,tptp_mmul(F,trans(E)))),trans(B)))),I,J) = a_select3(tptp_madd(A,tptp_mmul(B,tptp_mmul(tptp_madd(tptp_mmul(C,tptp_mmul(D,trans(C))),tptp_mmul(E,tptp_mmul(F,trans(E)))),trans(B)))),J,I) ) ) ).

%----handling of sums
fof(sum_plus_base,axiom,
    ! [Body] : sum(n0,tptp_minus_1,Body) = n0 ).

fof(sum_plus_base_float,axiom,
    ! [Body] : tptp_float_0_0 = sum(n0,tptp_minus_1,Body) ).

%----AXIOMS NECESSARY FOR UNSIMPLIFIED TASKS

%----successor/predecessor
fof(succ_tptp_minus_1,axiom,
    succ(tptp_minus_1) = n0 ).

fof(succ_plus_1_r,axiom,
    ! [X] : plus(X,n1) = succ(X) ).

fof(succ_plus_1_l,axiom,
    ! [X] : plus(n1,X) = succ(X) ).

fof(succ_plus_2_r,axiom,
    ! [X] : plus(X,n2) = succ(succ(X)) ).

fof(succ_plus_2_l,axiom,
    ! [X] : plus(n2,X) = succ(succ(X)) ).

fof(succ_plus_3_r,axiom,
    ! [X] : plus(X,n3) = succ(succ(succ(X))) ).

fof(succ_plus_3_l,axiom,
    ! [X] : plus(n3,X) = succ(succ(succ(X))) ).

fof(succ_plus_4_r,axiom,
    ! [X] : plus(X,n4) = succ(succ(succ(succ(X)))) ).

fof(succ_plus_4_l,axiom,
    ! [X] : plus(n4,X) = succ(succ(succ(succ(X)))) ).

fof(succ_plus_5_r,axiom,
    ! [X] : plus(X,n5) = succ(succ(succ(succ(succ(X))))) ).

fof(succ_plus_5_l,axiom,
    ! [X] : plus(n5,X) = succ(succ(succ(succ(succ(X))))) ).

fof(pred_minus_1,axiom,
    ! [X] : minus(X,n1) = pred(X) ).

fof(pred_succ,axiom,
    ! [X] : pred(succ(X)) = X ).

fof(succ_pred,axiom,
    ! [X] : succ(pred(X)) = X ).

%----leq/gt and successor
fof(leq_succ_succ,axiom,
    ! [X,Y] :
      ( leq(succ(X),succ(Y))
    <=> leq(X,Y) ) ).

fof(leq_succ_gt,axiom,
    ! [X,Y] :
      ( leq(succ(X),Y)
     => gt(Y,X) ) ).

%----leq/gt and plus/minus
fof(leq_minus,axiom,
    ! [X,Y] :
      ( leq(minus(X,Y),X)
     => leq(n0,Y) ) ).

%----select_update
fof(sel3_update_1,axiom,
    ! [X,U,V,VAL] : a_select3(tptp_update3(X,U,V,VAL),U,V) = VAL ).

fof(sel3_update_2,axiom,
    ! [I,J,U,V,X,VAL,VAL2] :
      ( ( I != U
        & J = V
        & a_select3(X,U,V) = VAL )
     => a_select3(tptp_update3(X,I,J,VAL2),U,V) = VAL ) ).

fof(sel3_update_3,axiom,
    ! [I,J,U,V,X,VAL] :
      ( ( ! [I0,J0] :
            ( ( leq(n0,I0)
              & leq(n0,J0)
              & leq(I0,U)
              & leq(J0,V) )
           => a_select3(X,I0,J0) = VAL )
        & leq(n0,I)
        & leq(I,U)
        & leq(n0,J)
        & leq(J,V) )
     => a_select3(tptp_update3(X,U,V,VAL),I,J) = VAL ) ).

fof(sel2_update_1,axiom,
    ! [X,U,VAL] : a_select2(tptp_update2(X,U,VAL),U) = VAL ).

fof(sel2_update_2,axiom,
    ! [I,U,X,VAL,VAL2] :
      ( ( I != U
        & a_select2(X,U) = VAL )
     => a_select2(tptp_update2(X,I,VAL2),U) = VAL ) ).

fof(sel2_update_3,axiom,
    ! [I,U,X,VAL] :
      ( ( ! [I0] :
            ( ( leq(n0,I0)
              & leq(I0,U) )
           => a_select2(X,I0) = VAL )
        & leq(n0,I)
        & leq(I,U) )
     => a_select2(tptp_update2(X,U,VAL),I) = VAL ) ).

%----True
fof(ttrue,axiom,
    true ).

%----def and use inequality
fof(defuse,axiom,
    def != use ).

%------------------------------------------------------------------------------
%----Proof obligation generated by the AutoBayes/AutoFilter system
fof(gauss_init_0061,conjecture,
    ( ( s_best7_init = init
      & s_sworst7_init = init
      & s_worst7_init = init
      & leq(n0,s_best7)
      & leq(n0,s_sworst7)
      & leq(n0,s_worst7)
      & leq(s_best7,n3)
      & leq(s_sworst7,n3)
      & leq(s_worst7,n3)
      & ! [A] :
          ( ( leq(n0,A)
            & leq(A,n2) )
         => ! [B] :
              ( ( leq(n0,B)
                & leq(B,n3) )
             => a_select3(simplex7_init,B,A) = init ) )
      & ! [C] :
          ( ( leq(n0,C)
            & leq(C,n3) )
         => a_select2(s_values7_init,C) = init )
      & ! [D] :
          ( ( leq(n0,D)
            & leq(D,n2) )
         => a_select2(s_center7_init,D) = init )
      & ! [E] :
          ( ( leq(n0,E)
            & leq(E,minus(n3,n1)) )
         => a_select2(s_try7_init,E) = init )
      & ( gt(loopcounter,n1)
       => ( pvar1400_init = init
          & pvar1401_init = init
          & pvar1402_init = init ) ) )
   => ( init = init
      & s_worst7_init = init
      & a_select2(s_values7_init,s_worst7) = init
      & ( ~ gt(plus(log(n2),divide(minus(minus(minus(plus(log(n330),log(n410)),log(pv1410)),n1),log(n4)),n2)),a_select2(s_values7,s_worst7))
       => ( init = init
          & s_best7_init = init
          & a_select2(s_values7_init,s_best7) = init
          & ( ~ geq(plus(log(n2),divide(minus(minus(minus(plus(log(n330),log(n410)),log(pv1410)),n1),log(n4)),n2)),a_select2(s_values7,s_best7))
           => ( init = init
              & s_sworst7_init = init
              & a_select2(s_values7_init,s_sworst7) = init
              & ( ~ leq(plus(log(n2),divide(minus(minus(minus(plus(log(n330),log(n410)),log(pv1410)),n1),log(n4)),n2)),a_select2(s_values7,s_sworst7))
               => ( init = init
                  & ( ~ gt(loopcounter,n1)
                   => ( ! [F] :
                          ( ( leq(n0,F)
                            & leq(F,n2) )
                         => ! [G] :
                              ( ( leq(n0,G)
                                & leq(G,n3) )
                             => a_select3(simplex7_init,G,F) = init ) )
                      & ! [H] :
                          ( ( leq(n0,H)
                            & leq(H,n3) )
                         => a_select2(s_values7_init,H) = init )
                      & ( ~ geq(pv1403,tptp_float_0_001)
                       => ( s_best7_init = init
                          & s_sworst7_init = init
                          & s_worst7_init = init
                          & leq(n0,s_best7)
                          & leq(n0,s_sworst7)
                          & leq(n0,s_worst7)
                          & leq(s_best7,n3)
                          & leq(s_sworst7,n3)
                          & leq(s_worst7,n3) ) )
                      & ( gt(loopcounter,n0)
                       => ( s_best7_init = init
                          & s_sworst7_init = init
                          & s_worst7_init = init
                          & leq(n0,s_best7)
                          & leq(n0,s_sworst7)
                          & leq(n0,s_worst7)
                          & leq(s_best7,n3)
                          & leq(s_sworst7,n3)
                          & leq(s_worst7,n3) ) )
                      & ( gt(loopcounter,n0)
                       => ( a_select2(s_values7_init,s_best7) = init
                          & a_select2(s_values7_init,s_sworst7) = init
                          & a_select2(s_values7_init,s_worst7) = init ) ) ) )
                  & ( gt(loopcounter,n1)
                   => ( pvar1400_init = init
                      & pvar1401_init = init
                      & pvar1402_init = init
                      & s_best7_init = init
                      & s_sworst7_init = init
                      & s_worst7_init = init
                      & a_select2(s_values7_init,s_best7) = init
                      & a_select2(s_values7_init,s_sworst7) = init
                      & a_select2(s_values7_init,s_worst7) = init
                      & ! [I] :
                          ( ( leq(n0,I)
                            & leq(I,n2) )
                         => ! [J] :
                              ( ( leq(n0,J)
                                & leq(J,n3) )
                             => a_select3(simplex7_init,J,I) = init ) )
                      & ! [K] :
                          ( ( leq(n0,K)
                            & leq(K,n3) )
                         => a_select2(s_values7_init,K) = init )
                      & ( ~ geq(plus(abs(minus(a_select2(s_values7,s_best7),pv1400)),plus(abs(minus(a_select2(s_values7,s_sworst7),pv1401)),abs(minus(a_select2(s_values7,s_worst7),pv1402)))),tptp_float_0_001)
                       => ( s_best7_init = init
                          & s_sworst7_init = init
                          & s_worst7_init = init
                          & leq(n0,s_best7)
                          & leq(n0,s_sworst7)
                          & leq(n0,s_worst7)
                          & leq(s_best7,n3)
                          & leq(s_sworst7,n3)
                          & leq(s_worst7,n3) ) )
                      & ( gt(loopcounter,n0)
                       => ( s_best7_init = init
                          & s_sworst7_init = init
                          & s_worst7_init = init
                          & leq(n0,s_best7)
                          & leq(n0,s_sworst7)
                          & leq(n0,s_worst7)
                          & leq(s_best7,n3)
                          & leq(s_sworst7,n3)
                          & leq(s_worst7,n3) ) )
                      & ( gt(loopcounter,n0)
                       => ( a_select2(s_values7_init,s_best7) = init
                          & a_select2(s_values7_init,s_sworst7) = init
                          & a_select2(s_values7_init,s_worst7) = init ) ) ) ) ) )
              & ( leq(plus(log(n2),divide(minus(minus(minus(plus(log(n330),log(n410)),log(pv1410)),n1),log(n4)),n2)),a_select2(s_values7,s_sworst7))
               => ( s_best7_init = init
                  & s_sworst7_init = init
                  & s_worst7_init = init
                  & a_select2(s_values7_init,s_worst7) = init
                  & leq(n0,s_best7)
                  & leq(n0,s_sworst7)
                  & leq(n0,s_worst7)
                  & leq(s_best7,n3)
                  & leq(s_sworst7,n3)
                  & leq(s_worst7,n3)
                  & ! [L] :
                      ( ( leq(n0,L)
                        & leq(L,n2) )
                     => ! [M] :
                          ( ( leq(n0,M)
                            & leq(M,n3) )
                         => a_select3(simplex7_init,M,L) = init ) )
                  & ! [N] :
                      ( ( leq(n0,N)
                        & leq(N,n3) )
                     => a_select2(s_values7_init,N) = init )
                  & ! [O] :
                      ( ( leq(n0,O)
                        & leq(O,n2) )
                     => a_select2(s_center7_init,O) = init )
                  & ! [P] :
                      ( ( leq(n0,P)
                        & leq(P,minus(n3,n1)) )
                     => a_select2(s_try7_init,P) = init )
                  & ( gt(loopcounter,n1)
                   => ( pvar1400_init = init
                      & pvar1401_init = init
                      & pvar1402_init = init ) ) ) ) ) )
          & ( geq(plus(log(n2),divide(minus(minus(minus(plus(log(n330),log(n410)),log(pv1410)),n1),log(n4)),n2)),a_select2(s_values7,s_best7))
           => ( s_best7_init = init
              & s_sworst7_init = init
              & s_worst7_init = init
              & leq(n0,s_best7)
              & leq(n0,s_sworst7)
              & leq(n0,s_worst7)
              & leq(s_best7,n3)
              & leq(s_sworst7,n3)
              & leq(s_worst7,n3)
              & ! [Q] :
                  ( ( leq(n0,Q)
                    & leq(Q,n2) )
                 => ! [R] :
                      ( ( leq(n0,R)
                        & leq(R,n3) )
                     => a_select3(simplex7_init,R,Q) = init ) )
              & ! [S] :
                  ( ( leq(n0,S)
                    & leq(S,n3) )
                 => a_select2(s_values7_init,S) = init )
              & ! [T] :
                  ( ( leq(n0,T)
                    & leq(T,n2) )
                 => a_select2(s_center7_init,T) = init )
              & ! [U] :
                  ( ( leq(n0,U)
                    & leq(U,minus(n3,n1)) )
                 => a_select2(s_try7_init,U) = init )
              & ( gt(loopcounter,n1)
               => ( pvar1400_init = init
                  & pvar1401_init = init
                  & pvar1402_init = init ) ) ) ) ) )
      & ( gt(plus(log(n2),divide(minus(minus(minus(plus(log(n330),log(n410)),log(pv1410)),n1),log(n4)),n2)),a_select2(s_values7,s_worst7))
       => ( init = init
          & s_best7_init = init
          & s_sworst7_init = init
          & s_worst7_init = init
          & leq(n0,s_best7)
          & leq(n0,s_sworst7)
          & leq(n0,s_worst7)
          & leq(s_best7,n3)
          & leq(s_sworst7,n3)
          & leq(s_worst7,n3)
          & ! [V] :
              ( ( leq(n0,V)
                & leq(V,n2) )
             => ! [W] :
                  ( ( leq(n0,W)
                    & leq(W,n3) )
                 => a_select3(simplex7_init,W,V) = init ) )
          & ! [X] :
              ( ( leq(n0,X)
                & leq(X,n3) )
             => a_select2(tptp_update2(s_values7_init,s_worst7,init),X) = init )
          & ! [Y] :
              ( ( leq(n0,Y)
                & leq(Y,n2) )
             => a_select2(s_center7_init,Y) = init )
          & ! [Z] :
              ( ( leq(n0,Z)
                & leq(Z,minus(n3,n1)) )
             => a_select2(s_try7_init,Z) = init )
          & ( gt(loopcounter,n1)
           => ( pvar1400_init = init
              & pvar1401_init = init
              & pvar1402_init = init ) ) ) ) ) ) ).

%----Automatically generated axioms

fof(gt_5_4,axiom,
    gt(n5,n4) ).

fof(gt_330_4,axiom,
    gt(n330,n4) ).

fof(gt_410_4,axiom,
    gt(n410,n4) ).

fof(gt_330_5,axiom,
    gt(n330,n5) ).

fof(gt_410_5,axiom,
    gt(n410,n5) ).

fof(gt_410_330,axiom,
    gt(n410,n330) ).

fof(gt_4_tptp_minus_1,axiom,
    gt(n4,tptp_minus_1) ).

fof(gt_5_tptp_minus_1,axiom,
    gt(n5,tptp_minus_1) ).

fof(gt_330_tptp_minus_1,axiom,
    gt(n330,tptp_minus_1) ).

fof(gt_410_tptp_minus_1,axiom,
    gt(n410,tptp_minus_1) ).

fof(gt_0_tptp_minus_1,axiom,
    gt(n0,tptp_minus_1) ).

fof(gt_1_tptp_minus_1,axiom,
    gt(n1,tptp_minus_1) ).

fof(gt_2_tptp_minus_1,axiom,
    gt(n2,tptp_minus_1) ).

fof(gt_3_tptp_minus_1,axiom,
    gt(n3,tptp_minus_1) ).

fof(gt_4_0,axiom,
    gt(n4,n0) ).

fof(gt_5_0,axiom,
    gt(n5,n0) ).

fof(gt_330_0,axiom,
    gt(n330,n0) ).

fof(gt_410_0,axiom,
    gt(n410,n0) ).

fof(gt_1_0,axiom,
    gt(n1,n0) ).

fof(gt_2_0,axiom,
    gt(n2,n0) ).

fof(gt_3_0,axiom,
    gt(n3,n0) ).

fof(gt_4_1,axiom,
    gt(n4,n1) ).

fof(gt_5_1,axiom,
    gt(n5,n1) ).

fof(gt_330_1,axiom,
    gt(n330,n1) ).

fof(gt_410_1,axiom,
    gt(n410,n1) ).

fof(gt_2_1,axiom,
    gt(n2,n1) ).

fof(gt_3_1,axiom,
    gt(n3,n1) ).

fof(gt_4_2,axiom,
    gt(n4,n2) ).

fof(gt_5_2,axiom,
    gt(n5,n2) ).

fof(gt_330_2,axiom,
    gt(n330,n2) ).

fof(gt_410_2,axiom,
    gt(n410,n2) ).

fof(gt_3_2,axiom,
    gt(n3,n2) ).

fof(gt_4_3,axiom,
    gt(n4,n3) ).

fof(gt_5_3,axiom,
    gt(n5,n3) ).

fof(gt_330_3,axiom,
    gt(n330,n3) ).

fof(gt_410_3,axiom,
    gt(n410,n3) ).

fof(finite_domain_4,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n4) )
     => ( X = n0
        | X = n1
        | X = n2
        | X = n3
        | X = n4 ) ) ).

fof(finite_domain_5,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n5) )
     => ( X = n0
        | X = n1
        | X = n2
        | X = n3
        | X = n4
        | X = n5 ) ) ).

fof(finite_domain_0,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n0) )
     => X = n0 ) ).

fof(finite_domain_1,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n1) )
     => ( X = n0
        | X = n1 ) ) ).

fof(finite_domain_2,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n2) )
     => ( X = n0
        | X = n1
        | X = n2 ) ) ).

fof(finite_domain_3,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n3) )
     => ( X = n0
        | X = n1
        | X = n2
        | X = n3 ) ) ).

fof(successor_4,axiom,
    succ(succ(succ(succ(n0)))) = n4 ).

fof(successor_5,axiom,
    succ(succ(succ(succ(succ(n0))))) = n5 ).

fof(successor_1,axiom,
    succ(n0) = n1 ).

fof(successor_2,axiom,
    succ(succ(n0)) = n2 ).

fof(successor_3,axiom,
    succ(succ(succ(n0))) = n3 ).

%------------------------------------------------------------------------------
