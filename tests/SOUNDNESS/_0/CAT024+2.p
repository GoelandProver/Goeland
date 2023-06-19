%------------------------------------------------------------------------------
% File     : CAT024+2 : TPTP v8.1.2. Released v3.4.0.
% Domain   : Category Theory
% Problem  : Some Isomorphisms Between Functor Categories T29
% Version  : [Urb08] axioms : Especial.
% English  :

% Refs     : [Try92] Trybulec (1992), Some Isomorphisms Between Functor Cat
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : t29_isocat_2 [Urb08]

% Status   : CounterSatisfiable
% Rating   : 1.00 v6.2.0, 0.91 v6.1.0, 1.00 v3.4.0
% Syntax   : Number of formulae    : 4050 (1078 unt;   0 def)
%            Number of atoms       : 18500 (3450 equ)
%            Maximal formula atoms :   52 (   4 avg)
%            Number of connectives : 16063 (1613   ~; 197   |;6533   &)
%                                         ( 603 <=>;7117  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   32 (   7 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :  208 ( 206 usr;   1 prp; 0-6 aty)
%            Number of functors    :  799 ( 799 usr; 292 con; 0-9 aty)
%            Number of variables   : 10936 (10425   !; 511   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : Bushy version: includes all articles that contribute axioms to the
%            Normal version.
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : The problem encoding is based on set theory.
%          : Infinox says this has no finite (counter-) models.
%------------------------------------------------------------------------------
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
include('Axioms/SET007/SET007+14.ax').
include('Axioms/SET007/SET007+16.ax').
include('Axioms/SET007/SET007+18.ax').
include('Axioms/SET007/SET007+20.ax').
include('Axioms/SET007/SET007+21.ax').
include('Axioms/SET007/SET007+22.ax').
include('Axioms/SET007/SET007+24.ax').
include('Axioms/SET007/SET007+25.ax').
include('Axioms/SET007/SET007+26.ax').
include('Axioms/SET007/SET007+31.ax').
include('Axioms/SET007/SET007+34.ax').
include('Axioms/SET007/SET007+35.ax').
include('Axioms/SET007/SET007+54.ax').
include('Axioms/SET007/SET007+55.ax').
include('Axioms/SET007/SET007+61.ax').
include('Axioms/SET007/SET007+64.ax').
include('Axioms/SET007/SET007+76.ax').
include('Axioms/SET007/SET007+77.ax').
include('Axioms/SET007/SET007+79.ax').
include('Axioms/SET007/SET007+80.ax').
include('Axioms/SET007/SET007+202.ax').
include('Axioms/SET007/SET007+237.ax').
include('Axioms/SET007/SET007+299.ax').
include('Axioms/SET007/SET007+322.ax').
%------------------------------------------------------------------------------
fof(dt_k1_isocat_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & ~ v1_xboole_0(C)
        & v1_funct_1(D)
        & v1_funct_2(D,A,k1_fraenkel(B,C))
        & m1_relset_1(D,A,k1_fraenkel(B,C)) )
     => ( v1_funct_1(k1_isocat_2(A,B,C,D))
        & v1_funct_2(k1_isocat_2(A,B,C,D),k2_zfmisc_1(A,B),C)
        & m2_relset_1(k1_isocat_2(A,B,C,D),k2_zfmisc_1(A,B),C) ) ) ).

fof(redefinition_k1_isocat_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & ~ v1_xboole_0(C)
        & v1_funct_1(D)
        & v1_funct_2(D,A,k1_fraenkel(B,C))
        & m1_relset_1(D,A,k1_fraenkel(B,C)) )
     => k1_isocat_2(A,B,C,D) = k4_funct_5(D) ) ).

fof(dt_k2_isocat_2,axiom,
    ! [A,B,C] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & m1_subset_1(C,u1_cat_1(A)) )
     => m2_cat_1(k2_isocat_2(A,B,C),k12_nattra_1(A,B),B) ) ).

fof(dt_k3_isocat_2,axiom,
    ! [A,B,C,D,E] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,k11_cat_2(A,B),C)
        & m1_subset_1(E,u2_cat_1(A)) )
     => ( v1_funct_1(k3_isocat_2(A,B,C,D,E))
        & v1_funct_2(k3_isocat_2(A,B,C,D,E),u2_cat_1(B),u2_cat_1(C))
        & m2_relset_1(k3_isocat_2(A,B,C,D,E),u2_cat_1(B),u2_cat_1(C)) ) ) ).

