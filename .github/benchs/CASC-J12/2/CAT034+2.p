include('Axioms/SET007/SET007+0.ax').
include('Axioms/SET007/SET007+1.ax').
include('Axioms/SET007/SET007+2.ax').
include('Axioms/SET007/SET007+3.ax').
include('Axioms/SET007/SET007+5.ax').
include('Axioms/SET007/SET007+6.ax').
include('Axioms/SET007/SET007+7.ax').
include('Axioms/SET007/SET007+9.ax').
include('Axioms/SET007/SET007+10.ax').
include('Axioms/SET007/SET007+11.ax').
include('Axioms/SET007/SET007+14.ax').
include('Axioms/SET007/SET007+16.ax').
include('Axioms/SET007/SET007+17.ax').
include('Axioms/SET007/SET007+18.ax').
include('Axioms/SET007/SET007+20.ax').
include('Axioms/SET007/SET007+21.ax').
include('Axioms/SET007/SET007+22.ax').
include('Axioms/SET007/SET007+25.ax').
include('Axioms/SET007/SET007+26.ax').
include('Axioms/SET007/SET007+31.ax').
include('Axioms/SET007/SET007+34.ax').
include('Axioms/SET007/SET007+35.ax').
include('Axioms/SET007/SET007+54.ax').
include('Axioms/SET007/SET007+55.ax').
include('Axioms/SET007/SET007+61.ax').
include('Axioms/SET007/SET007+76.ax').
include('Axioms/SET007/SET007+77.ax').
include('Axioms/SET007/SET007+79.ax').
include('Axioms/SET007/SET007+202.ax').
include('Axioms/SET007/SET007+237.ax').
include('Axioms/SET007/SET007+293.ax').
include('Axioms/SET007/SET007+299.ax').
include('Axioms/SET007/SET007+308.ax').
include('Axioms/SET007/SET007+322.ax').
fof(dt_k1_yoneda_1,axiom,
    ! [A] :
      ( ( l1_cat_1(A)
        & v2_cat_1(A) )
     => ( l1_cat_1(k1_yoneda_1(A))
        & v2_cat_1(k1_yoneda_1(A)) ) ) ).

fof(d1_yoneda_1,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => k1_yoneda_1(A) = k12_ens_1(k17_ens_1(A)) ) ).

fof(t2_yoneda_1,axiom,
    ! [A] :
      ( ! [B] :
          ( m2_cat_1(k20_ens_1(A,B),A,k1_yoneda_1(A))
         <= m1_subset_1(B,u1_cat_1(A)) )
     <= ( v2_cat_1(A)
        & l1_cat_1(A) ) ) ).

fof(t1_yoneda_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_funct_1(B)
            & v1_relat_1(B) )
         => ! [C] :
              ( ! [D] :
                  ( ! [E] :
                      ( m1_subset_1(E,u2_cat_1(k1_yoneda_1(A)))
                     => ( k4_cat_1(k1_yoneda_1(A),D,E) = k4_tarski(k12_cat_2(k1_yoneda_1(A),k1_yoneda_1(A),k2_cat_1(k1_yoneda_1(A),D),k3_cat_1(k1_yoneda_1(A),E)),k5_relat_1(B,C))
                       <= ( k4_tarski(k12_cat_2(k1_yoneda_1(A),k1_yoneda_1(A),k2_cat_1(k1_yoneda_1(A),D),k3_cat_1(k1_yoneda_1(A),D)),B) = D
                          & E = k4_tarski(k12_cat_2(k1_yoneda_1(A),k1_yoneda_1(A),k2_cat_1(k1_yoneda_1(A),E),k3_cat_1(k1_yoneda_1(A),E)),C)
                          & k3_cat_1(k1_yoneda_1(A),D) = k2_cat_1(k1_yoneda_1(A),E) ) ) )
                 <= m1_subset_1(D,u2_cat_1(k1_yoneda_1(A))) )
             <= ( v1_funct_1(C)
                & v1_relat_1(C) ) ) )
     <= ( l1_cat_1(A)
        & v2_cat_1(A) ) ) ).

fof(t3_yoneda_1,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( r2_nattra_1(A,k1_yoneda_1(A),k2_yoneda_1(A,k3_cat_1(A,B)),k2_yoneda_1(A,k2_cat_1(A,B)))
         <= m1_subset_1(B,u2_cat_1(A)) ) ) ).

fof(dt_k3_yoneda_1,axiom,
    ! [A,B] :
      ( m2_nattra_1(k3_yoneda_1(A,B),A,k1_yoneda_1(A),k2_yoneda_1(A,k3_cat_1(A,B)),k2_yoneda_1(A,k2_cat_1(A,B)))
     <= ( l1_cat_1(A)
        & m1_subset_1(B,u2_cat_1(A))
        & v2_cat_1(A) ) ) ).

fof(dt_k4_yoneda_1,axiom,
    ! [A] :
      ( m1_oppcat_1(k4_yoneda_1(A),A,k12_nattra_1(A,k1_yoneda_1(A)))
     <= ( v2_cat_1(A)
        & l1_cat_1(A) ) ) ).

fof(d2_yoneda_1,axiom,
    ! [A] :
      ( ! [B] :
          ( k2_yoneda_1(A,B) = k20_ens_1(A,B)
         <= m1_subset_1(B,u1_cat_1(A)) )
     <= ( v2_cat_1(A)
        & l1_cat_1(A) ) ) ).

fof(d3_yoneda_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( ! [D] :
                    ( m1_subset_1(D,u1_cat_1(A))
                   => k5_nattra_1(A,k1_yoneda_1(A),k2_yoneda_1(A,k3_cat_1(A,B)),k2_yoneda_1(A,k2_cat_1(A,B)),C,D) = k4_tarski(k4_tarski(k6_cat_1(A,k3_cat_1(A,B),D),k6_cat_1(A,k2_cat_1(A,B),D)),k22_ens_1(A,B,k10_cat_1(A,D))) )
              <=> k3_yoneda_1(A,B) = C )
             <= m2_nattra_1(C,A,k1_yoneda_1(A),k2_yoneda_1(A,k3_cat_1(A,B)),k2_yoneda_1(A,k2_cat_1(A,B))) )
         <= m1_subset_1(B,u2_cat_1(A)) )
     <= ( v2_cat_1(A)
        & l1_cat_1(A) ) ) ).

fof(t4_yoneda_1,conjecture,
    ! [A] :
      ( ! [B] :
          ( m1_subset_1(B,u2_cat_1(A))
         => m1_subset_1(k4_tarski(k4_tarski(k2_yoneda_1(A,k3_cat_1(A,B)),k2_yoneda_1(A,k2_cat_1(A,B))),k3_yoneda_1(A,B)),u2_cat_1(k12_nattra_1(A,k1_yoneda_1(A)))) )
     <= ( l1_cat_1(A)
        & v2_cat_1(A) ) ) ).

fof(dt_k2_yoneda_1,axiom,
    ! [A,B] :
      ( ( l1_cat_1(A)
        & m1_subset_1(B,u1_cat_1(A))
        & v2_cat_1(A) )
     => m2_cat_1(k2_yoneda_1(A,B),A,k1_yoneda_1(A)) ) ).

fof(dt_k5_yoneda_1,axiom,
    ! [A,B,C,D] :
      ( ( v2_cat_1(A)
        & m1_subset_1(D,u1_cat_1(A))
        & m1_oppcat_1(C,A,B)
        & l1_cat_1(B)
        & v2_cat_1(B)
        & l1_cat_1(A) )
     => m1_subset_1(k5_yoneda_1(A,B,C,D),u1_cat_1(B)) ) ).

