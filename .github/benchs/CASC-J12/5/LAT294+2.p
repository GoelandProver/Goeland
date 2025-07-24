include('Axioms/SET007/SET007+0.ax').
include('Axioms/SET007/SET007+1.ax').
include('Axioms/SET007/SET007+2.ax').
include('Axioms/SET007/SET007+3.ax').
include('Axioms/SET007/SET007+4.ax').
include('Axioms/SET007/SET007+5.ax').
include('Axioms/SET007/SET007+6.ax').
include('Axioms/SET007/SET007+7.ax').
include('Axioms/SET007/SET007+9.ax').
include('Axioms/SET007/SET007+10.ax').
include('Axioms/SET007/SET007+11.ax').
include('Axioms/SET007/SET007+13.ax').
include('Axioms/SET007/SET007+14.ax').
include('Axioms/SET007/SET007+16.ax').
include('Axioms/SET007/SET007+17.ax').
include('Axioms/SET007/SET007+18.ax').
include('Axioms/SET007/SET007+20.ax').
include('Axioms/SET007/SET007+22.ax').
include('Axioms/SET007/SET007+23.ax').
include('Axioms/SET007/SET007+26.ax').
include('Axioms/SET007/SET007+32.ax').
include('Axioms/SET007/SET007+35.ax').
include('Axioms/SET007/SET007+117.ax').
include('Axioms/SET007/SET007+200.ax').
include('Axioms/SET007/SET007+205.ax').
include('Axioms/SET007/SET007+242.ax').
include('Axioms/SET007/SET007+253.ax').
include('Axioms/SET007/SET007+297.ax').
include('Axioms/SET007/SET007+375.ax').
fof(dt_k13_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l3_lattices(A)
        & m1_filter_0(B,A)
        & v10_lattices(A) )
     => m2_filter_2(k13_filter_2(A,B),k1_lattice2(A)) ) ).

fof(dt_k10_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(k10_filter_2(A,B))
        & m2_lattice4(k10_filter_2(A,B),k1_lattice2(A)) )
     <= ( v10_lattices(A)
        & l3_lattices(A)
        & ~ v1_xboole_0(B)
        & m2_lattice4(B,A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k7_filter_2,axiom,
    ! [A,B] :
      ( ( v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v3_struct_0(A) )
     => m1_subset_1(k7_filter_2(A,B),k1_zfmisc_1(u1_struct_0(k1_lattice2(A)))) ) ).

fof(redefinition_k24_filter_2,axiom,
    ! [A,B] :
      ( ( l3_lattices(A)
        & m2_nat_lat(B,A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) )
     => k1_lattice2(B) = k24_filter_2(A,B) ) ).

fof(symmetry_r1_filter_2,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A))
        & ~ v1_xboole_0(A) )
     => ( r1_filter_2(A,B,C)
       => r1_filter_2(A,C,B) ) ) ).

fof(dt_k18_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & v10_lattices(A) )
     => m2_filter_2(k18_filter_2(A,B),A) ) ).

fof(dt_k14_filter_2,axiom,
    ! [A,B] :
      ( ( m1_filter_0(B,k1_lattice2(A))
        & l3_lattices(A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) )
     => m2_filter_2(k14_filter_2(A,B),A) ) ).

fof(redefinition_k14_filter_2,axiom,
    ! [A,B] :
      ( k8_filter_2(A,B) = k14_filter_2(A,B)
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & m1_filter_0(B,k1_lattice2(A))
        & l3_lattices(A) ) ) ).

fof(dt_k20_filter_2,axiom,
    ! [A,B,C] :
      ( ( v10_lattices(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(C)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & l3_lattices(A)
        & ~ v3_struct_0(A) )
     => m1_subset_1(k20_filter_2(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) ).

fof(dt_k1_filter_2,axiom,
    ! [A] :
      ( ( l3_lattices(A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) )
     => m1_filter_2(k1_filter_2(A),A) ) ).

fof(dt_m2_filter_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) )
     => ! [B] :
          ( m2_filter_2(B,A)
         => ( m2_lattice4(B,A)
            & ~ v1_xboole_0(B) ) ) ) ).

