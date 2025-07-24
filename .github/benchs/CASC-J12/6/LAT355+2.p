include('Axioms/SET007/SET007+0.ax').
include('Axioms/SET007/SET007+1.ax').
include('Axioms/SET007/SET007+2.ax').
include('Axioms/SET007/SET007+3.ax').
include('Axioms/SET007/SET007+4.ax').
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
include('Axioms/SET007/SET007+23.ax').
include('Axioms/SET007/SET007+24.ax').
include('Axioms/SET007/SET007+25.ax').
include('Axioms/SET007/SET007+26.ax').
include('Axioms/SET007/SET007+31.ax').
include('Axioms/SET007/SET007+34.ax').
include('Axioms/SET007/SET007+35.ax').
include('Axioms/SET007/SET007+40.ax').
include('Axioms/SET007/SET007+48.ax').
include('Axioms/SET007/SET007+51.ax').
include('Axioms/SET007/SET007+54.ax').
include('Axioms/SET007/SET007+55.ax').
include('Axioms/SET007/SET007+59.ax').
include('Axioms/SET007/SET007+60.ax').
include('Axioms/SET007/SET007+61.ax').
include('Axioms/SET007/SET007+64.ax').
include('Axioms/SET007/SET007+67.ax').
include('Axioms/SET007/SET007+68.ax').
include('Axioms/SET007/SET007+76.ax').
include('Axioms/SET007/SET007+77.ax').
include('Axioms/SET007/SET007+79.ax').
include('Axioms/SET007/SET007+80.ax').
include('Axioms/SET007/SET007+91.ax').
include('Axioms/SET007/SET007+200.ax').
include('Axioms/SET007/SET007+202.ax').
include('Axioms/SET007/SET007+205.ax').
include('Axioms/SET007/SET007+206.ax').
include('Axioms/SET007/SET007+207.ax').
include('Axioms/SET007/SET007+210.ax').
include('Axioms/SET007/SET007+212.ax').
include('Axioms/SET007/SET007+213.ax').
include('Axioms/SET007/SET007+217.ax').
include('Axioms/SET007/SET007+218.ax').
include('Axioms/SET007/SET007+227.ax').
include('Axioms/SET007/SET007+237.ax').
include('Axioms/SET007/SET007+242.ax').
include('Axioms/SET007/SET007+256.ax').
include('Axioms/SET007/SET007+295.ax').
include('Axioms/SET007/SET007+301.ax').
include('Axioms/SET007/SET007+309.ax').
include('Axioms/SET007/SET007+311.ax').
include('Axioms/SET007/SET007+327.ax').
include('Axioms/SET007/SET007+335.ax').
include('Axioms/SET007/SET007+363.ax').
include('Axioms/SET007/SET007+384.ax').
include('Axioms/SET007/SET007+399.ax').
include('Axioms/SET007/SET007+401.ax').
include('Axioms/SET007/SET007+412.ax').
include('Axioms/SET007/SET007+427.ax').
include('Axioms/SET007/SET007+445.ax').
include('Axioms/SET007/SET007+448.ax').
include('Axioms/SET007/SET007+449.ax').
include('Axioms/SET007/SET007+463.ax').
include('Axioms/SET007/SET007+464.ax').
include('Axioms/SET007/SET007+480.ax').
include('Axioms/SET007/SET007+481.ax').
include('Axioms/SET007/SET007+483.ax').
include('Axioms/SET007/SET007+484.ax').
include('Axioms/SET007/SET007+485.ax').
include('Axioms/SET007/SET007+486.ax').
include('Axioms/SET007/SET007+488.ax').
include('Axioms/SET007/SET007+489.ax').
include('Axioms/SET007/SET007+493.ax').
include('Axioms/SET007/SET007+495.ax').
include('Axioms/SET007/SET007+496.ax').
include('Axioms/SET007/SET007+498.ax').
include('Axioms/SET007/SET007+500.ax').
include('Axioms/SET007/SET007+503.ax').
include('Axioms/SET007/SET007+505.ax').
include('Axioms/SET007/SET007+513.ax').
include('Axioms/SET007/SET007+525.ax').
include('Axioms/SET007/SET007+527.ax').
include('Axioms/SET007/SET007+530.ax').
include('Axioms/SET007/SET007+538.ax').
include('Axioms/SET007/SET007+542.ax').
include('Axioms/SET007/SET007+545.ax').
include('Axioms/SET007/SET007+559.ax').
include('Axioms/SET007/SET007+560.ax').
include('Axioms/SET007/SET007+682.ax').
include('Axioms/SET007/SET007+697.ax').
include('Axioms/SET007/SET007+698.ax').
fof(dt_k4_waybel34,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ( ~ v3_struct_0(k4_waybel34(A))
        & v6_altcat_1(k4_waybel34(A))
        & v11_altcat_1(k4_waybel34(A))
        & v12_altcat_1(k4_waybel34(A))
        & l2_altcat_1(k4_waybel34(A))
        & v2_yellow21(k4_waybel34(A))
        & v2_altcat_1(k4_waybel34(A)) ) ) ).

