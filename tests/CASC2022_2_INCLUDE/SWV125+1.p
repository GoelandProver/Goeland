%------------------------------------------------------------------------------
% File     : SWV125+1 : TPTP v8.1.0. Bugfixed v3.3.0.
% Domain   : Software Verification
% Problem  : Unsimplified proof obligation thruster_array_0001
% Version  : [DFS04] axioms : Especial.
% English  : Proof obligation emerging from the array-safety verification for
%            the thruster program. array-safety ensures that each access to
%            an array element is within the specified upper and lower bounds
%            of the array.

% Refs     : [Fis04] Fischer (2004), Email to G. Sutcliffe
%          : [DFS04] Denney et al. (2004), Using Automated Theorem Provers
% Source   : [Fis04]
% Names    : thruster_array_0001 [Fis04]

% Status   : Theorem
% Rating   : 0.53 v8.1.0, 0.47 v7.5.0, 0.56 v7.4.0, 0.40 v7.3.0, 0.41 v7.2.0, 0.38 v7.1.0, 0.39 v7.0.0, 0.50 v6.4.0, 0.54 v6.3.0, 0.50 v6.2.0, 0.60 v6.1.0, 0.67 v6.0.0, 0.52 v5.5.0, 0.67 v5.4.0, 0.75 v5.3.0, 0.81 v5.2.0, 0.70 v5.1.0, 0.81 v5.0.0, 0.79 v4.1.0, 0.74 v4.0.1, 0.70 v4.0.0, 0.75 v3.7.0, 0.85 v3.5.0, 0.89 v3.4.0, 1.00 v3.3.0
% Syntax   : Number of formulae    :  121 (  84 unt;   0 def)
%            Number of atoms       :  947 (  90 equ)
%            Maximal formula atoms :  654 (   7 avg)
%            Number of connectives :  847 (  21   ~;  23   |; 698   &)
%                                         (   5 <=>; 100  =>;   0  <=;   0 <~>)
%            Maximal formula depth :  113 (   4 avg)
%            Maximal term depth    :    9 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   1 prp; 0-2 aty)
%            Number of functors    :   38 (  38 usr;  20 con; 0-4 aty)
%            Number of variables   :  171 ( 171   !;   0   ?)
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
fof(thruster_array_0001,conjecture,
    ( ( geq(minus(n4,n1),n0)
      & geq(minus(n1000,n1),n0) )
   => ! [A] :
        ( ( geq(n7,n0)
          & geq(minus(n1000,n1),n0) )
       => ! [B] :
            ( ( true
             => true )
            & ( true
             => ( leq(n0,n0)
                & leq(n0,n1)
                & leq(n0,n2)
                & leq(n0,n3)
                & leq(n0,n4)
                & leq(n0,n5)
                & leq(n0,n6)
                & leq(n0,n7)
                & leq(n0,minus(n4,n1))
                & leq(n0,minus(n6,n1))
                & leq(n0,minus(n1000,n1))
                & leq(n1,n7)
                & leq(n1,minus(n4,n1))
                & leq(n1,minus(n6,n1))
                & leq(n2,n7)
                & leq(n2,minus(n4,n1))
                & leq(n2,minus(n6,n1))
                & leq(n3,n7)
                & leq(n3,minus(n4,n1))
                & leq(n3,minus(n6,n1))
                & leq(n4,n7)
                & leq(n4,minus(n6,n1))
                & leq(n5,n7)
                & leq(n5,minus(n6,n1))
                & leq(n6,n7)
                & leq(n7,n7) ) )
            & ( ( leq(n0,pv5)
                & leq(n0,pv21)
                & leq(pv5,n588)
                & leq(pv21,minus(n6,n1)) )
             => ( leq(n0,n0)
                & leq(n0,pv5)
                & leq(n0,pv21)
                & leq(pv5,n588)
                & leq(pv21,n5)
                & leq(pv21,minus(n6,n1)) ) )
            & ( ( leq(n0,pv5)
                & leq(n0,pv31)
                & leq(n0,pv32)
                & leq(pv5,n588)
                & leq(pv31,minus(n6,n1))
                & leq(pv32,minus(n6,n1)) )
             => ( ( pv31 != pv32
                 => ( leq(n0,pv5)
                    & leq(n0,pv31)
                    & leq(n0,pv32)
                    & leq(pv5,n588)
                    & leq(pv31,minus(n6,n1))
                    & leq(pv32,minus(n6,n1)) ) )
                & ( pv31 = pv32
                 => ( leq(n0,pv5)
                    & leq(n0,pv31)
                    & leq(n0,pv32)
                    & leq(pv5,n588)
                    & leq(pv31,minus(n6,n1))
                    & leq(pv32,minus(n6,n1)) ) ) ) )
            & ( ( leq(n0,pv5)
                & leq(n0,pv31)
                & leq(pv5,n588)
                & leq(pv31,minus(n6,n1)) )
             => ( leq(n0,pv5)
                & leq(n0,pv31)
                & leq(pv5,n588)
                & leq(pv31,minus(n6,n1)) ) )
            & ( ( leq(n0,pv5)
                & leq(n0,pv31)
                & leq(pv5,n588)
                & leq(pv31,minus(n6,n1)) )
             => ( leq(n0,pv5)
                & leq(pv5,n588) ) )
            & ( ( leq(n0,pv5)
                & leq(pv5,n588) )
             => true )
            & ( ( leq(n0,pv5)
                & leq(pv5,n588) )
             => ( leq(n0,n0)
                & leq(n0,n1)
                & leq(n0,n2)
                & leq(n0,n3)
                & leq(n0,pv5)
                & leq(n0,minus(n4,n1))
                & leq(n0,minus(n6,n1))
                & leq(n1,minus(n4,n1))
                & leq(n1,minus(n6,n1))
                & leq(n2,minus(n4,n1))
                & leq(n2,minus(n6,n1))
                & leq(n3,minus(n4,n1))
                & leq(pv5,minus(n1000,n1))
                & ( ~ gt(pv5,n0)
                 => ( ( ~ gt(pv5,n0)
                     => ( ( ~ gt(pv5,n0)
                         => ( ( ~ gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) )
                            & ( gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n4,n1))
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n4,n1))
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n4,n1))
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n4,n1))
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) ) ) )
                        & ( gt(pv5,n0)
                         => ( leq(n0,n0)
                            & leq(n0,n1)
                            & leq(n0,n2)
                            & leq(n0,n3)
                            & leq(n0,pv5)
                            & leq(n0,minus(n4,n1))
                            & leq(n1,minus(n4,n1))
                            & leq(n2,minus(n4,n1))
                            & leq(n3,minus(n4,n1))
                            & leq(pv5,minus(n1000,n1))
                            & ( ~ gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) )
                            & ( gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n4,n1))
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n4,n1))
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n4,n1))
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n4,n1))
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) ) ) ) ) )
                    & ( gt(pv5,n0)
                     => ( leq(n0,n0)
                        & leq(n0,n1)
                        & leq(n0,n2)
                        & leq(n0,n3)
                        & leq(n0,n4)
                        & leq(n0,n5)
                        & leq(n0,n6)
                        & leq(n0,n7)
                        & leq(n0,pv5)
                        & leq(n0,minus(n6,n1))
                        & leq(n1,n7)
                        & leq(n2,n7)
                        & leq(n3,n7)
                        & leq(n3,minus(n6,n1))
                        & leq(n4,n7)
                        & leq(n5,n7)
                        & leq(n6,n7)
                        & leq(n7,n7)
                        & leq(pv5,minus(n1000,n1))
                        & ( ~ gt(pv5,n0)
                         => ( ( ~ gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) )
                            & ( gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n4,n1))
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n4,n1))
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n4,n1))
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n4,n1))
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) ) ) )
                        & ( gt(pv5,n0)
                         => ( leq(n0,n0)
                            & leq(n0,n1)
                            & leq(n0,n2)
                            & leq(n0,n3)
                            & leq(n0,pv5)
                            & leq(n0,minus(n4,n1))
                            & leq(n1,minus(n4,n1))
                            & leq(n2,minus(n4,n1))
                            & leq(n3,minus(n4,n1))
                            & leq(pv5,minus(n1000,n1))
                            & ( ~ gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) )
                            & ( gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n4,n1))
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n4,n1))
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n4,n1))
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n4,n1))
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) ) ) ) ) ) ) )
                & ( gt(pv5,n0)
                 => ( leq(n0,n0)
                    & leq(n0,n1)
                    & leq(n0,n2)
                    & leq(n0,n3)
                    & leq(n0,n4)
                    & leq(n0,n5)
                    & leq(n0,n6)
                    & leq(n0,n7)
                    & leq(n0,pv5)
                    & leq(n0,minus(n6,n1))
                    & leq(n1,n7)
                    & leq(n1,minus(n6,n1))
                    & leq(n2,n7)
                    & leq(n2,minus(n6,n1))
                    & leq(n3,n7)
                    & leq(n4,n7)
                    & leq(n4,minus(n6,n1))
                    & leq(n5,n7)
                    & leq(n5,minus(n6,n1))
                    & leq(n6,n7)
                    & leq(n7,n7)
                    & leq(pv5,minus(n1000,n1))
                    & ( ~ gt(pv5,n0)
                     => ( ( ~ gt(pv5,n0)
                         => ( ( ~ gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) )
                            & ( gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n4,n1))
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n4,n1))
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n4,n1))
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n4,n1))
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) ) ) )
                        & ( gt(pv5,n0)
                         => ( leq(n0,n0)
                            & leq(n0,n1)
                            & leq(n0,n2)
                            & leq(n0,n3)
                            & leq(n0,pv5)
                            & leq(n0,minus(n4,n1))
                            & leq(n1,minus(n4,n1))
                            & leq(n2,minus(n4,n1))
                            & leq(n3,minus(n4,n1))
                            & leq(pv5,minus(n1000,n1))
                            & ( ~ gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) )
                            & ( gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n4,n1))
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n4,n1))
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n4,n1))
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n4,n1))
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) ) ) ) ) )
                    & ( gt(pv5,n0)
                     => ( leq(n0,n0)
                        & leq(n0,n1)
                        & leq(n0,n2)
                        & leq(n0,n3)
                        & leq(n0,n4)
                        & leq(n0,n5)
                        & leq(n0,n6)
                        & leq(n0,n7)
                        & leq(n0,pv5)
                        & leq(n0,minus(n6,n1))
                        & leq(n1,n7)
                        & leq(n2,n7)
                        & leq(n3,n7)
                        & leq(n3,minus(n6,n1))
                        & leq(n4,n7)
                        & leq(n5,n7)
                        & leq(n6,n7)
                        & leq(n7,n7)
                        & leq(pv5,minus(n1000,n1))
                        & ( ~ gt(pv5,n0)
                         => ( ( ~ gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) )
                            & ( gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n4,n1))
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n4,n1))
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n4,n1))
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n4,n1))
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) ) ) )
                        & ( gt(pv5,n0)
                         => ( leq(n0,n0)
                            & leq(n0,n1)
                            & leq(n0,n2)
                            & leq(n0,n3)
                            & leq(n0,pv5)
                            & leq(n0,minus(n4,n1))
                            & leq(n1,minus(n4,n1))
                            & leq(n2,minus(n4,n1))
                            & leq(n3,minus(n4,n1))
                            & leq(pv5,minus(n1000,n1))
                            & ( ~ gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) )
                            & ( gt(pv5,n0)
                             => ( leq(n0,n0)
                                & leq(n0,n1)
                                & leq(n0,n2)
                                & leq(n0,n3)
                                & leq(n0,n4)
                                & leq(n0,n5)
                                & leq(n0,n6)
                                & leq(n0,n7)
                                & leq(n0,pv5)
                                & leq(n0,minus(n4,n1))
                                & leq(n0,minus(n6,n1))
                                & leq(n1,n7)
                                & leq(n1,minus(n4,n1))
                                & leq(n1,minus(n6,n1))
                                & leq(n2,n7)
                                & leq(n2,minus(n4,n1))
                                & leq(n2,minus(n6,n1))
                                & leq(n3,n7)
                                & leq(n3,minus(n4,n1))
                                & leq(n3,minus(n6,n1))
                                & leq(n4,n7)
                                & leq(n4,minus(n6,n1))
                                & leq(n5,n7)
                                & leq(n5,minus(n6,n1))
                                & leq(n6,n7)
                                & leq(n7,n7)
                                & leq(pv5,n588)
                                & leq(pv5,minus(n1000,n1)) ) ) ) ) ) ) ) ) ) )
            & ( ( leq(n0,pv5)
                & leq(pv5,n588) )
             => ( leq(n0,pv5)
                & leq(pv5,n588) ) )
            & ( ( leq(n0,pv23)
                & leq(pv23,minus(n6,n1)) )
             => ( leq(n0,a_select2(sigma,pv23))
               => true ) )
            & ( geq(minus(n6,n1),n0)
             => ( geq(minus(n6,n1),n0)
               => ( ( geq(minus(n4,n1),n0)
                    & geq(minus(n1000,n1),n0) )
                 => true ) ) ) ) ) ) ).