fof(dt_k21_filter_2,axiom,
    ! [A,B,C] :
      ( m2_filter_2(k21_filter_2(A,B,C),A)
     <= ( ~ v3_struct_0(A)
        & v11_lattices(A)
        & m2_filter_2(C,A)
        & m2_filter_2(B,A)
        & l3_lattices(A)
        & v10_lattices(A) ) ) ).

fof(redefinition_m1_filter_2,axiom,
    ! [A] :
      ( ! [B] :
          ( m1_filter_2(B,A)
        <=> m1_filter_0(B,A) )
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) ) ) ).

fof(dt_k2_filter_2,axiom,
    ! [A,B] :
      ( ( v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & ~ v3_struct_0(A) )
     => m1_filter_2(k2_filter_2(A,B),A) ) ).

fof(t2_filter_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( ( m2_relset_1(D,k2_zfmisc_1(B,B),B)
                    & v1_funct_2(D,k2_zfmisc_1(B,B),B)
                    & v1_funct_1(D) )
                 => ! [E] :
                      ( m1_subset_1(E,A)
                     => ! [F] :
                          ( m2_subset_1(F,A,B)
                         => ( ( ( r3_binop_1(B,F,D)
                               <= r3_binop_1(A,E,C) )
                              & ( r2_binop_1(B,F,D)
                               <= r2_binop_1(A,E,C) )
                              & ( r1_binop_1(B,F,D)
                               <= r1_binop_1(A,E,C) ) )
                           <= ( k1_realset1(C,B) = D
                              & E = F ) ) ) ) )
             <= ( v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m2_relset_1(C,k2_zfmisc_1(A,A),A)
                & v1_funct_1(C) ) )
         <= ( m1_subset_1(B,k1_zfmisc_1(A))
            & ~ v1_xboole_0(B) ) ) ) ).

fof(redefinition_k2_filter_2,axiom,
    ! [A,B] :
      ( k2_filter_0(A,B) = k2_filter_2(A,B)
     <= ( m1_subset_1(B,u1_struct_0(A))
        & l3_lattices(A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(redefinition_r1_filter_2,axiom,
    ! [A,B,C] :
      ( ( r1_filter_2(A,B,C)
      <=> C = B )
     <= ( ~ v1_xboole_0(A)
        & m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) ) ) ).

fof(dt_k12_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(k12_filter_2(A,B))
        & m2_lattice4(k12_filter_2(A,B),A) )
     <= ( v10_lattices(A)
        & ~ v1_xboole_0(B)
        & m2_lattice4(B,k1_lattice2(A))
        & l3_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k8_filter_2,axiom,
    ! [A,B] :
      ( m1_subset_1(k8_filter_2(A,B),k1_zfmisc_1(u1_struct_0(A)))
     <= ( v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(k1_lattice2(A))))
        & ~ v3_struct_0(A) ) ) ).

fof(redefinition_k9_filter_2,axiom,
    ! [A,B] :
      ( k9_filter_2(A,B) = k7_filter_2(A,B)
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & m2_lattice4(B,A)
        & l3_lattices(A) ) ) ).

fof(dt_k16_filter_2,axiom,
    ! [A,B] :
      ( ( v10_lattices(A)
        & m2_filter_2(B,k1_lattice2(A))
        & l3_lattices(A)
        & ~ v3_struct_0(A) )
     => m1_filter_2(k16_filter_2(A,B),A) ) ).

fof(redefinition_k21_filter_2,axiom,
    ! [A,B,C] :
      ( ( l3_lattices(A)
        & m2_filter_2(C,A)
        & m2_filter_2(B,A)
        & v11_lattices(A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) )
     => k21_filter_2(A,B,C) = k20_filter_2(A,B,C) ) ).

fof(redefinition_k1_filter_2,axiom,
    ! [A] :
      ( k1_filter_2(A) = k1_filter_0(A)
     <= ( ~ v3_struct_0(A)
        & l3_lattices(A)
        & v10_lattices(A) ) ) ).

fof(existence_m2_filter_2,axiom,
    ! [A] :
      ( ? [B] : m2_filter_2(B,A)
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) ) ) ).