fof(d3_waybel34,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ! [B] :
          ( ! [C] :
              ( ( v1_funct_1(C)
                & m2_relset_1(C,u1_struct_0(A),u1_struct_0(B))
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B)) )
             => k3_waybel34(A,B,C) = C )
         <= l1_orders_2(B) ) ) ).

fof(dt_k8_waybel34,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(k8_waybel34(A))
        & v6_altcat_1(k8_waybel34(A))
        & v3_altcat_2(k8_waybel34(A),k4_waybel34(A))
        & m1_altcat_2(k8_waybel34(A),k4_waybel34(A))
        & v2_altcat_1(k8_waybel34(A)) )
     <= ~ v1_xboole_0(A) ) ).

fof(dt_k11_waybel34,axiom,
    ! [A] :
      ( ~ v2_setfam_1(A)
     => ( ~ v3_struct_0(k11_waybel34(A))
        & m1_altcat_2(k11_waybel34(A),k9_waybel34(A))
        & v3_altcat_2(k11_waybel34(A),k9_waybel34(A))
        & v2_altcat_2(k11_waybel34(A),k9_waybel34(A))
        & v6_altcat_1(k11_waybel34(A))
        & v2_altcat_1(k11_waybel34(A)) ) ) ).

fof(rc1_waybel34,axiom,
    ! [A,B] :
      ( ( v4_orders_2(A)
        & v2_lattice3(A)
        & v3_lattice3(A)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v2_lattice3(B)
        & l1_orders_2(B)
        & v3_lattice3(B)
        & v1_lattice3(B)
        & v2_orders_2(B)
        & l1_orders_2(A)
        & v1_lattice3(A)
        & v3_orders_2(A)
        & v2_orders_2(A) )
     => ? [C] :
          ( v3_waybel_1(C,A,B)
          & m1_waybel_1(C,A,B) ) ) ).

fof(t2_waybel34,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => k2_yellow_0(A,k5_pre_topc(A,B,C,k7_waybel_0(B,D))) = k7_yellow_2(u1_struct_0(B),A,k1_waybel34(A,B,C),D) )
             <= ( m2_relset_1(C,u1_struct_0(A),u1_struct_0(B))
                & v17_waybel_0(C,A,B)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                & v1_funct_1(C) ) )
         <= ( v3_orders_2(B)
            & v4_orders_2(B)
            & v1_lattice3(B)
            & l1_orders_2(B)
            & v3_lattice3(B)
            & v2_lattice3(B)
            & v2_orders_2(B) ) )
     <= ( v3_lattice3(A)
        & l1_orders_2(A)
        & v2_lattice3(A)
        & v1_lattice3(A)
        & v4_orders_2(A)
        & v3_orders_2(A)
        & v2_orders_2(A) ) ) ).

fof(fc2_waybel34,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(k2_waybel34(A,B,C))
        & v1_funct_1(k2_waybel34(A,B,C))
        & v17_waybel_0(k2_waybel34(A,B,C),A,B)
        & v19_waybel_0(k2_waybel34(A,B,C),A,B)
        & v21_waybel_0(k2_waybel34(A,B,C),A,B)
        & v5_orders_3(k2_waybel34(A,B,C),A,B)
        & v4_waybel_1(k2_waybel34(A,B,C),A,B)
        & v1_partfun1(k2_waybel34(A,B,C),u1_struct_0(A),u1_struct_0(B))
        & v1_funct_2(k2_waybel34(A,B,C),u1_struct_0(A),u1_struct_0(B))
        & ~ v1_xboole_0(k2_waybel34(A,B,C)) )
     <= ( v2_orders_2(A)
        & v4_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & v1_lattice3(B)
        & v2_lattice3(B)
        & v3_lattice3(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(B),u1_struct_0(A))
        & m1_relset_1(C,u1_struct_0(B),u1_struct_0(A))
        & v18_waybel_0(C,B,A)
        & l1_orders_2(B)
        & v4_orders_2(B)
        & v3_orders_2(B)
        & v2_orders_2(B)
        & v3_lattice3(A)
        & v1_lattice3(A)
        & v3_orders_2(A) ) ) ).

