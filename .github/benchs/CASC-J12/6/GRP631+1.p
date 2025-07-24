fof(fc1_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_funct_1(A)
        & v1_relat_1(A) )
     => ( v1_relat_1(k5_relat_1(A,B))
        & v1_funct_1(k5_relat_1(A,B)) ) ) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : l1_struct_0(A) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(rc1_xboole_0,axiom,
    ? [A] : v1_xboole_0(A) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(rc1_group_1,axiom,
    ? [A] :
      ( v1_group_1(A)
      & l1_group_1(A) ) ).

fof(dt_g1_group_1,axiom,
    ! [A,B] :
      ( ( v1_group_1(g1_group_1(A,B))
        & l1_group_1(g1_group_1(A,B)) )
     <= ( m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & v1_funct_1(B) ) ) ).

fof(rc3_group_1,axiom,
    ? [A] :
      ( l1_group_1(A)
      & v3_group_1(A)
      & v4_group_1(A)
      & v2_group_1(A)
      & v1_group_1(A)
      & ~ v3_struct_0(A) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( ~ v3_struct_0(A)
      & l1_struct_0(A) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( v1_funct_1(A)
        & v2_funct_1(A)
        & v1_relat_1(A) )
     <= ( v1_relat_1(A)
        & v1_xboole_0(A)
        & v1_funct_1(A) ) ) ).

fof(existence_l1_group_1,axiom,
    ? [A] : l1_group_1(A) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_k6_relat_1,axiom,
    ! [A] : v1_relat_1(k6_relat_1(A)) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) ).

fof(rc1_fraenkel,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_fraenkel(A) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( r2_hidden(A,B)
        | v1_xboole_0(B) )
     <= m1_subset_1(A,B) ) ).

fof(cc1_fraenkel,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_funct_1(B)
            & v1_relat_1(B) )
         <= m1_subset_1(B,A) )
     <= v1_fraenkel(A) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(redefinition_m2_fraenkel,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( m1_subset_1(D,C)
        <=> m2_fraenkel(D,A,B,C) )
     <= ( m1_fraenkel(C,A,B)
        & ~ v1_xboole_0(B) ) ) ).

fof(rc1_funct_2,axiom,
    ! [A,B] :
    ? [C] :
      ( m1_relset_1(C,A,B)
      & v1_funct_1(C)
      & v1_funct_2(C,A,B)
      & v1_relat_1(C) ) ).

fof(dt_k7_funct_2,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v1_xboole_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & v1_funct_1(E)
        & m1_relset_1(E,B,C)
        & v1_funct_2(E,B,C)
        & m1_relset_1(D,A,B) )
     => ( m2_relset_1(k7_funct_2(A,B,C,D,E),A,C)
        & v1_funct_2(k7_funct_2(A,B,C,D,E),A,C)
        & v1_funct_1(k7_funct_2(A,B,C,D,E)) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C)
        & r2_hidden(A,B) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ~ v1_xboole_0(u1_struct_0(A))
     <= ( l1_struct_0(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k4_autgroup,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_group_1(A)
        & l1_group_1(A)
        & v3_group_1(A)
        & v1_group_1(A) )
     => m1_fraenkel(k4_autgroup(A),u1_struct_0(A),u1_struct_0(A)) ) ).

fof(dt_l1_group_1,axiom,
    ! [A] :
      ( l1_group_1(A)
     => l1_struct_0(A) ) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v2_funct_1(A)
      & v1_funct_1(A) ) ).

fof(cc1_partfun1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_relat_2(A) )
     <= ( v8_relat_2(A)
        & v3_relat_2(A)
        & v1_relat_1(A) ) ) ).

