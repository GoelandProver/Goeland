%------------------------------------------------------------------------------
% File     : TOP039+1 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Topology
% Problem  : Maximal Kolmogorov Subspaces of a Topological Space T32
% Version  : [Urb08] axioms : Especial.
% English  :

% Refs     : [Kar96] Karno (1996), Maximal Kolmogorov Subspaces of a Topolo
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : t32_tsp_2 [Urb08]

% Status   : Theorem
% Rating   : 0.83 v8.1.0, 0.75 v7.5.0, 0.88 v7.4.0, 0.73 v7.3.0, 0.79 v7.1.0, 0.74 v7.0.0, 0.83 v6.4.0, 0.81 v6.3.0, 0.79 v6.2.0, 0.92 v6.1.0, 1.00 v6.0.0, 0.96 v5.4.0, 1.00 v5.0.0, 0.96 v4.1.0, 1.00 v3.4.0
% Syntax   : Number of formulae    :  122 (  20 unt;   0 def)
%            Number of atoms       :  575 (  16 equ)
%            Maximal formula atoms :   15 (   4 avg)
%            Number of connectives :  564 ( 111   ~;   3   |; 279   &)
%                                         (   4 <=>; 167  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   6 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   44 (  42 usr;   1 prp; 0-3 aty)
%            Number of functors    :   11 (  11 usr;   1 con; 0-4 aty)
%            Number of variables   :  222 ( 203   !;  19   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Normal version: includes the axioms (which may be theorems from
%            other articles) and background that are possibly necessary.
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : The problem encoding is based on set theory.
%------------------------------------------------------------------------------
fof(t32_tsp_2,conjecture,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v2_tsp_2(B,A)
            & m2_tsp_1(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( ( v3_pre_topc(C,A)
                      | v3_pre_topc(D,A) )
                   => k4_pre_topc(A,B,k4_tsp_2(A,B),k5_subset_1(u1_struct_0(A),C,D)) = k5_subset_1(u1_struct_0(B),k4_pre_topc(A,B,k4_tsp_2(A,B),C),k4_pre_topc(A,B,k4_tsp_2(A,B),D)) ) ) ) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) ).

fof(cc10_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => v1_xcmplx_0(B) ) ) ).

fof(cc10_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & v2_pre_topc(A)
          & ~ v1_tdlat_3(A)
          & v2_t_0topsp(A) )
       => ( ~ v3_struct_0(A)
          & ~ v3_realset2(A)
          & v2_pre_topc(A)
          & ~ v1_tdlat_3(A)
          & ~ v2_tdlat_3(A)
          & ~ v3_tdlat_3(A) ) ) ) ).

fof(cc10_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( v2_tex_2(B,A)
              & v2_tsp_2(B,A) )
           => ( v2_pre_topc(B)
              & ~ v1_borsuk_1(B,A) ) ) ) ) ).

fof(cc11_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B) ) ) ) ).

fof(cc11_tsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & v2_t_0topsp(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ~ v3_struct_0(B)
           => ( ~ v3_struct_0(B)
              & v2_t_0topsp(B) ) ) ) ) ).

fof(cc12_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_rat_1(B) ) ) ) ).

fof(cc12_tsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & ~ v2_t_0topsp(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( ~ v3_struct_0(B)
              & ~ v2_tex_2(B,A) )
           => ( ~ v3_struct_0(B)
              & ~ v3_realset2(B)
              & ~ v2_t_0topsp(B) ) ) ) ) ).

fof(cc13_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) ).

fof(cc13_tsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & ~ v2_t_0topsp(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( ~ v3_struct_0(B)
              & v2_t_0topsp(B) )
           => ( ~ v3_struct_0(B)
              & v2_tex_2(B,A) ) ) ) ) ).

fof(cc14_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ( v1_xcmplx_0(B)
            & v4_ordinal2(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) ).

fof(cc15_membered,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => ( v1_membered(A)
        & v2_membered(A)
        & v3_membered(A)
        & v4_membered(A)
        & v5_membered(A) ) ) ).

fof(cc16_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_membered(B) ) ) ).

fof(cc17_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( v1_membered(B)
            & v2_membered(B) ) ) ) ).

fof(cc18_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B) ) ) ) ).

fof(cc19_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v4_membered(B) ) ) ) ).

fof(cc1_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => v4_membered(A) ) ).

fof(cc1_pre_topc,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => v2_pre_topc(B) ) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) ).

fof(cc1_tops_1,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_xboole_0(B)
           => ( v3_pre_topc(B,A)
              & v4_pre_topc(B,A) ) ) ) ) ).

fof(cc1_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_t_0topsp(A) ) ) ) ).