fof(dt_k11_filter_2,axiom,
    ! [A,B] :
      ( m2_lattice4(k11_filter_2(A,B),A)
     <= ( l3_lattices(A)
        & m2_lattice4(B,k1_lattice2(A))
        & v10_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(t1_filter_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( ( ( ( v2_binop_1(D,B)
                       <= v2_binop_1(C,A) )
                      & ( v3_binop_1(D,B)
                       <= v3_binop_1(C,A) )
                      & ( v1_binop_1(C,A)
                       => v1_binop_1(D,B) ) )
                   <= D = k1_realset1(C,B) )
                 <= ( v1_funct_1(D)
                    & m2_relset_1(D,k2_zfmisc_1(B,B),B)
                    & v1_funct_2(D,k2_zfmisc_1(B,B),B) ) )
             <= ( v1_funct_1(C)
                & m2_relset_1(C,k2_zfmisc_1(A,A),A)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A) ) )
         <= ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(A)) ) )
     <= ~ v1_xboole_0(A) ) ).

fof(reflexivity_r1_filter_2,axiom,
    ! [A,B,C] :
      ( r1_filter_2(A,B,B)
     <= ( ~ v1_xboole_0(A)
        & m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) ) ) ).

fof(dt_k6_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(k1_lattice2(A))) )
     => m1_subset_1(k6_filter_2(A,B),u1_struct_0(A)) ) ).

fof(redefinition_k10_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m2_lattice4(B,A)
        & ~ v1_xboole_0(B) )
     => k10_filter_2(A,B) = k7_filter_2(A,B) ) ).