fof(dt_k6_autgroup,axiom,
    ! [A,B] :
      ( ( v1_group_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & l1_group_1(A)
        & v4_group_1(A)
        & v3_group_1(A)
        & ~ v3_struct_0(A) )
     => m2_fraenkel(k6_autgroup(A,B),u1_struct_0(A),u1_struct_0(A),k4_autgroup(A)) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
    <=> m2_relset_1(C,A,B) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(rc2_funct_2,axiom,
    ! [A] :
    ? [B] :
      ( v1_funct_1(B)
      & v2_funct_1(B)
      & v3_funct_2(B,A,A)
      & v2_funct_2(B,A,A)
      & v1_funct_2(B,A,A)
      & v1_relat_1(B)
      & m1_relset_1(B,A,A) ) ).

fof(fc1_group_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & v1_funct_1(B) )
     => ( ~ v3_struct_0(g1_group_1(A,B))
        & v1_group_1(g1_group_1(A,B)) ) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(dt_k2_group_1,axiom,
    ! [A] :
      ( m1_subset_1(k2_group_1(A),u1_struct_0(A))
     <= ( ~ v3_struct_0(A)
        & l1_group_1(A) ) ) ).

fof(fc2_partfun1,axiom,
    ! [A] :
      ( v1_funct_1(k6_relat_1(A))
      & v1_relat_2(k6_relat_1(A))
      & v3_relat_2(k6_relat_1(A))
      & v8_relat_2(k6_relat_1(A))
      & v4_relat_2(k6_relat_1(A))
      & v1_relat_1(k6_relat_1(A)) ) ).

fof(cc2_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( v1_funct_2(C,A,B)
          & v3_funct_2(C,A,B)
          & v1_funct_1(C) )
       => ( v1_funct_1(C)
          & v2_funct_1(C)
          & v2_funct_2(C,A,B)
          & v1_funct_2(C,A,B) ) )
     <= m1_relset_1(C,A,B) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v1_xboole_0(A) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ v1_xboole_0(A) ).

fof(dt_m2_fraenkel,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ( v1_funct_2(D,A,B)
            & m2_relset_1(D,A,B)
            & v1_funct_1(D) )
         <= m2_fraenkel(D,A,B,C) )
     <= ( ~ v1_xboole_0(B)
        & m1_fraenkel(C,A,B) ) ) ).

fof(dt_u1_group_1,axiom,
    ! [A] :
      ( ( m2_relset_1(u1_group_1(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_funct_2(u1_group_1(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_funct_1(u1_group_1(A)) )
     <= l1_group_1(A) ) ).

fof(cc1_group_1,axiom,
    ! [A] :
      ( ( ( ~ v3_struct_0(A)
          & v3_group_1(A) )
       => ( ~ v3_struct_0(A)
          & v2_group_1(A) ) )
     <= l1_group_1(A) ) ).

fof(cc6_funct_2,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ! [C] :
          ( m1_relset_1(C,A,B)
         => ( ( v1_funct_1(C)
              & v1_funct_2(C,A,B) )
           => ( v1_funct_1(C)
              & ~ v1_xboole_0(C)
              & v1_funct_2(C,A,B)
              & v1_partfun1(C,A,B) ) ) ) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) ).

fof(abstractness_v1_group_1,axiom,
    ! [A] :
      ( ( v1_group_1(A)
       => A = g1_group_1(u1_struct_0(A),u1_group_1(A)) )
     <= l1_group_1(A) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( A != B
        & v1_xboole_0(B)
        & v1_xboole_0(A) ) ).

fof(redefinition_k7_relset_1,axiom,
    ! [A,B,C,D,E,F] :
      ( k7_relset_1(A,B,C,D,E,F) = k5_relat_1(E,F)
     <= ( m1_relset_1(F,C,D)
        & m1_relset_1(E,A,B) ) ) ).

fof(redefinition_k6_partfun1,axiom,
    ! [A] : k6_relat_1(A) = k6_partfun1(A) ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(k5_relat_1(A,B))
     <= ( v1_relat_1(A)
        & v1_relat_1(B) ) ) ).

fof(redefinition_k7_funct_2,axiom,
    ! [A,B,C,D,E] :
      ( k7_funct_2(A,B,C,D,E) = k5_relat_1(D,E)
     <= ( ~ v1_xboole_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_relset_1(D,A,B)
        & v1_funct_2(E,B,C)
        & m1_relset_1(E,B,C)
        & v1_funct_1(E) ) ) ).

fof(free_g1_group_1,axiom,
    ! [A,B] :
      ( ( m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & v1_funct_1(B) )
     => ! [C,D] :
          ( g1_group_1(C,D) = g1_group_1(A,B)
         => ( D = B
            & A = C ) ) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( l1_struct_0(A)
        & ~ v3_struct_0(A) )
     => ? [B] :
          ( ~ v1_xboole_0(B)
          & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( v1_funct_1(A)
     <= v1_xboole_0(A) ) ).

fof(cc1_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( v1_funct_2(C,A,B)
          & v1_funct_1(C) )
       <= ( v1_partfun1(C,A,B)
          & v1_funct_1(C) ) )
     <= m1_relset_1(C,A,B) ) ).

fof(cc5_funct_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( m1_relset_1(C,A,B)
         => ( ( v1_partfun1(C,A,B)
              & v1_funct_2(C,A,B)
              & v1_funct_1(C) )
           <= ( v1_funct_1(C)
              & v1_funct_2(C,A,B) ) ) )
     <= ~ v1_xboole_0(B) ) ).

fof(rc3_partfun1,axiom,
    ! [A] :
    ? [B] :
      ( v1_relat_1(B)
      & v1_relat_2(B)
      & v3_relat_2(B)
      & v4_relat_2(B)
      & v8_relat_2(B)
      & v1_partfun1(B,A,A)
      & m1_relset_1(B,A,A) ) ).

fof(dt_m1_fraenkel,axiom,
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(C)
        & v1_fraenkel(C) )
     <= m1_fraenkel(C,A,B) ) ).

