fof(dt_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( ( m1_subset_1(F,B)
        & m1_subset_1(E,A)
        & m1_relset_1(D,k2_zfmisc_1(A,B),C)
        & v1_funct_2(D,k2_zfmisc_1(A,B),C)
        & v1_funct_1(D)
        & ~ v1_xboole_0(B)
        & ~ v1_xboole_0(A) )
     => m1_subset_1(k2_binop_1(A,B,C,D,E,F),C) ) ).

fof(fc7_membered,axiom,
    ! [A] :
      ( v1_xcmplx_0(A)
     => v1_membered(k1_tarski(A)) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : m1_subset_1(B,A) ).

fof(dt_k5_lopclset,axiom,
    ! [A] :
      ( ( l1_pre_topc(A)
        & v2_pre_topc(A)
        & ~ v3_struct_0(A) )
     => ( m2_relset_1(k5_lopclset(A),k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A))
        & v1_funct_2(k5_lopclset(A),k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A))
        & v1_funct_1(k5_lopclset(A)) ) ) ).

fof(rc2_partfun1,axiom,
    ! [A,B] :
    ? [C] :
      ( v1_relat_1(C)
      & v1_funct_1(C)
      & m1_relset_1(C,A,B) ) ).

fof(redefinition_m2_subset_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( m2_subset_1(C,A,B)
        <=> m1_subset_1(C,B) )
     <= ( ~ v1_xboole_0(A)
        & m1_subset_1(B,k1_zfmisc_1(A))
        & ~ v1_xboole_0(B) ) ) ).

fof(fc1_finset_1,axiom,
    ! [A] :
      ( v1_finset_1(k1_tarski(A))
      & ~ v1_xboole_0(k1_tarski(A)) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : k2_tarski(B,A) = k2_tarski(A,B) ).

fof(fc14_membered,axiom,
    ! [A,B] :
      ( ( v1_rat_1(B)
        & v1_rat_1(A) )
     => ( v3_membered(k2_tarski(A,B))
        & v2_membered(k2_tarski(A,B))
        & v1_membered(k2_tarski(A,B)) ) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) ).

fof(fc10_membered,axiom,
    ! [A] :
      ( ( v1_membered(k1_tarski(A))
        & v2_membered(k1_tarski(A))
        & v4_membered(k1_tarski(A))
        & v3_membered(k1_tarski(A)) )
     <= v1_int_1(A) ) ).

fof(cc1_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( v1_funct_1(C)
          & v1_funct_2(C,A,B) )
       <= ( v1_funct_1(C)
          & v1_partfun1(C,A,B) ) )
     <= m1_relset_1(C,A,B) ) ).

fof(fc32_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v1_membered(k3_xboole_0(B,A))
        & v3_membered(k3_xboole_0(B,A))
        & v2_membered(k3_xboole_0(B,A)) ) ) ).

fof(dt_u1_lattices,axiom,
    ! [A] :
      ( ( v1_funct_1(u1_lattices(A))
        & v1_funct_2(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & m2_relset_1(u1_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A)) )
     <= l1_lattices(A) ) ).

fof(abstractness_v3_lattices,axiom,
    ! [A] :
      ( l3_lattices(A)
     => ( v3_lattices(A)
       => g3_lattices(u1_struct_0(A),u2_lattices(A),u1_lattices(A)) = A ) ) ).

fof(cc10_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => v1_xcmplx_0(B) ) ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & v1_finset_1(B)
          & ~ v1_xboole_0(B) )
     <= ~ v1_xboole_0(A) ) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : l1_struct_0(A) ).

fof(commutativity_k3_lopclset,axiom,
    ! [A,B,C] :
      ( k3_lopclset(A,C,B) = k3_lopclset(A,B,C)
     <= ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(C,k1_lopclset(A))
        & m1_subset_1(B,k1_lopclset(A))
        & ~ v3_struct_0(A) ) ) ).

