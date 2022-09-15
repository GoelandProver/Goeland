%------------------------------------------------------------------------------
% File     : LAT350+1 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Lattice Theory
% Problem  : Representation Theorem for Free Continuous Lattices T13
% Version  : [Urb08] axioms : Especial.
% English  :

% Refs     : [Rud96] Rudnicki (1998), Representation Theorem for Free Conti
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : t13_waybel22 [Urb08]

% Status   : Theorem
% Rating   : 0.89 v8.1.0, 0.83 v7.5.0, 0.84 v7.4.0, 0.83 v7.3.0, 0.86 v7.1.0, 0.83 v7.0.0, 0.80 v6.4.0, 0.81 v6.3.0, 0.79 v6.2.0, 0.92 v6.1.0, 0.93 v6.0.0, 0.96 v5.3.0, 1.00 v5.2.0, 0.95 v5.0.0, 0.96 v4.1.0, 1.00 v3.4.0
% Syntax   : Number of formulae    :  135 (  25 unt;   0 def)
%            Number of atoms       :  781 (  26 equ)
%            Maximal formula atoms :   21 (   5 avg)
%            Number of connectives :  760 ( 114   ~;   1   |; 508   &)
%                                         (  12 <=>; 125  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (   7 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   45 (  43 usr;   1 prp; 0-3 aty)
%            Number of functors    :   24 (  24 usr;   1 con; 0-4 aty)
%            Number of variables   :  214 ( 184   !;  30   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Normal version: includes the axioms (which may be theorems from
%            other articles) and background that are possibly necessary.
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : The problem encoding is based on set theory.
%------------------------------------------------------------------------------
fof(t13_waybel22,conjecture,
    ! [A,B] :
      ( ( ~ v3_struct_0(B)
        & v2_orders_2(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v3_lattice3(B)
        & v3_waybel_3(B)
        & l1_orders_2(B) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,k1_waybel22(A),u1_struct_0(B))
            & m2_relset_1(C,k1_waybel22(A),u1_struct_0(B)) )
         => k1_waybel_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A))),B,k2_waybel22(A,B,C),k4_yellow_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A))))) = k4_yellow_0(B) ) ) ).

fof(abstractness_v1_orders_2,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( v1_orders_2(A)
       => A = g1_orders_2(u1_struct_0(A),u1_orders_2(A)) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) ).

fof(cc10_waybel_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_lattice3(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v24_waybel_0(A)
          & v25_waybel_0(A) ) ) ) ).

fof(cc11_waybel_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v25_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v1_yellow_0(A) ) ) ) ).

fof(cc12_waybel_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v1_yellow_0(A)
          & v24_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_lattice3(A)
          & v1_yellow_0(A)
          & v2_yellow_0(A)
          & v3_yellow_0(A) ) ) ) ).

fof(cc13_waybel_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v4_orders_2(A)
          & v25_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v4_orders_2(A)
          & v2_lattice3(A) ) ) ) ).

fof(cc14_waybel_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v4_orders_2(A)
          & v2_yellow_0(A)
          & v25_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_yellow_0(A) ) ) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => v1_funct_1(A) ) ).

fof(cc1_lattice3,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( v1_lattice3(A)
       => ~ v3_struct_0(A) ) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) ).

fof(cc1_setfam_1,axiom,
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_setfam_1(A) )
     => ! [B] :
          ( m1_subset_1(B,A)
         => ~ v1_xboole_0(B) ) ) ).

fof(cc1_waybel22,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(k2_yellow_1(k9_waybel_0(A))))
         => ~ v1_xboole_0(B) ) ) ).

fof(cc1_waybel_8,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_waybel_8(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_yellow_0(A)
          & v24_waybel_0(A)
          & v2_waybel_3(A)
          & v3_waybel_3(A) ) ) ) ).

fof(cc1_yellow_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v3_lattice3(A) )
       => ( ~ v3_struct_0(A)
          & v1_lattice3(A)
          & v2_lattice3(A) ) ) ) ).

fof(cc1_yellow_7,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v1_waybel_5(A) )
       => ( ~ v3_struct_0(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_lattice3(A)
          & v1_yellow_0(A)
          & v2_yellow_0(A)
          & v3_yellow_0(A) ) ) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_xboole_0(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_funct_1(A) ) ) ).

fof(cc2_lattice3,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( v2_lattice3(A)
       => ~ v3_struct_0(A) ) ) ).

fof(cc2_waybel_5,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_waybel_5(A) ) ) ) ).