fof(dt_k4_isocat_2,axiom,
    ! [A,B,C,D,E] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,k11_cat_2(A,B),C)
        & m1_subset_1(E,u2_cat_1(A)) )
     => m2_nattra_1(k4_isocat_2(A,B,C,D,E),B,C,k14_cat_2(A,B,C,D,k2_cat_1(A,E)),k14_cat_2(A,B,C,D,k3_cat_1(A,E))) ) ).

fof(dt_k5_isocat_2,axiom,
    ! [A,B,C,D] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,k11_cat_2(A,B),C) )
     => m2_cat_1(k5_isocat_2(A,B,C,D),A,k12_nattra_1(B,C)) ) ).

fof(dt_k6_isocat_2,axiom,
    ! [A,B,C,D,E,F] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,k11_cat_2(A,B),C)
        & m2_cat_1(E,k11_cat_2(A,B),C)
        & m2_nattra_1(F,k11_cat_2(A,B),C,D,E) )
     => m2_nattra_1(k6_isocat_2(A,B,C,D,E,F),A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),k5_isocat_2(A,B,C,E)) ) ).

fof(dt_k7_isocat_2,axiom,
    ! [A,B,C] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C) )
     => m2_cat_1(k7_isocat_2(A,B,C),k12_nattra_1(k11_cat_2(A,B),C),k12_nattra_1(A,k12_nattra_1(B,C))) ) ).

fof(dt_k8_isocat_2,axiom,
    ! [A,B] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B) )
     => m2_cat_1(k8_isocat_2(A,B),k11_cat_2(A,B),A) ) ).

fof(redefinition_k8_isocat_2,axiom,
    ! [A,B] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B) )
     => k8_isocat_2(A,B) = k16_cat_2(A,B) ) ).

fof(dt_k9_isocat_2,axiom,
    ! [A,B] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B) )
     => m2_cat_1(k9_isocat_2(A,B),k11_cat_2(A,B),B) ) ).

fof(redefinition_k9_isocat_2,axiom,
    ! [A,B] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B) )
     => k9_isocat_2(A,B) = k17_cat_2(A,B) ) ).

fof(dt_k10_isocat_2,axiom,
    ! [A,B,C,D,E] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,A,B)
        & m2_cat_1(E,A,C) )
     => m2_cat_1(k10_isocat_2(A,B,C,D,E),A,k11_cat_2(B,C)) ) ).

fof(redefinition_k10_isocat_2,axiom,
    ! [A,B,C,D,E] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,A,B)
        & m2_cat_1(E,A,C) )
     => k10_isocat_2(A,B,C,D,E) = k13_funct_3(D,E) ) ).

fof(dt_k11_isocat_2,axiom,
    ! [A,B,C,D] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,A,k11_cat_2(B,C)) )
     => m2_cat_1(k11_isocat_2(A,B,C,D),A,B) ) ).

fof(dt_k12_isocat_2,axiom,
    ! [A,B,C,D] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,A,k11_cat_2(B,C)) )
     => m2_cat_1(k12_isocat_2(A,B,C,D),A,C) ) ).

fof(dt_k13_isocat_2,axiom,
    ! [A,B,C,D,E,F] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,A,k11_cat_2(B,C))
        & m2_cat_1(E,A,k11_cat_2(B,C))
        & m2_nattra_1(F,A,k11_cat_2(B,C),D,E) )
     => m2_nattra_1(k13_isocat_2(A,B,C,D,E,F),A,B,k11_isocat_2(A,B,C,D),k11_isocat_2(A,B,C,E)) ) ).

fof(dt_k14_isocat_2,axiom,
    ! [A,B,C,D,E,F] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,A,k11_cat_2(B,C))
        & m2_cat_1(E,A,k11_cat_2(B,C))
        & m2_nattra_1(F,A,k11_cat_2(B,C),D,E) )
     => m2_nattra_1(k14_isocat_2(A,B,C,D,E,F),A,C,k12_isocat_2(A,B,C,D),k12_isocat_2(A,B,C,E)) ) ).