%----Automatically generated axioms

fof(gt_1000_588,axiom,
    gt(n1000,n588) ).

fof(gt_588_4,axiom,
    gt(n588,n4) ).

fof(gt_5_4,axiom,
    gt(n5,n4) ).

fof(gt_6_4,axiom,
    gt(n6,n4) ).

fof(gt_7_4,axiom,
    gt(n7,n4) ).

fof(gt_1000_4,axiom,
    gt(n1000,n4) ).

fof(gt_588_5,axiom,
    gt(n588,n5) ).

fof(gt_6_5,axiom,
    gt(n6,n5) ).

fof(gt_7_5,axiom,
    gt(n7,n5) ).

fof(gt_1000_5,axiom,
    gt(n1000,n5) ).

fof(gt_588_6,axiom,
    gt(n588,n6) ).

fof(gt_7_6,axiom,
    gt(n7,n6) ).

fof(gt_1000_6,axiom,
    gt(n1000,n6) ).

fof(gt_588_7,axiom,
    gt(n588,n7) ).

fof(gt_1000_7,axiom,
    gt(n1000,n7) ).

fof(gt_588_tptp_minus_1,axiom,
    gt(n588,tptp_minus_1) ).

fof(gt_4_tptp_minus_1,axiom,
    gt(n4,tptp_minus_1) ).