fof(redefinition_k3_lopclset,axiom,
    ! [A,B,C] :
      ( ( v2_pre_topc(A)
        & m1_subset_1(B,k1_lopclset(A))
        & m1_subset_1(C,k1_lopclset(A))
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => k3_xboole_0(B,C) = k3_lopclset(A,B,C) ) ).

fof(fc35_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(k3_xboole_0(A,B))
        & v2_membered(k3_xboole_0(A,B))
        & v5_membered(k3_xboole_0(A,B))
        & v4_membered(k3_xboole_0(A,B))
        & v3_membered(k3_xboole_0(A,B)) )
     <= v5_membered(A) ) ).

fof(rc1_membered,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_membered(A)
      & v3_membered(A)
      & v5_membered(A)
      & v4_membered(A)
      & v2_membered(A) ) ).

fof(cc3_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => v2_membered(A) ) ).

fof(idempotence_k3_lopclset,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & m1_subset_1(C,k1_lopclset(A))
        & m1_subset_1(B,k1_lopclset(A))
        & v2_pre_topc(A) )
     => k3_lopclset(A,B,B) = B ) ).

fof(dt_k1_binop_1,axiom,
    $true ).

fof(existence_m2_subset_1,axiom,
    ! [A,B] :
      ( ? [C] : m2_subset_1(C,A,B)
     <= ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(A)) ) ) ).

fof(cc15_membered,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => ( v2_membered(A)
        & v3_membered(A)
        & v4_membered(A)
        & v5_membered(A)
        & v1_membered(A) ) ) ).

fof(d2_lattices,axiom,
    ! [A] :
      ( ( l1_lattices(A)
        & ~ v3_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k2_lattices(A,B,C) = k2_binop_1(u1_struct_0(A),u1_struct_0(A),u1_struct_0(A),u1_lattices(A),B,C) ) ) ) ).

fof(cc4_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => v1_membered(A) ) ).

fof(dt_k2_lattices,axiom,
    ! [A,B,C] :
      ( m1_subset_1(k2_lattices(A,B,C),u1_struct_0(A))
     <= ( m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(B,u1_struct_0(A))
        & l1_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k4_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & v6_lattices(A) )
     => m1_subset_1(k4_lattices(A,B,C),u1_struct_0(A)) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) ).

fof(dt_m2_subset_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( m2_subset_1(C,A,B)
         => m1_subset_1(C,A) )
     <= ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(A)) ) ) ).

fof(fc27_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(k3_xboole_0(A,B)) ) ).

fof(dt_k3_lopclset,axiom,
    ! [A,B,C] :
      ( m2_subset_1(k3_lopclset(A,B,C),k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
     <= ( v2_pre_topc(A)
        & m1_subset_1(C,k1_lopclset(A))
        & m1_subset_1(B,k1_lopclset(A))
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(cc6_funct_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( m1_relset_1(C,A,B)
         => ( ( v1_funct_2(C,A,B)
              & v1_funct_1(C) )
           => ( v1_funct_2(C,A,B)
              & v1_partfun1(C,A,B)
              & ~ v1_xboole_0(C)
              & v1_funct_1(C) ) ) )
     <= ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) ) ) ).

fof(cc14_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_xcmplx_0(B)
            & v4_ordinal2(B)
            & v1_xreal_0(B)
            & v1_rat_1(B)
            & v1_int_1(B) )
         <= m1_subset_1(B,A) )
     <= v5_membered(A) ) ).

fof(redefinition_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_relset_1(D,k2_zfmisc_1(A,B),C)
        & m1_subset_1(E,A)
        & m1_subset_1(F,B)
        & v1_funct_2(D,k2_zfmisc_1(A,B),C)
        & v1_funct_1(D) )
     => k1_binop_1(D,E,F) = k2_binop_1(A,B,C,D,E,F) ) ).

fof(dt_l3_lattices,axiom,
    ! [A] :
      ( l3_lattices(A)
     => ( l1_lattices(A)
        & l2_lattices(A) ) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) ).

