%------------------------------------------------------------------------------
% File     : SWV208+1 : TPTP v8.1.0. Bugfixed v3.3.0.
% Domain   : Software Verification
% Problem  : Simplified proof obligation quaternion_ds1_inuse_0019
% Version  : [DFS04] axioms : Especial.
% English  : Proof obligation emerging from the inuse-safety verification for
%            the quaternion_ds1 program. inuse-safety ensures that each sensor
%            reading passed as an input to the Kalman filter algorithm is
%            actually used during the computation of the output estimate.

% Refs     : [Fis04] Fischer (2004), Email to G. Sutcliffe
%          : [DFS04] Denney et al. (2004), Using Automated Theorem Provers
% Source   : [Fis04]
% Names    : quaternion_ds1_inuse_0019 [Fis04]

% Status   : Theorem
% Rating   : 0.36 v8.1.0, 0.33 v7.5.0, 0.38 v7.4.0, 0.30 v7.3.0, 0.45 v7.2.0, 0.41 v7.1.0, 0.48 v7.0.0, 0.43 v6.4.0, 0.42 v6.3.0, 0.46 v6.2.0, 0.52 v6.1.0, 0.53 v6.0.0, 0.48 v5.5.0, 0.63 v5.4.0, 0.68 v5.3.0, 0.67 v5.2.0, 0.65 v5.1.0, 0.67 v4.1.0, 0.70 v4.0.0, 0.71 v3.7.0, 0.70 v3.5.0, 0.74 v3.4.0, 0.68 v3.3.0
% Syntax   : Number of formulae    :   92 (  56 unt;   0 def)
%            Number of atoms       :  296 ( 110 equ)
%            Maximal formula atoms :   40 (   3 avg)
%            Number of connectives :  209 (   5   ~;  17   |; 127   &)
%                                         (   5 <=>;  55  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   36 (   4 avg)
%            Maximal term depth    :    9 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   1 prp; 0-2 aty)
%            Number of functors    :   36 (  36 usr;  18 con; 0-4 aty)
%            Number of variables   :  173 ( 173   !;   0   ?)
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
fof(quaternion_ds1_inuse_0019,conjecture,
    ( ( a_select2(rho_defuse,n0) = use
      & a_select2(rho_defuse,n1) = use
      & a_select2(rho_defuse,n2) = use
      & a_select2(sigma_defuse,n0) = use
      & a_select2(sigma_defuse,n1) = use
      & a_select2(sigma_defuse,n2) = use
      & a_select2(sigma_defuse,n3) = use
      & a_select2(sigma_defuse,n4) = use
      & a_select2(sigma_defuse,n5) = use
      & a_select3(u_defuse,n0,n0) = use
      & a_select3(u_defuse,n1,n0) = use
      & a_select3(u_defuse,n2,n0) = use
      & a_select2(xinit_defuse,n3) = use
      & a_select2(xinit_defuse,n4) = use
      & a_select2(xinit_defuse,n5) = use
      & a_select2(xinit_mean_defuse,n0) = use
      & a_select2(xinit_mean_defuse,n1) = use
      & a_select2(xinit_mean_defuse,n2) = use
      & a_select2(xinit_mean_defuse,n3) = use
      & a_select2(xinit_mean_defuse,n4) = use
      & a_select2(xinit_mean_defuse,n5) = use
      & a_select2(xinit_noise_defuse,n0) = use
      & a_select2(xinit_noise_defuse,n1) = use
      & a_select2(xinit_noise_defuse,n2) = use
      & a_select2(xinit_noise_defuse,n3) = use
      & a_select2(xinit_noise_defuse,n4) = use
      & a_select2(xinit_noise_defuse,n5) = use
      & ! [A,B] :
          ( ( leq(n0,A)
            & leq(n0,B)
            & leq(A,n2)
            & leq(B,n998) )
         => a_select3(u_defuse,A,B) = use )
      & ! [C,D] :
          ( ( leq(n0,C)
            & leq(n0,D)
            & leq(C,n2)
            & leq(D,n998) )
         => a_select3(z_defuse,C,D) = use ) )
   => ! [E] :
        ( ( leq(n0,E)
          & leq(E,n5) )
       => a_select2(xinit_mean_defuse,E) = use ) ) ).

%----Automatically generated axioms

fof(gt_5_4,axiom,
    gt(n5,n4) ).

fof(gt_998_4,axiom,
    gt(n998,n4) ).

fof(gt_998_5,axiom,
    gt(n998,n5) ).

fof(gt_4_tptp_minus_1,axiom,
    gt(n4,tptp_minus_1) ).

fof(gt_5_tptp_minus_1,axiom,
    gt(n5,tptp_minus_1) ).

fof(gt_998_tptp_minus_1,axiom,
    gt(n998,tptp_minus_1) ).

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

fof(gt_998_0,axiom,
    gt(n998,n0) ).

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

fof(gt_998_1,axiom,
    gt(n998,n1) ).

fof(gt_2_1,axiom,
    gt(n2,n1) ).

fof(gt_3_1,axiom,
    gt(n3,n1) ).

fof(gt_4_2,axiom,
    gt(n4,n2) ).

fof(gt_5_2,axiom,
    gt(n5,n2) ).

fof(gt_998_2,axiom,
    gt(n998,n2) ).

fof(gt_3_2,axiom,
    gt(n3,n2) ).

fof(gt_4_3,axiom,
    gt(n4,n3) ).

fof(gt_5_3,axiom,
    gt(n5,n3) ).

fof(gt_998_3,axiom,
    gt(n998,n3) ).

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
