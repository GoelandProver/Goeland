fof(cc1_realset1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     <= ~ v1_realset1(A) ) ).

fof(dt_m2_filter_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m2_lattice4(B,A) )
         <= m2_filter_2(B,A) )
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) ) ) ).

fof(d2_lattices,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_lattices(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k2_lattices(A,B,C) = k2_binop_1(u1_struct_0(A),u1_struct_0(A),u1_struct_0(A),u1_lattices(A),B,C) ) ) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> m1_subset_1(A,k1_zfmisc_1(B)) ) ).

fof(fraenkel_a_2_0_filter_2,axiom,
    ! [A,B,C] :
      ( ( l3_lattices(B)
        & m1_subset_1(C,u1_struct_0(B))
        & v10_lattices(B)
        & ~ v3_struct_0(B) )
     => ( ? [D] :
            ( D = A
            & r3_lattices(B,D,C)
            & m1_subset_1(D,u1_struct_0(B)) )
      <=> r2_hidden(A,a_2_0_filter_2(B,C)) ) ) ).

fof(fc3_realset1,axiom,
    ! [A] :
      ( v1_finset_1(k1_tarski(A))
      & v1_realset1(k1_tarski(A))
      & ~ v1_xboole_0(k1_tarski(A)) ) ).

fof(dt_u1_lattices,axiom,
    ! [A] :
      ( l1_lattices(A)
     => ( m2_relset_1(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_funct_1(u1_lattices(A)) ) ) ).

fof(dt_m2_lattice4,axiom,
    ! [A] :
      ( ! [B] :
          ( m2_lattice4(B,A)
         => m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) ) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) ).

fof(existence_l1_lattices,axiom,
    ? [A] : l1_lattices(A) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( r2_hidden(A,B)
        | v1_xboole_0(B) ) ) ).

fof(rc1_realset1,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_realset1(A) ) ).

fof(existence_l3_lattices,axiom,
    ? [A] : l3_lattices(A) ).

fof(dt_k1_binop_1,axiom,
    $true ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_tarski(A)) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : m1_subset_1(B,A) ).

fof(t23_lattices,axiom,
    ! [A] :
      ( ( v6_lattices(A)
        & v8_lattices(A)
        & l3_lattices(A)
        & ~ v3_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( r1_lattices(A,k4_lattices(A,B,C),B)
             <= m1_subset_1(C,u1_struct_0(A)) ) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : k2_tarski(k2_tarski(A,B),k1_tarski(A)) = k4_tarski(A,B) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) ).

fof(existence_m2_lattice4,axiom,
    ! [A] :
      ( ? [B] : m2_lattice4(B,A)
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) ) ) ).

fof(dt_k2_lattices,axiom,
    ! [A,B,C] :
      ( m1_subset_1(k2_lattices(A,B,C),u1_struct_0(A))
     <= ( ~ v3_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & l1_lattices(A) ) ) ).