fof(dt_k10_waybel34,axiom,
    ! [A] :
      ( ~ v2_setfam_1(A)
     => ( v2_altcat_1(k10_waybel34(A))
        & v6_altcat_1(k10_waybel34(A))
        & m1_altcat_2(k10_waybel34(A),k8_waybel34(A))
        & v3_altcat_2(k10_waybel34(A),k8_waybel34(A))
        & v2_altcat_2(k10_waybel34(A),k8_waybel34(A))
        & ~ v3_struct_0(k10_waybel34(A)) ) ) ).

fof(dt_k5_waybel34,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ( ~ v3_struct_0(k5_waybel34(A))
        & v2_altcat_1(k5_waybel34(A))
        & v6_altcat_1(k5_waybel34(A))
        & v12_altcat_1(k5_waybel34(A))
        & v2_yellow21(k5_waybel34(A))
        & l2_altcat_1(k5_waybel34(A))
        & v11_altcat_1(k5_waybel34(A)) ) ) ).

fof(t1_waybel34,axiom,
    ! [A] :
      ( ( l1_orders_2(A)
        & ~ v3_struct_0(A) )
     => ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( ( l1_orders_2(D)
                    & ~ v3_struct_0(D) )
                 => ( ( g1_orders_2(u1_struct_0(B),u1_orders_2(B)) = g1_orders_2(u1_struct_0(D),u1_orders_2(D))
                      & g1_orders_2(u1_struct_0(C),u1_orders_2(C)) = g1_orders_2(u1_struct_0(A),u1_orders_2(A)) )
                   => ! [E] :
                        ( ! [F] :
                            ( m1_waybel_1(F,C,D)
                           => ( v3_waybel_1(F,C,D)
                             <= ( v3_waybel_1(E,A,B)
                                & E = F ) ) )
                       <= m1_waybel_1(E,A,B) ) ) )
             <= ( l1_orders_2(C)
                & ~ v3_struct_0(C) ) )
         <= ( ~ v3_struct_0(B)
            & l1_orders_2(B) ) ) ) ).

fof(t3_waybel34,axiom,
    ! [A] :
      ( ( v3_orders_2(A)
        & v4_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v3_lattice3(A)
        & l1_orders_2(A)
        & v2_orders_2(A) )
     => ! [B] :
          ( ( v2_orders_2(B)
            & v2_lattice3(B)
            & v3_lattice3(B)
            & l1_orders_2(B)
            & v1_lattice3(B)
            & v4_orders_2(B)
            & v3_orders_2(B) )
         => ! [C] :
              ( ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k7_yellow_2(u1_struct_0(A),B,k2_waybel34(A,B,C),D) = k1_yellow_0(B,k5_pre_topc(B,A,C,k6_waybel_0(A,D))) )
             <= ( v18_waybel_0(C,B,A)
                & m2_relset_1(C,u1_struct_0(B),u1_struct_0(A))
                & v1_funct_2(C,u1_struct_0(B),u1_struct_0(A))
                & v1_funct_1(C) ) ) ) ) ).

fof(d1_waybel34,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v3_orders_2(B)
            & v4_orders_2(B)
            & v1_lattice3(B)
            & l1_orders_2(B)
            & v2_lattice3(B)
            & v2_orders_2(B) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & m2_relset_1(C,u1_struct_0(A),u1_struct_0(B))
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B)) )
             => ( ! [D] :
                    ( ( v3_waybel_1(k1_waybel_1(A,B,C,D),A,B)
                    <=> D = k1_waybel34(A,B,C) )
                   <= ( v1_funct_2(D,u1_struct_0(B),u1_struct_0(A))
                      & m2_relset_1(D,u1_struct_0(B),u1_struct_0(A))
                      & v1_funct_1(D) ) )
               <= ( v17_waybel_0(C,A,B)
                  & v3_lattice3(B)
                  & v3_lattice3(A) ) ) ) )
     <= ( v2_orders_2(A)
        & v4_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & v3_orders_2(A) ) ) ).

