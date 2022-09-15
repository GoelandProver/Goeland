%------------------------------------------------------------------------------
% File     : SEU440+1 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Problem  : First and Second Order Cutting of Binary Relations T52
% Version  : [Urb08] axioms : Especial.
% English  :

% Refs     : [Ret05] Retel (2005), Properties of First and Second Order Cut
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : t52_relset_2 [Urb08]

% Status   : Theorem
% Rating   : 0.83 v8.1.0, 0.78 v7.5.0, 0.84 v7.4.0, 0.70 v7.3.0, 0.72 v7.1.0, 0.70 v7.0.0, 0.77 v6.4.0, 0.73 v6.3.0, 0.71 v6.2.0, 0.88 v6.1.0, 0.97 v6.0.0, 0.91 v5.5.0, 0.93 v5.3.0, 0.96 v5.2.0, 0.95 v5.0.0, 1.00 v3.4.0
% Syntax   : Number of formulae    :   62 (  16 unt;   0 def)
%            Number of atoms       :  134 (  15 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   88 (  16   ~;   1   |;  30   &)
%                                         (   2 <=>;  39  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   10 (   8 usr;   1 prp; 0-3 aty)
%            Number of functors    :   14 (  14 usr;   1 con; 0-5 aty)
%            Number of variables   :  114 ( 106   !;   8   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Normal version: includes the axioms (which may be theorems from
%            other articles) and background that are possibly necessary.
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : The problem encoding is based on set theory.
%------------------------------------------------------------------------------
fof(t52_relset_2,conjecture,
    ! [A,B,C,D] :
      ( m2_relset_1(D,A,B)
     => ! [E] :
          ( m2_relset_1(E,B,C)
         => ( k1_funct_5(k9_relset_2(A,B,C,D,E)) = k10_relset_1(B,A,k6_relset_1(A,B,D),k1_funct_5(E))
            & r1_tarski(k1_funct_5(k9_relset_2(A,B,C,D,E)),k1_funct_5(D)) ) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => v1_relat_1(A) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) ).

fof(dt_k10_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(C,A,B)
     => m1_subset_1(k10_relset_1(A,B,C,D),k1_zfmisc_1(B)) ) ).

fof(dt_k1_funct_5,axiom,
    $true ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_funct_5,axiom,
    $true ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_k4_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => v1_relat_1(k4_relat_1(A)) ) ).

fof(dt_k4_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => m1_subset_1(k4_relset_1(A,B,C),k1_zfmisc_1(A)) ) ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => v1_relat_1(k5_relat_1(A,B)) ) ).

fof(dt_k6_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => m2_relset_1(k6_relset_1(A,B,C),B,A) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(dt_k9_relset_2,axiom,
    ! [A,B,C,D,E] :
      ( ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(B,C))) )
     => m2_relset_1(k9_relset_2(A,B,C,D,E),A,C) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : m1_subset_1(B,A) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) ).

fof(fc10_relat_1,axiom,
    ! [A,B] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(B) )
     => ( v1_xboole_0(k5_relat_1(B,A))
        & v1_relat_1(k5_relat_1(B,A)) ) ) ).

fof(fc11_relat_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => ( v1_xboole_0(k4_relat_1(A))
        & v1_relat_1(k4_relat_1(A)) ) ) ).

fof(fc12_relat_1,axiom,
    ( v1_xboole_0(k1_xboole_0)
    & v1_relat_1(k1_xboole_0)
    & v3_relat_1(k1_xboole_0) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) ).

fof(fc1_sysrel,axiom,
    ! [A,B] : v1_relat_1(k2_zfmisc_1(A,B)) ).

fof(fc4_relat_1,axiom,
    ( v1_xboole_0(k1_xboole_0)
    & v1_relat_1(k1_xboole_0) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ~ v1_xboole_0(k2_zfmisc_1(A,B)) ) ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_relat_1(A) )
     => ~ v1_xboole_0(k1_relat_1(A)) ) ).

fof(fc6_relat_1,axiom,
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_relat_1(A) )
     => ~ v1_xboole_0(k2_relat_1(A)) ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => ( v1_xboole_0(k1_relat_1(A))
        & v1_relat_1(k1_relat_1(A)) ) ) ).

fof(fc8_relat_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => ( v1_xboole_0(k2_relat_1(A))
        & v1_relat_1(k2_relat_1(A)) ) ) ).

fof(fc9_relat_1,axiom,
    ! [A,B] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(B) )
     => ( v1_xboole_0(k5_relat_1(A,B))
        & v1_relat_1(k5_relat_1(A,B)) ) ) ).

fof(involutiveness_k4_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k4_relat_1(k4_relat_1(A)) = A ) ).

fof(involutiveness_k6_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => k6_relset_1(A,B,k6_relset_1(A,B,C)) = C ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( v1_xboole_0(A)
      & v1_relat_1(A) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B) ) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_relat_1(A) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & v1_xboole_0(B) ) ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v3_relat_1(A) ) ).

fof(redefinition_k10_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(C,A,B)
     => k10_relset_1(A,B,C,D) = k9_relat_1(C,D) ) ).

fof(redefinition_k4_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => k4_relset_1(A,B,C) = k1_relat_1(C) ) ).

fof(redefinition_k6_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => k6_relset_1(A,B,C) = k4_relat_1(C) ) ).

fof(redefinition_k9_relset_2,axiom,
    ! [A,B,C,D,E] :
      ( ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(B,C))) )
     => k9_relset_2(A,B,C,D,E) = k5_relat_1(D,E) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
    <=> m1_relset_1(C,A,B) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : r1_tarski(A,A) ).

fof(t156_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => r1_tarski(k9_relat_1(C,A),k9_relat_1(C,B)) ) ) ).

fof(t159_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k9_relat_1(k5_relat_1(B,C),A) = k9_relat_1(C,k9_relat_1(B,A)) ) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) ).

fof(t21_funct_5,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( k1_funct_5(A) = k1_relat_1(A)
        & k2_funct_5(A) = k2_relat_1(A) ) ) ).

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

fof(t51_relset_2,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,B,A)
     => ( k1_funct_5(C) = k10_relset_1(A,B,k6_relset_1(B,A,C),A)
        & k2_funct_5(C) = k10_relset_1(B,A,C,B) ) ) ).

fof(t54_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k4_relat_1(k5_relat_1(A,B)) = k5_relat_1(k4_relat_1(B),k4_relat_1(A)) ) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) ).

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
