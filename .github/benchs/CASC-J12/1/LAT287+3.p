include('Axioms/SET007/SET007+0.ax').
include('Axioms/SET007/SET007+1.ax').
include('Axioms/SET007/SET007+2.ax').
include('Axioms/SET007/SET007+3.ax').
include('Axioms/SET007/SET007+4.ax').
include('Axioms/SET007/SET007+5.ax').
include('Axioms/SET007/SET007+6.ax').
include('Axioms/SET007/SET007+7.ax').
include('Axioms/SET007/SET007+8.ax').
include('Axioms/SET007/SET007+9.ax').
include('Axioms/SET007/SET007+10.ax').
include('Axioms/SET007/SET007+11.ax').
include('Axioms/SET007/SET007+13.ax').
include('Axioms/SET007/SET007+14.ax').
include('Axioms/SET007/SET007+15.ax').
include('Axioms/SET007/SET007+16.ax').
include('Axioms/SET007/SET007+17.ax').
include('Axioms/SET007/SET007+18.ax').
include('Axioms/SET007/SET007+19.ax').
include('Axioms/SET007/SET007+20.ax').
include('Axioms/SET007/SET007+21.ax').
include('Axioms/SET007/SET007+22.ax').
include('Axioms/SET007/SET007+23.ax').
include('Axioms/SET007/SET007+24.ax').
include('Axioms/SET007/SET007+25.ax').
include('Axioms/SET007/SET007+26.ax').
include('Axioms/SET007/SET007+31.ax').
include('Axioms/SET007/SET007+32.ax').
include('Axioms/SET007/SET007+33.ax').
include('Axioms/SET007/SET007+34.ax').
include('Axioms/SET007/SET007+35.ax').
include('Axioms/SET007/SET007+40.ax').
include('Axioms/SET007/SET007+48.ax').
include('Axioms/SET007/SET007+50.ax').
include('Axioms/SET007/SET007+51.ax').
include('Axioms/SET007/SET007+54.ax').
include('Axioms/SET007/SET007+55.ax').
include('Axioms/SET007/SET007+59.ax').
include('Axioms/SET007/SET007+60.ax').
include('Axioms/SET007/SET007+61.ax').
include('Axioms/SET007/SET007+64.ax').
include('Axioms/SET007/SET007+66.ax').
include('Axioms/SET007/SET007+67.ax').
include('Axioms/SET007/SET007+68.ax').
include('Axioms/SET007/SET007+71.ax').
include('Axioms/SET007/SET007+75.ax').
include('Axioms/SET007/SET007+76.ax').
include('Axioms/SET007/SET007+77.ax').
include('Axioms/SET007/SET007+79.ax').
include('Axioms/SET007/SET007+80.ax').
include('Axioms/SET007/SET007+86.ax').
include('Axioms/SET007/SET007+91.ax').
include('Axioms/SET007/SET007+117.ax').
include('Axioms/SET007/SET007+125.ax').
include('Axioms/SET007/SET007+126.ax').
include('Axioms/SET007/SET007+148.ax').
include('Axioms/SET007/SET007+159.ax').
include('Axioms/SET007/SET007+165.ax').
include('Axioms/SET007/SET007+170.ax').
include('Axioms/SET007/SET007+182.ax').
include('Axioms/SET007/SET007+186.ax').
include('Axioms/SET007/SET007+188.ax').
include('Axioms/SET007/SET007+190.ax').
include('Axioms/SET007/SET007+200.ax').
include('Axioms/SET007/SET007+202.ax').
include('Axioms/SET007/SET007+205.ax').
include('Axioms/SET007/SET007+206.ax').
include('Axioms/SET007/SET007+207.ax').
include('Axioms/SET007/SET007+209.ax').
include('Axioms/SET007/SET007+210.ax').
include('Axioms/SET007/SET007+211.ax').
include('Axioms/SET007/SET007+212.ax').
include('Axioms/SET007/SET007+213.ax').
include('Axioms/SET007/SET007+217.ax').
include('Axioms/SET007/SET007+218.ax').
include('Axioms/SET007/SET007+223.ax').
include('Axioms/SET007/SET007+224.ax').
include('Axioms/SET007/SET007+225.ax').
include('Axioms/SET007/SET007+227.ax').
include('Axioms/SET007/SET007+237.ax').
include('Axioms/SET007/SET007+241.ax').
include('Axioms/SET007/SET007+242.ax').
include('Axioms/SET007/SET007+246.ax').
include('Axioms/SET007/SET007+247.ax').
include('Axioms/SET007/SET007+248.ax').
include('Axioms/SET007/SET007+252.ax').
include('Axioms/SET007/SET007+253.ax').
include('Axioms/SET007/SET007+255.ax').
include('Axioms/SET007/SET007+256.ax').
include('Axioms/SET007/SET007+276.ax').
include('Axioms/SET007/SET007+278.ax').
include('Axioms/SET007/SET007+279.ax').
include('Axioms/SET007/SET007+280.ax').
include('Axioms/SET007/SET007+281.ax').
include('Axioms/SET007/SET007+293.ax').
include('Axioms/SET007/SET007+295.ax').
include('Axioms/SET007/SET007+297.ax').
include('Axioms/SET007/SET007+298.ax').
include('Axioms/SET007/SET007+299.ax').
include('Axioms/SET007/SET007+301.ax').
include('Axioms/SET007/SET007+308.ax').
include('Axioms/SET007/SET007+309.ax').
include('Axioms/SET007/SET007+311.ax').
include('Axioms/SET007/SET007+312.ax').
include('Axioms/SET007/SET007+317.ax').
include('Axioms/SET007/SET007+321.ax').
include('Axioms/SET007/SET007+322.ax').
include('Axioms/SET007/SET007+327.ax').
include('Axioms/SET007/SET007+335.ax').
include('Axioms/SET007/SET007+338.ax').
include('Axioms/SET007/SET007+339.ax').
include('Axioms/SET007/SET007+354.ax').
include('Axioms/SET007/SET007+363.ax').
include('Axioms/SET007/SET007+365.ax').
include('Axioms/SET007/SET007+370.ax').
include('Axioms/SET007/SET007+375.ax').
fof(commutativity_k3_lopclset,axiom,
    ! [A,B,C] :
      ( k3_lopclset(A,C,B) = k3_lopclset(A,B,C)
     <= ( m1_subset_1(B,k1_lopclset(A))
        & m1_subset_1(C,k1_lopclset(A))
        & l1_pre_topc(A)
        & v2_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(fraenkel_a_1_0_lopclset,axiom,
    ! [A,B] :
      ( ( r2_hidden(A,a_1_0_lopclset(B))
      <=> ? [C] :
            ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
            & v4_pre_topc(C,B)
            & v3_pre_topc(C,B)
            & A = C ) )
     <= ( l1_pre_topc(B)
        & ~ v3_struct_0(B) ) ) ).

fof(dt_k9_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & ~ v3_realset2(A)
        & l3_lattices(A)
        & v17_lattices(A) )
     => ( v1_funct_2(k9_lopclset(A),u1_struct_0(A),k1_zfmisc_1(k7_lopclset(A)))
        & m2_relset_1(k9_lopclset(A),u1_struct_0(A),k1_zfmisc_1(k7_lopclset(A)))
        & v1_funct_1(k9_lopclset(A)) ) ) ).