fof(dt_k2_waybel34,axiom,
    ! [A,B,C] :
      ( ( v2_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & v2_orders_2(B)
        & v4_orders_2(B)
        & v1_lattice3(B)
        & v1_funct_2(C,u1_struct_0(B),u1_struct_0(A))
        & m1_relset_1(C,u1_struct_0(B),u1_struct_0(A))
        & v1_funct_1(C)
        & l1_orders_2(B)
        & v2_lattice3(B)
        & v3_orders_2(B)
        & v2_lattice3(A)
        & v4_orders_2(A)
        & v3_orders_2(A) )
     => ( v1_funct_1(k2_waybel34(A,B,C))
        & m2_relset_1(k2_waybel34(A,B,C),u1_struct_0(A),u1_struct_0(B))
        & v1_funct_2(k2_waybel34(A,B,C),u1_struct_0(A),u1_struct_0(B)) ) ) ).

fof(d2_waybel34,axiom,
    ! [A] :
      ( ( v2_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & v1_lattice3(A)
        & v4_orders_2(A)
        & v3_orders_2(A) )
     => ! [B] :
          ( ( v2_orders_2(B)
            & v3_orders_2(B)
            & v4_orders_2(B)
            & v1_lattice3(B)
            & l1_orders_2(B)
            & v2_lattice3(B) )
         => ! [C] :
              ( ( ( v3_lattice3(B)
                  & v18_waybel_0(C,B,A)
                  & v3_lattice3(A) )
               => ! [D] :
                    ( ( v1_funct_1(D)
                      & m2_relset_1(D,u1_struct_0(A),u1_struct_0(B))
                      & v1_funct_2(D,u1_struct_0(A),u1_struct_0(B)) )
                   => ( D = k2_waybel34(A,B,C)
                    <=> v3_waybel_1(k1_waybel_1(A,B,D,C),A,B) ) ) )
             <= ( m2_relset_1(C,u1_struct_0(B),u1_struct_0(A))
                & v1_funct_2(C,u1_struct_0(B),u1_struct_0(A))
                & v1_funct_1(C) ) ) ) ) ).

fof(l5_waybel34,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_lattice3(B)
            & l1_orders_2(B)
            & v2_lattice3(B)
            & v4_orders_2(B)
            & v3_orders_2(B)
            & v2_orders_2(B) )
         => ( ! [C] :
                ( ( m2_relset_1(C,u1_struct_0(A),u1_struct_0(B))
                  & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                  & v1_funct_1(C) )
               => ( ( v4_waybel_1(k2_waybel34(B,A,C),B,A)
                    & v17_waybel_0(k2_waybel34(B,A,C),B,A)
                    & v5_orders_3(k2_waybel34(B,A,C),B,A) )
                 <= v18_waybel_0(C,A,B) ) )
           <= ( v3_lattice3(A)
              & v3_lattice3(B) ) ) )
     <= ( v3_orders_2(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & v1_lattice3(A)
        & v4_orders_2(A)
        & v2_orders_2(A) ) ) ).

fof(fc1_waybel34,axiom,
    ! [A,B,C] :
      ( ( v2_orders_2(A)
        & v3_orders_2(A)
        & v2_orders_2(B)
        & v1_lattice3(B)
        & l1_orders_2(B)
        & v17_waybel_0(C,A,B)
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B))
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & v1_funct_1(C)
        & v3_lattice3(B)
        & v2_lattice3(B)
        & v4_orders_2(B)
        & v3_orders_2(B)
        & l1_orders_2(A)
        & v3_lattice3(A)
        & v2_lattice3(A)
        & v1_lattice3(A)
        & v4_orders_2(A) )
     => ( v1_relat_1(k1_waybel34(A,B,C))
        & v1_funct_1(k1_waybel34(A,B,C))
        & v1_funct_2(k1_waybel34(A,B,C),u1_struct_0(B),u1_struct_0(A))
        & v1_partfun1(k1_waybel34(A,B,C),u1_struct_0(B),u1_struct_0(A))
        & v18_waybel_0(k1_waybel34(A,B,C),B,A)
        & v22_waybel_0(k1_waybel34(A,B,C),B,A)
        & v5_orders_3(k1_waybel34(A,B,C),B,A)
        & v5_waybel_1(k1_waybel34(A,B,C),A,B)
        & v20_waybel_0(k1_waybel34(A,B,C),B,A)
        & ~ v1_xboole_0(k1_waybel34(A,B,C)) ) ) ).