fof(dt_k15_isocat_2,axiom,
    ! [A,B,C,D,E,F,G,H,I] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,A,B)
        & m2_cat_1(E,A,B)
        & m2_cat_1(F,A,C)
        & m2_cat_1(G,A,C)
        & m1_nattra_1(H,A,B,D,E)
        & m1_nattra_1(I,A,C,F,G) )
     => m1_nattra_1(k15_isocat_2(A,B,C,D,E,F,G,H,I),A,k11_cat_2(B,C),k10_isocat_2(A,B,C,D,F),k10_isocat_2(A,B,C,E,G)) ) ).

fof(dt_k16_isocat_2,axiom,
    ! [A,B,C,D,E,F,G,H,I] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C)
        & m2_cat_1(D,A,B)
        & m2_cat_1(E,A,B)
        & m2_cat_1(F,A,C)
        & m2_cat_1(G,A,C)
        & m2_nattra_1(H,A,B,D,E)
        & m2_nattra_1(I,A,C,F,G) )
     => m2_nattra_1(k16_isocat_2(A,B,C,D,E,F,G,H,I),A,k11_cat_2(B,C),k10_isocat_2(A,B,C,D,F),k10_isocat_2(A,B,C,E,G)) ) ).

fof(dt_k17_isocat_2,axiom,
    ! [A,B,C] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A)
        & v2_cat_1(B)
        & l1_cat_1(B)
        & v2_cat_1(C)
        & l1_cat_1(C) )
     => m2_cat_1(k17_isocat_2(A,B,C),k12_nattra_1(A,k11_cat_2(B,C)),k11_cat_2(k12_nattra_1(A,B),k12_nattra_1(A,C))) ) ).

fof(t1_isocat_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ~ v1_xboole_0(C)
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,A,k1_fraenkel(B,C))
                    & m2_relset_1(D,A,k1_fraenkel(B,C)) )
                 => r4_nattra_1(A,k1_fraenkel(B,C),A,k1_fraenkel(B,C),k2_cat_2(A,B,C,k1_isocat_2(A,B,C,D)),D) ) ) ) ) ).

fof(t2_isocat_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ~ v1_xboole_0(C)
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,A,k1_fraenkel(B,C))
                    & m2_relset_1(D,A,k1_fraenkel(B,C)) )
                 => ! [E] :
                      ( m1_subset_1(E,A)
                     => ! [F] :
                          ( m1_subset_1(F,B)
                         => k1_funct_1(k1_isocat_2(A,B,C,D),k4_tarski(E,F)) = k8_funct_2(B,C,k1_cat_2(A,B,C,k1_fraenkel(B,C),D,E),F) ) ) ) ) ) ) ).

fof(t3_isocat_2,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,k1_tarski(A),B)
            & m2_relset_1(C,k1_tarski(A),B) )
         => ! [D] :
              ( ( v1_funct_1(D)
                & v1_funct_2(D,k1_tarski(A),B)
                & m2_relset_1(D,k1_tarski(A),B) )
             => ( k1_funct_1(C,A) = k1_funct_1(D,A)
               => r4_nattra_1(k1_tarski(A),B,k1_tarski(A),B,C,D) ) ) ) ) ).

fof(t4_isocat_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m1_subset_1(C,A)
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,A,B)
                    & m2_relset_1(D,A,B) )
                 => r2_hidden(k8_funct_2(A,B,D,C),k2_relat_1(D)) ) ) ) ) ).

fof(t5_isocat_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ~ v1_xboole_0(C)
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,A,k2_zfmisc_1(B,C))
                    & m2_relset_1(D,A,k2_zfmisc_1(B,C)) )
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,A,k2_zfmisc_1(B,C))
                        & m2_relset_1(E,A,k2_zfmisc_1(B,C)) )
                     => ( ( r4_nattra_1(A,B,A,B,k7_funct_2(A,k2_zfmisc_1(B,C),B,D,k9_funct_3(B,C)),k7_funct_2(A,k2_zfmisc_1(B,C),B,E,k9_funct_3(B,C)))
                          & r4_nattra_1(A,C,A,C,k7_funct_2(A,k2_zfmisc_1(B,C),C,D,k10_funct_3(B,C)),k7_funct_2(A,k2_zfmisc_1(B,C),C,E,k10_funct_3(B,C))) )
                       => r4_nattra_1(A,k2_zfmisc_1(B,C),A,k2_zfmisc_1(B,C),D,E) ) ) ) ) ) ) ).