fof(t9_lopclset,axiom,
    ! [A] :
      ( ! [B] :
          ( m2_subset_1(B,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
         => m2_subset_1(k3_subset_1(u1_struct_0(A),B),k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A)) )
     <= ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & v2_pre_topc(A) ) ) ).

fof(commutativity_k2_lopclset,axiom,
    ! [A,B,C] :
      ( k2_lopclset(A,C,B) = k2_lopclset(A,B,C)
     <= ( m1_subset_1(C,k1_lopclset(A))
        & m1_subset_1(B,k1_lopclset(A))
        & l1_pre_topc(A)
        & v2_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(t8_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => m2_subset_1(k2_pre_topc(A),k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A)) ) ).

fof(idempotence_k2_lopclset,axiom,
    ! [A,B,C] :
      ( ( l1_pre_topc(A)
        & m1_subset_1(C,k1_lopclset(A))
        & m1_subset_1(B,k1_lopclset(A))
        & v2_pre_topc(A)
        & ~ v3_struct_0(A) )
     => k2_lopclset(A,B,B) = B ) ).

fof(t3_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => ! [B] :
          ( ( r2_hidden(B,k1_lopclset(A))
           => v4_pre_topc(B,A) )
         <= m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(t10_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ( v10_lattices(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)))
        & l3_lattices(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)))
        & ~ v3_struct_0(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A))) ) ) ).