fof(fc3_waybel34,axiom,
    ! [A,B,C] :
      ( ( v1_lattice3(A)
        & v2_lattice3(A)
        & v3_orders_2(B)
        & v2_lattice3(B)
        & l1_orders_2(B)
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B))
        & v17_waybel_0(C,A,B)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & v1_funct_1(C)
        & v3_lattice3(B)
        & v1_lattice3(B)
        & v4_orders_2(B)
        & v2_orders_2(B)
        & l1_orders_2(A)
        & v3_lattice3(A)
        & v4_orders_2(A)
        & v3_orders_2(A)
        & v2_orders_2(A) )
     => ( v1_relat_1(k3_waybel34(A,B,C))
        & v1_funct_2(k3_waybel34(A,B,C),u1_struct_0(k7_lattice3(A)),u1_struct_0(k7_lattice3(B)))
        & v1_partfun1(k3_waybel34(A,B,C),u1_struct_0(k7_lattice3(A)),u1_struct_0(k7_lattice3(B)))
        & v18_waybel_0(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & v20_waybel_0(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & v5_waybel_1(k3_waybel34(A,B,C),k7_lattice3(B),k7_lattice3(A))
        & v5_orders_3(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & v22_waybel_0(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & ~ v1_xboole_0(k3_waybel34(A,B,C))
        & v1_funct_1(k3_waybel34(A,B,C)) ) ) ).

fof(t4_waybel34,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v2_orders_2(B)
            & v3_orders_2(B)
            & v4_orders_2(B)
            & v2_lattice3(B)
            & v3_lattice3(B)
            & l1_orders_2(B)
            & v1_lattice3(B) )
         => ! [C] :
              ( k1_waybel34(A,B,C) = k2_waybel34(k7_lattice3(B),k7_lattice3(A),k3_waybel34(A,B,C))
             <= ( v1_funct_1(C)
                & v17_waybel_0(C,A,B)
                & m2_relset_1(C,u1_struct_0(A),u1_struct_0(B))
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B)) ) ) )
     <= ( v3_orders_2(A)
        & v1_lattice3(A)
        & v3_lattice3(A)
        & l1_orders_2(A)
        & v2_lattice3(A)
        & v4_orders_2(A)
        & v2_orders_2(A) ) ) ).

fof(dt_k1_waybel34,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(k1_waybel34(A,B,C))
        & v1_funct_2(k1_waybel34(A,B,C),u1_struct_0(B),u1_struct_0(A))
        & m2_relset_1(k1_waybel34(A,B,C),u1_struct_0(B),u1_struct_0(A)) )
     <= ( v4_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & v3_orders_2(B)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B))
        & v1_funct_1(C)
        & l1_orders_2(B)
        & v2_lattice3(B)
        & v1_lattice3(B)
        & v4_orders_2(B)
        & v2_orders_2(B)
        & v2_lattice3(A)
        & v3_orders_2(A)
        & v2_orders_2(A) ) ) ).

fof(dt_k6_waybel34,axiom,
    ! [A] :
      ( ( v9_functor0(k6_waybel34(A),k4_waybel34(A),k5_waybel34(A))
        & v16_functor0(k6_waybel34(A),k4_waybel34(A),k5_waybel34(A))
        & m2_functor0(k6_waybel34(A),k4_waybel34(A),k5_waybel34(A)) )
     <= ~ v2_setfam_1(A) ) ).