fof(t6_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u2_cat_1(A))
         => k4_cat_1(A,B,k10_cat_1(A,k3_cat_1(A,B))) = B ) ) ).

fof(t7_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u2_cat_1(A))
         => k4_cat_1(A,k10_cat_1(A,k2_cat_1(A,B)),B) = B ) ) ).

fof(t8_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_cat_1(k12_nattra_1(A,B)))
            <=> m2_cat_1(C,A,B) ) ) ) ).

fof(t9_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u2_cat_1(k12_nattra_1(A,B)))
             => ? [D] :
                  ( m2_cat_1(D,A,B)
                  & ? [E] :
                      ( m2_cat_1(E,A,B)
                      & ? [F] :
                          ( m2_nattra_1(F,A,B,D,E)
                          & r2_nattra_1(A,B,D,E)
                          & k2_cat_1(k12_nattra_1(A,B),C) = D
                          & k3_cat_1(k12_nattra_1(A,B),C) = E
                          & C = k4_tarski(k4_tarski(D,E),F) ) ) ) ) ) ) ).

fof(d1_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_cat_1(A))
             => ! [D] :
                  ( m2_cat_1(D,k12_nattra_1(A,B),B)
                 => ( D = k2_isocat_2(A,B,C)
                  <=> ! [E] :
                        ( m2_cat_1(E,A,B)
                       => ! [F] :
                            ( m2_cat_1(F,A,B)
                           => ! [G] :
                                ( m2_nattra_1(G,A,B,E,F)
                               => ( r2_nattra_1(A,B,E,F)
                                 => k1_funct_1(D,k4_tarski(k4_tarski(E,F),G)) = k5_nattra_1(A,B,E,F,G,C) ) ) ) ) ) ) ) ) ) ).

fof(l11_isocat_2,axiom,
    ! [A,B] :
      ( u1_cat_1(k8_cat_1(A,B)) = k1_tarski(A)
      & u2_cat_1(k8_cat_1(A,B)) = k1_tarski(B) ) ).

fof(t10_isocat_2,axiom,
    $true ).

fof(t11_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B,C] : r1_isocat_1(k12_nattra_1(k8_cat_1(B,C),A),A) ) ).

fof(t12_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u1_cat_1(A))
                     => ! [F] :
                          ( m1_subset_1(F,u1_cat_1(B))
                         => k13_cat_1(B,C,k14_cat_2(A,B,C,D,E),F) = k13_cat_1(k11_cat_2(A,B),C,D,k12_cat_2(A,B,E,F)) ) ) ) ) ) ) ).

fof(t13_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_cat_1(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_cat_1(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_cat_1(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_cat_1(B))
                         => ( ( k6_cat_1(A,C,D) != k1_xboole_0
                              & k6_cat_1(B,E,F) != k1_xboole_0 )
                          <=> k6_cat_1(k11_cat_2(A,B),k12_cat_2(A,B,C,E),k12_cat_2(A,B,D,F)) != k1_xboole_0 ) ) ) ) ) ) ) ).

fof(t14_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_cat_1(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_cat_1(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_cat_1(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_cat_1(B))
                         => ( k6_cat_1(k11_cat_2(A,B),k12_cat_2(A,B,C,E),k12_cat_2(A,B,D,F)) != k1_xboole_0
                           => ! [G] :
                                ( m1_subset_1(G,u2_cat_1(A))
                               => ! [H] :
                                    ( m1_subset_1(H,u2_cat_1(B))
                                   => ( m1_cat_1(k13_cat_2(A,B,G,H),k11_cat_2(A,B),k12_cat_2(A,B,C,E),k12_cat_2(A,B,D,F))
                                    <=> ( m1_cat_1(G,A,C,D)
                                        & m1_cat_1(H,B,E,F) ) ) ) ) ) ) ) ) ) ) ) ).