fof(cc2_waybel_8,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v2_waybel_8(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v24_waybel_0(A)
          & v1_waybel_8(A) ) ) ) ).

fof(cc2_yellow_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v3_lattice3(A) ) ) ) ).

fof(cc3_waybel_5,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v1_waybel_5(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_lattice3(A)
          & v1_yellow_0(A)
          & v2_yellow_0(A)
          & v3_yellow_0(A)
          & v24_waybel_0(A)
          & v25_waybel_0(A)
          & v2_waybel_3(A)
          & v3_waybel_3(A) ) ) ) ).

fof(cc3_waybel_8,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_waybel_8(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_yellow_0(A)
          & v24_waybel_0(A)
          & v2_waybel_3(A)
          & v3_waybel_3(A)
          & v1_waybel_8(A)
          & v2_waybel_8(A) ) ) ) ).

fof(cc3_yellow_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v3_lattice3(A) )
       => ( ~ v3_struct_0(A)
          & v3_yellow_0(A) ) ) ) ).

fof(cc4_waybel_5,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v1_waybel_5(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v9_waybel_1(A) ) ) ) ).

fof(cc4_waybel_8,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_yellow_0(A)
          & v24_waybel_0(A)
          & v2_waybel_3(A)
          & v3_waybel_3(A)
          & v1_waybel_8(A)
          & v2_waybel_8(A)
          & v3_waybel_8(A) ) ) ) ).

fof(cc4_yellow_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( v3_yellow_0(A)
       => ( v1_yellow_0(A)
          & v2_yellow_0(A) ) ) ) ).

fof(cc5_waybel_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v16_waybel_0(A) ) ) ) ).

fof(cc5_yellow_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v1_yellow_0(A)
          & v2_yellow_0(A) )
       => v3_yellow_0(A) ) ) ).

fof(cc9_waybel_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v1_lattice3(A)
          & v24_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v1_lattice3(A)
          & v2_yellow_0(A) ) ) ) ).

fof(d12_yellow_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => k4_yellow_0(A) = k2_yellow_0(A,k1_xboole_0) ) ).

fof(d18_waybel_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k7_waybel_0(A,B) = k5_waybel_0(A,k1_struct_0(A,B)) ) ) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( A = k1_xboole_0
    <=> ! [B] : ~ r2_hidden(B,A) ) ).

fof(d24_waybel_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => k9_waybel_0(A) = a_1_1_waybel_0(A) ) ).

fof(d2_waybel22,axiom,
    ! [A] : k1_waybel22(A) = a_1_0_waybel22(A) ).

fof(d3_waybel22,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(B)
        & v2_orders_2(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v3_lattice3(B)
        & v3_waybel_3(B)
        & l1_orders_2(B) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,k1_waybel22(A),u1_struct_0(B))
            & m2_relset_1(C,k1_waybel22(A),u1_struct_0(B)) )
         => ! [D] :
              ( ( v1_funct_1(D)
                & v1_funct_2(D,u1_struct_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A)))),u1_struct_0(B))
                & m2_relset_1(D,u1_struct_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A)))),u1_struct_0(B)) )
             => ( D = k2_waybel22(A,B,C)
              <=> ! [E] :
                    ( m1_subset_1(E,u1_struct_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A)))))
                   => k1_waybel_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A))),B,D,E) = k1_yellow_0(B,a_4_0_waybel22(A,B,C,E)) ) ) ) ) ) ).

fof(d9_lattice3,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => ! [B,C] :
          ( m1_subset_1(C,u1_struct_0(A))
         => ( r2_lattice3(A,B,C)
          <=> ! [D] :
                ( m1_subset_1(D,u1_struct_0(A))
               => ( r2_hidden(D,B)
                 => r1_orders_2(A,D,C) ) ) ) ) ) ).

fof(dt_g1_orders_2,axiom,
    ! [A,B] :
      ( m1_relset_1(B,A,A)
     => ( v1_orders_2(g1_orders_2(A,B))
        & l1_orders_2(g1_orders_2(A,B)) ) ) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(dt_k1_struct_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k1_struct_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_k1_waybel22,axiom,
    ! [A] : m1_subset_1(k1_waybel22(A),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))) ).