fof(cc20_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( v1_membered(B)
            & v4_membered(B)
            & v5_membered(B)
            & v3_membered(B)
            & v2_membered(B) ) ) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(fc31_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v2_membered(k3_xboole_0(A,B))
        & v3_membered(k3_xboole_0(A,B))
        & v1_membered(k3_xboole_0(A,B)) ) ) ).

fof(cc16_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( v1_membered(B)
         <= m1_subset_1(B,k1_zfmisc_1(A)) )
     <= v1_membered(A) ) ).

fof(dt_k6_lopclset,axiom,
    ! [A] :
      ( ( v10_lattices(k6_lopclset(A))
        & l3_lattices(k6_lopclset(A))
        & ~ v3_struct_0(k6_lopclset(A)) )
     <= ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(d1_binop_1,axiom,
    ! [A] :
      ( ! [B,C] : k1_binop_1(A,B,C) = k1_funct_1(A,k4_tarski(B,C))
     <= ( v1_relat_1(A)
        & v1_funct_1(A) ) ) ).

fof(fc28_membered,axiom,
    ! [A,B] :
      ( v1_membered(k3_xboole_0(B,A))
     <= v1_membered(A) ) ).

fof(fc29_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(k3_xboole_0(A,B))
        & v2_membered(k3_xboole_0(A,B)) )
     <= v2_membered(A) ) ).

fof(cc12_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_rat_1(B)
            & v1_xreal_0(B)
            & v1_xcmplx_0(B) )
         <= m1_subset_1(B,A) )
     <= v3_membered(A) ) ).