fof(t15_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m2_cat_1(E,k11_cat_2(A,B),C)
                     => ( r2_nattra_1(k11_cat_2(A,B),C,D,E)
                       => ! [F] :
                            ( m2_nattra_1(F,k11_cat_2(A,B),C,D,E)
                           => ! [G] :
                                ( m1_subset_1(G,u1_cat_1(A))
                               => ( r2_nattra_1(B,C,k14_cat_2(A,B,C,D,G),k14_cat_2(A,B,C,E,G))
                                  & m2_nattra_1(k1_funct_1(k3_funct_5(F),G),B,C,k14_cat_2(A,B,C,D,G),k14_cat_2(A,B,C,E,G)) ) ) ) ) ) ) ) ) ) ).

fof(d2_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u2_cat_1(A))
                     => k3_isocat_2(A,B,C,D,E) = k1_funct_1(k3_funct_5(D),E) ) ) ) ) ) ).

fof(t16_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_cat_1(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_cat_1(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_cat_1(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_cat_1(B))
                         => ! [G] :
                              ( m1_subset_1(G,u2_cat_1(A))
                             => ! [H] :
                                  ( m1_subset_1(H,u2_cat_1(B))
                                 => ( ( r2_hidden(G,k6_cat_1(A,C,D))
                                      & r2_hidden(H,k6_cat_1(B,E,F)) )
                                   => r2_hidden(k13_cat_2(A,B,G,H),k6_cat_1(k11_cat_2(A,B),k12_cat_2(A,B,C,E),k12_cat_2(A,B,D,F))) ) ) ) ) ) ) ) ) ) ).

fof(t17_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u1_cat_1(A))
                     => ! [F] :
                          ( m1_subset_1(F,u1_cat_1(A))
                         => ( k6_cat_1(A,E,F) != k1_xboole_0
                           => ! [G] :
                                ( m1_cat_1(G,A,E,F)
                               => ( r2_nattra_1(B,C,k14_cat_2(A,B,C,D,E),k14_cat_2(A,B,C,D,F))
                                  & m2_nattra_1(k7_funct_2(u1_cat_1(B),u2_cat_1(B),u2_cat_1(C),u6_cat_1(B),k3_isocat_2(A,B,C,D,G)),B,C,k14_cat_2(A,B,C,D,E),k14_cat_2(A,B,C,D,F)) ) ) ) ) ) ) ) ) ) ).

fof(d3_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u2_cat_1(A))
                     => k4_isocat_2(A,B,C,D,E) = k7_funct_2(u1_cat_1(B),u2_cat_1(B),u2_cat_1(C),u6_cat_1(B),k3_isocat_2(A,B,C,D,E)) ) ) ) ) ) ).

fof(t18_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u2_cat_1(A))
                     => r2_nattra_1(B,C,k14_cat_2(A,B,C,D,k2_cat_1(A,E)),k14_cat_2(A,B,C,D,k3_cat_1(A,E))) ) ) ) ) ) ).

fof(t19_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u2_cat_1(A))
                     => ! [F] :
                          ( m1_subset_1(F,u1_cat_1(B))
                         => k5_nattra_1(B,C,k14_cat_2(A,B,C,D,k2_cat_1(A,E)),k14_cat_2(A,B,C,D,k3_cat_1(A,E)),k4_isocat_2(A,B,C,D,E),F) = k8_funct_2(u2_cat_1(k11_cat_2(A,B)),u2_cat_1(C),D,k13_cat_2(A,B,E,k10_cat_1(B,F))) ) ) ) ) ) ) ).

fof(t20_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u1_cat_1(A))
                     => r4_nattra_1(u1_cat_1(B),u2_cat_1(C),u1_cat_1(B),u2_cat_1(C),k7_nattra_1(B,C,k14_cat_2(A,B,C,D,E)),k4_isocat_2(A,B,C,D,k10_cat_1(A,E))) ) ) ) ) ) ).

