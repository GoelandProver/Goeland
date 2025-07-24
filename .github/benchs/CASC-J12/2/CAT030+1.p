fof(t3_subset,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> m1_subset_1(A,k1_zfmisc_1(B)) ) ).

fof(dt_k13_funct_3,axiom,
    ! [A,B] :
      ( ( v1_funct_1(k13_funct_3(A,B))
        & v1_relat_1(k13_funct_3(A,B)) )
     <= ( v1_funct_1(A)
        & v1_funct_1(B)
        & v1_relat_1(B)
        & v1_relat_1(A) ) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(fc1_xboole_0,axiom,
    v1_xboole_0(k1_xboole_0) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) ).

fof(t79_funct_3,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ~ v1_xboole_0(C)
             => ! [D] :
                  ( ! [E] :
                      ( ( v1_funct_2(E,A,C)
                        & m2_relset_1(E,A,C)
                        & v1_funct_1(E) )
                     => ! [F] :
                          ( k4_tarski(k8_funct_2(A,B,D,F),k8_funct_2(A,C,E,F)) = k8_funct_2(A,k2_zfmisc_1(B,C),k14_funct_3(A,B,C,D,E),F)
                         <= m1_subset_1(F,A) ) )
                 <= ( v1_funct_1(D)
                    & m2_relset_1(D,A,B)
                    & v1_funct_2(D,A,B) ) ) ) ) ) ).

fof(dt_u2_cat_1,axiom,
    ! [A] :
      ( l1_cat_1(A)
     => ~ v1_xboole_0(u2_cat_1(A)) ) ).

fof(redefinition_k13_cat_2,axiom,
    ! [A,B,C,D] :
      ( ( v2_cat_1(A)
        & m1_subset_1(C,u2_cat_1(A))
        & m1_subset_1(D,u2_cat_1(B))
        & l1_cat_1(B)
        & v2_cat_1(B)
        & l1_cat_1(A) )
     => k13_cat_2(A,B,C,D) = k4_tarski(C,D) ) ).

fof(redefinition_k12_cat_2,axiom,
    ! [A,B,C,D] :
      ( ( l1_cat_1(A)
        & l1_cat_1(B)
        & m1_subset_1(C,u1_cat_1(A))
        & m1_subset_1(D,u1_cat_1(B))
        & v2_cat_1(B)
        & v2_cat_1(A) )
     => k12_cat_2(A,B,C,D) = k4_tarski(C,D) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_tarski(A)) ).

fof(dt_k5_cat_1,axiom,
    ! [A,B] :
      ( m1_subset_1(k5_cat_1(A,B),u2_cat_1(A))
     <= ( m1_subset_1(B,u1_cat_1(A))
        & l1_cat_1(A) ) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     <= m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(t43_isocat_2,conjecture,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( l1_cat_1(B)
            & v2_cat_1(B) )
         => ! [C] :
              ( ! [D] :
                  ( m2_cat_1(D,A,B)
                 => ! [E] :
                      ( ! [F] :
                          ( m1_subset_1(F,u1_cat_1(A))
                         => k12_cat_2(B,C,k13_cat_1(A,B,D,F),k13_cat_1(A,C,E,F)) = k13_cat_1(A,k11_cat_2(B,C),k10_isocat_2(A,B,C,D,E),F) )
                     <= m2_cat_1(E,A,C) ) )
             <= ( v2_cat_1(C)
                & l1_cat_1(C) ) ) ) ) ).

fof(redefinition_k10_isocat_2,axiom,
    ! [A,B,C,D,E] :
      ( k13_funct_3(D,E) = k10_isocat_2(A,B,C,D,E)
     <= ( v2_cat_1(A)
        & v2_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(E,A,C)
        & m2_cat_1(D,A,B)
        & l1_cat_1(B)
        & l1_cat_1(A) ) ) ).

fof(dt_k13_cat_2,axiom,
    ! [A,B,C,D] :
      ( m1_subset_1(k13_cat_2(A,B,C,D),u2_cat_1(k11_cat_2(A,B)))
     <= ( v2_cat_1(A)
        & m1_subset_1(D,u2_cat_1(B))
        & m1_subset_1(C,u2_cat_1(A))
        & l1_cat_1(B)
        & v2_cat_1(B)
        & l1_cat_1(A) ) ) ).