fof(gt_5_tptp_minus_1,axiom,
    gt(n5,tptp_minus_1) ).

fof(gt_6_tptp_minus_1,axiom,
    gt(n6,tptp_minus_1) ).

fof(gt_7_tptp_minus_1,axiom,
    gt(n7,tptp_minus_1) ).

fof(gt_0_tptp_minus_1,axiom,
    gt(n0,tptp_minus_1) ).

fof(gt_1_tptp_minus_1,axiom,
    gt(n1,tptp_minus_1) ).

fof(gt_2_tptp_minus_1,axiom,
    gt(n2,tptp_minus_1) ).

fof(gt_1000_tptp_minus_1,axiom,
    gt(n1000,tptp_minus_1) ).

fof(gt_3_tptp_minus_1,axiom,
    gt(n3,tptp_minus_1) ).

fof(gt_588_0,axiom,
    gt(n588,n0) ).

fof(gt_4_0,axiom,
    gt(n4,n0) ).

fof(gt_5_0,axiom,
    gt(n5,n0) ).

fof(gt_6_0,axiom,
    gt(n6,n0) ).

fof(gt_7_0,axiom,
    gt(n7,n0) ).

fof(gt_1_0,axiom,
    gt(n1,n0) ).

fof(gt_2_0,axiom,
    gt(n2,n0) ).