fof(cc1_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( ~ v3_struct_0(B)
              & v2_tsp_2(B,A) )
           => ( ~ v3_struct_0(B)
              & v2_t_0topsp(B) ) ) ) ) ).

fof(cc20_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v4_membered(B)
            & v5_membered(B) ) ) ) ).

fof(cc2_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => v3_membered(A) ) ).

fof(cc2_tops_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_xboole_0(B)
           => v2_tops_1(B,A) ) ) ) ).

fof(cc2_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & ~ v2_t_0topsp(A) )
       => ( ~ v3_struct_0(A)
          & ~ v3_realset2(A) ) ) ) ).

fof(cc2_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( ~ v3_struct_0(B)
              & ~ v2_t_0topsp(B) )
           => ( ~ v3_struct_0(B)
              & ~ v2_tsp_2(B,A) ) ) ) ) ).

fof(cc3_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => v2_membered(A) ) ).

fof(cc3_tops_1,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_xboole_0(B)
           => v3_tops_1(B,A) ) ) ) ).

fof(cc3_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & v2_pre_topc(A)
          & v1_tdlat_3(A) )
       => ( ~ v3_struct_0(A)
          & v2_pre_topc(A)
          & v2_t_0topsp(A) ) ) ) ).

fof(cc3_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( v2_tsp_2(B,A)
           => ( v2_pre_topc(B)
              & v1_tex_3(B,A) ) ) ) ) ).

fof(cc4_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => v1_membered(A) ) ).

fof(cc4_tops_1,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v3_tops_1(B,A)
           => v2_tops_1(B,A) ) ) ) ).

fof(cc4_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & v2_pre_topc(A)
          & ~ v2_t_0topsp(A) )
       => ( ~ v3_struct_0(A)
          & ~ v3_realset2(A)
          & v2_pre_topc(A)
          & ~ v1_tdlat_3(A) ) ) ) ).

fof(cc4_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ~ v1_tex_3(B,A)
           => ( v2_pre_topc(B)
              & ~ v2_tsp_2(B,A) ) ) ) ) ).

fof(cc5_tops_1,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( v4_pre_topc(B,A)
              & v2_tops_1(B,A) )
           => ( v2_tops_1(B,A)
              & v3_tops_1(B,A) ) ) ) ) ).

fof(cc5_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & ~ v3_realset2(A)
          & v2_pre_topc(A)
          & v2_tdlat_3(A) )
       => ( ~ v3_struct_0(A)
          & ~ v3_realset2(A)
          & v2_pre_topc(A)
          & ~ v2_t_0topsp(A) ) ) ) ).

fof(cc5_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( v1_tsep_1(B,A)
              & v2_tsp_2(B,A) )
           => ( v2_pre_topc(B)
              & ~ v2_tex_2(B,A) ) ) ) ) ).

fof(cc6_tops_1,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( v3_pre_topc(B,A)
              & v3_tops_1(B,A) )
           => ( v1_xboole_0(B)
              & v3_pre_topc(B,A)
              & v4_pre_topc(B,A)
              & v1_membered(B)
              & v2_membered(B)
              & v3_membered(B)
              & v4_membered(B)
              & v5_membered(B)
              & v2_tops_1(B,A)
              & v3_tops_1(B,A) ) ) ) ) ).

fof(cc6_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & v2_pre_topc(A)
          & v2_tdlat_3(A)
          & v2_t_0topsp(A) )
       => ( ~ v3_struct_0(A)
          & v3_realset2(A)
          & v2_pre_topc(A)
          & v1_tdlat_3(A)
          & v2_tdlat_3(A)
          & v3_tdlat_3(A)
          & v4_tdlat_3(A)
          & v5_tdlat_3(A)
          & v2_t_0topsp(A) ) ) ) ).

fof(cc6_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( v1_tsep_1(B,A)
              & v2_tex_2(B,A) )
           => ( v2_pre_topc(B)
              & ~ v2_tsp_2(B,A) ) ) ) ) ).

fof(cc7_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & ~ v3_realset2(A)
          & v2_pre_topc(A)
          & v2_t_0topsp(A) )
       => ( ~ v3_struct_0(A)
          & ~ v3_realset2(A)
          & v2_pre_topc(A)
          & ~ v2_tdlat_3(A) ) ) ) ).

fof(cc7_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( v2_tex_2(B,A)
              & v2_tsp_2(B,A) )
           => ( v2_pre_topc(B)
              & ~ v1_tsep_1(B,A) ) ) ) ) ).

fof(cc8_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & v2_pre_topc(A)
          & v3_tdlat_3(A)
          & v2_t_0topsp(A) )
       => ( ~ v3_struct_0(A)
          & v2_pre_topc(A)
          & v1_tdlat_3(A)
          & v3_tdlat_3(A)
          & v4_tdlat_3(A)
          & v5_tdlat_3(A)
          & v2_t_0topsp(A) ) ) ) ).