fof(t6_lopclset,axiom,
    ! [A] :
      ( ! [B] :
          ( m1_subset_1(B,u1_struct_0(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A))))
         => ! [C] :
              ( ! [D] :
                  ( m2_subset_1(D,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
                 => ! [E] :
                      ( m2_subset_1(E,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
                     => ( k2_lattices(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)),B,C) = k3_lopclset(A,D,E)
                       <= ( C = E
                          & D = B ) ) ) )
             <= m1_subset_1(C,u1_struct_0(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)))) ) )
     <= ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k10_lopclset,axiom,
    $true ).

fof(dt_k1_lopclset,axiom,
    ! [A] :
      ( m1_subset_1(k1_lopclset(A),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
     <= ( l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(t11_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & v2_pre_topc(A) )
     => ! [B] :
          ( ! [C] :
              ( m1_subset_1(C,u1_struct_0(k6_lopclset(A)))
             => k3_lattices(k6_lopclset(A),B,C) = k2_xboole_0(B,C) )
         <= m1_subset_1(B,u1_struct_0(k6_lopclset(A))) ) ) ).

fof(d2_lopclset,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_funct_1(B)
            & m2_relset_1(B,k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A))
            & v1_funct_2(B,k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A)) )
         => ( k4_lopclset(A) = B
          <=> ! [C] :
                ( ! [D] :
                    ( k2_binop_1(k1_lopclset(A),k1_lopclset(A),k1_lopclset(A),B,C,D) = k2_lopclset(A,C,D)
                   <= m2_subset_1(D,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A)) )
               <= m2_subset_1(C,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A)) ) ) )
     <= ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) ) ) ).

fof(t2_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r2_hidden(B,k1_lopclset(A))
           => v3_pre_topc(B,A) ) ) ) ).

fof(dt_k13_lopclset,axiom,
    ! [A] :
      ( m1_lattice4(k13_lopclset(A),A,k12_lopclset(A))
     <= ( v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A)
        & ~ v3_realset2(A)
        & ~ v3_struct_0(A) ) ) ).

fof(t15_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => m1_subset_1(k2_pre_topc(A),u1_struct_0(k6_lopclset(A))) ) ).

fof(t16_lopclset,conjecture,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => m1_subset_1(k1_pre_topc(A),u1_struct_0(k6_lopclset(A))) ) ).

fof(dt_k5_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => ( v1_funct_1(k5_lopclset(A))
        & v1_funct_2(k5_lopclset(A),k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A))
        & m2_relset_1(k5_lopclset(A),k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A)) ) ) ).

fof(dt_k6_lopclset,axiom,
    ! [A] :
      ( ( v10_lattices(k6_lopclset(A))
        & l3_lattices(k6_lopclset(A))
        & ~ v3_struct_0(k6_lopclset(A)) )
     <= ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(d4_lopclset,axiom,
    ! [A] :
      ( k6_lopclset(A) = g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A))
     <= ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & v2_pre_topc(A) ) ) ).

fof(t14_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & v2_pre_topc(A) )
     => v17_lattices(k6_lopclset(A)) ) ).

fof(d1_lopclset,axiom,
    ! [A] :
      ( ( l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => a_1_0_lopclset(A) = k1_lopclset(A) ) ).

fof(t4_lopclset,axiom,
    ! [A] :
      ( ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( r2_hidden(B,k1_lopclset(A))
           <= ( v4_pre_topc(B,A)
              & v3_pre_topc(B,A) ) ) )
     <= ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(t1_lopclset,axiom,
    $true ).

fof(fc1_lopclset,axiom,
    ! [A] :
      ( ~ v1_xboole_0(k1_lopclset(A))
     <= ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & v2_pre_topc(A) ) ) ).

fof(redefinition_k9_lopclset,axiom,
    ! [A] :
      ( k9_lopclset(A) = k8_lopclset(A)
     <= ( ~ v3_struct_0(A)
        & v17_lattices(A)
        & ~ v3_realset2(A)
        & l3_lattices(A)
        & v10_lattices(A) ) ) ).

fof(t5_lopclset,axiom,
    ! [A] :
      ( ! [B] :
          ( m1_subset_1(B,u1_struct_0(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A))))
         => ! [C] :
              ( ! [D] :
                  ( m2_subset_1(D,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
                 => ! [E] :
                      ( ( ( C = E
                          & D = B )
                       => k1_lattices(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)),B,C) = k2_lopclset(A,D,E) )
                     <= m2_subset_1(E,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A)) ) )
             <= m1_subset_1(C,u1_struct_0(g3_lattices(k1_lopclset(A),k4_lopclset(A),k5_lopclset(A)))) ) )
     <= ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) ) ) ).