fof(dt_k1_waybel_0,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & ~ v3_struct_0(B)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B))
        & m1_subset_1(D,u1_struct_0(A)) )
     => m1_subset_1(k1_waybel_0(A,B,C,D),u1_struct_0(B)) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k1_yellow_0,axiom,
    ! [A,B] :
      ( l1_orders_2(A)
     => m1_subset_1(k1_yellow_0(A,B),u1_struct_0(A)) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_waybel22,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(B)
        & v2_orders_2(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v3_lattice3(B)
        & v3_waybel_3(B)
        & l1_orders_2(B)
        & v1_funct_1(C)
        & v1_funct_2(C,k1_waybel22(A),u1_struct_0(B))
        & m1_relset_1(C,k1_waybel22(A),u1_struct_0(B)) )
     => ( v1_funct_1(k2_waybel22(A,B,C))
        & v1_funct_2(k2_waybel22(A,B,C),u1_struct_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A)))),u1_struct_0(B))
        & m2_relset_1(k2_waybel22(A,B,C),u1_struct_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A)))),u1_struct_0(B)) ) ) ).

fof(dt_k2_yellow_0,axiom,
    ! [A,B] :
      ( l1_orders_2(A)
     => m1_subset_1(k2_yellow_0(A,B),u1_struct_0(A)) ) ).

fof(dt_k2_yellow_1,axiom,
    ! [A] :
      ( v1_orders_2(k2_yellow_1(A))
      & l1_orders_2(k2_yellow_1(A)) ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_k3_yellow_1,axiom,
    ! [A] :
      ( v1_orders_2(k3_yellow_1(A))
      & l1_orders_2(k3_yellow_1(A)) ) ).

fof(dt_k4_yellow_0,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => m1_subset_1(k4_yellow_0(A),u1_struct_0(A)) ) ).