fof(existence_m2_cat_1,axiom,
    ! [A,B] :
      ( ? [C] : m2_cat_1(C,A,B)
     <= ( l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(A) ) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ v1_xboole_0(A) ).

fof(redefinition_k10_cat_1,axiom,
    ! [A,B] :
      ( k10_cat_1(A,B) = k5_cat_1(A,B)
     <= ( v2_cat_1(A)
        & l1_cat_1(A)
        & m1_subset_1(B,u1_cat_1(A)) ) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : m1_subset_1(B,A) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) ).

fof(redefinition_k14_funct_3,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v1_xboole_0(B)
        & v1_funct_2(D,A,B)
        & m1_relset_1(E,A,C)
        & v1_funct_2(E,A,C)
        & v1_funct_1(E)
        & m1_relset_1(D,A,B)
        & v1_funct_1(D)
        & ~ v1_xboole_0(C) )
     => k13_funct_3(D,E) = k14_funct_3(A,B,C,D,E) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) ).

fof(dt_m1_cat_1,axiom,
    ! [A,B,C] :
      ( ( l1_cat_1(A)
        & m1_subset_1(C,u1_cat_1(A))
        & m1_subset_1(B,u1_cat_1(A)) )
     => ! [D] :
          ( m1_cat_1(D,A,B,C)
         => m1_subset_1(D,u2_cat_1(A)) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : k4_tarski(A,B) = k2_tarski(k2_tarski(A,B),k1_tarski(A)) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : k2_tarski(B,A) = k2_tarski(A,B) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(redefinition_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( k8_funct_2(A,B,C,D) = k1_funct_1(C,D)
     <= ( ~ v1_xboole_0(A)
        & m1_subset_1(D,A)
        & m1_relset_1(C,A,B)
        & v1_funct_2(C,A,B)
        & v1_funct_1(C) ) ) ).

fof(dt_m2_cat_1,axiom,
    ! [A,B] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B) )
     => ! [C] :
          ( m2_cat_1(C,A,B)
         => ( v1_funct_1(C)
            & m2_relset_1(C,u2_cat_1(A),u2_cat_1(B))
            & v1_funct_2(C,u2_cat_1(A),u2_cat_1(B)) ) ) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C)
        & r2_hidden(A,B) ) ).

fof(dt_l1_cat_1,axiom,
    $true ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) ).

fof(t6_boole,axiom,
    ! [A] :
      ( k1_xboole_0 = A
     <= v1_xboole_0(A) ) ).

fof(t41_cat_2,axiom,
    ! [A] :
      ( ( l1_cat_1(A)
        & v2_cat_1(A) )
     => ! [B] :
          ( ( l1_cat_1(B)
            & v2_cat_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_cat_1(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_cat_1(B))
                 => k10_cat_1(k11_cat_2(A,B),k12_cat_2(A,B,C,D)) = k13_cat_2(A,B,k10_cat_1(A,C),k10_cat_1(B,D)) ) ) ) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & v1_xboole_0(B) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k11_cat_2,axiom,
    ! [A,B] :
      ( ( v2_cat_1(k11_cat_2(A,B))
        & l1_cat_1(k11_cat_2(A,B)) )
     <= ( l1_cat_1(A)
        & l1_cat_1(B)
        & v2_cat_1(B)
        & v2_cat_1(A) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(existence_l1_cat_1,axiom,
    ? [A] : l1_cat_1(A) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     <= m2_relset_1(C,A,B) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : r1_tarski(A,A) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B) )
     <= ~ v1_xboole_0(A) ) ).

fof(dt_k12_cat_2,axiom,
    ! [A,B,C,D] :
      ( m1_subset_1(k12_cat_2(A,B,C,D),u1_cat_1(k11_cat_2(A,B)))
     <= ( l1_cat_1(A)
        & m1_subset_1(C,u1_cat_1(A))
        & m1_subset_1(D,u1_cat_1(B))
        & l1_cat_1(B)
        & v2_cat_1(B)
        & v2_cat_1(A) ) ) ).