fof(cc8_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( v1_borsuk_1(B,A)
              & v2_tsp_2(B,A) )
           => ( v2_pre_topc(B)
              & ~ v2_tex_2(B,A) ) ) ) ) ).

fof(cc9_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ( ( ~ v3_struct_0(A)
          & v2_pre_topc(A)
          & ~ v1_tdlat_3(A)
          & v3_tdlat_3(A) )
       => ( ~ v3_struct_0(A)
          & ~ v3_realset2(A)
          & v2_pre_topc(A)
          & ~ v1_tdlat_3(A)
          & ~ v2_t_0topsp(A) ) ) ) ).

fof(cc9_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ( ( v2_tex_2(B,A)
              & v1_borsuk_1(B,A) )
           => ( v2_pre_topc(B)
              & ~ v2_tsp_2(B,A) ) ) ) ) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : k3_xboole_0(A,B) = k3_xboole_0(B,A) ).

fof(commutativity_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k5_subset_1(A,B,C) = k5_subset_1(A,C,B) ) ).

fof(d12_tsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v2_tsp_2(B,A)
            & m2_tsp_1(B,A) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                & v5_pre_topc(C,A,B)
                & m2_relset_1(C,u1_struct_0(A),u1_struct_0(B)) )
             => ( C = k4_tsp_2(A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                   => ( D = u1_struct_0(B)
                     => ! [E] :
                          ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(A)))
                         => k5_subset_1(u1_struct_0(A),D,k3_tex_4(A,E)) = k4_pre_topc(A,B,C,E) ) ) ) ) ) ) ) ).

fof(dt_k1_tsp_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(B)
        & v2_tsp_2(B,A)
        & m1_pre_topc(B,A) )
     => ( v1_funct_1(k1_tsp_2(A,B))
        & v1_funct_2(k1_tsp_2(A,B),u1_struct_0(A),u1_struct_0(B))
        & v5_pre_topc(k1_tsp_2(A,B),A,B)
        & m2_relset_1(k1_tsp_2(A,B),u1_struct_0(A),u1_struct_0(B)) ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_k3_tex_4,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k3_tex_4(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(dt_k4_pre_topc,axiom,
    ! [A,B,C,D] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B)) )
     => m1_subset_1(k4_pre_topc(A,B,C,D),k1_zfmisc_1(u1_struct_0(B))) ) ).

fof(dt_k4_tsp_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(B)
        & v2_tsp_2(B,A)
        & m1_pre_topc(B,A) )
     => ( v1_funct_1(k4_tsp_2(A,B))
        & v1_funct_2(k4_tsp_2(A,B),u1_struct_0(A),u1_struct_0(B))
        & v5_pre_topc(k4_tsp_2(A,B),A,B)
        & m2_relset_1(k4_tsp_2(A,B),u1_struct_0(A),u1_struct_0(B)) ) ) ).

fof(dt_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => m1_subset_1(k5_subset_1(A,B,C),k1_zfmisc_1(A)) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(dt_l1_pre_topc,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => l1_struct_0(A) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(dt_m1_pre_topc,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_pre_topc(B,A)
         => l1_pre_topc(B) ) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(dt_m2_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m2_tsp_1(B,A)
         => l1_pre_topc(B) ) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(existence_l1_pre_topc,axiom,
    ? [A] : l1_pre_topc(A) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : l1_struct_0(A) ).

fof(existence_m1_pre_topc,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ? [B] : m1_pre_topc(B,A) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : m1_subset_1(B,A) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) ).

fof(existence_m2_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ? [B] : m2_tsp_1(B,A) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) ).

fof(fc27_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(k3_xboole_0(A,B)) ) ).

fof(fc28_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(k3_xboole_0(B,A)) ) ).

fof(fc29_membered,axiom,
    ! [A,B] :
      ( v2_membered(A)
     => ( v1_membered(k3_xboole_0(A,B))
        & v2_membered(k3_xboole_0(A,B)) ) ) ).

fof(fc30_membered,axiom,
    ! [A,B] :
      ( v2_membered(A)
     => ( v1_membered(k3_xboole_0(B,A))
        & v2_membered(k3_xboole_0(B,A)) ) ) ).

fof(fc31_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v1_membered(k3_xboole_0(A,B))
        & v2_membered(k3_xboole_0(A,B))
        & v3_membered(k3_xboole_0(A,B)) ) ) ).

fof(fc32_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v1_membered(k3_xboole_0(B,A))
        & v2_membered(k3_xboole_0(B,A))
        & v3_membered(k3_xboole_0(B,A)) ) ) ).