fof(fc15_membered,axiom,
    ! [A,B] :
      ( ( v4_membered(k2_tarski(A,B))
        & v3_membered(k2_tarski(A,B))
        & v2_membered(k2_tarski(A,B))
        & v1_membered(k2_tarski(A,B)) )
     <= ( v1_int_1(B)
        & v1_int_1(A) ) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(commutativity_k4_lattices,axiom,
    ! [A,B,C] :
      ( k4_lattices(A,B,C) = k4_lattices(A,C,B)
     <= ( l1_lattices(A)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(B,u1_struct_0(A))
        & v6_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ~ v1_xboole_0(u1_struct_0(A))
     <= ( l1_struct_0(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(fc11_membered,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ( v1_membered(k1_tarski(A))
        & v2_membered(k1_tarski(A))
        & v3_membered(k1_tarski(A))
        & v5_membered(k1_tarski(A))
        & v4_membered(k1_tarski(A)) ) ) ).

fof(d1_lopclset,axiom,
    ! [A] :
      ( a_1_0_lopclset(A) = k1_lopclset(A)
     <= ( l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) ).

fof(fc16_membered,axiom,
    ! [A,B] :
      ( ( v3_membered(k2_tarski(A,B))
        & v5_membered(k2_tarski(A,B))
        & v4_membered(k2_tarski(A,B))
        & v2_membered(k2_tarski(A,B))
        & v1_membered(k2_tarski(A,B)) )
     <= ( v4_ordinal2(B)
        & v4_ordinal2(A) ) ) ).

fof(dt_u2_lattices,axiom,
    ! [A] :
      ( l2_lattices(A)
     => ( v1_funct_2(u2_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & m2_relset_1(u2_lattices(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & v1_funct_1(u2_lattices(A)) ) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( ~ v3_struct_0(A)
      & l1_struct_0(A) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => v1_finset_1(A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : r1_tarski(A,A) ).

fof(rc6_lattices,axiom,
    ? [A] :
      ( l3_lattices(A)
      & ~ v3_struct_0(A)
      & v3_lattices(A) ) ).

fof(fc36_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v5_membered(k3_xboole_0(B,A))
        & v4_membered(k3_xboole_0(B,A))
        & v3_membered(k3_xboole_0(B,A))
        & v2_membered(k3_xboole_0(B,A))
        & v1_membered(k3_xboole_0(B,A)) ) ) ).

fof(cc19_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( ( v1_membered(B)
            & v3_membered(B)
            & v4_membered(B)
            & v2_membered(B) )
         <= m1_subset_1(B,k1_zfmisc_1(A)) ) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( v1_xboole_0(B)
        & B != A
        & v1_xboole_0(A) ) ).

fof(fc34_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(k3_xboole_0(B,A))
        & v4_membered(k3_xboole_0(B,A))
        & v3_membered(k3_xboole_0(B,A))
        & v2_membered(k3_xboole_0(B,A)) )
     <= v4_membered(A) ) ).

fof(fc9_membered,axiom,
    ! [A] :
      ( v1_rat_1(A)
     => ( v3_membered(k1_tarski(A))
        & v2_membered(k1_tarski(A))
        & v1_membered(k1_tarski(A)) ) ) ).

fof(cc1_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     <= v5_membered(A) ) ).

fof(fc10_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(B)
     => v1_finset_1(k3_xboole_0(A,B)) ) ).

fof(redefinition_k4_lattices,axiom,
    ! [A,B,C] :
      ( k2_lattices(A,B,C) = k4_lattices(A,B,C)
     <= ( v6_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & l1_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(fraenkel_a_1_0_lopclset,axiom,
    ! [A,B] :
      ( ( r2_hidden(A,a_1_0_lopclset(B))
      <=> ? [C] :
            ( C = A
            & v4_pre_topc(C,B)
            & v3_pre_topc(C,B)
            & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) ) )
     <= ( l1_pre_topc(B)
        & ~ v3_struct_0(B) ) ) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( v1_finset_1(A)
      & ~ v1_xboole_0(A) ) ).

fof(dt_l2_lattices,axiom,
    ! [A] :
      ( l2_lattices(A)
     => l1_struct_0(A) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
    <=> m1_relset_1(C,A,B) ) ).

fof(existence_l1_pre_topc,axiom,
    ? [A] : l1_pre_topc(A) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( r2_hidden(A,B)
        | v1_xboole_0(B) )
     <= m1_subset_1(A,B) ) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : k3_xboole_0(A,B) = k3_xboole_0(B,A) ).

fof(d5_tarski,axiom,
    ! [A,B] : k2_tarski(k2_tarski(A,B),k1_tarski(A)) = k4_tarski(A,B) ).

fof(fc8_membered,axiom,
    ! [A] :
      ( ( v2_membered(k1_tarski(A))
        & v1_membered(k1_tarski(A)) )
     <= v1_xreal_0(A) ) ).

fof(existence_l1_lattices,axiom,
    ? [A] : l1_lattices(A) ).

fof(cc17_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( v1_membered(B)
            & v2_membered(B) ) )
     <= v2_membered(A) ) ).

fof(cc2_finsub_1,axiom,
    ! [A] :
      ( v4_finsub_1(A)
     <= ( v3_finsub_1(A)
        & v1_finsub_1(A) ) ) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( ( v1_finset_1(B)
        & v1_finset_1(A) )
     => v1_finset_1(k2_zfmisc_1(A,B)) ) ).

fof(rc7_pre_topc,axiom,
    ! [A] :
      ( ( l1_pre_topc(A)
        & v2_pre_topc(A)
        & ~ v3_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v4_pre_topc(B,A) ) ) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( ! [B] :
          ( v1_finset_1(B)
         <= m1_subset_1(B,k1_zfmisc_1(A)) )
     <= v1_finset_1(A) ) ).

fof(fc33_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(k3_xboole_0(A,B))
        & v4_membered(k3_xboole_0(A,B))
        & v3_membered(k3_xboole_0(A,B))
        & v1_membered(k3_xboole_0(A,B)) )
     <= v4_membered(A) ) ).

fof(fc30_membered,axiom,
    ! [A,B] :
      ( v2_membered(A)
     => ( v1_membered(k3_xboole_0(B,A))
        & v2_membered(k3_xboole_0(B,A)) ) ) ).

fof(fc2_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(k2_tarski(A,B))
      & ~ v1_xboole_0(k2_tarski(A,B)) ) ).

fof(dt_g3_lattices,axiom,
    ! [A,B,C] :
      ( ( l3_lattices(g3_lattices(A,B,C))
        & v3_lattices(g3_lattices(A,B,C)) )
     <= ( m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(C,k2_zfmisc_1(A,A),A)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & v1_funct_1(C)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & v1_funct_1(B) ) ) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(fc1_finsub_1,axiom,
    ! [A] :
      ( v1_finsub_1(k1_zfmisc_1(A))
      & v3_finsub_1(k1_zfmisc_1(A))
      & v4_finsub_1(k1_zfmisc_1(A))
      & ~ v1_xboole_0(k1_zfmisc_1(A)) ) ).

fof(cc13_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ( v1_xcmplx_0(B)
            & v1_int_1(B)
            & v1_rat_1(B)
            & v1_xreal_0(B) ) ) ) ).

fof(cc2_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     <= v4_membered(A) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(d4_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)) = k6_lopclset(A) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( v1_xboole_0(B)
        & r2_hidden(A,B) ) ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( v1_finset_1(B)
          & ~ v1_xboole_0(B)
          & m1_subset_1(B,k1_zfmisc_1(A)) )
     <= ~ v1_xboole_0(A) ) ).