fof(t108_cat_1,axiom,
    ! [A] :
      ( ( l1_cat_1(A)
        & v2_cat_1(A) )
     => ! [B] :
          ( ( l1_cat_1(B)
            & v2_cat_1(B) )
         => ! [C] :
              ( ! [D] :
                  ( k10_cat_1(B,k13_cat_1(A,B,C,D)) = k8_funct_2(u2_cat_1(A),u2_cat_1(B),C,k10_cat_1(A,D))
                 <= m1_subset_1(D,u1_cat_1(A)) )
             <= m2_cat_1(C,A,B) ) ) ) ).

fof(existence_m1_cat_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,u1_cat_1(A))
        & m1_subset_1(C,u1_cat_1(A))
        & l1_cat_1(A) )
     => ? [D] : m1_cat_1(D,A,B,C) ) ).

fof(dt_u1_cat_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(u1_cat_1(A))
     <= l1_cat_1(A) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : v1_xboole_0(A) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
    <=> m2_relset_1(C,A,B) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( m1_subset_1(A,C)
     <= ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) ) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(dt_k13_cat_1,axiom,
    ! [A,B,C,D] :
      ( ( l1_cat_1(A)
        & l1_cat_1(B)
        & m2_cat_1(C,A,B)
        & m1_subset_1(D,u1_cat_1(A))
        & v2_cat_1(B)
        & v2_cat_1(A) )
     => m1_subset_1(k13_cat_1(A,B,C,D),u1_cat_1(B)) ) ).

fof(dt_k10_isocat_2,axiom,
    ! [A,B,C,D,E] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & l1_cat_1(B)
        & l1_cat_1(C)
        & m2_cat_1(D,A,B)
        & m2_cat_1(E,A,C)
        & v2_cat_1(C)
        & v2_cat_1(B) )
     => m2_cat_1(k10_isocat_2(A,B,C,D,E),A,k11_cat_2(B,C)) ) ).

fof(dt_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( m1_subset_1(k8_funct_2(A,B,C,D),B)
     <= ( ~ v1_xboole_0(A)
        & v1_funct_1(C)
        & m1_subset_1(D,A)
        & m1_relset_1(C,A,B)
        & v1_funct_2(C,A,B) ) ) ).

fof(t107_cat_1,axiom,
    ! [A] :
      ( ( l1_cat_1(A)
        & v2_cat_1(A) )
     => ! [B] :
          ( ! [C] :
              ( m2_cat_1(C,A,B)
             => ! [D] :
                  ( ! [E] :
                      ( ( k10_cat_1(B,E) = k8_funct_2(u2_cat_1(A),u2_cat_1(B),C,k10_cat_1(A,D))
                       => k13_cat_1(A,B,C,D) = E )
                     <= m1_subset_1(E,u1_cat_1(B)) )
                 <= m1_subset_1(D,u1_cat_1(A)) ) )
         <= ( l1_cat_1(B)
            & v2_cat_1(B) ) ) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( v1_xboole_0(A)
        & A != B
        & v1_xboole_0(B) ) ).

fof(dt_k10_cat_1,axiom,
    ! [A,B] :
      ( m1_cat_1(k10_cat_1(A,B),A,B,B)
     <= ( l1_cat_1(A)
        & m1_subset_1(B,u1_cat_1(A))
        & v2_cat_1(A) ) ) ).

fof(dt_k14_funct_3,axiom,
    ! [A,B,C,D,E] :
      ( ( m2_relset_1(k14_funct_3(A,B,C,D,E),A,k2_zfmisc_1(B,C))
        & v1_funct_2(k14_funct_3(A,B,C,D,E),A,k2_zfmisc_1(B,C))
        & v1_funct_1(k14_funct_3(A,B,C,D,E)) )
     <= ( v1_funct_2(D,A,B)
        & v1_funct_2(E,A,C)
        & m1_relset_1(E,A,C)
        & v1_funct_1(E)
        & m1_relset_1(D,A,B)
        & v1_funct_1(D)
        & ~ v1_xboole_0(C)
        & ~ v1_xboole_0(B) ) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(B)
        & ~ v1_xboole_0(A) )
     => ~ v1_xboole_0(k2_zfmisc_1(A,B)) ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ v1_xboole_0(k2_tarski(A,B)) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