fof(dt_k4_filter_2,axiom,
    ! [A,B,C] :
      ( m1_filter_2(k4_filter_2(A,B,C),A)
     <= ( v11_lattices(A)
        & m1_filter_0(B,A)
        & m1_filter_0(C,A)
        & l3_lattices(A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k5_filter_2,axiom,
    ! [A,B] :
      ( m1_subset_1(k5_filter_2(A,B),u1_struct_0(k1_lattice2(A)))
     <= ( l3_lattices(A)
        & m1_subset_1(B,u1_struct_0(A))
        & v10_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(redefinition_k15_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m2_filter_2(B,A) )
     => k7_filter_2(A,B) = k15_filter_2(A,B) ) ).

fof(redefinition_k16_filter_2,axiom,
    ! [A,B] :
      ( k8_filter_2(A,B) = k16_filter_2(A,B)
     <= ( v10_lattices(A)
        & m2_filter_2(B,k1_lattice2(A))
        & l3_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k15_filter_2,axiom,
    ! [A,B] :
      ( ( v10_lattices(A)
        & l3_lattices(A)
        & m2_filter_2(B,A)
        & ~ v3_struct_0(A) )
     => m1_filter_2(k15_filter_2(A,B),k1_lattice2(A)) ) ).

fof(dt_k9_filter_2,axiom,
    ! [A,B] :
      ( m2_lattice4(k9_filter_2(A,B),k1_lattice2(A))
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A)
        & m2_lattice4(B,A) ) ) ).

fof(redefinition_k13_filter_2,axiom,
    ! [A,B] :
      ( k7_filter_2(A,B) = k13_filter_2(A,B)
     <= ( v10_lattices(A)
        & m1_filter_0(B,A)
        & l3_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k24_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & m2_nat_lat(B,A)
        & l3_lattices(A) )
     => ( v3_lattices(k24_filter_2(A,B))
        & m2_nat_lat(k24_filter_2(A,B),k1_lattice2(A)) ) ) ).

fof(dt_k19_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l3_lattices(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & ~ v1_xboole_0(B)
        & v10_lattices(A) )
     => m2_filter_2(k19_filter_2(A,B),A) ) ).

fof(dt_k17_filter_2,axiom,
    ! [A] :
      ( ( v10_lattices(A)
        & l3_lattices(A)
        & ~ v3_struct_0(A) )
     => m2_filter_2(k17_filter_2(A),A) ) ).

fof(dt_k23_filter_2,axiom,
    ! [A,B] :
      ( m2_nat_lat(k23_filter_2(A,B),A)
     <= ( l3_lattices(A)
        & m2_lattice4(B,A)
        & ~ v1_xboole_0(B)
        & v10_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(redefinition_k3_filter_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & l3_lattices(A) )
     => k3_filter_0(A,B) = k3_filter_2(A,B) ) ).

fof(t4_filter_2,conjecture,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( m1_subset_1(B,k1_zfmisc_1(A))
            & ~ v1_xboole_0(B) )
         => ! [C] :
              ( ! [D] :
                  ( ! [E] :
                      ( ! [F] :
                          ( ( r6_binop_1(B,E,F)
                           <= ( r6_binop_1(A,C,D)
                              & k1_realset1(D,B) = F
                              & k1_realset1(C,B) = E ) )
                         <= ( v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m2_relset_1(F,k2_zfmisc_1(B,B),B)
                            & v1_funct_1(F) ) )
                     <= ( v1_funct_2(E,k2_zfmisc_1(B,B),B)
                        & m2_relset_1(E,k2_zfmisc_1(B,B),B)
                        & v1_funct_1(E) ) )
                 <= ( m2_relset_1(D,k2_zfmisc_1(A,A),A)
                    & v1_funct_2(D,k2_zfmisc_1(A,A),A)
                    & v1_funct_1(D) ) )
             <= ( v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & m2_relset_1(C,k2_zfmisc_1(A,A),A)
                & v1_funct_1(C) ) ) ) ) ).

fof(dt_k3_filter_2,axiom,
    ! [A,B] :
      ( m1_filter_2(k3_filter_2(A,B),A)
     <= ( l3_lattices(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v10_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(redefinition_k11_filter_2,axiom,
    ! [A,B] :
      ( ( v10_lattices(A)
        & m2_lattice4(B,k1_lattice2(A))
        & l3_lattices(A)
        & ~ v3_struct_0(A) )
     => k11_filter_2(A,B) = k8_filter_2(A,B) ) ).

fof(redefinition_k4_filter_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v11_lattices(A)
        & m1_filter_0(B,A)
        & m1_filter_0(C,A)
        & l3_lattices(A)
        & v10_lattices(A) )
     => k4_filter_2(A,B,C) = k5_filter_0(A,B,C) ) ).

fof(dt_k22_filter_2,axiom,
    ! [A,B,C] :
      ( ( l3_lattices(A)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(B,u1_struct_0(A))
        & v10_lattices(A)
        & ~ v3_struct_0(A) )
     => ( m2_lattice4(k22_filter_2(A,B,C),A)
        & ~ v1_xboole_0(k22_filter_2(A,B,C)) ) ) ).

fof(existence_m1_filter_2,axiom,
    ! [A] :
      ( ? [B] : m1_filter_2(B,A)
     <= ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & l3_lattices(A) ) ) ).

fof(redefinition_k12_filter_2,axiom,
    ! [A,B] :
      ( k12_filter_2(A,B) = k8_filter_2(A,B)
     <= ( v10_lattices(A)
        & l3_lattices(A)
        & m2_lattice4(B,k1_lattice2(A))
        & ~ v1_xboole_0(B)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_m1_filter_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m2_lattice4(B,A) )
         <= m1_filter_2(B,A) )
     <= ( v10_lattices(A)
        & l3_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(t3_filter_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ( m1_subset_1(B,k1_zfmisc_1(A))
            & ~ v1_xboole_0(B) )
         => ! [C] :
              ( ! [D] :
                  ( ( m2_relset_1(D,k2_zfmisc_1(A,A),A)
                    & v1_funct_2(D,k2_zfmisc_1(A,A),A)
                    & v1_funct_1(D) )
                 => ! [E] :
                      ( ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(B,B),B)
                            & m2_relset_1(F,k2_zfmisc_1(B,B),B) )
                         => ( ( ( r5_binop_1(B,E,F)
                               <= r5_binop_1(A,C,D) )
                              & ( r4_binop_1(A,C,D)
                               => r4_binop_1(B,E,F) ) )
                           <= ( k1_realset1(C,B) = E
                              & F = k1_realset1(D,B) ) ) )
                     <= ( v1_funct_2(E,k2_zfmisc_1(B,B),B)
                        & m2_relset_1(E,k2_zfmisc_1(B,B),B)
                        & v1_funct_1(E) ) ) )
             <= ( m2_relset_1(C,k2_zfmisc_1(A,A),A)
                & v1_funct_2(C,k2_zfmisc_1(A,A),A)
                & v1_funct_1(C) ) ) ) ) ).