fof(cc2_lattices,axiom,
    ! [A] :
      ( ( ( ~ v3_struct_0(A)
          & v6_lattices(A)
          & v8_lattices(A)
          & v9_lattices(A)
          & v7_lattices(A)
          & v5_lattices(A)
          & v4_lattices(A) )
       => ( v10_lattices(A)
          & ~ v3_struct_0(A) ) )
     <= l3_lattices(A) ) ).

fof(fc3_lattices,axiom,
    ! [A,B,C] :
      ( ( v3_lattices(g3_lattices(A,B,C))
        & ~ v3_struct_0(g3_lattices(A,B,C)) )
     <= ( ~ v1_xboole_0(A)
        & v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(C,k2_zfmisc_1(A,A),A)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & v1_funct_1(C) ) ) ).

fof(dt_l1_pre_topc,axiom,
    ! [A] :
      ( l1_struct_0(A)
     <= l1_pre_topc(A) ) ).

fof(rc3_lattices,axiom,
    ? [A] :
      ( l3_lattices(A)
      & v3_lattices(A) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(cc5_funct_2,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ! [C] :
          ( ( ( v1_funct_1(C)
              & v1_funct_2(C,A,B)
              & v1_partfun1(C,A,B) )
           <= ( v1_funct_1(C)
              & v1_funct_2(C,A,B) ) )
         <= m1_relset_1(C,A,B) ) ) ).

fof(t6_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A))))
         => ! [C] :
              ( ! [D] :
                  ( m2_subset_1(D,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
                 => ! [E] :
                      ( ( ( D = B
                          & E = C )
                       => k2_lattices(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)),B,C) = k3_lopclset(A,D,E) )
                     <= m2_subset_1(E,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A)) ) )
             <= m1_subset_1(C,u1_struct_0(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)))) ) ) ) ).

fof(fc1_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ~ v1_xboole_0(k1_lopclset(A)) ) ).

fof(fc11_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(k3_xboole_0(A,B))
     <= v1_finset_1(A) ) ).

fof(dt_l1_lattices,axiom,
    ! [A] :
      ( l1_struct_0(A)
     <= l1_lattices(A) ) ).

fof(fc13_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(k2_tarski(A,B))
        & v2_membered(k2_tarski(A,B)) )
     <= ( v1_xreal_0(A)
        & v1_xreal_0(B) ) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( v1_xboole_0(C)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & r2_hidden(A,B) ) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(cc11_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( m1_subset_1(B,A)
         => ( v1_xreal_0(B)
            & v1_xcmplx_0(B) ) )
     <= v2_membered(A) ) ).