fof(t21_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u2_cat_1(A))
                     => ! [F] :
                          ( m1_subset_1(F,u2_cat_1(A))
                         => ( k2_cat_1(A,E) = k3_cat_1(A,F)
                           => ! [G] :
                                ( m2_nattra_1(G,B,C,k14_cat_2(A,B,C,D,k2_cat_1(A,F)),k14_cat_2(A,B,C,D,k2_cat_1(A,E)))
                               => ( r4_nattra_1(u1_cat_1(B),u2_cat_1(C),u1_cat_1(B),u2_cat_1(C),G,k4_isocat_2(A,B,C,D,F))
                                 => r4_nattra_1(u1_cat_1(B),u2_cat_1(C),u1_cat_1(B),u2_cat_1(C),k4_isocat_2(A,B,C,D,k4_cat_1(A,F,E)),k8_nattra_1(B,C,k14_cat_2(A,B,C,D,k2_cat_1(A,F)),k14_cat_2(A,B,C,D,k2_cat_1(A,E)),k14_cat_2(A,B,C,D,k3_cat_1(A,E)),G,k4_isocat_2(A,B,C,D,E))) ) ) ) ) ) ) ) ) ) ).

fof(d4_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m2_cat_1(E,A,k12_nattra_1(B,C))
                     => ( E = k5_isocat_2(A,B,C,D)
                      <=> ! [F] :
                            ( m1_subset_1(F,u2_cat_1(A))
                           => k8_funct_2(u2_cat_1(A),u2_cat_1(k12_nattra_1(B,C)),E,F) = k4_tarski(k4_tarski(k14_cat_2(A,B,C,D,k2_cat_1(A,F)),k14_cat_2(A,B,C,D,k3_cat_1(A,F))),k4_isocat_2(A,B,C,D,F)) ) ) ) ) ) ) ) ).

fof(l27_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( m2_cat_1(C,A,B)
             => ! [D] :
                  ( m2_cat_1(D,A,B)
                 => ( r1_nattra_1(A,B,C,D)
                   => ! [E] :
                        ( m1_nattra_1(E,A,B,C,D)
                       => ! [F] :
                            ( m1_subset_1(F,u1_cat_1(A))
                           => r2_hidden(k5_nattra_1(A,B,C,D,E,F),k6_cat_1(B,k13_cat_1(A,B,C,F),k13_cat_1(A,B,D,F))) ) ) ) ) ) ) ) ).

fof(t22_isocat_2,axiom,
    $true ).

fof(t23_isocat_2,axiom,
    $true ).

fof(t24_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u1_cat_1(A))
                     => k13_cat_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),E) = k14_cat_2(A,B,C,D,E) ) ) ) ) ) ).

fof(t25_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m1_subset_1(E,u1_cat_1(A))
                     => m2_cat_1(k13_cat_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),E),B,C) ) ) ) ) ) ).

fof(t26_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m2_cat_1(E,k11_cat_2(A,B),C)
                     => ( r4_nattra_1(u2_cat_1(A),u2_cat_1(k12_nattra_1(B,C)),u2_cat_1(A),u2_cat_1(k12_nattra_1(B,C)),k5_isocat_2(A,B,C,D),k5_isocat_2(A,B,C,E))
                       => r4_nattra_1(u2_cat_1(k11_cat_2(A,B)),u2_cat_1(C),u2_cat_1(k11_cat_2(A,B)),u2_cat_1(C),D,E) ) ) ) ) ) ) ).

fof(t27_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m2_cat_1(E,k11_cat_2(A,B),C)
                     => ( r2_nattra_1(k11_cat_2(A,B),C,D,E)
                       => ! [F] :
                            ( m2_nattra_1(F,k11_cat_2(A,B),C,D,E)
                           => ( r2_nattra_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),k5_isocat_2(A,B,C,E))
                              & ? [G] :
                                  ( m2_nattra_1(G,A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),k5_isocat_2(A,B,C,E))
                                  & ! [H] :
                                      ( ( v1_funct_1(H)
                                        & v1_funct_2(H,k2_zfmisc_1(u1_cat_1(A),u1_cat_1(B)),u2_cat_1(C))
                                        & m2_relset_1(H,k2_zfmisc_1(u1_cat_1(A),u1_cat_1(B)),u2_cat_1(C)) )
                                     => ( r4_nattra_1(u1_cat_1(k11_cat_2(A,B)),u2_cat_1(C),k2_zfmisc_1(u1_cat_1(A),u1_cat_1(B)),u2_cat_1(C),F,H)
                                       => ! [I] :
                                            ( m1_subset_1(I,u1_cat_1(A))
                                           => k5_nattra_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),k5_isocat_2(A,B,C,E),G,I) = k4_tarski(k12_cat_2(k12_nattra_1(B,C),k12_nattra_1(B,C),k13_cat_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),I),k13_cat_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,E),I)),k1_cat_2(u1_cat_1(A),u1_cat_1(B),u2_cat_1(C),k1_fraenkel(u1_cat_1(B),u2_cat_1(C)),k2_cat_2(u1_cat_1(A),u1_cat_1(B),u2_cat_1(C),H),I)) ) ) ) ) ) ) ) ) ) ) ) ) ).