fof(fc33_membered,axiom,
    ! [A,B] :
      ( v4_membered(A)
     => ( v1_membered(k3_xboole_0(A,B))
        & v2_membered(k3_xboole_0(A,B))
        & v3_membered(k3_xboole_0(A,B))
        & v4_membered(k3_xboole_0(A,B)) ) ) ).

fof(fc34_membered,axiom,
    ! [A,B] :
      ( v4_membered(A)
     => ( v1_membered(k3_xboole_0(B,A))
        & v2_membered(k3_xboole_0(B,A))
        & v3_membered(k3_xboole_0(B,A))
        & v4_membered(k3_xboole_0(B,A)) ) ) ).

fof(fc35_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v1_membered(k3_xboole_0(A,B))
        & v2_membered(k3_xboole_0(A,B))
        & v3_membered(k3_xboole_0(A,B))
        & v4_membered(k3_xboole_0(A,B))
        & v5_membered(k3_xboole_0(A,B)) ) ) ).

fof(fc36_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v1_membered(k3_xboole_0(B,A))
        & v2_membered(k3_xboole_0(B,A))
        & v3_membered(k3_xboole_0(B,A))
        & v4_membered(k3_xboole_0(B,A))
        & v5_membered(k3_xboole_0(B,A)) ) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ~ v1_xboole_0(k2_zfmisc_1(A,B)) ) ).

fof(fc6_membered,axiom,
    ( v1_xboole_0(k1_xboole_0)
    & v1_membered(k1_xboole_0)
    & v2_membered(k1_xboole_0)
    & v3_membered(k1_xboole_0)
    & v4_membered(k1_xboole_0)
    & v5_membered(k1_xboole_0) ) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : k3_xboole_0(A,A) = A ).

fof(idempotence_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k5_subset_1(A,B,B) = B ) ).

fof(rc1_membered,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_membered(A)
      & v2_membered(A)
      & v3_membered(A)
      & v4_membered(A)
      & v5_membered(A) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B) ) ) ).

fof(rc1_tops_1,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v3_pre_topc(B,A) ) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & v1_xboole_0(B) ) ).

fof(rc2_tops_1,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v3_pre_topc(B,A)
          & v4_pre_topc(B,A) ) ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( l1_struct_0(A)
      & ~ v3_struct_0(A) ) ).

fof(rc3_tops_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v3_pre_topc(B,A)
          & v4_pre_topc(B,A) ) ) ).

fof(rc4_tops_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v1_xboole_0(B)
          & v1_membered(B)
          & v2_membered(B)
          & v3_membered(B)
          & v4_membered(B)
          & v5_membered(B)
          & v2_tops_1(B,A) ) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B) ) ) ).

fof(rc5_tops_1,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v1_xboole_0(B)
          & v3_pre_topc(B,A)
          & v4_pre_topc(B,A)
          & v1_membered(B)
          & v2_membered(B)
          & v3_membered(B)
          & v4_membered(B)
          & v5_membered(B)
          & v2_tops_1(B,A)
          & v3_tops_1(B,A) ) ) ).

fof(rc6_pre_topc,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v4_pre_topc(B,A) ) ) ).

fof(rc7_pre_topc,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v4_pre_topc(B,A) ) ) ).

fof(redefinition_k4_pre_topc,axiom,
    ! [A,B,C,D] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B)) )
     => k4_pre_topc(A,B,C,D) = k9_relat_1(C,D) ) ).

fof(redefinition_k4_tsp_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(B)
        & v2_tsp_2(B,A)
        & m1_pre_topc(B,A) )
     => k4_tsp_2(A,B) = k1_tsp_2(A,B) ) ).

fof(redefinition_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k5_subset_1(A,B,C) = k3_xboole_0(B,C) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
    <=> m1_relset_1(C,A,B) ) ).

fof(redefinition_m2_tsp_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m2_tsp_1(B,A)
        <=> m1_pre_topc(B,A) ) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : r1_tarski(A,A) ).

fof(t16_xboole_1,axiom,
    ! [A,B,C] : k3_xboole_0(k3_xboole_0(A,B),C) = k3_xboole_0(A,k3_xboole_0(B,C)) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) ).

fof(t1_tsep_1,axiom,
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_pre_topc(B,A)
         => m1_subset_1(u1_struct_0(B),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(t2_boole,axiom,
    ! [A] : k3_xboole_0(A,k1_xboole_0) = k1_xboole_0 ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) ).

fof(t67_tex_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( v3_pre_topc(B,A)
                  | v3_pre_topc(C,A) )
               => k3_tex_4(A,k5_subset_1(u1_struct_0(A),B,C)) = k5_subset_1(u1_struct_0(A),k3_tex_4(A,B),k3_tex_4(A,C)) ) ) ) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( v1_xboole_0(A)
        & A != B
        & v1_xboole_0(B) ) ).

%------------------------------------------------------------------------------