fof(fc4_waybel34,axiom,
    ! [A,B,C] :
      ( ( v2_orders_2(A)
        & v3_orders_2(A)
        & v3_lattice3(A)
        & l1_orders_2(A)
        & v2_lattice3(B)
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B))
        & v18_waybel_0(C,A,B)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & v1_funct_1(C)
        & l1_orders_2(B)
        & v3_lattice3(B)
        & v1_lattice3(B)
        & v4_orders_2(B)
        & v3_orders_2(B)
        & v2_orders_2(B)
        & v2_lattice3(A)
        & v1_lattice3(A)
        & v4_orders_2(A) )
     => ( v1_relat_1(k3_waybel34(A,B,C))
        & ~ v1_xboole_0(k3_waybel34(A,B,C))
        & v1_partfun1(k3_waybel34(A,B,C),u1_struct_0(k7_lattice3(A)),u1_struct_0(k7_lattice3(B)))
        & v17_waybel_0(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & v21_waybel_0(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & v5_orders_3(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & v4_waybel_1(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & v19_waybel_0(k3_waybel34(A,B,C),k7_lattice3(A),k7_lattice3(B))
        & v1_funct_2(k3_waybel34(A,B,C),u1_struct_0(k7_lattice3(A)),u1_struct_0(k7_lattice3(B)))
        & v1_funct_1(k3_waybel34(A,B,C)) ) ) ).

fof(dt_k3_waybel34,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(k3_waybel34(A,B,C))
        & m2_relset_1(k3_waybel34(A,B,C),u1_struct_0(k7_lattice3(A)),u1_struct_0(k7_lattice3(B)))
        & v1_funct_2(k3_waybel34(A,B,C),u1_struct_0(k7_lattice3(A)),u1_struct_0(k7_lattice3(B))) )
     <= ( v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B))
        & l1_orders_2(B)
        & l1_orders_2(A) ) ) ).

fof(dt_k7_waybel34,axiom,
    ! [A] :
      ( ( v16_functor0(k7_waybel34(A),k5_waybel34(A),k4_waybel34(A))
        & m2_functor0(k7_waybel34(A),k5_waybel34(A),k4_waybel34(A))
        & v9_functor0(k7_waybel34(A),k5_waybel34(A),k4_waybel34(A)) )
     <= ~ v2_setfam_1(A) ) ).

fof(dt_k9_waybel34,axiom,
    ! [A] :
      ( ( v3_altcat_2(k9_waybel34(A),k5_waybel34(A))
        & m1_altcat_2(k9_waybel34(A),k5_waybel34(A))
        & v6_altcat_1(k9_waybel34(A))
        & v2_altcat_1(k9_waybel34(A))
        & ~ v3_struct_0(k9_waybel34(A)) )
     <= ~ v2_setfam_1(A) ) ).

fof(l4_waybel34,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v2_orders_2(B)
            & v3_orders_2(B)
            & v1_lattice3(B)
            & l1_orders_2(B)
            & v2_lattice3(B)
            & v4_orders_2(B) )
         => ( ( v3_lattice3(B)
              & v3_lattice3(A) )
           => ! [C] :
                ( ( v1_funct_1(C)
                  & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                  & m2_relset_1(C,u1_struct_0(A),u1_struct_0(B)) )
               => ( ( v5_orders_3(k1_waybel34(A,B,C),B,A)
                    & v5_waybel_1(k1_waybel34(A,B,C),A,B)
                    & v18_waybel_0(k1_waybel34(A,B,C),B,A) )
                 <= v17_waybel_0(C,A,B) ) ) ) )
     <= ( v3_orders_2(A)
        & v1_lattice3(A)
        & l1_orders_2(A)
        & v2_lattice3(A)
        & v4_orders_2(A)
        & v2_orders_2(A) ) ) ).

fof(t5_waybel34,conjecture,
    ! [A] :
      ( ! [B] :
          ( ( v2_orders_2(B)
            & v3_orders_2(B)
            & v2_lattice3(B)
            & l1_orders_2(B)
            & v3_lattice3(B)
            & v1_lattice3(B)
            & v4_orders_2(B) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & m2_relset_1(C,u1_struct_0(A),u1_struct_0(B))
                & v18_waybel_0(C,A,B)
                & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B)) )
             => k1_waybel34(k7_lattice3(A),k7_lattice3(B),k3_waybel34(A,B,C)) = k2_waybel34(B,A,C) ) )
     <= ( v2_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & l1_orders_2(A)
        & v3_lattice3(A)
        & v4_orders_2(A)
        & v3_orders_2(A) ) ) ).