fof(d5_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m2_cat_1(E,k11_cat_2(A,B),C)
                     => ( r2_nattra_1(k11_cat_2(A,B),C,D,E)
                       => ! [F] :
                            ( m2_nattra_1(F,k11_cat_2(A,B),C,D,E)
                           => ! [G] :
                                ( m2_nattra_1(G,A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),k5_isocat_2(A,B,C,E))
                               => ( G = k6_isocat_2(A,B,C,D,E,F)
                                <=> ! [H] :
                                      ( ( v1_funct_1(H)
                                        & v1_funct_2(H,k2_zfmisc_1(u1_cat_1(A),u1_cat_1(B)),u2_cat_1(C))
                                        & m2_relset_1(H,k2_zfmisc_1(u1_cat_1(A),u1_cat_1(B)),u2_cat_1(C)) )
                                     => ( r4_nattra_1(u1_cat_1(k11_cat_2(A,B)),u2_cat_1(C),k2_zfmisc_1(u1_cat_1(A),u1_cat_1(B)),u2_cat_1(C),F,H)
                                       => ! [I] :
                                            ( m1_subset_1(I,u1_cat_1(A))
                                           => k5_nattra_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),k5_isocat_2(A,B,C,E),G,I) = k4_tarski(k12_cat_2(k12_nattra_1(B,C),k12_nattra_1(B,C),k13_cat_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),I),k13_cat_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,E),I)),k1_cat_2(u1_cat_1(A),u1_cat_1(B),u2_cat_1(C),k1_fraenkel(u1_cat_1(B),u2_cat_1(C)),k2_cat_2(u1_cat_1(A),u1_cat_1(B),u2_cat_1(C),H),I)) ) ) ) ) ) ) ) ) ) ) ) ) ).

fof(t28_isocat_2,axiom,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => r4_nattra_1(u1_cat_1(A),u2_cat_1(k12_nattra_1(B,C)),u1_cat_1(A),u2_cat_1(k12_nattra_1(B,C)),k7_nattra_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D)),k6_isocat_2(A,B,C,D,D,k7_nattra_1(k11_cat_2(A,B),C,D))) ) ) ) ) ).

fof(t29_isocat_2,conjecture,
    ! [A] :
      ( ( v2_cat_1(A)
        & l1_cat_1(A) )
     => ! [B] :
          ( ( v2_cat_1(B)
            & l1_cat_1(B) )
         => ! [C] :
              ( ( v2_cat_1(C)
                & l1_cat_1(C) )
             => ! [D] :
                  ( m2_cat_1(D,k11_cat_2(A,B),C)
                 => ! [E] :
                      ( m2_cat_1(E,k11_cat_2(A,B),C)
                     => ! [F] :
                          ( m2_cat_1(F,k11_cat_2(A,B),C)
                         => ( ( r2_nattra_1(k11_cat_2(A,B),C,D,E)
                              & r2_nattra_1(k11_cat_2(A,B),C,E,F) )
                           => ! [G] :
                                ( m2_nattra_1(G,k11_cat_2(A,B),C,D,E)
                               => ! [H] :
                                    ( m2_nattra_1(H,k11_cat_2(A,B),C,E,F)
                                   => r4_nattra_1(u1_cat_1(A),u2_cat_1(k12_nattra_1(B,C)),u1_cat_1(A),u2_cat_1(k12_nattra_1(B,C)),k6_isocat_2(A,B,C,D,F,k8_nattra_1(k11_cat_2(A,B),C,D,E,F,G,H)),k8_nattra_1(A,k12_nattra_1(B,C),k5_isocat_2(A,B,C,D),k5_isocat_2(A,B,C,E),k5_isocat_2(A,B,C,F),k6_isocat_2(A,B,C,D,E,G),k6_isocat_2(A,B,C,E,F,H))) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