fof(dt_k5_waybel_0,axiom,
    ! [A,B] :
      ( ( l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k5_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ).

fof(dt_k7_waybel_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k7_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ).

fof(dt_k9_waybel_0,axiom,
    $true ).

fof(dt_l1_orders_2,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => l1_struct_0(A) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(dt_u1_orders_2,axiom,
    ! [A] :
      ( l1_orders_2(A)
     => m2_relset_1(u1_orders_2(A),u1_struct_0(A),u1_struct_0(A)) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(existence_l1_orders_2,axiom,
    ? [A] : l1_orders_2(A) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : l1_struct_0(A) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : m1_subset_1(B,A) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) ).

fof(fc10_waybel_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( ~ v1_xboole_0(k7_waybel_0(A,B))
        & v2_waybel_0(k7_waybel_0(A,B),A) ) ) ).

fof(fc10_waybel_8,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v24_waybel_0(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v24_waybel_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fc11_waybel_8,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v4_orders_2(A)
        & v2_waybel_8(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v4_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v24_waybel_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fc12_waybel_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v13_waybel_0(k5_waybel_0(A,B),A) ) ).

fof(fc12_waybel_8,axiom,
    ! [A] :
      ( ( v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v3_waybel_8(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v3_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v4_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_lattice3(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_lattice3(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_yellow_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v24_waybel_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_waybel_3(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v3_waybel_3(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v3_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fc14_waybel_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => v13_waybel_0(k7_waybel_0(A,B),A) ) ).

fof(fc14_waybel_8,axiom,
    ! [A] :
      ( ~ v3_struct_0(k3_yellow_1(A))
      & v1_orders_2(k3_yellow_1(A))
      & v2_orders_2(k3_yellow_1(A))
      & v3_orders_2(k3_yellow_1(A))
      & v4_orders_2(k3_yellow_1(A))
      & v1_lattice3(k3_yellow_1(A))
      & v2_lattice3(k3_yellow_1(A))
      & v3_lattice3(k3_yellow_1(A))
      & v1_yellow_0(k3_yellow_1(A))
      & v2_yellow_0(k3_yellow_1(A))
      & v3_yellow_0(k3_yellow_1(A))
      & v24_waybel_0(k3_yellow_1(A))
      & v25_waybel_0(k3_yellow_1(A))
      & v2_waybel_1(k3_yellow_1(A))
      & v9_waybel_1(k3_yellow_1(A))
      & v10_waybel_1(k3_yellow_1(A))
      & v11_waybel_1(k3_yellow_1(A))
      & v2_waybel_3(k3_yellow_1(A))
      & v3_waybel_3(k3_yellow_1(A))
      & v1_waybel_8(k3_yellow_1(A))
      & v2_waybel_8(k3_yellow_1(A)) ) ).

fof(fc17_waybel_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & v2_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v2_waybel_0(k5_waybel_0(A,B),A)
        & v13_waybel_0(k5_waybel_0(A,B),A) ) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) ).

fof(fc1_waybel16,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ~ v1_xboole_0(k9_waybel_0(A)) ) ).

fof(fc1_waybel22,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v2_yellow_0(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(k2_yellow_1(k9_waybel_0(A)))
        & v1_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v2_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v3_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v4_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v1_yellow_0(k2_yellow_1(k9_waybel_0(A)))
        & v2_yellow_0(k2_yellow_1(k9_waybel_0(A)))
        & v3_yellow_0(k2_yellow_1(k9_waybel_0(A)))
        & v24_waybel_0(k2_yellow_1(k9_waybel_0(A)))
        & v25_waybel_0(k2_yellow_1(k9_waybel_0(A)))
        & v1_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v2_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v3_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v3_waybel_3(k2_yellow_1(k9_waybel_0(A))) ) ) ).

fof(fc1_xboole_0,axiom,
    v1_xboole_0(k1_xboole_0) ).

fof(fc1_yellow_0,axiom,
    ! [A,B] :
      ( m1_relset_1(B,k1_tarski(A),k1_tarski(A))
     => ( ~ v3_struct_0(g1_orders_2(k1_tarski(A),B))
        & v1_orders_2(g1_orders_2(k1_tarski(A),B))
        & v3_realset2(g1_orders_2(k1_tarski(A),B)) ) ) ).

fof(fc2_setfam_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ( ~ v1_xboole_0(k1_tarski(A))
        & v1_setfam_1(k1_tarski(A)) ) ) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_tarski(A)) ).

fof(fc2_waybel16,axiom,
    ! [A] :
      ( ( v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v2_lattice3(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(k2_yellow_1(k9_waybel_0(A)))
        & v1_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v2_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v3_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v4_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v2_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v3_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v1_yellow_0(k2_yellow_1(k9_waybel_0(A)))
        & v24_waybel_0(k2_yellow_1(k9_waybel_0(A)))
        & v25_waybel_0(k2_yellow_1(k9_waybel_0(A))) ) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ~ v1_xboole_0(k2_zfmisc_1(A,B)) ) ).

fof(fc4_waybel_8,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fc5_waybel_8,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fc6_waybel_8,axiom,
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v3_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fc7_waybel_8,axiom,
    ! [A] :
      ( ( v4_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v4_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fc8_waybel_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k5_waybel_0(A,B)) ) ).

fof(fc8_waybel_8,axiom,
    ! [A] :
      ( ( v2_lattice3(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_lattice3(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fc9_waybel_8,axiom,
    ! [A] :
      ( ( v1_lattice3(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_lattice3(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) ).

fof(fraenkel_a_1_0_waybel22,axiom,
    ! [A,B] :
      ( r2_hidden(A,a_1_0_waybel22(B))
    <=> ? [C] :
          ( m1_subset_1(C,u1_struct_0(k3_yellow_1(B)))
          & A = k7_waybel_0(k3_yellow_1(B),C)
          & ? [D] :
              ( m1_subset_1(D,B)
              & C = k1_tarski(D) ) ) ) ).

fof(fraenkel_a_1_1_waybel_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(B)
        & v2_orders_2(B)
        & v3_orders_2(B)
        & l1_orders_2(B) )
     => ( r2_hidden(A,a_1_1_waybel_0(B))
      <=> ? [C] :
            ( ~ v1_xboole_0(C)
            & v2_waybel_0(C,B)
            & v13_waybel_0(C,B)
            & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
            & A = C ) ) ) ).

fof(fraenkel_a_4_0_waybel22,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v3_struct_0(C)
        & v2_orders_2(C)
        & v3_orders_2(C)
        & v4_orders_2(C)
        & v3_lattice3(C)
        & v3_waybel_3(C)
        & l1_orders_2(C)
        & v1_funct_1(D)
        & v1_funct_2(D,k1_waybel22(B),u1_struct_0(C))
        & m2_relset_1(D,k1_waybel22(B),u1_struct_0(C))
        & m1_subset_1(E,u1_struct_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(B))))) )
     => ( r2_hidden(A,a_4_0_waybel22(B,C,D,E))
      <=> ? [F] :
            ( m1_subset_1(F,k1_zfmisc_1(B))
            & A = k2_yellow_0(C,a_4_1_waybel22(B,C,D,F))
            & r2_hidden(F,E) ) ) ) ).

fof(fraenkel_a_4_1_waybel22,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v3_struct_0(C)
        & v2_orders_2(C)
        & v3_orders_2(C)
        & v4_orders_2(C)
        & v3_lattice3(C)
        & v3_waybel_3(C)
        & l1_orders_2(C)
        & v1_funct_1(D)
        & v1_funct_2(D,k1_waybel22(B),u1_struct_0(C))
        & m2_relset_1(D,k1_waybel22(B),u1_struct_0(C))
        & m1_subset_1(E,k1_zfmisc_1(B)) )
     => ( r2_hidden(A,a_4_1_waybel22(B,C,D,E))
      <=> ? [F] :
            ( m1_subset_1(F,u1_struct_0(k3_yellow_1(B)))
            & A = k1_funct_1(D,k7_waybel_0(k3_yellow_1(B),F))
            & ? [G] :
                ( m1_subset_1(G,B)
                & F = k1_tarski(G)
                & r2_hidden(G,E) ) ) ) ) ).

fof(free_g1_orders_2,axiom,
    ! [A,B] :
      ( m1_relset_1(B,A,A)
     => ! [C,D] :
          ( g1_orders_2(A,B) = g1_orders_2(C,D)
         => ( A = C
            & B = D ) ) ) ).

fof(rc10_waybel_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v2_waybel_0(B,A)
          & v13_waybel_0(B,A) ) ) ).

fof(rc12_waybel_0,axiom,
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v16_waybel_0(A) ) ).