fof(cc4_funct_2,axiom,
    ! [A,B] :
      ( ( ( v1_funct_1(B)
          & v1_relat_2(B)
          & v1_funct_2(B,A,A)
          & v1_partfun1(B,A,A) )
       => ( v3_funct_2(B,A,A)
          & v2_funct_2(B,A,A)
          & v1_funct_2(B,A,A)
          & v2_funct_1(B)
          & v1_funct_1(B) ) )
     <= m1_relset_1(B,A,A) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(existence_m1_fraenkel,axiom,
    ! [A,B] :
    ? [C] : m1_fraenkel(C,A,B) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) ).

fof(t24_autgroup,axiom,
    ! [A] :
      ( k6_autgroup(A,k2_group_1(A)) = k6_partfun1(u1_struct_0(A))
     <= ( ~ v3_struct_0(A)
        & v1_group_1(A)
        & l1_group_1(A)
        & v4_group_1(A)
        & v3_group_1(A) ) ) ).

fof(cc3_funct_2,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => ( ( v1_funct_1(C)
          & v2_funct_1(C)
          & v2_funct_2(C,A,B)
          & v1_funct_2(C,A,B) )
       => ( v1_funct_1(C)
          & v3_funct_2(C,A,B)
          & v1_funct_2(C,A,B) ) ) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : r1_tarski(A,A) ).

fof(rc1_partfun1,axiom,
    ? [A] :
      ( v1_funct_1(A)
      & v2_funct_1(A)
      & v1_xboole_0(A)
      & v1_relat_1(A) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( m1_subset_1(A,B)
     <= r2_hidden(A,B) ) ).

fof(fc2_funct_1,axiom,
    ! [A] :
      ( v1_funct_1(k6_relat_1(A))
      & v1_relat_1(k6_relat_1(A)) ) ).

fof(dt_k7_relset_1,axiom,
    ! [A,B,C,D,E,F] :
      ( m2_relset_1(k7_relset_1(A,B,C,D,E,F),A,D)
     <= ( m1_relset_1(E,A,B)
        & m1_relset_1(F,C,D) ) ) ).

fof(t29_autgroup,conjecture,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A)
        & v1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k7_funct_2(u1_struct_0(A),u1_struct_0(A),u1_struct_0(A),k6_autgroup(A,B),k6_autgroup(A,k2_group_1(A))) = k6_autgroup(A,B)
            & k6_autgroup(A,B) = k7_funct_2(u1_struct_0(A),u1_struct_0(A),u1_struct_0(A),k6_autgroup(A,k2_group_1(A)),k6_autgroup(A,B)) ) ) ) ).

fof(fc1_xboole_0,axiom,
    v1_xboole_0(k1_xboole_0) ).

fof(existence_m2_fraenkel,axiom,
    ! [A,B,C] :
      ( ? [D] : m2_fraenkel(D,A,B,C)
     <= ( m1_fraenkel(C,A,B)
        & ~ v1_xboole_0(B) ) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) ).

fof(t23_funct_2,axiom,
    ! [A,B,C] :
      ( ( k7_relset_1(A,B,B,B,C,k6_partfun1(B)) = C
        & C = k7_relset_1(A,A,A,B,k6_partfun1(A),C) )
     <= m2_relset_1(C,A,B) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : m1_subset_1(B,A) ).

fof(rc2_group_1,axiom,
    ? [A] :
      ( l1_group_1(A)
      & v1_group_1(A)
      & ~ v3_struct_0(A) ) ).

fof(rc2_partfun1,axiom,
    ! [A,B] :
    ? [C] :
      ( v1_funct_1(C)
      & v1_relat_1(C)
      & m1_relset_1(C,A,B) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A) ) ).

fof(dt_k6_partfun1,axiom,
    ! [A] :
      ( v1_partfun1(k6_partfun1(A),A,A)
      & m2_relset_1(k6_partfun1(A),A,A) ) ).