fof(rc9_lattices,axiom,
    ? [A] :
      ( v5_lattices(A)
      & v6_lattices(A)
      & v10_lattices(A)
      & v9_lattices(A)
      & v8_lattices(A)
      & v7_lattices(A)
      & v4_lattices(A)
      & v3_lattices(A)
      & ~ v3_struct_0(A)
      & l3_lattices(A) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> m1_subset_1(A,k1_zfmisc_1(B)) ) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : A = k3_xboole_0(A,A) ).

fof(cc1_finsub_1,axiom,
    ! [A] :
      ( v4_finsub_1(A)
     => ( v1_finsub_1(A)
        & v3_finsub_1(A) ) ) ).

fof(rc1_funct_2,axiom,
    ! [A,B] :
    ? [C] :
      ( m1_relset_1(C,A,B)
      & v1_relat_1(C)
      & v1_funct_1(C)
      & v1_funct_2(C,A,B) ) ).

fof(t2_boole,axiom,
    ! [A] : k3_xboole_0(A,k1_xboole_0) = k1_xboole_0 ).

fof(t6_boole,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) ).

fof(cc18_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B) )
         <= m1_subset_1(B,k1_zfmisc_1(A)) )
     <= v3_membered(A) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( r2_hidden(C,A)
        <=> r2_hidden(C,B) )
     => A = B ) ).

fof(fc6_membered,axiom,
    ( v1_xboole_0(k1_xboole_0)
    & v1_membered(k1_xboole_0)
    & v2_membered(k1_xboole_0)
    & v5_membered(k1_xboole_0)
    & v4_membered(k1_xboole_0)
    & v3_membered(k1_xboole_0) ) ).

fof(cc1_lattices,axiom,
    ! [A] :
      ( l3_lattices(A)
     => ( ( v10_lattices(A)
          & ~ v3_struct_0(A) )
       => ( ~ v3_struct_0(A)
          & v4_lattices(A)
          & v9_lattices(A)
          & v8_lattices(A)
          & v7_lattices(A)
          & v6_lattices(A)
          & v5_lattices(A) ) ) ) ).

fof(existence_l3_lattices,axiom,
    ? [A] : l3_lattices(A) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ v1_xboole_0(B)
          & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     <= ( l1_struct_0(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k1_lopclset,axiom,
    ! [A] :
      ( m1_subset_1(k1_lopclset(A),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
     <= ( l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(existence_l2_lattices,axiom,
    ? [A] : l2_lattices(A) ).

fof(rc6_pre_topc,axiom,
    ! [A] :
      ( ( l1_pre_topc(A)
        & v2_pre_topc(A) )
     => ? [B] :
          ( v4_pre_topc(B,A)
          & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(fc12_membered,axiom,
    ! [A,B] :
      ( v1_membered(k2_tarski(A,B))
     <= ( v1_xcmplx_0(B)
        & v1_xcmplx_0(A) ) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( m1_subset_1(A,C)
     <= ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) ) ) ).

fof(t12_lopclset,conjecture,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => ! [B] :
          ( ! [C] :
              ( m1_subset_1(C,u1_struct_0(k6_lopclset(A)))
             => k3_xboole_0(B,C) = k4_lattices(k6_lopclset(A),B,C) )
         <= m1_subset_1(B,u1_struct_0(k6_lopclset(A))) ) ) ).

fof(dt_k4_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => ( v1_funct_1(k4_lopclset(A))
        & v1_funct_2(k4_lopclset(A),k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A))
        & m2_relset_1(k4_lopclset(A),k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A)) ) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(free_g3_lattices,axiom,
    ! [A,B,C] :
      ( ( m1_relset_1(C,k2_zfmisc_1(A,A),A)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & v1_funct_1(C)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & v1_funct_1(B) )
     => ! [D,E,F] :
          ( g3_lattices(D,E,F) = g3_lattices(A,B,C)
         => ( C = F
            & B = E
            & A = D ) ) ) ).