fof(rc13_waybel_0,axiom,
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A)
      & v1_yellow_0(A)
      & v2_yellow_0(A)
      & v3_yellow_0(A)
      & v24_waybel_0(A)
      & v25_waybel_0(A) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A) ) ).

fof(rc1_lattice3,axiom,
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v3_lattice3(A) ) ).

fof(rc1_setfam_1,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_setfam_1(A) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B) ) ) ).

fof(rc1_waybel_5,axiom,
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v1_waybel_5(A) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : v1_xboole_0(A) ).

fof(rc1_yellow_0,axiom,
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A)
      & v3_realset2(A) ) ).

fof(rc1_yellow_7,axiom,
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A)
      & v1_yellow_0(A)
      & v2_yellow_0(A)
      & v3_yellow_0(A)
      & v16_waybel_0(A)
      & v24_waybel_0(A)
      & v25_waybel_0(A)
      & v2_waybel_1(A)
      & v9_waybel_1(A)
      & v1_waybel_5(A)
      & v3_realset2(A) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_xboole_0(A)
      & v1_funct_1(A) ) ).

fof(rc2_lattice3,axiom,
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & v1_xboole_0(B) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ v1_xboole_0(A) ).

fof(rc2_yellow_0,axiom,
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A)
      & v1_yellow_0(A)
      & v2_yellow_0(A)
      & v3_yellow_0(A) ) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v2_funct_1(A) ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( l1_struct_0(A)
      & ~ v3_struct_0(A) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B) ) ) ).

fof(redefinition_k1_struct_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => k1_struct_0(A,B) = k1_tarski(B) ) ).

fof(redefinition_k1_waybel_0,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & ~ v3_struct_0(B)
        & l1_struct_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
        & m1_relset_1(C,u1_struct_0(A),u1_struct_0(B))
        & m1_subset_1(D,u1_struct_0(A)) )
     => k1_waybel_0(A,B,C,D) = k1_funct_1(C,D) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
    <=> m1_relset_1(C,A,B) ) ).

fof(redefinition_r3_orders_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => ( r3_orders_2(A,B,C)
      <=> r1_orders_2(A,B,C) ) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : r1_tarski(A,A) ).

fof(reflexivity_r3_orders_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => r3_orders_2(A,B,B) ) ).

fof(t15_waybel16,axiom,
    ! [A] : k4_yellow_0(k2_yellow_1(k9_waybel_0(k3_yellow_1(A)))) = k1_zfmisc_1(A) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( r2_hidden(C,A)
        <=> r2_hidden(C,B) )
     => A = B ) ).

fof(t2_xboole_1,axiom,
    ! [A] : r1_tarski(k1_xboole_0,A) ).

fof(t32_yellow_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_orders_2(A)
        & v3_lattice3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( B = k1_yellow_0(A,C)
            <=> ( r2_lattice3(A,C,B)
                & ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r2_lattice3(A,C,D)
                     => r1_orders_2(A,B,D) ) ) ) ) ) ) ).

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

fof(t5_waybel15,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( r1_orders_2(A,k4_yellow_0(A),B)
           => B = k4_yellow_0(A) ) ) ) ).

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