fof(dt_k3_lopclset,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_lopclset(A))
        & m1_subset_1(C,k1_lopclset(A)) )
     => m2_subset_1(k3_lopclset(A,B,C),k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A)) ) ).

fof(redefinition_k3_lopclset,axiom,
    ! [A,B,C] :
      ( k3_xboole_0(B,C) = k3_lopclset(A,B,C)
     <= ( v2_pre_topc(A)
        & m1_subset_1(C,k1_lopclset(A))
        & m1_subset_1(B,k1_lopclset(A))
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(t12_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & v2_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(k6_lopclset(A)))
         => ! [C] :
              ( k4_lattices(k6_lopclset(A),B,C) = k3_xboole_0(B,C)
             <= m1_subset_1(C,u1_struct_0(k6_lopclset(A))) ) ) ) ).

fof(t13_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => u1_struct_0(k6_lopclset(A)) = k1_lopclset(A) ) ).

fof(idempotence_k3_lopclset,axiom,
    ! [A,B,C] :
      ( k3_lopclset(A,B,B) = B
     <= ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_lopclset(A))
        & m1_subset_1(C,k1_lopclset(A))
        & ~ v3_struct_0(A) ) ) ).

fof(dt_k11_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v10_lattices(A)
        & v17_lattices(A)
        & l3_lattices(A)
        & ~ v3_realset2(A) )
     => ( v1_pre_topc(k11_lopclset(A))
        & v2_pre_topc(k11_lopclset(A))
        & l1_pre_topc(k11_lopclset(A)) ) ) ).

fof(dt_k8_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v17_lattices(A)
        & ~ v3_realset2(A)
        & l3_lattices(A)
        & v10_lattices(A) )
     => ( v1_relat_1(k8_lopclset(A))
        & v1_funct_1(k8_lopclset(A)) ) ) ).

fof(dt_k4_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_pre_topc(A)
        & v2_pre_topc(A) )
     => ( m2_relset_1(k4_lopclset(A),k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A))
        & v1_funct_2(k4_lopclset(A),k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A))
        & v1_funct_1(k4_lopclset(A)) ) ) ).

fof(dt_k2_lopclset,axiom,
    ! [A,B,C] :
      ( m2_subset_1(k2_lopclset(A,B,C),k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
     <= ( v2_pre_topc(A)
        & m1_subset_1(C,k1_lopclset(A))
        & m1_subset_1(B,k1_lopclset(A))
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) ) ) ).

fof(redefinition_k2_lopclset,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & m1_subset_1(B,k1_lopclset(A))
        & m1_subset_1(C,k1_lopclset(A))
        & l1_pre_topc(A)
        & v2_pre_topc(A) )
     => k2_xboole_0(B,C) = k2_lopclset(A,B,C) ) ).

fof(dt_k12_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(k12_lopclset(A))
        & l3_lattices(k12_lopclset(A))
        & v10_lattices(k12_lopclset(A)) )
     <= ( v10_lattices(A)
        & l3_lattices(A)
        & ~ v3_realset2(A)
        & v17_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(redefinition_k13_lopclset,axiom,
    ! [A] :
      ( k13_lopclset(A) = k8_lopclset(A)
     <= ( l3_lattices(A)
        & ~ v3_realset2(A)
        & v17_lattices(A)
        & v10_lattices(A)
        & ~ v3_struct_0(A) ) ) ).

fof(t7_lopclset,axiom,
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A)
        & ~ v3_struct_0(A) )
     => m2_subset_1(k1_pre_topc(A),k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A)) ) ).

fof(d3_lopclset,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A))
            & m2_relset_1(B,k2_zfmisc_1(k1_lopclset(A),k1_lopclset(A)),k1_lopclset(A)) )
         => ( k5_lopclset(A) = B
          <=> ! [C] :
                ( m2_subset_1(C,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
               => ! [D] :
                    ( m2_subset_1(D,k1_zfmisc_1(u1_struct_0(A)),k1_lopclset(A))
                   => k3_lopclset(A,C,D) = k2_binop_1(k1_lopclset(A),k1_lopclset(A),k1_lopclset(A),B,C,D) ) ) ) ) ) ).

fof(dt_k7_lopclset,axiom,
    ! [A] :
      ( m1_subset_1(k7_lopclset(A),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
     <= ( ~ v3_struct_0(A)
        & v17_lattices(A)
        & ~ v3_realset2(A)
        & l3_lattices(A)
        & v10_lattices(A) ) ) ).