fof(fc4_lattice2,axiom,
    ! [A] :
      ( ( v1_relat_1(u1_lattices(A))
        & v1_funct_1(u1_lattices(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_partfun1(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_binop_1(u1_lattices(A),u1_struct_0(A)) )
     <= ( ~ v3_struct_0(A)
        & l1_lattices(A)
        & v6_lattices(A) ) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( A != B
        & v1_xboole_0(B)
        & v1_xboole_0(A) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : k2_tarski(A,B) = k2_tarski(B,A) ).

fof(dt_l2_lattices,axiom,
    ! [A] :
      ( l2_lattices(A)
     => l1_struct_0(A) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ v1_xboole_0(k2_tarski(A,B)) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_k4_lattices,axiom,
    ! [A,B,C] :
      ( m1_subset_1(k4_lattices(A,B,C),u1_struct_0(A))
     <= ( v6_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & l1_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(k2_zfmisc_1(A,B))
     <= ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) ) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( v1_funct_1(A)
     <= v1_xboole_0(A) ) ).

fof(fc1_xboole_0,axiom,
    v1_xboole_0(k1_xboole_0) ).

fof(existence_m2_filter_2,axiom,
    ! [A] :
      ( ? [B] : m2_filter_2(B,A)
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) ) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(redefinition_r3_lattices,axiom,
    ! [A,B,C] :
      ( ( v6_lattices(A)
        & v9_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & v8_lattices(A)
        & ~ v3_struct_0(A) )
     => ( r1_lattices(A,B,C)
      <=> r3_lattices(A,B,C) ) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : v1_xboole_0(A) ).

fof(existence_l2_lattices,axiom,
    ? [A] : l2_lattices(A) ).

fof(reflexivity_r3_lattices,axiom,
    ! [A,B,C] :
      ( r3_lattices(A,B,B)
     <= ( v8_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & v9_lattices(A)
        & v6_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B) )
     <= ~ v1_xboole_0(A) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( v1_xboole_0(B)
      & m1_subset_1(B,k1_zfmisc_1(A)) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(commutativity_k4_lattices,axiom,
    ! [A,B,C] :
      ( k4_lattices(A,B,C) = k4_lattices(A,C,B)
     <= ( ~ v3_struct_0(A)
        & l1_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & v6_lattices(A) ) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( l1_struct_0(A)
        & ~ v3_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B) ) ) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) ).

fof(redefinition_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(A,B),C)
        & m1_relset_1(D,k2_zfmisc_1(A,B),C)
        & m1_subset_1(E,A)
        & m1_subset_1(F,B) )
     => k1_binop_1(D,E,F) = k2_binop_1(A,B,C,D,E,F) ) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(existence_l1_struct_0,axiom,
    ? [A] : l1_struct_0(A) ).

fof(cc2_lattices,axiom,
    ! [A] :
      ( ( ( ~ v3_struct_0(A)
          & v10_lattices(A) )
       <= ( ~ v3_struct_0(A)
          & v5_lattices(A)
          & v8_lattices(A)
          & v9_lattices(A)
          & v7_lattices(A)
          & v6_lattices(A)
          & v4_lattices(A) ) )
     <= l3_lattices(A) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( v2_funct_1(A)
      & v1_funct_1(A)
      & v1_relat_1(A) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( B = A
     <= ! [C] :
          ( r2_hidden(C,B)
        <=> r2_hidden(C,A) ) ) ).

fof(dt_l3_lattices,axiom,
    ! [A] :
      ( ( l1_lattices(A)
        & l2_lattices(A) )
     <= l3_lattices(A) ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( ~ v3_struct_0(A)
      & l1_struct_0(A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : r1_tarski(A,A) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v2_funct_1(A)
        & v1_funct_1(A) )
     <= ( v1_relat_1(A)
        & v1_xboole_0(A)
        & v1_funct_1(A) ) ) ).

fof(dt_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( m1_subset_1(k2_binop_1(A,B,C,D,E,F),C)
     <= ( ~ v1_xboole_0(B)
        & v1_funct_1(D)
        & m1_relset_1(D,k2_zfmisc_1(A,B),C)
        & m1_subset_1(F,B)
        & m1_subset_1(E,A)
        & v1_funct_2(D,k2_zfmisc_1(A,B),C)
        & ~ v1_xboole_0(A) ) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( A = k1_xboole_0
     <= v1_xboole_0(A) ) ).

fof(d9_filter_2,axiom,
    ! [A] :
      ( ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => a_2_0_filter_2(A,B) = k18_filter_2(A,B) )
     <= ( v10_lattices(A)
        & l3_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) ).

fof(rc1_lattice4,axiom,
    ! [A] :
      ( ? [B] :
          ( m2_lattice4(B,A)
          & ~ v1_xboole_0(B) )
     <= ( v10_lattices(A)
        & l3_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(cc1_lattices,axiom,
    ! [A] :
      ( ( ( v5_lattices(A)
          & v7_lattices(A)
          & v9_lattices(A)
          & v8_lattices(A)
          & v6_lattices(A)
          & v4_lattices(A)
          & ~ v3_struct_0(A) )
       <= ( ~ v3_struct_0(A)
          & v10_lattices(A) ) )
     <= l3_lattices(A) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v1_xboole_0(A) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
    <=> m2_relset_1(C,A,B) ) ).

fof(dt_l1_lattices,axiom,
    ! [A] :
      ( l1_lattices(A)
     => l1_struct_0(A) ) ).

fof(dt_k18_filter_2,axiom,
    ! [A,B] :
      ( m2_filter_2(k18_filter_2(A,B),A)
     <= ( m1_subset_1(B,u1_struct_0(A))
        & l3_lattices(A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(rc2_realset1,axiom,
    ? [A] :
      ( ~ v1_realset1(A)
      & ~ v1_xboole_0(A) ) ).

fof(t31_filter_2,conjecture,
    ! [A] :
      ( ( l3_lattices(A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) )
     => ! [B] :
          ( ! [C] :
              ( ( r2_hidden(B,k18_filter_2(A,B))
                & r2_hidden(k4_lattices(A,C,B),k18_filter_2(A,B))
                & r2_hidden(k4_lattices(A,B,C),k18_filter_2(A,B)) )
             <= m1_subset_1(C,u1_struct_0(A)) )
         <= m1_subset_1(B,u1_struct_0(A)) ) ) ).

fof(d1_binop_1,axiom,
    ! [A] :
      ( ( v1_funct_1(A)
        & v1_relat_1(A) )
     => ! [B,C] : k1_binop_1(A,B,C) = k1_funct_1(A,k4_tarski(B,C)) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ v1_xboole_0(A) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( v1_funct_1(A)
      & v1_relat_1(A) ) ).

fof(fc5_lattice2,axiom,
    ! [A] :
      ( ( v1_relat_1(u1_lattices(A))
        & v1_funct_1(u1_lattices(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v2_binop_1(u1_lattices(A),u1_struct_0(A))
        & v1_partfun1(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A)) )
     <= ( ~ v3_struct_0(A)
        & l1_lattices(A)
        & v7_lattices(A) ) ) ).

fof(redefinition_k4_lattices,axiom,
    ! [A,B,C] :
      ( k2_lattices(A,B,C) = k4_lattices(A,B,C)
     <= ( ~ v3_struct_0(A)
        & v6_lattices(A)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(B,u1_struct_0(A))
        & l1_lattices(A) ) ) ).