fof(gt_1000_0,axiom,
    gt(n1000,n0) ).

fof(gt_3_0,axiom,
    gt(n3,n0) ).

fof(gt_588_1,axiom,
    gt(n588,n1) ).

fof(gt_4_1,axiom,
    gt(n4,n1) ).

fof(gt_5_1,axiom,
    gt(n5,n1) ).

fof(gt_6_1,axiom,
    gt(n6,n1) ).

fof(gt_7_1,axiom,
    gt(n7,n1) ).

fof(gt_2_1,axiom,
    gt(n2,n1) ).

fof(gt_1000_1,axiom,
    gt(n1000,n1) ).

fof(gt_3_1,axiom,
    gt(n3,n1) ).

fof(gt_588_2,axiom,
    gt(n588,n2) ).

fof(gt_4_2,axiom,
    gt(n4,n2) ).

fof(gt_5_2,axiom,
    gt(n5,n2) ).

fof(gt_6_2,axiom,
    gt(n6,n2) ).

fof(gt_7_2,axiom,
    gt(n7,n2) ).

fof(gt_1000_2,axiom,
    gt(n1000,n2) ).

fof(gt_3_2,axiom,
    gt(n3,n2) ).

fof(gt_588_3,axiom,
    gt(n588,n3) ).

fof(gt_4_3,axiom,
    gt(n4,n3) ).

fof(gt_5_3,axiom,
    gt(n5,n3) ).

fof(gt_6_3,axiom,
    gt(n6,n3) ).

fof(gt_7_3,axiom,
    gt(n7,n3) ).

fof(gt_1000_3,axiom,
    gt(n1000,n3) ).

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

fof(finite_domain_6,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n6) )
     => ( X = n0
        | X = n1
        | X = n2
        | X = n3
        | X = n4
        | X = n5
        | X = n6 ) ) ).

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

fof(successor_6,axiom,
    succ(succ(succ(succ(succ(succ(n0)))))) = n6 ).

fof(successor_1,axiom,
    succ(n0) = n1 ).

fof(successor_2,axiom,
    succ(succ(n0)) = n2 ).

fof(successor_3,axiom,
    succ(succ(succ(n0))) = n3 ).

%------------------------------------------------------------------------------
