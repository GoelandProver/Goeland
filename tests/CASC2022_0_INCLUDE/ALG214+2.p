%------------------------------------------------------------------------------
% File     : ALG214+2 : TPTP v8.1.0. Released v3.4.0.
% Domain   : General Algebra
% Problem  : Linear Independence in Right Module over Domain T02
% Version  : [Urb08] axioms : Especial.
% English  :

% Refs     : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : t2_rmod_5 [Urb08]

% Status   : Theorem
% Rating   : 0.89 v7.5.0, 0.94 v7.4.0, 0.93 v7.1.0, 0.91 v7.0.0, 0.93 v6.4.0, 0.92 v6.3.0, 0.88 v6.2.0, 0.92 v6.1.0, 0.97 v6.0.0, 0.91 v5.5.0, 0.96 v5.2.0, 0.95 v5.0.0, 1.00 v3.4.0
% Syntax   : Number of formulae    : 3445 (1087 unt;   0 def)
%            Number of atoms       : 19976 (2538 equ)
%            Maximal formula atoms :   49 (   5 avg)
%            Number of connectives : 18567 (2036   ~; 132   |;10689   &)
%                                         ( 512 <=>;5198  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   29 (   6 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :  215 ( 213 usr;   1 prp; 0-4 aty)
%            Number of functors    :  559 ( 559 usr; 230 con; 0-8 aty)
%            Number of variables   : 7515 (7140   !; 375   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Bushy version: includes all articles that contribute axioms to the
%            Normal version.
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : The problem encoding is based on set theory.
%------------------------------------------------------------------------------
%------------------------------------------------------------------------------
% File     : SET007+0 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Mizar Built-in Notions
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : hidden [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :    2 (   0 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    2 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (   2   !;   0   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+1 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Tarski Grothendieck Set Theory
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : tarski [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   22 (  13 unt;   0 def)
%            Number of atoms       :   62 (  12 equ)
%            Maximal formula atoms :   11 (   2 avg)
%            Number of connectives :   52 (  12   ~;   1   |;  21   &)
%                                         (  11 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    6 (   4 usr;   1 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   1 con; 0-2 aty)
%            Number of variables   :   52 (  47   !;   5   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(t1_tarski,axiom,
    $true ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( r2_hidden(C,A)
        <=> r2_hidden(C,B) )
     => A = B ) ).

fof(d1_tarski,axiom,
    ! [A,B] :
      ( B = k1_tarski(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> C = A ) ) ).

fof(d2_tarski,axiom,
    ! [A,B,C] :
      ( C = k2_tarski(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( D = A
            | D = B ) ) ) ).

fof(t3_tarski,axiom,
    $true ).

fof(t4_tarski,axiom,
    $true ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( B = k3_tarski(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> ? [D] :
              ( r2_hidden(C,D)
              & r2_hidden(D,A) ) ) ) ).

fof(t5_tarski,axiom,
    $true ).

fof(t6_tarski,axiom,
    $true ).

fof(t7_tarski,axiom,
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & ! [C] :
            ~ ( r2_hidden(C,B)
              & ! [D] :
                  ~ ( r2_hidden(D,B)
                    & r2_hidden(D,C) ) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : k4_tarski(A,B) = k2_tarski(k2_tarski(A,B),k1_tarski(A)) ).

fof(t8_tarski,axiom,
    $true ).

fof(d6_tarski,axiom,
    ! [A,B] :
      ( r2_tarski(A,B)
    <=> ? [C] :
          ( ! [D] :
              ~ ( r2_hidden(D,A)
                & ! [E] :
                    ~ ( r2_hidden(E,B)
                      & r2_hidden(k4_tarski(D,E),C) ) )
          & ! [D] :
              ~ ( r2_hidden(D,B)
                & ! [E] :
                    ~ ( r2_hidden(E,A)
                      & r2_hidden(k4_tarski(E,D),C) ) )
          & ! [D,E,F,G] :
              ( ( r2_hidden(k4_tarski(D,E),C)
                & r2_hidden(k4_tarski(F,G),C) )
             => ( D = F
              <=> E = G ) ) ) ) ).

fof(t9_tarski,axiom,
    ! [A] :
    ? [B] :
      ( r2_hidden(A,B)
      & ! [C,D] :
          ( ( r2_hidden(C,B)
            & r1_tarski(D,C) )
         => r2_hidden(D,B) )
      & ! [C] :
          ~ ( r2_hidden(C,B)
            & ! [D] :
                ~ ( r2_hidden(D,B)
                  & ! [E] :
                      ( r1_tarski(E,C)
                     => r2_hidden(E,D) ) ) )
      & ! [C] :
          ~ ( r1_tarski(C,B)
            & ~ r2_tarski(C,B)
            & ~ r2_hidden(C,B) ) ) ).

fof(s1_tarski,axiom,
    ( ! [A,B,C] :
        ( ( p1_s1_tarski(A,B)
          & p1_s1_tarski(A,C) )
       => B = C )
   => ? [A] :
      ! [B] :
        ( r2_hidden(B,A)
      <=> ? [C] :
            ( r2_hidden(C,f1_s1_tarski)
            & p1_s1_tarski(C,B) ) ) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : r1_tarski(A,A) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : k2_tarski(A,B) = k2_tarski(B,A) ).

fof(dt_k3_tarski,axiom,
    $true ).

fof(dt_k4_tarski,axiom,
    $true ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+2 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Boolean Properties of Sets - Definitions
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : xboole_0 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   38 (  16 unt;   0 def)
%            Number of atoms       :   89 (  17 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   76 (  25   ~;   2   |;  20   &)
%                                         (  21 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   11 (   9 usr;   1 prp; 0-2 aty)
%            Number of functors    :    8 (   8 usr;   4 con; 0-2 aty)
%            Number of variables   :   77 (  72   !;   5   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(fc1_xboole_0,axiom,
    v1_xboole_0(k1_xboole_0) ).

fof(rc1_xboole_0,axiom,
    ? [A] : v1_xboole_0(A) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ v1_xboole_0(A) ).

fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(A)
     => ~ v1_xboole_0(k2_xboole_0(A,B)) ) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(A)
     => ~ v1_xboole_0(k2_xboole_0(B,A)) ) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( A = k1_xboole_0
    <=> ! [B] : ~ r2_hidden(B,A) ) ).

fof(d2_xboole_0,axiom,
    ! [A,B,C] :
      ( C = k2_xboole_0(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,A)
            | r2_hidden(D,B) ) ) ) ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( C = k3_xboole_0(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,A)
            & r2_hidden(D,B) ) ) ) ).

fof(d4_xboole_0,axiom,
    ! [A,B,C] :
      ( C = k4_xboole_0(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,A)
            & ~ r2_hidden(D,B) ) ) ) ).

fof(d5_xboole_0,axiom,
    ! [A] :
      ( v1_xboole_0(A)
    <=> A = k1_xboole_0 ) ).

fof(d6_xboole_0,axiom,
    ! [A,B] : k5_xboole_0(A,B) = k2_xboole_0(k4_xboole_0(A,B),k4_xboole_0(B,A)) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( r1_xboole_0(A,B)
    <=> k3_xboole_0(A,B) = k1_xboole_0 ) ).

fof(d8_xboole_0,axiom,
    ! [A,B] :
      ( r2_xboole_0(A,B)
    <=> ( r1_tarski(A,B)
        & A != B ) ) ).

fof(d9_xboole_0,axiom,
    ! [A,B] :
      ( r3_xboole_0(A,B)
    <=> ( r1_tarski(A,B)
        | r1_tarski(B,A) ) ) ).

fof(d10_xboole_0,axiom,
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) ).

fof(t1_xboole_0,axiom,
    ! [A,B,C] :
      ( r2_hidden(A,k5_xboole_0(B,C))
    <=> ~ ( r2_hidden(A,B)
        <=> r2_hidden(A,C) ) ) ).

fof(t2_xboole_0,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ~ r2_hidden(D,A)
        <=> ( r2_hidden(D,B)
          <=> r2_hidden(D,C) ) )
     => A = k5_xboole_0(B,C) ) ).

fof(t3_xboole_0,axiom,
    ! [A,B] :
      ( ~ ( ~ r1_xboole_0(A,B)
          & ! [C] :
              ~ ( r2_hidden(C,A)
                & r2_hidden(C,B) ) )
      & ~ ( ? [C] :
              ( r2_hidden(C,A)
              & r2_hidden(C,B) )
          & r1_xboole_0(A,B) ) ) ).

fof(t4_xboole_0,axiom,
    ! [A,B] :
      ( ~ ( ~ r1_xboole_0(A,B)
          & ! [C] : ~ r2_hidden(C,k3_xboole_0(A,B)) )
      & ~ ( ? [C] : r2_hidden(C,k3_xboole_0(A,B))
          & r1_xboole_0(A,B) ) ) ).

fof(t5_xboole_0,axiom,
    ! [A,B,C] :
      ~ ( r1_xboole_0(A,B)
        & r2_hidden(C,k2_xboole_0(A,B))
        & ~ ( r2_hidden(C,A)
            & ~ r2_hidden(C,B) )
        & ~ ( r2_hidden(C,B)
            & ~ r2_hidden(C,A) ) ) ).

fof(s1_xboole_0,axiom,
    ? [A] :
    ! [B] :
      ( r2_hidden(B,A)
    <=> ( r2_hidden(B,f1_s1_xboole_0)
        & p1_s1_xboole_0(B) ) ) ).

fof(s2_xboole_0,axiom,
    ( ( ! [A] :
          ( r2_hidden(A,f1_s2_xboole_0)
        <=> p1_s2_xboole_0(A) )
      & ! [A] :
          ( r2_hidden(A,f2_s2_xboole_0)
        <=> p1_s2_xboole_0(A) ) )
   => f1_s2_xboole_0 = f2_s2_xboole_0 ) ).

fof(s3_xboole_0,axiom,
    ! [A,B] :
      ( ( ! [C] :
            ( r2_hidden(C,A)
          <=> p1_s3_xboole_0(C) )
        & ! [C] :
            ( r2_hidden(C,B)
          <=> p1_s3_xboole_0(C) ) )
     => A = B ) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( r1_xboole_0(A,B)
     => r1_xboole_0(B,A) ) ).

fof(irreflexivity_r2_xboole_0,axiom,
    ! [A,B] : ~ r2_xboole_0(A,A) ).

fof(antisymmetry_r2_xboole_0,axiom,
    ! [A,B] :
      ( r2_xboole_0(A,B)
     => ~ r2_xboole_0(B,A) ) ).

fof(symmetry_r3_xboole_0,axiom,
    ! [A,B] :
      ( r3_xboole_0(A,B)
     => r3_xboole_0(B,A) ) ).

fof(reflexivity_r3_xboole_0,axiom,
    ! [A,B] : r3_xboole_0(A,A) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : k2_xboole_0(A,B) = k2_xboole_0(B,A) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : k2_xboole_0(A,A) = A ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : k3_xboole_0(A,B) = k3_xboole_0(B,A) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : k3_xboole_0(A,A) = A ).

fof(dt_k4_xboole_0,axiom,
    $true ).

fof(dt_k5_xboole_0,axiom,
    $true ).

fof(commutativity_k5_xboole_0,axiom,
    ! [A,B] : k5_xboole_0(A,B) = k5_xboole_0(B,A) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+3 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Boolean Properties of Sets - Requirements
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : boole [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :    8 (   5 unt;   0 def)
%            Number of atoms       :   12 (   7 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    7 (   3   ~;   0   |;   3   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   5 usr;   1 con; 0-2 aty)
%            Number of variables   :   10 (  10   !;   0   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(t1_boole,axiom,
    ! [A] : k2_xboole_0(A,k1_xboole_0) = A ).

fof(t2_boole,axiom,
    ! [A] : k3_xboole_0(A,k1_xboole_0) = k1_xboole_0 ).

fof(t3_boole,axiom,
    ! [A] : k4_xboole_0(A,k1_xboole_0) = A ).

fof(t4_boole,axiom,
    ! [A] : k4_xboole_0(k1_xboole_0,A) = k1_xboole_0 ).

fof(t5_boole,axiom,
    ! [A] : k5_xboole_0(A,k1_xboole_0) = A ).

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

%------------------------------------------------------------------------------
% File     : SET007+4 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Boolean Properties of Sets - Theorems
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : xboole_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  114 (  50 unt;   0 def)
%            Number of atoms       :  225 (  63 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :  140 (  29   ~;   0   |;  54   &)
%                                         (   4 <=>;  53  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   5 usr;   1 con; 0-2 aty)
%            Number of variables   :  297 ( 297   !;   0   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(t1_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(B,C) )
     => r1_tarski(A,C) ) ).

fof(t2_xboole_1,axiom,
    ! [A] : r1_tarski(k1_xboole_0,A) ).

fof(t3_xboole_1,axiom,
    ! [A] :
      ( r1_tarski(A,k1_xboole_0)
     => A = k1_xboole_0 ) ).

fof(t4_xboole_1,axiom,
    ! [A,B,C] : k2_xboole_0(k2_xboole_0(A,B),C) = k2_xboole_0(A,k2_xboole_0(B,C)) ).

fof(t5_xboole_1,axiom,
    ! [A,B,C] : k2_xboole_0(k2_xboole_0(A,B),C) = k2_xboole_0(k2_xboole_0(A,C),k2_xboole_0(B,C)) ).

fof(t6_xboole_1,axiom,
    ! [A,B] : k2_xboole_0(A,k2_xboole_0(A,B)) = k2_xboole_0(A,B) ).

fof(t7_xboole_1,axiom,
    ! [A,B] : r1_tarski(A,k2_xboole_0(A,B)) ).

fof(t8_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,B) )
     => r1_tarski(k2_xboole_0(A,C),B) ) ).

fof(t9_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => r1_tarski(k2_xboole_0(A,C),k2_xboole_0(B,C)) ) ).

fof(t10_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => r1_tarski(A,k2_xboole_0(C,B)) ) ).

fof(t11_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(k2_xboole_0(A,B),C)
     => r1_tarski(A,C) ) ).

fof(t12_xboole_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => k2_xboole_0(A,B) = B ) ).

fof(t13_xboole_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,D) )
     => r1_tarski(k2_xboole_0(A,C),k2_xboole_0(B,D)) ) ).

fof(t14_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,B)
        & ! [D] :
            ( ( r1_tarski(A,D)
              & r1_tarski(C,D) )
           => r1_tarski(B,D) ) )
     => B = k2_xboole_0(A,C) ) ).

fof(t15_xboole_1,axiom,
    ! [A,B] :
      ( k2_xboole_0(A,B) = k1_xboole_0
     => A = k1_xboole_0 ) ).

fof(t16_xboole_1,axiom,
    ! [A,B,C] : k3_xboole_0(k3_xboole_0(A,B),C) = k3_xboole_0(A,k3_xboole_0(B,C)) ).

fof(t17_xboole_1,axiom,
    ! [A,B] : r1_tarski(k3_xboole_0(A,B),A) ).

fof(t18_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,k3_xboole_0(B,C))
     => r1_tarski(A,B) ) ).

fof(t19_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(A,C) )
     => r1_tarski(A,k3_xboole_0(B,C)) ) ).

fof(t20_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(A,C)
        & ! [D] :
            ( ( r1_tarski(D,B)
              & r1_tarski(D,C) )
           => r1_tarski(D,A) ) )
     => A = k3_xboole_0(B,C) ) ).

fof(t21_xboole_1,axiom,
    ! [A,B] : k3_xboole_0(A,k2_xboole_0(A,B)) = A ).

fof(t22_xboole_1,axiom,
    ! [A,B] : k2_xboole_0(A,k3_xboole_0(A,B)) = A ).

fof(t23_xboole_1,axiom,
    ! [A,B,C] : k3_xboole_0(A,k2_xboole_0(B,C)) = k2_xboole_0(k3_xboole_0(A,B),k3_xboole_0(A,C)) ).

fof(t24_xboole_1,axiom,
    ! [A,B,C] : k2_xboole_0(A,k3_xboole_0(B,C)) = k3_xboole_0(k2_xboole_0(A,B),k2_xboole_0(A,C)) ).

fof(t25_xboole_1,axiom,
    ! [A,B,C] : k2_xboole_0(k2_xboole_0(k3_xboole_0(A,B),k3_xboole_0(B,C)),k3_xboole_0(C,A)) = k3_xboole_0(k3_xboole_0(k2_xboole_0(A,B),k2_xboole_0(B,C)),k2_xboole_0(C,A)) ).

fof(t26_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => r1_tarski(k3_xboole_0(A,C),k3_xboole_0(B,C)) ) ).

fof(t27_xboole_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,D) )
     => r1_tarski(k3_xboole_0(A,C),k3_xboole_0(B,D)) ) ).

fof(t28_xboole_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => k3_xboole_0(A,B) = A ) ).

fof(t29_xboole_1,axiom,
    ! [A,B,C] : r1_tarski(k3_xboole_0(A,B),k2_xboole_0(A,C)) ).

fof(t30_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => k2_xboole_0(A,k3_xboole_0(C,B)) = k3_xboole_0(k2_xboole_0(A,C),B) ) ).

fof(t31_xboole_1,axiom,
    ! [A,B,C] : r1_tarski(k2_xboole_0(k3_xboole_0(A,B),k3_xboole_0(A,C)),k2_xboole_0(B,C)) ).

fof(t32_xboole_1,axiom,
    ! [A,B] :
      ( k4_xboole_0(A,B) = k4_xboole_0(B,A)
     => A = B ) ).

fof(t33_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => r1_tarski(k4_xboole_0(A,C),k4_xboole_0(B,C)) ) ).

fof(t34_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => r1_tarski(k4_xboole_0(C,B),k4_xboole_0(C,A)) ) ).

fof(t35_xboole_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,D) )
     => r1_tarski(k4_xboole_0(A,D),k4_xboole_0(B,C)) ) ).

fof(t36_xboole_1,axiom,
    ! [A,B] : r1_tarski(k4_xboole_0(A,B),A) ).

fof(t37_xboole_1,axiom,
    ! [A,B] :
      ( k4_xboole_0(A,B) = k1_xboole_0
    <=> r1_tarski(A,B) ) ).

fof(t38_xboole_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,k4_xboole_0(B,A))
     => A = k1_xboole_0 ) ).

fof(t39_xboole_1,axiom,
    ! [A,B] : k2_xboole_0(A,k4_xboole_0(B,A)) = k2_xboole_0(A,B) ).

fof(t40_xboole_1,axiom,
    ! [A,B] : k4_xboole_0(k2_xboole_0(A,B),B) = k4_xboole_0(A,B) ).

fof(t41_xboole_1,axiom,
    ! [A,B,C] : k4_xboole_0(k4_xboole_0(A,B),C) = k4_xboole_0(A,k2_xboole_0(B,C)) ).

fof(t42_xboole_1,axiom,
    ! [A,B,C] : k4_xboole_0(k2_xboole_0(A,B),C) = k2_xboole_0(k4_xboole_0(A,C),k4_xboole_0(B,C)) ).

fof(t43_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,k2_xboole_0(B,C))
     => r1_tarski(k4_xboole_0(A,B),C) ) ).

fof(t44_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(k4_xboole_0(A,B),C)
     => r1_tarski(A,k2_xboole_0(B,C)) ) ).

fof(t45_xboole_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => B = k2_xboole_0(A,k4_xboole_0(B,A)) ) ).

fof(t46_xboole_1,axiom,
    ! [A,B] : k4_xboole_0(A,k2_xboole_0(A,B)) = k1_xboole_0 ).

fof(t47_xboole_1,axiom,
    ! [A,B] : k4_xboole_0(A,k3_xboole_0(A,B)) = k4_xboole_0(A,B) ).

fof(t48_xboole_1,axiom,
    ! [A,B] : k4_xboole_0(A,k4_xboole_0(A,B)) = k3_xboole_0(A,B) ).

fof(t49_xboole_1,axiom,
    ! [A,B,C] : k3_xboole_0(A,k4_xboole_0(B,C)) = k4_xboole_0(k3_xboole_0(A,B),C) ).

fof(t50_xboole_1,axiom,
    ! [A,B,C] : k3_xboole_0(A,k4_xboole_0(B,C)) = k4_xboole_0(k3_xboole_0(A,B),k3_xboole_0(A,C)) ).

fof(t51_xboole_1,axiom,
    ! [A,B] : k2_xboole_0(k3_xboole_0(A,B),k4_xboole_0(A,B)) = A ).

fof(t52_xboole_1,axiom,
    ! [A,B,C] : k4_xboole_0(A,k4_xboole_0(B,C)) = k2_xboole_0(k4_xboole_0(A,B),k3_xboole_0(A,C)) ).

fof(t53_xboole_1,axiom,
    ! [A,B,C] : k4_xboole_0(A,k2_xboole_0(B,C)) = k3_xboole_0(k4_xboole_0(A,B),k4_xboole_0(A,C)) ).

fof(t54_xboole_1,axiom,
    ! [A,B,C] : k4_xboole_0(A,k3_xboole_0(B,C)) = k2_xboole_0(k4_xboole_0(A,B),k4_xboole_0(A,C)) ).

fof(t55_xboole_1,axiom,
    ! [A,B] : k4_xboole_0(k2_xboole_0(A,B),k3_xboole_0(A,B)) = k2_xboole_0(k4_xboole_0(A,B),k4_xboole_0(B,A)) ).

fof(t56_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r2_xboole_0(A,B)
        & r2_xboole_0(B,C) )
     => r2_xboole_0(A,C) ) ).

fof(t57_xboole_1,axiom,
    ! [A,B] :
      ~ ( r2_xboole_0(A,B)
        & r2_xboole_0(B,A) ) ).

fof(t58_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r2_xboole_0(A,B)
        & r1_tarski(B,C) )
     => r2_xboole_0(A,C) ) ).

fof(t59_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r2_xboole_0(B,C) )
     => r2_xboole_0(A,C) ) ).

fof(t60_xboole_1,axiom,
    ! [A,B] :
      ~ ( r1_tarski(A,B)
        & r2_xboole_0(B,A) ) ).

fof(t61_xboole_1,axiom,
    ! [A] :
      ( A != k1_xboole_0
     => r2_xboole_0(k1_xboole_0,A) ) ).

fof(t62_xboole_1,axiom,
    ! [A] : ~ r2_xboole_0(A,k1_xboole_0) ).

fof(t63_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_xboole_0(B,C) )
     => r1_xboole_0(A,C) ) ).

fof(t64_xboole_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,D)
        & r1_xboole_0(B,D) )
     => r1_xboole_0(A,C) ) ).

fof(t65_xboole_1,axiom,
    ! [A] : r1_xboole_0(A,k1_xboole_0) ).

fof(t66_xboole_1,axiom,
    ! [A] :
      ( ~ ( ~ r1_xboole_0(A,A)
          & A = k1_xboole_0 )
      & ~ ( A != k1_xboole_0
          & r1_xboole_0(A,A) ) ) ).

fof(t67_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(A,C)
        & r1_xboole_0(B,C) )
     => A = k1_xboole_0 ) ).

fof(t68_xboole_1,axiom,
    ! [A,B,C] :
      ( ~ v1_xboole_0(C)
     => ~ ( r1_tarski(C,A)
          & r1_tarski(C,B)
          & r1_xboole_0(A,B) ) ) ).

fof(t69_xboole_1,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ~ ( r1_tarski(B,A)
          & r1_xboole_0(B,A) ) ) ).

fof(t70_xboole_1,axiom,
    ! [A,B,C] :
      ( ~ ( ~ r1_xboole_0(A,k2_xboole_0(B,C))
          & r1_xboole_0(A,B)
          & r1_xboole_0(A,C) )
      & ~ ( ~ ( r1_xboole_0(A,B)
              & r1_xboole_0(A,C) )
          & r1_xboole_0(A,k2_xboole_0(B,C)) ) ) ).

fof(t71_xboole_1,axiom,
    ! [A,B,C] :
      ( ( k2_xboole_0(A,B) = k2_xboole_0(C,B)
        & r1_xboole_0(A,B)
        & r1_xboole_0(C,B) )
     => A = C ) ).

fof(t72_xboole_1,axiom,
    ! [A,B,C,D] :
      ( ( k2_xboole_0(A,B) = k2_xboole_0(C,D)
        & r1_xboole_0(C,A)
        & r1_xboole_0(D,B) )
     => C = B ) ).

fof(t73_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,k2_xboole_0(B,C))
        & r1_xboole_0(A,C) )
     => r1_tarski(A,B) ) ).

fof(t74_xboole_1,axiom,
    ! [A,B,C] :
      ~ ( ~ r1_xboole_0(A,k3_xboole_0(B,C))
        & r1_xboole_0(A,B) ) ).

fof(t75_xboole_1,axiom,
    ! [A,B] :
      ~ ( ~ r1_xboole_0(A,B)
        & r1_xboole_0(k3_xboole_0(A,B),B) ) ).

fof(t76_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_xboole_0(A,B)
     => r1_xboole_0(k3_xboole_0(C,A),k3_xboole_0(C,B)) ) ).

fof(t77_xboole_1,axiom,
    ! [A,B,C] :
      ~ ( ~ r1_xboole_0(A,B)
        & r1_tarski(A,C)
        & r1_xboole_0(A,k3_xboole_0(B,C)) ) ).

fof(t78_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_xboole_0(A,B)
     => k3_xboole_0(A,k2_xboole_0(B,C)) = k3_xboole_0(A,C) ) ).

fof(t79_xboole_1,axiom,
    ! [A,B] : r1_xboole_0(k4_xboole_0(A,B),B) ).

fof(t80_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_xboole_0(A,B)
     => r1_xboole_0(A,k4_xboole_0(B,C)) ) ).

fof(t81_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_xboole_0(A,k4_xboole_0(B,C))
     => r1_xboole_0(B,k4_xboole_0(A,C)) ) ).

fof(t82_xboole_1,axiom,
    ! [A,B] : r1_xboole_0(k4_xboole_0(A,B),k4_xboole_0(B,A)) ).

fof(t83_xboole_1,axiom,
    ! [A,B] :
      ( r1_xboole_0(A,B)
    <=> k4_xboole_0(A,B) = A ) ).

fof(t84_xboole_1,axiom,
    ! [A,B,C] :
      ~ ( ~ r1_xboole_0(A,B)
        & r1_xboole_0(A,C)
        & r1_xboole_0(A,k4_xboole_0(B,C)) ) ).

fof(t85_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => r1_xboole_0(A,k4_xboole_0(C,B)) ) ).

fof(t86_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_xboole_0(A,C) )
     => r1_tarski(A,k4_xboole_0(B,C)) ) ).

fof(t87_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_xboole_0(A,B)
     => k2_xboole_0(k4_xboole_0(C,A),B) = k4_xboole_0(k2_xboole_0(C,B),A) ) ).

fof(t88_xboole_1,axiom,
    ! [A,B] :
      ( r1_xboole_0(A,B)
     => k4_xboole_0(k2_xboole_0(A,B),B) = A ) ).

fof(t89_xboole_1,axiom,
    ! [A,B] : r1_xboole_0(k3_xboole_0(A,B),k4_xboole_0(A,B)) ).

fof(t90_xboole_1,axiom,
    ! [A,B] : r1_xboole_0(k4_xboole_0(A,k3_xboole_0(A,B)),B) ).

fof(t91_xboole_1,axiom,
    ! [A,B,C] : k5_xboole_0(k5_xboole_0(A,B),C) = k5_xboole_0(A,k5_xboole_0(B,C)) ).

fof(t92_xboole_1,axiom,
    ! [A] : k5_xboole_0(A,A) = k1_xboole_0 ).

fof(t93_xboole_1,axiom,
    ! [A,B] : k2_xboole_0(A,B) = k2_xboole_0(k5_xboole_0(A,B),k3_xboole_0(A,B)) ).

fof(t94_xboole_1,axiom,
    ! [A,B] : k2_xboole_0(A,B) = k5_xboole_0(k5_xboole_0(A,B),k3_xboole_0(A,B)) ).

fof(t95_xboole_1,axiom,
    ! [A,B] : k3_xboole_0(A,B) = k5_xboole_0(k5_xboole_0(A,B),k2_xboole_0(A,B)) ).

fof(t96_xboole_1,axiom,
    ! [A,B] : r1_tarski(k4_xboole_0(A,B),k5_xboole_0(A,B)) ).

fof(t97_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(k4_xboole_0(A,B),C)
        & r1_tarski(k4_xboole_0(B,A),C) )
     => r1_tarski(k5_xboole_0(A,B),C) ) ).

fof(t98_xboole_1,axiom,
    ! [A,B] : k2_xboole_0(A,B) = k5_xboole_0(A,k4_xboole_0(B,A)) ).

fof(t99_xboole_1,axiom,
    ! [A,B,C] : k4_xboole_0(k5_xboole_0(A,B),C) = k2_xboole_0(k4_xboole_0(A,k2_xboole_0(B,C)),k4_xboole_0(B,k2_xboole_0(A,C))) ).

fof(t100_xboole_1,axiom,
    ! [A,B] : k4_xboole_0(A,B) = k5_xboole_0(A,k3_xboole_0(A,B)) ).

fof(t101_xboole_1,axiom,
    ! [A,B] : k5_xboole_0(A,B) = k4_xboole_0(k2_xboole_0(A,B),k3_xboole_0(A,B)) ).

fof(t102_xboole_1,axiom,
    ! [A,B,C] : k4_xboole_0(A,k5_xboole_0(B,C)) = k2_xboole_0(k4_xboole_0(A,k2_xboole_0(B,C)),k3_xboole_0(k3_xboole_0(A,B),C)) ).

fof(t103_xboole_1,axiom,
    ! [A,B] : r1_xboole_0(k3_xboole_0(A,B),k5_xboole_0(A,B)) ).

fof(t104_xboole_1,axiom,
    ! [A,B] :
      ( ~ ( ~ r2_xboole_0(A,B)
          & A != B
          & ~ r2_xboole_0(B,A) )
    <=> r3_xboole_0(A,B) ) ).

fof(t105_xboole_1,axiom,
    ! [A,B] :
      ~ ( r2_xboole_0(A,B)
        & k4_xboole_0(B,A) = k1_xboole_0 ) ).

fof(t106_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,k4_xboole_0(B,C))
     => ( r1_tarski(A,B)
        & r1_xboole_0(A,C) ) ) ).

fof(t107_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,k5_xboole_0(B,C))
    <=> ( r1_tarski(A,k2_xboole_0(B,C))
        & r1_xboole_0(A,k3_xboole_0(B,C)) ) ) ).

fof(t108_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => r1_tarski(k3_xboole_0(A,C),B) ) ).

fof(t109_xboole_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => r1_tarski(k4_xboole_0(A,C),B) ) ).

fof(t110_xboole_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,B) )
     => r1_tarski(k5_xboole_0(A,C),B) ) ).

fof(t111_xboole_1,axiom,
    ! [A,B,C] : k4_xboole_0(k3_xboole_0(A,B),k3_xboole_0(C,B)) = k3_xboole_0(k4_xboole_0(A,C),B) ).

fof(t112_xboole_1,axiom,
    ! [A,B,C] : k5_xboole_0(k3_xboole_0(A,B),k3_xboole_0(C,B)) = k3_xboole_0(k5_xboole_0(A,C),B) ).

fof(t113_xboole_1,axiom,
    ! [A,B,C,D] : k2_xboole_0(k2_xboole_0(k2_xboole_0(A,B),C),D) = k2_xboole_0(A,k2_xboole_0(k2_xboole_0(B,C),D)) ).

fof(t114_xboole_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_xboole_0(A,D)
        & r1_xboole_0(B,D)
        & r1_xboole_0(C,D) )
     => r1_xboole_0(k2_xboole_0(k2_xboole_0(A,B),C),D) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+5 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Enumerated Sets
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : enumset1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  137 ( 131 unt;   0 def)
%            Number of atoms       :  176 ( 115 equ)
%            Maximal formula atoms :   10 (   1 avg)
%            Number of connectives :   78 (  39   ~;   0   |;  27   &)
%                                         (  12 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    3 (   1 usr;   1 prp; 0-2 aty)
%            Number of functors    :    9 (   9 usr;   0 con; 1-8 aty)
%            Number of variables   :  373 ( 373   !;   0   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(d1_enumset1,axiom,
    ! [A,B,C,D] :
      ( D = k1_enumset1(A,B,C)
    <=> ! [E] :
          ( r2_hidden(E,D)
        <=> ~ ( E != A
              & E != B
              & E != C ) ) ) ).

fof(d2_enumset1,axiom,
    ! [A,B,C,D,E] :
      ( E = k2_enumset1(A,B,C,D)
    <=> ! [F] :
          ( r2_hidden(F,E)
        <=> ~ ( F != A
              & F != B
              & F != C
              & F != D ) ) ) ).

fof(d3_enumset1,axiom,
    ! [A,B,C,D,E,F] :
      ( F = k3_enumset1(A,B,C,D,E)
    <=> ! [G] :
          ( r2_hidden(G,F)
        <=> ~ ( G != A
              & G != B
              & G != C
              & G != D
              & G != E ) ) ) ).

fof(d4_enumset1,axiom,
    ! [A,B,C,D,E,F,G] :
      ( G = k4_enumset1(A,B,C,D,E,F)
    <=> ! [H] :
          ( r2_hidden(H,G)
        <=> ~ ( H != A
              & H != B
              & H != C
              & H != D
              & H != E
              & H != F ) ) ) ).

fof(d5_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H] :
      ( H = k5_enumset1(A,B,C,D,E,F,G)
    <=> ! [I] :
          ( r2_hidden(I,H)
        <=> ~ ( I != A
              & I != B
              & I != C
              & I != D
              & I != E
              & I != F
              & I != G ) ) ) ).

fof(d6_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H,I] :
      ( I = k6_enumset1(A,B,C,D,E,F,G,H)
    <=> ! [J] :
          ( r2_hidden(J,I)
        <=> ~ ( J != A
              & J != B
              & J != C
              & J != D
              & J != E
              & J != F
              & J != G
              & J != H ) ) ) ).

fof(t1_enumset1,axiom,
    $true ).

fof(t2_enumset1,axiom,
    $true ).

fof(t3_enumset1,axiom,
    $true ).

fof(t4_enumset1,axiom,
    $true ).

fof(t5_enumset1,axiom,
    $true ).

fof(t6_enumset1,axiom,
    $true ).

fof(t7_enumset1,axiom,
    $true ).

fof(t8_enumset1,axiom,
    $true ).

fof(t9_enumset1,axiom,
    $true ).

fof(t10_enumset1,axiom,
    $true ).

fof(t11_enumset1,axiom,
    $true ).

fof(t12_enumset1,axiom,
    $true ).

fof(t13_enumset1,axiom,
    $true ).

fof(t14_enumset1,axiom,
    $true ).

fof(t15_enumset1,axiom,
    $true ).

fof(t16_enumset1,axiom,
    $true ).

fof(t17_enumset1,axiom,
    $true ).

fof(t18_enumset1,axiom,
    $true ).

fof(t19_enumset1,axiom,
    $true ).

fof(t20_enumset1,axiom,
    $true ).

fof(t21_enumset1,axiom,
    $true ).

fof(t22_enumset1,axiom,
    $true ).

fof(t23_enumset1,axiom,
    $true ).

fof(t24_enumset1,axiom,
    $true ).

fof(t25_enumset1,axiom,
    $true ).

fof(t26_enumset1,axiom,
    $true ).

fof(t27_enumset1,axiom,
    $true ).

fof(t28_enumset1,axiom,
    $true ).

fof(t29_enumset1,axiom,
    $true ).

fof(t30_enumset1,axiom,
    $true ).

fof(t31_enumset1,axiom,
    $true ).

fof(t32_enumset1,axiom,
    $true ).

fof(t33_enumset1,axiom,
    $true ).

fof(t34_enumset1,axiom,
    $true ).

fof(t35_enumset1,axiom,
    $true ).

fof(t36_enumset1,axiom,
    $true ).

fof(t37_enumset1,axiom,
    $true ).

fof(t38_enumset1,axiom,
    $true ).

fof(t39_enumset1,axiom,
    $true ).

fof(t40_enumset1,axiom,
    $true ).

fof(t41_enumset1,axiom,
    ! [A,B] : k2_tarski(A,B) = k2_xboole_0(k1_tarski(A),k1_tarski(B)) ).

fof(t42_enumset1,axiom,
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k1_tarski(A),k2_tarski(B,C)) ).

fof(t43_enumset1,axiom,
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k2_tarski(A,B),k1_tarski(C)) ).

fof(t44_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_tarski(A),k1_enumset1(B,C,D)) ).

fof(t45_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k2_tarski(A,B),k2_tarski(C,D)) ).

fof(t46_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_enumset1(A,B,C),k1_tarski(D)) ).

fof(t47_enumset1,axiom,
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k1_tarski(A),k2_enumset1(B,C,D,E)) ).

fof(t48_enumset1,axiom,
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k2_tarski(A,B),k1_enumset1(C,D,E)) ).

fof(t49_enumset1,axiom,
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k1_enumset1(A,B,C),k2_tarski(D,E)) ).

fof(t50_enumset1,axiom,
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k2_enumset1(A,B,C,D),k1_tarski(E)) ).

fof(t51_enumset1,axiom,
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k1_tarski(A),k3_enumset1(B,C,D,E,F)) ).

fof(t52_enumset1,axiom,
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k2_tarski(A,B),k2_enumset1(C,D,E,F)) ).

fof(t53_enumset1,axiom,
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k1_enumset1(A,B,C),k1_enumset1(D,E,F)) ).

fof(t54_enumset1,axiom,
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k2_enumset1(A,B,C,D),k2_tarski(E,F)) ).

fof(t55_enumset1,axiom,
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k3_enumset1(A,B,C,D,E),k1_tarski(F)) ).

fof(t56_enumset1,axiom,
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k1_tarski(A),k4_enumset1(B,C,D,E,F,G)) ).

fof(t57_enumset1,axiom,
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k2_tarski(A,B),k3_enumset1(C,D,E,F,G)) ).

fof(t58_enumset1,axiom,
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k1_enumset1(A,B,C),k2_enumset1(D,E,F,G)) ).

fof(t59_enumset1,axiom,
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k2_enumset1(A,B,C,D),k1_enumset1(E,F,G)) ).

fof(t60_enumset1,axiom,
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k3_enumset1(A,B,C,D,E),k2_tarski(F,G)) ).

fof(t61_enumset1,axiom,
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k4_enumset1(A,B,C,D,E,F),k1_tarski(G)) ).

fof(t62_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k1_tarski(A),k5_enumset1(B,C,D,E,F,G,H)) ).

fof(t63_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k2_tarski(A,B),k4_enumset1(C,D,E,F,G,H)) ).

fof(t64_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k1_enumset1(A,B,C),k3_enumset1(D,E,F,G,H)) ).

fof(t65_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k2_enumset1(A,B,C,D),k2_enumset1(E,F,G,H)) ).

fof(t66_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k3_enumset1(A,B,C,D,E),k1_enumset1(F,G,H)) ).

fof(t67_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k4_enumset1(A,B,C,D,E,F),k2_tarski(G,H)) ).

fof(t68_enumset1,axiom,
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k5_enumset1(A,B,C,D,E,F,G),k1_tarski(H)) ).

fof(t69_enumset1,axiom,
    ! [A] : k2_tarski(A,A) = k1_tarski(A) ).

fof(t70_enumset1,axiom,
    ! [A,B] : k1_enumset1(A,A,B) = k2_tarski(A,B) ).

fof(t71_enumset1,axiom,
    ! [A,B,C] : k2_enumset1(A,A,B,C) = k1_enumset1(A,B,C) ).

fof(t72_enumset1,axiom,
    ! [A,B,C,D] : k3_enumset1(A,A,B,C,D) = k2_enumset1(A,B,C,D) ).

fof(t73_enumset1,axiom,
    ! [A,B,C,D,E] : k4_enumset1(A,A,B,C,D,E) = k3_enumset1(A,B,C,D,E) ).

fof(t74_enumset1,axiom,
    ! [A,B,C,D,E,F] : k5_enumset1(A,A,B,C,D,E,F) = k4_enumset1(A,B,C,D,E,F) ).

fof(t75_enumset1,axiom,
    ! [A,B,C,D,E,F,G] : k6_enumset1(A,A,B,C,D,E,F,G) = k5_enumset1(A,B,C,D,E,F,G) ).

fof(t76_enumset1,axiom,
    ! [A] : k1_enumset1(A,A,A) = k1_tarski(A) ).

fof(t77_enumset1,axiom,
    ! [A,B] : k2_enumset1(A,A,A,B) = k2_tarski(A,B) ).

fof(t78_enumset1,axiom,
    ! [A,B,C] : k3_enumset1(A,A,A,B,C) = k1_enumset1(A,B,C) ).

fof(t79_enumset1,axiom,
    ! [A,B,C,D] : k4_enumset1(A,A,A,B,C,D) = k2_enumset1(A,B,C,D) ).

fof(t80_enumset1,axiom,
    ! [A,B,C,D,E] : k5_enumset1(A,A,A,B,C,D,E) = k3_enumset1(A,B,C,D,E) ).

fof(t81_enumset1,axiom,
    ! [A,B,C,D,E,F] : k6_enumset1(A,A,A,B,C,D,E,F) = k4_enumset1(A,B,C,D,E,F) ).

fof(t82_enumset1,axiom,
    ! [A] : k2_enumset1(A,A,A,A) = k1_tarski(A) ).

fof(t83_enumset1,axiom,
    ! [A,B] : k3_enumset1(A,A,A,A,B) = k2_tarski(A,B) ).

fof(t84_enumset1,axiom,
    ! [A,B,C] : k4_enumset1(A,A,A,A,B,C) = k1_enumset1(A,B,C) ).

fof(t85_enumset1,axiom,
    ! [A,B,C,D] : k5_enumset1(A,A,A,A,B,C,D) = k2_enumset1(A,B,C,D) ).

fof(t86_enumset1,axiom,
    ! [A,B,C,D,E] : k6_enumset1(A,A,A,A,B,C,D,E) = k3_enumset1(A,B,C,D,E) ).

fof(t87_enumset1,axiom,
    ! [A] : k3_enumset1(A,A,A,A,A) = k1_tarski(A) ).

fof(t88_enumset1,axiom,
    ! [A,B] : k4_enumset1(A,A,A,A,A,B) = k2_tarski(A,B) ).

fof(t89_enumset1,axiom,
    ! [A,B,C] : k5_enumset1(A,A,A,A,A,B,C) = k1_enumset1(A,B,C) ).

fof(t90_enumset1,axiom,
    ! [A,B,C,D] : k6_enumset1(A,A,A,A,A,B,C,D) = k2_enumset1(A,B,C,D) ).

fof(t91_enumset1,axiom,
    ! [A] : k4_enumset1(A,A,A,A,A,A) = k1_tarski(A) ).

fof(t92_enumset1,axiom,
    ! [A,B] : k5_enumset1(A,A,A,A,A,A,B) = k2_tarski(A,B) ).

fof(t93_enumset1,axiom,
    ! [A,B,C] : k6_enumset1(A,A,A,A,A,A,B,C) = k1_enumset1(A,B,C) ).

fof(t94_enumset1,axiom,
    ! [A] : k5_enumset1(A,A,A,A,A,A,A) = k1_tarski(A) ).

fof(t95_enumset1,axiom,
    ! [A,B] : k6_enumset1(A,A,A,A,A,A,A,B) = k2_tarski(A,B) ).

fof(t96_enumset1,axiom,
    ! [A] : k6_enumset1(A,A,A,A,A,A,A,A) = k1_tarski(A) ).

fof(t97_enumset1,axiom,
    $true ).

fof(t98_enumset1,axiom,
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(A,C,B) ).

fof(t99_enumset1,axiom,
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(B,A,C) ).

fof(t100_enumset1,axiom,
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(B,C,A) ).

fof(t101_enumset1,axiom,
    $true ).

fof(t102_enumset1,axiom,
    ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(C,B,A) ).

fof(t103_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(A,B,D,C) ).

fof(t104_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(A,C,B,D) ).

fof(t105_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(A,C,D,B) ).

fof(t106_enumset1,axiom,
    $true ).

fof(t107_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(A,D,C,B) ).

fof(t108_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,A,C,D) ).

fof(t109_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,A,D,C) ).

fof(t110_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,C,A,D) ).

fof(t111_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,C,D,A) ).

fof(t112_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,D,A,C) ).

fof(t113_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,D,C,A) ).

fof(t114_enumset1,axiom,
    $true ).

fof(t115_enumset1,axiom,
    $true ).

fof(t116_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,B,A,D) ).

fof(t117_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,B,D,A) ).

fof(t118_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,D,A,B) ).

fof(t119_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(C,D,B,A) ).

fof(t120_enumset1,axiom,
    $true ).

fof(t121_enumset1,axiom,
    $true ).

fof(t122_enumset1,axiom,
    $true ).

fof(t123_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(D,B,C,A) ).

fof(t124_enumset1,axiom,
    $true ).

fof(t125_enumset1,axiom,
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(D,C,B,A) ).

fof(dt_k1_enumset1,axiom,
    $true ).

fof(dt_k2_enumset1,axiom,
    $true ).

fof(dt_k3_enumset1,axiom,
    $true ).

fof(dt_k4_enumset1,axiom,
    $true ).

fof(dt_k5_enumset1,axiom,
    $true ).

fof(dt_k6_enumset1,axiom,
    $true ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+6 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Some Basic Properties of Sets
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : zfmisc_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  150 (  52 unt;   0 def)
%            Number of atoms       :  343 ( 159 equ)
%            Maximal formula atoms :    9 (   2 avg)
%            Number of connectives :  281 (  88   ~;  17   |;  90   &)
%                                         (  25 <=>;  61  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   5 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :    8 (   6 usr;   1 prp; 0-2 aty)
%            Number of functors    :   13 (  13 usr;   1 con; 0-4 aty)
%            Number of variables   :  371 ( 368   !;   3   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ v1_xboole_0(k4_tarski(A,B)) ).

fof(d1_zfmisc_1,axiom,
    ! [A,B] :
      ( B = k1_zfmisc_1(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> r1_tarski(C,A) ) ) ).

fof(d2_zfmisc_1,axiom,
    ! [A,B,C] :
      ( C = k2_zfmisc_1(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ? [E,F] :
              ( r2_hidden(E,A)
              & r2_hidden(F,B)
              & D = k4_tarski(E,F) ) ) ) ).

fof(d3_zfmisc_1,axiom,
    ! [A,B,C] : k3_zfmisc_1(A,B,C) = k2_zfmisc_1(k2_zfmisc_1(A,B),C) ).

fof(d4_zfmisc_1,axiom,
    ! [A,B,C,D] : k4_zfmisc_1(A,B,C,D) = k2_zfmisc_1(k3_zfmisc_1(A,B,C),D) ).

fof(t1_zfmisc_1,axiom,
    k1_zfmisc_1(k1_xboole_0) = k1_tarski(k1_xboole_0) ).

fof(t2_zfmisc_1,axiom,
    k3_tarski(k1_xboole_0) = k1_xboole_0 ).

fof(t3_zfmisc_1,axiom,
    $true ).

fof(t4_zfmisc_1,axiom,
    $true ).

fof(t5_zfmisc_1,axiom,
    $true ).

fof(t6_zfmisc_1,axiom,
    ! [A,B] :
      ( r1_tarski(k1_tarski(A),k1_tarski(B))
     => A = B ) ).

fof(t7_zfmisc_1,axiom,
    $true ).

fof(t8_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k1_tarski(A) = k2_tarski(B,C)
     => A = B ) ).

fof(t9_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k1_tarski(A) = k2_tarski(B,C)
     => B = C ) ).

fof(t10_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ~ ( k2_tarski(A,B) = k2_tarski(C,D)
        & A != C
        & A != D ) ).

fof(t11_zfmisc_1,axiom,
    $true ).

fof(t12_zfmisc_1,axiom,
    ! [A,B] : r1_tarski(k1_tarski(A),k2_tarski(A,B)) ).

fof(t13_zfmisc_1,axiom,
    ! [A,B] :
      ( k2_xboole_0(k1_tarski(A),k1_tarski(B)) = k1_tarski(A)
     => A = B ) ).

fof(t14_zfmisc_1,axiom,
    ! [A,B] : k2_xboole_0(k1_tarski(A),k2_tarski(A,B)) = k2_tarski(A,B) ).

fof(t15_zfmisc_1,axiom,
    $true ).

fof(t16_zfmisc_1,axiom,
    ! [A,B] :
      ~ ( r1_xboole_0(k1_tarski(A),k1_tarski(B))
        & A = B ) ).

fof(t17_zfmisc_1,axiom,
    ! [A,B] :
      ( A != B
     => r1_xboole_0(k1_tarski(A),k1_tarski(B)) ) ).

fof(t18_zfmisc_1,axiom,
    ! [A,B] :
      ( k3_xboole_0(k1_tarski(A),k1_tarski(B)) = k1_tarski(A)
     => A = B ) ).

fof(t19_zfmisc_1,axiom,
    ! [A,B] : k3_xboole_0(k1_tarski(A),k2_tarski(A,B)) = k1_tarski(A) ).

fof(t20_zfmisc_1,axiom,
    ! [A,B] :
      ( k4_xboole_0(k1_tarski(A),k1_tarski(B)) = k1_tarski(A)
    <=> A != B ) ).

fof(t21_zfmisc_1,axiom,
    ! [A,B] :
      ( k4_xboole_0(k1_tarski(A),k1_tarski(B)) = k1_xboole_0
     => A = B ) ).

fof(t22_zfmisc_1,axiom,
    ! [A,B] : k4_xboole_0(k1_tarski(A),k2_tarski(A,B)) = k1_xboole_0 ).

fof(t23_zfmisc_1,axiom,
    ! [A,B] :
      ( A != B
     => k4_xboole_0(k2_tarski(A,B),k1_tarski(B)) = k1_tarski(A) ) ).

fof(t24_zfmisc_1,axiom,
    ! [A,B] :
      ( r1_tarski(k1_tarski(A),k1_tarski(B))
     => A = B ) ).

fof(t25_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( r1_tarski(k1_tarski(A),k2_tarski(B,C))
        & A != B
        & A != C ) ).

fof(t26_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(k2_tarski(A,B),k1_tarski(C))
     => A = C ) ).

fof(t27_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(k2_tarski(A,B),k1_tarski(C))
     => k2_tarski(A,B) = k1_tarski(C) ) ).

fof(t28_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ~ ( r1_tarski(k2_tarski(A,B),k2_tarski(C,D))
        & A != C
        & A != D ) ).

fof(t29_zfmisc_1,axiom,
    ! [A,B] :
      ( A != B
     => k5_xboole_0(k1_tarski(A),k1_tarski(B)) = k2_tarski(A,B) ) ).

fof(t30_zfmisc_1,axiom,
    ! [A] : k1_zfmisc_1(k1_tarski(A)) = k2_tarski(k1_xboole_0,k1_tarski(A)) ).

fof(t31_zfmisc_1,axiom,
    ! [A] : k3_tarski(k1_tarski(A)) = A ).

fof(t32_zfmisc_1,axiom,
    ! [A,B] : k3_tarski(k2_tarski(k1_tarski(A),k1_tarski(B))) = k2_tarski(A,B) ).

fof(t33_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( k4_tarski(A,B) = k4_tarski(C,D)
     => ( A = C
        & B = D ) ) ).

fof(t34_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( r2_hidden(k4_tarski(A,B),k2_zfmisc_1(k1_tarski(C),k1_tarski(D)))
    <=> ( A = C
        & B = D ) ) ).

fof(t35_zfmisc_1,axiom,
    ! [A,B] : k2_zfmisc_1(k1_tarski(A),k1_tarski(B)) = k1_tarski(k4_tarski(A,B)) ).

fof(t36_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k2_zfmisc_1(k1_tarski(A),k2_tarski(B,C)) = k2_tarski(k4_tarski(A,B),k4_tarski(A,C))
      & k2_zfmisc_1(k2_tarski(A,B),k1_tarski(C)) = k2_tarski(k4_tarski(A,C),k4_tarski(B,C)) ) ).

fof(t37_zfmisc_1,axiom,
    ! [A,B] :
      ( r1_tarski(k1_tarski(A),B)
    <=> r2_hidden(A,B) ) ).

fof(t38_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(k2_tarski(A,B),C)
    <=> ( r2_hidden(A,C)
        & r2_hidden(B,C) ) ) ).

fof(t39_zfmisc_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,k1_tarski(B))
    <=> ( A = k1_xboole_0
        | A = k1_tarski(B) ) ) ).

fof(t40_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => ( r2_hidden(C,A)
        | r1_tarski(A,k4_xboole_0(B,k1_tarski(C))) ) ) ).

fof(t41_zfmisc_1,axiom,
    ! [A,B] :
      ~ ( A != k1_tarski(B)
        & A != k1_xboole_0
        & ! [C] :
            ~ ( r2_hidden(C,A)
              & C != B ) ) ).

fof(t42_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,k2_tarski(B,C))
    <=> ~ ( A != k1_xboole_0
          & A != k1_tarski(B)
          & A != k1_tarski(C)
          & A != k2_tarski(B,C) ) ) ).

fof(t43_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( k1_tarski(A) = k2_xboole_0(B,C)
        & ~ ( B = k1_tarski(A)
            & C = k1_tarski(A) )
        & ~ ( B = k1_xboole_0
            & C = k1_tarski(A) )
        & ~ ( B = k1_tarski(A)
            & C = k1_xboole_0 ) ) ).

fof(t44_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( k1_tarski(A) = k2_xboole_0(B,C)
        & B != C
        & B != k1_xboole_0
        & C != k1_xboole_0 ) ).

fof(t45_zfmisc_1,axiom,
    ! [A,B] :
      ( r1_tarski(k2_xboole_0(k1_tarski(A),B),B)
     => r2_hidden(A,B) ) ).

fof(t46_zfmisc_1,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => k2_xboole_0(k1_tarski(A),B) = B ) ).

fof(t47_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(k2_xboole_0(k2_tarski(A,B),C),C)
     => r2_hidden(A,C) ) ).

fof(t48_zfmisc_1,axiom,
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & r2_hidden(C,B) )
     => k2_xboole_0(k2_tarski(A,C),B) = B ) ).

fof(t49_zfmisc_1,axiom,
    ! [A,B] : k2_xboole_0(k1_tarski(A),B) != k1_xboole_0 ).

fof(t50_zfmisc_1,axiom,
    ! [A,B,C] : k2_xboole_0(k2_tarski(A,B),C) != k1_xboole_0 ).

fof(t51_zfmisc_1,axiom,
    ! [A,B] :
      ( k3_xboole_0(A,k1_tarski(B)) = k1_tarski(B)
     => r2_hidden(B,A) ) ).

fof(t52_zfmisc_1,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => k3_xboole_0(B,k1_tarski(A)) = k1_tarski(A) ) ).

fof(t53_zfmisc_1,axiom,
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & r2_hidden(C,B) )
     => k3_xboole_0(k2_tarski(A,C),B) = k2_tarski(A,C) ) ).

fof(t54_zfmisc_1,axiom,
    ! [A,B] :
      ~ ( r1_xboole_0(k1_tarski(A),B)
        & r2_hidden(A,B) ) ).

fof(t55_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( r1_xboole_0(k2_tarski(A,B),C)
        & r2_hidden(A,C) ) ).

fof(t56_zfmisc_1,axiom,
    ! [A,B] :
      ( ~ r2_hidden(A,B)
     => r1_xboole_0(k1_tarski(A),B) ) ).

fof(t57_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( ~ r2_hidden(A,B)
        & ~ r2_hidden(C,B)
        & ~ r1_xboole_0(k2_tarski(A,C),B) ) ).

fof(t58_zfmisc_1,axiom,
    ! [A,B] :
      ( r1_xboole_0(k1_tarski(A),B)
      | k3_xboole_0(k1_tarski(A),B) = k1_tarski(A) ) ).

fof(t59_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( k3_xboole_0(k2_tarski(A,B),C) = k1_tarski(A)
        & r2_hidden(B,C)
        & A != B ) ).

fof(t60_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r2_hidden(A,B)
     => ( ( r2_hidden(C,B)
          & A != C )
        | k3_xboole_0(k2_tarski(A,C),B) = k1_tarski(A) ) ) ).

fof(t61_zfmisc_1,axiom,
    $true ).

fof(t62_zfmisc_1,axiom,
    $true ).

fof(t63_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k3_xboole_0(k2_tarski(A,B),C) = k2_tarski(A,B)
     => r2_hidden(A,C) ) ).

fof(t64_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r2_hidden(A,k4_xboole_0(B,k1_tarski(C)))
    <=> ( r2_hidden(A,B)
        & A != C ) ) ).

fof(t65_zfmisc_1,axiom,
    ! [A,B] :
      ( k4_xboole_0(A,k1_tarski(B)) = A
    <=> ~ r2_hidden(B,A) ) ).

fof(t66_zfmisc_1,axiom,
    ! [A,B] :
      ~ ( k4_xboole_0(A,k1_tarski(B)) = k1_xboole_0
        & A != k1_xboole_0
        & A != k1_tarski(B) ) ).

fof(t67_zfmisc_1,axiom,
    ! [A,B] :
      ( k4_xboole_0(k1_tarski(A),B) = k1_tarski(A)
    <=> ~ r2_hidden(A,B) ) ).

fof(t68_zfmisc_1,axiom,
    ! [A,B] :
      ( k4_xboole_0(k1_tarski(A),B) = k1_xboole_0
    <=> r2_hidden(A,B) ) ).

fof(t69_zfmisc_1,axiom,
    ! [A,B] :
      ( k4_xboole_0(k1_tarski(A),B) = k1_xboole_0
      | k4_xboole_0(k1_tarski(A),B) = k1_tarski(A) ) ).

fof(t70_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k4_xboole_0(k2_tarski(A,B),C) = k1_tarski(A)
    <=> ( ~ r2_hidden(A,C)
        & ( r2_hidden(B,C)
          | A = B ) ) ) ).

fof(t71_zfmisc_1,axiom,
    $true ).

fof(t72_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k4_xboole_0(k2_tarski(A,B),C) = k2_tarski(A,B)
    <=> ( ~ r2_hidden(A,C)
        & ~ r2_hidden(B,C) ) ) ).

fof(t73_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k4_xboole_0(k2_tarski(A,B),C) = k1_xboole_0
    <=> ( r2_hidden(A,C)
        & r2_hidden(B,C) ) ) ).

fof(t74_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( k4_xboole_0(k2_tarski(A,B),C) != k1_xboole_0
        & k4_xboole_0(k2_tarski(A,B),C) != k1_tarski(A)
        & k4_xboole_0(k2_tarski(A,B),C) != k1_tarski(B)
        & k4_xboole_0(k2_tarski(A,B),C) != k2_tarski(A,B) ) ).

fof(t75_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k4_xboole_0(A,k2_tarski(B,C)) = k1_xboole_0
    <=> ~ ( A != k1_xboole_0
          & A != k1_tarski(B)
          & A != k1_tarski(C)
          & A != k2_tarski(B,C) ) ) ).

fof(t76_zfmisc_1,axiom,
    $true ).

fof(t77_zfmisc_1,axiom,
    $true ).

fof(t78_zfmisc_1,axiom,
    $true ).

fof(t79_zfmisc_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => r1_tarski(k1_zfmisc_1(A),k1_zfmisc_1(B)) ) ).

fof(t80_zfmisc_1,axiom,
    ! [A] : r1_tarski(k1_tarski(A),k1_zfmisc_1(A)) ).

fof(t81_zfmisc_1,axiom,
    ! [A,B] : r1_tarski(k2_xboole_0(k1_zfmisc_1(A),k1_zfmisc_1(B)),k1_zfmisc_1(k2_xboole_0(A,B))) ).

fof(t82_zfmisc_1,axiom,
    ! [A,B] :
      ( k2_xboole_0(k1_zfmisc_1(A),k1_zfmisc_1(B)) = k1_zfmisc_1(k2_xboole_0(A,B))
     => r3_xboole_0(A,B) ) ).

fof(t83_zfmisc_1,axiom,
    ! [A,B] : k1_zfmisc_1(k3_xboole_0(A,B)) = k3_xboole_0(k1_zfmisc_1(A),k1_zfmisc_1(B)) ).

fof(t84_zfmisc_1,axiom,
    ! [A,B] : r1_tarski(k1_zfmisc_1(k4_xboole_0(A,B)),k2_xboole_0(k1_tarski(k1_xboole_0),k4_xboole_0(k1_zfmisc_1(A),k1_zfmisc_1(B)))) ).

fof(t85_zfmisc_1,axiom,
    $true ).

fof(t86_zfmisc_1,axiom,
    ! [A,B] : r1_tarski(k2_xboole_0(k1_zfmisc_1(k4_xboole_0(A,B)),k1_zfmisc_1(k4_xboole_0(B,A))),k1_zfmisc_1(k5_xboole_0(A,B))) ).

fof(t87_zfmisc_1,axiom,
    $true ).

fof(t88_zfmisc_1,axiom,
    $true ).

fof(t89_zfmisc_1,axiom,
    $true ).

fof(t90_zfmisc_1,axiom,
    $true ).

fof(t91_zfmisc_1,axiom,
    $true ).

fof(t92_zfmisc_1,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => r1_tarski(A,k3_tarski(B)) ) ).

fof(t93_zfmisc_1,axiom,
    ! [A,B] : k3_tarski(k2_tarski(A,B)) = k2_xboole_0(A,B) ).

fof(t94_zfmisc_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( r2_hidden(C,A)
         => r1_tarski(C,B) )
     => r1_tarski(k3_tarski(A),B) ) ).

fof(t95_zfmisc_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => r1_tarski(k3_tarski(A),k3_tarski(B)) ) ).

fof(t96_zfmisc_1,axiom,
    ! [A,B] : k3_tarski(k2_xboole_0(A,B)) = k2_xboole_0(k3_tarski(A),k3_tarski(B)) ).

fof(t97_zfmisc_1,axiom,
    ! [A,B] : r1_tarski(k3_tarski(k3_xboole_0(A,B)),k3_xboole_0(k3_tarski(A),k3_tarski(B))) ).

fof(t98_zfmisc_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( r2_hidden(C,A)
         => r1_xboole_0(C,B) )
     => r1_xboole_0(k3_tarski(A),B) ) ).

fof(t99_zfmisc_1,axiom,
    ! [A] : k3_tarski(k1_zfmisc_1(A)) = A ).

fof(t100_zfmisc_1,axiom,
    ! [A] : r1_tarski(A,k1_zfmisc_1(k3_tarski(A))) ).

fof(t101_zfmisc_1,axiom,
    ! [A,B] :
      ( ! [C,D] :
          ( ( r2_hidden(C,k2_xboole_0(A,B))
            & r2_hidden(D,k2_xboole_0(A,B)) )
         => ( C = D
            | r1_xboole_0(C,D) ) )
     => k3_tarski(k3_xboole_0(A,B)) = k3_xboole_0(k3_tarski(A),k3_tarski(B)) ) ).

fof(t102_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( r2_hidden(A,k2_zfmisc_1(B,C))
        & ! [D,E] : k4_tarski(D,E) != A ) ).

fof(t103_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ~ ( r1_tarski(A,k2_zfmisc_1(B,C))
        & r2_hidden(D,A)
        & ! [E,F] :
            ~ ( r2_hidden(E,B)
              & r2_hidden(F,C)
              & D = k4_tarski(E,F) ) ) ).

fof(t104_zfmisc_1,axiom,
    ! [A,B,C,D,E] :
      ~ ( r2_hidden(A,k3_xboole_0(k2_zfmisc_1(B,C),k2_zfmisc_1(D,E)))
        & ! [F,G] :
            ~ ( A = k4_tarski(F,G)
              & r2_hidden(F,k3_xboole_0(B,D))
              & r2_hidden(G,k3_xboole_0(C,E)) ) ) ).

fof(t105_zfmisc_1,axiom,
    ! [A,B] : r1_tarski(k2_zfmisc_1(A,B),k1_zfmisc_1(k1_zfmisc_1(k2_xboole_0(A,B)))) ).

fof(t106_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( r2_hidden(k4_tarski(A,B),k2_zfmisc_1(C,D))
    <=> ( r2_hidden(A,C)
        & r2_hidden(B,D) ) ) ).

fof(t107_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( r2_hidden(k4_tarski(A,B),k2_zfmisc_1(C,D))
     => r2_hidden(k4_tarski(B,A),k2_zfmisc_1(D,C)) ) ).

fof(t108_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( ! [E,F] :
          ( r2_hidden(k4_tarski(E,F),k2_zfmisc_1(A,B))
        <=> r2_hidden(k4_tarski(E,F),k2_zfmisc_1(C,D)) )
     => k2_zfmisc_1(A,B) = k2_zfmisc_1(C,D) ) ).

fof(t109_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_tarski(A,k2_zfmisc_1(B,C))
        & ! [E,F] :
            ( r2_hidden(k4_tarski(E,F),A)
           => r2_hidden(k4_tarski(E,F),D) ) )
     => r1_tarski(A,D) ) ).

fof(t110_zfmisc_1,axiom,
    ! [A,B,C,D,E,F] :
      ( ( r1_tarski(A,k2_zfmisc_1(B,C))
        & r1_tarski(D,k2_zfmisc_1(E,F))
        & ! [G,H] :
            ( r2_hidden(k4_tarski(G,H),A)
          <=> r2_hidden(k4_tarski(G,H),D) ) )
     => A = D ) ).

fof(t111_zfmisc_1,axiom,
    ! [A,B] :
      ( ( ! [C] :
            ~ ( r2_hidden(C,A)
              & ! [D,E] : C != k4_tarski(D,E) )
        & ! [C,D] :
            ( r2_hidden(k4_tarski(C,D),A)
           => r2_hidden(k4_tarski(C,D),B) ) )
     => r1_tarski(A,B) ) ).

fof(t112_zfmisc_1,axiom,
    ! [A,B] :
      ( ( ! [C] :
            ~ ( r2_hidden(C,A)
              & ! [D,E] : C != k4_tarski(D,E) )
        & ! [C] :
            ~ ( r2_hidden(C,B)
              & ! [D,E] : C != k4_tarski(D,E) )
        & ! [C,D] :
            ( r2_hidden(k4_tarski(C,D),A)
          <=> r2_hidden(k4_tarski(C,D),B) ) )
     => A = B ) ).

fof(t113_zfmisc_1,axiom,
    ! [A,B] :
      ( k2_zfmisc_1(A,B) = k1_xboole_0
    <=> ( A = k1_xboole_0
        | B = k1_xboole_0 ) ) ).

fof(t114_zfmisc_1,axiom,
    ! [A,B] :
      ( k2_zfmisc_1(A,B) = k2_zfmisc_1(B,A)
     => ( A = k1_xboole_0
        | B = k1_xboole_0
        | A = B ) ) ).

fof(t115_zfmisc_1,axiom,
    ! [A,B] :
      ( k2_zfmisc_1(A,A) = k2_zfmisc_1(B,B)
     => A = B ) ).

fof(t116_zfmisc_1,axiom,
    ! [A] :
      ( r1_tarski(A,k2_zfmisc_1(A,A))
     => A = k1_xboole_0 ) ).

fof(t117_zfmisc_1,axiom,
    ! [A,B,C] :
      ~ ( A != k1_xboole_0
        & ( r1_tarski(k2_zfmisc_1(B,A),k2_zfmisc_1(C,A))
          | r1_tarski(k2_zfmisc_1(A,B),k2_zfmisc_1(A,C)) )
        & ~ r1_tarski(B,C) ) ).

fof(t118_zfmisc_1,axiom,
    ! [A,B,C] :
      ( r1_tarski(A,B)
     => ( r1_tarski(k2_zfmisc_1(A,C),k2_zfmisc_1(B,C))
        & r1_tarski(k2_zfmisc_1(C,A),k2_zfmisc_1(C,B)) ) ) ).

fof(t119_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,D) )
     => r1_tarski(k2_zfmisc_1(A,C),k2_zfmisc_1(B,D)) ) ).

fof(t120_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k2_zfmisc_1(k2_xboole_0(A,B),C) = k2_xboole_0(k2_zfmisc_1(A,C),k2_zfmisc_1(B,C))
      & k2_zfmisc_1(C,k2_xboole_0(A,B)) = k2_xboole_0(k2_zfmisc_1(C,A),k2_zfmisc_1(C,B)) ) ).

fof(t121_zfmisc_1,axiom,
    ! [A,B,C,D] : k2_zfmisc_1(k2_xboole_0(A,B),k2_xboole_0(C,D)) = k2_xboole_0(k2_xboole_0(k2_xboole_0(k2_zfmisc_1(A,C),k2_zfmisc_1(A,D)),k2_zfmisc_1(B,C)),k2_zfmisc_1(B,D)) ).

fof(t122_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k2_zfmisc_1(k3_xboole_0(A,B),C) = k3_xboole_0(k2_zfmisc_1(A,C),k2_zfmisc_1(B,C))
      & k2_zfmisc_1(C,k3_xboole_0(A,B)) = k3_xboole_0(k2_zfmisc_1(C,A),k2_zfmisc_1(C,B)) ) ).

fof(t123_zfmisc_1,axiom,
    ! [A,B,C,D] : k2_zfmisc_1(k3_xboole_0(A,B),k3_xboole_0(C,D)) = k3_xboole_0(k2_zfmisc_1(A,C),k2_zfmisc_1(B,D)) ).

fof(t124_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_tarski(A,B)
        & r1_tarski(C,D) )
     => k3_xboole_0(k2_zfmisc_1(A,D),k2_zfmisc_1(B,C)) = k2_zfmisc_1(A,C) ) ).

fof(t125_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k2_zfmisc_1(k4_xboole_0(A,B),C) = k4_xboole_0(k2_zfmisc_1(A,C),k2_zfmisc_1(B,C))
      & k2_zfmisc_1(C,k4_xboole_0(A,B)) = k4_xboole_0(k2_zfmisc_1(C,A),k2_zfmisc_1(C,B)) ) ).

fof(t126_zfmisc_1,axiom,
    ! [A,B,C,D] : k4_xboole_0(k2_zfmisc_1(A,B),k2_zfmisc_1(C,D)) = k2_xboole_0(k2_zfmisc_1(k4_xboole_0(A,C),B),k2_zfmisc_1(A,k4_xboole_0(B,D))) ).

fof(t127_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_xboole_0(A,B)
        | r1_xboole_0(C,D) )
     => r1_xboole_0(k2_zfmisc_1(A,C),k2_zfmisc_1(B,D)) ) ).

fof(t128_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( r2_hidden(k4_tarski(A,B),k2_zfmisc_1(k1_tarski(C),D))
    <=> ( A = C
        & r2_hidden(B,D) ) ) ).

fof(t129_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( r2_hidden(k4_tarski(A,B),k2_zfmisc_1(C,k1_tarski(D)))
    <=> ( r2_hidden(A,C)
        & B = D ) ) ).

fof(t130_zfmisc_1,axiom,
    ! [A,B] :
      ( A != k1_xboole_0
     => ( k2_zfmisc_1(k1_tarski(B),A) != k1_xboole_0
        & k2_zfmisc_1(A,k1_tarski(B)) != k1_xboole_0 ) ) ).

fof(t131_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( A != B
     => ( r1_xboole_0(k2_zfmisc_1(k1_tarski(A),C),k2_zfmisc_1(k1_tarski(B),D))
        & r1_xboole_0(k2_zfmisc_1(C,k1_tarski(A)),k2_zfmisc_1(D,k1_tarski(B))) ) ) ).

fof(t132_zfmisc_1,axiom,
    ! [A,B,C] :
      ( k2_zfmisc_1(k2_tarski(A,B),C) = k2_xboole_0(k2_zfmisc_1(k1_tarski(A),C),k2_zfmisc_1(k1_tarski(B),C))
      & k2_zfmisc_1(C,k2_tarski(A,B)) = k2_xboole_0(k2_zfmisc_1(C,k1_tarski(A)),k2_zfmisc_1(C,k1_tarski(B))) ) ).

fof(t133_zfmisc_1,axiom,
    $true ).

fof(t134_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( k2_zfmisc_1(A,B) = k2_zfmisc_1(C,D)
     => ( A = k1_xboole_0
        | B = k1_xboole_0
        | ( A = C
          & B = D ) ) ) ).

fof(t135_zfmisc_1,axiom,
    ! [A,B] :
      ( ( r1_tarski(A,k2_zfmisc_1(A,B))
        | r1_tarski(A,k2_zfmisc_1(B,A)) )
     => A = k1_xboole_0 ) ).

fof(t136_zfmisc_1,axiom,
    ! [A] :
    ? [B] :
      ( r2_hidden(A,B)
      & ! [C,D] :
          ( ( r2_hidden(C,B)
            & r1_tarski(D,C) )
         => r2_hidden(D,B) )
      & ! [C] :
          ( r2_hidden(C,B)
         => r2_hidden(k1_zfmisc_1(C),B) )
      & ! [C] :
          ~ ( r1_tarski(C,B)
            & ~ r2_tarski(C,B)
            & ~ r2_hidden(C,B) ) ) ).

fof(t137_zfmisc_1,axiom,
    ! [A,B,C,D,E] :
      ( ( r2_hidden(A,k2_zfmisc_1(B,C))
        & r2_hidden(A,k2_zfmisc_1(D,E)) )
     => r2_hidden(A,k2_zfmisc_1(k3_xboole_0(B,D),k3_xboole_0(C,E))) ) ).

fof(t138_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( r1_tarski(k2_zfmisc_1(A,B),k2_zfmisc_1(C,D))
     => ( k2_zfmisc_1(A,B) = k1_xboole_0
        | ( r1_tarski(A,C)
          & r1_tarski(B,D) ) ) ) ).

fof(t139_zfmisc_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B,C,D] :
          ( ( r1_tarski(k2_zfmisc_1(A,B),k2_zfmisc_1(C,D))
            | r1_tarski(k2_zfmisc_1(B,A),k2_zfmisc_1(D,C)) )
         => r1_tarski(B,D) ) ) ).

fof(t140_zfmisc_1,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => k2_xboole_0(k4_xboole_0(B,k1_tarski(A)),k1_tarski(A)) = B ) ).

fof(t141_zfmisc_1,axiom,
    ! [A,B] :
      ( ~ r2_hidden(A,B)
     => k4_xboole_0(k2_xboole_0(B,k1_tarski(A)),k1_tarski(A)) = B ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_k3_zfmisc_1,axiom,
    $true ).

fof(dt_k4_zfmisc_1,axiom,
    $true ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+7 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Properties of Subsets
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : subset_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  110 (  30 unt;   0 def)
%            Number of atoms       :  368 (  48 equ)
%            Maximal formula atoms :   10 (   3 avg)
%            Number of connectives :  316 (  58   ~;   1   |;  47   &)
%                                         (  25 <=>; 185  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   20 (   6 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   14 (  12 usr;   1 prp; 0-3 aty)
%            Number of functors    :   31 (  31 usr;   7 con; 0-8 aty)
%            Number of variables   :  265 ( 259   !;   6   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(fc1_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ v1_xboole_0(k1_tarski(A)) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ v1_xboole_0(k2_tarski(A,B)) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B) ) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ~ v1_xboole_0(k2_zfmisc_1(A,B)) ) ).

fof(fc5_subset_1,axiom,
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & ~ v1_xboole_0(C) )
     => ~ v1_xboole_0(k3_zfmisc_1(A,B,C)) ) ).

fof(fc6_subset_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & ~ v1_xboole_0(C)
        & ~ v1_xboole_0(D) )
     => ~ v1_xboole_0(k4_zfmisc_1(A,B,C,D)) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & v1_xboole_0(B) ) ).

fof(d1_subset_1,axiom,
    $true ).

fof(d2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
       => ( m1_subset_1(B,A)
        <=> r2_hidden(B,A) ) )
      & ( v1_xboole_0(A)
       => ( m1_subset_1(B,A)
        <=> v1_xboole_0(B) ) ) ) ).

fof(d3_subset_1,axiom,
    ! [A] : k1_subset_1(A) = k1_xboole_0 ).

fof(d4_subset_1,axiom,
    ! [A] : k2_subset_1(A) = A ).

fof(t1_subset_1,axiom,
    $true ).

fof(t2_subset_1,axiom,
    $true ).

fof(t3_subset_1,axiom,
    $true ).

fof(t4_subset_1,axiom,
    ! [A] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(A)) ).

fof(t5_subset_1,axiom,
    $true ).

fof(t6_subset_1,axiom,
    $true ).

fof(t7_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( ! [D] :
                ( m1_subset_1(D,A)
               => ( r2_hidden(D,B)
                 => r2_hidden(D,C) ) )
           => r1_tarski(B,C) ) ) ) ).

fof(t8_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( ! [D] :
                ( m1_subset_1(D,A)
               => ( r2_hidden(D,B)
                <=> r2_hidden(D,C) ) )
           => B = C ) ) ) ).

fof(t9_subset_1,axiom,
    $true ).

fof(t10_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ~ ( B != k1_xboole_0
          & ! [C] :
              ( m1_subset_1(C,A)
             => ~ r2_hidden(C,B) ) ) ) ).

fof(d5_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => k3_subset_1(A,B) = k4_xboole_0(A,B) ) ).

fof(t11_subset_1,axiom,
    $true ).

fof(t12_subset_1,axiom,
    $true ).

fof(t13_subset_1,axiom,
    $true ).

fof(t14_subset_1,axiom,
    $true ).

fof(t15_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ! [D] :
              ( m1_subset_1(D,k1_zfmisc_1(A))
             => ( ! [E] :
                    ( m1_subset_1(E,A)
                   => ( r2_hidden(E,B)
                    <=> ( r2_hidden(E,C)
                        | r2_hidden(E,D) ) ) )
               => B = k4_subset_1(A,C,D) ) ) ) ) ).

fof(t16_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ! [D] :
              ( m1_subset_1(D,k1_zfmisc_1(A))
             => ( ! [E] :
                    ( m1_subset_1(E,A)
                   => ( r2_hidden(E,B)
                    <=> ( r2_hidden(E,C)
                        & r2_hidden(E,D) ) ) )
               => B = k5_subset_1(A,C,D) ) ) ) ) ).

fof(t17_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ! [D] :
              ( m1_subset_1(D,k1_zfmisc_1(A))
             => ( ! [E] :
                    ( m1_subset_1(E,A)
                   => ( r2_hidden(E,B)
                    <=> ( r2_hidden(E,C)
                        & ~ r2_hidden(E,D) ) ) )
               => B = k6_subset_1(A,C,D) ) ) ) ) ).

fof(t18_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ! [D] :
              ( m1_subset_1(D,k1_zfmisc_1(A))
             => ( ! [E] :
                    ( m1_subset_1(E,A)
                   => ( r2_hidden(E,B)
                    <=> ~ ( r2_hidden(E,C)
                        <=> r2_hidden(E,D) ) ) )
               => B = k7_subset_1(A,C,D) ) ) ) ) ).

fof(t19_subset_1,axiom,
    $true ).

fof(t20_subset_1,axiom,
    $true ).

fof(t21_subset_1,axiom,
    ! [A] : k1_subset_1(A) = k3_subset_1(A,k2_subset_1(A)) ).

fof(t22_subset_1,axiom,
    ! [A] : k2_subset_1(A) = k3_subset_1(A,k1_subset_1(A)) ).

fof(t23_subset_1,axiom,
    $true ).

fof(t24_subset_1,axiom,
    $true ).

fof(t25_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => k4_subset_1(A,B,k3_subset_1(A,B)) = k2_subset_1(A) ) ).

fof(t26_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => r1_xboole_0(B,k3_subset_1(A,B)) ) ).

fof(t27_subset_1,axiom,
    $true ).

fof(t28_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => k4_subset_1(A,B,k2_subset_1(A)) = k2_subset_1(A) ) ).

fof(t29_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => k3_subset_1(A,k4_subset_1(A,B,C)) = k5_subset_1(A,k3_subset_1(A,B),k3_subset_1(A,C)) ) ) ).

fof(t30_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => k3_subset_1(A,k5_subset_1(A,B,C)) = k4_subset_1(A,k3_subset_1(A,B),k3_subset_1(A,C)) ) ) ).

fof(t31_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( r1_tarski(B,C)
          <=> r1_tarski(k3_subset_1(A,C),k3_subset_1(A,B)) ) ) ) ).

fof(t32_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => k6_subset_1(A,B,C) = k5_subset_1(A,B,k3_subset_1(A,C)) ) ) ).

fof(t33_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => k3_subset_1(A,k6_subset_1(A,B,C)) = k4_subset_1(A,k3_subset_1(A,B),C) ) ) ).

fof(t34_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => k3_subset_1(A,k7_subset_1(A,B,C)) = k4_subset_1(A,k5_subset_1(A,B,C),k5_subset_1(A,k3_subset_1(A,B),k3_subset_1(A,C))) ) ) ).

fof(t35_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( r1_tarski(B,k3_subset_1(A,C))
           => r1_tarski(C,k3_subset_1(A,B)) ) ) ) ).

fof(t36_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( r1_tarski(k3_subset_1(A,B),C)
           => r1_tarski(k3_subset_1(A,C),B) ) ) ) ).

fof(t37_subset_1,axiom,
    $true ).

fof(t38_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ( r1_tarski(B,k3_subset_1(A,B))
      <=> B = k1_subset_1(A) ) ) ).

fof(t39_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ( r1_tarski(k3_subset_1(A,B),B)
      <=> B = k2_subset_1(A) ) ) ).

fof(t40_subset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ( ( r1_tarski(B,C)
          & r1_tarski(B,k3_subset_1(A,C)) )
       => B = k1_xboole_0 ) ) ).

fof(t41_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => r1_tarski(k3_subset_1(A,k4_subset_1(A,B,C)),k3_subset_1(A,B)) ) ) ).

fof(t42_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => r1_tarski(k3_subset_1(A,B),k3_subset_1(A,k5_subset_1(A,B,C))) ) ) ).

fof(t43_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( r1_xboole_0(B,C)
          <=> r1_tarski(B,k3_subset_1(A,C)) ) ) ) ).

fof(t44_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( r1_xboole_0(B,k3_subset_1(A,C))
          <=> r1_tarski(B,C) ) ) ) ).

fof(t45_subset_1,axiom,
    $true ).

fof(t46_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( ( r1_xboole_0(B,C)
              & r1_xboole_0(k3_subset_1(A,B),k3_subset_1(A,C)) )
           => B = k3_subset_1(A,C) ) ) ) ).

fof(t47_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ! [D] :
              ( m1_subset_1(D,k1_zfmisc_1(A))
             => ( ( r1_tarski(B,C)
                  & r1_xboole_0(D,C) )
               => r1_tarski(B,k3_subset_1(A,D)) ) ) ) ) ).

fof(t48_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( ! [D] :
                ( m1_subset_1(D,B)
               => r2_hidden(D,C) )
           => r1_tarski(B,C) ) ) ) ).

fof(t49_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ( ! [C] :
            ( m1_subset_1(C,A)
           => r2_hidden(C,B) )
       => A = B ) ) ).

fof(t50_subset_1,axiom,
    ! [A] :
      ( A != k1_xboole_0
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => ! [C] :
              ( m1_subset_1(C,A)
             => ( ~ r2_hidden(C,B)
               => r2_hidden(C,k3_subset_1(A,B)) ) ) ) ) ).

fof(t51_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( ! [D] :
                ( m1_subset_1(D,A)
               => ( r2_hidden(D,B)
                <=> ~ r2_hidden(D,C) ) )
           => B = k3_subset_1(A,C) ) ) ) ).

fof(t52_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( ! [D] :
                ( m1_subset_1(D,A)
               => ( ~ r2_hidden(D,B)
                <=> r2_hidden(D,C) ) )
           => B = k3_subset_1(A,C) ) ) ) ).

fof(t53_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(A))
         => ( ! [D] :
                ( m1_subset_1(D,A)
               => ~ ( r2_hidden(D,B)
                  <=> r2_hidden(D,C) ) )
           => B = k3_subset_1(A,C) ) ) ) ).

fof(t54_subset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ~ ( r2_hidden(B,k3_subset_1(A,C))
          & r2_hidden(B,C) ) ) ).

fof(t55_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ( A != k1_xboole_0
       => m1_subset_1(k1_tarski(B),k1_zfmisc_1(A)) ) ) ).

fof(t56_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C] :
          ( m1_subset_1(C,A)
         => ( A != k1_xboole_0
           => m1_subset_1(k2_tarski(B,C),k1_zfmisc_1(A)) ) ) ) ).

fof(t57_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C] :
          ( m1_subset_1(C,A)
         => ! [D] :
              ( m1_subset_1(D,A)
             => ( A != k1_xboole_0
               => m1_subset_1(k1_enumset1(B,C,D),k1_zfmisc_1(A)) ) ) ) ) ).

fof(t58_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C] :
          ( m1_subset_1(C,A)
         => ! [D] :
              ( m1_subset_1(D,A)
             => ! [E] :
                  ( m1_subset_1(E,A)
                 => ( A != k1_xboole_0
                   => m1_subset_1(k2_enumset1(B,C,D,E),k1_zfmisc_1(A)) ) ) ) ) ) ).

fof(t59_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C] :
          ( m1_subset_1(C,A)
         => ! [D] :
              ( m1_subset_1(D,A)
             => ! [E] :
                  ( m1_subset_1(E,A)
                 => ! [F] :
                      ( m1_subset_1(F,A)
                     => ( A != k1_xboole_0
                       => m1_subset_1(k3_enumset1(B,C,D,E,F),k1_zfmisc_1(A)) ) ) ) ) ) ) ).

fof(t60_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C] :
          ( m1_subset_1(C,A)
         => ! [D] :
              ( m1_subset_1(D,A)
             => ! [E] :
                  ( m1_subset_1(E,A)
                 => ! [F] :
                      ( m1_subset_1(F,A)
                     => ! [G] :
                          ( m1_subset_1(G,A)
                         => ( A != k1_xboole_0
                           => m1_subset_1(k4_enumset1(B,C,D,E,F,G),k1_zfmisc_1(A)) ) ) ) ) ) ) ) ).

fof(t61_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C] :
          ( m1_subset_1(C,A)
         => ! [D] :
              ( m1_subset_1(D,A)
             => ! [E] :
                  ( m1_subset_1(E,A)
                 => ! [F] :
                      ( m1_subset_1(F,A)
                     => ! [G] :
                          ( m1_subset_1(G,A)
                         => ! [H] :
                              ( m1_subset_1(H,A)
                             => ( A != k1_xboole_0
                               => m1_subset_1(k5_enumset1(B,C,D,E,F,G,H),k1_zfmisc_1(A)) ) ) ) ) ) ) ) ) ).

fof(t62_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C] :
          ( m1_subset_1(C,A)
         => ! [D] :
              ( m1_subset_1(D,A)
             => ! [E] :
                  ( m1_subset_1(E,A)
                 => ! [F] :
                      ( m1_subset_1(F,A)
                     => ! [G] :
                          ( m1_subset_1(G,A)
                         => ! [H] :
                              ( m1_subset_1(H,A)
                             => ! [I] :
                                  ( m1_subset_1(I,A)
                                 => ( A != k1_xboole_0
                                   => m1_subset_1(k6_enumset1(B,C,D,E,F,G,H,I),k1_zfmisc_1(A)) ) ) ) ) ) ) ) ) ) ).

fof(t63_subset_1,axiom,
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(k1_tarski(A),k1_zfmisc_1(B)) ) ).

fof(d6_subset_1,axiom,
    ! [A] :
      ( ~ $true
     => ! [B] :
          ( m1_subset_1(B,A)
         => B = k8_subset_1(A) ) ) ).

fof(s1_subset_1,axiom,
    ? [A] :
      ( m1_subset_1(A,k1_zfmisc_1(f1_s1_subset_1))
      & ! [B] :
          ( r2_hidden(B,A)
        <=> ( r2_hidden(B,f1_s1_subset_1)
            & p1_s1_subset_1(B) ) ) ) ).

fof(s2_subset_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_zfmisc_1(f1_s2_subset_1))
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(f1_s2_subset_1))
         => ( ( ! [C] :
                  ( m1_subset_1(C,f1_s2_subset_1)
                 => ( r2_hidden(C,A)
                  <=> p1_s2_subset_1(C) ) )
              & ! [C] :
                  ( m1_subset_1(C,f1_s2_subset_1)
                 => ( r2_hidden(C,B)
                  <=> p1_s2_subset_1(C) ) ) )
           => A = B ) ) ) ).

fof(s3_subset_1,axiom,
    ? [A] :
      ( m1_subset_1(A,k1_zfmisc_1(f1_s3_subset_1))
      & ! [B] :
          ( m1_subset_1(B,f1_s3_subset_1)
         => ( r2_hidden(B,A)
          <=> p1_s3_subset_1(B) ) ) ) ).

fof(s4_subset_1,axiom,
    ( ( ! [A] :
          ( m1_subset_1(A,f1_s4_subset_1)
         => ( r2_hidden(A,f2_s4_subset_1)
          <=> p1_s4_subset_1(A) ) )
      & ! [A] :
          ( m1_subset_1(A,f1_s4_subset_1)
         => ( r2_hidden(A,f3_s4_subset_1)
          <=> p1_s4_subset_1(A) ) ) )
   => f2_s4_subset_1 = f3_s4_subset_1 ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : m1_subset_1(B,A) ).

fof(dt_m2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(A)) )
     => ! [C] :
          ( m2_subset_1(C,A,B)
         => m1_subset_1(C,A) ) ) ).

fof(existence_m2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(A)) )
     => ? [C] : m2_subset_1(C,A,B) ) ).

fof(redefinition_m2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(A)) )
     => ! [C] :
          ( m2_subset_1(C,A,B)
        <=> m1_subset_1(C,B) ) ) ).

fof(symmetry_r1_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ( r1_subset_1(A,B)
       => r1_subset_1(B,A) ) ) ).

fof(irreflexivity_r1_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ~ r1_subset_1(A,A) ) ).

fof(redefinition_r1_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ( r1_subset_1(A,B)
      <=> r1_xboole_0(A,B) ) ) ).

fof(symmetry_r2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ( r2_subset_1(A,B)
       => r2_subset_1(B,A) ) ) ).

fof(irreflexivity_r2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ~ r2_subset_1(A,A) ) ).

fof(redefinition_r2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ( r2_subset_1(A,B)
      <=> r1_xboole_0(A,B) ) ) ).

fof(dt_k1_subset_1,axiom,
    ! [A] :
      ( v1_xboole_0(k1_subset_1(A))
      & m1_subset_1(k1_subset_1(A),k1_zfmisc_1(A)) ) ).

fof(dt_k2_subset_1,axiom,
    ! [A] : m1_subset_1(k2_subset_1(A),k1_zfmisc_1(A)) ).

fof(dt_k3_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => m1_subset_1(k3_subset_1(A,B),k1_zfmisc_1(A)) ) ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => k3_subset_1(A,k3_subset_1(A,B)) = B ) ).

fof(dt_k4_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => m1_subset_1(k4_subset_1(A,B,C),k1_zfmisc_1(A)) ) ).

fof(commutativity_k4_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k4_subset_1(A,B,C) = k4_subset_1(A,C,B) ) ).

fof(idempotence_k4_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k4_subset_1(A,B,B) = B ) ).

fof(redefinition_k4_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k4_subset_1(A,B,C) = k2_xboole_0(B,C) ) ).

fof(dt_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => m1_subset_1(k5_subset_1(A,B,C),k1_zfmisc_1(A)) ) ).

fof(commutativity_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k5_subset_1(A,B,C) = k5_subset_1(A,C,B) ) ).

fof(idempotence_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k5_subset_1(A,B,B) = B ) ).

fof(redefinition_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k5_subset_1(A,B,C) = k3_xboole_0(B,C) ) ).

fof(dt_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => m1_subset_1(k6_subset_1(A,B,C),k1_zfmisc_1(A)) ) ).

fof(redefinition_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k6_subset_1(A,B,C) = k4_xboole_0(B,C) ) ).

fof(dt_k7_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => m1_subset_1(k7_subset_1(A,B,C),k1_zfmisc_1(A)) ) ).

fof(commutativity_k7_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k7_subset_1(A,B,C) = k7_subset_1(A,C,B) ) ).

fof(redefinition_k7_subset_1,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(B,k1_zfmisc_1(A))
        & m1_subset_1(C,k1_zfmisc_1(A)) )
     => k7_subset_1(A,B,C) = k5_xboole_0(B,C) ) ).

fof(dt_k8_subset_1,axiom,
    ! [A] : m1_subset_1(k8_subset_1(A),A) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+9 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Basic Properties of Subsets - Requirements
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : subset [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :    5 (   0 unt;   0 def)
%            Number of atoms       :   13 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    9 (   1   ~;   1   |;   3   &)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 1-1 aty)
%            Number of variables   :   12 (  12   !;   0   ?)
% SPC      :

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(t1_subset,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) )).

fof(t2_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) )).
%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+10 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Relations and Their Basic Properties
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : relat_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  234 (  46 unt;   0 def)
%            Number of atoms       :  630 ( 124 equ)
%            Maximal formula atoms :    8 (   2 avg)
%            Number of connectives :  415 (  19   ~;   1   |;  68   &)
%                                         (  36 <=>; 291  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   5 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :   10 (   8 usr;   1 prp; 0-2 aty)
%            Number of functors    :   20 (  20 usr;   3 con; 0-2 aty)
%            Number of variables   :  462 ( 451   !;  11   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_relat_1,axiom,
    ? [A] :
      ( v1_xboole_0(A)
      & v1_relat_1(A) ) ).

fof(fc1_relat_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => v1_relat_1(k3_xboole_0(A,B)) ) ).

fof(fc2_relat_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => v1_relat_1(k2_xboole_0(A,B)) ) ).

fof(fc3_relat_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => v1_relat_1(k4_xboole_0(A,B)) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => v1_relat_1(A) ) ).

fof(fc4_relat_1,axiom,
    ( v1_xboole_0(k1_xboole_0)
    & v1_relat_1(k1_xboole_0) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_relat_1(A) ) ).

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

fof(rc3_relat_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v3_relat_1(A) ) ).

fof(fc13_relat_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v3_relat_1(A) )
     => ( v1_relat_1(k7_relat_1(A,B))
        & v3_relat_1(k7_relat_1(A,B)) ) ) ).

fof(d1_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
    <=> ! [B] :
          ~ ( r2_hidden(B,A)
            & ! [C,D] : B != k4_tarski(C,D) ) ) ).

fof(t1_relat_1,axiom,
    $true ).

fof(t2_relat_1,axiom,
    $true ).

fof(t3_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(A,B)
       => v1_relat_1(A) ) ) ).

fof(t4_relat_1,axiom,
    ! [A,B] : v1_relat_1(k1_tarski(k4_tarski(A,B))) ).

fof(t5_relat_1,axiom,
    ! [A,B,C,D] : v1_relat_1(k2_tarski(k4_tarski(A,B),k4_tarski(C,D))) ).

fof(t6_relat_1,axiom,
    ! [A,B] : v1_relat_1(k2_zfmisc_1(A,B)) ).

fof(d2_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( A = B
          <=> ! [C,D] :
                ( r2_hidden(k4_tarski(C,D),A)
              <=> r2_hidden(k4_tarski(C,D),B) ) ) ) ) ).

fof(d3_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r1_tarski(A,B)
          <=> ! [C,D] :
                ( r2_hidden(k4_tarski(C,D),A)
               => r2_hidden(k4_tarski(C,D),B) ) ) ) ) ).

fof(t7_relat_1,axiom,
    $true ).

fof(t8_relat_1,axiom,
    $true ).

fof(t9_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => v1_relat_1(k3_xboole_0(A,B)) ) ).

fof(t10_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => v1_relat_1(k4_xboole_0(B,A)) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( B = k1_relat_1(A)
        <=> ! [C] :
              ( r2_hidden(C,B)
            <=> ? [D] : r2_hidden(k4_tarski(C,D),A) ) ) ) ).

fof(t11_relat_1,axiom,
    $true ).

fof(t12_relat_1,axiom,
    $true ).

fof(t13_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k1_relat_1(k2_xboole_0(A,B)) = k2_xboole_0(k1_relat_1(A),k1_relat_1(B)) ) ) ).

fof(t14_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k1_relat_1(k3_xboole_0(A,B)),k3_xboole_0(k1_relat_1(A),k1_relat_1(B))) ) ) ).

fof(t15_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k4_xboole_0(k1_relat_1(A),k1_relat_1(B)),k1_relat_1(k4_xboole_0(A,B))) ) ) ).

fof(d5_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( B = k2_relat_1(A)
        <=> ! [C] :
              ( r2_hidden(C,B)
            <=> ? [D] : r2_hidden(k4_tarski(D,C),A) ) ) ) ).

fof(t16_relat_1,axiom,
    $true ).

fof(t17_relat_1,axiom,
    $true ).

fof(t18_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ~ ( r2_hidden(A,k1_relat_1(B))
          & ! [C] : ~ r2_hidden(C,k2_relat_1(B)) ) ) ).

fof(t19_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ~ ( r2_hidden(A,k2_relat_1(B))
          & ! [C] : ~ r2_hidden(C,k1_relat_1(B)) ) ) ).

fof(t20_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(k4_tarski(A,B),C)
       => ( r2_hidden(A,k1_relat_1(C))
          & r2_hidden(B,k2_relat_1(C)) ) ) ) ).

fof(t21_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => r1_tarski(A,k2_zfmisc_1(k1_relat_1(A),k2_relat_1(A))) ) ).

fof(t22_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k3_xboole_0(A,k2_zfmisc_1(k1_relat_1(A),k2_relat_1(A))) = A ) ).

fof(t23_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( C = k1_tarski(k4_tarski(A,B))
       => ( k1_relat_1(C) = k1_tarski(A)
          & k2_relat_1(C) = k1_tarski(B) ) ) ) ).

fof(t24_relat_1,axiom,
    ! [A,B,C,D,E] :
      ( v1_relat_1(E)
     => ( E = k2_tarski(k4_tarski(A,B),k4_tarski(C,D))
       => ( k1_relat_1(E) = k2_tarski(A,C)
          & k2_relat_1(E) = k2_tarski(B,D) ) ) ) ).

fof(t25_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r1_tarski(A,B)
           => ( r1_tarski(k1_relat_1(A),k1_relat_1(B))
              & r1_tarski(k2_relat_1(A),k2_relat_1(B)) ) ) ) ) ).

fof(t26_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k2_relat_1(k2_xboole_0(A,B)) = k2_xboole_0(k2_relat_1(A),k2_relat_1(B)) ) ) ).

fof(t27_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k2_relat_1(k3_xboole_0(A,B)),k3_xboole_0(k2_relat_1(A),k2_relat_1(B))) ) ) ).

fof(t28_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k4_xboole_0(k2_relat_1(A),k2_relat_1(B)),k2_relat_1(k4_xboole_0(A,B))) ) ) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k3_relat_1(A) = k2_xboole_0(k1_relat_1(A),k2_relat_1(A)) ) ).

fof(t29_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( r1_tarski(k1_relat_1(A),k3_relat_1(A))
        & r1_tarski(k2_relat_1(A),k3_relat_1(A)) ) ) ).

fof(t30_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(k4_tarski(A,B),C)
       => ( r2_hidden(A,k3_relat_1(C))
          & r2_hidden(B,k3_relat_1(C)) ) ) ) ).

fof(t31_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r1_tarski(A,B)
           => r1_tarski(k3_relat_1(A),k3_relat_1(B)) ) ) ) ).

fof(t32_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( C = k1_tarski(k4_tarski(A,B))
       => k3_relat_1(C) = k2_tarski(A,B) ) ) ).

fof(t33_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k3_relat_1(k2_xboole_0(A,B)) = k2_xboole_0(k3_relat_1(A),k3_relat_1(B)) ) ) ).

fof(t34_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k3_relat_1(k3_xboole_0(A,B)),k3_xboole_0(k3_relat_1(A),k3_relat_1(B))) ) ) ).

fof(d7_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( B = k4_relat_1(A)
          <=> ! [C,D] :
                ( r2_hidden(k4_tarski(C,D),B)
              <=> r2_hidden(k4_tarski(D,C),A) ) ) ) ) ).

fof(t35_relat_1,axiom,
    $true ).

fof(t36_relat_1,axiom,
    $true ).

fof(t37_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( k2_relat_1(A) = k1_relat_1(k4_relat_1(A))
        & k1_relat_1(A) = k2_relat_1(k4_relat_1(A)) ) ) ).

fof(t38_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k3_relat_1(A) = k3_relat_1(k4_relat_1(A)) ) ).

fof(t39_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k4_relat_1(k3_xboole_0(A,B)) = k3_xboole_0(k4_relat_1(A),k4_relat_1(B)) ) ) ).

fof(t40_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k4_relat_1(k2_xboole_0(A,B)) = k2_xboole_0(k4_relat_1(A),k4_relat_1(B)) ) ) ).

fof(t41_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k4_relat_1(k4_xboole_0(A,B)) = k4_xboole_0(k4_relat_1(A),k4_relat_1(B)) ) ) ).

fof(d8_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => ( C = k5_relat_1(A,B)
              <=> ! [D,E] :
                    ( r2_hidden(k4_tarski(D,E),C)
                  <=> ? [F] :
                        ( r2_hidden(k4_tarski(D,F),A)
                        & r2_hidden(k4_tarski(F,E),B) ) ) ) ) ) ) ).

fof(t42_relat_1,axiom,
    $true ).

fof(t43_relat_1,axiom,
    $true ).

fof(t44_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k1_relat_1(k5_relat_1(A,B)),k1_relat_1(A)) ) ) ).

fof(t45_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => r1_tarski(k2_relat_1(k5_relat_1(A,B)),k2_relat_1(B)) ) ) ).

fof(t46_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r1_tarski(k2_relat_1(A),k1_relat_1(B))
           => k1_relat_1(k5_relat_1(A,B)) = k1_relat_1(A) ) ) ) ).

fof(t47_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r1_tarski(k1_relat_1(A),k2_relat_1(B))
           => k2_relat_1(k5_relat_1(B,A)) = k2_relat_1(A) ) ) ) ).

fof(t48_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => ( r1_tarski(A,B)
               => r1_tarski(k5_relat_1(C,A),k5_relat_1(C,B)) ) ) ) ) ).

fof(t49_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => ( r1_tarski(A,B)
               => r1_tarski(k5_relat_1(A,C),k5_relat_1(B,C)) ) ) ) ) ).

fof(t50_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => ! [D] :
                  ( v1_relat_1(D)
                 => ( ( r1_tarski(A,B)
                      & r1_tarski(C,D) )
                   => r1_tarski(k5_relat_1(A,C),k5_relat_1(B,D)) ) ) ) ) ) ).

fof(t51_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => k5_relat_1(A,k2_xboole_0(B,C)) = k2_xboole_0(k5_relat_1(A,B),k5_relat_1(A,C)) ) ) ) ).

fof(t52_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => r1_tarski(k5_relat_1(A,k3_xboole_0(B,C)),k3_xboole_0(k5_relat_1(A,B),k5_relat_1(A,C))) ) ) ) ).

fof(t53_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => r1_tarski(k4_xboole_0(k5_relat_1(A,B),k5_relat_1(A,C)),k5_relat_1(A,k4_xboole_0(B,C))) ) ) ) ).

fof(t54_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k4_relat_1(k5_relat_1(A,B)) = k5_relat_1(k4_relat_1(B),k4_relat_1(A)) ) ) ).

fof(t55_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => k5_relat_1(k5_relat_1(A,B),C) = k5_relat_1(A,k5_relat_1(B,C)) ) ) ) ).

fof(t56_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( ! [B,C] : ~ r2_hidden(k4_tarski(B,C),A)
       => A = k1_xboole_0 ) ) ).

fof(t57_relat_1,axiom,
    $true ).

fof(t58_relat_1,axiom,
    $true ).

fof(t59_relat_1,axiom,
    $true ).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ) ).

fof(t61_relat_1,axiom,
    $true ).

fof(t62_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( k5_relat_1(k1_xboole_0,A) = k1_xboole_0
        & k5_relat_1(A,k1_xboole_0) = k1_xboole_0 ) ) ).

fof(t63_relat_1,axiom,
    $true ).

fof(t64_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( ( k1_relat_1(A) = k1_xboole_0
          | k2_relat_1(A) = k1_xboole_0 )
       => A = k1_xboole_0 ) ) ).

fof(t65_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( k1_relat_1(A) = k1_xboole_0
      <=> k2_relat_1(A) = k1_xboole_0 ) ) ).

fof(t66_relat_1,axiom,
    k4_relat_1(k1_xboole_0) = k1_xboole_0 ).

fof(t67_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( r1_xboole_0(k2_relat_1(A),k1_relat_1(B))
           => k5_relat_1(A,B) = k1_xboole_0 ) ) ) ).

fof(d9_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_relat_1(A)
      <=> ~ r2_hidden(k1_xboole_0,k2_relat_1(A)) ) ) ).

fof(d10_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( B = k6_relat_1(A)
      <=> ! [C,D] :
            ( r2_hidden(k4_tarski(C,D),B)
          <=> ( r2_hidden(C,A)
              & C = D ) ) ) ) ).

fof(t68_relat_1,axiom,
    $true ).

fof(t69_relat_1,axiom,
    $true ).

fof(t70_relat_1,axiom,
    $true ).

fof(t71_relat_1,axiom,
    ! [A] :
      ( k1_relat_1(k6_relat_1(A)) = A
      & k2_relat_1(k6_relat_1(A)) = A ) ).

fof(t72_relat_1,axiom,
    ! [A] : k4_relat_1(k6_relat_1(A)) = k6_relat_1(A) ).

fof(t73_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( ! [C] :
            ( r2_hidden(C,A)
           => r2_hidden(k4_tarski(C,C),B) )
       => r1_tarski(k6_relat_1(A),B) ) ) ).

fof(t74_relat_1,axiom,
    ! [A,B,C,D] :
      ( v1_relat_1(D)
     => ( r2_hidden(k4_tarski(A,B),k5_relat_1(k6_relat_1(C),D))
      <=> ( r2_hidden(A,C)
          & r2_hidden(k4_tarski(A,B),D) ) ) ) ).

fof(t75_relat_1,axiom,
    ! [A,B,C,D] :
      ( v1_relat_1(D)
     => ( r2_hidden(k4_tarski(A,B),k5_relat_1(D,k6_relat_1(C)))
      <=> ( r2_hidden(B,C)
          & r2_hidden(k4_tarski(A,B),D) ) ) ) ).

fof(t76_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k5_relat_1(B,k6_relat_1(A)),B)
        & r1_tarski(k5_relat_1(k6_relat_1(A),B),B) ) ) ).

fof(t77_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k1_relat_1(B),A)
       => k5_relat_1(k6_relat_1(A),B) = B ) ) ).

fof(t78_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k5_relat_1(k6_relat_1(k1_relat_1(A)),A) = A ) ).

fof(t79_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k2_relat_1(B),A)
       => k5_relat_1(B,k6_relat_1(A)) = B ) ) ).

fof(t80_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k5_relat_1(A,k6_relat_1(k2_relat_1(A))) = A ) ).

fof(t81_relat_1,axiom,
    k6_relat_1(k1_xboole_0) = k1_xboole_0 ).

fof(t82_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ! [D] :
              ( v1_relat_1(D)
             => ( ( k1_relat_1(B) = A
                  & r1_tarski(k2_relat_1(C),A)
                  & k5_relat_1(C,B) = k6_relat_1(k1_relat_1(D))
                  & k5_relat_1(B,D) = k6_relat_1(A) )
               => D = C ) ) ) ) ).

fof(d11_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B,C] :
          ( v1_relat_1(C)
         => ( C = k7_relat_1(A,B)
          <=> ! [D,E] :
                ( r2_hidden(k4_tarski(D,E),C)
              <=> ( r2_hidden(D,B)
                  & r2_hidden(k4_tarski(D,E),A) ) ) ) ) ) ).

fof(t83_relat_1,axiom,
    $true ).

fof(t84_relat_1,axiom,
    $true ).

fof(t85_relat_1,axiom,
    $true ).

fof(t86_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(A,k1_relat_1(k7_relat_1(C,B)))
      <=> ( r2_hidden(A,B)
          & r2_hidden(A,k1_relat_1(C)) ) ) ) ).

fof(t87_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k1_relat_1(k7_relat_1(B,A)),A) ) ).

fof(t88_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k7_relat_1(B,A),B) ) ).

fof(t89_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k1_relat_1(k7_relat_1(B,A)),k1_relat_1(B)) ) ).

fof(t90_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k1_relat_1(k7_relat_1(B,A)) = k3_xboole_0(k1_relat_1(B),A) ) ).

fof(t91_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(A,k1_relat_1(B))
       => k1_relat_1(k7_relat_1(B,A)) = A ) ) ).

fof(t92_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => r1_tarski(k5_relat_1(k7_relat_1(B,A),C),k5_relat_1(B,C)) ) ) ).

fof(t93_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => r1_tarski(k5_relat_1(B,k7_relat_1(C,A)),k5_relat_1(B,C)) ) ) ).

fof(t94_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k7_relat_1(B,A) = k5_relat_1(k6_relat_1(A),B) ) ).

fof(t95_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( k7_relat_1(B,A) = k1_xboole_0
      <=> r1_xboole_0(k1_relat_1(B),A) ) ) ).

fof(t96_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k7_relat_1(B,A) = k3_xboole_0(B,k2_zfmisc_1(A,k2_relat_1(B))) ) ).

fof(t97_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k1_relat_1(B),A)
       => k7_relat_1(B,A) = B ) ) ).

fof(t98_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k7_relat_1(A,k1_relat_1(A)) = A ) ).

fof(t99_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k2_relat_1(k7_relat_1(B,A)),k2_relat_1(B)) ) ).

fof(t100_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k7_relat_1(k7_relat_1(C,A),B) = k7_relat_1(C,k3_xboole_0(A,B)) ) ).

fof(t101_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k7_relat_1(k7_relat_1(B,A),A) = k7_relat_1(B,A) ) ).

fof(t102_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => k7_relat_1(k7_relat_1(C,A),B) = k7_relat_1(C,A) ) ) ).

fof(t103_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => k7_relat_1(k7_relat_1(C,B),A) = k7_relat_1(C,A) ) ) ).

fof(t104_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => r1_tarski(k7_relat_1(C,A),k7_relat_1(C,B)) ) ) ).

fof(t105_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ( r1_tarski(B,C)
           => r1_tarski(k7_relat_1(B,A),k7_relat_1(C,A)) ) ) ) ).

fof(t106_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ! [D] :
          ( v1_relat_1(D)
         => ( ( r1_tarski(C,D)
              & r1_tarski(A,B) )
           => r1_tarski(k7_relat_1(C,A),k7_relat_1(D,B)) ) ) ) ).

fof(t107_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k7_relat_1(C,k2_xboole_0(A,B)) = k2_xboole_0(k7_relat_1(C,A),k7_relat_1(C,B)) ) ).

fof(t108_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k7_relat_1(C,k3_xboole_0(A,B)) = k3_xboole_0(k7_relat_1(C,A),k7_relat_1(C,B)) ) ).

fof(t109_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k7_relat_1(C,k4_xboole_0(A,B)) = k4_xboole_0(k7_relat_1(C,A),k7_relat_1(C,B)) ) ).

fof(t110_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k7_relat_1(A,k1_xboole_0) = k1_xboole_0 ) ).

fof(t111_relat_1,axiom,
    ! [A] : k7_relat_1(k1_xboole_0,A) = k1_xboole_0 ).

fof(t112_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k7_relat_1(k5_relat_1(B,C),A) = k5_relat_1(k7_relat_1(B,A),C) ) ) ).

fof(d12_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ( C = k8_relat_1(A,B)
          <=> ! [D,E] :
                ( r2_hidden(k4_tarski(D,E),C)
              <=> ( r2_hidden(E,A)
                  & r2_hidden(k4_tarski(D,E),B) ) ) ) ) ) ).

fof(t113_relat_1,axiom,
    $true ).

fof(t114_relat_1,axiom,
    $true ).

fof(t115_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(A,k2_relat_1(k8_relat_1(B,C)))
      <=> ( r2_hidden(A,B)
          & r2_hidden(A,k2_relat_1(C)) ) ) ) ).

fof(t116_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k2_relat_1(k8_relat_1(A,B)),A) ) ).

fof(t117_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k8_relat_1(A,B),B) ) ).

fof(t118_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k2_relat_1(k8_relat_1(A,B)),k2_relat_1(B)) ) ).

fof(t119_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k2_relat_1(k8_relat_1(A,B)) = k3_xboole_0(k2_relat_1(B),A) ) ).

fof(t120_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(A,k2_relat_1(B))
       => k2_relat_1(k8_relat_1(A,B)) = A ) ) ).

fof(t121_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => r1_tarski(k5_relat_1(k8_relat_1(A,B),C),k5_relat_1(B,C)) ) ) ).

fof(t122_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => r1_tarski(k5_relat_1(B,k8_relat_1(A,C)),k5_relat_1(B,C)) ) ) ).

fof(t123_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k8_relat_1(A,B) = k5_relat_1(B,k6_relat_1(A)) ) ).

fof(t124_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k8_relat_1(A,B) = k3_xboole_0(B,k2_zfmisc_1(k1_relat_1(B),A)) ) ).

fof(t125_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k2_relat_1(B),A)
       => k8_relat_1(A,B) = B ) ) ).

fof(t126_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k8_relat_1(k2_relat_1(A),A) = A ) ).

fof(t127_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k8_relat_1(A,k8_relat_1(B,C)) = k8_relat_1(k3_xboole_0(A,B),C) ) ).

fof(t128_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k8_relat_1(A,k8_relat_1(A,B)) = k8_relat_1(A,B) ) ).

fof(t129_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => k8_relat_1(B,k8_relat_1(A,C)) = k8_relat_1(A,C) ) ) ).

fof(t130_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => k8_relat_1(A,k8_relat_1(B,C)) = k8_relat_1(A,C) ) ) ).

fof(t131_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => r1_tarski(k8_relat_1(A,C),k8_relat_1(B,C)) ) ) ).

fof(t132_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ( r1_tarski(B,C)
           => r1_tarski(k8_relat_1(A,B),k8_relat_1(A,C)) ) ) ) ).

fof(t133_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ! [D] :
          ( v1_relat_1(D)
         => ( ( r1_tarski(C,D)
              & r1_tarski(A,B) )
           => r1_tarski(k8_relat_1(A,C),k8_relat_1(B,D)) ) ) ) ).

fof(t134_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k8_relat_1(k2_xboole_0(A,B),C) = k2_xboole_0(k8_relat_1(A,C),k8_relat_1(B,C)) ) ).

fof(t135_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k8_relat_1(k3_xboole_0(A,B),C) = k3_xboole_0(k8_relat_1(A,C),k8_relat_1(B,C)) ) ).

fof(t136_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k8_relat_1(k4_xboole_0(A,B),C) = k4_xboole_0(k8_relat_1(A,C),k8_relat_1(B,C)) ) ).

fof(t137_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k8_relat_1(k1_xboole_0,A) = k1_xboole_0 ) ).

fof(t138_relat_1,axiom,
    ! [A] : k8_relat_1(A,k1_xboole_0) = k1_xboole_0 ).

fof(t139_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k8_relat_1(A,k5_relat_1(B,C)) = k5_relat_1(B,k8_relat_1(A,C)) ) ) ).

fof(t140_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k7_relat_1(k8_relat_1(A,C),B) = k8_relat_1(A,k7_relat_1(C,B)) ) ).

fof(d13_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B,C] :
          ( C = k9_relat_1(A,B)
        <=> ! [D] :
              ( r2_hidden(D,C)
            <=> ? [E] :
                  ( r2_hidden(k4_tarski(E,D),A)
                  & r2_hidden(E,B) ) ) ) ) ).

fof(t141_relat_1,axiom,
    $true ).

fof(t142_relat_1,axiom,
    $true ).

fof(t143_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(A,k9_relat_1(C,B))
      <=> ? [D] :
            ( r2_hidden(D,k1_relat_1(C))
            & r2_hidden(k4_tarski(D,A),C)
            & r2_hidden(D,B) ) ) ) ).

fof(t144_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k9_relat_1(B,A),k2_relat_1(B)) ) ).

fof(t145_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k9_relat_1(B,A) = k9_relat_1(B,k3_xboole_0(k1_relat_1(B),A)) ) ).

fof(t146_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k9_relat_1(A,k1_relat_1(A)) = k2_relat_1(A) ) ).

fof(t147_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k9_relat_1(B,A),k9_relat_1(B,k1_relat_1(B))) ) ).

fof(t148_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k2_relat_1(k7_relat_1(B,A)) = k9_relat_1(B,A) ) ).

fof(t149_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k9_relat_1(A,k1_xboole_0) = k1_xboole_0 ) ).

fof(t150_relat_1,axiom,
    ! [A] : k9_relat_1(k1_xboole_0,A) = k1_xboole_0 ).

fof(t151_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( k9_relat_1(B,A) = k1_xboole_0
      <=> r1_xboole_0(k1_relat_1(B),A) ) ) ).

fof(t152_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ~ ( A != k1_xboole_0
          & r1_tarski(A,k1_relat_1(B))
          & k9_relat_1(B,A) = k1_xboole_0 ) ) ).

fof(t153_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k9_relat_1(C,k2_xboole_0(A,B)) = k2_xboole_0(k9_relat_1(C,A),k9_relat_1(C,B)) ) ).

fof(t154_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => r1_tarski(k9_relat_1(C,k3_xboole_0(A,B)),k3_xboole_0(k9_relat_1(C,A),k9_relat_1(C,B))) ) ).

fof(t155_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => r1_tarski(k4_xboole_0(k9_relat_1(C,A),k9_relat_1(C,B)),k9_relat_1(C,k4_xboole_0(A,B))) ) ).

fof(t156_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => r1_tarski(k9_relat_1(C,A),k9_relat_1(C,B)) ) ) ).

fof(t157_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ( r1_tarski(B,C)
           => r1_tarski(k9_relat_1(B,A),k9_relat_1(C,A)) ) ) ) ).

fof(t158_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ! [D] :
          ( v1_relat_1(D)
         => ( ( r1_tarski(C,D)
              & r1_tarski(A,B) )
           => r1_tarski(k9_relat_1(C,A),k9_relat_1(D,B)) ) ) ) ).

fof(t159_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k9_relat_1(k5_relat_1(B,C),A) = k9_relat_1(C,k9_relat_1(B,A)) ) ) ).

fof(t160_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k2_relat_1(k5_relat_1(A,B)) = k9_relat_1(B,k2_relat_1(A)) ) ) ).

fof(t161_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => r1_tarski(k9_relat_1(k7_relat_1(C,A),B),k9_relat_1(C,B)) ) ).

fof(t162_relat_1,axiom,
    $true ).

fof(t163_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k3_xboole_0(k1_relat_1(B),A),k9_relat_1(k4_relat_1(B),k9_relat_1(B,A))) ) ).

fof(d14_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B,C] :
          ( C = k10_relat_1(A,B)
        <=> ! [D] :
              ( r2_hidden(D,C)
            <=> ? [E] :
                  ( r2_hidden(k4_tarski(D,E),A)
                  & r2_hidden(E,B) ) ) ) ) ).

fof(t164_relat_1,axiom,
    $true ).

fof(t165_relat_1,axiom,
    $true ).

fof(t166_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(A,k10_relat_1(C,B))
      <=> ? [D] :
            ( r2_hidden(D,k2_relat_1(C))
            & r2_hidden(k4_tarski(A,D),C)
            & r2_hidden(D,B) ) ) ) ).

fof(t167_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k10_relat_1(B,A),k1_relat_1(B)) ) ).

fof(t168_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => k10_relat_1(B,A) = k10_relat_1(B,k3_xboole_0(k2_relat_1(B),A)) ) ).

fof(t169_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k10_relat_1(A,k2_relat_1(A)) = k1_relat_1(A) ) ).

fof(t170_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k10_relat_1(B,A),k10_relat_1(B,k2_relat_1(B))) ) ).

fof(t171_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k10_relat_1(A,k1_xboole_0) = k1_xboole_0 ) ).

fof(t172_relat_1,axiom,
    ! [A] : k10_relat_1(k1_xboole_0,A) = k1_xboole_0 ).

fof(t173_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( k10_relat_1(B,A) = k1_xboole_0
      <=> r1_xboole_0(k2_relat_1(B),A) ) ) ).

fof(t174_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ~ ( A != k1_xboole_0
          & r1_tarski(A,k2_relat_1(B))
          & k10_relat_1(B,A) = k1_xboole_0 ) ) ).

fof(t175_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k10_relat_1(C,k2_xboole_0(A,B)) = k2_xboole_0(k10_relat_1(C,A),k10_relat_1(C,B)) ) ).

fof(t176_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => r1_tarski(k10_relat_1(C,k3_xboole_0(A,B)),k3_xboole_0(k10_relat_1(C,A),k10_relat_1(C,B))) ) ).

fof(t177_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => r1_tarski(k4_xboole_0(k10_relat_1(C,A),k10_relat_1(C,B)),k10_relat_1(C,k4_xboole_0(A,B))) ) ).

fof(t178_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r1_tarski(A,B)
       => r1_tarski(k10_relat_1(C,A),k10_relat_1(C,B)) ) ) ).

fof(t179_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ( r1_tarski(B,C)
           => r1_tarski(k10_relat_1(B,A),k10_relat_1(C,A)) ) ) ) ).

fof(t180_relat_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ! [D] :
          ( v1_relat_1(D)
         => ( ( r1_tarski(C,D)
              & r1_tarski(A,B) )
           => r1_tarski(k10_relat_1(C,A),k10_relat_1(D,B)) ) ) ) ).

fof(t181_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k10_relat_1(k5_relat_1(B,C),A) = k10_relat_1(B,k10_relat_1(C,A)) ) ) ).

fof(t182_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k1_relat_1(k5_relat_1(A,B)) = k10_relat_1(A,k1_relat_1(B)) ) ) ).

fof(t183_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k3_xboole_0(k2_relat_1(B),A),k10_relat_1(k4_relat_1(B),k10_relat_1(B,A))) ) ).

fof(d15_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( v3_relat_1(A)
      <=> r1_tarski(k2_relat_1(A),k1_tarski(k1_xboole_0)) ) ) ).

fof(t184_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( v3_relat_1(A)
      <=> ! [B] :
            ( r2_hidden(B,k2_relat_1(A))
           => B = k1_xboole_0 ) ) ) ).

fof(t185_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C,D] :
              ( ( k7_relat_1(A,C) = k7_relat_1(B,C)
                & k7_relat_1(A,D) = k7_relat_1(B,D) )
             => k7_relat_1(A,k2_xboole_0(C,D)) = k7_relat_1(B,k2_xboole_0(C,D)) ) ) ) ).

fof(t186_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ( ( r1_tarski(k1_relat_1(C),A)
              & r1_tarski(C,B) )
           => r1_tarski(C,k7_relat_1(B,A)) ) ) ) ).

fof(t187_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r1_xboole_0(B,k1_relat_1(A))
         => k7_relat_1(A,B) = k1_xboole_0 ) ) ).

fof(t188_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C,D] :
              ( ( r1_tarski(C,D)
                & k7_relat_1(A,D) = k7_relat_1(B,D) )
             => k7_relat_1(A,C) = k7_relat_1(B,C) ) ) ) ).

fof(t189_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k7_relat_1(A,k1_relat_1(B)) = k7_relat_1(A,k1_relat_1(k7_relat_1(B,k1_relat_1(A)))) ) ) ).

fof(t190_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ~ ( ~ v3_relat_1(k7_relat_1(B,A))
          & v3_relat_1(B) ) ) ).

fof(s1_relat_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & ! [B,C] :
          ( r2_hidden(k4_tarski(B,C),A)
        <=> ( r2_hidden(B,f1_s1_relat_1)
            & r2_hidden(C,f2_s1_relat_1)
            & p1_s1_relat_1(B,C) ) ) ) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(dt_k4_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => v1_relat_1(k4_relat_1(A)) ) ).

fof(involutiveness_k4_relat_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => k4_relat_1(k4_relat_1(A)) = A ) ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_relat_1(B) )
     => v1_relat_1(k5_relat_1(A,B)) ) ).

fof(dt_k6_relat_1,axiom,
    ! [A] : v1_relat_1(k6_relat_1(A)) ).

fof(dt_k7_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(A)
     => v1_relat_1(k7_relat_1(A,B)) ) ).

fof(dt_k8_relat_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => v1_relat_1(k8_relat_1(A,B)) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(dt_k10_relat_1,axiom,
    $true ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+11 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Functions and Their Basic Properties
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : funct_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  196 (  78 unt;   0 def)
%            Number of atoms       :  705 ( 145 equ)
%            Maximal formula atoms :   15 (   3 avg)
%            Number of connectives :  526 (  17   ~;   0   |; 258   &)
%                                         (  28 <=>; 223  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   4 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   15 (  13 usr;   1 prp; 0-2 aty)
%            Number of functors    :   24 (  24 usr;   5 con; 0-2 aty)
%            Number of variables   :  308 ( 294   !;  14   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => v1_funct_1(A) ) ).

fof(fc1_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k5_relat_1(A,B))
        & v1_funct_1(k5_relat_1(A,B)) ) ) ).

fof(fc2_funct_1,axiom,
    ! [A] :
      ( v1_relat_1(k6_relat_1(A))
      & v1_funct_1(k6_relat_1(A)) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_xboole_0(A)
      & v1_funct_1(A) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_xboole_0(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_funct_1(A) ) ) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v2_funct_1(A) ) ).

fof(fc3_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_funct_1(A) )
     => ( v1_relat_1(k4_relat_1(A))
        & v1_funct_1(k4_relat_1(A)) ) ) ).

fof(fc4_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(k7_relat_1(A,B))
        & v1_funct_1(k7_relat_1(A,B)) ) ) ).

fof(fc5_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_relat_1(k8_relat_1(A,B))
        & v1_funct_1(k8_relat_1(A,B)) ) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v3_relat_1(A)
      & v1_funct_1(A) ) ).

fof(rc5_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v2_relat_1(A)
      & v1_funct_1(A) ) ).

fof(fc6_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v2_relat_1(A)
        & v1_funct_1(A) )
     => v1_setfam_1(k2_relat_1(A)) ) ).

fof(d1_funct_1,axiom,
    ! [A] :
      ( v1_funct_1(A)
    <=> ! [B,C,D] :
          ( ( r2_hidden(k4_tarski(B,C),A)
            & r2_hidden(k4_tarski(B,D),A) )
         => C = D ) ) ).

fof(t1_funct_1,axiom,
    $true ).

fof(t2_funct_1,axiom,
    ! [A] :
      ( ( ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C,D] : k4_tarski(C,D) != B )
        & ! [B,C,D] :
            ( ( r2_hidden(k4_tarski(B,C),A)
              & r2_hidden(k4_tarski(B,D),A) )
           => C = D ) )
     => ( v1_relat_1(A)
        & v1_funct_1(A) ) ) ).

fof(d2_funct_1,axiom,
    $true ).

fof(d3_funct_1,axiom,
    $true ).

fof(d4_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B,C] :
          ( ( r2_hidden(B,k1_relat_1(A))
           => ( C = k1_funct_1(A,B)
            <=> r2_hidden(k4_tarski(B,C),A) ) )
          & ( ~ r2_hidden(B,k1_relat_1(A))
           => ( C = k1_funct_1(A,B)
            <=> C = k1_xboole_0 ) ) ) ) ).

fof(t3_funct_1,axiom,
    $true ).

fof(t4_funct_1,axiom,
    $true ).

fof(t5_funct_1,axiom,
    $true ).

fof(t6_funct_1,axiom,
    $true ).

fof(t7_funct_1,axiom,
    $true ).

fof(t8_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(k4_tarski(A,B),C)
      <=> ( r2_hidden(A,k1_relat_1(C))
          & B = k1_funct_1(C,A) ) ) ) ).

fof(t9_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( k1_relat_1(A) = k1_relat_1(B)
              & ! [C] :
                  ( r2_hidden(C,k1_relat_1(A))
                 => k1_funct_1(A,C) = k1_funct_1(B,C) ) )
           => A = B ) ) ) ).

fof(d5_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( B = k2_relat_1(A)
        <=> ! [C] :
              ( r2_hidden(C,B)
            <=> ? [D] :
                  ( r2_hidden(D,k1_relat_1(A))
                  & C = k1_funct_1(A,D) ) ) ) ) ).

fof(t10_funct_1,axiom,
    $true ).

fof(t11_funct_1,axiom,
    $true ).

fof(t12_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( r2_hidden(A,k1_relat_1(B))
       => r2_hidden(k1_funct_1(B,A),k2_relat_1(B)) ) ) ).

fof(t13_funct_1,axiom,
    $true ).

fof(t14_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( k1_relat_1(B) = k1_tarski(A)
       => k2_relat_1(B) = k1_tarski(k1_funct_1(B,A)) ) ) ).

fof(t15_funct_1,axiom,
    ! [A] :
      ( A != k1_xboole_0
     => ! [B] :
        ? [C] :
          ( v1_relat_1(C)
          & v1_funct_1(C)
          & k1_relat_1(C) = A
          & k2_relat_1(C) = k1_tarski(B) ) ) ).

fof(t16_funct_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( ( k1_relat_1(B) = A
                  & k1_relat_1(C) = A )
               => B = C ) ) )
     => A = k1_xboole_0 ) ).

fof(t17_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( ( k1_relat_1(B) = k1_relat_1(C)
              & k2_relat_1(B) = k1_tarski(A)
              & k2_relat_1(C) = k1_tarski(A) )
           => B = C ) ) ) ).

fof(t18_funct_1,axiom,
    ! [A,B] :
      ~ ( ~ ( A = k1_xboole_0
            & B != k1_xboole_0 )
        & ! [C] :
            ( ( v1_relat_1(C)
              & v1_funct_1(C) )
           => ~ ( B = k1_relat_1(C)
                & r1_tarski(k2_relat_1(C),A) ) ) ) ).

fof(t19_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( ! [C] :
            ~ ( r2_hidden(C,A)
              & ! [D] :
                  ~ ( r2_hidden(D,k1_relat_1(B))
                    & C = k1_funct_1(B,D) ) )
       => r1_tarski(A,k2_relat_1(B)) ) ) ).

fof(t20_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ( ( ! [D] :
                      ( r2_hidden(D,k1_relat_1(C))
                    <=> ( r2_hidden(D,k1_relat_1(A))
                        & r2_hidden(k1_funct_1(A,D),k1_relat_1(B)) ) )
                  & ! [D] :
                      ( r2_hidden(D,k1_relat_1(C))
                     => k1_funct_1(C,D) = k1_funct_1(B,k1_funct_1(A,D)) ) )
               => C = k5_relat_1(A,B) ) ) ) ) ).

fof(t21_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( r2_hidden(A,k1_relat_1(k5_relat_1(C,B)))
          <=> ( r2_hidden(A,k1_relat_1(C))
              & r2_hidden(k1_funct_1(C,A),k1_relat_1(B)) ) ) ) ) ).

fof(t22_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( r2_hidden(A,k1_relat_1(k5_relat_1(C,B)))
           => k1_funct_1(k5_relat_1(C,B),A) = k1_funct_1(B,k1_funct_1(C,A)) ) ) ) ).

fof(t23_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( r2_hidden(A,k1_relat_1(B))
           => k1_funct_1(k5_relat_1(B,C),A) = k1_funct_1(C,k1_funct_1(B,A)) ) ) ) ).

fof(t24_funct_1,axiom,
    $true ).

fof(t25_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( r2_hidden(A,k2_relat_1(k5_relat_1(C,B)))
           => r2_hidden(A,k2_relat_1(B)) ) ) ) ).

fof(t26_funct_1,axiom,
    $true ).

fof(t27_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( k1_relat_1(k5_relat_1(B,A)) = k1_relat_1(B)
           => r1_tarski(k2_relat_1(B),k1_relat_1(A)) ) ) ) ).

fof(t28_funct_1,axiom,
    $true ).

fof(t29_funct_1,axiom,
    $true ).

fof(t30_funct_1,axiom,
    $true ).

fof(t31_funct_1,axiom,
    $true ).

fof(t32_funct_1,axiom,
    $true ).

fof(t33_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( ( r1_tarski(k2_relat_1(B),A)
          & ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C) )
             => ! [D] :
                  ( ( v1_relat_1(D)
                    & v1_funct_1(D) )
                 => ( ( k1_relat_1(C) = A
                      & k1_relat_1(D) = A
                      & k5_relat_1(B,C) = k5_relat_1(B,D) )
                   => C = D ) ) ) )
       => A = k2_relat_1(B) ) ) ).

fof(t34_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( B = k6_relat_1(A)
      <=> ( k1_relat_1(B) = A
          & ! [C] :
              ( r2_hidden(C,A)
             => k1_funct_1(B,C) = C ) ) ) ) ).

fof(t35_funct_1,axiom,
    ! [A,B] :
      ( r2_hidden(B,A)
     => k1_funct_1(k6_relat_1(A),B) = B ) ).

fof(t36_funct_1,axiom,
    $true ).

fof(t37_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => k1_relat_1(k5_relat_1(k6_relat_1(A),B)) = k3_xboole_0(k1_relat_1(B),A) ) ).

fof(t38_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(B,k3_xboole_0(k1_relat_1(C),A))
       => k1_funct_1(C,B) = k1_funct_1(k5_relat_1(k6_relat_1(A),C),B) ) ) ).

fof(t39_funct_1,axiom,
    $true ).

fof(t40_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(B,k1_relat_1(k5_relat_1(C,k6_relat_1(A))))
      <=> ( r2_hidden(B,k1_relat_1(C))
          & r2_hidden(k1_funct_1(C,B),A) ) ) ) ).

fof(t41_funct_1,axiom,
    $true ).

fof(t42_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( k5_relat_1(k6_relat_1(k1_relat_1(A)),A) = A
        & k5_relat_1(A,k6_relat_1(k2_relat_1(A))) = A ) ) ).

fof(t43_funct_1,axiom,
    ! [A,B] : k5_relat_1(k6_relat_1(B),k6_relat_1(A)) = k6_relat_1(k3_xboole_0(A,B)) ).

fof(t44_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( k2_relat_1(A) = k1_relat_1(B)
              & k5_relat_1(A,B) = A )
           => B = k6_relat_1(k1_relat_1(B)) ) ) ) ).

fof(d6_funct_1,axiom,
    $true ).

fof(d7_funct_1,axiom,
    $true ).

fof(d8_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
      <=> ! [B,C] :
            ( ( r2_hidden(B,k1_relat_1(A))
              & r2_hidden(C,k1_relat_1(A))
              & k1_funct_1(A,B) = k1_funct_1(A,C) )
           => B = C ) ) ) ).

fof(t45_funct_1,axiom,
    $true ).

fof(t46_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(A)
              & v2_funct_1(B) )
           => v2_funct_1(k5_relat_1(A,B)) ) ) ) ).

fof(t47_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(k5_relat_1(B,A))
              & r1_tarski(k2_relat_1(B),k1_relat_1(A)) )
           => v2_funct_1(B) ) ) ) ).

fof(t48_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(k5_relat_1(B,A))
              & k2_relat_1(B) = k1_relat_1(A) )
           => ( v2_funct_1(B)
              & v2_funct_1(A) ) ) ) ) ).

fof(t49_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
      <=> ! [B] :
            ( ( v1_relat_1(B)
              & v1_funct_1(B) )
           => ! [C] :
                ( ( v1_relat_1(C)
                  & v1_funct_1(C) )
               => ( ( r1_tarski(k2_relat_1(B),k1_relat_1(A))
                    & r1_tarski(k2_relat_1(C),k1_relat_1(A))
                    & k1_relat_1(B) = k1_relat_1(C)
                    & k5_relat_1(B,A) = k5_relat_1(C,A) )
                 => B = C ) ) ) ) ) ).

fof(t50_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( ( k1_relat_1(B) = A
              & k1_relat_1(C) = A
              & r1_tarski(k2_relat_1(C),A)
              & v2_funct_1(B)
              & k5_relat_1(C,B) = B )
           => C = k6_relat_1(A) ) ) ) ).

fof(t51_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( k2_relat_1(k5_relat_1(B,A)) = k2_relat_1(A)
              & v2_funct_1(A) )
           => r1_tarski(k1_relat_1(A),k2_relat_1(B)) ) ) ) ).

fof(t52_funct_1,axiom,
    ! [A] : v2_funct_1(k6_relat_1(A)) ).

fof(t53_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( ? [B] :
            ( v1_relat_1(B)
            & v1_funct_1(B)
            & k5_relat_1(A,B) = k6_relat_1(k1_relat_1(A)) )
       => v2_funct_1(A) ) ) ).

fof(d9_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => k2_funct_1(A) = k4_relat_1(A) ) ) ).

fof(t54_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => ! [B] :
            ( ( v1_relat_1(B)
              & v1_funct_1(B) )
           => ( B = k2_funct_1(A)
            <=> ( k1_relat_1(B) = k2_relat_1(A)
                & ! [C,D] :
                    ( ( ( r2_hidden(C,k2_relat_1(A))
                        & D = k1_funct_1(B,C) )
                     => ( r2_hidden(D,k1_relat_1(A))
                        & C = k1_funct_1(A,D) ) )
                    & ( ( r2_hidden(D,k1_relat_1(A))
                        & C = k1_funct_1(A,D) )
                     => ( r2_hidden(C,k2_relat_1(A))
                        & D = k1_funct_1(B,C) ) ) ) ) ) ) ) ) ).

fof(t55_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => ( k2_relat_1(A) = k1_relat_1(k2_funct_1(A))
          & k1_relat_1(A) = k2_relat_1(k2_funct_1(A)) ) ) ) ).

fof(t56_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( ( v2_funct_1(B)
          & r2_hidden(A,k1_relat_1(B)) )
       => ( A = k1_funct_1(k2_funct_1(B),k1_funct_1(B,A))
          & A = k1_funct_1(k5_relat_1(B,k2_funct_1(B)),A) ) ) ) ).

fof(t57_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( ( v2_funct_1(B)
          & r2_hidden(A,k2_relat_1(B)) )
       => ( A = k1_funct_1(B,k1_funct_1(k2_funct_1(B),A))
          & A = k1_funct_1(k5_relat_1(k2_funct_1(B),B),A) ) ) ) ).

fof(t58_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => ( k1_relat_1(k5_relat_1(A,k2_funct_1(A))) = k1_relat_1(A)
          & k2_relat_1(k5_relat_1(A,k2_funct_1(A))) = k1_relat_1(A) ) ) ) ).

fof(t59_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => ( k1_relat_1(k5_relat_1(k2_funct_1(A),A)) = k2_relat_1(A)
          & k2_relat_1(k5_relat_1(k2_funct_1(A),A)) = k2_relat_1(A) ) ) ) ).

fof(t60_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(A)
              & k1_relat_1(A) = k2_relat_1(B)
              & k2_relat_1(A) = k1_relat_1(B)
              & ! [C,D] :
                  ( ( r2_hidden(C,k1_relat_1(A))
                    & r2_hidden(D,k1_relat_1(B)) )
                 => ( k1_funct_1(A,C) = D
                  <=> k1_funct_1(B,D) = C ) ) )
           => B = k2_funct_1(A) ) ) ) ).

fof(t61_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => ( k5_relat_1(A,k2_funct_1(A)) = k6_relat_1(k1_relat_1(A))
          & k5_relat_1(k2_funct_1(A),A) = k6_relat_1(k2_relat_1(A)) ) ) ) ).

fof(t62_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => v2_funct_1(k2_funct_1(A)) ) ) ).

fof(t63_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(A)
              & k2_relat_1(A) = k1_relat_1(B)
              & k5_relat_1(A,B) = k6_relat_1(k1_relat_1(A)) )
           => B = k2_funct_1(A) ) ) ) ).

fof(t64_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(A)
              & k2_relat_1(B) = k1_relat_1(A)
              & k5_relat_1(B,A) = k6_relat_1(k2_relat_1(A)) )
           => B = k2_funct_1(A) ) ) ) ).

fof(t65_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => k2_funct_1(k2_funct_1(A)) = A ) ) ).

fof(t66_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(A)
              & v2_funct_1(B) )
           => k2_funct_1(k5_relat_1(A,B)) = k5_relat_1(k2_funct_1(B),k2_funct_1(A)) ) ) ) ).

fof(t67_funct_1,axiom,
    ! [A] : k2_funct_1(k6_relat_1(A)) = k6_relat_1(A) ).

fof(t68_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( B = k7_relat_1(C,A)
          <=> ( k1_relat_1(B) = k3_xboole_0(k1_relat_1(C),A)
              & ! [D] :
                  ( r2_hidden(D,k1_relat_1(B))
                 => k1_funct_1(B,D) = k1_funct_1(C,D) ) ) ) ) ) ).

fof(t69_funct_1,axiom,
    $true ).

fof(t70_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(B,k1_relat_1(k7_relat_1(C,A)))
       => k1_funct_1(k7_relat_1(C,A),B) = k1_funct_1(C,B) ) ) ).

fof(t71_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(B,k3_xboole_0(k1_relat_1(C),A))
       => k1_funct_1(k7_relat_1(C,A),B) = k1_funct_1(C,B) ) ) ).

fof(t72_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(B,A)
       => k1_funct_1(k7_relat_1(C,A),B) = k1_funct_1(C,B) ) ) ).

fof(t73_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( ( r2_hidden(B,k1_relat_1(C))
          & r2_hidden(B,A) )
       => r2_hidden(k1_funct_1(C,B),k2_relat_1(k7_relat_1(C,A))) ) ) ).

fof(t74_funct_1,axiom,
    $true ).

fof(t75_funct_1,axiom,
    $true ).

fof(t76_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( r1_tarski(k1_relat_1(k7_relat_1(B,A)),k1_relat_1(B))
        & r1_tarski(k2_relat_1(k7_relat_1(B,A)),k2_relat_1(B)) ) ) ).

fof(t77_funct_1,axiom,
    $true ).

fof(t78_funct_1,axiom,
    $true ).

fof(t79_funct_1,axiom,
    $true ).

fof(t80_funct_1,axiom,
    $true ).

fof(t81_funct_1,axiom,
    $true ).

fof(t82_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r1_tarski(A,B)
       => ( k7_relat_1(k7_relat_1(C,A),B) = k7_relat_1(C,A)
          & k7_relat_1(k7_relat_1(C,B),A) = k7_relat_1(C,A) ) ) ) ).

fof(t83_funct_1,axiom,
    $true ).

fof(t84_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v2_funct_1(B)
       => v2_funct_1(k7_relat_1(B,A)) ) ) ).

fof(t85_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( B = k8_relat_1(A,C)
          <=> ( ! [D] :
                  ( r2_hidden(D,k1_relat_1(B))
                <=> ( r2_hidden(D,k1_relat_1(C))
                    & r2_hidden(k1_funct_1(C,D),A) ) )
              & ! [D] :
                  ( r2_hidden(D,k1_relat_1(B))
                 => k1_funct_1(B,D) = k1_funct_1(C,D) ) ) ) ) ) ).

fof(t86_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(B,k1_relat_1(k8_relat_1(A,C)))
      <=> ( r2_hidden(B,k1_relat_1(C))
          & r2_hidden(k1_funct_1(C,B),A) ) ) ) ).

fof(t87_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(B,k1_relat_1(k8_relat_1(A,C)))
       => k1_funct_1(k8_relat_1(A,C),B) = k1_funct_1(C,B) ) ) ).

fof(t88_funct_1,axiom,
    $true ).

fof(t89_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( r1_tarski(k1_relat_1(k8_relat_1(A,B)),k1_relat_1(B))
        & r1_tarski(k2_relat_1(k8_relat_1(A,B)),k2_relat_1(B)) ) ) ).

fof(t90_funct_1,axiom,
    $true ).

fof(t91_funct_1,axiom,
    $true ).

fof(t92_funct_1,axiom,
    $true ).

fof(t93_funct_1,axiom,
    $true ).

fof(t94_funct_1,axiom,
    $true ).

fof(t95_funct_1,axiom,
    $true ).

fof(t96_funct_1,axiom,
    $true ).

fof(t97_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r1_tarski(A,B)
       => ( k8_relat_1(B,k8_relat_1(A,C)) = k8_relat_1(A,C)
          & k8_relat_1(A,k8_relat_1(B,C)) = k8_relat_1(A,C) ) ) ) ).

fof(t98_funct_1,axiom,
    $true ).

fof(t99_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v2_funct_1(B)
       => v2_funct_1(k8_relat_1(A,B)) ) ) ).

fof(d10_funct_1,axiom,
    $true ).

fof(d11_funct_1,axiom,
    $true ).

fof(d12_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B,C] :
          ( C = k9_relat_1(A,B)
        <=> ! [D] :
              ( r2_hidden(D,C)
            <=> ? [E] :
                  ( r2_hidden(E,k1_relat_1(A))
                  & r2_hidden(E,B)
                  & D = k1_funct_1(A,E) ) ) ) ) ).

fof(t100_funct_1,axiom,
    $true ).

fof(t101_funct_1,axiom,
    $true ).

fof(t102_funct_1,axiom,
    $true ).

fof(t103_funct_1,axiom,
    $true ).

fof(t104_funct_1,axiom,
    $true ).

fof(t105_funct_1,axiom,
    $true ).

fof(t106_funct_1,axiom,
    $true ).

fof(t107_funct_1,axiom,
    $true ).

fof(t108_funct_1,axiom,
    $true ).

fof(t109_funct_1,axiom,
    $true ).

fof(t110_funct_1,axiom,
    $true ).

fof(t111_funct_1,axiom,
    $true ).

fof(t112_funct_1,axiom,
    $true ).

fof(t113_funct_1,axiom,
    $true ).

fof(t114_funct_1,axiom,
    $true ).

fof(t115_funct_1,axiom,
    $true ).

fof(t116_funct_1,axiom,
    $true ).

fof(t117_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( r2_hidden(A,k1_relat_1(B))
       => k9_relat_1(B,k1_tarski(A)) = k1_tarski(k1_funct_1(B,A)) ) ) ).

fof(t118_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( ( r2_hidden(A,k1_relat_1(C))
          & r2_hidden(B,k1_relat_1(C)) )
       => k9_relat_1(C,k2_tarski(A,B)) = k2_tarski(k1_funct_1(C,A),k1_funct_1(C,B)) ) ) ).

fof(t119_funct_1,axiom,
    $true ).

fof(t120_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => r1_tarski(k9_relat_1(k8_relat_1(A,C),B),k9_relat_1(C,B)) ) ).

fof(t121_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( v2_funct_1(C)
       => k9_relat_1(C,k3_xboole_0(A,B)) = k3_xboole_0(k9_relat_1(C,A),k9_relat_1(C,B)) ) ) ).

fof(t122_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( ! [B,C] : k9_relat_1(A,k3_xboole_0(B,C)) = k3_xboole_0(k9_relat_1(A,B),k9_relat_1(A,C))
       => v2_funct_1(A) ) ) ).

fof(t123_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( v2_funct_1(C)
       => k9_relat_1(C,k4_xboole_0(A,B)) = k4_xboole_0(k9_relat_1(C,A),k9_relat_1(C,B)) ) ) ).

fof(t124_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( ! [B,C] : k9_relat_1(A,k4_xboole_0(B,C)) = k4_xboole_0(k9_relat_1(A,B),k9_relat_1(A,C))
       => v2_funct_1(A) ) ) ).

fof(t125_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( ( r1_xboole_0(A,B)
          & v2_funct_1(C) )
       => r1_xboole_0(k9_relat_1(C,A),k9_relat_1(C,B)) ) ) ).

fof(t126_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => k9_relat_1(k8_relat_1(A,C),B) = k3_xboole_0(A,k9_relat_1(C,B)) ) ).

fof(d13_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B,C] :
          ( C = k10_relat_1(A,B)
        <=> ! [D] :
              ( r2_hidden(D,C)
            <=> ( r2_hidden(D,k1_relat_1(A))
                & r2_hidden(k1_funct_1(A,D),B) ) ) ) ) ).

fof(t127_funct_1,axiom,
    $true ).

fof(t128_funct_1,axiom,
    $true ).

fof(t129_funct_1,axiom,
    $true ).

fof(t130_funct_1,axiom,
    $true ).

fof(t131_funct_1,axiom,
    $true ).

fof(t132_funct_1,axiom,
    $true ).

fof(t133_funct_1,axiom,
    $true ).

fof(t134_funct_1,axiom,
    $true ).

fof(t135_funct_1,axiom,
    $true ).

fof(t136_funct_1,axiom,
    $true ).

fof(t137_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => k10_relat_1(C,k3_xboole_0(A,B)) = k3_xboole_0(k10_relat_1(C,A),k10_relat_1(C,B)) ) ).

fof(t138_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => k10_relat_1(C,k4_xboole_0(A,B)) = k4_xboole_0(k10_relat_1(C,A),k10_relat_1(C,B)) ) ).

fof(t139_funct_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => k10_relat_1(k7_relat_1(C,A),B) = k3_xboole_0(A,k10_relat_1(C,B)) ) ).

fof(t140_funct_1,axiom,
    $true ).

fof(t141_funct_1,axiom,
    $true ).

fof(t142_funct_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r2_hidden(A,k2_relat_1(B))
      <=> k10_relat_1(B,k1_tarski(A)) != k1_xboole_0 ) ) ).

fof(t143_funct_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( ! [C] :
            ~ ( r2_hidden(C,A)
              & k10_relat_1(B,k1_tarski(C)) = k1_xboole_0 )
       => r1_tarski(A,k2_relat_1(B)) ) ) ).

fof(t144_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( ! [B] :
            ~ ( r2_hidden(B,k2_relat_1(A))
              & ! [C] : k10_relat_1(A,k1_tarski(B)) != k1_tarski(C) )
      <=> v2_funct_1(A) ) ) ).

fof(t145_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => r1_tarski(k9_relat_1(B,k10_relat_1(B,A)),A) ) ).

fof(t146_funct_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(A,k1_relat_1(B))
       => r1_tarski(A,k10_relat_1(B,k9_relat_1(B,A))) ) ) ).

fof(t147_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( r1_tarski(A,k2_relat_1(B))
       => k9_relat_1(B,k10_relat_1(B,A)) = A ) ) ).

fof(t148_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => k9_relat_1(B,k10_relat_1(B,A)) = k3_xboole_0(A,k9_relat_1(B,k1_relat_1(B))) ) ).

fof(t149_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => r1_tarski(k9_relat_1(C,k3_xboole_0(A,k10_relat_1(C,B))),k3_xboole_0(k9_relat_1(C,A),B)) ) ).

fof(t150_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => k9_relat_1(C,k3_xboole_0(A,k10_relat_1(C,B))) = k3_xboole_0(k9_relat_1(C,A),B) ) ).

fof(t151_funct_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => r1_tarski(k3_xboole_0(A,k10_relat_1(C,B)),k10_relat_1(C,k3_xboole_0(k9_relat_1(C,A),B))) ) ).

fof(t152_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v2_funct_1(B)
       => r1_tarski(k10_relat_1(B,k9_relat_1(B,A)),A) ) ) ).

fof(t153_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( ! [B] : r1_tarski(k10_relat_1(A,k9_relat_1(A,B)),B)
       => v2_funct_1(A) ) ) ).

fof(t154_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v2_funct_1(B)
       => k9_relat_1(B,A) = k10_relat_1(k2_funct_1(B),A) ) ) ).

fof(t155_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v2_funct_1(B)
       => k10_relat_1(B,A) = k9_relat_1(k2_funct_1(B),A) ) ) ).

fof(t156_funct_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ! [D] :
              ( ( v1_relat_1(D)
                & v1_funct_1(D) )
             => ( ( A = k2_relat_1(B)
                  & k1_relat_1(C) = A
                  & k1_relat_1(D) = A
                  & k5_relat_1(B,C) = k5_relat_1(B,D) )
               => C = D ) ) ) ) ).

fof(t157_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( ( r1_tarski(k9_relat_1(C,A),k9_relat_1(C,B))
          & r1_tarski(A,k1_relat_1(C))
          & v2_funct_1(C) )
       => r1_tarski(A,B) ) ) ).

fof(t158_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( ( r1_tarski(k10_relat_1(C,A),k10_relat_1(C,B))
          & r1_tarski(A,k2_relat_1(C)) )
       => r1_tarski(A,B) ) ) ).

fof(t159_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
      <=> ! [B] :
          ? [C] : r1_tarski(k10_relat_1(A,k1_tarski(B)),k1_tarski(C)) ) ) ).

fof(t160_funct_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => ( r1_tarski(k2_relat_1(B),k1_relat_1(C))
           => r1_tarski(k10_relat_1(B,A),k10_relat_1(k5_relat_1(B,C),k9_relat_1(C,A))) ) ) ) ).

fof(t161_funct_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( ( k10_relat_1(C,A) = k10_relat_1(C,B)
          & r1_tarski(A,k2_relat_1(C))
          & r1_tarski(B,k2_relat_1(C)) )
       => A = B ) ) ).

fof(t162_funct_1,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => k9_relat_1(k6_relat_1(A),B) = B ) ).

fof(d14_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v3_relat_1(A)
      <=> ! [B] :
            ( r2_hidden(B,k1_relat_1(A))
           => v1_xboole_0(k1_funct_1(A,B)) ) ) ) ).

fof(d15_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_relat_1(A)
      <=> ! [B] :
            ~ ( r2_hidden(B,k1_relat_1(A))
              & v1_xboole_0(k1_funct_1(A,B)) ) ) ) ).

fof(s1_funct_1,axiom,
    ( ! [A,B,C] :
        ( ( p1_s1_funct_1(A,B)
          & p1_s1_funct_1(A,C) )
       => B = C )
   => ? [A] :
        ( v1_relat_1(A)
        & v1_funct_1(A)
        & ! [B,C] :
            ( r2_hidden(k4_tarski(B,C),A)
          <=> ( r2_hidden(B,f1_s1_funct_1)
              & p1_s1_funct_1(B,C) ) ) ) ) ).

fof(s2_funct_1,axiom,
    ( ( ! [A,B,C] :
          ( ( r2_hidden(A,f1_s2_funct_1)
            & p1_s2_funct_1(A,B)
            & p1_s2_funct_1(A,C) )
         => B = C )
      & ! [A] :
          ~ ( r2_hidden(A,f1_s2_funct_1)
            & ! [B] : ~ p1_s2_funct_1(A,B) ) )
   => ? [A] :
        ( v1_relat_1(A)
        & v1_funct_1(A)
        & k1_relat_1(A) = f1_s2_funct_1
        & ! [B] :
            ( r2_hidden(B,f1_s2_funct_1)
           => p1_s2_funct_1(B,k1_funct_1(A,B)) ) ) ) ).

fof(s3_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & k1_relat_1(A) = f1_s3_funct_1
      & ! [B] :
          ( r2_hidden(B,f1_s3_funct_1)
         => k1_funct_1(A,B) = f2_s3_funct_1(B) ) ) ).

fof(s4_funct_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & k1_relat_1(A) = f1_s4_funct_1
      & ! [B] :
          ( m1_subset_1(B,f1_s4_funct_1)
         => k1_funct_1(A,B) = f2_s4_funct_1(B) ) ) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(dt_k2_funct_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(k2_funct_1(A))
        & v1_funct_1(k2_funct_1(A)) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+14 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : The Ordinal Numbers
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : ordinal1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   84 (  23 unt;   0 def)
%            Number of atoms       :  314 (  29 equ)
%            Maximal formula atoms :   17 (   3 avg)
%            Number of connectives :  264 (  34   ~;   3   |; 116   &)
%                                         (  14 <=>;  97  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   21 (  19 usr;   1 prp; 0-2 aty)
%            Number of functors    :   19 (  19 usr;   6 con; 0-2 aty)
%            Number of variables   :  141 ( 130   !;  11   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(fc1_ordinal1,axiom,
    ! [A] : ~ v1_xboole_0(k1_ordinal1(A)) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( v1_ordinal1(A)
        & v2_ordinal1(A) ) ) ).

fof(cc2_ordinal1,axiom,
    ! [A] :
      ( ( v1_ordinal1(A)
        & v2_ordinal1(A) )
     => v3_ordinal1(A) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( v1_ordinal1(A)
      & v2_ordinal1(A)
      & v3_ordinal1(A) ) ).

fof(rc2_ordinal1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v2_funct_1(A)
      & v1_xboole_0(A)
      & v1_ordinal1(A)
      & v2_ordinal1(A)
      & v3_ordinal1(A) ) ).

fof(cc3_ordinal1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => ( v1_ordinal1(A)
        & v2_ordinal1(A)
        & v3_ordinal1(A) ) ) ).

fof(fc2_ordinal1,axiom,
    ( v1_relat_1(k1_xboole_0)
    & v3_relat_1(k1_xboole_0)
    & v1_funct_1(k1_xboole_0)
    & v2_funct_1(k1_xboole_0)
    & v1_xboole_0(k1_xboole_0)
    & v1_ordinal1(k1_xboole_0)
    & v2_ordinal1(k1_xboole_0)
    & v3_ordinal1(k1_xboole_0) ) ).

fof(rc3_ordinal1,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_ordinal1(A)
      & v2_ordinal1(A)
      & v3_ordinal1(A) ) ).

fof(fc3_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( ~ v1_xboole_0(k1_ordinal1(A))
        & v1_ordinal1(k1_ordinal1(A))
        & v2_ordinal1(k1_ordinal1(A))
        & v3_ordinal1(k1_ordinal1(A)) ) ) ).

fof(fc4_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( v1_ordinal1(k3_tarski(A))
        & v2_ordinal1(k3_tarski(A))
        & v3_ordinal1(k3_tarski(A)) ) ) ).

fof(rc4_ordinal1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v5_ordinal1(A) ) ).

fof(fc5_ordinal1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => ( v1_ordinal1(k1_relat_1(A))
        & v2_ordinal1(k1_relat_1(A))
        & v3_ordinal1(k1_relat_1(A)) ) ) ).

fof(t1_ordinal1,axiom,
    $true ).

fof(t2_ordinal1,axiom,
    $true ).

fof(t3_ordinal1,axiom,
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & r2_hidden(B,C)
        & r2_hidden(C,A) ) ).

fof(t4_ordinal1,axiom,
    ! [A,B,C,D] :
      ~ ( r2_hidden(A,B)
        & r2_hidden(B,C)
        & r2_hidden(C,D)
        & r2_hidden(D,A) ) ).

fof(t5_ordinal1,axiom,
    ! [A,B,C,D,E] :
      ~ ( r2_hidden(A,B)
        & r2_hidden(B,C)
        & r2_hidden(C,D)
        & r2_hidden(D,E)
        & r2_hidden(E,A) ) ).

fof(t6_ordinal1,axiom,
    ! [A,B,C,D,E,F] :
      ~ ( r2_hidden(A,B)
        & r2_hidden(B,C)
        & r2_hidden(C,D)
        & r2_hidden(D,E)
        & r2_hidden(E,F)
        & r2_hidden(F,A) ) ).

fof(t7_ordinal1,axiom,
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & r1_tarski(B,A) ) ).

fof(d1_ordinal1,axiom,
    ! [A] : k1_ordinal1(A) = k2_xboole_0(A,k1_tarski(A)) ).

fof(t8_ordinal1,axiom,
    $true ).

fof(t9_ordinal1,axiom,
    $true ).

fof(t10_ordinal1,axiom,
    ! [A] : r2_hidden(A,k1_ordinal1(A)) ).

fof(t11_ordinal1,axiom,
    $true ).

fof(t12_ordinal1,axiom,
    ! [A,B] :
      ( k1_ordinal1(A) = k1_ordinal1(B)
     => A = B ) ).

fof(t13_ordinal1,axiom,
    ! [A,B] :
      ( r2_hidden(A,k1_ordinal1(B))
    <=> ( r2_hidden(A,B)
        | A = B ) ) ).

fof(t14_ordinal1,axiom,
    ! [A] : A != k1_ordinal1(A) ).

fof(d2_ordinal1,axiom,
    ! [A] :
      ( v1_ordinal1(A)
    <=> ! [B] :
          ( r2_hidden(B,A)
         => r1_tarski(B,A) ) ) ).

fof(d3_ordinal1,axiom,
    ! [A] :
      ( v2_ordinal1(A)
    <=> ! [B,C] :
          ~ ( r2_hidden(B,A)
            & r2_hidden(C,A)
            & ~ r2_hidden(B,C)
            & B != C
            & ~ r2_hidden(C,B) ) ) ).

fof(d4_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
    <=> ( v1_ordinal1(A)
        & v2_ordinal1(A) ) ) ).

fof(t15_ordinal1,axiom,
    $true ).

fof(t16_ordinal1,axiom,
    $true ).

fof(t17_ordinal1,axiom,
    $true ).

fof(t18_ordinal1,axiom,
    $true ).

fof(t19_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v1_ordinal1(C)
             => ( ( r2_hidden(C,A)
                  & r2_hidden(A,B) )
               => r2_hidden(C,B) ) ) ) ) ).

fof(t20_ordinal1,axiom,
    $true ).

fof(t21_ordinal1,axiom,
    ! [A] :
      ( v1_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r2_xboole_0(A,B)
           => r2_hidden(A,B) ) ) ) ).

fof(t22_ordinal1,axiom,
    ! [A] :
      ( v1_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( ( r1_tarski(A,B)
                  & r2_hidden(B,C) )
               => r2_hidden(A,C) ) ) ) ) ).

fof(t23_ordinal1,axiom,
    ! [A,B] :
      ( v3_ordinal1(B)
     => ( r2_hidden(A,B)
       => v3_ordinal1(A) ) ) ).

fof(t24_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ~ ( ~ r2_hidden(A,B)
              & A != B
              & ~ r2_hidden(B,A) ) ) ) ).

fof(t25_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => r3_xboole_0(A,B) ) ) ).

fof(t26_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r1_ordinal1(A,B)
            | r2_hidden(B,A) ) ) ) ).

fof(t27_ordinal1,axiom,
    v3_ordinal1(k1_xboole_0) ).

fof(t28_ordinal1,axiom,
    $true ).

fof(t29_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => v3_ordinal1(k1_ordinal1(A)) ) ).

fof(t30_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => v3_ordinal1(k3_tarski(A)) ) ).

fof(t31_ordinal1,axiom,
    ! [A] :
      ( ! [B] :
          ( r2_hidden(B,A)
         => ( v3_ordinal1(B)
            & r1_tarski(B,A) ) )
     => v3_ordinal1(A) ) ).

fof(t32_ordinal1,axiom,
    ! [A,B] :
      ( v3_ordinal1(B)
     => ~ ( r1_tarski(A,B)
          & A != k1_xboole_0
          & ! [C] :
              ( v3_ordinal1(C)
             => ~ ( r2_hidden(C,A)
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( r2_hidden(D,A)
                       => r1_ordinal1(C,D) ) ) ) ) ) ) ).

fof(t33_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(A,B)
          <=> r1_ordinal1(k1_ordinal1(A),B) ) ) ) ).

fof(t34_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(A,k1_ordinal1(B))
          <=> r1_ordinal1(A,B) ) ) ) ).

fof(t35_ordinal1,axiom,
    ! [A] :
      ( ! [B] :
          ( r2_hidden(B,A)
         => v3_ordinal1(B) )
     => v3_ordinal1(k3_tarski(A)) ) ).

fof(t36_ordinal1,axiom,
    ! [A] :
      ~ ( ! [B] :
            ( r2_hidden(B,A)
           => v3_ordinal1(B) )
        & ! [B] :
            ( v3_ordinal1(B)
           => ~ r1_tarski(A,B) ) ) ).

fof(t37_ordinal1,axiom,
    ! [A] :
      ~ ! [B] :
          ( r2_hidden(B,A)
        <=> v3_ordinal1(B) ) ).

fof(t38_ordinal1,axiom,
    ! [A] :
      ~ ! [B] :
          ( v3_ordinal1(B)
         => r2_hidden(B,A) ) ).

fof(t39_ordinal1,axiom,
    ! [A] :
    ? [B] :
      ( v3_ordinal1(B)
      & ~ r2_hidden(B,A)
      & ! [C] :
          ( v3_ordinal1(C)
         => ( ~ r2_hidden(C,A)
           => r1_ordinal1(B,C) ) ) ) ).

fof(d5_ordinal1,axiom,
    $true ).

fof(d6_ordinal1,axiom,
    ! [A] :
      ( v4_ordinal1(A)
    <=> A = k3_tarski(A) ) ).

fof(t40_ordinal1,axiom,
    $true ).

fof(t41_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( v4_ordinal1(A)
      <=> ! [B] :
            ( v3_ordinal1(B)
           => ( r2_hidden(B,A)
             => r2_hidden(k1_ordinal1(B),A) ) ) ) ) ).

fof(t42_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( ~ ( ~ v4_ordinal1(A)
            & ! [B] :
                ( v3_ordinal1(B)
               => A != k1_ordinal1(B) ) )
        & ~ ( ? [B] :
                ( v3_ordinal1(B)
                & A = k1_ordinal1(B) )
            & v4_ordinal1(A) ) ) ) ).

fof(d7_ordinal1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v5_ordinal1(A)
      <=> v3_ordinal1(k1_relat_1(A)) ) ) ).

fof(d8_ordinal1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v5_ordinal1(B) )
     => ( m1_ordinal1(B,A)
      <=> r1_tarski(k2_relat_1(B),A) ) ) ).

fof(t43_ordinal1,axiom,
    $true ).

fof(t44_ordinal1,axiom,
    $true ).

fof(t45_ordinal1,axiom,
    ! [A] : m1_ordinal1(k1_xboole_0,A) ).

fof(t46_ordinal1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v3_ordinal1(k1_relat_1(A))
       => m1_ordinal1(A,k2_relat_1(A)) ) ) ).

fof(t47_ordinal1,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => ! [C] :
          ( m1_ordinal1(C,A)
         => m1_ordinal1(C,B) ) ) ).

fof(t48_ordinal1,axiom,
    ! [A,B] :
      ( m1_ordinal1(B,A)
     => ! [C] :
          ( v3_ordinal1(C)
         => m1_ordinal1(k2_ordinal1(B,C),A) ) ) ).

fof(d9_ordinal1,axiom,
    ! [A] :
      ( v6_ordinal1(A)
    <=> ! [B,C] :
          ( ( r2_hidden(B,A)
            & r2_hidden(C,A) )
         => r3_xboole_0(B,C) ) ) ).

fof(t49_ordinal1,axiom,
    ! [A] :
      ( ( ! [B] :
            ( r2_hidden(B,A)
           => ( v1_relat_1(B)
              & v1_funct_1(B)
              & v5_ordinal1(B) ) )
        & v6_ordinal1(A) )
     => ( v1_relat_1(k3_tarski(A))
        & v1_funct_1(k3_tarski(A))
        & v5_ordinal1(k3_tarski(A)) ) ) ).

fof(t50_ordinal1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ~ ( ~ r2_xboole_0(A,B)
              & A != B
              & ~ r2_xboole_0(B,A) ) ) ) ).

fof(s1_ordinal1,axiom,
    ( ? [A] :
        ( v3_ordinal1(A)
        & p1_s1_ordinal1(A) )
   => ? [A] :
        ( v3_ordinal1(A)
        & p1_s1_ordinal1(A)
        & ! [B] :
            ( v3_ordinal1(B)
           => ( p1_s1_ordinal1(B)
             => r1_ordinal1(A,B) ) ) ) ) ).

fof(s2_ordinal1,axiom,
    ( ! [A] :
        ( v3_ordinal1(A)
       => ( ! [B] :
              ( v3_ordinal1(B)
             => ( r2_hidden(B,A)
               => p1_s2_ordinal1(B) ) )
         => p1_s2_ordinal1(A) ) )
   => ! [A] :
        ( v3_ordinal1(A)
       => p1_s2_ordinal1(A) ) ) ).

fof(s3_ordinal1,axiom,
    ( ( k1_relat_1(f3_s3_ordinal1) = f1_s3_ordinal1
      & ! [A] :
          ( v3_ordinal1(A)
         => ! [B] :
              ( ( v1_relat_1(B)
                & v1_funct_1(B)
                & v5_ordinal1(B) )
             => ( ( r2_hidden(A,f1_s3_ordinal1)
                  & B = k2_ordinal1(f3_s3_ordinal1,A) )
               => k1_funct_1(f3_s3_ordinal1,A) = f2_s3_ordinal1(B) ) ) )
      & k1_relat_1(f4_s3_ordinal1) = f1_s3_ordinal1
      & ! [A] :
          ( v3_ordinal1(A)
         => ! [B] :
              ( ( v1_relat_1(B)
                & v1_funct_1(B)
                & v5_ordinal1(B) )
             => ( ( r2_hidden(A,f1_s3_ordinal1)
                  & B = k2_ordinal1(f4_s3_ordinal1,A) )
               => k1_funct_1(f4_s3_ordinal1,A) = f2_s3_ordinal1(B) ) ) ) )
   => f3_s3_ordinal1 = f4_s3_ordinal1 ) ).

fof(s4_ordinal1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v5_ordinal1(A)
      & k1_relat_1(A) = f1_s4_ordinal1
      & ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C)
                & v5_ordinal1(C) )
             => ( ( r2_hidden(B,f1_s4_ordinal1)
                  & C = k2_ordinal1(A,B) )
               => k1_funct_1(A,B) = f2_s4_ordinal1(C) ) ) ) ) ).

fof(s5_ordinal1,axiom,
    ( ( ! [A] :
          ( v3_ordinal1(A)
         => ! [B] :
              ( B = f2_s5_ordinal1(A)
            <=> ? [C] :
                  ( v1_relat_1(C)
                  & v1_funct_1(C)
                  & v5_ordinal1(C)
                  & B = f3_s5_ordinal1(C)
                  & k1_relat_1(C) = A
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( r2_hidden(D,A)
                       => k1_funct_1(C,D) = f3_s5_ordinal1(k2_ordinal1(C,D)) ) ) ) ) )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( r2_hidden(A,k1_relat_1(f1_s5_ordinal1))
           => k1_funct_1(f1_s5_ordinal1,A) = f2_s5_ordinal1(A) ) ) )
   => ! [A] :
        ( v3_ordinal1(A)
       => ( r2_hidden(A,k1_relat_1(f1_s5_ordinal1))
         => k1_funct_1(f1_s5_ordinal1,A) = f3_s5_ordinal1(k2_ordinal1(f1_s5_ordinal1,A)) ) ) ) ).

fof(dt_m1_ordinal1,axiom,
    ! [A,B] :
      ( m1_ordinal1(B,A)
     => ( v1_relat_1(B)
        & v1_funct_1(B)
        & v5_ordinal1(B) ) ) ).

fof(existence_m1_ordinal1,axiom,
    ! [A] :
    ? [B] : m1_ordinal1(B,A) ).

fof(reflexivity_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & v3_ordinal1(B) )
     => r1_ordinal1(A,A) ) ).

fof(connectedness_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & v3_ordinal1(B) )
     => ( r1_ordinal1(A,B)
        | r1_ordinal1(B,A) ) ) ).

fof(redefinition_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & v3_ordinal1(B) )
     => ( r1_ordinal1(A,B)
      <=> r1_tarski(A,B) ) ) ).

fof(dt_k1_ordinal1,axiom,
    $true ).

fof(dt_k2_ordinal1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A)
        & v3_ordinal1(B) )
     => m1_ordinal1(k2_ordinal1(A,B),k2_relat_1(A)) ) ).

fof(redefinition_k2_ordinal1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A)
        & v3_ordinal1(B) )
     => k2_ordinal1(A,B) = k7_relat_1(A,B) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+16 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Relations Defined on Sets
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : relset_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   89 (  20 unt;   0 def)
%            Number of atoms       :  253 (  34 equ)
%            Maximal formula atoms :   11 (   2 avg)
%            Number of connectives :  193 (  29   ~;   0   |;  42   &)
%                                         (  11 <=>; 111  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   6 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   11 (   9 usr;   1 prp; 0-3 aty)
%            Number of functors    :   33 (  33 usr;   5 con; 0-6 aty)
%            Number of variables   :  275 ( 266   !;   9   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) ).

fof(d1_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
    <=> r1_tarski(C,k2_zfmisc_1(A,B)) ) ).

fof(t1_relset_1,axiom,
    $true ).

fof(t2_relset_1,axiom,
    $true ).

fof(t3_relset_1,axiom,
    $true ).

fof(t4_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,B,C)
     => ( r1_tarski(A,D)
       => m2_relset_1(A,B,C) ) ) ).

fof(t5_relset_1,axiom,
    $true ).

fof(t6_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,A,B)
     => ~ ( r2_hidden(C,D)
          & ! [E,F] :
              ~ ( C = k4_tarski(E,F)
                & r2_hidden(E,A)
                & r2_hidden(F,B) ) ) ) ).

fof(t7_relset_1,axiom,
    $true ).

fof(t8_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( r2_hidden(C,A)
        & r2_hidden(D,B) )
     => m2_relset_1(k1_tarski(k4_tarski(C,D)),A,B) ) ).

fof(t9_relset_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k1_relat_1(B),A)
       => m2_relset_1(B,A,k2_relat_1(B)) ) ) ).

fof(t10_relset_1,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r1_tarski(k2_relat_1(B),A)
       => m2_relset_1(B,k1_relat_1(B),A) ) ) ).

fof(t11_relset_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( ( r1_tarski(k1_relat_1(C),A)
          & r1_tarski(k2_relat_1(C),B) )
       => m2_relset_1(C,A,B) ) ) ).

fof(t12_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => ( r1_tarski(k1_relat_1(C),A)
        & r1_tarski(k2_relat_1(C),B) ) ) ).

fof(t13_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,A,C)
     => ( r1_tarski(k1_relat_1(D),B)
       => m2_relset_1(D,B,C) ) ) ).

fof(t14_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,C,A)
     => ( r1_tarski(k2_relat_1(D),B)
       => m2_relset_1(D,C,B) ) ) ).

fof(t15_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,A,C)
     => ( r1_tarski(A,B)
       => m2_relset_1(D,B,C) ) ) ).

fof(t16_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,C,A)
     => ( r1_tarski(A,B)
       => m2_relset_1(D,C,B) ) ) ).

fof(t17_relset_1,axiom,
    ! [A,B,C,D,E] :
      ( m2_relset_1(E,A,C)
     => ( ( r1_tarski(A,B)
          & r1_tarski(C,D) )
       => m2_relset_1(E,B,D) ) ) ).

fof(t18_relset_1,axiom,
    $true ).

fof(t19_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => r1_tarski(k3_relat_1(C),k2_xboole_0(A,B)) ) ).

fof(t20_relset_1,axiom,
    $true ).

fof(t21_relset_1,axiom,
    $true ).

fof(t22_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,B,A)
     => ( ! [D] :
            ~ ( r2_hidden(D,B)
              & ! [E] : ~ r2_hidden(k4_tarski(D,E),C) )
      <=> k4_relset_1(B,A,C) = B ) ) ).

fof(t23_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => ( ! [D] :
            ~ ( r2_hidden(D,B)
              & ! [E] : ~ r2_hidden(k4_tarski(E,D),C) )
      <=> k5_relset_1(A,B,C) = B ) ) ).

fof(t24_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => ( k4_relset_1(B,A,k6_relset_1(A,B,C)) = k5_relset_1(A,B,C)
        & k5_relset_1(B,A,k6_relset_1(A,B,C)) = k4_relset_1(A,B,C) ) ) ).

fof(t25_relset_1,axiom,
    ! [A,B] : m2_relset_1(k1_xboole_0,A,B) ).

fof(t26_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => ( m2_relset_1(C,k1_xboole_0,B)
       => C = k1_xboole_0 ) ) ).

fof(t27_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,B,A)
     => ( m2_relset_1(C,B,k1_xboole_0)
       => C = k1_xboole_0 ) ) ).

fof(t28_relset_1,axiom,
    ! [A] : r1_tarski(k6_relat_1(A),k2_zfmisc_1(A,A)) ).

fof(t29_relset_1,axiom,
    ! [A] : m2_relset_1(k6_relat_1(A),A,A) ).

fof(t30_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,A,B)
     => ( r1_tarski(k6_relat_1(C),D)
       => ( r1_tarski(C,k4_relset_1(A,B,D))
          & r1_tarski(C,k5_relset_1(A,B,D)) ) ) ) ).

fof(t31_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,B,A)
     => ( r1_tarski(k6_relat_1(B),C)
       => ( B = k4_relset_1(B,A,C)
          & r1_tarski(B,k5_relset_1(B,A,C)) ) ) ) ).

fof(t32_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => ( r1_tarski(k6_relat_1(B),C)
       => ( r1_tarski(B,k4_relset_1(A,B,C))
          & B = k5_relset_1(A,B,C) ) ) ) ).

fof(t33_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,A,C)
     => m2_relset_1(k8_relset_1(A,C,D,B),B,C) ) ).

fof(t34_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,B,A)
     => ( r1_tarski(B,C)
       => k8_relset_1(B,A,D,C) = D ) ) ).

fof(t35_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,C,A)
     => m2_relset_1(k9_relset_1(C,A,B,D),C,B) ) ).

fof(t36_relset_1,axiom,
    ! [A,B,C,D] :
      ( m2_relset_1(D,A,B)
     => ( r1_tarski(B,C)
       => k9_relset_1(A,B,C,D) = D ) ) ).

fof(t37_relset_1,axiom,
    $true ).

fof(t38_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => ( k10_relset_1(A,B,C,A) = k5_relset_1(A,B,C)
        & k11_relset_1(A,B,C,B) = k4_relset_1(A,B,C) ) ) ).

fof(t39_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,B,A)
     => ( k10_relset_1(B,A,C,k11_relset_1(B,A,C,A)) = k5_relset_1(B,A,C)
        & k11_relset_1(B,A,C,k10_relset_1(B,A,C,B)) = k4_relset_1(B,A,C) ) ) ).

fof(t40_relset_1,axiom,
    $true ).

fof(t41_relset_1,axiom,
    $true ).

fof(t42_relset_1,axiom,
    $true ).

fof(t43_relset_1,axiom,
    $true ).

fof(t44_relset_1,axiom,
    $true ).

fof(t45_relset_1,axiom,
    ! [A,B] :
      ( m2_relset_1(B,A,A)
     => ( k5_relat_1(B,k6_relat_1(A)) = B
        & k5_relat_1(k6_relat_1(A),B) = B ) ) ).

fof(t46_relset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => k6_relat_1(A) != k1_xboole_0 ) ).

fof(t47_relset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m2_relset_1(C,A,B)
             => ! [D] :
                  ( m1_subset_1(D,A)
                 => ( r2_hidden(D,k4_relset_1(A,B,C))
                  <=> ? [E] :
                        ( m1_subset_1(E,B)
                        & r2_hidden(k4_tarski(D,E),C) ) ) ) ) ) ) ).

fof(t48_relset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m2_relset_1(C,B,A)
             => ! [D] :
                  ( m1_subset_1(D,A)
                 => ( r2_hidden(D,k5_relset_1(B,A,C))
                  <=> ? [E] :
                        ( m1_subset_1(E,B)
                        & r2_hidden(k4_tarski(E,D),C) ) ) ) ) ) ) ).

fof(t49_relset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m2_relset_1(C,A,B)
             => ! [D] :
                  ( m1_subset_1(D,A)
                 => ~ ( r2_hidden(D,k4_relset_1(A,B,C))
                      & ! [E] :
                          ( m1_subset_1(E,B)
                         => ~ r2_hidden(E,k5_relset_1(A,B,C)) ) ) ) ) ) ) ).

fof(t50_relset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( m2_relset_1(C,B,A)
             => ! [D] :
                  ( m1_subset_1(D,A)
                 => ~ ( r2_hidden(D,k5_relset_1(B,A,C))
                      & ! [E] :
                          ( m1_subset_1(E,B)
                         => ~ r2_hidden(E,k4_relset_1(B,A,C)) ) ) ) ) ) ) ).

fof(t51_relset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ~ v1_xboole_0(C)
             => ! [D] :
                  ( m2_relset_1(D,A,B)
                 => ! [E] :
                      ( m2_relset_1(E,B,C)
                     => ! [F] :
                          ( m1_subset_1(F,A)
                         => ! [G] :
                              ( m1_subset_1(G,C)
                             => ( r2_hidden(k4_tarski(F,G),k7_relset_1(A,B,B,C,D,E))
                              <=> ? [H] :
                                    ( m1_subset_1(H,B)
                                    & r2_hidden(k4_tarski(F,H),D)
                                    & r2_hidden(k4_tarski(H,G),E) ) ) ) ) ) ) ) ) ) ).

fof(t52_relset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ~ v1_xboole_0(C)
             => ! [D] :
                  ( m2_relset_1(D,C,A)
                 => ! [E] :
                      ( m1_subset_1(E,A)
                     => ( r2_hidden(E,k10_relset_1(C,A,D,B))
                      <=> ? [F] :
                            ( m1_subset_1(F,C)
                            & r2_hidden(k4_tarski(F,E),D)
                            & r2_hidden(F,B) ) ) ) ) ) ) ) ).

fof(t53_relset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ~ v1_xboole_0(C)
             => ! [D] :
                  ( m2_relset_1(D,A,C)
                 => ! [E] :
                      ( m1_subset_1(E,A)
                     => ( r2_hidden(E,k11_relset_1(A,C,D,B))
                      <=> ? [F] :
                            ( m1_subset_1(F,C)
                            & r2_hidden(k4_tarski(E,F),D)
                            & r2_hidden(F,B) ) ) ) ) ) ) ) ).

fof(s1_relset_1,axiom,
    ? [A] :
      ( m2_relset_1(A,f1_s1_relset_1,f2_s1_relset_1)
      & ! [B,C] :
          ( r2_hidden(k4_tarski(B,C),A)
        <=> ( r2_hidden(B,f1_s1_relset_1)
            & r2_hidden(C,f2_s1_relset_1)
            & p1_s1_relset_1(B,C) ) ) ) ).

fof(s2_relset_1,axiom,
    ? [A] :
      ( m2_relset_1(A,f1_s2_relset_1,f2_s2_relset_1)
      & ! [B] :
          ( m1_subset_1(B,f1_s2_relset_1)
         => ! [C] :
              ( m1_subset_1(C,f2_s2_relset_1)
             => ( r2_hidden(k4_tarski(B,C),A)
              <=> p1_s2_relset_1(B,C) ) ) ) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
    <=> m1_relset_1(C,A,B) ) ).

fof(dt_k1_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => m2_relset_1(k1_relset_1(A,B,C,D),A,B) ) ).

fof(commutativity_k1_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => k1_relset_1(A,B,C,D) = k1_relset_1(A,B,D,C) ) ).

fof(idempotence_k1_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => k1_relset_1(A,B,C,C) = C ) ).

fof(redefinition_k1_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => k1_relset_1(A,B,C,D) = k2_xboole_0(C,D) ) ).

fof(dt_k2_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => m2_relset_1(k2_relset_1(A,B,C,D),A,B) ) ).

fof(commutativity_k2_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => k2_relset_1(A,B,C,D) = k2_relset_1(A,B,D,C) ) ).

fof(idempotence_k2_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => k2_relset_1(A,B,C,C) = C ) ).

fof(redefinition_k2_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => k2_relset_1(A,B,C,D) = k3_xboole_0(C,D) ) ).

fof(dt_k3_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => m2_relset_1(k3_relset_1(A,B,C,D),A,B) ) ).

fof(redefinition_k3_relset_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_relset_1(D,A,B) )
     => k3_relset_1(A,B,C,D) = k4_xboole_0(C,D) ) ).

fof(dt_k4_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => m1_subset_1(k4_relset_1(A,B,C),k1_zfmisc_1(A)) ) ).

fof(redefinition_k4_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => k4_relset_1(A,B,C) = k1_relat_1(C) ) ).

fof(dt_k5_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => m1_subset_1(k5_relset_1(A,B,C),k1_zfmisc_1(B)) ) ).

fof(redefinition_k5_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => k5_relset_1(A,B,C) = k2_relat_1(C) ) ).

fof(dt_k6_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => m2_relset_1(k6_relset_1(A,B,C),B,A) ) ).

fof(involutiveness_k6_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => k6_relset_1(A,B,k6_relset_1(A,B,C)) = C ) ).

fof(redefinition_k6_relset_1,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => k6_relset_1(A,B,C) = k4_relat_1(C) ) ).

fof(dt_k7_relset_1,axiom,
    ! [A,B,C,D,E,F] :
      ( ( m1_relset_1(E,A,B)
        & m1_relset_1(F,C,D) )
     => m2_relset_1(k7_relset_1(A,B,C,D,E,F),A,D) ) ).

fof(redefinition_k7_relset_1,axiom,
    ! [A,B,C,D,E,F] :
      ( ( m1_relset_1(E,A,B)
        & m1_relset_1(F,C,D) )
     => k7_relset_1(A,B,C,D,E,F) = k5_relat_1(E,F) ) ).

fof(dt_k8_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(C,A,B)
     => m2_relset_1(k8_relset_1(A,B,C,D),A,B) ) ).

fof(redefinition_k8_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(C,A,B)
     => k8_relset_1(A,B,C,D) = k7_relat_1(C,D) ) ).

fof(dt_k9_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(D,A,B)
     => m2_relset_1(k9_relset_1(A,B,C,D),A,B) ) ).

fof(redefinition_k9_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(D,A,B)
     => k9_relset_1(A,B,C,D) = k8_relat_1(C,D) ) ).

fof(dt_k10_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(C,A,B)
     => m1_subset_1(k10_relset_1(A,B,C,D),k1_zfmisc_1(B)) ) ).

fof(redefinition_k10_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(C,A,B)
     => k10_relset_1(A,B,C,D) = k9_relat_1(C,D) ) ).

fof(dt_k11_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(C,A,B)
     => m1_subset_1(k11_relset_1(A,B,C,D),k1_zfmisc_1(A)) ) ).

fof(redefinition_k11_relset_1,axiom,
    ! [A,B,C,D] :
      ( m1_relset_1(C,A,B)
     => k11_relset_1(A,B,C,D) = k10_relat_1(C,D) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+20 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Functions from a Set to a Set
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : funct_2 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  214 (  70 unt;   0 def)
%            Number of atoms       : 1129 ( 220 equ)
%            Maximal formula atoms :   19 (   5 avg)
%            Number of connectives :  986 (  71   ~;  28   |; 550   &)
%                                         (  14 <=>; 323  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   6 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   23 (  21 usr;   1 prp; 0-3 aty)
%            Number of functors    :   78 (  78 usr;  39 con; 0-6 aty)
%            Number of variables   :  539 ( 515   !;  24   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_funct_2,axiom,
    ! [A,B] :
    ? [C] :
      ( m1_relset_1(C,A,B)
      & v1_relat_1(C)
      & v1_funct_1(C)
      & v1_funct_2(C,A,B) ) ).

fof(cc1_funct_2,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => ( ( v1_funct_1(C)
          & v1_partfun1(C,A,B) )
       => ( v1_funct_1(C)
          & v1_funct_2(C,A,B) ) ) ) ).

fof(fc1_funct_2,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ~ v1_xboole_0(k1_funct_2(A,B)) ) ).

fof(fc2_funct_2,axiom,
    ! [A] : ~ v1_xboole_0(k1_funct_2(A,A)) ).

fof(cc2_funct_2,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => ( ( v1_funct_1(C)
          & v1_funct_2(C,A,B)
          & v3_funct_2(C,A,B) )
       => ( v1_funct_1(C)
          & v2_funct_1(C)
          & v1_funct_2(C,A,B)
          & v2_funct_2(C,A,B) ) ) ) ).

fof(cc3_funct_2,axiom,
    ! [A,B,C] :
      ( m1_relset_1(C,A,B)
     => ( ( v1_funct_1(C)
          & v2_funct_1(C)
          & v1_funct_2(C,A,B)
          & v2_funct_2(C,A,B) )
       => ( v1_funct_1(C)
          & v1_funct_2(C,A,B)
          & v3_funct_2(C,A,B) ) ) ) ).

fof(rc2_funct_2,axiom,
    ! [A] :
    ? [B] :
      ( m1_relset_1(B,A,A)
      & v1_relat_1(B)
      & v1_funct_1(B)
      & v2_funct_1(B)
      & v1_funct_2(B,A,A)
      & v2_funct_2(B,A,A)
      & v3_funct_2(B,A,A) ) ).

fof(cc4_funct_2,axiom,
    ! [A,B] :
      ( m1_relset_1(B,A,A)
     => ( ( v1_funct_1(B)
          & v1_partfun1(B,A,A)
          & v1_relat_2(B)
          & v1_funct_2(B,A,A) )
       => ( v1_funct_1(B)
          & v2_funct_1(B)
          & v1_funct_2(B,A,A)
          & v2_funct_2(B,A,A)
          & v3_funct_2(B,A,A) ) ) ) ).

fof(cc5_funct_2,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ! [C] :
          ( m1_relset_1(C,A,B)
         => ( ( v1_funct_1(C)
              & v1_funct_2(C,A,B) )
           => ( v1_funct_1(C)
              & v1_partfun1(C,A,B)
              & v1_funct_2(C,A,B) ) ) ) ) ).

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
              & v1_partfun1(C,A,B)
              & v1_funct_2(C,A,B) ) ) ) ) ).

fof(d1_funct_2,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => ( ( ( B = k1_xboole_0
           => A = k1_xboole_0 )
         => ( v1_funct_2(C,A,B)
          <=> A = k4_relset_1(A,B,C) ) )
        & ( B = k1_xboole_0
         => ( A = k1_xboole_0
            | ( v1_funct_2(C,A,B)
            <=> C = k1_xboole_0 ) ) ) ) ) ).

fof(t1_funct_2,axiom,
    $true ).

fof(t2_funct_2,axiom,
    $true ).

fof(t3_funct_2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_funct_1(A)
        & v1_funct_2(A,k1_relat_1(A),k2_relat_1(A))
        & m2_relset_1(A,k1_relat_1(A),k2_relat_1(A)) ) ) ).

fof(t4_funct_2,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( r1_tarski(k2_relat_1(B),A)
       => ( v1_funct_1(B)
          & v1_funct_2(B,k1_relat_1(B),A)
          & m2_relset_1(B,k1_relat_1(B),A) ) ) ) ).

fof(t5_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( ( k1_relat_1(C) = A
          & ! [D] :
              ( r2_hidden(D,A)
             => r2_hidden(k1_funct_1(C,D),B) ) )
       => ( v1_funct_1(C)
          & v1_funct_2(C,A,B)
          & m2_relset_1(C,A,B) ) ) ) ).

fof(t6_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( r2_hidden(C,A)
       => ( B = k1_xboole_0
          | r2_hidden(k1_funct_1(D,C),k2_relat_1(D)) ) ) ) ).

fof(t7_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( r2_hidden(C,A)
       => ( B = k1_xboole_0
          | r2_hidden(k1_funct_1(D,C),B) ) ) ) ).

fof(t8_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( r1_tarski(k2_relat_1(D),C)
       => ( ( B = k1_xboole_0
            & A != k1_xboole_0 )
          | ( v1_funct_1(D)
            & v1_funct_2(D,A,C)
            & m2_relset_1(D,A,C) ) ) ) ) ).

fof(t9_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( r1_tarski(B,C)
       => ( ( B = k1_xboole_0
            & A != k1_xboole_0 )
          | ( v1_funct_1(D)
            & v1_funct_2(D,A,C)
            & m2_relset_1(D,A,C) ) ) ) ) ).

fof(d2_funct_2,axiom,
    ! [A,B,C] :
      ( C = k1_funct_2(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ? [E] :
              ( v1_relat_1(E)
              & v1_funct_1(E)
              & D = E
              & k1_relat_1(E) = A
              & r1_tarski(k2_relat_1(E),B) ) ) ) ).

fof(t10_funct_2,axiom,
    $true ).

fof(t11_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( B = k1_xboole_0
         => A = k1_xboole_0 )
       => r2_hidden(C,k1_funct_2(A,B)) ) ) ).

fof(t12_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => r2_hidden(B,k1_funct_2(A,A)) ) ).

fof(t13_funct_2,axiom,
    $true ).

fof(t14_funct_2,axiom,
    ! [A] :
      ( A != k1_xboole_0
     => k1_funct_2(A,k1_xboole_0) = k1_xboole_0 ) ).

fof(t15_funct_2,axiom,
    $true ).

fof(t16_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ! [D] :
            ~ ( r2_hidden(D,B)
              & ! [E] :
                  ~ ( r2_hidden(E,A)
                    & D = k1_funct_1(C,E) ) )
       => ( B = k1_xboole_0
          | k2_relat_1(C) = B ) ) ) ).

fof(t17_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ~ ( r2_hidden(C,B)
          & k2_relat_1(D) = B
          & ! [E] :
              ~ ( r2_hidden(E,A)
                & k1_funct_1(D,E) = C ) ) ) ).

fof(t18_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,A,B)
            & m2_relset_1(D,A,B) )
         => ( ! [E] :
                ( r2_hidden(E,A)
               => k1_funct_1(C,E) = k1_funct_1(D,E) )
           => C = D ) ) ) ).

fof(t19_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ! [E] :
          ( ( v1_funct_1(E)
            & v1_funct_2(E,B,C)
            & m2_relset_1(E,B,C) )
         => ( ~ ( B = k1_xboole_0
                & C != k1_xboole_0
                & A != k1_xboole_0 )
           => ( v1_funct_1(k1_partfun1(A,B,B,C,D,E))
              & v1_funct_2(k1_partfun1(A,B,B,C,D,E),A,C)
              & m2_relset_1(k1_partfun1(A,B,B,C,D,E),A,C) ) ) ) ) ).

fof(t20_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ! [E] :
          ( ( v1_funct_1(E)
            & v1_funct_2(E,B,C)
            & m2_relset_1(E,B,C) )
         => ( ( k2_relat_1(D) = B
              & k2_relat_1(E) = C )
           => ( B = k1_xboole_0
              | C = k1_xboole_0
              | k2_relat_1(k1_partfun1(A,B,B,C,D,E)) = C ) ) ) ) ).

fof(t21_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ! [E] :
          ( ( v1_relat_1(E)
            & v1_funct_1(E) )
         => ( r2_hidden(C,A)
           => ( B = k1_xboole_0
              | k1_funct_1(k5_relat_1(D,E),C) = k1_funct_1(E,k1_funct_1(D,C)) ) ) ) ) ).

fof(t22_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( B != k1_xboole_0
       => ( k2_relat_1(C) = B
        <=> ! [D] :
              ( D != k1_xboole_0
             => ! [E] :
                  ( ( v1_funct_1(E)
                    & v1_funct_2(E,B,D)
                    & m2_relset_1(E,B,D) )
                 => ! [F] :
                      ( ( v1_funct_1(F)
                        & v1_funct_2(F,B,D)
                        & m2_relset_1(F,B,D) )
                     => ( k1_partfun1(A,B,B,D,C,E) = k1_partfun1(A,B,B,D,C,F)
                       => E = F ) ) ) ) ) ) ) ).

fof(t23_funct_2,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => ( k7_relset_1(A,A,A,B,k6_partfun1(A),C) = C
        & k7_relset_1(A,B,B,B,C,k6_partfun1(B)) = C ) ) ).

fof(t24_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,B,A)
            & m2_relset_1(D,B,A) )
         => ( k1_partfun1(B,A,A,B,D,C) = k6_partfun1(B)
           => k2_relat_1(C) = B ) ) ) ).

fof(t25_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( B = k1_xboole_0
         => A = k1_xboole_0 )
       => ( v2_funct_1(C)
        <=> ! [D,E] :
              ( ( r2_hidden(D,A)
                & r2_hidden(E,A)
                & k1_funct_1(C,D) = k1_funct_1(C,E) )
             => D = E ) ) ) ) ).

fof(t26_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ! [E] :
          ( ( v1_funct_1(E)
            & v1_funct_2(E,B,C)
            & m2_relset_1(E,B,C) )
         => ( v2_funct_1(k1_partfun1(A,B,B,C,D,E))
           => ( ( C = k1_xboole_0
                & B != k1_xboole_0 )
              | ( B = k1_xboole_0
                & A != k1_xboole_0 )
              | v2_funct_1(D) ) ) ) ) ).

fof(t27_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ~ ( A != k1_xboole_0
          & B != k1_xboole_0
          & ~ ( v2_funct_1(C)
            <=> ! [D,E] :
                  ( ( v1_funct_1(E)
                    & v1_funct_2(E,D,A)
                    & m2_relset_1(E,D,A) )
                 => ! [F] :
                      ( ( v1_funct_1(F)
                        & v1_funct_2(F,D,A)
                        & m2_relset_1(F,D,A) )
                     => ( k1_partfun1(D,A,A,B,E,C) = k1_partfun1(D,A,A,B,F,C)
                       => E = F ) ) ) ) ) ) ).

fof(t28_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ! [E] :
          ( ( v1_funct_1(E)
            & v1_funct_2(E,B,C)
            & m2_relset_1(E,B,C) )
         => ( ( k2_relat_1(k1_partfun1(A,B,B,C,D,E)) = C
              & v2_funct_1(E) )
           => ( C = k1_xboole_0
              | k2_relat_1(D) = B ) ) ) ) ).

fof(t29_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,B,A)
            & m2_relset_1(D,B,A) )
         => ( k1_partfun1(A,B,B,A,C,D) = k6_partfun1(A)
           => ( B = k1_xboole_0
              | ( v2_funct_1(C)
                & k2_relat_1(D) = A ) ) ) ) ) ).

fof(t30_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ! [E] :
          ( ( v1_funct_1(E)
            & v1_funct_2(E,B,C)
            & m2_relset_1(E,B,C) )
         => ( ( v2_funct_1(k1_partfun1(A,B,B,C,D,E))
              & k2_relat_1(D) = B )
           => ( ( C = k1_xboole_0
                & B != k1_xboole_0 )
              | ( v2_funct_1(D)
                & v2_funct_1(E) ) ) ) ) ) ).

fof(t31_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( v2_funct_1(C)
          & k2_relat_1(C) = B )
       => ( v1_funct_1(k2_funct_1(C))
          & v1_funct_2(k2_funct_1(C),B,A)
          & m2_relset_1(k2_funct_1(C),B,A) ) ) ) ).

fof(t32_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( ( v2_funct_1(D)
          & r2_hidden(C,A) )
       => ( B = k1_xboole_0
          | k1_funct_1(k2_funct_1(D),k1_funct_1(D,C)) = C ) ) ) ).

fof(t33_funct_2,axiom,
    $true ).

fof(t34_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,B,A)
            & m2_relset_1(D,B,A) )
         => ( ( k2_relat_1(C) = B
              & v2_funct_1(C)
              & ! [E,F] :
                  ( ( ( r2_hidden(E,B)
                      & k1_funct_1(D,E) = F )
                   => ( r2_hidden(F,A)
                      & k1_funct_1(C,F) = E ) )
                  & ( ( r2_hidden(F,A)
                      & k1_funct_1(C,F) = E )
                   => ( r2_hidden(E,B)
                      & k1_funct_1(D,E) = F ) ) ) )
           => ( A = k1_xboole_0
              | B = k1_xboole_0
              | D = k2_funct_1(C) ) ) ) ) ).

fof(t35_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( k2_relat_1(C) = B
          & v2_funct_1(C) )
       => ( B = k1_xboole_0
          | ( k5_relat_1(C,k2_funct_1(C)) = k6_partfun1(A)
            & k5_relat_1(k2_funct_1(C),C) = k6_partfun1(B) ) ) ) ) ).

fof(t36_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,B,A)
            & m2_relset_1(D,B,A) )
         => ( ( k2_relat_1(C) = B
              & k1_partfun1(A,B,B,A,C,D) = k6_partfun1(A)
              & v2_funct_1(C) )
           => ( A = k1_xboole_0
              | B = k1_xboole_0
              | D = k2_funct_1(C) ) ) ) ) ).

fof(t37_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ~ ( B != k1_xboole_0
          & ? [D] :
              ( v1_funct_1(D)
              & v1_funct_2(D,B,A)
              & m2_relset_1(D,B,A)
              & k1_partfun1(A,B,B,A,C,D) = k6_partfun1(A) )
          & ~ v2_funct_1(C) ) ) ).

fof(t38_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( r1_tarski(C,A)
       => ( ( B = k1_xboole_0
            & A != k1_xboole_0 )
          | ( v1_funct_1(k2_partfun1(A,B,D,C))
            & v1_funct_2(k2_partfun1(A,B,D,C),C,B)
            & m2_relset_1(k2_partfun1(A,B,D,C),C,B) ) ) ) ) ).

fof(t39_funct_2,axiom,
    $true ).

fof(t40_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( r1_tarski(A,C)
       => k2_partfun1(A,B,D,C) = D ) ) ).

fof(t41_funct_2,axiom,
    ! [A,B,C,D,E] :
      ( ( v1_funct_1(E)
        & v1_funct_2(E,A,B)
        & m2_relset_1(E,A,B) )
     => ( ( r2_hidden(C,A)
          & r2_hidden(k1_funct_1(E,C),D) )
       => ( B = k1_xboole_0
          | k1_funct_1(k9_relset_1(A,B,D,E),C) = k1_funct_1(E,C) ) ) ) ).

fof(t42_funct_2,axiom,
    $true ).

fof(t43_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( B != k1_xboole_0
       => ! [E] :
            ( ? [F] :
                ( r2_hidden(F,A)
                & r2_hidden(F,C)
                & E = k1_funct_1(D,F) )
           => r2_hidden(E,k9_relat_1(D,C)) ) ) ) ).

fof(t44_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => r1_tarski(k9_relat_1(D,C),B) ) ).

fof(t45_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( B = k1_xboole_0
         => A = k1_xboole_0 )
       => k2_funct_2(A,B,C,A) = k2_relat_1(C) ) ) ).

fof(t46_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( B != k1_xboole_0
       => ! [E] :
            ( r2_hidden(E,k10_relat_1(D,C))
          <=> ( r2_hidden(E,A)
              & r2_hidden(k1_funct_1(D,E),C) ) ) ) ) ).

fof(t47_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & m2_relset_1(D,A,B) )
     => r1_tarski(k10_relat_1(D,C),A) ) ).

fof(t48_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( B = k1_xboole_0
         => A = k1_xboole_0 )
       => k3_funct_2(A,B,C,B) = A ) ) ).

fof(t49_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ! [D] :
            ~ ( r2_hidden(D,B)
              & k3_funct_2(A,B,C,k1_tarski(D)) = k1_xboole_0 )
      <=> k2_relat_1(C) = B ) ) ).

fof(t50_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ( r1_tarski(C,A)
       => ( ( B = k1_xboole_0
            & A != k1_xboole_0 )
          | r1_tarski(C,k3_funct_2(A,B,D,k2_funct_2(A,B,D,C))) ) ) ) ).

fof(t51_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( B = k1_xboole_0
         => A = k1_xboole_0 )
       => k3_funct_2(A,B,C,k2_funct_2(A,B,C,A)) = A ) ) ).

fof(t52_funct_2,axiom,
    $true ).

fof(t53_funct_2,axiom,
    ! [A,B,C,D,E] :
      ( ( v1_funct_1(E)
        & v1_funct_2(E,A,B)
        & m2_relset_1(E,A,B) )
     => ! [F] :
          ( ( v1_funct_1(F)
            & v1_funct_2(F,B,C)
            & m2_relset_1(F,B,C) )
         => ~ ( ( C = k1_xboole_0
               => B = k1_xboole_0 )
              & ( B = k1_xboole_0
               => A = k1_xboole_0 )
              & ~ r1_tarski(k3_funct_2(A,B,E,D),k3_funct_2(A,C,k1_partfun1(A,B,B,C,E,F),k2_funct_2(B,C,F,D))) ) ) ) ).

fof(t54_funct_2,axiom,
    $true ).

fof(t55_funct_2,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( k1_relat_1(B) = k1_xboole_0
       => ( v1_funct_1(B)
          & v1_funct_2(B,k1_xboole_0,A)
          & m2_relset_1(B,k1_xboole_0,A) ) ) ) ).

fof(t56_funct_2,axiom,
    $true ).

fof(t57_funct_2,axiom,
    $true ).

fof(t58_funct_2,axiom,
    $true ).

fof(t59_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k1_xboole_0,A)
        & m2_relset_1(C,k1_xboole_0,A) )
     => k2_funct_2(k1_xboole_0,A,C,B) = k1_xboole_0 ) ).

fof(t60_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k1_xboole_0,A)
        & m2_relset_1(C,k1_xboole_0,A) )
     => k3_funct_2(k1_xboole_0,A,C,B) = k1_xboole_0 ) ).

fof(t61_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k1_tarski(A),B)
        & m2_relset_1(C,k1_tarski(A),B) )
     => ( B != k1_xboole_0
       => r2_hidden(k1_funct_1(C,A),B) ) ) ).

fof(t62_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,k1_tarski(A),B)
        & m2_relset_1(C,k1_tarski(A),B) )
     => ( B != k1_xboole_0
       => k2_relat_1(C) = k1_tarski(k1_funct_1(C,A)) ) ) ).

fof(t63_funct_2,axiom,
    $true ).

fof(t64_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,k1_tarski(A),B)
        & m2_relset_1(D,k1_tarski(A),B) )
     => ( B != k1_xboole_0
       => r1_tarski(k2_funct_2(k1_tarski(A),B,D,C),k1_tarski(k1_funct_1(D,A))) ) ) ).

fof(t65_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,k1_tarski(B))
        & m2_relset_1(D,A,k1_tarski(B)) )
     => ( r2_hidden(C,A)
       => k1_funct_1(D,C) = B ) ) ).

fof(t66_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,k1_tarski(B))
        & m2_relset_1(C,A,k1_tarski(B)) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,A,k1_tarski(B))
            & m2_relset_1(D,A,k1_tarski(B)) )
         => C = D ) ) ).

fof(t67_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ( k4_relset_1(A,A,B) = A
        & r1_tarski(k2_relat_1(B),A) ) ) ).

fof(t68_funct_2,axiom,
    $true ).

fof(t69_funct_2,axiom,
    $true ).

fof(t70_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,A)
        & m2_relset_1(C,A,A) )
     => ! [D] :
          ( ( v1_relat_1(D)
            & v1_funct_1(D) )
         => ( r2_hidden(B,A)
           => k1_funct_1(k5_relat_1(C,D),B) = k1_funct_1(D,k1_funct_1(C,B)) ) ) ) ).

fof(t71_funct_2,axiom,
    $true ).

fof(t72_funct_2,axiom,
    $true ).

fof(t73_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,A,A)
            & m2_relset_1(C,A,A) )
         => ( ( k2_relat_1(B) = A
              & k2_relat_1(C) = A )
           => k2_relat_1(k4_funct_2(A,B,C)) = A ) ) ) ).

fof(t74_funct_2,axiom,
    ! [A,B] :
      ( m2_relset_1(B,A,A)
     => ( k7_relset_1(A,A,A,A,B,k6_partfun1(A)) = B
        & k7_relset_1(A,A,A,A,k6_partfun1(A),B) = B ) ) ).

fof(t75_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,A,A)
            & m2_relset_1(C,A,A) )
         => ( ( k4_funct_2(A,B,C) = B
              & k2_relat_1(B) = A )
           => C = k6_partfun1(A) ) ) ) ).

fof(t76_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,A,A)
            & m2_relset_1(C,A,A) )
         => ( ( k4_funct_2(A,C,B) = B
              & v2_funct_1(B) )
           => C = k6_partfun1(A) ) ) ) ).

fof(t77_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ( v2_funct_1(B)
      <=> ! [C,D] :
            ( ( r2_hidden(C,A)
              & r2_hidden(D,A)
              & k1_funct_1(B,C) = k1_funct_1(B,D) )
           => C = D ) ) ) ).

fof(t78_funct_2,axiom,
    $true ).

fof(t79_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => k2_funct_2(A,A,B,A) = k2_relat_1(B) ) ).

fof(t80_funct_2,axiom,
    $true ).

fof(t81_funct_2,axiom,
    $true ).

fof(t82_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => k3_funct_2(A,A,B,k2_funct_2(A,A,B,A)) = A ) ).

fof(d3_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( v2_funct_2(C,A,B)
      <=> k2_relat_1(C) = B ) ) ).

fof(d4_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( v3_funct_2(C,A,B)
      <=> ( v2_funct_1(C)
          & v2_funct_2(C,A,B) ) ) ) ).

fof(t83_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ( ( v2_funct_1(B)
          & k2_relat_1(B) = A )
       => ( v1_funct_1(B)
          & v1_funct_2(B,A,A)
          & v3_funct_2(B,A,A)
          & m2_relset_1(B,A,A) ) ) ) ).

fof(t84_funct_2,axiom,
    $true ).

fof(t85_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ( v2_funct_1(B)
       => ! [C,D] :
            ( ( r2_hidden(C,A)
              & r2_hidden(D,A)
              & k1_funct_1(B,C) = k1_funct_1(B,D) )
           => C = D ) ) ) ).

fof(t86_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & v3_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,A,A)
            & v3_funct_2(C,A,A)
            & m2_relset_1(C,A,A) )
         => ( k5_funct_2(A,B,C) = C
           => B = k6_partfun1(A) ) ) ) ).

fof(t87_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & v3_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,A,A)
            & v3_funct_2(C,A,A)
            & m2_relset_1(C,A,A) )
         => ( k5_funct_2(A,B,C) = k6_partfun1(A)
           => C = k6_funct_2(A,B) ) ) ) ).

fof(t88_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & v3_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ( k5_funct_2(A,B,k6_funct_2(A,B)) = k6_partfun1(A)
        & k5_funct_2(A,k6_funct_2(A,B),B) = k6_partfun1(A) ) ) ).

fof(t89_funct_2,axiom,
    $true ).

fof(t90_funct_2,axiom,
    $true ).

fof(t91_funct_2,axiom,
    $true ).

fof(t92_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,A)
        & v3_funct_2(C,A,A)
        & m2_relset_1(C,A,A) )
     => ( r1_tarski(B,A)
       => ( k2_funct_2(A,A,C,k3_funct_2(A,A,C,B)) = B
          & k3_funct_2(A,A,C,k2_funct_2(A,A,C,B)) = B ) ) ) ).

fof(t93_funct_2,axiom,
    $true ).

fof(t94_funct_2,axiom,
    $true ).

fof(t95_funct_2,axiom,
    $true ).

fof(t96_funct_2,axiom,
    $true ).

fof(t97_funct_2,axiom,
    $true ).

fof(t98_funct_2,axiom,
    $true ).

fof(t99_funct_2,axiom,
    $true ).

fof(t100_funct_2,axiom,
    $true ).

fof(t101_funct_2,axiom,
    $true ).

fof(t102_funct_2,axiom,
    $true ).

fof(t103_funct_2,axiom,
    $true ).

fof(t104_funct_2,axiom,
    $true ).

fof(t105_funct_2,axiom,
    $true ).

fof(t106_funct_2,axiom,
    $true ).

fof(t107_funct_2,axiom,
    $true ).

fof(t108_funct_2,axiom,
    $true ).

fof(t109_funct_2,axiom,
    $true ).

fof(t110_funct_2,axiom,
    $true ).

fof(t111_funct_2,axiom,
    $true ).

fof(t112_funct_2,axiom,
    $true ).

fof(t113_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,A,B)
            & m2_relset_1(D,A,B) )
         => ( ! [E] :
                ( m1_subset_1(E,A)
               => k1_funct_1(C,E) = k1_funct_1(D,E) )
           => C = D ) ) ) ).

fof(t114_funct_2,axiom,
    $true ).

fof(t115_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ! [E] :
          ~ ( r2_hidden(E,k2_funct_2(A,B,D,C))
            & ! [F] :
                ~ ( r2_hidden(F,A)
                  & r2_hidden(F,C)
                  & E = k1_funct_1(D,F) ) ) ) ).

fof(t116_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m2_relset_1(D,A,B) )
     => ! [E] :
          ~ ( r2_hidden(E,k2_funct_2(A,B,D,C))
            & ! [F] :
                ( m1_subset_1(F,A)
               => ~ ( r2_hidden(F,C)
                    & E = k1_funct_1(D,F) ) ) ) ) ).

fof(t117_funct_2,axiom,
    $true ).

fof(t118_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(A,B),C)
        & m2_relset_1(D,k2_zfmisc_1(A,B),C) )
     => ! [E] :
          ( ( v1_funct_1(E)
            & v1_funct_2(E,k2_zfmisc_1(A,B),C)
            & m2_relset_1(E,k2_zfmisc_1(A,B),C) )
         => ( ! [F,G] :
                ( ( r2_hidden(F,A)
                  & r2_hidden(G,B) )
               => k1_funct_1(D,k4_tarski(F,G)) = k1_funct_1(E,k4_tarski(F,G)) )
           => D = E ) ) ) ).

fof(t119_funct_2,axiom,
    ! [A,B,C,D,E,F] :
      ( ( v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(A,B),C)
        & m2_relset_1(F,k2_zfmisc_1(A,B),C) )
     => ( ( r2_hidden(D,A)
          & r2_hidden(E,B) )
       => ( C = k1_xboole_0
          | r2_hidden(k1_funct_1(F,k4_tarski(D,E)),C) ) ) ) ).

fof(t120_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(A,B),C)
        & m2_relset_1(D,k2_zfmisc_1(A,B),C) )
     => ! [E] :
          ( ( v1_funct_1(E)
            & v1_funct_2(E,k2_zfmisc_1(A,B),C)
            & m2_relset_1(E,k2_zfmisc_1(A,B),C) )
         => ( ! [F] :
                ( m1_subset_1(F,A)
               => ! [G] :
                    ( m1_subset_1(G,B)
                   => k1_funct_1(D,k4_tarski(F,G)) = k1_funct_1(E,k4_tarski(F,G)) ) )
           => D = E ) ) ) ).

fof(t121_funct_2,axiom,
    ! [A,B,C] :
      ( r2_hidden(C,k1_funct_2(A,B))
     => ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) ) ) ).

fof(t122_funct_2,axiom,
    $true ).

fof(t123_funct_2,axiom,
    $true ).

fof(t124_funct_2,axiom,
    $true ).

fof(t125_funct_2,axiom,
    $true ).

fof(t126_funct_2,axiom,
    $true ).

fof(t127_funct_2,axiom,
    $true ).

fof(t128_funct_2,axiom,
    $true ).

fof(t129_funct_2,axiom,
    $true ).

fof(t130_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ( k4_relset_1(A,B,C) = A
       => ( v1_funct_1(C)
          & v1_funct_2(C,A,B)
          & m2_relset_1(C,A,B) ) ) ) ).

fof(t131_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ( v1_partfun1(C,A,B)
       => ( v1_funct_1(C)
          & v1_funct_2(C,A,B)
          & m2_relset_1(C,A,B) ) ) ) ).

fof(t132_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ( ( v1_funct_1(C)
          & v1_funct_2(C,A,B)
          & m2_relset_1(C,A,B) )
       => ( ( B = k1_xboole_0
            & A != k1_xboole_0 )
          | v1_partfun1(C,A,B) ) ) ) ).

fof(t133_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( B = k1_xboole_0
         => A = k1_xboole_0 )
       => v1_partfun1(k3_partfun1(C,A,B),A,B) ) ) ).

fof(t134_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => v1_partfun1(k3_partfun1(B,A,A),A,A) ) ).

fof(t135_funct_2,axiom,
    $true ).

fof(t136_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ~ ( ( B = k1_xboole_0
           => A = k1_xboole_0 )
          & ! [D] :
              ( ( v1_funct_1(D)
                & v1_funct_2(D,A,B)
                & m2_relset_1(D,A,B) )
             => ? [E] :
                  ( r2_hidden(E,k4_relset_1(A,B,C))
                  & k1_funct_1(D,E) != k1_funct_1(C,E) ) ) ) ) ).

fof(t137_funct_2,axiom,
    $true ).

fof(t138_funct_2,axiom,
    $true ).

fof(t139_funct_2,axiom,
    $true ).

fof(t140_funct_2,axiom,
    $true ).

fof(t141_funct_2,axiom,
    ! [A,B] : r1_tarski(k1_funct_2(A,B),k4_partfun1(A,B)) ).

fof(t142_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,A,B)
            & m2_relset_1(D,A,B) )
         => ( r1_partfun1(C,D)
           => ( ( B = k1_xboole_0
                & A != k1_xboole_0 )
              | C = D ) ) ) ) ).

fof(t143_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,A,A)
            & m2_relset_1(C,A,A) )
         => ( r1_partfun1(B,C)
           => B = C ) ) ) ).

fof(t144_funct_2,axiom,
    $true ).

fof(t145_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,A,B)
            & m2_relset_1(D,A,B) )
         => ( ( B = k1_xboole_0
             => A = k1_xboole_0 )
           => ( r1_partfun1(C,D)
            <=> ! [E] :
                  ( r2_hidden(E,k4_relset_1(A,B,C))
                 => k1_funct_1(C,E) = k1_funct_1(D,E) ) ) ) ) ) ).

fof(t146_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,A,A)
            & m2_relset_1(C,A,A) )
         => ( r1_partfun1(B,C)
          <=> ! [D] :
                ( r2_hidden(D,k4_relset_1(A,A,B))
               => k1_funct_1(B,D) = k1_funct_1(C,D) ) ) ) ) ).

fof(t147_funct_2,axiom,
    $true ).

fof(t148_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ~ ( ( B = k1_xboole_0
           => A = k1_xboole_0 )
          & ! [D] :
              ( ( v1_funct_1(D)
                & v1_funct_2(D,A,B)
                & m2_relset_1(D,A,B) )
             => ~ r1_partfun1(C,D) ) ) ) ).

fof(t149_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & m2_relset_1(B,A,A) )
     => ? [C] :
          ( v1_funct_1(C)
          & v1_funct_2(C,A,A)
          & m2_relset_1(C,A,A)
          & r1_partfun1(B,C) ) ) ).

fof(t150_funct_2,axiom,
    $true ).

fof(t151_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & m2_relset_1(D,A,B) )
         => ! [E] :
              ( ( v1_funct_1(E)
                & v1_funct_2(E,A,B)
                & m2_relset_1(E,A,B) )
             => ( ( r1_partfun1(C,E)
                  & r1_partfun1(D,E) )
               => ( ( B = k1_xboole_0
                    & A != k1_xboole_0 )
                  | r1_partfun1(C,D) ) ) ) ) ) ).

fof(t152_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & m2_relset_1(C,A,A) )
         => ! [D] :
              ( ( v1_funct_1(D)
                & v1_funct_2(D,A,A)
                & m2_relset_1(D,A,A) )
             => ( ( r1_partfun1(B,D)
                  & r1_partfun1(C,D) )
               => r1_partfun1(B,C) ) ) ) ) ).

fof(t153_funct_2,axiom,
    $true ).

fof(t154_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & m2_relset_1(D,A,B) )
         => ~ ( ( B = k1_xboole_0
               => A = k1_xboole_0 )
              & r1_partfun1(C,D)
              & ! [E] :
                  ( ( v1_funct_1(E)
                    & v1_funct_2(E,A,B)
                    & m2_relset_1(E,A,B) )
                 => ~ ( r1_partfun1(C,E)
                      & r1_partfun1(D,E) ) ) ) ) ) ).

fof(t155_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,A,B)
            & m2_relset_1(D,A,B) )
         => ( r1_partfun1(C,D)
           => ( ( B = k1_xboole_0
                & A != k1_xboole_0 )
              | r2_hidden(D,k5_partfun1(A,B,C)) ) ) ) ) ).

fof(t156_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & m2_relset_1(B,A,A) )
     => ! [C] :
          ( ( v1_funct_1(C)
            & v1_funct_2(C,A,A)
            & m2_relset_1(C,A,A) )
         => ( r1_partfun1(B,C)
           => r2_hidden(C,k5_partfun1(A,A,B)) ) ) ) ).

fof(t157_funct_2,axiom,
    $true ).

fof(t158_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( r2_hidden(D,k5_partfun1(A,B,C))
         => ( v1_funct_1(D)
            & v1_funct_2(D,A,B)
            & m2_relset_1(D,A,B) ) ) ) ).

fof(t159_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => r1_tarski(k5_partfun1(A,B,C),k1_funct_2(A,B)) ) ).

fof(t160_funct_2,axiom,
    ! [A,B] : k5_partfun1(A,B,k3_partfun1(k1_xboole_0,A,B)) = k1_funct_2(A,B) ).

fof(t161_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => ( ( B = k1_xboole_0
         => A = k1_xboole_0 )
       => k5_partfun1(A,B,k3_partfun1(C,A,B)) = k1_tarski(C) ) ) ).

fof(t162_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m2_relset_1(B,A,A) )
     => k5_partfun1(A,A,k3_partfun1(B,A,A)) = k1_tarski(B) ) ).

fof(t163_funct_2,axiom,
    $true ).

fof(t164_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,k1_tarski(B)) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & v1_funct_2(D,A,k1_tarski(B))
            & m2_relset_1(D,A,k1_tarski(B)) )
         => k5_partfun1(A,k1_tarski(B),C) = k1_tarski(D) ) ) ).

fof(t165_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & m2_relset_1(D,A,B) )
         => ( r1_tarski(D,C)
           => r1_tarski(k5_partfun1(A,B,C),k5_partfun1(A,B,D)) ) ) ) ).

fof(t166_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & m2_relset_1(D,A,B) )
         => ( ( r1_tarski(k4_relset_1(A,B,D),k4_relset_1(A,B,C))
              & r1_tarski(k5_partfun1(A,B,C),k5_partfun1(A,B,D)) )
           => r1_tarski(D,C) ) ) ) ).

fof(t167_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & m2_relset_1(D,A,B) )
         => ( ( r1_tarski(k5_partfun1(A,B,C),k5_partfun1(A,B,D))
              & ! [E] : B != k1_tarski(E) )
           => r1_tarski(D,C) ) ) ) ).

fof(t168_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & m2_relset_1(C,A,B) )
     => ! [D] :
          ( ( v1_funct_1(D)
            & m2_relset_1(D,A,B) )
         => ( ( ! [E] : B != k1_tarski(E)
              & k5_partfun1(A,B,C) = k5_partfun1(A,B,D) )
           => C = D ) ) ) ).

fof(d5_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(k1_tarski(A),k1_tarski(B)),k1_tarski(C))
        & m2_relset_1(D,k2_zfmisc_1(k1_tarski(A),k1_tarski(B)),k1_tarski(C)) )
     => D = k9_funct_2(A,B,C) ) ).

fof(t169_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C) )
     => ( r2_hidden(C,k1_funct_2(A,B))
       => ( k1_relat_1(C) = A
          & r1_tarski(k2_relat_1(C),B) ) ) ) ).

fof(s1_funct_2,axiom,
    ( ! [A] :
        ~ ( r2_hidden(A,f1_s1_funct_2)
          & ! [B] :
              ~ ( r2_hidden(B,f2_s1_funct_2)
                & p1_s1_funct_2(A,B) ) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s1_funct_2,f2_s1_funct_2)
        & m2_relset_1(A,f1_s1_funct_2,f2_s1_funct_2)
        & ! [B] :
            ( r2_hidden(B,f1_s1_funct_2)
           => p1_s1_funct_2(B,k1_funct_1(A,B)) ) ) ) ).

fof(s2_funct_2,axiom,
    ( ! [A] :
        ( r2_hidden(A,f1_s2_funct_2)
       => r2_hidden(f3_s2_funct_2(A),f2_s2_funct_2) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s2_funct_2,f2_s2_funct_2)
        & m2_relset_1(A,f1_s2_funct_2,f2_s2_funct_2)
        & ! [B] :
            ( r2_hidden(B,f1_s2_funct_2)
           => k1_funct_1(A,B) = f3_s2_funct_2(B) ) ) ) ).

fof(s3_funct_2,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s3_funct_2)
       => ? [B] :
            ( m1_subset_1(B,f2_s3_funct_2)
            & p1_s3_funct_2(A,B) ) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s3_funct_2,f2_s3_funct_2)
        & m2_relset_1(A,f1_s3_funct_2,f2_s3_funct_2)
        & ! [B] :
            ( m1_subset_1(B,f1_s3_funct_2)
           => p1_s3_funct_2(B,k8_funct_2(f1_s3_funct_2,f2_s3_funct_2,A,B)) ) ) ) ).

fof(s4_funct_2,axiom,
    ? [A] :
      ( v1_funct_1(A)
      & v1_funct_2(A,f1_s4_funct_2,f2_s4_funct_2)
      & m2_relset_1(A,f1_s4_funct_2,f2_s4_funct_2)
      & ! [B] :
          ( m1_subset_1(B,f1_s4_funct_2)
         => k8_funct_2(f1_s4_funct_2,f2_s4_funct_2,A,B) = f3_s4_funct_2(B) ) ) ).

fof(s5_funct_2,axiom,
    ( ! [A,B] :
        ~ ( r2_hidden(A,f1_s5_funct_2)
          & r2_hidden(B,f2_s5_funct_2)
          & ! [C] :
              ~ ( r2_hidden(C,f3_s5_funct_2)
                & p1_s5_funct_2(A,B,C) ) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,k2_zfmisc_1(f1_s5_funct_2,f2_s5_funct_2),f3_s5_funct_2)
        & m2_relset_1(A,k2_zfmisc_1(f1_s5_funct_2,f2_s5_funct_2),f3_s5_funct_2)
        & ! [B,C] :
            ( ( r2_hidden(B,f1_s5_funct_2)
              & r2_hidden(C,f2_s5_funct_2) )
           => p1_s5_funct_2(B,C,k1_funct_1(A,k4_tarski(B,C))) ) ) ) ).

fof(s6_funct_2,axiom,
    ( ! [A,B] :
        ( ( r2_hidden(A,f1_s6_funct_2)
          & r2_hidden(B,f2_s6_funct_2) )
       => r2_hidden(f4_s6_funct_2(A,B),f3_s6_funct_2) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,k2_zfmisc_1(f1_s6_funct_2,f2_s6_funct_2),f3_s6_funct_2)
        & m2_relset_1(A,k2_zfmisc_1(f1_s6_funct_2,f2_s6_funct_2),f3_s6_funct_2)
        & ! [B,C] :
            ( ( r2_hidden(B,f1_s6_funct_2)
              & r2_hidden(C,f2_s6_funct_2) )
           => k1_funct_1(A,k4_tarski(B,C)) = f4_s6_funct_2(B,C) ) ) ) ).

fof(s7_funct_2,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s7_funct_2)
       => ! [B] :
            ( m1_subset_1(B,f2_s7_funct_2)
           => ? [C] :
                ( m1_subset_1(C,f3_s7_funct_2)
                & p1_s7_funct_2(A,B,C) ) ) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,k2_zfmisc_1(f1_s7_funct_2,f2_s7_funct_2),f3_s7_funct_2)
        & m2_relset_1(A,k2_zfmisc_1(f1_s7_funct_2,f2_s7_funct_2),f3_s7_funct_2)
        & ! [B] :
            ( m1_subset_1(B,f1_s7_funct_2)
           => ! [C] :
                ( m1_subset_1(C,f2_s7_funct_2)
               => p1_s7_funct_2(B,C,k1_funct_1(A,k4_tarski(B,C))) ) ) ) ) ).

fof(s8_funct_2,axiom,
    ? [A] :
      ( v1_funct_1(A)
      & v1_funct_2(A,k2_zfmisc_1(f1_s8_funct_2,f2_s8_funct_2),f3_s8_funct_2)
      & m2_relset_1(A,k2_zfmisc_1(f1_s8_funct_2,f2_s8_funct_2),f3_s8_funct_2)
      & ! [B] :
          ( m1_subset_1(B,f1_s8_funct_2)
         => ! [C] :
              ( m1_subset_1(C,f2_s8_funct_2)
             => k1_funct_1(A,k4_tarski(B,C)) = f4_s8_funct_2(B,C) ) ) ) ).

fof(s9_funct_2,axiom,
    ( ! [A] :
        ( r2_hidden(A,f1_s9_funct_2)
       => ( ( p1_s9_funct_2(A)
           => r2_hidden(f3_s9_funct_2(A),f2_s9_funct_2) )
          & ( ~ p1_s9_funct_2(A)
           => r2_hidden(f4_s9_funct_2(A),f2_s9_funct_2) ) ) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s9_funct_2,f2_s9_funct_2)
        & m2_relset_1(A,f1_s9_funct_2,f2_s9_funct_2)
        & ! [B] :
            ( r2_hidden(B,f1_s9_funct_2)
           => ( ( p1_s9_funct_2(B)
               => k1_funct_1(A,B) = f3_s9_funct_2(B) )
              & ( ~ p1_s9_funct_2(B)
               => k1_funct_1(A,B) = f4_s9_funct_2(B) ) ) ) ) ) ).

fof(s10_funct_2,axiom,
    ? [A] :
      ( v1_funct_1(A)
      & v1_funct_2(A,f1_s10_funct_2,f2_s10_funct_2)
      & m2_relset_1(A,f1_s10_funct_2,f2_s10_funct_2)
      & k8_funct_2(f1_s10_funct_2,f2_s10_funct_2,A,f3_s10_funct_2) = f4_s10_funct_2
      & ! [B] :
          ( m1_subset_1(B,f1_s10_funct_2)
         => ( B != f3_s10_funct_2
           => k8_funct_2(f1_s10_funct_2,f2_s10_funct_2,A,B) = f5_s10_funct_2(B) ) ) ) ).

fof(s11_funct_2,axiom,
    ( f3_s11_funct_2 != f4_s11_funct_2
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s11_funct_2,f2_s11_funct_2)
        & m2_relset_1(A,f1_s11_funct_2,f2_s11_funct_2)
        & k8_funct_2(f1_s11_funct_2,f2_s11_funct_2,A,f3_s11_funct_2) = f5_s11_funct_2
        & k8_funct_2(f1_s11_funct_2,f2_s11_funct_2,A,f4_s11_funct_2) = f6_s11_funct_2
        & ! [B] :
            ( m1_subset_1(B,f1_s11_funct_2)
           => ~ ( B != f3_s11_funct_2
                & B != f4_s11_funct_2
                & k8_funct_2(f1_s11_funct_2,f2_s11_funct_2,A,B) != f7_s11_funct_2(B) ) ) ) ) ).

fof(s12_funct_2,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s12_funct_2)
       => r2_hidden(f3_s12_funct_2(A),f2_s12_funct_2) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s12_funct_2,f2_s12_funct_2)
        & m2_relset_1(A,f1_s12_funct_2,f2_s12_funct_2)
        & ! [B] :
            ( m1_subset_1(B,f1_s12_funct_2)
           => k8_funct_2(f1_s12_funct_2,f2_s12_funct_2,A,B) = f3_s12_funct_2(B) ) ) ) ).

fof(s13_funct_2,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s13_funct_2)
       => m1_subset_1(f3_s13_funct_2(A),f2_s13_funct_2) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s13_funct_2,f2_s13_funct_2)
        & m2_relset_1(A,f1_s13_funct_2,f2_s13_funct_2)
        & ! [B] :
            ( m1_subset_1(B,f1_s13_funct_2)
           => k8_funct_2(f1_s13_funct_2,f2_s13_funct_2,A,B) = f3_s13_funct_2(B) ) ) ) ).

fof(s14_funct_2,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s14_funct_2)
       => ? [B] :
            ( m1_subset_1(B,f2_s14_funct_2)
            & p1_s14_funct_2(A,B) ) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s14_funct_2,f2_s14_funct_2)
        & m2_relset_1(A,f1_s14_funct_2,f2_s14_funct_2)
        & ! [B] :
            ( m1_subset_1(B,f1_s14_funct_2)
           => p1_s14_funct_2(B,k8_funct_2(f1_s14_funct_2,f2_s14_funct_2,A,B)) ) ) ) ).

fof(dt_k1_funct_2,axiom,
    $true ).

fof(dt_k2_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_relset_1(C,A,B) )
     => m1_subset_1(k2_funct_2(A,B,C,D),k1_zfmisc_1(B)) ) ).

fof(redefinition_k2_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_relset_1(C,A,B) )
     => k2_funct_2(A,B,C,D) = k9_relat_1(C,D) ) ).

fof(dt_k3_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & m1_relset_1(C,A,B) )
     => m1_subset_1(k3_funct_2(A,B,C,D),k1_zfmisc_1(A)) ) ).

fof(redefinition_k3_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & m1_relset_1(C,A,B) )
     => k3_funct_2(A,B,C,D) = k10_relat_1(C,D) ) ).

fof(dt_k4_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m1_relset_1(B,A,A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,A)
        & m1_relset_1(C,A,A) )
     => ( v1_funct_1(k4_funct_2(A,B,C))
        & v1_funct_2(k4_funct_2(A,B,C),A,A)
        & m2_relset_1(k4_funct_2(A,B,C),A,A) ) ) ).

fof(redefinition_k4_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & m1_relset_1(B,A,A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,A)
        & m1_relset_1(C,A,A) )
     => k4_funct_2(A,B,C) = k5_relat_1(B,C) ) ).

fof(dt_k5_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & v3_funct_2(B,A,A)
        & m1_relset_1(B,A,A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,A)
        & v3_funct_2(C,A,A)
        & m1_relset_1(C,A,A) )
     => ( v1_funct_1(k5_funct_2(A,B,C))
        & v1_funct_2(k5_funct_2(A,B,C),A,A)
        & v3_funct_2(k5_funct_2(A,B,C),A,A)
        & m2_relset_1(k5_funct_2(A,B,C),A,A) ) ) ).

fof(redefinition_k5_funct_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & v3_funct_2(B,A,A)
        & m1_relset_1(B,A,A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,A)
        & v3_funct_2(C,A,A)
        & m1_relset_1(C,A,A) )
     => k5_funct_2(A,B,C) = k5_relat_1(B,C) ) ).

fof(dt_k6_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & v3_funct_2(B,A,A)
        & m1_relset_1(B,A,A) )
     => ( v1_funct_1(k6_funct_2(A,B))
        & v1_funct_2(k6_funct_2(A,B),A,A)
        & v3_funct_2(k6_funct_2(A,B),A,A)
        & m2_relset_1(k6_funct_2(A,B),A,A) ) ) ).

fof(redefinition_k6_funct_2,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,A,A)
        & v3_funct_2(B,A,A)
        & m1_relset_1(B,A,A) )
     => k6_funct_2(A,B) = k2_funct_1(B) ) ).

fof(dt_k7_funct_2,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v1_xboole_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_relset_1(D,A,B)
        & v1_funct_1(E)
        & v1_funct_2(E,B,C)
        & m1_relset_1(E,B,C) )
     => ( v1_funct_1(k7_funct_2(A,B,C,D,E))
        & v1_funct_2(k7_funct_2(A,B,C,D,E),A,C)
        & m2_relset_1(k7_funct_2(A,B,C,D,E),A,C) ) ) ).

fof(redefinition_k7_funct_2,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v1_xboole_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_relset_1(D,A,B)
        & v1_funct_1(E)
        & v1_funct_2(E,B,C)
        & m1_relset_1(E,B,C) )
     => k7_funct_2(A,B,C,D,E) = k5_relat_1(D,E) ) ).

fof(dt_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_relset_1(C,A,B)
        & m1_subset_1(D,A) )
     => m1_subset_1(k8_funct_2(A,B,C,D),B) ) ).

fof(redefinition_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_relset_1(C,A,B)
        & m1_subset_1(D,A) )
     => k8_funct_2(A,B,C,D) = k1_funct_1(C,D) ) ).

fof(dt_k9_funct_2,axiom,
    ! [A,B,C] :
      ( v1_funct_1(k9_funct_2(A,B,C))
      & v1_funct_2(k9_funct_2(A,B,C),k2_zfmisc_1(k1_tarski(A),k1_tarski(B)),k1_tarski(C))
      & m2_relset_1(k9_funct_2(A,B,C),k2_zfmisc_1(k1_tarski(A),k1_tarski(B)),k1_tarski(C)) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+26 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Sequences of Ordinal Numbers
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : ordinal2 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  125 (  29 unt;   0 def)
%            Number of atoms       :  834 ( 226 equ)
%            Maximal formula atoms :   49 (   6 avg)
%            Number of connectives :  722 (  13   ~;  30   |; 344   &)
%                                         (  27 <=>; 308  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   23 (   7 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   20 (  18 usr;   1 prp; 0-2 aty)
%            Number of functors    :   95 (  95 usr;  33 con; 0-2 aty)
%            Number of variables   :  274 ( 240   !;  34   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(fc1_ordinal2,axiom,
    ( v1_ordinal1(k5_ordinal2)
    & v2_ordinal1(k5_ordinal2)
    & v3_ordinal1(k5_ordinal2)
    & ~ v1_xboole_0(k5_ordinal2) ) ).

fof(rc1_ordinal2,axiom,
    ? [A] :
      ( v1_ordinal1(A)
      & v2_ordinal1(A)
      & v3_ordinal1(A)
      & v4_ordinal1(A) ) ).

fof(rc2_ordinal2,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v5_ordinal1(A)
      & v1_ordinal2(A) ) ).

fof(cc1_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( m1_ordinal1(B,A)
         => v1_ordinal2(B) ) ) ).

fof(fc2_ordinal2,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A)
        & v1_ordinal2(A)
        & v3_ordinal1(B) )
     => ( v1_relat_1(k7_relat_1(A,B))
        & v1_funct_1(k7_relat_1(A,B))
        & v1_ordinal2(k7_relat_1(A,B)) ) ) ).

fof(fc3_ordinal2,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A)
        & v1_ordinal2(A)
        & v3_ordinal1(B) )
     => ( v1_ordinal1(k1_funct_1(A,B))
        & v2_ordinal1(k1_funct_1(A,B))
        & v3_ordinal1(k1_funct_1(A,B)) ) ) ).

fof(fc4_ordinal2,axiom,
    ! [A,B] :
      ( v3_ordinal1(B)
     => ( v1_relat_1(k2_funcop_1(A,B))
        & v1_funct_1(k2_funcop_1(A,B))
        & v1_ordinal2(k2_funcop_1(A,B)) ) ) ).

fof(t1_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r1_ordinal1(A,B)
          <=> r1_ordinal1(k1_ordinal1(A),k1_ordinal1(B)) ) ) ) ).

fof(t2_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k3_tarski(k1_ordinal1(A)) = A ) ).

fof(t3_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => r1_tarski(k1_ordinal1(A),k1_zfmisc_1(A)) ) ).

fof(t4_ordinal2,axiom,
    v4_ordinal1(k1_xboole_0) ).

fof(t5_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => r1_ordinal1(k3_tarski(A),A) ) ).

fof(d1_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => k1_ordinal2(A) = k1_funct_1(A,k3_tarski(k1_relat_1(A))) ) ).

fof(t6_ordinal2,axiom,
    $true ).

fof(t7_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v5_ordinal1(B) )
         => ( k1_relat_1(B) = k1_ordinal1(A)
           => k1_ordinal2(B) = k1_funct_1(B,A) ) ) ) ).

fof(d2_ordinal2,axiom,
    ! [A,B] :
      ( B = k2_ordinal2(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> ( r2_hidden(C,A)
            & v3_ordinal1(C) ) ) ) ).

fof(d3_ordinal2,axiom,
    ! [A,B] :
      ( B = k3_ordinal2(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> ( r2_hidden(C,A)
            & ? [D] :
                ( v3_ordinal1(D)
                & C = D
                & v4_ordinal1(D) ) ) ) ) ).

fof(t8_ordinal2,axiom,
    $true ).

fof(t9_ordinal2,axiom,
    ! [A] : r1_tarski(k2_ordinal2(A),A) ).

fof(t10_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k2_ordinal2(A) = A ) ).

fof(t11_ordinal2,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => r1_tarski(k2_ordinal2(A),k2_ordinal2(B)) ) ).

fof(t12_ordinal2,axiom,
    $true ).

fof(t13_ordinal2,axiom,
    ! [A] : r1_tarski(k3_ordinal2(A),A) ).

fof(t14_ordinal2,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => r1_tarski(k3_ordinal2(A),k3_ordinal2(B)) ) ).

fof(t15_ordinal2,axiom,
    ! [A] : r1_tarski(k3_ordinal2(A),k2_ordinal2(A)) ).

fof(t16_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ? [B] :
          ( v3_ordinal1(B)
          & r2_hidden(A,B)
          & v4_ordinal1(B) ) ) ).

fof(t17_ordinal2,axiom,
    ! [A] :
      ( ! [B] :
          ( r2_hidden(B,A)
         => v3_ordinal1(B) )
     => v3_ordinal1(k1_setfam_1(A)) ) ).

fof(d4_ordinal2,axiom,
    k4_ordinal2 = k1_ordinal1(k1_xboole_0) ).

fof(d5_ordinal2,axiom,
    ! [A] :
      ( A = k5_ordinal2
    <=> ( r2_hidden(k1_xboole_0,A)
        & v4_ordinal1(A)
        & v3_ordinal1(A)
        & ! [B] :
            ( v3_ordinal1(B)
           => ( ( r2_hidden(k1_xboole_0,B)
                & v4_ordinal1(B) )
             => r1_tarski(A,B) ) ) ) ) ).

fof(d6_ordinal2,axiom,
    ! [A] : k6_ordinal2(A) = k1_setfam_1(k2_ordinal2(A)) ).

fof(d7_ordinal2,axiom,
    ! [A,B] :
      ( v3_ordinal1(B)
     => ( B = k7_ordinal2(A)
      <=> ( r1_tarski(k2_ordinal2(A),B)
          & ! [C] :
              ( v3_ordinal1(C)
             => ( r1_tarski(k2_ordinal2(A),C)
               => r1_ordinal1(B,C) ) ) ) ) ) ).

fof(t18_ordinal2,axiom,
    $true ).

fof(t19_ordinal2,axiom,
    ( r2_hidden(k1_xboole_0,k5_ordinal2)
    & v4_ordinal1(k5_ordinal2)
    & ! [A] :
        ( v3_ordinal1(A)
       => ( ( r2_hidden(k1_xboole_0,A)
            & v4_ordinal1(A) )
         => r1_ordinal1(k5_ordinal2,A) ) ) ) ).

fof(t20_ordinal2,axiom,
    $true ).

fof(t21_ordinal2,axiom,
    $true ).

fof(t22_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( r2_hidden(A,B)
         => r1_ordinal1(k6_ordinal2(B),A) ) ) ).

fof(t23_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( ! [C] :
              ( v3_ordinal1(C)
             => ( r2_hidden(C,B)
               => r1_ordinal1(A,C) ) )
         => ( k2_ordinal2(B) = k1_xboole_0
            | r1_ordinal1(A,k6_ordinal2(B)) ) ) ) ).

fof(t24_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B,C] :
          ( ( r2_hidden(A,B)
            & r1_tarski(B,C) )
         => r1_ordinal1(k6_ordinal2(C),k6_ordinal2(B)) ) ) ).

fof(t25_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( r2_hidden(A,B)
         => r2_hidden(k6_ordinal2(B),B) ) ) ).

fof(t26_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k7_ordinal2(A) = A ) ).

fof(t27_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( r2_hidden(A,B)
         => r2_hidden(A,k7_ordinal2(B)) ) ) ).

fof(t28_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( ! [C] :
              ( v3_ordinal1(C)
             => ( r2_hidden(C,B)
               => r2_hidden(C,A) ) )
         => r1_ordinal1(k7_ordinal2(B),A) ) ) ).

fof(t29_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ~ ( r2_hidden(A,k7_ordinal2(B))
            & ! [C] :
                ( v3_ordinal1(C)
               => ~ ( r2_hidden(C,B)
                    & r1_ordinal1(A,C) ) ) ) ) ).

fof(t30_ordinal2,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => r1_ordinal1(k7_ordinal2(A),k7_ordinal2(B)) ) ).

fof(t31_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k7_ordinal2(k1_tarski(A)) = k1_ordinal1(A) ) ).

fof(t32_ordinal2,axiom,
    ! [A] : r1_ordinal1(k6_ordinal2(A),k7_ordinal2(A)) ).

fof(d8_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_ordinal2(A)
      <=> ? [B] :
            ( v3_ordinal1(B)
            & r1_tarski(k2_relat_1(A),B) ) ) ) ).

fof(t33_ordinal2,axiom,
    $true ).

fof(t34_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v5_ordinal1(B)
            & v1_ordinal2(B) )
         => ( r2_hidden(A,k1_relat_1(B))
           => v3_ordinal1(k1_funct_1(B,A)) ) ) ) ).

fof(d9_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => k8_ordinal2(A) = k7_ordinal2(k2_relat_1(A)) ) ).

fof(d10_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => k9_ordinal2(A) = k6_ordinal2(k2_relat_1(A)) ) ).

fof(t35_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => ( k8_ordinal2(A) = k7_ordinal2(k2_relat_1(A))
        & k9_ordinal2(A) = k6_ordinal2(k2_relat_1(A)) ) ) ).

fof(d11_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => ! [B] :
          ( v3_ordinal1(B)
         => ( B = k10_ordinal2(A)
          <=> ? [C] :
                ( v1_relat_1(C)
                & v1_funct_1(C)
                & v5_ordinal1(C)
                & v1_ordinal2(C)
                & B = k9_ordinal2(C)
                & k1_relat_1(C) = k1_relat_1(A)
                & ! [D] :
                    ( v3_ordinal1(D)
                   => ( r2_hidden(D,k1_relat_1(A))
                     => k1_funct_1(C,D) = k7_ordinal2(k2_relat_1(k7_relat_1(A,k4_xboole_0(k1_relat_1(A),D)))) ) ) ) ) ) ) ).

fof(d12_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => ! [B] :
          ( v3_ordinal1(B)
         => ( B = k11_ordinal2(A)
          <=> ? [C] :
                ( v1_relat_1(C)
                & v1_funct_1(C)
                & v5_ordinal1(C)
                & v1_ordinal2(C)
                & B = k8_ordinal2(C)
                & k1_relat_1(C) = k1_relat_1(A)
                & ! [D] :
                    ( v3_ordinal1(D)
                   => ( r2_hidden(D,k1_relat_1(A))
                     => k1_funct_1(C,D) = k6_ordinal2(k2_relat_1(k7_relat_1(A,k4_xboole_0(k1_relat_1(A),D)))) ) ) ) ) ) ) ).

fof(d13_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v5_ordinal1(B)
            & v1_ordinal2(B) )
         => ( ( A = k1_xboole_0
             => ( r1_ordinal2(A,B)
              <=> ? [C] :
                    ( v3_ordinal1(C)
                    & r2_hidden(C,k1_relat_1(B))
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( ( r1_ordinal1(C,D)
                            & r2_hidden(D,k1_relat_1(B)) )
                         => k1_funct_1(B,D) = k1_xboole_0 ) ) ) ) )
            & ( A != k1_xboole_0
             => ( r1_ordinal2(A,B)
              <=> ! [C] :
                    ( v3_ordinal1(C)
                   => ! [D] :
                        ( v3_ordinal1(D)
                       => ~ ( r2_hidden(C,A)
                            & r2_hidden(A,D)
                            & ! [E] :
                                ( v3_ordinal1(E)
                               => ~ ( r2_hidden(E,k1_relat_1(B))
                                    & ! [F] :
                                        ( v3_ordinal1(F)
                                       => ( ( r1_ordinal1(E,F)
                                            & r2_hidden(F,k1_relat_1(B)) )
                                         => ( r2_hidden(C,k1_funct_1(B,F))
                                            & r2_hidden(k1_funct_1(B,F),D) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

fof(d14_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A)
        & v1_ordinal2(A) )
     => ( ? [B] :
            ( v3_ordinal1(B)
            & r1_ordinal2(B,A) )
       => ! [B] :
            ( v3_ordinal1(B)
           => ( B = k12_ordinal2(A)
            <=> r1_ordinal2(B,A) ) ) ) ) ).

fof(d15_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v5_ordinal1(B)
            & v1_ordinal2(B) )
         => k13_ordinal2(A,B) = k12_ordinal2(k2_ordinal1(B,A)) ) ) ).

fof(d16_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A)
        & v1_ordinal2(A) )
     => ( v2_ordinal2(A)
      <=> ! [B] :
            ( v3_ordinal1(B)
           => ! [C] :
                ( v3_ordinal1(C)
               => ( ( r2_hidden(B,C)
                    & r2_hidden(C,k1_relat_1(A)) )
                 => r2_hidden(k1_funct_1(A,B),k1_funct_1(A,C)) ) ) ) ) ) ).

fof(d17_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A)
        & v1_ordinal2(A) )
     => ( v3_ordinal2(A)
      <=> ! [B] :
            ( v3_ordinal1(B)
           => ! [C] :
                ( v3_ordinal1(C)
               => ( ( r2_hidden(B,k1_relat_1(A))
                    & v4_ordinal1(B)
                    & C = k1_funct_1(A,B) )
                 => ( B = k1_xboole_0
                    | r1_ordinal2(C,k2_ordinal1(A,B)) ) ) ) ) ) ) ).

fof(d18_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( C = k14_ordinal2(A,B)
              <=> ? [D] :
                    ( v1_relat_1(D)
                    & v1_funct_1(D)
                    & v5_ordinal1(D)
                    & v1_ordinal2(D)
                    & C = k1_ordinal2(D)
                    & k1_relat_1(D) = k1_ordinal1(B)
                    & k1_funct_1(D,k1_xboole_0) = A
                    & ! [E] :
                        ( v3_ordinal1(E)
                       => ( r2_hidden(k1_ordinal1(E),k1_ordinal1(B))
                         => k1_funct_1(D,k1_ordinal1(E)) = k1_ordinal1(k1_funct_1(D,E)) ) )
                    & ! [E] :
                        ( v3_ordinal1(E)
                       => ( ( r2_hidden(E,k1_ordinal1(B))
                            & v4_ordinal1(E) )
                         => ( E = k1_xboole_0
                            | k1_funct_1(D,E) = k8_ordinal2(k2_ordinal1(D,E)) ) ) ) ) ) ) ) ) ).

fof(d19_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( C = k15_ordinal2(A,B)
              <=> ? [D] :
                    ( v1_relat_1(D)
                    & v1_funct_1(D)
                    & v5_ordinal1(D)
                    & v1_ordinal2(D)
                    & C = k1_ordinal2(D)
                    & k1_relat_1(D) = k1_ordinal1(A)
                    & k1_funct_1(D,k1_xboole_0) = k1_xboole_0
                    & ! [E] :
                        ( v3_ordinal1(E)
                       => ( r2_hidden(k1_ordinal1(E),k1_ordinal1(A))
                         => k1_funct_1(D,k1_ordinal1(E)) = k14_ordinal2(k1_funct_1(D,E),B) ) )
                    & ! [E] :
                        ( v3_ordinal1(E)
                       => ( ( r2_hidden(E,k1_ordinal1(A))
                            & v4_ordinal1(E) )
                         => ( E = k1_xboole_0
                            | k1_funct_1(D,E) = k3_tarski(k8_ordinal2(k2_ordinal1(D,E))) ) ) ) ) ) ) ) ) ).

fof(d20_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( C = k16_ordinal2(A,B)
              <=> ? [D] :
                    ( v1_relat_1(D)
                    & v1_funct_1(D)
                    & v5_ordinal1(D)
                    & v1_ordinal2(D)
                    & C = k1_ordinal2(D)
                    & k1_relat_1(D) = k1_ordinal1(B)
                    & k1_funct_1(D,k1_xboole_0) = k4_ordinal2
                    & ! [E] :
                        ( v3_ordinal1(E)
                       => ( r2_hidden(k1_ordinal1(E),k1_ordinal1(B))
                         => k1_funct_1(D,k1_ordinal1(E)) = k15_ordinal2(A,k1_funct_1(D,E)) ) )
                    & ! [E] :
                        ( v3_ordinal1(E)
                       => ( ( r2_hidden(E,k1_ordinal1(B))
                            & v4_ordinal1(E) )
                         => ( E = k1_xboole_0
                            | k1_funct_1(D,E) = k12_ordinal2(k2_ordinal1(D,E)) ) ) ) ) ) ) ) ) ).

fof(t36_ordinal2,axiom,
    $true ).

fof(t37_ordinal2,axiom,
    $true ).

fof(t38_ordinal2,axiom,
    $true ).

fof(t39_ordinal2,axiom,
    $true ).

fof(t40_ordinal2,axiom,
    $true ).

fof(t41_ordinal2,axiom,
    $true ).

fof(t42_ordinal2,axiom,
    $true ).

fof(t43_ordinal2,axiom,
    $true ).

fof(t44_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k14_ordinal2(A,k1_xboole_0) = A ) ).

fof(t45_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => k14_ordinal2(A,k1_ordinal1(B)) = k1_ordinal1(k14_ordinal2(A,B)) ) ) ).

fof(t46_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( v4_ordinal1(A)
           => ( A = k1_xboole_0
              | ! [C] :
                  ( ( v1_relat_1(C)
                    & v1_funct_1(C)
                    & v5_ordinal1(C)
                    & v1_ordinal2(C) )
                 => ( ( k1_relat_1(C) = A
                      & ! [D] :
                          ( v3_ordinal1(D)
                         => ( r2_hidden(D,A)
                           => k1_funct_1(C,D) = k14_ordinal2(B,D) ) ) )
                   => k14_ordinal2(B,A) = k8_ordinal2(C) ) ) ) ) ) ) ).

fof(t47_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k14_ordinal2(k1_xboole_0,A) = A ) ).

fof(t48_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k14_ordinal2(A,k4_ordinal2) = k1_ordinal1(A) ) ).

fof(t49_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( r2_hidden(A,B)
               => r2_hidden(k14_ordinal2(C,A),k14_ordinal2(C,B)) ) ) ) ) ).

fof(t50_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( r1_ordinal1(A,B)
               => r1_ordinal1(k14_ordinal2(C,A),k14_ordinal2(C,B)) ) ) ) ) ).

fof(t51_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( r1_ordinal1(A,B)
               => r1_ordinal1(k14_ordinal2(A,C),k14_ordinal2(B,C)) ) ) ) ) ).

fof(t52_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k15_ordinal2(k1_xboole_0,A) = k1_xboole_0 ) ).

fof(t53_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => k15_ordinal2(k1_ordinal1(A),B) = k14_ordinal2(k15_ordinal2(A,B),B) ) ) ).

fof(t54_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( v4_ordinal1(A)
           => ( A = k1_xboole_0
              | ! [C] :
                  ( ( v1_relat_1(C)
                    & v1_funct_1(C)
                    & v5_ordinal1(C)
                    & v1_ordinal2(C) )
                 => ( ( k1_relat_1(C) = A
                      & ! [D] :
                          ( v3_ordinal1(D)
                         => ( r2_hidden(D,A)
                           => k1_funct_1(C,D) = k15_ordinal2(D,B) ) ) )
                   => k15_ordinal2(A,B) = k3_tarski(k8_ordinal2(C)) ) ) ) ) ) ) ).

fof(t55_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k15_ordinal2(A,k1_xboole_0) = k1_xboole_0 ) ).

fof(t56_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( k15_ordinal2(k4_ordinal2,A) = A
        & k15_ordinal2(A,k4_ordinal2) = A ) ) ).

fof(t57_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( r2_hidden(B,C)
               => ( A = k1_xboole_0
                  | r2_hidden(k15_ordinal2(B,A),k15_ordinal2(C,A)) ) ) ) ) ) ).

fof(t58_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( r1_ordinal1(A,B)
               => r1_ordinal1(k15_ordinal2(A,C),k15_ordinal2(B,C)) ) ) ) ) ).

fof(t59_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ! [C] :
              ( v3_ordinal1(C)
             => ( r1_ordinal1(A,B)
               => r1_ordinal1(k15_ordinal2(C,A),k15_ordinal2(C,B)) ) ) ) ) ).

fof(t60_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k16_ordinal2(A,k1_xboole_0) = k4_ordinal2 ) ).

fof(t61_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => k16_ordinal2(A,k1_ordinal1(B)) = k15_ordinal2(A,k16_ordinal2(A,B)) ) ) ).

fof(t62_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( v4_ordinal1(A)
           => ( A = k1_xboole_0
              | ! [C] :
                  ( ( v1_relat_1(C)
                    & v1_funct_1(C)
                    & v5_ordinal1(C)
                    & v1_ordinal2(C) )
                 => ( ( k1_relat_1(C) = A
                      & ! [D] :
                          ( v3_ordinal1(D)
                         => ( r2_hidden(D,A)
                           => k1_funct_1(C,D) = k16_ordinal2(B,D) ) ) )
                   => k16_ordinal2(B,A) = k12_ordinal2(C) ) ) ) ) ) ) ).

fof(t63_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( k16_ordinal2(A,k4_ordinal2) = A
        & k16_ordinal2(k4_ordinal2,A) = k4_ordinal2 ) ) ).

fof(d21_ordinal2,axiom,
    ! [A] :
      ( v4_ordinal2(A)
    <=> r2_hidden(A,k5_ordinal2) ) ).

fof(t64_ordinal2,axiom,
    $true ).

fof(t65_ordinal2,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ? [B] :
          ( v3_ordinal1(B)
          & ? [C] :
              ( v3_ordinal1(C)
              & v4_ordinal1(B)
              & v4_ordinal2(C)
              & A = k14_ordinal2(B,C) ) ) ) ).

fof(s1_ordinal2,axiom,
    ( ( p1_s1_ordinal2(k1_xboole_0)
      & ! [A] :
          ( v3_ordinal1(A)
         => ( p1_s1_ordinal2(A)
           => p1_s1_ordinal2(k1_ordinal1(A)) ) )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( ( v4_ordinal1(A)
              & ! [B] :
                  ( v3_ordinal1(B)
                 => ( r2_hidden(B,A)
                   => p1_s1_ordinal2(B) ) ) )
           => ( A = k1_xboole_0
              | p1_s1_ordinal2(A) ) ) ) )
   => ! [A] :
        ( v3_ordinal1(A)
       => p1_s1_ordinal2(A) ) ) ).

fof(s2_ordinal2,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v5_ordinal1(A)
      & k1_relat_1(A) = f1_s2_ordinal2
      & ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(B,f1_s2_ordinal2)
           => k1_funct_1(A,B) = f2_s2_ordinal2(B) ) ) ) ).

fof(s3_ordinal2,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v5_ordinal1(A)
      & v1_ordinal2(A)
      & k1_relat_1(A) = f1_s3_ordinal2
      & ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(B,f1_s3_ordinal2)
           => k1_funct_1(A,B) = f2_s3_ordinal2(B) ) ) ) ).

fof(s4_ordinal2,axiom,
    ( ( k1_relat_1(f5_s4_ordinal2) = f1_s4_ordinal2
      & ( r2_hidden(k1_xboole_0,f1_s4_ordinal2)
       => k1_funct_1(f5_s4_ordinal2,k1_xboole_0) = f2_s4_ordinal2 )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( r2_hidden(k1_ordinal1(A),f1_s4_ordinal2)
           => k1_funct_1(f5_s4_ordinal2,k1_ordinal1(A)) = f3_s4_ordinal2(A,k1_funct_1(f5_s4_ordinal2,A)) ) )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( ( r2_hidden(A,f1_s4_ordinal2)
              & v4_ordinal1(A) )
           => ( A = k1_xboole_0
              | k1_funct_1(f5_s4_ordinal2,A) = f4_s4_ordinal2(A,k2_ordinal1(f5_s4_ordinal2,A)) ) ) )
      & k1_relat_1(f6_s4_ordinal2) = f1_s4_ordinal2
      & ( r2_hidden(k1_xboole_0,f1_s4_ordinal2)
       => k1_funct_1(f6_s4_ordinal2,k1_xboole_0) = f2_s4_ordinal2 )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( r2_hidden(k1_ordinal1(A),f1_s4_ordinal2)
           => k1_funct_1(f6_s4_ordinal2,k1_ordinal1(A)) = f3_s4_ordinal2(A,k1_funct_1(f6_s4_ordinal2,A)) ) )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( ( r2_hidden(A,f1_s4_ordinal2)
              & v4_ordinal1(A) )
           => ( A = k1_xboole_0
              | k1_funct_1(f6_s4_ordinal2,A) = f4_s4_ordinal2(A,k2_ordinal1(f6_s4_ordinal2,A)) ) ) ) )
   => f5_s4_ordinal2 = f6_s4_ordinal2 ) ).

fof(s5_ordinal2,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v5_ordinal1(A)
      & k1_relat_1(A) = f1_s5_ordinal2
      & ( r2_hidden(k1_xboole_0,f1_s5_ordinal2)
       => k1_funct_1(A,k1_xboole_0) = f2_s5_ordinal2 )
      & ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(k1_ordinal1(B),f1_s5_ordinal2)
           => k1_funct_1(A,k1_ordinal1(B)) = f3_s5_ordinal2(B,k1_funct_1(A,B)) ) )
      & ! [B] :
          ( v3_ordinal1(B)
         => ( ( r2_hidden(B,f1_s5_ordinal2)
              & v4_ordinal1(B) )
           => ( B = k1_xboole_0
              | k1_funct_1(A,B) = f4_s5_ordinal2(B,k2_ordinal1(A,B)) ) ) ) ) ).

fof(s6_ordinal2,axiom,
    ( ( ! [A] :
          ( v3_ordinal1(A)
         => ! [B] :
              ( B = f2_s6_ordinal2(A)
            <=> ? [C] :
                  ( v1_relat_1(C)
                  & v1_funct_1(C)
                  & v5_ordinal1(C)
                  & B = k1_ordinal2(C)
                  & k1_relat_1(C) = k1_ordinal1(A)
                  & k1_funct_1(C,k1_xboole_0) = f4_s6_ordinal2
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                       => k1_funct_1(C,k1_ordinal1(D)) = f5_s6_ordinal2(D,k1_funct_1(C,D)) ) )
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( ( r2_hidden(D,k1_ordinal1(A))
                          & v4_ordinal1(D) )
                       => ( D = k1_xboole_0
                          | k1_funct_1(C,D) = f6_s6_ordinal2(D,k2_ordinal1(C,D)) ) ) ) ) ) )
      & k1_relat_1(f1_s6_ordinal2) = f3_s6_ordinal2
      & ( r2_hidden(k1_xboole_0,f3_s6_ordinal2)
       => k1_funct_1(f1_s6_ordinal2,k1_xboole_0) = f4_s6_ordinal2 )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( r2_hidden(k1_ordinal1(A),f3_s6_ordinal2)
           => k1_funct_1(f1_s6_ordinal2,k1_ordinal1(A)) = f5_s6_ordinal2(A,k1_funct_1(f1_s6_ordinal2,A)) ) )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( ( r2_hidden(A,f3_s6_ordinal2)
              & v4_ordinal1(A) )
           => ( A = k1_xboole_0
              | k1_funct_1(f1_s6_ordinal2,A) = f6_s6_ordinal2(A,k2_ordinal1(f1_s6_ordinal2,A)) ) ) ) )
   => ! [A] :
        ( v3_ordinal1(A)
       => ( r2_hidden(A,k1_relat_1(f1_s6_ordinal2))
         => k1_funct_1(f1_s6_ordinal2,A) = f2_s6_ordinal2(A) ) ) ) ).

fof(s7_ordinal2,axiom,
    ( ? [A,B] :
        ( v1_relat_1(B)
        & v1_funct_1(B)
        & v5_ordinal1(B)
        & A = k1_ordinal2(B)
        & k1_relat_1(B) = k1_ordinal1(f1_s7_ordinal2)
        & k1_funct_1(B,k1_xboole_0) = f2_s7_ordinal2
        & ! [C] :
            ( v3_ordinal1(C)
           => ( r2_hidden(k1_ordinal1(C),k1_ordinal1(f1_s7_ordinal2))
             => k1_funct_1(B,k1_ordinal1(C)) = f3_s7_ordinal2(C,k1_funct_1(B,C)) ) )
        & ! [C] :
            ( v3_ordinal1(C)
           => ( ( r2_hidden(C,k1_ordinal1(f1_s7_ordinal2))
                & v4_ordinal1(C) )
             => ( C = k1_xboole_0
                | k1_funct_1(B,C) = f4_s7_ordinal2(C,k2_ordinal1(B,C)) ) ) ) )
    & ! [A,B] :
        ~ ( ? [C] :
              ( v1_relat_1(C)
              & v1_funct_1(C)
              & v5_ordinal1(C)
              & A = k1_ordinal2(C)
              & k1_relat_1(C) = k1_ordinal1(f1_s7_ordinal2)
              & k1_funct_1(C,k1_xboole_0) = f2_s7_ordinal2
              & ! [D] :
                  ( v3_ordinal1(D)
                 => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(f1_s7_ordinal2))
                   => k1_funct_1(C,k1_ordinal1(D)) = f3_s7_ordinal2(D,k1_funct_1(C,D)) ) )
              & ! [D] :
                  ( v3_ordinal1(D)
                 => ( ( r2_hidden(D,k1_ordinal1(f1_s7_ordinal2))
                      & v4_ordinal1(D) )
                   => ( D = k1_xboole_0
                      | k1_funct_1(C,D) = f4_s7_ordinal2(D,k2_ordinal1(C,D)) ) ) ) )
          & ? [C] :
              ( v1_relat_1(C)
              & v1_funct_1(C)
              & v5_ordinal1(C)
              & B = k1_ordinal2(C)
              & k1_relat_1(C) = k1_ordinal1(f1_s7_ordinal2)
              & k1_funct_1(C,k1_xboole_0) = f2_s7_ordinal2
              & ! [D] :
                  ( v3_ordinal1(D)
                 => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(f1_s7_ordinal2))
                   => k1_funct_1(C,k1_ordinal1(D)) = f3_s7_ordinal2(D,k1_funct_1(C,D)) ) )
              & ! [D] :
                  ( v3_ordinal1(D)
                 => ( ( r2_hidden(D,k1_ordinal1(f1_s7_ordinal2))
                      & v4_ordinal1(D) )
                   => ( D = k1_xboole_0
                      | k1_funct_1(C,D) = f4_s7_ordinal2(D,k2_ordinal1(C,D)) ) ) ) )
          & A != B ) ) ).

fof(s8_ordinal2,axiom,
    ( ! [A] :
        ( v3_ordinal1(A)
       => ! [B] :
            ( B = f1_s8_ordinal2(A)
          <=> ? [C] :
                ( v1_relat_1(C)
                & v1_funct_1(C)
                & v5_ordinal1(C)
                & B = k1_ordinal2(C)
                & k1_relat_1(C) = k1_ordinal1(A)
                & k1_funct_1(C,k1_xboole_0) = f2_s8_ordinal2
                & ! [D] :
                    ( v3_ordinal1(D)
                   => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                     => k1_funct_1(C,k1_ordinal1(D)) = f3_s8_ordinal2(D,k1_funct_1(C,D)) ) )
                & ! [D] :
                    ( v3_ordinal1(D)
                   => ( ( r2_hidden(D,k1_ordinal1(A))
                        & v4_ordinal1(D) )
                     => ( D = k1_xboole_0
                        | k1_funct_1(C,D) = f4_s8_ordinal2(D,k2_ordinal1(C,D)) ) ) ) ) ) )
   => f1_s8_ordinal2(k1_xboole_0) = f2_s8_ordinal2 ) ).

fof(s9_ordinal2,axiom,
    ( ! [A] :
        ( v3_ordinal1(A)
       => ! [B] :
            ( B = f4_s9_ordinal2(A)
          <=> ? [C] :
                ( v1_relat_1(C)
                & v1_funct_1(C)
                & v5_ordinal1(C)
                & B = k1_ordinal2(C)
                & k1_relat_1(C) = k1_ordinal1(A)
                & k1_funct_1(C,k1_xboole_0) = f1_s9_ordinal2
                & ! [D] :
                    ( v3_ordinal1(D)
                   => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                     => k1_funct_1(C,k1_ordinal1(D)) = f2_s9_ordinal2(D,k1_funct_1(C,D)) ) )
                & ! [D] :
                    ( v3_ordinal1(D)
                   => ( ( r2_hidden(D,k1_ordinal1(A))
                        & v4_ordinal1(D) )
                     => ( D = k1_xboole_0
                        | k1_funct_1(C,D) = f3_s9_ordinal2(D,k2_ordinal1(C,D)) ) ) ) ) ) )
   => ! [A] :
        ( v3_ordinal1(A)
       => f4_s9_ordinal2(k1_ordinal1(A)) = f2_s9_ordinal2(A,f4_s9_ordinal2(A)) ) ) ).

fof(s10_ordinal2,axiom,
    ( ( ! [A] :
          ( v3_ordinal1(A)
         => ! [B] :
              ( B = f3_s10_ordinal2(A)
            <=> ? [C] :
                  ( v1_relat_1(C)
                  & v1_funct_1(C)
                  & v5_ordinal1(C)
                  & B = k1_ordinal2(C)
                  & k1_relat_1(C) = k1_ordinal1(A)
                  & k1_funct_1(C,k1_xboole_0) = f4_s10_ordinal2
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                       => k1_funct_1(C,k1_ordinal1(D)) = f5_s10_ordinal2(D,k1_funct_1(C,D)) ) )
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( ( r2_hidden(D,k1_ordinal1(A))
                          & v4_ordinal1(D) )
                       => ( D = k1_xboole_0
                          | k1_funct_1(C,D) = f6_s10_ordinal2(D,k2_ordinal1(C,D)) ) ) ) ) ) )
      & f2_s10_ordinal2 != k1_xboole_0
      & v4_ordinal1(f2_s10_ordinal2)
      & k1_relat_1(f1_s10_ordinal2) = f2_s10_ordinal2
      & ! [A] :
          ( v3_ordinal1(A)
         => ( r2_hidden(A,f2_s10_ordinal2)
           => k1_funct_1(f1_s10_ordinal2,A) = f3_s10_ordinal2(A) ) ) )
   => f3_s10_ordinal2(f2_s10_ordinal2) = f6_s10_ordinal2(f2_s10_ordinal2,f1_s10_ordinal2) ) ).

fof(s11_ordinal2,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v5_ordinal1(A)
      & v1_ordinal2(A)
      & k1_relat_1(A) = f1_s11_ordinal2
      & ( r2_hidden(k1_xboole_0,f1_s11_ordinal2)
       => k1_funct_1(A,k1_xboole_0) = f2_s11_ordinal2 )
      & ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(k1_ordinal1(B),f1_s11_ordinal2)
           => k1_funct_1(A,k1_ordinal1(B)) = f3_s11_ordinal2(B,k1_funct_1(A,B)) ) )
      & ! [B] :
          ( v3_ordinal1(B)
         => ( ( r2_hidden(B,f1_s11_ordinal2)
              & v4_ordinal1(B) )
           => ( B = k1_xboole_0
              | k1_funct_1(A,B) = f4_s11_ordinal2(B,k2_ordinal1(A,B)) ) ) ) ) ).

fof(s12_ordinal2,axiom,
    ( ( ! [A] :
          ( v3_ordinal1(A)
         => ! [B] :
              ( v3_ordinal1(B)
             => ( B = f2_s12_ordinal2(A)
              <=> ? [C] :
                    ( v1_relat_1(C)
                    & v1_funct_1(C)
                    & v5_ordinal1(C)
                    & v1_ordinal2(C)
                    & B = k1_ordinal2(C)
                    & k1_relat_1(C) = k1_ordinal1(A)
                    & k1_funct_1(C,k1_xboole_0) = f4_s12_ordinal2
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                         => k1_funct_1(C,k1_ordinal1(D)) = f5_s12_ordinal2(D,k1_funct_1(C,D)) ) )
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( ( r2_hidden(D,k1_ordinal1(A))
                            & v4_ordinal1(D) )
                         => ( D = k1_xboole_0
                            | k1_funct_1(C,D) = f6_s12_ordinal2(D,k2_ordinal1(C,D)) ) ) ) ) ) ) )
      & k1_relat_1(f1_s12_ordinal2) = f3_s12_ordinal2
      & ( r2_hidden(k1_xboole_0,f3_s12_ordinal2)
       => k1_funct_1(f1_s12_ordinal2,k1_xboole_0) = f4_s12_ordinal2 )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( r2_hidden(k1_ordinal1(A),f3_s12_ordinal2)
           => k1_funct_1(f1_s12_ordinal2,k1_ordinal1(A)) = f5_s12_ordinal2(A,k1_funct_1(f1_s12_ordinal2,A)) ) )
      & ! [A] :
          ( v3_ordinal1(A)
         => ( ( r2_hidden(A,f3_s12_ordinal2)
              & v4_ordinal1(A) )
           => ( A = k1_xboole_0
              | k1_funct_1(f1_s12_ordinal2,A) = f6_s12_ordinal2(A,k2_ordinal1(f1_s12_ordinal2,A)) ) ) ) )
   => ! [A] :
        ( v3_ordinal1(A)
       => ( r2_hidden(A,k1_relat_1(f1_s12_ordinal2))
         => k1_funct_1(f1_s12_ordinal2,A) = f2_s12_ordinal2(A) ) ) ) ).

fof(s13_ordinal2,axiom,
    ( ? [A] :
        ( v3_ordinal1(A)
        & ? [B] :
            ( v1_relat_1(B)
            & v1_funct_1(B)
            & v5_ordinal1(B)
            & v1_ordinal2(B)
            & A = k1_ordinal2(B)
            & k1_relat_1(B) = k1_ordinal1(f1_s13_ordinal2)
            & k1_funct_1(B,k1_xboole_0) = f2_s13_ordinal2
            & ! [C] :
                ( v3_ordinal1(C)
               => ( r2_hidden(k1_ordinal1(C),k1_ordinal1(f1_s13_ordinal2))
                 => k1_funct_1(B,k1_ordinal1(C)) = f3_s13_ordinal2(C,k1_funct_1(B,C)) ) )
            & ! [C] :
                ( v3_ordinal1(C)
               => ( ( r2_hidden(C,k1_ordinal1(f1_s13_ordinal2))
                    & v4_ordinal1(C) )
                 => ( C = k1_xboole_0
                    | k1_funct_1(B,C) = f4_s13_ordinal2(C,k2_ordinal1(B,C)) ) ) ) ) )
    & ! [A] :
        ( v3_ordinal1(A)
       => ! [B] :
            ( v3_ordinal1(B)
           => ~ ( ? [C] :
                    ( v1_relat_1(C)
                    & v1_funct_1(C)
                    & v5_ordinal1(C)
                    & v1_ordinal2(C)
                    & A = k1_ordinal2(C)
                    & k1_relat_1(C) = k1_ordinal1(f1_s13_ordinal2)
                    & k1_funct_1(C,k1_xboole_0) = f2_s13_ordinal2
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(f1_s13_ordinal2))
                         => k1_funct_1(C,k1_ordinal1(D)) = f3_s13_ordinal2(D,k1_funct_1(C,D)) ) )
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( ( r2_hidden(D,k1_ordinal1(f1_s13_ordinal2))
                            & v4_ordinal1(D) )
                         => ( D = k1_xboole_0
                            | k1_funct_1(C,D) = f4_s13_ordinal2(D,k2_ordinal1(C,D)) ) ) ) )
                & ? [C] :
                    ( v1_relat_1(C)
                    & v1_funct_1(C)
                    & v5_ordinal1(C)
                    & v1_ordinal2(C)
                    & B = k1_ordinal2(C)
                    & k1_relat_1(C) = k1_ordinal1(f1_s13_ordinal2)
                    & k1_funct_1(C,k1_xboole_0) = f2_s13_ordinal2
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(f1_s13_ordinal2))
                         => k1_funct_1(C,k1_ordinal1(D)) = f3_s13_ordinal2(D,k1_funct_1(C,D)) ) )
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( ( r2_hidden(D,k1_ordinal1(f1_s13_ordinal2))
                            & v4_ordinal1(D) )
                         => ( D = k1_xboole_0
                            | k1_funct_1(C,D) = f4_s13_ordinal2(D,k2_ordinal1(C,D)) ) ) ) )
                & A != B ) ) ) ) ).

fof(s14_ordinal2,axiom,
    ( ! [A] :
        ( v3_ordinal1(A)
       => ! [B] :
            ( v3_ordinal1(B)
           => ( B = f1_s14_ordinal2(A)
            <=> ? [C] :
                  ( v1_relat_1(C)
                  & v1_funct_1(C)
                  & v5_ordinal1(C)
                  & v1_ordinal2(C)
                  & B = k1_ordinal2(C)
                  & k1_relat_1(C) = k1_ordinal1(A)
                  & k1_funct_1(C,k1_xboole_0) = f2_s14_ordinal2
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                       => k1_funct_1(C,k1_ordinal1(D)) = f3_s14_ordinal2(D,k1_funct_1(C,D)) ) )
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( ( r2_hidden(D,k1_ordinal1(A))
                          & v4_ordinal1(D) )
                       => ( D = k1_xboole_0
                          | k1_funct_1(C,D) = f4_s14_ordinal2(D,k2_ordinal1(C,D)) ) ) ) ) ) ) )
   => f1_s14_ordinal2(k1_xboole_0) = f2_s14_ordinal2 ) ).

fof(s15_ordinal2,axiom,
    ( ! [A] :
        ( v3_ordinal1(A)
       => ! [B] :
            ( v3_ordinal1(B)
           => ( B = f4_s15_ordinal2(A)
            <=> ? [C] :
                  ( v1_relat_1(C)
                  & v1_funct_1(C)
                  & v5_ordinal1(C)
                  & v1_ordinal2(C)
                  & B = k1_ordinal2(C)
                  & k1_relat_1(C) = k1_ordinal1(A)
                  & k1_funct_1(C,k1_xboole_0) = f1_s15_ordinal2
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                       => k1_funct_1(C,k1_ordinal1(D)) = f2_s15_ordinal2(D,k1_funct_1(C,D)) ) )
                  & ! [D] :
                      ( v3_ordinal1(D)
                     => ( ( r2_hidden(D,k1_ordinal1(A))
                          & v4_ordinal1(D) )
                       => ( D = k1_xboole_0
                          | k1_funct_1(C,D) = f3_s15_ordinal2(D,k2_ordinal1(C,D)) ) ) ) ) ) ) )
   => ! [A] :
        ( v3_ordinal1(A)
       => f4_s15_ordinal2(k1_ordinal1(A)) = f2_s15_ordinal2(A,f4_s15_ordinal2(A)) ) ) ).

fof(s16_ordinal2,axiom,
    ( ( ! [A] :
          ( v3_ordinal1(A)
         => ! [B] :
              ( v3_ordinal1(B)
             => ( B = f3_s16_ordinal2(A)
              <=> ? [C] :
                    ( v1_relat_1(C)
                    & v1_funct_1(C)
                    & v5_ordinal1(C)
                    & v1_ordinal2(C)
                    & B = k1_ordinal2(C)
                    & k1_relat_1(C) = k1_ordinal1(A)
                    & k1_funct_1(C,k1_xboole_0) = f4_s16_ordinal2
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                         => k1_funct_1(C,k1_ordinal1(D)) = f5_s16_ordinal2(D,k1_funct_1(C,D)) ) )
                    & ! [D] :
                        ( v3_ordinal1(D)
                       => ( ( r2_hidden(D,k1_ordinal1(A))
                            & v4_ordinal1(D) )
                         => ( D = k1_xboole_0
                            | k1_funct_1(C,D) = f6_s16_ordinal2(D,k2_ordinal1(C,D)) ) ) ) ) ) ) )
      & f2_s16_ordinal2 != k1_xboole_0
      & v4_ordinal1(f2_s16_ordinal2)
      & k1_relat_1(f1_s16_ordinal2) = f2_s16_ordinal2
      & ! [A] :
          ( v3_ordinal1(A)
         => ( r2_hidden(A,f2_s16_ordinal2)
           => k1_funct_1(f1_s16_ordinal2,A) = f3_s16_ordinal2(A) ) ) )
   => f3_s16_ordinal2(f2_s16_ordinal2) = f6_s16_ordinal2(f2_s16_ordinal2,f1_s16_ordinal2) ) ).

fof(dt_k1_ordinal2,axiom,
    $true ).

fof(dt_k2_ordinal2,axiom,
    $true ).

fof(dt_k3_ordinal2,axiom,
    $true ).

fof(dt_k4_ordinal2,axiom,
    ( v3_ordinal1(k4_ordinal2)
    & ~ v1_xboole_0(k4_ordinal2) ) ).

fof(dt_k5_ordinal2,axiom,
    $true ).

fof(dt_k6_ordinal2,axiom,
    ! [A] : v3_ordinal1(k6_ordinal2(A)) ).

fof(dt_k7_ordinal2,axiom,
    ! [A] : v3_ordinal1(k7_ordinal2(A)) ).

fof(dt_k8_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => v3_ordinal1(k8_ordinal2(A)) ) ).

fof(dt_k9_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => v3_ordinal1(k9_ordinal2(A)) ) ).

fof(dt_k10_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => v3_ordinal1(k10_ordinal2(A)) ) ).

fof(dt_k11_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A) )
     => v3_ordinal1(k11_ordinal2(A)) ) ).

fof(dt_k12_ordinal2,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v5_ordinal1(A)
        & v1_ordinal2(A) )
     => v3_ordinal1(k12_ordinal2(A)) ) ).

fof(dt_k13_ordinal2,axiom,
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & v1_relat_1(B)
        & v1_funct_1(B)
        & v5_ordinal1(B)
        & v1_ordinal2(B) )
     => v3_ordinal1(k13_ordinal2(A,B)) ) ).

fof(dt_k14_ordinal2,axiom,
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & v3_ordinal1(B) )
     => v3_ordinal1(k14_ordinal2(A,B)) ) ).

fof(dt_k15_ordinal2,axiom,
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & v3_ordinal1(B) )
     => v3_ordinal1(k15_ordinal2(A,B)) ) ).

fof(dt_k16_ordinal2,axiom,
    ! [A,B] :
      ( ( v3_ordinal1(A)
        & v3_ordinal1(B) )
     => v3_ordinal1(k16_ordinal2(A,B)) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+31 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Finite Sets
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : finset_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   57 (  18 unt;   0 def)
%            Number of atoms       :  169 (  10 equ)
%            Maximal formula atoms :   10 (   2 avg)
%            Number of connectives :  129 (  17   ~;   2   |;  63   &)
%                                         (   4 <=>;  43  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   17 (  15 usr;   1 prp; 0-2 aty)
%            Number of functors    :   28 (  28 usr;   4 con; 0-8 aty)
%            Number of variables   :  115 ( 109   !;   6   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_finset_1,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_finset_1(A) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( v1_xboole_0(A)
     => v1_finset_1(A) ) ).

fof(rc2_finset_1,axiom,
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & v1_xboole_0(B)
      & v1_relat_1(B)
      & v1_funct_1(B)
      & v2_funct_1(B)
      & v1_ordinal1(B)
      & v2_ordinal1(B)
      & v3_ordinal1(B)
      & v4_ordinal2(B)
      & v1_finset_1(B) ) ).

fof(fc1_finset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(k1_tarski(A))
      & v1_finset_1(k1_tarski(A)) ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B)
          & v1_finset_1(B) ) ) ).

fof(fc2_finset_1,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(k2_tarski(A,B))
      & v1_finset_1(k2_tarski(A,B)) ) ).

fof(fc3_finset_1,axiom,
    ! [A,B,C] : v1_finset_1(k1_enumset1(A,B,C)) ).

fof(fc4_finset_1,axiom,
    ! [A,B,C,D] : v1_finset_1(k2_enumset1(A,B,C,D)) ).

fof(fc5_finset_1,axiom,
    ! [A,B,C,D,E] : v1_finset_1(k3_enumset1(A,B,C,D,E)) ).

fof(fc6_finset_1,axiom,
    ! [A,B,C,D,E,F] : v1_finset_1(k4_enumset1(A,B,C,D,E,F)) ).

fof(fc7_finset_1,axiom,
    ! [A,B,C,D,E,F,G] : v1_finset_1(k5_enumset1(A,B,C,D,E,F,G)) ).

fof(fc8_finset_1,axiom,
    ! [A,B,C,D,E,F,G,H] : v1_finset_1(k6_enumset1(A,B,C,D,E,F,G,H)) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_finset_1(B) ) ) ).

fof(fc9_finset_1,axiom,
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k2_xboole_0(A,B)) ) ).

fof(fc10_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(B)
     => v1_finset_1(k3_xboole_0(A,B)) ) ).

fof(fc11_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(A)
     => v1_finset_1(k3_xboole_0(A,B)) ) ).

fof(fc12_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(A)
     => v1_finset_1(k4_xboole_0(A,B)) ) ).

fof(fc13_finset_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k9_relat_1(A,B)) ) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k2_zfmisc_1(A,B)) ) ).

fof(fc15_finset_1,axiom,
    ! [A,B,C] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B)
        & v1_finset_1(C) )
     => v1_finset_1(k3_zfmisc_1(A,B,C)) ) ).

fof(fc16_finset_1,axiom,
    ! [A,B,C,D] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B)
        & v1_finset_1(C)
        & v1_finset_1(D) )
     => v1_finset_1(k4_zfmisc_1(A,B,C,D)) ) ).

fof(fc17_finset_1,axiom,
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k5_xboole_0(A,B)) ) ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B)
          & v1_finset_1(B) ) ) ).

fof(d1_finset_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
    <=> ? [B] :
          ( v1_relat_1(B)
          & v1_funct_1(B)
          & k2_relat_1(B) = A
          & r2_hidden(k1_relat_1(B),k5_ordinal2) ) ) ).

fof(t1_finset_1,axiom,
    $true ).

fof(t2_finset_1,axiom,
    $true ).

fof(t3_finset_1,axiom,
    $true ).

fof(t4_finset_1,axiom,
    $true ).

fof(t5_finset_1,axiom,
    $true ).

fof(t6_finset_1,axiom,
    $true ).

fof(t7_finset_1,axiom,
    $true ).

fof(t8_finset_1,axiom,
    $true ).

fof(t9_finset_1,axiom,
    $true ).

fof(t10_finset_1,axiom,
    $true ).

fof(t11_finset_1,axiom,
    $true ).

fof(t12_finset_1,axiom,
    $true ).

fof(t13_finset_1,axiom,
    ! [A,B] :
      ( ( r1_tarski(A,B)
        & v1_finset_1(B) )
     => v1_finset_1(A) ) ).

fof(t14_finset_1,axiom,
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k2_xboole_0(A,B)) ) ).

fof(t15_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(A)
     => v1_finset_1(k3_xboole_0(A,B)) ) ).

fof(t16_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(A)
     => v1_finset_1(k4_xboole_0(A,B)) ) ).

fof(t17_finset_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( v1_finset_1(A)
       => v1_finset_1(k9_relat_1(B,A)) ) ) ).

fof(t18_finset_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
         => ~ ( B != k1_xboole_0
              & ! [C] :
                  ~ ( r2_hidden(C,B)
                    & ! [D] :
                        ( ( r2_hidden(D,B)
                          & r1_tarski(C,D) )
                       => D = C ) ) ) ) ) ).

fof(t19_finset_1,axiom,
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k2_zfmisc_1(A,B)) ) ).

fof(t20_finset_1,axiom,
    ! [A,B,C] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B)
        & v1_finset_1(C) )
     => v1_finset_1(k3_zfmisc_1(A,B,C)) ) ).

fof(t21_finset_1,axiom,
    ! [A,B,C,D] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B)
        & v1_finset_1(C)
        & v1_finset_1(D) )
     => v1_finset_1(k4_zfmisc_1(A,B,C,D)) ) ).

fof(t22_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(k2_zfmisc_1(B,A))
     => ( A = k1_xboole_0
        | v1_finset_1(B) ) ) ).

fof(t23_finset_1,axiom,
    ! [A,B] :
      ( v1_finset_1(k2_zfmisc_1(A,B))
     => ( A = k1_xboole_0
        | v1_finset_1(B) ) ) ).

fof(t24_finset_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
    <=> v1_finset_1(k1_zfmisc_1(A)) ) ).

fof(t25_finset_1,axiom,
    ! [A] :
      ( ( v1_finset_1(A)
        & ! [B] :
            ( r2_hidden(B,A)
           => v1_finset_1(B) ) )
    <=> v1_finset_1(k3_tarski(A)) ) ).

fof(t26_finset_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_finset_1(k1_relat_1(A))
       => v1_finset_1(k2_relat_1(A)) ) ) ).

fof(t27_finset_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( ( r1_tarski(A,k2_relat_1(B))
          & v1_finset_1(k10_relat_1(B,A)) )
       => v1_finset_1(A) ) ) ).

fof(t28_finset_1,axiom,
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k5_xboole_0(A,B)) ) ).

fof(t29_finset_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_finset_1(k1_relat_1(A))
      <=> v1_finset_1(A) ) ) ).

fof(t30_finset_1,axiom,
    ! [A] :
      ~ ( v1_finset_1(A)
        & A != k1_xboole_0
        & v6_ordinal1(A)
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C] :
                  ( r2_hidden(C,A)
                 => r1_tarski(B,C) ) ) ) ).

fof(t31_finset_1,axiom,
    ! [A] :
      ~ ( v1_finset_1(A)
        & A != k1_xboole_0
        & v6_ordinal1(A)
        & ! [B] :
            ~ ( r2_hidden(B,A)
              & ! [C] :
                  ( r2_hidden(C,A)
                 => r1_tarski(C,B) ) ) ) ).

fof(s1_finset_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & k1_relat_1(A) = f1_s1_finset_1
      & ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(B,f1_s1_finset_1)
           => ( ( p1_s1_finset_1(B)
               => k1_funct_1(A,B) = f2_s1_finset_1(B) )
              & ( ~ p1_s1_finset_1(B)
               => k1_funct_1(A,B) = f3_s1_finset_1(B) ) ) ) ) ) ).

fof(s2_finset_1,axiom,
    ( ( v1_finset_1(f1_s2_finset_1)
      & p1_s2_finset_1(k1_xboole_0)
      & ! [A,B] :
          ( ( r2_hidden(A,f1_s2_finset_1)
            & r1_tarski(B,f1_s2_finset_1)
            & p1_s2_finset_1(B) )
         => p1_s2_finset_1(k2_xboole_0(B,k1_tarski(A))) ) )
   => p1_s2_finset_1(f1_s2_finset_1) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+34 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Function Domains and Fraenkel Operator
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : fraenkel [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   98 (  17 unt;   0 def)
%            Number of atoms       :  419 (  71 equ)
%            Maximal formula atoms :   17 (   4 avg)
%            Number of connectives :  344 (  23   ~;   2   |; 163   &)
%                                         (  50 <=>; 106  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   6 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   52 (  50 usr;   1 prp; 0-4 aty)
%            Number of functors    :  139 ( 139 usr; 103 con; 0-4 aty)
%            Number of variables   :  215 ( 147   !;  68   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_fraenkel,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_fraenkel(A) ) ).

fof(cc1_fraenkel,axiom,
    ! [A] :
      ( v1_fraenkel(A)
     => ! [B] :
          ( m1_subset_1(B,A)
         => ( v1_relat_1(B)
            & v1_funct_1(B) ) ) ) ).

fof(fc1_fraenkel,axiom,
    ! [A,B] : v1_fraenkel(k1_funct_2(A,B)) ).

fof(fc2_fraenkel,axiom,
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => ( v1_finset_1(k1_funct_2(A,B))
        & v1_fraenkel(k1_funct_2(A,B)) ) ) ).

fof(t1_fraenkel,axiom,
    $true ).

fof(t2_fraenkel,axiom,
    $true ).

fof(t3_fraenkel,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,A,B)
                & m2_relset_1(C,A,B) )
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,A,B)
                    & m2_relset_1(D,A,B) )
                 => ! [E] :
                      ( k7_relat_1(C,E) = k7_relat_1(D,E)
                     => ! [F] :
                          ( m1_subset_1(F,A)
                         => ( r2_hidden(F,E)
                           => k8_funct_2(A,B,C,F) = k8_funct_2(A,B,D,F) ) ) ) ) ) ) ) ).

fof(t4_fraenkel,axiom,
    $true ).

fof(t5_fraenkel,axiom,
    ! [A,B] : r1_tarski(k1_funct_2(A,B),k1_zfmisc_1(k2_zfmisc_1(A,B))) ).

fof(t6_fraenkel,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B,C,D] :
          ( ( r1_tarski(C,B)
            & r1_tarski(D,A) )
         => ( k1_funct_2(C,D) = k1_xboole_0
            | ! [E] :
                ( m1_subset_1(E,k1_funct_2(C,D))
               => ( v1_funct_1(E)
                  & m2_relset_1(E,B,A) ) ) ) ) ) ).

fof(d1_fraenkel,axiom,
    ! [A] :
      ( v1_fraenkel(A)
    <=> ! [B] :
          ( r2_hidden(B,A)
         => ( v1_relat_1(B)
            & v1_funct_1(B) ) ) ) ).

fof(t7_fraenkel,axiom,
    $true ).

fof(t8_fraenkel,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => v1_fraenkel(k1_tarski(A)) ) ).

fof(d2_fraenkel,axiom,
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(C)
        & v1_fraenkel(C) )
     => ( m1_fraenkel(C,A,B)
      <=> ! [D] :
            ( m1_subset_1(D,C)
           => ( v1_funct_1(D)
              & v1_funct_2(D,A,B)
              & m2_relset_1(D,A,B) ) ) ) ) ).

fof(t9_fraenkel,axiom,
    $true ).

fof(t10_fraenkel,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m2_relset_1(C,A,B) )
     => m1_fraenkel(k2_setwiseo(k1_zfmisc_1(k2_zfmisc_1(A,B)),C),A,B) ) ).

fof(t11_fraenkel,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] : m1_fraenkel(k1_funct_2(B,A),B,A) ) ).

fof(t12_fraenkel,axiom,
    $true ).

fof(t13_fraenkel,axiom,
    $true ).

fof(t14_fraenkel,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B,C,D] :
          ( ( r1_tarski(C,B)
            & r1_tarski(D,A) )
         => ( k1_funct_2(C,D) = k1_xboole_0
            | ! [E] :
                ( m1_subset_1(E,k1_funct_2(C,D))
               => ? [F] :
                    ( m2_fraenkel(F,B,A,k1_fraenkel(B,A))
                    & k7_relat_1(F,C) = E ) ) ) ) ) ).

fof(t15_fraenkel,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B,C,D] :
          ( m2_fraenkel(D,B,A,k1_fraenkel(B,A))
         => k7_relat_1(D,C) = k7_relat_1(D,k3_xboole_0(B,C)) ) ) ).

fof(t16_fraenkel,axiom,
    ! [A,B] :
      ( ( v1_finset_1(A)
        & v1_finset_1(B) )
     => v1_finset_1(k1_funct_2(A,B)) ) ).

fof(t17_fraenkel,axiom,
    ! [A] :
      ( v1_fraenkel(A)
     => ! [B] :
          ( r1_tarski(B,A)
         => v1_fraenkel(B) ) ) ).

fof(s23_fraenkel,axiom,
    ( ( ! [A] :
          ( m1_subset_1(A,f1_s23_fraenkel)
         => p1_s23_fraenkel(A,A) )
      & ! [A] :
          ( m1_subset_1(A,f1_s23_fraenkel)
         => ! [B] :
              ( m1_subset_1(B,f1_s23_fraenkel)
             => ! [C] :
                  ( m1_subset_1(C,f1_s23_fraenkel)
                 => ( ( p1_s23_fraenkel(A,B)
                      & p1_s23_fraenkel(B,C) )
                   => p1_s23_fraenkel(A,C) ) ) ) ) )
   => ! [A] :
        ( m1_subset_1(A,f1_s23_fraenkel)
       => ~ ( r2_hidden(A,f2_s23_fraenkel)
            & ! [B] :
                ( m1_subset_1(B,f1_s23_fraenkel)
               => ~ ( r2_hidden(B,f2_s23_fraenkel)
                    & p1_s23_fraenkel(B,A)
                    & ! [C] :
                        ( m1_subset_1(C,f1_s23_fraenkel)
                       => ( ( r2_hidden(C,f2_s23_fraenkel)
                            & p1_s23_fraenkel(C,B) )
                         => p1_s23_fraenkel(B,C) ) ) ) ) ) ) ) ).

fof(s24_fraenkel,axiom,
    ? [A] :
      ( m1_subset_1(A,k5_finsub_1(f1_s24_fraenkel))
      & ! [B] :
          ( m1_subset_1(B,f1_s24_fraenkel)
         => ( r2_hidden(B,A)
          <=> ? [C] :
                ( m1_subset_1(C,f2_s24_fraenkel)
                & r2_hidden(C,f3_s24_fraenkel)
                & B = f4_s24_fraenkel(C)
                & p1_s24_fraenkel(B,C) ) ) ) ) ).

fof(s26_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s26_fraenkel)
       => ~ ( r2_hidden(A,f3_s26_fraenkel)
            & ! [B] :
                ( m1_subset_1(B,f2_s26_fraenkel)
               => ~ p1_s26_fraenkel(A,B) ) ) )
   => ? [A] :
        ( v1_funct_1(A)
        & v1_funct_2(A,f1_s26_fraenkel,f2_s26_fraenkel)
        & m2_relset_1(A,f1_s26_fraenkel,f2_s26_fraenkel)
        & ! [B] :
            ( m1_subset_1(B,f1_s26_fraenkel)
           => ( r2_hidden(B,f3_s26_fraenkel)
             => p1_s26_fraenkel(B,k8_funct_2(f1_s26_fraenkel,f2_s26_fraenkel,A,B)) ) ) ) ) ).

fof(s27_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s27_fraenkel)
       => ~ ( r2_hidden(A,f3_s27_fraenkel)
            & ! [B] :
                ( m1_subset_1(B,f2_s27_fraenkel)
               => ~ p1_s27_fraenkel(A,B) ) ) )
   => ? [A] :
        ( m2_fraenkel(A,f1_s27_fraenkel,f2_s27_fraenkel,k1_fraenkel(f1_s27_fraenkel,f2_s27_fraenkel))
        & ! [B] :
            ( m1_subset_1(B,f1_s27_fraenkel)
           => ( r2_hidden(B,f3_s27_fraenkel)
             => p1_s27_fraenkel(B,k8_funct_2(f1_s27_fraenkel,f2_s27_fraenkel,A,B)) ) ) ) ) ).

fof(dt_m1_fraenkel,axiom,
    ! [A,B,C] :
      ( m1_fraenkel(C,A,B)
     => ( ~ v1_xboole_0(C)
        & v1_fraenkel(C) ) ) ).

fof(existence_m1_fraenkel,axiom,
    ! [A,B] :
    ? [C] : m1_fraenkel(C,A,B) ).

fof(dt_m2_fraenkel,axiom,
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(B)
        & m1_fraenkel(C,A,B) )
     => ! [D] :
          ( m2_fraenkel(D,A,B,C)
         => ( v1_funct_1(D)
            & v1_funct_2(D,A,B)
            & m2_relset_1(D,A,B) ) ) ) ).

fof(existence_m2_fraenkel,axiom,
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(B)
        & m1_fraenkel(C,A,B) )
     => ? [D] : m2_fraenkel(D,A,B,C) ) ).

fof(redefinition_m2_fraenkel,axiom,
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(B)
        & m1_fraenkel(C,A,B) )
     => ! [D] :
          ( m2_fraenkel(D,A,B,C)
        <=> m1_subset_1(D,C) ) ) ).

fof(dt_k1_fraenkel,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => m1_fraenkel(k1_fraenkel(A,B),A,B) ) ).

fof(redefinition_k1_fraenkel,axiom,
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => k1_fraenkel(A,B) = k1_funct_2(A,B) ) ).

fof(s1_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s1_fraenkel)
       => ( p1_s1_fraenkel(A)
         => p2_s1_fraenkel(A) ) )
   => r1_tarski(a_0_0_fraenkel,a_0_1_fraenkel) ) ).

fof(s2_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s2_fraenkel)
       => ! [B] :
            ( m1_subset_1(B,f2_s2_fraenkel)
           => ( p1_s2_fraenkel(A,B)
             => p2_s2_fraenkel(A,B) ) ) )
   => r1_tarski(a_0_2_fraenkel,a_0_3_fraenkel) ) ).

fof(s3_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s3_fraenkel)
       => ( p1_s3_fraenkel(A)
        <=> p2_s3_fraenkel(A) ) )
   => a_0_4_fraenkel = a_0_5_fraenkel ) ).

fof(s4_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s4_fraenkel)
       => ! [B] :
            ( m1_subset_1(B,f2_s4_fraenkel)
           => ( p1_s4_fraenkel(A,B)
            <=> p2_s4_fraenkel(A,B) ) ) )
   => a_0_6_fraenkel = a_0_7_fraenkel ) ).

fof(s5_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s5_fraenkel)
       => f2_s5_fraenkel(A) = f3_s5_fraenkel(A) )
   => a_0_8_fraenkel = a_0_9_fraenkel ) ).

fof(s6_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s6_fraenkel)
       => ( p1_s6_fraenkel(A)
         => f2_s6_fraenkel(A) = f3_s6_fraenkel(A) ) )
   => a_0_10_fraenkel = a_0_11_fraenkel ) ).

fof(s7_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s7_fraenkel)
       => ! [B] :
            ( m1_subset_1(B,f2_s7_fraenkel)
           => f3_s7_fraenkel(A,B) = f4_s7_fraenkel(A,B) ) )
   => a_0_12_fraenkel = a_0_13_fraenkel ) ).

fof(s8_fraenkel,axiom,
    ( ( ! [A] :
          ( m1_subset_1(A,f1_s8_fraenkel)
         => ! [B] :
              ( m1_subset_1(B,f2_s8_fraenkel)
             => ( p1_s8_fraenkel(A,B)
              <=> p2_s8_fraenkel(A,B) ) ) )
      & ! [A] :
          ( m1_subset_1(A,f1_s8_fraenkel)
         => ! [B] :
              ( m1_subset_1(B,f2_s8_fraenkel)
             => f3_s8_fraenkel(A,B) = f3_s8_fraenkel(B,A) ) ) )
   => a_0_14_fraenkel = a_0_15_fraenkel ) ).

fof(s9_fraenkel,axiom,
    ( ( k7_relat_1(f4_s9_fraenkel,f3_s9_fraenkel) = k7_relat_1(f5_s9_fraenkel,f3_s9_fraenkel)
      & ! [A] :
          ( m1_subset_1(A,f1_s9_fraenkel)
         => ( r2_hidden(A,f3_s9_fraenkel)
           => ( p1_s9_fraenkel(A)
            <=> p2_s9_fraenkel(A) ) ) ) )
   => a_0_16_fraenkel = a_0_17_fraenkel ) ).

fof(s10_fraenkel,axiom,
    r1_tarski(a_0_18_fraenkel,f1_s10_fraenkel) ).

fof(s11_fraenkel,axiom,
    ( ! [A] :
        ( r2_hidden(A,a_0_19_fraenkel)
       => p2_s11_fraenkel(A) )
   => ! [A] :
        ( m1_subset_1(A,f1_s11_fraenkel)
       => ! [B] :
            ( m1_subset_1(B,f2_s11_fraenkel)
           => ( p1_s11_fraenkel(A,B)
             => p2_s11_fraenkel(f3_s11_fraenkel(A,B)) ) ) ) ) ).

fof(s12_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s12_fraenkel)
       => ! [B] :
            ( m1_subset_1(B,f2_s12_fraenkel)
           => ( p1_s12_fraenkel(A,B)
             => p2_s12_fraenkel(f3_s12_fraenkel(A,B)) ) ) )
   => ! [A] :
        ( r2_hidden(A,a_0_20_fraenkel)
       => p2_s12_fraenkel(A) ) ) ).

fof(s13_fraenkel,axiom,
    a_0_21_fraenkel = a_0_23_fraenkel ).

fof(s14_fraenkel,axiom,
    a_0_24_fraenkel = a_0_26_fraenkel ).

fof(s15_fraenkel,axiom,
    a_0_27_fraenkel = a_0_29_fraenkel ).

fof(s16_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s16_fraenkel)
       => ! [B] :
            ( m1_subset_1(B,f2_s16_fraenkel)
           => ~ ( p1_s16_fraenkel(A,B)
                & ! [C] :
                    ( m1_subset_1(C,f1_s16_fraenkel)
                   => ~ ( p2_s16_fraenkel(C,B)
                        & f3_s16_fraenkel(A,B) = f3_s16_fraenkel(C,B) ) ) ) ) )
   => r1_tarski(a_0_30_fraenkel,a_0_31_fraenkel) ) ).

fof(s17_fraenkel,axiom,
    r1_tarski(a_0_32_fraenkel,f2_s17_fraenkel) ).

fof(s18_fraenkel,axiom,
    r1_xboole_0(a_0_33_fraenkel,f2_s18_fraenkel) ).

fof(s19_fraenkel,axiom,
    ( ! [A] :
        ( m1_subset_1(A,f1_s19_fraenkel)
       => ! [B] :
            ( m1_subset_1(B,f2_s19_fraenkel)
           => ( p2_s19_fraenkel(A,B)
            <=> ( B = f4_s19_fraenkel
                & p1_s19_fraenkel(A,B) ) ) ) )
   => a_0_34_fraenkel = a_0_35_fraenkel ) ).

fof(s20_fraenkel,axiom,
    a_0_36_fraenkel = a_0_37_fraenkel ).

fof(s21_fraenkel,axiom,
    ( v1_finset_1(f2_s21_fraenkel)
   => v1_finset_1(a_0_38_fraenkel) ) ).

fof(s22_fraenkel,axiom,
    ( ( v1_finset_1(f3_s22_fraenkel)
      & v1_finset_1(f4_s22_fraenkel) )
   => v1_finset_1(a_0_39_fraenkel) ) ).

fof(s25_fraenkel,axiom,
    ( ( v1_finset_1(f3_s25_fraenkel)
      & v1_finset_1(f4_s25_fraenkel)
      & ! [A] :
          ( m2_fraenkel(A,f1_s25_fraenkel,f2_s25_fraenkel,k1_fraenkel(f1_s25_fraenkel,f2_s25_fraenkel))
         => ! [B] :
              ( m2_fraenkel(B,f1_s25_fraenkel,f2_s25_fraenkel,k1_fraenkel(f1_s25_fraenkel,f2_s25_fraenkel))
             => ( k7_relat_1(A,f3_s25_fraenkel) = k7_relat_1(B,f3_s25_fraenkel)
               => f5_s25_fraenkel(A) = f5_s25_fraenkel(B) ) ) ) )
   => v1_finset_1(a_0_40_fraenkel) ) ).

fof(fraenkel_a_0_0_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_0_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s1_fraenkel)
          & A = f2_s1_fraenkel(B)
          & p1_s1_fraenkel(B) ) ) ).

fof(fraenkel_a_0_1_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_1_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s1_fraenkel)
          & A = f2_s1_fraenkel(B)
          & p2_s1_fraenkel(B) ) ) ).

fof(fraenkel_a_0_2_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_2_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s2_fraenkel)
          & m1_subset_1(C,f2_s2_fraenkel)
          & A = f3_s2_fraenkel(B,C)
          & p1_s2_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_3_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_3_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s2_fraenkel)
          & m1_subset_1(C,f2_s2_fraenkel)
          & A = f3_s2_fraenkel(B,C)
          & p2_s2_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_4_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_4_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s3_fraenkel)
          & A = f2_s3_fraenkel(B)
          & p1_s3_fraenkel(B) ) ) ).

fof(fraenkel_a_0_5_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_5_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s3_fraenkel)
          & A = f2_s3_fraenkel(B)
          & p2_s3_fraenkel(B) ) ) ).

fof(fraenkel_a_0_6_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_6_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s4_fraenkel)
          & m1_subset_1(C,f2_s4_fraenkel)
          & A = f3_s4_fraenkel(B,C)
          & p1_s4_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_7_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_7_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s4_fraenkel)
          & m1_subset_1(C,f2_s4_fraenkel)
          & A = f3_s4_fraenkel(B,C)
          & p2_s4_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_8_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_8_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s5_fraenkel)
          & A = f2_s5_fraenkel(B)
          & p1_s5_fraenkel(B) ) ) ).

fof(fraenkel_a_0_9_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_9_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s5_fraenkel)
          & A = f3_s5_fraenkel(B)
          & p1_s5_fraenkel(B) ) ) ).

fof(fraenkel_a_0_10_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_10_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s6_fraenkel)
          & A = f2_s6_fraenkel(B)
          & p1_s6_fraenkel(B) ) ) ).

fof(fraenkel_a_0_11_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_11_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s6_fraenkel)
          & A = f3_s6_fraenkel(B)
          & p1_s6_fraenkel(B) ) ) ).

fof(fraenkel_a_0_12_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_12_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s7_fraenkel)
          & m1_subset_1(C,f2_s7_fraenkel)
          & A = f3_s7_fraenkel(B,C)
          & p1_s7_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_13_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_13_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s7_fraenkel)
          & m1_subset_1(C,f2_s7_fraenkel)
          & A = f4_s7_fraenkel(B,C)
          & p1_s7_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_14_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_14_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s8_fraenkel)
          & m1_subset_1(C,f2_s8_fraenkel)
          & A = f3_s8_fraenkel(B,C)
          & p1_s8_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_15_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_15_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s8_fraenkel)
          & m1_subset_1(C,f2_s8_fraenkel)
          & A = f3_s8_fraenkel(C,B)
          & p2_s8_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_16_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_16_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s9_fraenkel)
          & A = k8_funct_2(f1_s9_fraenkel,f2_s9_fraenkel,f4_s9_fraenkel,B)
          & p1_s9_fraenkel(B)
          & r2_hidden(B,f3_s9_fraenkel) ) ) ).

fof(fraenkel_a_0_17_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_17_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s9_fraenkel)
          & A = k8_funct_2(f1_s9_fraenkel,f2_s9_fraenkel,f5_s9_fraenkel,B)
          & p2_s9_fraenkel(B)
          & r2_hidden(B,f3_s9_fraenkel) ) ) ).

fof(fraenkel_a_0_18_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_18_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s10_fraenkel)
          & A = B
          & p1_s10_fraenkel(B) ) ) ).

fof(fraenkel_a_0_19_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_19_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s11_fraenkel)
          & m1_subset_1(C,f2_s11_fraenkel)
          & A = f3_s11_fraenkel(B,C)
          & p1_s11_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_20_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_20_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s12_fraenkel)
          & m1_subset_1(C,f2_s12_fraenkel)
          & A = f3_s12_fraenkel(B,C)
          & p1_s12_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_21_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_21_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f3_s13_fraenkel)
          & A = B
          & r2_hidden(B,a_0_22_fraenkel)
          & p2_s13_fraenkel(B) ) ) ).

fof(fraenkel_a_0_22_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_22_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s13_fraenkel)
          & m1_subset_1(C,f2_s13_fraenkel)
          & A = f4_s13_fraenkel(B,C)
          & p1_s13_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_23_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_23_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s13_fraenkel)
          & m1_subset_1(C,f2_s13_fraenkel)
          & A = f4_s13_fraenkel(B,C)
          & p1_s13_fraenkel(B,C)
          & p2_s13_fraenkel(f4_s13_fraenkel(B,C)) ) ) ).

fof(fraenkel_a_0_24_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_24_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s14_fraenkel)
          & A = f2_s14_fraenkel(B)
          & r2_hidden(B,a_0_25_fraenkel)
          & p1_s14_fraenkel(B) ) ) ).

fof(fraenkel_a_0_25_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_25_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s14_fraenkel)
          & A = B
          & p2_s14_fraenkel(B) ) ) ).

fof(fraenkel_a_0_26_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_26_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s14_fraenkel)
          & A = f2_s14_fraenkel(B)
          & p2_s14_fraenkel(B)
          & p1_s14_fraenkel(B) ) ) ).

fof(fraenkel_a_0_27_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_27_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s15_fraenkel)
          & m1_subset_1(C,f2_s15_fraenkel)
          & A = f3_s15_fraenkel(B,C)
          & r2_hidden(B,a_0_28_fraenkel)
          & p1_s15_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_28_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_28_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s15_fraenkel)
          & A = B
          & p2_s15_fraenkel(B) ) ) ).

fof(fraenkel_a_0_29_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_29_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s15_fraenkel)
          & m1_subset_1(C,f2_s15_fraenkel)
          & A = f3_s15_fraenkel(B,C)
          & p2_s15_fraenkel(B)
          & p1_s15_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_30_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_30_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s16_fraenkel)
          & m1_subset_1(C,f2_s16_fraenkel)
          & A = f3_s16_fraenkel(B,C)
          & p1_s16_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_31_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_31_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s16_fraenkel)
          & m1_subset_1(C,f2_s16_fraenkel)
          & A = f3_s16_fraenkel(B,C)
          & p2_s16_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_32_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_32_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s17_fraenkel)
          & A = f3_s17_fraenkel(B)
          & r2_hidden(f3_s17_fraenkel(B),f2_s17_fraenkel)
          & p1_s17_fraenkel(B) ) ) ).

fof(fraenkel_a_0_33_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_33_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s18_fraenkel)
          & A = f3_s18_fraenkel(B)
          & p1_s18_fraenkel(B)
          & ~ r2_hidden(f3_s18_fraenkel(B),f2_s18_fraenkel) ) ) ).

fof(fraenkel_a_0_34_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_34_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s19_fraenkel)
          & m1_subset_1(C,f2_s19_fraenkel)
          & A = f3_s19_fraenkel(B,C)
          & p2_s19_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_35_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_35_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s19_fraenkel)
          & A = f3_s19_fraenkel(B,f4_s19_fraenkel)
          & p1_s19_fraenkel(B,f4_s19_fraenkel) ) ) ).

fof(fraenkel_a_0_36_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_36_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s20_fraenkel)
          & m1_subset_1(C,f2_s20_fraenkel)
          & A = f3_s20_fraenkel(B,C)
          & C = f4_s20_fraenkel
          & p1_s20_fraenkel(B,C) ) ) ).

fof(fraenkel_a_0_37_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_37_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s20_fraenkel)
          & A = f3_s20_fraenkel(B,f4_s20_fraenkel)
          & p1_s20_fraenkel(B,f4_s20_fraenkel) ) ) ).

fof(fraenkel_a_0_38_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_38_fraenkel)
    <=> ? [B] :
          ( m1_subset_1(B,f1_s21_fraenkel)
          & A = f3_s21_fraenkel(B)
          & r2_hidden(B,f2_s21_fraenkel) ) ) ).

fof(fraenkel_a_0_39_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_39_fraenkel)
    <=> ? [B,C] :
          ( m1_subset_1(B,f1_s22_fraenkel)
          & m1_subset_1(C,f2_s22_fraenkel)
          & A = f5_s22_fraenkel(B,C)
          & r2_hidden(B,f3_s22_fraenkel)
          & r2_hidden(C,f4_s22_fraenkel) ) ) ).

fof(fraenkel_a_0_40_fraenkel,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_40_fraenkel)
    <=> ? [B] :
          ( m2_fraenkel(B,f1_s25_fraenkel,f2_s25_fraenkel,k1_fraenkel(f1_s25_fraenkel,f2_s25_fraenkel))
          & A = f5_s25_fraenkel(B)
          & r1_tarski(k2_funct_2(f1_s25_fraenkel,f2_s25_fraenkel,B,f3_s25_fraenkel),f4_s25_fraenkel) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+35 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Subsets of Complex Numbers
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : numbers [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   45 (  44 unt;   0 def)
%            Number of atoms       :   48 (  17 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   17 (  14   ~;   0   |;   2   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   1 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :    7 (   5 usr;   1 prp; 0-2 aty)
%            Number of functors    :   20 (  20 usr;  11 con; 0-2 aty)
%            Number of variables   :    2 (   1   !;   1   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(fc1_numbers,axiom,
    ~ v1_xboole_0(k1_numbers) ).

fof(fc2_numbers,axiom,
    ~ v1_xboole_0(k2_numbers) ).

fof(fc3_numbers,axiom,
    ~ v1_xboole_0(k3_numbers) ).

fof(fc4_numbers,axiom,
    ~ v1_xboole_0(k4_numbers) ).

fof(d1_numbers,axiom,
    k1_numbers = k4_xboole_0(k2_xboole_0(k2_arytm_2,k2_zfmisc_1(k1_tarski(np__0),k2_arytm_2)),k1_tarski(k4_tarski(np__0,np__0))) ).

fof(d3_numbers,axiom,
    k3_numbers = k4_xboole_0(k2_xboole_0(k6_arytm_3,k2_zfmisc_1(k1_tarski(np__0),k6_arytm_3)),k1_tarski(k4_tarski(np__0,np__0))) ).

fof(d4_numbers,axiom,
    k4_numbers = k4_xboole_0(k2_xboole_0(k5_ordinal2,k2_zfmisc_1(k1_tarski(np__0),k5_ordinal2)),k1_tarski(k4_tarski(np__0,np__0))) ).

fof(t1_numbers,axiom,
    r2_xboole_0(k1_numbers,k2_numbers) ).

fof(t2_numbers,axiom,
    r2_xboole_0(k3_numbers,k1_numbers) ).

fof(t3_numbers,axiom,
    r2_xboole_0(k3_numbers,k2_numbers) ).

fof(t4_numbers,axiom,
    r2_xboole_0(k4_numbers,k3_numbers) ).

fof(t5_numbers,axiom,
    r2_xboole_0(k4_numbers,k1_numbers) ).

fof(t6_numbers,axiom,
    r2_xboole_0(k4_numbers,k2_numbers) ).

fof(t7_numbers,axiom,
    r2_xboole_0(k5_numbers,k4_numbers) ).

fof(t8_numbers,axiom,
    r2_xboole_0(k5_numbers,k3_numbers) ).

fof(t9_numbers,axiom,
    r2_xboole_0(k5_numbers,k1_numbers) ).

fof(t10_numbers,axiom,
    r2_xboole_0(k5_numbers,k2_numbers) ).

fof(t11_numbers,axiom,
    r1_tarski(k1_numbers,k2_numbers) ).

fof(t12_numbers,axiom,
    r1_tarski(k3_numbers,k1_numbers) ).

fof(t13_numbers,axiom,
    r1_tarski(k3_numbers,k2_numbers) ).

fof(t14_numbers,axiom,
    r1_tarski(k4_numbers,k3_numbers) ).

fof(t15_numbers,axiom,
    r1_tarski(k4_numbers,k1_numbers) ).

fof(t16_numbers,axiom,
    r1_tarski(k4_numbers,k2_numbers) ).

fof(t17_numbers,axiom,
    r1_tarski(k5_numbers,k4_numbers) ).

fof(t18_numbers,axiom,
    r1_tarski(k5_numbers,k3_numbers) ).

fof(t19_numbers,axiom,
    r1_tarski(k5_numbers,k1_numbers) ).

fof(t20_numbers,axiom,
    r1_tarski(k5_numbers,k2_numbers) ).

fof(t21_numbers,axiom,
    k1_numbers != k2_numbers ).

fof(t22_numbers,axiom,
    k3_numbers != k1_numbers ).

fof(t23_numbers,axiom,
    k3_numbers != k2_numbers ).

fof(t24_numbers,axiom,
    k4_numbers != k3_numbers ).

fof(t25_numbers,axiom,
    k4_numbers != k1_numbers ).

fof(t26_numbers,axiom,
    k4_numbers != k2_numbers ).

fof(t27_numbers,axiom,
    k5_numbers != k4_numbers ).

fof(t28_numbers,axiom,
    k5_numbers != k3_numbers ).

fof(t29_numbers,axiom,
    k5_numbers != k1_numbers ).

fof(t30_numbers,axiom,
    k5_numbers != k2_numbers ).

fof(dt_k1_numbers,axiom,
    $true ).

fof(dt_k2_numbers,axiom,
    $true ).

fof(dt_k3_numbers,axiom,
    $true ).

fof(dt_k4_numbers,axiom,
    $true ).

fof(dt_k5_numbers,axiom,
    m1_subset_1(k5_numbers,k1_zfmisc_1(k1_numbers)) ).

fof(redefinition_k5_numbers,axiom,
    k5_numbers = k5_ordinal2 ).

fof(d2_numbers,axiom,
    k2_numbers = k2_xboole_0(k4_xboole_0(k1_funct_2(k2_tarski(np__0,k13_arytm_3),k1_numbers),a_0_0_numbers),k1_numbers) ).

fof(fraenkel_a_0_0_numbers,axiom,
    ! [A] :
      ( r2_hidden(A,a_0_0_numbers)
    <=> ? [B] :
          ( m1_subset_1(B,k1_funct_2(k2_tarski(np__0,k13_arytm_3),k1_numbers))
          & A = B
          & k1_funct_1(B,k13_arytm_3) = np__0 ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+40 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Introduction to Arithmetic of Real Numbers
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : xreal_0 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   48 (   0 unt;   0 def)
%            Number of atoms       :  295 (   4 equ)
%            Maximal formula atoms :   25 (   6 avg)
%            Number of connectives :  339 (  92   ~;   1   |; 194   &)
%                                         (   6 <=>;  46  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   7 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-2 aty)
%            Number of functors    :   12 (  12 usr;   3 con; 0-2 aty)
%            Number of variables   :   79 (  71   !;   8   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(cc1_xreal_0,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => v1_xreal_0(A) ) ).

fof(cc2_xreal_0,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => v1_xcmplx_0(A) ) ).

fof(rc1_xreal_0,axiom,
    ? [A] :
      ( v1_xcmplx_0(A)
      & v1_xreal_0(A) ) ).

fof(fc1_xreal_0,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( v1_xcmplx_0(k4_xcmplx_0(A))
        & v1_xreal_0(k4_xcmplx_0(A)) ) ) ).

fof(fc2_xreal_0,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( v1_xcmplx_0(k5_xcmplx_0(A))
        & v1_xreal_0(k5_xcmplx_0(A)) ) ) ).

fof(fc3_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v1_xreal_0(B) )
     => ( v1_xcmplx_0(k2_xcmplx_0(A,B))
        & v1_xreal_0(k2_xcmplx_0(A,B)) ) ) ).

fof(fc4_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v1_xreal_0(B) )
     => ( v1_xcmplx_0(k3_xcmplx_0(A,B))
        & v1_xreal_0(k3_xcmplx_0(A,B)) ) ) ).

fof(fc5_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v1_xreal_0(B) )
     => ( v1_xcmplx_0(k6_xcmplx_0(A,B))
        & v1_xreal_0(k6_xcmplx_0(A,B)) ) ) ).

fof(fc6_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v1_xreal_0(B) )
     => ( v1_xcmplx_0(k7_xcmplx_0(A,B))
        & v1_xreal_0(k7_xcmplx_0(A,B)) ) ) ).

fof(cc3_xreal_0,axiom,
    ! [A] :
      ( ( v1_xreal_0(A)
        & v2_xreal_0(A) )
     => ( ~ v1_xboole_0(A)
        & v1_xcmplx_0(A)
        & v1_xreal_0(A)
        & ~ v3_xreal_0(A) ) ) ).

fof(cc4_xreal_0,axiom,
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_xreal_0(A)
        & ~ v3_xreal_0(A) )
     => ( v1_xcmplx_0(A)
        & v1_xreal_0(A)
        & v2_xreal_0(A) ) ) ).

fof(cc5_xreal_0,axiom,
    ! [A] :
      ( ( v1_xreal_0(A)
        & v3_xreal_0(A) )
     => ( ~ v1_xboole_0(A)
        & v1_xcmplx_0(A)
        & v1_xreal_0(A)
        & ~ v2_xreal_0(A) ) ) ).

fof(cc6_xreal_0,axiom,
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_xreal_0(A)
        & ~ v2_xreal_0(A) )
     => ( v1_xcmplx_0(A)
        & v1_xreal_0(A)
        & v3_xreal_0(A) ) ) ).

fof(cc7_xreal_0,axiom,
    ! [A] :
      ( ( v1_xboole_0(A)
        & v1_xreal_0(A) )
     => ( v1_xcmplx_0(A)
        & v1_xreal_0(A)
        & ~ v2_xreal_0(A)
        & ~ v3_xreal_0(A) ) ) ).

fof(cc8_xreal_0,axiom,
    ! [A] :
      ( ( v1_xreal_0(A)
        & ~ v2_xreal_0(A)
        & ~ v3_xreal_0(A) )
     => ( v1_xboole_0(A)
        & v1_xcmplx_0(A)
        & v1_xreal_0(A) ) ) ).

fof(rc2_xreal_0,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_xcmplx_0(A)
      & v1_xreal_0(A)
      & v2_xreal_0(A)
      & ~ v3_xreal_0(A) ) ).

fof(rc3_xreal_0,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_xcmplx_0(A)
      & v1_xreal_0(A)
      & ~ v2_xreal_0(A)
      & v3_xreal_0(A) ) ).

fof(rc4_xreal_0,axiom,
    ? [A] :
      ( v1_xboole_0(A)
      & v1_xcmplx_0(A)
      & v1_xreal_0(A)
      & ~ v2_xreal_0(A)
      & ~ v3_xreal_0(A) ) ).

fof(fc7_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( v1_xcmplx_0(k2_xcmplx_0(A,B))
        & v1_xreal_0(k2_xcmplx_0(A,B))
        & ~ v3_xreal_0(k2_xcmplx_0(A,B)) ) ) ).

fof(fc8_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( v1_xcmplx_0(k2_xcmplx_0(A,B))
        & v1_xreal_0(k2_xcmplx_0(A,B))
        & ~ v2_xreal_0(k2_xcmplx_0(A,B)) ) ) ).

fof(fc9_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( ~ v1_xboole_0(k2_xcmplx_0(A,B))
        & v1_xcmplx_0(k2_xcmplx_0(A,B))
        & v1_xreal_0(k2_xcmplx_0(A,B))
        & v2_xreal_0(k2_xcmplx_0(A,B))
        & ~ v3_xreal_0(k2_xcmplx_0(A,B)) ) ) ).

fof(fc10_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( ~ v1_xboole_0(k2_xcmplx_0(B,A))
        & v1_xcmplx_0(k2_xcmplx_0(B,A))
        & v1_xreal_0(k2_xcmplx_0(B,A))
        & v2_xreal_0(k2_xcmplx_0(B,A))
        & ~ v3_xreal_0(k2_xcmplx_0(B,A)) ) ) ).

fof(fc11_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( ~ v1_xboole_0(k2_xcmplx_0(A,B))
        & v1_xcmplx_0(k2_xcmplx_0(A,B))
        & v1_xreal_0(k2_xcmplx_0(A,B))
        & ~ v2_xreal_0(k2_xcmplx_0(A,B))
        & v3_xreal_0(k2_xcmplx_0(A,B)) ) ) ).

fof(fc12_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( ~ v1_xboole_0(k2_xcmplx_0(B,A))
        & v1_xcmplx_0(k2_xcmplx_0(B,A))
        & v1_xreal_0(k2_xcmplx_0(B,A))
        & ~ v2_xreal_0(k2_xcmplx_0(B,A))
        & v3_xreal_0(k2_xcmplx_0(B,A)) ) ) ).

fof(fc13_xreal_0,axiom,
    ! [A] :
      ( ( v1_xreal_0(A)
        & ~ v2_xreal_0(A) )
     => ( v1_xcmplx_0(k4_xcmplx_0(A))
        & v1_xreal_0(k4_xcmplx_0(A))
        & ~ v3_xreal_0(k4_xcmplx_0(A)) ) ) ).

fof(fc14_xreal_0,axiom,
    ! [A] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A) )
     => ( v1_xcmplx_0(k4_xcmplx_0(A))
        & v1_xreal_0(k4_xcmplx_0(A))
        & ~ v2_xreal_0(k4_xcmplx_0(A)) ) ) ).

fof(fc15_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( v1_xcmplx_0(k6_xcmplx_0(A,B))
        & v1_xreal_0(k6_xcmplx_0(A,B))
        & ~ v3_xreal_0(k6_xcmplx_0(A,B)) ) ) ).

fof(fc16_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( v1_xcmplx_0(k6_xcmplx_0(B,A))
        & v1_xreal_0(k6_xcmplx_0(B,A))
        & ~ v2_xreal_0(k6_xcmplx_0(B,A)) ) ) ).

fof(fc17_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( ~ v1_xboole_0(k6_xcmplx_0(A,B))
        & v1_xcmplx_0(k6_xcmplx_0(A,B))
        & v1_xreal_0(k6_xcmplx_0(A,B))
        & v2_xreal_0(k6_xcmplx_0(A,B))
        & ~ v3_xreal_0(k6_xcmplx_0(A,B)) ) ) ).

fof(fc18_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( ~ v1_xboole_0(k6_xcmplx_0(B,A))
        & v1_xcmplx_0(k6_xcmplx_0(B,A))
        & v1_xreal_0(k6_xcmplx_0(B,A))
        & ~ v2_xreal_0(k6_xcmplx_0(B,A))
        & v3_xreal_0(k6_xcmplx_0(B,A)) ) ) ).

fof(fc19_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( ~ v1_xboole_0(k6_xcmplx_0(A,B))
        & v1_xcmplx_0(k6_xcmplx_0(A,B))
        & v1_xreal_0(k6_xcmplx_0(A,B))
        & ~ v2_xreal_0(k6_xcmplx_0(A,B))
        & v3_xreal_0(k6_xcmplx_0(A,B)) ) ) ).

fof(fc20_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( ~ v1_xboole_0(k6_xcmplx_0(B,A))
        & v1_xcmplx_0(k6_xcmplx_0(B,A))
        & v1_xreal_0(k6_xcmplx_0(B,A))
        & v2_xreal_0(k6_xcmplx_0(B,A))
        & ~ v3_xreal_0(k6_xcmplx_0(B,A)) ) ) ).

fof(fc21_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( v1_xcmplx_0(k3_xcmplx_0(A,B))
        & v1_xreal_0(k3_xcmplx_0(A,B))
        & ~ v2_xreal_0(k3_xcmplx_0(A,B)) ) ) ).

fof(fc22_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( v1_xcmplx_0(k3_xcmplx_0(B,A))
        & v1_xreal_0(k3_xcmplx_0(B,A))
        & ~ v2_xreal_0(k3_xcmplx_0(B,A)) ) ) ).

fof(fc23_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( v1_xcmplx_0(k3_xcmplx_0(A,B))
        & v1_xreal_0(k3_xcmplx_0(A,B))
        & ~ v3_xreal_0(k3_xcmplx_0(A,B)) ) ) ).

fof(fc24_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( v1_xcmplx_0(k3_xcmplx_0(A,B))
        & v1_xreal_0(k3_xcmplx_0(A,B))
        & ~ v3_xreal_0(k3_xcmplx_0(A,B)) ) ) ).

fof(fc25_xreal_0,axiom,
    ! [A] :
      ( ( v1_xreal_0(A)
        & ~ v2_xreal_0(A) )
     => ( v1_xcmplx_0(k5_xcmplx_0(A))
        & v1_xreal_0(k5_xcmplx_0(A))
        & ~ v2_xreal_0(k5_xcmplx_0(A)) ) ) ).

fof(fc26_xreal_0,axiom,
    ! [A] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A) )
     => ( v1_xcmplx_0(k5_xcmplx_0(A))
        & v1_xreal_0(k5_xcmplx_0(A))
        & ~ v3_xreal_0(k5_xcmplx_0(A)) ) ) ).

fof(fc27_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( v1_xcmplx_0(k7_xcmplx_0(A,B))
        & v1_xreal_0(k7_xcmplx_0(A,B))
        & ~ v2_xreal_0(k7_xcmplx_0(A,B)) ) ) ).

fof(fc28_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( v1_xcmplx_0(k7_xcmplx_0(B,A))
        & v1_xreal_0(k7_xcmplx_0(B,A))
        & ~ v2_xreal_0(k7_xcmplx_0(B,A)) ) ) ).

fof(fc29_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v3_xreal_0(B) )
     => ( v1_xcmplx_0(k7_xcmplx_0(A,B))
        & v1_xreal_0(k7_xcmplx_0(A,B))
        & ~ v3_xreal_0(k7_xcmplx_0(A,B)) ) ) ).

fof(fc30_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & ~ v2_xreal_0(A)
        & v1_xreal_0(B)
        & ~ v2_xreal_0(B) )
     => ( v1_xcmplx_0(k7_xcmplx_0(A,B))
        & v1_xreal_0(k7_xcmplx_0(A,B))
        & ~ v3_xreal_0(k7_xcmplx_0(A,B)) ) ) ).

fof(d1_xreal_0,axiom,
    ! [A] :
      ( v1_xreal_0(A)
    <=> r2_hidden(A,k1_numbers) ) ).

fof(d2_xreal_0,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ! [B] :
          ( v1_xreal_0(B)
         => ( ( ( r2_hidden(A,k2_arytm_2)
                & r2_hidden(B,k2_arytm_2) )
             => ( r1_xreal_0(A,B)
              <=> ? [C] :
                    ( m1_subset_1(C,k2_arytm_2)
                    & ? [D] :
                        ( m1_subset_1(D,k2_arytm_2)
                        & A = C
                        & B = D
                        & r1_arytm_2(C,D) ) ) ) )
            & ( ( r2_hidden(A,k2_zfmisc_1(k1_tarski(np__0),k2_arytm_2))
                & r2_hidden(B,k2_zfmisc_1(k1_tarski(np__0),k2_arytm_2)) )
             => ( r1_xreal_0(A,B)
              <=> ? [C] :
                    ( m1_subset_1(C,k2_arytm_2)
                    & ? [D] :
                        ( m1_subset_1(D,k2_arytm_2)
                        & A = k4_tarski(np__0,C)
                        & B = k4_tarski(np__0,D)
                        & r1_arytm_2(D,C) ) ) ) )
            & ~ ( ~ ( r2_hidden(A,k2_arytm_2)
                    & r2_hidden(B,k2_arytm_2) )
                & ~ ( r2_hidden(A,k2_zfmisc_1(k1_tarski(np__0),k2_arytm_2))
                    & r2_hidden(B,k2_zfmisc_1(k1_tarski(np__0),k2_arytm_2)) )
                & ~ ( r1_xreal_0(A,B)
                  <=> ( r2_hidden(B,k2_arytm_2)
                      & r2_hidden(A,k2_zfmisc_1(k1_tarski(np__0),k2_arytm_2)) ) ) ) ) ) ) ).

fof(d3_xreal_0,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( v2_xreal_0(A)
      <=> ~ r1_xreal_0(A,np__0) ) ) ).

fof(d4_xreal_0,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( v3_xreal_0(A)
      <=> ~ r1_xreal_0(np__0,A) ) ) ).

fof(reflexivity_r1_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v1_xreal_0(B) )
     => r1_xreal_0(A,A) ) ).

fof(connectedness_r1_xreal_0,axiom,
    ! [A,B] :
      ( ( v1_xreal_0(A)
        & v1_xreal_0(B) )
     => ( r1_xreal_0(A,B)
        | r1_xreal_0(B,A) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+48 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Integers
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : int_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  121 (  29 unt;   0 def)
%            Number of atoms       :  430 (  53 equ)
%            Maximal formula atoms :   10 (   3 avg)
%            Number of connectives :  351 (  42   ~;   7   |;  97   &)
%                                         (  18 <=>; 187  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   23 (  21 usr;   1 prp; 0-3 aty)
%            Number of functors    :   23 (  23 usr;  10 con; 0-2 aty)
%            Number of variables   :  173 ( 164   !;   9   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_int_1,axiom,
    ? [A] :
      ( m1_subset_1(A,k1_numbers)
      & v1_xcmplx_0(A)
      & v1_xreal_0(A)
      & v1_int_1(A) ) ).

fof(rc2_int_1,axiom,
    ? [A] : v1_int_1(A) ).

fof(cc1_int_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k4_numbers)
     => v1_int_1(A) ) ).

fof(cc2_int_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k5_numbers)
     => ( v1_ordinal1(A)
        & v2_ordinal1(A)
        & v3_ordinal1(A)
        & v4_ordinal2(A)
        & v1_xcmplx_0(A)
        & v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_int_1(A) ) ) ).

fof(cc3_int_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => v1_int_1(A) ) ).

fof(cc4_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ( v1_xcmplx_0(A)
        & v1_xreal_0(A) ) ) ).

fof(fc1_int_1,axiom,
    ! [A,B] :
      ( ( v1_int_1(A)
        & v1_int_1(B) )
     => ( v1_xcmplx_0(k2_xcmplx_0(A,B))
        & v1_xreal_0(k2_xcmplx_0(A,B))
        & v1_int_1(k2_xcmplx_0(A,B)) ) ) ).

fof(fc2_int_1,axiom,
    ! [A,B] :
      ( ( v1_int_1(A)
        & v1_int_1(B) )
     => ( v1_xcmplx_0(k3_xcmplx_0(A,B))
        & v1_xreal_0(k3_xcmplx_0(A,B))
        & v1_int_1(k3_xcmplx_0(A,B)) ) ) ).

fof(fc3_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ( v1_xcmplx_0(k4_xcmplx_0(A))
        & v1_xreal_0(k4_xcmplx_0(A))
        & v1_int_1(k4_xcmplx_0(A)) ) ) ).

fof(fc4_int_1,axiom,
    ! [A,B] :
      ( ( v1_int_1(A)
        & v1_int_1(B) )
     => ( v1_xcmplx_0(k6_xcmplx_0(A,B))
        & v1_xreal_0(k6_xcmplx_0(A,B))
        & v1_int_1(k6_xcmplx_0(A,B)) ) ) ).

fof(fc5_int_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k5_numbers)
     => ( v1_xcmplx_0(k4_xcmplx_0(A))
        & v1_xreal_0(k4_xcmplx_0(A))
        & ~ v2_xreal_0(k4_xcmplx_0(A))
        & v1_int_1(k4_xcmplx_0(A)) ) ) ).

fof(fc6_int_1,axiom,
    ! [A,B] :
      ( ( m1_subset_1(A,k5_numbers)
        & v1_int_1(B) )
     => ( v1_xcmplx_0(k2_xcmplx_0(B,A))
        & v1_xreal_0(k2_xcmplx_0(B,A))
        & v1_int_1(k2_xcmplx_0(B,A)) ) ) ).

fof(fc7_int_1,axiom,
    ! [A,B] :
      ( ( m1_subset_1(A,k5_numbers)
        & v1_int_1(B) )
     => ( v1_xcmplx_0(k3_xcmplx_0(B,A))
        & v1_xreal_0(k3_xcmplx_0(B,A))
        & v1_int_1(k3_xcmplx_0(B,A)) ) ) ).

fof(fc8_int_1,axiom,
    ! [A,B] :
      ( ( m1_subset_1(A,k5_numbers)
        & v1_int_1(B) )
     => ( v1_xcmplx_0(k6_xcmplx_0(B,A))
        & v1_xreal_0(k6_xcmplx_0(B,A))
        & v1_int_1(k6_xcmplx_0(B,A)) ) ) ).

fof(fc9_int_1,axiom,
    ! [A,B] :
      ( ( m1_subset_1(A,k5_numbers)
        & m1_subset_1(B,k5_numbers) )
     => ( v1_xcmplx_0(k6_xcmplx_0(A,B))
        & v1_xreal_0(k6_xcmplx_0(A,B))
        & v1_int_1(k6_xcmplx_0(A,B)) ) ) ).

fof(fc10_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( v1_xcmplx_0(k3_int_1(A))
        & v1_xreal_0(k3_int_1(A)) ) ) ).

fof(d1_int_1,axiom,
    ! [A] :
      ( A = k4_numbers
    <=> ! [B] :
          ( r2_hidden(B,A)
        <=> ~ ! [C] :
                ( m2_subset_1(C,k1_numbers,k5_numbers)
               => ( B != C
                  & B != k1_real_1(C) ) ) ) ) ).

fof(d2_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
    <=> r2_hidden(A,k4_numbers) ) ).

fof(t1_int_1,axiom,
    $true ).

fof(t2_int_1,axiom,
    $true ).

fof(t3_int_1,axiom,
    $true ).

fof(t4_int_1,axiom,
    $true ).

fof(t5_int_1,axiom,
    $true ).

fof(t6_int_1,axiom,
    $true ).

fof(t7_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ! [B] :
          ( v4_ordinal2(B)
         => ( ( A = B
              | A = k4_xcmplx_0(B) )
           => v1_int_1(A) ) ) ) ).

fof(t8_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ~ ( v1_int_1(A)
          & ! [B] :
              ( m2_subset_1(B,k1_numbers,k5_numbers)
             => ( A != B
                & A != k1_real_1(B) ) ) ) ) ).

fof(t9_int_1,axiom,
    $true ).

fof(t10_int_1,axiom,
    $true ).

fof(t11_int_1,axiom,
    $true ).

fof(t12_int_1,axiom,
    $true ).

fof(t13_int_1,axiom,
    $true ).

fof(t14_int_1,axiom,
    $true ).

fof(t15_int_1,axiom,
    $true ).

fof(t16_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ( r1_xreal_0(np__0,A)
       => r2_hidden(A,k5_numbers) ) ) ).

fof(t17_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( v1_int_1(A)
       => ( v1_int_1(k2_xcmplx_0(A,np__1))
          & v1_int_1(k6_xcmplx_0(A,np__1)) ) ) ) ).

fof(t18_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( r1_xreal_0(A,B)
           => r2_hidden(k6_xcmplx_0(B,A),k5_numbers) ) ) ) ).

fof(t19_int_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ( k2_xcmplx_0(B,A) = C
               => r1_xreal_0(B,C) ) ) ) ) ).

fof(t20_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( ~ r1_xreal_0(B,A)
           => r1_xreal_0(k2_xcmplx_0(A,np__1),B) ) ) ) ).

fof(t21_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ( ~ r1_xreal_0(np__0,A)
       => r1_xreal_0(A,k1_real_1(np__1)) ) ) ).

fof(t22_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( k3_xcmplx_0(A,B) = np__1
          <=> ( ( A = np__1
                & B = np__1 )
              | ( A = k1_real_1(np__1)
                & B = k1_real_1(np__1) ) ) ) ) ) ).

fof(t23_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( k3_xcmplx_0(A,B) = k1_real_1(np__1)
          <=> ( ( A = k1_real_1(np__1)
                & B = np__1 )
              | ( A = np__1
                & B = k1_real_1(np__1) ) ) ) ) ) ).

fof(d3_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ( r1_int_1(A,B,C)
              <=> ? [D] :
                    ( v1_int_1(D)
                    & k3_xcmplx_0(C,D) = k6_xcmplx_0(A,B) ) ) ) ) ) ).

fof(t24_int_1,axiom,
    $true ).

fof(t25_int_1,axiom,
    $true ).

fof(t26_int_1,axiom,
    $true ).

fof(t27_int_1,axiom,
    $true ).

fof(t28_int_1,axiom,
    $true ).

fof(t29_int_1,axiom,
    $true ).

fof(t30_int_1,axiom,
    $true ).

fof(t31_int_1,axiom,
    $true ).

fof(t32_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => r1_int_1(A,A,B) ) ) ).

fof(t33_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ( r1_int_1(A,np__0,A)
        & r1_int_1(np__0,A,A) ) ) ).

fof(t34_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => r1_int_1(A,B,np__1) ) ) ).

fof(t35_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ( r1_int_1(A,B,C)
               => r1_int_1(B,A,C) ) ) ) ) ).

fof(t36_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ! [D] :
                  ( v1_int_1(D)
                 => ( ( r1_int_1(A,B,C)
                      & r1_int_1(B,D,C) )
                   => r1_int_1(A,D,C) ) ) ) ) ) ).

fof(t37_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ! [D] :
                  ( v1_int_1(D)
                 => ! [E] :
                      ( v1_int_1(E)
                     => ( ( r1_int_1(A,B,C)
                          & r1_int_1(D,E,C) )
                       => r1_int_1(k2_xcmplx_0(A,D),k2_xcmplx_0(B,E),C) ) ) ) ) ) ) ).

fof(t38_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ! [D] :
                  ( v1_int_1(D)
                 => ! [E] :
                      ( v1_int_1(E)
                     => ( ( r1_int_1(A,B,C)
                          & r1_int_1(D,E,C) )
                       => r1_int_1(k6_xcmplx_0(A,D),k6_xcmplx_0(B,E),C) ) ) ) ) ) ) ).

fof(t39_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ! [D] :
                  ( v1_int_1(D)
                 => ! [E] :
                      ( v1_int_1(E)
                     => ( ( r1_int_1(A,B,C)
                          & r1_int_1(D,E,C) )
                       => r1_int_1(k3_xcmplx_0(A,D),k3_xcmplx_0(B,E),C) ) ) ) ) ) ) ).

fof(t40_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ! [D] :
                  ( v1_int_1(D)
                 => ( r1_int_1(k2_xcmplx_0(A,B),C,D)
                  <=> r1_int_1(A,k6_xcmplx_0(C,B),D) ) ) ) ) ) ).

fof(t41_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ! [D] :
                  ( v1_int_1(D)
                 => ! [E] :
                      ( v1_int_1(E)
                     => ( ( k3_xcmplx_0(A,B) = C
                          & r1_int_1(D,E,C) )
                       => r1_int_1(D,E,A) ) ) ) ) ) ) ).

fof(t42_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ( r1_int_1(A,B,C)
              <=> r1_int_1(k2_xcmplx_0(A,C),B,C) ) ) ) ) ).

fof(t43_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ( r1_int_1(A,B,C)
              <=> r1_int_1(k6_xcmplx_0(A,C),B,C) ) ) ) ) ).

fof(t44_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ( ( r1_xreal_0(B,A)
                  & r1_xreal_0(C,A) )
               => ( r1_xreal_0(B,k6_xcmplx_0(A,np__1))
                  | r1_xreal_0(C,k6_xcmplx_0(A,np__1))
                  | B = C ) ) ) ) ) ).

fof(t45_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( v1_int_1(C)
             => ( ( r1_xreal_0(A,B)
                  & r1_xreal_0(A,C) )
               => ( r1_xreal_0(k2_xcmplx_0(A,np__1),B)
                  | r1_xreal_0(k2_xcmplx_0(A,np__1),C)
                  | B = C ) ) ) ) ) ).

fof(d4_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( B = k1_int_1(A)
          <=> ( r1_xreal_0(B,A)
              & ~ r1_xreal_0(B,k6_xcmplx_0(A,np__1)) ) ) ) ) ).

fof(t46_int_1,axiom,
    $true ).

fof(t47_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( k1_int_1(A) = A
      <=> v1_int_1(A) ) ) ).

fof(t48_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( ~ ( ~ r1_xreal_0(A,k1_int_1(A))
            & v1_int_1(A) )
        & ~ ( ~ v1_int_1(A)
            & r1_xreal_0(A,k1_int_1(A)) ) ) ) ).

fof(t49_int_1,axiom,
    $true ).

fof(t50_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( ~ r1_xreal_0(A,k6_xcmplx_0(k1_int_1(A),np__1))
        & ~ r1_xreal_0(k2_xcmplx_0(A,np__1),k1_int_1(A)) ) ) ).

fof(t51_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ! [B] :
          ( v1_int_1(B)
         => k2_xcmplx_0(k1_int_1(A),B) = k1_int_1(k2_xcmplx_0(A,B)) ) ) ).

fof(t52_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ~ r1_xreal_0(k2_xcmplx_0(k1_int_1(A),np__1),A) ) ).

fof(d5_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( B = k2_int_1(A)
          <=> ( r1_xreal_0(A,B)
              & ~ r1_xreal_0(k2_xcmplx_0(A,np__1),B) ) ) ) ) ).

fof(t53_int_1,axiom,
    $true ).

fof(t54_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( k2_int_1(A) = A
      <=> v1_int_1(A) ) ) ).

fof(t55_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( ~ ( ~ r1_xreal_0(k2_int_1(A),A)
            & v1_int_1(A) )
        & ~ ( ~ v1_int_1(A)
            & r1_xreal_0(k2_int_1(A),A) ) ) ) ).

fof(t56_int_1,axiom,
    $true ).

fof(t57_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( ~ r1_xreal_0(k2_int_1(A),k6_xcmplx_0(A,np__1))
        & ~ r1_xreal_0(k2_xcmplx_0(k2_int_1(A),np__1),A) ) ) ).

fof(t58_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ! [B] :
          ( v1_int_1(B)
         => k2_xcmplx_0(k2_int_1(A),B) = k2_int_1(k2_xcmplx_0(A,B)) ) ) ).

fof(t59_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( k1_int_1(A) = k2_int_1(A)
      <=> v1_int_1(A) ) ) ).

fof(t60_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( ~ ( ~ r1_xreal_0(k2_int_1(A),k1_int_1(A))
            & v1_int_1(A) )
        & ~ ( ~ v1_int_1(A)
            & r1_xreal_0(k2_int_1(A),k1_int_1(A)) ) ) ) ).

fof(t61_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => r1_xreal_0(k1_int_1(A),k2_int_1(A)) ) ).

fof(t62_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => k1_int_1(k2_int_1(A)) = k2_int_1(A) ) ).

fof(t63_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => k1_int_1(k1_int_1(A)) = k1_int_1(A) ) ).

fof(t64_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => k2_int_1(k2_int_1(A)) = k2_int_1(A) ) ).

fof(t65_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => k2_int_1(k1_int_1(A)) = k1_int_1(A) ) ).

fof(t66_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( k1_int_1(A) = k2_int_1(A)
      <=> k2_xcmplx_0(k1_int_1(A),np__1) != k2_int_1(A) ) ) ).

fof(d6_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => k3_int_1(A) = k6_xcmplx_0(A,k1_int_1(A)) ) ).

fof(t67_int_1,axiom,
    $true ).

fof(t68_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => A = k2_xcmplx_0(k1_int_1(A),k4_int_1(A)) ) ).

fof(t69_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( ~ r1_xreal_0(np__1,k4_int_1(A))
        & r1_xreal_0(np__0,k4_int_1(A)) ) ) ).

fof(t70_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => k1_int_1(k4_int_1(A)) = np__0 ) ).

fof(t71_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( k4_int_1(A) = np__0
      <=> v1_int_1(A) ) ) ).

fof(t72_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( ~ ( ~ r1_xreal_0(k4_int_1(A),np__0)
            & v1_int_1(A) )
        & ~ ( ~ v1_int_1(A)
            & r1_xreal_0(k4_int_1(A),np__0) ) ) ) ).

fof(d7_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => k5_int_1(A,B) = k1_int_1(k7_xcmplx_0(A,B)) ) ) ).

fof(d8_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( ( B != np__0
             => k6_int_1(A,B) = k6_xcmplx_0(A,k3_xcmplx_0(k5_int_1(A,B),B)) )
            & ( B = np__0
             => k6_int_1(A,B) = np__0 ) ) ) ) ).

fof(d9_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( r2_int_1(A,B)
          <=> ? [C] :
                ( v1_int_1(C)
                & B = k3_xcmplx_0(A,C) ) ) ) ) ).

fof(t73_int_1,axiom,
    $true ).

fof(t74_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( A != np__0
       => k1_int_1(k7_xcmplx_0(A,A)) = np__1 ) ) ).

fof(t75_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => k5_int_1(A,np__0) = np__0 ) ).

fof(t76_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ( A != np__0
       => k5_int_1(A,A) = np__1 ) ) ).

fof(t77_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => k6_int_1(A,A) = np__0 ) ).

fof(t78_int_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v1_int_1(B)
         => ~ ( ~ r1_xreal_0(B,A)
              & ! [C] :
                  ( m2_subset_1(C,k1_numbers,k5_numbers)
                 => ~ ( C = k6_xcmplx_0(B,A)
                      & r1_xreal_0(np__1,C) ) ) ) ) ) ).

fof(t79_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ( ~ r1_xreal_0(B,A)
           => r1_xreal_0(A,k6_xcmplx_0(B,np__1)) ) ) ) ).

fof(t80_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => ( r1_xreal_0(np__0,A)
       => ( r1_xreal_0(np__0,k2_int_1(A))
          & r1_xreal_0(np__0,k1_int_1(A))
          & m2_subset_1(k2_int_1(A),k1_numbers,k5_numbers)
          & m2_subset_1(k1_int_1(A),k1_numbers,k5_numbers) ) ) ) ).

fof(t81_int_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_xreal_0(B)
         => ( r1_xreal_0(A,B)
           => r1_xreal_0(A,k1_int_1(B)) ) ) ) ).

fof(t82_int_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( v4_ordinal2(B)
         => r1_xreal_0(np__0,k5_int_1(A,B)) ) ) ).

fof(s1_int_1,axiom,
    ? [A] :
      ( m1_subset_1(A,k1_zfmisc_1(k4_numbers))
      & ! [B] :
          ( v1_int_1(B)
         => ( r2_hidden(B,A)
          <=> p1_s1_int_1(B) ) ) ) ).

fof(s2_int_1,axiom,
    ( ( p1_s2_int_1(f1_s2_int_1)
      & ! [A] :
          ( v1_int_1(A)
         => ( ( r1_xreal_0(f1_s2_int_1,A)
              & p1_s2_int_1(A) )
           => p1_s2_int_1(k2_xcmplx_0(A,np__1)) ) ) )
   => ! [A] :
        ( v1_int_1(A)
       => ( r1_xreal_0(f1_s2_int_1,A)
         => p1_s2_int_1(A) ) ) ) ).

fof(s3_int_1,axiom,
    ( ( p1_s3_int_1(f1_s3_int_1)
      & ! [A] :
          ( v1_int_1(A)
         => ( ( r1_xreal_0(A,f1_s3_int_1)
              & p1_s3_int_1(A) )
           => p1_s3_int_1(k6_xcmplx_0(A,np__1)) ) ) )
   => ! [A] :
        ( v1_int_1(A)
       => ( r1_xreal_0(A,f1_s3_int_1)
         => p1_s3_int_1(A) ) ) ) ).

fof(s4_int_1,axiom,
    ( ( p1_s4_int_1(f1_s4_int_1)
      & ! [A] :
          ( v1_int_1(A)
         => ( p1_s4_int_1(A)
           => ( p1_s4_int_1(k6_xcmplx_0(A,np__1))
              & p1_s4_int_1(k2_xcmplx_0(A,np__1)) ) ) ) )
   => ! [A] :
        ( v1_int_1(A)
       => p1_s4_int_1(A) ) ) ).

fof(s5_int_1,axiom,
    ( ( ! [A] :
          ( v1_int_1(A)
         => ( p1_s5_int_1(A)
           => r1_xreal_0(f1_s5_int_1,A) ) )
      & ? [A] :
          ( v1_int_1(A)
          & p1_s5_int_1(A) ) )
   => ? [A] :
        ( v1_int_1(A)
        & p1_s5_int_1(A)
        & ! [B] :
            ( v1_int_1(B)
           => ( p1_s5_int_1(B)
             => r1_xreal_0(A,B) ) ) ) ) ).

fof(s6_int_1,axiom,
    ( ( ! [A] :
          ( v1_int_1(A)
         => ( p1_s6_int_1(A)
           => r1_xreal_0(A,f1_s6_int_1) ) )
      & ? [A] :
          ( v1_int_1(A)
          & p1_s6_int_1(A) ) )
   => ? [A] :
        ( v1_int_1(A)
        & p1_s6_int_1(A)
        & ! [B] :
            ( v1_int_1(B)
           => ( p1_s6_int_1(B)
             => r1_xreal_0(B,A) ) ) ) ) ).

fof(reflexivity_r2_int_1,axiom,
    ! [A,B] :
      ( ( v1_int_1(A)
        & v1_int_1(B) )
     => r2_int_1(A,A) ) ).

fof(dt_k1_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => v1_int_1(k1_int_1(A)) ) ).

fof(dt_k2_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => v1_int_1(k2_int_1(A)) ) ).

fof(dt_k3_int_1,axiom,
    $true ).

fof(dt_k4_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => m1_subset_1(k4_int_1(A),k1_numbers) ) ).

fof(redefinition_k4_int_1,axiom,
    ! [A] :
      ( v1_xreal_0(A)
     => k4_int_1(A) = k3_int_1(A) ) ).

fof(dt_k5_int_1,axiom,
    ! [A,B] :
      ( ( v1_int_1(A)
        & v1_int_1(B) )
     => v1_int_1(k5_int_1(A,B)) ) ).

fof(dt_k6_int_1,axiom,
    ! [A,B] :
      ( ( v1_int_1(A)
        & v1_int_1(B) )
     => v1_int_1(k6_int_1(A,B)) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+54 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Cardinal Numbers
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : card_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  111 (  49 unt;   0 def)
%            Number of atoms       :  307 (  50 equ)
%            Maximal formula atoms :   16 (   2 avg)
%            Number of connectives :  206 (  10   ~;   3   |;  71   &)
%                                         (  20 <=>; 102  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   4 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :   28 (  26 usr;   1 prp; 0-3 aty)
%            Number of functors    :   27 (  27 usr;   7 con; 0-2 aty)
%            Number of variables   :  131 ( 121   !;  10   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_card_1,axiom,
    ? [A] : v1_card_1(A) ).

fof(cc1_card_1,axiom,
    ! [A] :
      ( v1_card_1(A)
     => ( v1_ordinal1(A)
        & v2_ordinal1(A)
        & v3_ordinal1(A) ) ) ).

fof(fc1_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( v1_ordinal1(k3_card_1(A))
        & v2_ordinal1(k3_card_1(A))
        & v3_ordinal1(k3_card_1(A))
        & v1_card_1(k3_card_1(A)) ) ) ).

fof(cc2_card_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k5_numbers)
     => ( v1_ordinal1(A)
        & v2_ordinal1(A)
        & v3_ordinal1(A)
        & v4_ordinal2(A)
        & v1_xcmplx_0(A)
        & v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_card_1(A) ) ) ).

fof(cc3_card_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k5_numbers)
     => ( v1_ordinal1(A)
        & v2_ordinal1(A)
        & v3_ordinal1(A)
        & v4_ordinal2(A)
        & v1_xcmplx_0(A)
        & v1_finset_1(A)
        & v1_xreal_0(A)
        & ~ v3_xreal_0(A)
        & v1_card_1(A) ) ) ).

fof(rc2_card_1,axiom,
    ? [A] :
      ( v1_ordinal1(A)
      & v2_ordinal1(A)
      & v3_ordinal1(A)
      & v1_finset_1(A)
      & v1_card_1(A) ) ).

fof(fc2_card_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => ( v1_ordinal1(k1_card_1(A))
        & v2_ordinal1(k1_card_1(A))
        & v3_ordinal1(k1_card_1(A))
        & v1_finset_1(k1_card_1(A))
        & v1_card_1(k1_card_1(A)) ) ) ).

fof(d1_card_1,axiom,
    ! [A] :
      ( v1_card_1(A)
    <=> ? [B] :
          ( v3_ordinal1(B)
          & A = B
          & ! [C] :
              ( v3_ordinal1(C)
             => ( r2_wellord2(C,B)
               => r1_ordinal1(B,C) ) ) ) ) ).

fof(t1_card_1,axiom,
    $true ).

fof(t2_card_1,axiom,
    $true ).

fof(t3_card_1,axiom,
    $true ).

fof(t4_card_1,axiom,
    ! [A] :
    ? [B] :
      ( v3_ordinal1(B)
      & r2_wellord2(A,B) ) ).

fof(t5_card_1,axiom,
    $true ).

fof(t6_card_1,axiom,
    $true ).

fof(t7_card_1,axiom,
    $true ).

fof(t8_card_1,axiom,
    ! [A] :
      ( v1_card_1(A)
     => ! [B] :
          ( v1_card_1(B)
         => ( A = B
          <=> r2_wellord2(A,B) ) ) ) ).

fof(t9_card_1,axiom,
    $true ).

fof(t10_card_1,axiom,
    $true ).

fof(t11_card_1,axiom,
    $true ).

fof(t12_card_1,axiom,
    $true ).

fof(t13_card_1,axiom,
    ! [A] :
      ( v1_card_1(A)
     => ! [B] :
          ( v1_card_1(B)
         => ( r2_hidden(A,B)
          <=> ( r1_tarski(A,B)
              & A != B ) ) ) ) ).

fof(t14_card_1,axiom,
    ! [A] :
      ( v1_card_1(A)
     => ! [B] :
          ( v1_card_1(B)
         => ( r2_hidden(A,B)
          <=> ~ r1_tarski(B,A) ) ) ) ).

fof(d2_card_1,axiom,
    $true ).

fof(d3_card_1,axiom,
    $true ).

fof(d4_card_1,axiom,
    $true ).

fof(d5_card_1,axiom,
    ! [A,B] :
      ( v1_card_1(B)
     => ( B = k1_card_1(A)
      <=> r2_wellord2(A,B) ) ) ).

fof(t15_card_1,axiom,
    $true ).

fof(t16_card_1,axiom,
    $true ).

fof(t17_card_1,axiom,
    $true ).

fof(t18_card_1,axiom,
    $true ).

fof(t19_card_1,axiom,
    $true ).

fof(t20_card_1,axiom,
    $true ).

fof(t21_card_1,axiom,
    ! [A,B] :
      ( r2_wellord2(A,B)
    <=> k1_card_1(A) = k1_card_1(B) ) ).

fof(t22_card_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( v2_wellord1(A)
       => r2_wellord2(k3_relat_1(A),k2_wellord2(A)) ) ) ).

fof(t23_card_1,axiom,
    ! [A,B] :
      ( v1_card_1(B)
     => ( r1_tarski(A,B)
       => r1_tarski(k1_card_1(A),B) ) ) ).

fof(t24_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => r1_ordinal1(k1_card_1(A),A) ) ).

fof(t25_card_1,axiom,
    ! [A,B] :
      ( v1_card_1(B)
     => ( r2_hidden(A,B)
       => r2_hidden(k1_card_1(A),B) ) ) ).

fof(t26_card_1,axiom,
    ! [A,B] :
      ( r1_tarski(k1_card_1(A),k1_card_1(B))
    <=> ? [C] :
          ( v1_relat_1(C)
          & v1_funct_1(C)
          & v2_funct_1(C)
          & k1_relat_1(C) = A
          & r1_tarski(k2_relat_1(C),B) ) ) ).

fof(t27_card_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => r1_tarski(k1_card_1(A),k1_card_1(B)) ) ).

fof(t28_card_1,axiom,
    ! [A,B] :
      ( r1_tarski(k1_card_1(A),k1_card_1(B))
    <=> ? [C] :
          ( v1_relat_1(C)
          & v1_funct_1(C)
          & k1_relat_1(C) = B
          & r1_tarski(A,k2_relat_1(C)) ) ) ).

fof(t29_card_1,axiom,
    ! [A] : ~ r2_wellord2(A,k1_zfmisc_1(A)) ).

fof(t30_card_1,axiom,
    ! [A] : r2_hidden(k1_card_1(A),k1_card_1(k1_zfmisc_1(A))) ).

fof(d6_card_1,axiom,
    ! [A,B] :
      ( v1_card_1(B)
     => ( B = k2_card_1(A)
      <=> ( r2_hidden(k1_card_1(A),B)
          & ! [C] :
              ( v1_card_1(C)
             => ( r2_hidden(k1_card_1(A),C)
               => r1_tarski(B,C) ) ) ) ) ) ).

fof(t31_card_1,axiom,
    $true ).

fof(t32_card_1,axiom,
    ! [A] :
      ( v1_card_1(A)
     => r2_hidden(A,k2_card_1(A)) ) ).

fof(t33_card_1,axiom,
    ! [A] : r2_hidden(k1_card_1(k1_xboole_0),k2_card_1(A)) ).

fof(t34_card_1,axiom,
    ! [A,B] :
      ( k1_card_1(A) = k1_card_1(B)
     => k2_card_1(A) = k2_card_1(B) ) ).

fof(t35_card_1,axiom,
    ! [A,B] :
      ( r2_wellord2(A,B)
     => k2_card_1(A) = k2_card_1(B) ) ).

fof(t36_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => r2_hidden(A,k2_card_1(A)) ) ).

fof(d7_card_1,axiom,
    ! [A] :
      ( v1_card_1(A)
     => ( v2_card_1(A)
      <=> ! [B] :
            ( v1_card_1(B)
           => A != k2_card_1(B) ) ) ) ).

fof(d8_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( B = k3_card_1(A)
        <=> ? [C] :
              ( v1_relat_1(C)
              & v1_funct_1(C)
              & v5_ordinal1(C)
              & B = k1_ordinal2(C)
              & k1_relat_1(C) = k1_ordinal1(A)
              & k1_funct_1(C,k1_xboole_0) = k1_card_1(k5_numbers)
              & ! [D] :
                  ( v3_ordinal1(D)
                 => ( r2_hidden(k1_ordinal1(D),k1_ordinal1(A))
                   => k1_funct_1(C,k1_ordinal1(D)) = k2_card_1(k3_tarski(k1_tarski(k1_funct_1(C,D)))) ) )
              & ! [D] :
                  ( v3_ordinal1(D)
                 => ( ( r2_hidden(D,k1_ordinal1(A))
                      & v4_ordinal1(D) )
                   => ( D = k1_xboole_0
                      | k1_funct_1(C,D) = k1_card_1(k8_ordinal2(k2_ordinal1(C,D))) ) ) ) ) ) ) ).

fof(t37_card_1,axiom,
    $true ).

fof(t38_card_1,axiom,
    k3_card_1(np__0) = k1_card_1(k5_numbers) ).

fof(t39_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => k3_card_1(k1_ordinal1(A)) = k2_card_1(k3_card_1(A)) ) ).

fof(t40_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ( v4_ordinal1(A)
       => ( A = k1_xboole_0
          | ! [B] :
              ( ( v1_relat_1(B)
                & v1_funct_1(B)
                & v5_ordinal1(B) )
             => ( ( k1_relat_1(B) = A
                  & ! [C] :
                      ( v3_ordinal1(C)
                     => ( r2_hidden(C,A)
                       => k1_funct_1(B,C) = k3_card_1(C) ) ) )
               => k3_card_1(A) = k1_card_1(k8_ordinal2(B)) ) ) ) ) ) ).

fof(t41_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r2_hidden(A,B)
          <=> r2_hidden(k3_card_1(A),k3_card_1(B)) ) ) ) ).

fof(t42_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( k3_card_1(A) = k3_card_1(B)
           => A = B ) ) ) ).

fof(t43_card_1,axiom,
    ! [A] :
      ( v3_ordinal1(A)
     => ! [B] :
          ( v3_ordinal1(B)
         => ( r1_ordinal1(A,B)
          <=> r1_tarski(k3_card_1(A),k3_card_1(B)) ) ) ) ).

fof(t44_card_1,axiom,
    ! [A,B,C] :
      ( ( r1_tarski(A,B)
        & r1_tarski(B,C)
        & r2_wellord2(A,C) )
     => ( r2_wellord2(A,B)
        & r2_wellord2(B,C) ) ) ).

fof(t45_card_1,axiom,
    ! [A,B] :
      ( r1_tarski(k1_zfmisc_1(A),B)
     => ( r2_hidden(k1_card_1(A),k1_card_1(B))
        & ~ r2_wellord2(A,B) ) ) ).

fof(t46_card_1,axiom,
    ! [A] :
      ( r2_wellord2(A,k1_xboole_0)
    <=> A = k1_xboole_0 ) ).

fof(t47_card_1,axiom,
    k1_card_1(k1_xboole_0) = k1_xboole_0 ).

fof(t48_card_1,axiom,
    ! [A,B] :
      ( r2_wellord2(A,k1_tarski(B))
    <=> ? [C] : A = k1_tarski(C) ) ).

fof(t49_card_1,axiom,
    ! [A,B] :
      ( k1_card_1(A) = k1_card_1(k1_tarski(B))
    <=> ? [C] : A = k1_tarski(C) ) ).

fof(t50_card_1,axiom,
    ! [A] : k1_card_1(k1_tarski(A)) = k4_ordinal2 ).

fof(t51_card_1,axiom,
    np__0 = k1_xboole_0 ).

fof(t52_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => k1_ordinal1(A) = k1_nat_1(A,np__1) ) ).

fof(t53_card_1,axiom,
    $true ).

fof(t54_card_1,axiom,
    $true ).

fof(t55_card_1,axiom,
    $true ).

fof(t56_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( r1_xreal_0(A,B)
          <=> r1_ordinal1(A,B) ) ) ) ).

fof(t57_card_1,axiom,
    $true ).

fof(t58_card_1,axiom,
    ! [A,B,C,D] :
      ( ( r1_xboole_0(A,B)
        & r1_xboole_0(C,D)
        & r2_wellord2(A,C)
        & r2_wellord2(B,D) )
     => r2_wellord2(k2_xboole_0(A,B),k2_xboole_0(C,D)) ) ).

fof(t59_card_1,axiom,
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & r2_hidden(C,B) )
     => r2_wellord2(k4_xboole_0(B,k1_tarski(A)),k4_xboole_0(B,k1_tarski(C))) ) ).

fof(t60_card_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( ( r1_tarski(A,k1_relat_1(B))
          & v2_funct_1(B) )
       => r2_wellord2(A,k9_relat_1(B,A)) ) ) ).

fof(t61_card_1,axiom,
    ! [A,B,C,D] :
      ( ( r2_wellord2(A,B)
        & r2_hidden(C,A)
        & r2_hidden(D,B) )
     => r2_wellord2(k4_xboole_0(A,k1_tarski(C)),k4_xboole_0(B,k1_tarski(D))) ) ).

fof(t62_card_1,axiom,
    $true ).

fof(t63_card_1,axiom,
    $true ).

fof(t64_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( r2_wellord2(A,B)
           => A = B ) ) ) ).

fof(t65_card_1,axiom,
    ! [A] :
      ( r2_hidden(A,k5_ordinal2)
     => v1_card_1(A) ) ).

fof(t66_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => A = k1_card_1(A) ) ).

fof(t67_card_1,axiom,
    $true ).

fof(t68_card_1,axiom,
    ! [A,B] :
      ( ( r2_wellord2(A,B)
        & v1_finset_1(A) )
     => v1_finset_1(B) ) ).

fof(t69_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ( v1_finset_1(A)
        & v1_finset_1(k1_card_1(A)) ) ) ).

fof(t70_card_1,axiom,
    $true ).

fof(t71_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( k1_card_1(A) = k1_card_1(B)
           => A = B ) ) ) ).

fof(t72_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( r1_tarski(k1_card_1(A),k1_card_1(B))
          <=> r1_xreal_0(A,B) ) ) ) ).

fof(t73_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( r2_hidden(k1_card_1(A),k1_card_1(B))
          <=> ~ r1_xreal_0(B,A) ) ) ) ).

fof(t74_card_1,axiom,
    ! [A] :
      ~ ( v1_finset_1(A)
        & ! [B] :
            ( m2_subset_1(B,k1_numbers,k5_numbers)
           => ~ r2_wellord2(A,B) ) ) ).

fof(t75_card_1,axiom,
    $true ).

fof(t76_card_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => k2_card_1(k1_card_1(A)) = k1_card_1(k1_nat_1(A,np__1)) ) ).

fof(d9_card_1,axiom,
    $true ).

fof(d10_card_1,axiom,
    $true ).

fof(d11_card_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( B = k4_card_1(A)
          <=> k1_card_1(B) = k1_card_1(A) ) ) ) ).

fof(t77_card_1,axiom,
    $true ).

fof(t78_card_1,axiom,
    k4_card_1(k1_xboole_0) = np__0 ).

fof(t79_card_1,axiom,
    ! [A] : k4_card_1(k1_tarski(A)) = np__1 ).

fof(t80_card_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => ! [B] :
          ( v1_finset_1(B)
         => ( r1_tarski(A,B)
           => r1_xreal_0(k4_card_1(A),k4_card_1(B)) ) ) ) ).

fof(t81_card_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => ! [B] :
          ( v1_finset_1(B)
         => ( r2_wellord2(A,B)
           => k4_card_1(A) = k4_card_1(B) ) ) ) ).

fof(t82_card_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => v1_finset_1(k2_card_1(A)) ) ).

fof(t83_card_1,axiom,
    k3_card_1(np__0) = k5_ordinal2 ).

fof(t84_card_1,axiom,
    k1_card_1(k5_ordinal2) = k5_ordinal2 ).

fof(t85_card_1,axiom,
    v2_card_1(k1_card_1(k5_ordinal2)) ).

fof(t86_card_1,axiom,
    ! [A] :
      ( ( v1_finset_1(A)
        & v1_card_1(A) )
     => ? [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
          & A = k1_card_1(B) ) ) ).

fof(s1_card_1,axiom,
    ( ( p1_s1_card_1(k1_xboole_0)
      & ! [A] :
          ( v1_card_1(A)
         => ( p1_s1_card_1(A)
           => p1_s1_card_1(k2_card_1(A)) ) )
      & ! [A] :
          ( v1_card_1(A)
         => ( ( v2_card_1(A)
              & ! [B] :
                  ( v1_card_1(B)
                 => ( r2_hidden(B,A)
                   => p1_s1_card_1(B) ) ) )
           => ( A = k1_xboole_0
              | p1_s1_card_1(A) ) ) ) )
   => ! [A] :
        ( v1_card_1(A)
       => p1_s1_card_1(A) ) ) ).

fof(s2_card_1,axiom,
    ( ! [A] :
        ( v1_card_1(A)
       => ( ! [B] :
              ( v1_card_1(B)
             => ( r2_hidden(B,A)
               => p1_s2_card_1(B) ) )
         => p1_s2_card_1(A) ) )
   => ! [A] :
        ( v1_card_1(A)
       => p1_s2_card_1(A) ) ) ).

fof(dt_k1_card_1,axiom,
    ! [A] : v1_card_1(k1_card_1(A)) ).

fof(dt_k2_card_1,axiom,
    ! [A] : v1_card_1(k2_card_1(A)) ).

fof(dt_k3_card_1,axiom,
    $true ).

fof(dt_k4_card_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => m2_subset_1(k4_card_1(A),k1_numbers,k5_numbers) ) ).

fof(redefinition_k4_card_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
     => k4_card_1(A) = k1_card_1(A) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+55 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Segments of Natural Numbers and Finite Sequences
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : finseq_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  163 (  31 unt;   0 def)
%            Number of atoms       :  801 ( 125 equ)
%            Maximal formula atoms :   18 (   4 avg)
%            Number of connectives :  672 (  34   ~;   5   |; 388   &)
%                                         (  27 <=>; 218  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (   6 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   26 (  24 usr;   1 prp; 0-3 aty)
%            Number of functors    :   51 (  51 usr;  12 con; 0-3 aty)
%            Number of variables   :  296 ( 272   !;  24   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_finseq_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v1_finseq_1(A) ) ).

fof(fc1_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => v1_finset_1(k1_finseq_1(A)) ) ).

fof(cc1_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finset_1(A) ) ) ).

fof(fc2_finseq_1,axiom,
    ( v1_xboole_0(k1_xboole_0)
    & v1_relat_1(k1_xboole_0)
    & v3_relat_1(k1_xboole_0)
    & v1_funct_1(k1_xboole_0)
    & v2_funct_1(k1_xboole_0)
    & v1_finset_1(k1_xboole_0)
    & v1_finseq_1(k1_xboole_0) ) ).

fof(rc2_finseq_1,axiom,
    ! [A] :
    ? [B] :
      ( m1_relset_1(B,k5_numbers,A)
      & v1_relat_1(B)
      & v1_funct_1(B)
      & v1_finset_1(B)
      & v1_finseq_1(B) ) ).

fof(rc3_finseq_1,axiom,
    ? [A] :
      ( v1_xboole_0(A)
      & v1_relat_1(A)
      & v1_funct_1(A)
      & v2_funct_1(A)
      & v1_finset_1(A)
      & v1_finseq_1(A) ) ).

fof(rc4_finseq_1,axiom,
    ! [A] :
    ? [B] :
      ( m1_finseq_1(B,A)
      & v1_xboole_0(B)
      & v1_relat_1(B)
      & v1_funct_1(B)
      & v2_funct_1(B)
      & v1_finset_1(B)
      & v1_finseq_1(B) ) ).

fof(fc3_finseq_1,axiom,
    ! [A] :
      ( v1_relat_1(k5_finseq_1(A))
      & v1_funct_1(k5_finseq_1(A)) ) ).

fof(fc4_finseq_1,axiom,
    ! [A] :
      ( v1_relat_1(k5_finseq_1(A))
      & v1_funct_1(k5_finseq_1(A))
      & v1_finset_1(k5_finseq_1(A))
      & v1_finseq_1(k5_finseq_1(A)) ) ).

fof(fc5_finseq_1,axiom,
    ! [A,B] :
      ( v1_relat_1(k10_finseq_1(A,B))
      & v1_funct_1(k10_finseq_1(A,B)) ) ).

fof(fc6_finseq_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(k11_finseq_1(A,B,C))
      & v1_funct_1(k11_finseq_1(A,B,C)) ) ).

fof(fc7_finseq_1,axiom,
    ! [A,B] :
      ( v1_relat_1(k10_finseq_1(A,B))
      & v1_funct_1(k10_finseq_1(A,B))
      & v1_finset_1(k10_finseq_1(A,B))
      & v1_finseq_1(k10_finseq_1(A,B)) ) ).

fof(fc8_finseq_1,axiom,
    ! [A,B,C] :
      ( v1_relat_1(k11_finseq_1(A,B,C))
      & v1_funct_1(k11_finseq_1(A,B,C))
      & v1_finset_1(k11_finseq_1(A,B,C))
      & v1_finseq_1(k11_finseq_1(A,B,C)) ) ).

fof(fc9_finseq_1,axiom,
    ! [A] : ~ v1_xboole_0(k13_finseq_1(A)) ).

fof(rc5_finseq_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v2_finseq_1(A) ) ).

fof(fc10_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_finseq_1(A) )
     => ( v1_relat_1(k15_finseq_1(A))
        & v1_funct_1(k15_finseq_1(A))
        & v1_finset_1(k15_finseq_1(A))
        & v1_finseq_1(k15_finseq_1(A)) ) ) ).

fof(rc6_finseq_1,axiom,
    ? [A] :
      ( v1_xboole_0(A)
      & v1_relat_1(A)
      & v1_funct_1(A)
      & v2_funct_1(A)
      & v1_finset_1(A) ) ).

fof(rc7_finseq_1,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_relat_1(A)
      & v1_funct_1(A)
      & v1_finset_1(A) ) ).

fof(fc11_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_finset_1(A) )
     => v1_finset_1(k2_relat_1(A)) ) ).

fof(fc12_finseq_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(k5_finseq_1(A))
      & v1_relat_1(k5_finseq_1(A))
      & v1_funct_1(k5_finseq_1(A))
      & v1_finset_1(k5_finseq_1(A))
      & v1_finseq_1(k5_finseq_1(A)) ) ).

fof(rc8_finseq_1,axiom,
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_relat_1(A)
      & v1_funct_1(A)
      & v1_finset_1(A)
      & v1_finseq_1(A) ) ).

fof(fc13_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A)
        & ~ v1_xboole_0(B)
        & v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ( ~ v1_xboole_0(k7_finseq_1(A,B))
        & v1_relat_1(k7_finseq_1(A,B))
        & v1_funct_1(k7_finseq_1(A,B))
        & v1_finset_1(k7_finseq_1(A,B))
        & v1_finseq_1(k7_finseq_1(A,B)) ) ) ).

fof(fc14_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A)
        & ~ v1_xboole_0(B)
        & v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ( ~ v1_xboole_0(k7_finseq_1(B,A))
        & v1_relat_1(k7_finseq_1(B,A))
        & v1_funct_1(k7_finseq_1(B,A))
        & v1_finset_1(k7_finseq_1(B,A))
        & v1_finseq_1(k7_finseq_1(B,A)) ) ) ).

fof(fc15_finseq_1,axiom,
    ! [A,B] :
      ( m1_finseq_1(B,A)
     => ( v1_xboole_0(k16_finseq_1(A,B,np__0))
        & v1_relat_1(k16_finseq_1(A,B,np__0))
        & v1_funct_1(k16_finseq_1(A,B,np__0))
        & v2_funct_1(k16_finseq_1(A,B,np__0))
        & v1_finset_1(k16_finseq_1(A,B,np__0))
        & v1_finseq_1(k16_finseq_1(A,B,np__0)) ) ) ).

fof(fc16_finseq_1,axiom,
    ! [A] :
      ( ~ v1_xboole_0(k13_finseq_1(A))
      & v1_fraenkel(k13_finseq_1(A)) ) ).

fof(fc17_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finset_1(A) )
     => v1_finset_1(k1_relat_1(A)) ) ).

fof(fc18_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finset_1(A) )
     => v1_finset_1(k10_relat_1(A,B)) ) ).

fof(t1_finseq_1,axiom,
    $true ).

fof(t2_finseq_1,axiom,
    $true ).

fof(t3_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( v4_ordinal2(B)
         => ( r2_hidden(A,k2_finseq_1(B))
          <=> ( r1_xreal_0(np__1,A)
              & r1_xreal_0(A,B) ) ) ) ) ).

fof(t4_finseq_1,axiom,
    ( k2_finseq_1(np__0) = k1_xboole_0
    & k2_finseq_1(np__1) = k1_tarski(np__1)
    & k2_finseq_1(np__2) = k2_tarski(np__1,np__2) ) ).

fof(t5_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ( A = np__0
        | r2_hidden(A,k2_finseq_1(A)) ) ) ).

fof(t6_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => r2_hidden(k2_xcmplx_0(A,np__1),k2_finseq_1(k2_xcmplx_0(A,np__1))) ) ).

fof(t7_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( v4_ordinal2(B)
         => ( r1_xreal_0(A,B)
          <=> r1_tarski(k2_finseq_1(A),k2_finseq_1(B)) ) ) ) ).

fof(t8_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( v4_ordinal2(B)
         => ( k2_finseq_1(A) = k2_finseq_1(B)
           => A = B ) ) ) ).

fof(t9_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( v4_ordinal2(B)
         => ( r1_xreal_0(A,B)
           => k2_finseq_1(A) = k5_subset_1(k5_numbers,k2_finseq_1(B),k2_finseq_1(A)) ) ) ) ).

fof(t10_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( v4_ordinal2(B)
         => ( k2_finseq_1(A) = k5_subset_1(k5_numbers,k2_finseq_1(A),k2_finseq_1(B))
           => r1_xreal_0(A,B) ) ) ) ).

fof(t11_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => k2_xboole_0(k2_finseq_1(A),k1_tarski(k2_xcmplx_0(A,np__1))) = k2_finseq_1(k2_xcmplx_0(A,np__1)) ) ).

fof(t12_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => k2_finseq_1(A) = k4_xboole_0(k2_finseq_1(k2_xcmplx_0(A,np__1)),k1_tarski(k2_xcmplx_0(A,np__1))) ) ).

fof(d2_finseq_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ( v1_finseq_1(A)
      <=> ? [B] :
            ( m2_subset_1(B,k1_numbers,k5_numbers)
            & k1_relat_1(A) = k2_finseq_1(B) ) ) ) ).

fof(d3_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( B = k3_finseq_1(A)
          <=> k2_finseq_1(B) = k1_relat_1(A) ) ) ) ).

fof(t13_finseq_1,axiom,
    $true ).

fof(t14_finseq_1,axiom,
    ( v1_relat_1(k1_xboole_0)
    & v1_funct_1(k1_xboole_0)
    & v1_finseq_1(k1_xboole_0) ) ).

fof(t15_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ~ ( ? [B] :
              ( m2_subset_1(B,k1_numbers,k5_numbers)
              & r1_tarski(k1_relat_1(A),k2_finseq_1(B)) )
          & ! [B] :
              ( ( v1_relat_1(B)
                & v1_funct_1(B)
                & v1_finseq_1(B) )
             => ~ r1_tarski(A,B) ) ) ) ).

fof(t16_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ~ ( r2_hidden(A,B)
          & ! [C] :
              ( m2_subset_1(C,k1_numbers,k5_numbers)
             => ~ ( r2_hidden(C,k4_finseq_1(B))
                  & A = k4_tarski(C,k1_funct_1(B,C)) ) ) ) ) ).

fof(t17_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ( ( k4_finseq_1(A) = k4_finseq_1(B)
              & ! [C] :
                  ( m2_subset_1(C,k1_numbers,k5_numbers)
                 => ( r2_hidden(C,k4_finseq_1(A))
                   => k1_funct_1(A,C) = k1_funct_1(B,C) ) ) )
           => A = B ) ) ) ).

fof(t18_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ( ( k3_finseq_1(A) = k3_finseq_1(B)
              & ! [C] :
                  ( m2_subset_1(C,k1_numbers,k5_numbers)
                 => ( ( r1_xreal_0(np__1,C)
                      & r1_xreal_0(C,k3_finseq_1(A)) )
                   => k1_funct_1(A,C) = k1_funct_1(B,C) ) ) )
           => A = B ) ) ) ).

fof(t19_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ( v1_relat_1(k7_relat_1(B,k2_finseq_1(A)))
            & v1_funct_1(k7_relat_1(B,k2_finseq_1(A)))
            & v1_finseq_1(k7_relat_1(B,k2_finseq_1(A))) ) ) ) ).

fof(t20_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ( r1_tarski(k2_relat_1(B),k1_relat_1(A))
           => ( v1_relat_1(k5_relat_1(B,A))
              & v1_funct_1(k5_relat_1(B,A))
              & v1_finseq_1(k5_relat_1(B,A)) ) ) ) ) ).

fof(t21_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C)
                & v1_finseq_1(C) )
             => ( ( r1_xreal_0(A,k3_finseq_1(B))
                  & C = k7_relat_1(B,k2_finseq_1(A)) )
               => ( k3_finseq_1(C) = A
                  & k4_finseq_1(C) = k2_finseq_1(A) ) ) ) ) ) ).

fof(d4_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ( m1_finseq_1(B,A)
      <=> r1_tarski(k2_relat_1(B),A) ) ) ).

fof(t22_finseq_1,axiom,
    $true ).

fof(t23_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B,C] :
          ( m2_finseq_1(C,B)
         => m2_finseq_1(k7_relat_1(C,k2_finseq_1(A)),B) ) ) ).

fof(t24_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => ! [B] :
          ( ~ v1_xboole_0(B)
         => ? [C] :
              ( m2_finseq_1(C,B)
              & k3_finseq_1(C) = A ) ) ) ).

fof(t25_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ( k3_finseq_1(A) = np__0
      <=> A = k1_xboole_0 ) ) ).

fof(t26_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ( A = k1_xboole_0
      <=> k4_finseq_1(A) = k1_xboole_0 ) ) ).

fof(t27_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ( A = k1_xboole_0
      <=> k2_relat_1(A) = k1_xboole_0 ) ) ).

fof(t28_finseq_1,axiom,
    $true ).

fof(t29_finseq_1,axiom,
    ! [A] : m2_finseq_1(k1_xboole_0,A) ).

fof(d5_finseq_1,axiom,
    ! [A] : k5_finseq_1(A) = k1_tarski(k4_tarski(np__1,A)) ).

fof(d6_finseq_1,axiom,
    ! [A] : k6_finseq_1(A) = k1_xboole_0 ).

fof(t30_finseq_1,axiom,
    $true ).

fof(t31_finseq_1,axiom,
    $true ).

fof(t32_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( A = k6_finseq_1(B)
        <=> k3_finseq_1(A) = np__0 ) ) ).

fof(d7_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C)
                & v1_finseq_1(C) )
             => ( C = k7_finseq_1(A,B)
              <=> ( k4_finseq_1(C) = k2_finseq_1(k1_nat_1(k3_finseq_1(A),k3_finseq_1(B)))
                  & ! [D] :
                      ( m2_subset_1(D,k1_numbers,k5_numbers)
                     => ( r2_hidden(D,k4_finseq_1(A))
                       => k1_funct_1(C,D) = k1_funct_1(A,D) ) )
                  & ! [D] :
                      ( m2_subset_1(D,k1_numbers,k5_numbers)
                     => ( r2_hidden(D,k4_finseq_1(B))
                       => k1_funct_1(C,k1_nat_1(k3_finseq_1(A),D)) = k1_funct_1(B,D) ) ) ) ) ) ) ) ).

fof(t33_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => A = k7_relat_1(k7_finseq_1(A,B),k4_finseq_1(A)) ) ) ).

fof(t34_finseq_1,axiom,
    $true ).

fof(t35_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => k3_finseq_1(k7_finseq_1(A,B)) = k1_nat_1(k3_finseq_1(A),k3_finseq_1(B)) ) ) ).

fof(t36_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( v4_ordinal2(C)
             => ( ( r1_xreal_0(k1_nat_1(k3_finseq_1(A),np__1),C)
                  & r1_xreal_0(C,k1_nat_1(k3_finseq_1(A),k3_finseq_1(B))) )
               => k1_funct_1(k7_finseq_1(A,B),C) = k1_funct_1(B,k6_xcmplx_0(C,k3_finseq_1(A))) ) ) ) ) ).

fof(t37_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( v4_ordinal2(C)
             => ( r1_xreal_0(C,k3_finseq_1(k7_finseq_1(A,B)))
               => ( r1_xreal_0(C,k3_finseq_1(A))
                  | k1_funct_1(k7_finseq_1(A,B),C) = k1_funct_1(B,k6_xcmplx_0(C,k3_finseq_1(A))) ) ) ) ) ) ).

fof(t38_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( m2_subset_1(C,k1_numbers,k5_numbers)
             => ~ ( r2_hidden(C,k4_finseq_1(k7_finseq_1(A,B)))
                  & ~ r2_hidden(C,k4_finseq_1(A))
                  & ! [D] :
                      ( m2_subset_1(D,k1_numbers,k5_numbers)
                     => ~ ( r2_hidden(D,k4_finseq_1(B))
                          & C = k1_nat_1(k3_finseq_1(A),D) ) ) ) ) ) ) ).

fof(t39_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => r1_tarski(k4_finseq_1(A),k4_finseq_1(k7_finseq_1(A,B))) ) ) ).

fof(t40_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C)
            & v1_finseq_1(C) )
         => ~ ( r2_hidden(A,k4_finseq_1(B))
              & ! [D] :
                  ( m2_subset_1(D,k1_numbers,k5_numbers)
                 => ~ ( D = A
                      & r2_hidden(k1_nat_1(k3_finseq_1(C),D),k4_finseq_1(k7_finseq_1(C,B))) ) ) ) ) ) ).

fof(t41_finseq_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C)
                & v1_finseq_1(C) )
             => ( r2_hidden(A,k4_finseq_1(B))
               => r2_hidden(k1_nat_1(k3_finseq_1(C),A),k4_finseq_1(k7_finseq_1(C,B))) ) ) ) ) ).

fof(t42_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => r1_tarski(k2_relat_1(A),k2_relat_1(k7_finseq_1(A,B))) ) ) ).

fof(t43_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => r1_tarski(k2_relat_1(A),k2_relat_1(k7_finseq_1(B,A))) ) ) ).

fof(t44_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => k2_relat_1(k7_finseq_1(A,B)) = k2_xboole_0(k2_relat_1(A),k2_relat_1(B)) ) ) ).

fof(t45_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C)
                & v1_finseq_1(C) )
             => k7_finseq_1(k7_finseq_1(A,B),C) = k7_finseq_1(A,k7_finseq_1(B,C)) ) ) ) ).

fof(t46_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C)
                & v1_finseq_1(C) )
             => ( ( k7_finseq_1(A,B) = k7_finseq_1(C,B)
                  | k7_finseq_1(B,A) = k7_finseq_1(B,C) )
               => A = C ) ) ) ) ).

fof(t47_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ( k7_finseq_1(A,k1_xboole_0) = A
        & k7_finseq_1(k1_xboole_0,A) = A ) ) ).

fof(t48_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ( k7_finseq_1(A,B) = k1_xboole_0
           => ( A = k1_xboole_0
              & B = k1_xboole_0 ) ) ) ) ).

fof(d8_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ( B = k9_finseq_1(A)
      <=> ( k1_relat_1(B) = k2_finseq_1(np__1)
          & k1_funct_1(B,np__1) = A ) ) ) ).

fof(t49_finseq_1,axiom,
    $true ).

fof(t50_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( m2_finseq_1(k7_finseq_1(A,B),C)
             => ( m2_finseq_1(A,C)
                & m2_finseq_1(B,C) ) ) ) ) ).

fof(d9_finseq_1,axiom,
    ! [A,B] : k10_finseq_1(A,B) = k7_finseq_1(k9_finseq_1(A),k9_finseq_1(B)) ).

fof(d10_finseq_1,axiom,
    ! [A,B,C] : k11_finseq_1(A,B,C) = k7_finseq_1(k7_finseq_1(k9_finseq_1(A),k9_finseq_1(B)),k9_finseq_1(C)) ).

fof(t51_finseq_1,axiom,
    $true ).

fof(t52_finseq_1,axiom,
    ! [A] : k9_finseq_1(A) = k1_tarski(k4_tarski(np__1,A)) ).

fof(t53_finseq_1,axiom,
    $true ).

fof(t54_finseq_1,axiom,
    $true ).

fof(t55_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ( B = k9_finseq_1(A)
      <=> ( k4_finseq_1(B) = k2_finseq_1(np__1)
          & k2_relat_1(B) = k1_tarski(A) ) ) ) ).

fof(t56_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ( B = k9_finseq_1(A)
      <=> ( k3_finseq_1(B) = np__1
          & k2_relat_1(B) = k1_tarski(A) ) ) ) ).

fof(t57_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ( B = k9_finseq_1(A)
      <=> ( k3_finseq_1(B) = np__1
          & k1_funct_1(B,np__1) = A ) ) ) ).

fof(t58_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => k1_funct_1(k7_finseq_1(k9_finseq_1(A),B),np__1) = A ) ).

fof(t59_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => k1_funct_1(k7_finseq_1(B,k9_finseq_1(A)),k1_nat_1(k3_finseq_1(B),np__1)) = A ) ).

fof(t60_finseq_1,axiom,
    ! [A,B,C] :
      ( k11_finseq_1(A,B,C) = k7_finseq_1(k9_finseq_1(A),k10_finseq_1(B,C))
      & k11_finseq_1(A,B,C) = k7_finseq_1(k10_finseq_1(A,B),k9_finseq_1(C)) ) ).

fof(t61_finseq_1,axiom,
    ! [A,B,C] :
      ( ( v1_relat_1(C)
        & v1_funct_1(C)
        & v1_finseq_1(C) )
     => ( C = k10_finseq_1(A,B)
      <=> ( k3_finseq_1(C) = np__2
          & k1_funct_1(C,np__1) = A
          & k1_funct_1(C,np__2) = B ) ) ) ).

fof(t62_finseq_1,axiom,
    ! [A,B,C,D] :
      ( ( v1_relat_1(D)
        & v1_funct_1(D)
        & v1_finseq_1(D) )
     => ( D = k11_finseq_1(A,B,C)
      <=> ( k3_finseq_1(D) = np__3
          & k1_funct_1(D,np__1) = A
          & k1_funct_1(D,np__2) = B
          & k1_funct_1(D,np__3) = C ) ) ) ).

fof(t63_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ~ ( A != k1_xboole_0
          & ! [B] :
              ( ( v1_relat_1(B)
                & v1_funct_1(B)
                & v1_finseq_1(B) )
             => ! [C] : A != k7_finseq_1(B,k9_finseq_1(C)) ) ) ) ).

fof(t64_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( ( v1_relat_1(C)
                & v1_funct_1(C)
                & v1_finseq_1(C) )
             => ! [D] :
                  ( ( v1_relat_1(D)
                    & v1_funct_1(D)
                    & v1_finseq_1(D) )
                 => ~ ( k7_finseq_1(A,B) = k7_finseq_1(C,D)
                      & r1_xreal_0(k3_finseq_1(A),k3_finseq_1(C))
                      & ! [E] :
                          ( ( v1_relat_1(E)
                            & v1_funct_1(E)
                            & v1_finseq_1(E) )
                         => k7_finseq_1(A,E) != C ) ) ) ) ) ) ).

fof(d11_finseq_1,axiom,
    ! [A,B] :
      ( B = k13_finseq_1(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> m2_finseq_1(C,A) ) ) ).

fof(t65_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ( ( k2_relat_1(A) = k2_relat_1(B)
              & v2_funct_1(A)
              & v2_funct_1(B) )
           => k3_finseq_1(A) = k3_finseq_1(B) ) ) ) ).

fof(t66_finseq_1,axiom,
    ! [A] : r2_hidden(k1_xboole_0,k13_finseq_1(A)) ).

fof(d12_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_finseq_1(A)
      <=> ? [B] :
            ( m2_subset_1(B,k1_numbers,k5_numbers)
            & r1_tarski(k1_relat_1(A),k2_finseq_1(B)) ) ) ) ).

fof(t67_finseq_1,axiom,
    $true ).

fof(t68_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_finseq_1(A) ) ) ).

fof(t69_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ( v1_relat_1(k7_relat_1(B,A))
        & v1_funct_1(k7_relat_1(B,A))
        & v2_finseq_1(k7_relat_1(B,A))
        & v1_relat_1(k8_relat_1(A,B))
        & v1_funct_1(k8_relat_1(A,B))
        & v2_finseq_1(k8_relat_1(A,B)) ) ) ).

fof(d13_finseq_1,axiom,
    ! [A] :
      ( ? [B] :
          ( v4_ordinal2(B)
          & r1_tarski(A,k2_finseq_1(B)) )
     => ! [B] :
          ( m2_finseq_1(B,k5_numbers)
         => ( B = k14_finseq_1(A)
          <=> ( k2_relat_1(B) = A
              & ! [C] :
                  ( v4_ordinal2(C)
                 => ! [D] :
                      ( v4_ordinal2(D)
                     => ! [E] :
                          ( v4_ordinal2(E)
                         => ! [F] :
                              ( v4_ordinal2(F)
                             => ~ ( r1_xreal_0(np__1,C)
                                  & ~ r1_xreal_0(D,C)
                                  & r1_xreal_0(D,k3_finseq_1(B))
                                  & E = k1_funct_1(B,C)
                                  & F = k1_funct_1(B,D)
                                  & r1_xreal_0(F,E) ) ) ) ) ) ) ) ) ) ).

fof(t70_finseq_1,axiom,
    $true ).

fof(t71_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_finseq_1(A) )
     => k2_relat_1(k14_finseq_1(k1_relat_1(A))) = k1_relat_1(A) ) ).

fof(d14_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_finseq_1(A) )
     => k15_finseq_1(A) = k5_relat_1(k14_finseq_1(k1_relat_1(A)),A) ) ).

fof(t72_finseq_1,axiom,
    ! [A] :
      ( ? [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
          & r1_tarski(A,k2_finseq_1(B)) )
     => ( k14_finseq_1(A) = k1_xboole_0
      <=> A = k1_xboole_0 ) ) ).

fof(t73_finseq_1,axiom,
    ! [A] :
      ( v1_finset_1(A)
    <=> ? [B] :
          ( v1_relat_1(B)
          & v1_funct_1(B)
          & v1_finseq_1(B)
          & A = k2_relat_1(B) ) ) ).

fof(t74_finseq_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( r2_wellord2(k2_finseq_1(A),k2_finseq_1(B))
           => A = B ) ) ) ).

fof(t75_finseq_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => r2_wellord2(k2_finseq_1(A),A) ) ).

fof(t76_finseq_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => k1_card_1(k2_finseq_1(A)) = k1_card_1(A) ) ).

fof(t77_finseq_1,axiom,
    ! [A] :
      ~ ( v1_finset_1(A)
        & ! [B] :
            ( m2_subset_1(B,k1_numbers,k5_numbers)
           => ~ r2_wellord2(A,k2_finseq_1(B)) ) ) ).

fof(t78_finseq_1,axiom,
    ( ! [A] :
        ( v4_ordinal2(A)
       => k4_card_1(k2_finseq_1(A)) = A )
    & ! [A] :
        ( m2_subset_1(A,k1_numbers,k5_numbers)
       => ( k4_card_1(A) = A
          & k4_card_1(k1_card_1(A)) = A ) ) ) ).

fof(d15_finseq_1,axiom,
    ! [A,B] :
      ( m2_finseq_1(B,A)
     => ! [C] :
          ( v4_ordinal2(C)
         => k16_finseq_1(A,B,C) = k7_relat_1(B,k2_finseq_1(C)) ) ) ).

fof(t79_finseq_1,axiom,
    ! [A,B] :
      ( m2_finseq_1(B,A)
     => ! [C] :
          ( v4_ordinal2(C)
         => ( r1_xreal_0(k3_finseq_1(B),C)
           => k16_finseq_1(A,B,C) = B ) ) ) ).

fof(t80_finseq_1,axiom,
    ! [A,B] :
      ( m2_finseq_1(B,A)
     => ! [C] :
          ( v4_ordinal2(C)
         => ( r1_xreal_0(C,k3_finseq_1(B))
           => k3_finseq_1(k16_finseq_1(A,B,C)) = C ) ) ) ).

fof(t81_finseq_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v4_ordinal2(B)
         => ! [C] :
              ( v4_ordinal2(C)
             => ( r2_hidden(B,k2_finseq_1(A))
               => r2_hidden(k2_xcmplx_0(B,C),k2_finseq_1(k2_xcmplx_0(A,C))) ) ) ) ) ).

fof(t82_finseq_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v4_ordinal2(B)
         => ! [C] :
              ( v4_ordinal2(C)
             => ( r2_hidden(k2_xcmplx_0(B,C),k2_finseq_1(k2_xcmplx_0(A,C)))
               => ( r1_xreal_0(B,np__0)
                  | ( r2_hidden(B,k2_finseq_1(A))
                    & r2_hidden(B,k2_finseq_1(k2_xcmplx_0(A,C))) ) ) ) ) ) ) ).

fof(d16_finseq_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ( B = k17_finseq_1(A)
          <=> ! [C,D] :
                ( r2_hidden(k4_tarski(C,D),B)
              <=> ( r2_hidden(C,k3_relat_1(A))
                  & r2_hidden(D,k3_relat_1(A))
                  & ? [E] :
                      ( v1_relat_1(E)
                      & v1_funct_1(E)
                      & v1_finseq_1(E)
                      & r1_xreal_0(np__1,k3_finseq_1(E))
                      & k1_funct_1(E,np__1) = C
                      & k1_funct_1(E,k3_finseq_1(E)) = D
                      & ! [F] :
                          ( m2_subset_1(F,k1_numbers,k5_numbers)
                         => ( r1_xreal_0(np__1,F)
                           => ( r1_xreal_0(k3_finseq_1(E),F)
                              | r2_hidden(k4_tarski(k1_funct_1(E,F),k1_funct_1(E,k1_nat_1(F,np__1))),A) ) ) ) ) ) ) ) ) ) ).

fof(t83_finseq_1,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
     => r1_tarski(k13_finseq_1(A),k13_finseq_1(B)) ) ).

fof(t84_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ( r1_tarski(A,B)
           => r1_xreal_0(k3_finseq_1(A),k3_finseq_1(B)) ) ) ) ).

fof(t85_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( m2_subset_1(C,k1_numbers,k5_numbers)
             => ( ( r1_xreal_0(np__1,C)
                  & r1_xreal_0(C,k3_finseq_1(A)) )
               => k1_funct_1(k7_finseq_1(A,B),C) = k1_funct_1(A,C) ) ) ) ) ).

fof(t86_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B)
            & v1_finseq_1(B) )
         => ! [C] :
              ( m2_subset_1(C,k1_numbers,k5_numbers)
             => ( ( r1_xreal_0(np__1,C)
                  & r1_xreal_0(C,k3_finseq_1(B)) )
               => k1_funct_1(k7_finseq_1(A,B),k1_nat_1(k3_finseq_1(A),C)) = k1_funct_1(B,C) ) ) ) ) ).

fof(s1_finseq_1,axiom,
    ( ( ! [A] :
          ( m2_subset_1(A,k1_numbers,k5_numbers)
         => ! [B,C] :
              ( ( r2_hidden(A,k2_finseq_1(f1_s1_finseq_1))
                & p1_s1_finseq_1(A,B)
                & p1_s1_finseq_1(A,C) )
             => B = C ) )
      & ! [A] :
          ( m2_subset_1(A,k1_numbers,k5_numbers)
         => ~ ( r2_hidden(A,k2_finseq_1(f1_s1_finseq_1))
              & ! [B] : ~ p1_s1_finseq_1(A,B) ) ) )
   => ? [A] :
        ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A)
        & k4_finseq_1(A) = k2_finseq_1(f1_s1_finseq_1)
        & ! [B] :
            ( m2_subset_1(B,k1_numbers,k5_numbers)
           => ( r2_hidden(B,k2_finseq_1(f1_s1_finseq_1))
             => p1_s1_finseq_1(B,k1_funct_1(A,B)) ) ) ) ) ).

fof(s2_finseq_1,axiom,
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v1_finseq_1(A)
      & k3_finseq_1(A) = f1_s2_finseq_1
      & ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ( r2_hidden(B,k2_finseq_1(f1_s2_finseq_1))
           => k1_funct_1(A,B) = f2_s2_finseq_1(B) ) ) ) ).

fof(s3_finseq_1,axiom,
    ( ( p1_s3_finseq_1(k1_xboole_0)
      & ! [A] :
          ( ( v1_relat_1(A)
            & v1_funct_1(A)
            & v1_finseq_1(A) )
         => ! [B] :
              ( p1_s3_finseq_1(A)
             => p1_s3_finseq_1(k7_finseq_1(A,k9_finseq_1(B))) ) ) )
   => ! [A] :
        ( ( v1_relat_1(A)
          & v1_funct_1(A)
          & v1_finseq_1(A) )
       => p1_s3_finseq_1(A) ) ) ).

fof(s4_finseq_1,axiom,
    ? [A] :
    ! [B] :
      ( r2_hidden(B,A)
    <=> ? [C] :
          ( v1_relat_1(C)
          & v1_funct_1(C)
          & v1_finseq_1(C)
          & r2_hidden(C,k13_finseq_1(f1_s4_finseq_1))
          & p1_s4_finseq_1(C)
          & B = C ) ) ).

fof(s5_finseq_1,axiom,
    ( ! [A] :
        ( m2_subset_1(A,k1_numbers,k5_numbers)
       => ~ ( r2_hidden(A,k2_finseq_1(f2_s5_finseq_1))
            & ! [B] :
                ( m1_subset_1(B,f1_s5_finseq_1)
               => ~ p1_s5_finseq_1(A,B) ) ) )
   => ? [A] :
        ( m2_finseq_1(A,f1_s5_finseq_1)
        & k4_finseq_1(A) = k2_finseq_1(f2_s5_finseq_1)
        & ! [B] :
            ( m2_subset_1(B,k1_numbers,k5_numbers)
           => ( r2_hidden(B,k2_finseq_1(f2_s5_finseq_1))
             => p1_s5_finseq_1(B,k1_funct_1(A,B)) ) ) ) ) ).

fof(dt_m1_finseq_1,axiom,
    ! [A,B] :
      ( m1_finseq_1(B,A)
     => ( v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) ) ) ).

fof(existence_m1_finseq_1,axiom,
    ! [A] :
    ? [B] : m1_finseq_1(B,A) ).

fof(dt_m2_finseq_1,axiom,
    ! [A,B] :
      ( m2_finseq_1(B,A)
     => ( v1_funct_1(B)
        & v1_finseq_1(B)
        & m2_relset_1(B,k5_numbers,A) ) ) ).

fof(existence_m2_finseq_1,axiom,
    ! [A] :
    ? [B] : m2_finseq_1(B,A) ).

fof(redefinition_m2_finseq_1,axiom,
    ! [A,B] :
      ( m2_finseq_1(B,A)
    <=> m1_finseq_1(B,A) ) ).

fof(dt_k1_finseq_1,axiom,
    $true ).

fof(dt_k2_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => m1_subset_1(k2_finseq_1(A),k1_zfmisc_1(k5_numbers)) ) ).

fof(redefinition_k2_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => k2_finseq_1(A) = k1_finseq_1(A) ) ).

fof(dt_k3_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => m2_subset_1(k3_finseq_1(A),k1_numbers,k5_numbers) ) ).

fof(redefinition_k3_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => k3_finseq_1(A) = k1_card_1(A) ) ).

fof(dt_k4_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => m1_subset_1(k4_finseq_1(A),k1_zfmisc_1(k5_numbers)) ) ).

fof(redefinition_k4_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A) )
     => k4_finseq_1(A) = k1_relat_1(A) ) ).

fof(dt_k5_finseq_1,axiom,
    $true ).

fof(dt_k6_finseq_1,axiom,
    ! [A] :
      ( v1_xboole_0(k6_finseq_1(A))
      & m2_finseq_1(k6_finseq_1(A),A) ) ).

fof(dt_k7_finseq_1,axiom,
    ! [A,B] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v1_finseq_1(A)
        & v1_relat_1(B)
        & v1_funct_1(B)
        & v1_finseq_1(B) )
     => ( v1_relat_1(k7_finseq_1(A,B))
        & v1_funct_1(k7_finseq_1(A,B))
        & v1_finseq_1(k7_finseq_1(A,B)) ) ) ).

fof(dt_k8_finseq_1,axiom,
    ! [A,B,C] :
      ( ( m1_finseq_1(B,A)
        & m1_finseq_1(C,A) )
     => m2_finseq_1(k8_finseq_1(A,B,C),A) ) ).

fof(redefinition_k8_finseq_1,axiom,
    ! [A,B,C] :
      ( ( m1_finseq_1(B,A)
        & m1_finseq_1(C,A) )
     => k8_finseq_1(A,B,C) = k7_finseq_1(B,C) ) ).

fof(dt_k9_finseq_1,axiom,
    ! [A] :
      ( v1_relat_1(k9_finseq_1(A))
      & v1_funct_1(k9_finseq_1(A)) ) ).

fof(redefinition_k9_finseq_1,axiom,
    ! [A] : k9_finseq_1(A) = k5_finseq_1(A) ).

fof(dt_k10_finseq_1,axiom,
    $true ).

fof(dt_k11_finseq_1,axiom,
    $true ).

fof(dt_k12_finseq_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A) )
     => m2_finseq_1(k12_finseq_1(A,B),A) ) ).

fof(redefinition_k12_finseq_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A) )
     => k12_finseq_1(A,B) = k5_finseq_1(B) ) ).

fof(dt_k13_finseq_1,axiom,
    $true ).

fof(dt_k14_finseq_1,axiom,
    ! [A] : m2_finseq_1(k14_finseq_1(A),k5_numbers) ).

fof(dt_k15_finseq_1,axiom,
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_finseq_1(A) )
     => ( v1_relat_1(k15_finseq_1(A))
        & v1_funct_1(k15_finseq_1(A)) ) ) ).

fof(dt_k16_finseq_1,axiom,
    ! [A,B,C] :
      ( ( m1_finseq_1(B,A)
        & v4_ordinal2(C) )
     => m2_finseq_1(k16_finseq_1(A,B,C),A) ) ).

fof(dt_k17_finseq_1,axiom,
    ! [A] :
      ( v1_relat_1(A)
     => v1_relat_1(k17_finseq_1(A)) ) ).

fof(d1_finseq_1,axiom,
    ! [A] :
      ( v4_ordinal2(A)
     => k1_finseq_1(A) = a_1_0_finseq_1(A) ) ).

fof(fraenkel_a_1_0_finseq_1,axiom,
    ! [A,B] :
      ( v4_ordinal2(B)
     => ( r2_hidden(A,a_1_0_finseq_1(B))
      <=> ? [C] :
            ( m2_subset_1(C,k1_numbers,k5_numbers)
            & A = C
            & r1_xreal_0(np__1,C)
            & r1_xreal_0(C,B) ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+200 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Preliminaries to Structures
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : struct_0 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   27 (   4 unt;   0 def)
%            Number of atoms       :   83 (  10 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :   73 (  17   ~;   0   |;  32   &)
%                                         (   2 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   10 (   8 usr;   1 prp; 0-3 aty)
%            Number of functors    :    9 (   9 usr;   0 con; 1-3 aty)
%            Number of variables   :   45 (  37   !;   8   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_struct_0,axiom,
    ? [A] :
      ( l1_struct_0(A)
      & v1_struct_0(A) ) ).

fof(rc2_struct_0,axiom,
    ? [A] :
      ( l2_struct_0(A)
      & v2_struct_0(A) ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( l1_struct_0(A)
      & ~ v3_struct_0(A) ) ).

fof(rc4_struct_0,axiom,
    ? [A] :
      ( l2_struct_0(A)
      & ~ v3_struct_0(A) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B) ) ) ).

fof(d1_struct_0,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ( v3_struct_0(A)
      <=> v1_xboole_0(u1_struct_0(A)) ) ) ).

fof(dt_m1_struct_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ! [C] :
          ( m1_struct_0(C,A,B)
         => m1_subset_1(C,u1_struct_0(A)) ) ) ).

fof(existence_m1_struct_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ? [C] : m1_struct_0(C,A,B) ) ).

fof(redefinition_m1_struct_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ! [C] :
          ( m1_struct_0(C,A,B)
        <=> m1_subset_1(C,B) ) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(existence_l1_struct_0,axiom,
    ? [A] : l1_struct_0(A) ).

fof(dt_l2_struct_0,axiom,
    ! [A] :
      ( l2_struct_0(A)
     => l1_struct_0(A) ) ).

fof(existence_l2_struct_0,axiom,
    ? [A] : l2_struct_0(A) ).

fof(abstractness_v1_struct_0,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ( v1_struct_0(A)
       => A = g1_struct_0(u1_struct_0(A)) ) ) ).

fof(abstractness_v2_struct_0,axiom,
    ! [A] :
      ( l2_struct_0(A)
     => ( v2_struct_0(A)
       => A = g2_struct_0(u1_struct_0(A),u2_struct_0(A)) ) ) ).

fof(dt_k1_struct_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k1_struct_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ).

fof(redefinition_k1_struct_0,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => k1_struct_0(A,B) = k1_tarski(B) ) ).

fof(dt_k2_struct_0,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k2_struct_0(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) ).

fof(commutativity_k2_struct_0,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k2_struct_0(A,B,C) = k2_struct_0(A,C,B) ) ).

fof(redefinition_k2_struct_0,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k2_struct_0(A,B,C) = k2_tarski(B,C) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(dt_u2_struct_0,axiom,
    ! [A] :
      ( l2_struct_0(A)
     => m1_subset_1(u2_struct_0(A),u1_struct_0(A)) ) ).

fof(dt_g1_struct_0,axiom,
    ! [A] :
      ( v1_struct_0(g1_struct_0(A))
      & l1_struct_0(g1_struct_0(A)) ) ).

fof(free_g1_struct_0,axiom,
    ! [A,B] :
      ( g1_struct_0(A) = g1_struct_0(B)
     => A = B ) ).

fof(dt_g2_struct_0,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ( v2_struct_0(g2_struct_0(A,B))
        & l2_struct_0(g2_struct_0(A,B)) ) ) ).

fof(free_g2_struct_0,axiom,
    ! [A,B] :
      ( m1_subset_1(B,A)
     => ! [C,D] :
          ( g2_struct_0(A,B) = g2_struct_0(C,D)
         => ( A = C
            & B = D ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+210 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Vectors in Real Linear Space
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : rlvect_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  142 (  20 unt;   0 def)
%            Number of atoms       : 1008 ( 165 equ)
%            Maximal formula atoms :   35 (   7 avg)
%            Number of connectives :  979 ( 113   ~;   6   |; 501   &)
%                                         (   9 <=>; 350  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   20 (   7 avg)
%            Maximal term depth    :    6 (   1 avg)
%            Number of predicates  :   28 (  26 usr;   1 prp; 0-3 aty)
%            Number of functors    :   41 (  41 usr;   6 con; 0-6 aty)
%            Number of variables   :  379 ( 366   !;  13   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_rlvect_1,axiom,
    ? [A] :
      ( l1_rlvect_1(A)
      & v1_rlvect_1(A) ) ).

fof(rc2_rlvect_1,axiom,
    ? [A] :
      ( l2_rlvect_1(A)
      & v2_rlvect_1(A) ) ).

fof(rc3_rlvect_1,axiom,
    ? [A] :
      ( l2_rlvect_1(A)
      & ~ v3_struct_0(A) ) ).

fof(rc4_rlvect_1,axiom,
    ? [A] :
      ( l1_rlvect_1(A)
      & ~ v3_struct_0(A)
      & v1_rlvect_1(A) ) ).

fof(fc1_rlvect_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_relset_1(C,k2_zfmisc_1(A,A),A)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(k1_numbers,A),A)
        & m1_relset_1(D,k2_zfmisc_1(k1_numbers,A),A) )
     => ( ~ v3_struct_0(g2_rlvect_1(A,B,C,D))
        & v2_rlvect_1(g2_rlvect_1(A,B,C,D)) ) ) ).

fof(rc5_rlvect_1,axiom,
    ? [A] :
      ( l1_rlvect_1(A)
      & ~ v3_struct_0(A)
      & v1_rlvect_1(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A) ) ).

fof(rc6_rlvect_1,axiom,
    ? [A] :
      ( l2_rlvect_1(A)
      & ~ v3_struct_0(A)
      & v2_rlvect_1(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v7_rlvect_1(A) ) ).

fof(d1_rlvect_1,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( r1_rlvect_1(A,B)
        <=> r2_hidden(B,u1_struct_0(A)) ) ) ).

fof(t1_rlvect_1,axiom,
    $true ).

fof(t2_rlvect_1,axiom,
    $true ).

fof(t3_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => r1_rlvect_1(A,B) ) ) ).

fof(d2_rlvect_1,axiom,
    ! [A] :
      ( l2_struct_0(A)
     => k1_rlvect_1(A) = u2_struct_0(A) ) ).

fof(d3_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k2_rlvect_1(A,B,C) = k8_funct_2(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A),u1_rlvect_1(A),k1_domain_1(u1_struct_0(A),u1_struct_0(A),B,C)) ) ) ) ).

fof(d4_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => k3_rlvect_1(A,B,C) = k8_funct_2(k2_zfmisc_1(k1_numbers,u1_struct_0(A)),u1_struct_0(A),u2_rlvect_1(A),k1_domain_1(k1_numbers,u1_struct_0(A),C,B)) ) ) ) ).

fof(t4_rlvect_1,axiom,
    $true ).

fof(t5_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k2_rlvect_1(A,B,C) = k2_binop_1(u1_struct_0(A),u1_struct_0(A),u1_struct_0(A),u1_rlvect_1(A),B,C) ) ) ) ).

fof(d5_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ( v3_rlvect_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => k2_rlvect_1(A,B,C) = k2_rlvect_1(A,C,B) ) ) ) ) ).

fof(d6_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ( v4_rlvect_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k2_rlvect_1(A,k2_rlvect_1(A,B,C),D) = k2_rlvect_1(A,B,k2_rlvect_1(A,C,D)) ) ) ) ) ) ).

fof(d7_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ( v5_rlvect_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => k2_rlvect_1(A,B,k1_rlvect_1(A)) = B ) ) ) ).

fof(d8_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ( v6_rlvect_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ? [C] :
                ( m1_subset_1(C,u1_struct_0(A))
                & k2_rlvect_1(A,B,C) = k1_rlvect_1(A) ) ) ) ) ).

fof(d9_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_rlvect_1(A) )
     => ( v7_rlvect_1(A)
      <=> ( ! [B] :
              ( m1_subset_1(B,k1_numbers)
             => ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => k3_rlvect_1(A,k2_rlvect_1(A,C,D),B) = k2_rlvect_1(A,k3_rlvect_1(A,C,B),k3_rlvect_1(A,D,B)) ) ) )
          & ! [B] :
              ( m1_subset_1(B,k1_numbers)
             => ! [C] :
                  ( m1_subset_1(C,k1_numbers)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => k3_rlvect_1(A,D,k3_real_1(B,C)) = k2_rlvect_1(A,k3_rlvect_1(A,D,B),k3_rlvect_1(A,D,C)) ) ) )
          & ! [B] :
              ( m1_subset_1(B,k1_numbers)
             => ! [C] :
                  ( m1_subset_1(C,k1_numbers)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => k3_rlvect_1(A,D,k4_real_1(B,C)) = k3_rlvect_1(A,k3_rlvect_1(A,D,C),B) ) ) )
          & ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => k3_rlvect_1(A,B,np__1) = B ) ) ) ) ).

fof(t6_rlvect_1,axiom,
    $true ).

fof(t7_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_rlvect_1(A) )
     => ( ( ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => k2_rlvect_1(A,B,C) = k2_rlvect_1(A,C,B) ) )
          & ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => k2_rlvect_1(A,k2_rlvect_1(A,B,C),D) = k2_rlvect_1(A,B,k2_rlvect_1(A,C,D)) ) ) )
          & ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => k2_rlvect_1(A,B,k1_rlvect_1(A)) = B )
          & ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => ? [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                  & k2_rlvect_1(A,B,C) = k1_rlvect_1(A) ) )
          & ! [B] :
              ( m1_subset_1(B,k1_numbers)
             => ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => k3_rlvect_1(A,k2_rlvect_1(A,C,D),B) = k2_rlvect_1(A,k3_rlvect_1(A,C,B),k3_rlvect_1(A,D,B)) ) ) )
          & ! [B] :
              ( m1_subset_1(B,k1_numbers)
             => ! [C] :
                  ( m1_subset_1(C,k1_numbers)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => k3_rlvect_1(A,D,k3_real_1(B,C)) = k2_rlvect_1(A,k3_rlvect_1(A,D,B),k3_rlvect_1(A,D,C)) ) ) )
          & ! [B] :
              ( m1_subset_1(B,k1_numbers)
             => ! [C] :
                  ( m1_subset_1(C,k1_numbers)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => k3_rlvect_1(A,D,k4_real_1(B,C)) = k3_rlvect_1(A,k3_rlvect_1(A,D,C),B) ) ) )
          & ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => k3_rlvect_1(A,B,np__1) = B ) )
       => ( ~ v3_struct_0(A)
          & v3_rlvect_1(A)
          & v4_rlvect_1(A)
          & v5_rlvect_1(A)
          & v6_rlvect_1(A)
          & v7_rlvect_1(A)
          & l2_rlvect_1(A) ) ) ) ).

fof(t8_rlvect_1,axiom,
    $true ).

fof(t9_rlvect_1,axiom,
    $true ).

fof(t10_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k2_rlvect_1(A,B,k1_rlvect_1(A)) = B
            & k2_rlvect_1(A,k1_rlvect_1(A),B) = B ) ) ) ).

fof(d10_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( ( v4_rlvect_1(A)
              & v5_rlvect_1(A)
              & v6_rlvect_1(A) )
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( C = k5_rlvect_1(A,B)
                <=> k2_rlvect_1(A,B,C) = k1_rlvect_1(A) ) ) ) ) ) ).

fof(d11_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k6_rlvect_1(A,B,C) = k2_rlvect_1(A,B,k5_rlvect_1(A,C)) ) ) ) ).

fof(t11_rlvect_1,axiom,
    $true ).

fof(t12_rlvect_1,axiom,
    $true ).

fof(t13_rlvect_1,axiom,
    $true ).

fof(t14_rlvect_1,axiom,
    $true ).

fof(t15_rlvect_1,axiom,
    $true ).

fof(t16_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k2_rlvect_1(A,B,k5_rlvect_1(A,B)) = k1_rlvect_1(A)
            & k2_rlvect_1(A,k5_rlvect_1(A,B),B) = k1_rlvect_1(A) ) ) ) ).

fof(t17_rlvect_1,axiom,
    $true ).

fof(t18_rlvect_1,axiom,
    $true ).

fof(t19_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k2_rlvect_1(A,B,C) = k1_rlvect_1(A)
               => B = k5_rlvect_1(A,C) ) ) ) ) ).

fof(t20_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ? [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                  & k2_rlvect_1(A,B,D) = C ) ) ) ) ).

fof(t21_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(A))
                     => ( ( k2_rlvect_1(A,B,D) = k2_rlvect_1(A,B,E)
                          | k2_rlvect_1(A,D,B) = k2_rlvect_1(A,E,B) )
                       => D = E ) ) ) ) ) ) ).

fof(t22_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( k2_rlvect_1(A,B,C) = B
                  | k2_rlvect_1(A,C,B) = B )
               => C = k1_rlvect_1(A) ) ) ) ) ).

fof(t23_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( ( A = np__0
                  | C = k1_rlvect_1(B) )
               => k3_rlvect_1(B,C,A) = k1_rlvect_1(B) ) ) ) ) ).

fof(t24_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ~ ( k3_rlvect_1(B,C,A) = k1_rlvect_1(B)
                  & A != np__0
                  & C != k1_rlvect_1(B) ) ) ) ) ).

fof(t25_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => k5_rlvect_1(A,k1_rlvect_1(A)) = k1_rlvect_1(A) ) ).

fof(t26_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_rlvect_1(A,B,k1_rlvect_1(A)) = B ) ) ).

fof(t27_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_rlvect_1(A,k1_rlvect_1(A),B) = k5_rlvect_1(A,B) ) ) ).

fof(t28_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_rlvect_1(A,B,B) = k1_rlvect_1(A) ) ) ).

fof(t29_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k5_rlvect_1(A,B) = k3_rlvect_1(A,B,k1_real_1(np__1)) ) ) ).

fof(t30_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k5_rlvect_1(A,k5_rlvect_1(A,B)) = B ) ) ).

fof(t31_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k5_rlvect_1(A,B) = k5_rlvect_1(A,C)
               => B = C ) ) ) ) ).

fof(t32_rlvect_1,axiom,
    $true ).

fof(t33_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B = k5_rlvect_1(A,B)
           => B = k1_rlvect_1(A) ) ) ) ).

fof(t34_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k4_rlvect_1(A,B,B) = k1_rlvect_1(A)
           => B = k1_rlvect_1(A) ) ) ) ).

fof(t35_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k6_rlvect_1(A,B,C) = k1_rlvect_1(A)
               => B = C ) ) ) ) ).

fof(t36_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ? [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                  & k6_rlvect_1(A,C,D) = B ) ) ) ) ).

fof(t37_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( k6_rlvect_1(A,B,C) = k6_rlvect_1(A,B,D)
                   => C = D ) ) ) ) ) ).

fof(t38_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k3_rlvect_1(B,k5_rlvect_1(B,C),A) = k3_rlvect_1(B,C,k1_real_1(A)) ) ) ) ).

fof(t39_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k3_rlvect_1(B,k5_rlvect_1(B,C),A) = k5_rlvect_1(B,k3_rlvect_1(B,C,A)) ) ) ) ).

fof(t40_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k3_rlvect_1(B,k5_rlvect_1(B,C),k1_real_1(A)) = k3_rlvect_1(B,C,A) ) ) ) ).

fof(t41_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k6_rlvect_1(A,B,k2_rlvect_1(A,C,D)) = k6_rlvect_1(A,k6_rlvect_1(A,B,D),C) ) ) ) ) ).

fof(t42_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k6_rlvect_1(A,k2_rlvect_1(A,B,C),D) = k2_rlvect_1(A,B,k6_rlvect_1(A,C,D)) ) ) ) ) ).

fof(t43_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k6_rlvect_1(A,B,k6_rlvect_1(A,C,D)) = k4_rlvect_1(A,k6_rlvect_1(A,B,C),D) ) ) ) ) ).

fof(t44_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k5_rlvect_1(A,k2_rlvect_1(A,B,C)) = k6_rlvect_1(A,k5_rlvect_1(A,C),B) ) ) ) ).

fof(t45_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k5_rlvect_1(A,k2_rlvect_1(A,B,C)) = k2_rlvect_1(A,k5_rlvect_1(A,C),k5_rlvect_1(A,B)) ) ) ) ).

fof(t46_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k6_rlvect_1(A,k5_rlvect_1(A,B),C) = k6_rlvect_1(A,k5_rlvect_1(A,C),B) ) ) ) ).

fof(t47_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k5_rlvect_1(A,k6_rlvect_1(A,B,C)) = k2_rlvect_1(A,C,k5_rlvect_1(A,B)) ) ) ) ).

fof(t48_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => k3_rlvect_1(B,k6_rlvect_1(B,C,D),A) = k6_rlvect_1(B,k3_rlvect_1(B,C,A),k3_rlvect_1(B,D,A)) ) ) ) ) ).

fof(t49_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v7_rlvect_1(C)
                & l2_rlvect_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k3_rlvect_1(C,D,k5_real_1(A,B)) = k6_rlvect_1(C,k3_rlvect_1(C,D,A),k3_rlvect_1(C,D,B)) ) ) ) ) ).

fof(t50_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( k3_rlvect_1(B,C,A) = k3_rlvect_1(B,D,A)
                   => ( A = np__0
                      | C = D ) ) ) ) ) ) ).

fof(t51_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v7_rlvect_1(C)
                & l2_rlvect_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( k3_rlvect_1(C,D,A) = k3_rlvect_1(C,D,B)
                   => ( D = k1_rlvect_1(C)
                      | A = B ) ) ) ) ) ) ).

fof(d12_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( C = k9_rlvect_1(A,B)
              <=> ? [D] :
                    ( v1_funct_1(D)
                    & v1_funct_2(D,k5_numbers,u1_struct_0(A))
                    & m2_relset_1(D,k5_numbers,u1_struct_0(A))
                    & C = k8_funct_2(k5_numbers,u1_struct_0(A),D,k3_finseq_1(B))
                    & k8_funct_2(k5_numbers,u1_struct_0(A),D,np__0) = k1_rlvect_1(A)
                    & ! [E] :
                        ( m2_subset_1(E,k1_numbers,k5_numbers)
                       => ! [F] :
                            ( m1_subset_1(F,u1_struct_0(A))
                           => ( F = k1_funct_1(B,k1_nat_1(E,np__1))
                             => ( r1_xreal_0(k3_finseq_1(B),E)
                                | k8_funct_2(k5_numbers,u1_struct_0(A),D,k1_nat_1(E,np__1)) = k2_rlvect_1(A,k8_funct_2(k5_numbers,u1_struct_0(A),D,E),F) ) ) ) ) ) ) ) ) ) ).

fof(t52_rlvect_1,axiom,
    $true ).

fof(t53_rlvect_1,axiom,
    $true ).

fof(t54_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_subset_1(C,k1_numbers,k5_numbers)
             => ! [D] :
                  ( m2_subset_1(D,k1_numbers,k5_numbers)
                 => ( ( r2_hidden(C,k2_finseq_1(D))
                      & k3_finseq_1(B) = D )
                   => m1_subset_1(k1_funct_1(B,C),u1_struct_0(A)) ) ) ) ) ) ).

fof(t55_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( k3_finseq_1(B) = k1_nat_1(k3_finseq_1(C),np__1)
                      & C = k7_relat_1(B,k4_finseq_1(C))
                      & D = k1_funct_1(B,k3_finseq_1(B)) )
                   => k9_rlvect_1(A,B) = k2_rlvect_1(A,k9_rlvect_1(A,C),D) ) ) ) ) ) ).

fof(t56_rlvect_1,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m2_finseq_1(D,u1_struct_0(B))
                 => ( ( k3_finseq_1(C) = k3_finseq_1(D)
                      & ! [E] :
                          ( m2_subset_1(E,k1_numbers,k5_numbers)
                         => ! [F] :
                              ( m1_subset_1(F,u1_struct_0(B))
                             => ( ( r2_hidden(E,k4_finseq_1(C))
                                  & F = k1_funct_1(D,E) )
                               => k1_funct_1(C,E) = k3_rlvect_1(B,F,A) ) ) ) )
                   => k9_rlvect_1(B,C) = k3_rlvect_1(B,k9_rlvect_1(B,D),A) ) ) ) ) ) ).

fof(t57_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ( ( k3_finseq_1(B) = k3_finseq_1(C)
                  & ! [D] :
                      ( m2_subset_1(D,k1_numbers,k5_numbers)
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ( ( r2_hidden(D,k4_finseq_1(B))
                              & E = k1_funct_1(C,D) )
                           => k1_funct_1(B,D) = k5_rlvect_1(A,E) ) ) ) )
               => k9_rlvect_1(A,B) = k5_rlvect_1(A,k9_rlvect_1(A,C)) ) ) ) ) ).

fof(t58_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => k9_rlvect_1(A,k8_finseq_1(u1_struct_0(A),B,C)) = k2_rlvect_1(A,k9_rlvect_1(A,B),k9_rlvect_1(A,C)) ) ) ) ).

fof(t59_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ( ( k2_relat_1(B) = k2_relat_1(C)
                  & v2_funct_1(B)
                  & v2_funct_1(C) )
               => k9_rlvect_1(A,B) = k9_rlvect_1(A,C) ) ) ) ) ).

fof(t60_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => k9_rlvect_1(A,k6_finseq_1(u1_struct_0(A))) = k1_rlvect_1(A) ) ).

fof(t61_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k9_rlvect_1(A,k12_finseq_1(u1_struct_0(A),B)) = B ) ) ).

fof(t62_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k9_rlvect_1(A,k7_rlvect_1(A,B,C)) = k2_rlvect_1(A,B,C) ) ) ) ).

fof(t63_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,B,C,D)) = k2_rlvect_1(A,k2_rlvect_1(A,B,C),D) ) ) ) ) ).

fof(t64_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => k3_rlvect_1(A,k9_rlvect_1(A,k6_finseq_1(u1_struct_0(A))),B) = k1_rlvect_1(A) ) ) ).

fof(t65_rlvect_1,axiom,
    $true ).

fof(t66_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k3_rlvect_1(A,k9_rlvect_1(A,k7_rlvect_1(A,C,D)),B) = k4_rlvect_1(A,k3_rlvect_1(A,C,B),k3_rlvect_1(A,D,B)) ) ) ) ) ).

fof(t67_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(A))
                     => k3_rlvect_1(A,k9_rlvect_1(A,k8_rlvect_1(A,C,D,E)),B) = k4_rlvect_1(A,k4_rlvect_1(A,k3_rlvect_1(A,C,B),k3_rlvect_1(A,D,B)),k3_rlvect_1(A,E,B)) ) ) ) ) ) ).

fof(t68_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => k5_rlvect_1(A,k9_rlvect_1(A,k6_finseq_1(u1_struct_0(A)))) = k1_rlvect_1(A) ) ).

fof(t69_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k5_rlvect_1(A,k9_rlvect_1(A,k12_finseq_1(u1_struct_0(A),B))) = k5_rlvect_1(A,B) ) ) ).

fof(t70_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k5_rlvect_1(A,k9_rlvect_1(A,k7_rlvect_1(A,B,C))) = k6_rlvect_1(A,k5_rlvect_1(A,B),C) ) ) ) ).

fof(t71_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k5_rlvect_1(A,k9_rlvect_1(A,k8_rlvect_1(A,B,C,D))) = k6_rlvect_1(A,k6_rlvect_1(A,k5_rlvect_1(A,B),C),D) ) ) ) ) ).

fof(t72_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k9_rlvect_1(A,k7_rlvect_1(A,B,C)) = k9_rlvect_1(A,k7_rlvect_1(A,C,B)) ) ) ) ).

fof(t73_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k9_rlvect_1(A,k7_rlvect_1(A,B,C)) = k2_rlvect_1(A,k9_rlvect_1(A,k12_finseq_1(u1_struct_0(A),B)),k9_rlvect_1(A,k12_finseq_1(u1_struct_0(A),C))) ) ) ) ).

fof(t74_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => k9_rlvect_1(A,k7_rlvect_1(A,k1_rlvect_1(A),k1_rlvect_1(A))) = k1_rlvect_1(A) ) ).

fof(t75_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k9_rlvect_1(A,k7_rlvect_1(A,k1_rlvect_1(A),B)) = B
            & k9_rlvect_1(A,k7_rlvect_1(A,B,k1_rlvect_1(A))) = B ) ) ) ).

fof(t76_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k9_rlvect_1(A,k7_rlvect_1(A,B,k5_rlvect_1(A,B))) = k1_rlvect_1(A)
            & k9_rlvect_1(A,k7_rlvect_1(A,k5_rlvect_1(A,B),B)) = k1_rlvect_1(A) ) ) ) ).

fof(t77_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k9_rlvect_1(A,k7_rlvect_1(A,B,k5_rlvect_1(A,C))) = k6_rlvect_1(A,B,C) ) ) ) ).

fof(t78_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k9_rlvect_1(A,k7_rlvect_1(A,k5_rlvect_1(A,B),k5_rlvect_1(A,C))) = k5_rlvect_1(A,k2_rlvect_1(A,C,B)) ) ) ) ).

fof(t79_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k9_rlvect_1(A,k7_rlvect_1(A,B,B)) = k3_rlvect_1(A,B,np__2) ) ) ).

fof(t80_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k9_rlvect_1(A,k7_rlvect_1(A,k5_rlvect_1(A,B),k5_rlvect_1(A,B))) = k3_rlvect_1(A,B,k1_real_1(np__2)) ) ) ).

fof(t81_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,B,C,D)) = k2_rlvect_1(A,k2_rlvect_1(A,k9_rlvect_1(A,k12_finseq_1(u1_struct_0(A),B)),k9_rlvect_1(A,k12_finseq_1(u1_struct_0(A),C))),k9_rlvect_1(A,k12_finseq_1(u1_struct_0(A),D))) ) ) ) ) ).

fof(t82_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,B,C,D)) = k2_rlvect_1(A,k9_rlvect_1(A,k7_rlvect_1(A,B,C)),D) ) ) ) ) ).

fof(t83_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,C,B,D)) = k4_rlvect_1(A,k9_rlvect_1(A,k7_rlvect_1(A,B,D)),C) ) ) ) ) ).

fof(t84_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,C,B,D)) = k4_rlvect_1(A,k9_rlvect_1(A,k7_rlvect_1(A,C,D)),B) ) ) ) ) ).

fof(t85_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,C,B,D)) = k9_rlvect_1(A,k8_rlvect_1(A,C,D,B)) ) ) ) ) ).

fof(t86_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,C,B,D)) = k9_rlvect_1(A,k8_rlvect_1(A,B,C,D)) ) ) ) ) ).

fof(t87_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,C,B,D)) = k9_rlvect_1(A,k8_rlvect_1(A,B,D,C)) ) ) ) ) ).

fof(t88_rlvect_1,axiom,
    $true ).

fof(t89_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k9_rlvect_1(A,k8_rlvect_1(A,C,B,D)) = k9_rlvect_1(A,k8_rlvect_1(A,D,B,C)) ) ) ) ) ).

fof(t90_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => k9_rlvect_1(A,k8_rlvect_1(A,k1_rlvect_1(A),k1_rlvect_1(A),k1_rlvect_1(A))) = k1_rlvect_1(A) ) ).

fof(t91_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k9_rlvect_1(A,k8_rlvect_1(A,k1_rlvect_1(A),k1_rlvect_1(A),B)) = B
            & k9_rlvect_1(A,k8_rlvect_1(A,k1_rlvect_1(A),B,k1_rlvect_1(A))) = B
            & k9_rlvect_1(A,k8_rlvect_1(A,B,k1_rlvect_1(A),k1_rlvect_1(A))) = B ) ) ) ).

fof(t92_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k9_rlvect_1(A,k8_rlvect_1(A,k1_rlvect_1(A),B,C)) = k2_rlvect_1(A,B,C)
                & k9_rlvect_1(A,k8_rlvect_1(A,B,C,k1_rlvect_1(A))) = k2_rlvect_1(A,B,C)
                & k9_rlvect_1(A,k8_rlvect_1(A,B,k1_rlvect_1(A),C)) = k2_rlvect_1(A,B,C) ) ) ) ) ).

fof(t93_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k9_rlvect_1(A,k8_rlvect_1(A,B,B,B)) = k3_rlvect_1(A,B,np__3) ) ) ).

fof(t94_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ( k3_finseq_1(B) = np__0
           => k9_rlvect_1(A,B) = k1_rlvect_1(A) ) ) ) ).

fof(t95_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ( k3_finseq_1(B) = np__1
           => k9_rlvect_1(A,B) = k1_funct_1(B,np__1) ) ) ) ).

fof(t96_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( k3_finseq_1(B) = np__2
                      & C = k1_funct_1(B,np__1)
                      & D = k1_funct_1(B,np__2) )
                   => k9_rlvect_1(A,B) = k2_rlvect_1(A,C,D) ) ) ) ) ) ).

fof(t97_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(A))
                     => ( ( k3_finseq_1(B) = np__3
                          & C = k1_funct_1(B,np__1)
                          & D = k1_funct_1(B,np__2)
                          & E = k1_funct_1(B,np__3) )
                       => k9_rlvect_1(A,B) = k2_rlvect_1(A,k2_rlvect_1(A,C,D),E) ) ) ) ) ) ) ).

fof(d13_rlvect_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( v8_rlvect_1(B,A)
          <=> B != k1_rlvect_1(A) ) ) ) ).

fof(dt_l1_rlvect_1,axiom,
    ! [A] :
      ( l1_rlvect_1(A)
     => l2_struct_0(A) ) ).

fof(existence_l1_rlvect_1,axiom,
    ? [A] : l1_rlvect_1(A) ).

fof(dt_l2_rlvect_1,axiom,
    ! [A] :
      ( l2_rlvect_1(A)
     => l1_rlvect_1(A) ) ).

fof(existence_l2_rlvect_1,axiom,
    ? [A] : l2_rlvect_1(A) ).

fof(abstractness_v1_rlvect_1,axiom,
    ! [A] :
      ( l1_rlvect_1(A)
     => ( v1_rlvect_1(A)
       => A = g1_rlvect_1(u1_struct_0(A),u1_rlvect_1(A),u2_struct_0(A)) ) ) ).

fof(abstractness_v2_rlvect_1,axiom,
    ! [A] :
      ( l2_rlvect_1(A)
     => ( v2_rlvect_1(A)
       => A = g2_rlvect_1(u1_struct_0(A),u2_struct_0(A),u1_rlvect_1(A),u2_rlvect_1(A)) ) ) ).

fof(dt_k1_rlvect_1,axiom,
    ! [A] :
      ( l2_struct_0(A)
     => m1_subset_1(k1_rlvect_1(A),u1_struct_0(A)) ) ).

fof(dt_k2_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k2_rlvect_1(A,B,C),u1_struct_0(A)) ) ).

fof(dt_k3_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l2_rlvect_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,k1_numbers) )
     => m1_subset_1(k3_rlvect_1(A,B,C),u1_struct_0(A)) ) ).

fof(dt_k4_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & l1_rlvect_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k4_rlvect_1(A,B,C),u1_struct_0(A)) ) ).

fof(commutativity_k4_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & l1_rlvect_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k4_rlvect_1(A,B,C) = k4_rlvect_1(A,C,B) ) ).

fof(redefinition_k4_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & l1_rlvect_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k4_rlvect_1(A,B,C) = k2_rlvect_1(A,B,C) ) ).

fof(dt_k5_rlvect_1,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k5_rlvect_1(A,B),u1_struct_0(A)) ) ).

fof(dt_k6_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k6_rlvect_1(A,B,C),u1_struct_0(A)) ) ).

fof(dt_k7_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m2_finseq_1(k7_rlvect_1(A,B,C),u1_struct_0(A)) ) ).

fof(redefinition_k7_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k7_rlvect_1(A,B,C) = k10_finseq_1(B,C) ) ).

fof(dt_k8_rlvect_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(A)) )
     => m2_finseq_1(k8_rlvect_1(A,B,C,D),u1_struct_0(A)) ) ).

fof(redefinition_k8_rlvect_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(A)) )
     => k8_rlvect_1(A,B,C,D) = k11_finseq_1(B,C,D) ) ).

fof(dt_k9_rlvect_1,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_finseq_1(B,u1_struct_0(A)) )
     => m1_subset_1(k9_rlvect_1(A,B),u1_struct_0(A)) ) ).

fof(dt_u1_rlvect_1,axiom,
    ! [A] :
      ( l1_rlvect_1(A)
     => ( v1_funct_1(u1_rlvect_1(A))
        & v1_funct_2(u1_rlvect_1(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & m2_relset_1(u1_rlvect_1(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A)) ) ) ).

fof(dt_u2_rlvect_1,axiom,
    ! [A] :
      ( l2_rlvect_1(A)
     => ( v1_funct_1(u2_rlvect_1(A))
        & v1_funct_2(u2_rlvect_1(A),k2_zfmisc_1(k1_numbers,u1_struct_0(A)),u1_struct_0(A))
        & m2_relset_1(u2_rlvect_1(A),k2_zfmisc_1(k1_numbers,u1_struct_0(A)),u1_struct_0(A)) ) ) ).

fof(dt_g1_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,A) )
     => ( v1_rlvect_1(g1_rlvect_1(A,B,C))
        & l1_rlvect_1(g1_rlvect_1(A,B,C)) ) ) ).

fof(free_g1_rlvect_1,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,A) )
     => ! [D,E,F] :
          ( g1_rlvect_1(A,B,C) = g1_rlvect_1(D,E,F)
         => ( A = D
            & B = E
            & C = F ) ) ) ).

fof(dt_g2_rlvect_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_subset_1(B,A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_relset_1(C,k2_zfmisc_1(A,A),A)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(k1_numbers,A),A)
        & m1_relset_1(D,k2_zfmisc_1(k1_numbers,A),A) )
     => ( v2_rlvect_1(g2_rlvect_1(A,B,C,D))
        & l2_rlvect_1(g2_rlvect_1(A,B,C,D)) ) ) ).

fof(free_g2_rlvect_1,axiom,
    ! [A,B,C,D] :
      ( ( m1_subset_1(B,A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_relset_1(C,k2_zfmisc_1(A,A),A)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(k1_numbers,A),A)
        & m1_relset_1(D,k2_zfmisc_1(k1_numbers,A),A) )
     => ! [E,F,G,H] :
          ( g2_rlvect_1(A,B,C,D) = g2_rlvect_1(E,F,G,H)
         => ( A = E
            & B = F
            & C = G
            & D = H ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+211 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Subspaces and Cosets of Subspaces in Real Linear Space
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : rlsub_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  114 (  16 unt;   0 def)
%            Number of atoms       : 1196 (  76 equ)
%            Maximal formula atoms :   24 (  10 avg)
%            Number of connectives : 1200 ( 118   ~;   3   |; 708   &)
%                                         (  27 <=>; 344  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   18 (   9 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   21 (  19 usr;   1 prp; 0-3 aty)
%            Number of functors    :   25 (  25 usr;   4 con; 0-4 aty)
%            Number of variables   :  326 ( 315   !;  11   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ? [B] :
          ( m1_rlsub_1(B,A)
          & ~ v3_struct_0(B)
          & v2_rlvect_1(B)
          & v3_rlvect_1(B)
          & v4_rlvect_1(B)
          & v5_rlvect_1(B)
          & v6_rlvect_1(B)
          & v7_rlvect_1(B) ) ) ).

fof(d1_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_rlsub_1(B,A)
          <=> ( ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( ( r2_hidden(C,B)
                          & r2_hidden(D,B) )
                       => r2_hidden(k4_rlvect_1(A,C,D),B) ) ) )
              & ! [C] :
                  ( m1_subset_1(C,k1_numbers)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ( r2_hidden(D,B)
                       => r2_hidden(k3_rlvect_1(A,D,C),B) ) ) ) ) ) ) ) ).

fof(t1_rlsub_1,axiom,
    $true ).

fof(t2_rlsub_1,axiom,
    $true ).

fof(t3_rlsub_1,axiom,
    $true ).

fof(t4_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_rlsub_1(B,A)
           => ( B = k1_xboole_0
              | r2_hidden(k1_rlvect_1(A),B) ) ) ) ) ).

fof(t5_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_rlsub_1(B,A)
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( r2_hidden(C,B)
                 => r2_hidden(k5_rlvect_1(A,C),B) ) ) ) ) ) ).

fof(t6_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( v1_rlsub_1(B,A)
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ( r2_hidden(C,B)
                        & r2_hidden(D,B) )
                     => r2_hidden(k6_rlvect_1(A,C,D),B) ) ) ) ) ) ) ).

fof(t7_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => v1_rlsub_1(k1_struct_0(A,k1_rlvect_1(A)),A) ) ).

fof(t8_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( u1_struct_0(A) = B
           => v1_rlsub_1(B,A) ) ) ) ).

fof(t10_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( ( v1_rlsub_1(B,A)
                  & v1_rlsub_1(C,A) )
               => v1_rlsub_1(k5_subset_1(u1_struct_0(A),B,C),A) ) ) ) ) ).

fof(d2_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ( m1_rlsub_1(B,A)
          <=> ( r1_tarski(u1_struct_0(B),u1_struct_0(A))
              & u2_struct_0(B) = u2_struct_0(A)
              & u1_rlvect_1(B) = k1_realset1(u1_rlvect_1(A),u1_struct_0(B))
              & u2_rlvect_1(B) = k8_relset_1(k2_zfmisc_1(k1_numbers,u1_struct_0(A)),u1_struct_0(A),u2_rlvect_1(A),k2_zfmisc_1(k1_numbers,u1_struct_0(B))) ) ) ) ) ).

fof(t11_rlsub_1,axiom,
    $true ).

fof(t12_rlsub_1,axiom,
    $true ).

fof(t13_rlsub_1,axiom,
    $true ).

fof(t14_rlsub_1,axiom,
    $true ).

fof(t15_rlsub_1,axiom,
    $true ).

fof(t16_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B,C] :
          ( m1_rlsub_1(C,A)
         => ! [D] :
              ( m1_rlsub_1(D,A)
             => ( ( r1_rlvect_1(C,B)
                  & m1_rlsub_1(C,D) )
               => r1_rlvect_1(D,B) ) ) ) ) ).

fof(t17_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B,C] :
          ( m1_rlsub_1(C,A)
         => ( r1_rlvect_1(C,B)
           => r1_rlvect_1(A,B) ) ) ) ).

fof(t18_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => m1_subset_1(C,u1_struct_0(A)) ) ) ) ).

fof(t19_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => k1_rlvect_1(B) = k1_rlvect_1(A) ) ) ).

fof(t20_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => k1_rlvect_1(B) = k1_rlvect_1(C) ) ) ) ).

fof(t21_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(D))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(D))
                         => ( ( E = B
                              & F = C )
                           => k4_rlvect_1(D,E,F) = k4_rlvect_1(A,B,C) ) ) ) ) ) ) ) ).

fof(t22_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(D))
                     => ( E = B
                       => k3_rlvect_1(D,E,C) = k3_rlvect_1(A,B,C) ) ) ) ) ) ) ).

fof(t23_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( D = B
                   => k5_rlvect_1(A,B) = k5_rlvect_1(C,D) ) ) ) ) ) ).

fof(t24_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(D))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(D))
                         => ( ( E = B
                              & F = C )
                           => k6_rlvect_1(D,E,F) = k6_rlvect_1(A,B,C) ) ) ) ) ) ) ) ).

fof(t25_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => r1_rlvect_1(B,k1_rlvect_1(A)) ) ) ).

fof(t26_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => r1_rlvect_1(C,k1_rlvect_1(B)) ) ) ) ).

fof(t27_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => r1_rlvect_1(A,k1_rlvect_1(B)) ) ) ).

fof(t28_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( ( r1_rlvect_1(D,B)
                      & r1_rlvect_1(D,C) )
                   => r1_rlvect_1(D,k4_rlvect_1(A,B,C)) ) ) ) ) ) ).

fof(t29_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r1_rlvect_1(D,B)
                   => r1_rlvect_1(D,k3_rlvect_1(A,B,C)) ) ) ) ) ) ).

fof(t30_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( r1_rlvect_1(C,B)
               => r1_rlvect_1(C,k5_rlvect_1(A,B)) ) ) ) ) ).

fof(t31_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( ( r1_rlvect_1(D,B)
                      & r1_rlvect_1(D,C) )
                   => r1_rlvect_1(D,k6_rlvect_1(A,B,C)) ) ) ) ) ) ).

fof(t32_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( ~ v1_xboole_0(C)
             => ! [D] :
                  ( m1_subset_1(D,C)
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,k2_zfmisc_1(C,C),C)
                        & m2_relset_1(E,k2_zfmisc_1(C,C),C) )
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,k2_zfmisc_1(k1_numbers,C),C)
                            & m2_relset_1(F,k2_zfmisc_1(k1_numbers,C),C) )
                         => ( ( B = C
                              & D = k1_rlvect_1(A)
                              & E = k1_realset1(u1_rlvect_1(A),B)
                              & F = k8_relset_1(k2_zfmisc_1(k1_numbers,u1_struct_0(A)),u1_struct_0(A),u2_rlvect_1(A),k2_zfmisc_1(k1_numbers,B)) )
                           => m1_rlsub_1(g2_rlvect_1(C,D,E,F),A) ) ) ) ) ) ) ) ).

fof(t33_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => m1_rlsub_1(A,A) ) ).

fof(t34_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_rlvect_1(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v2_rlvect_1(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ( ( m1_rlsub_1(A,B)
              & m1_rlsub_1(B,A) )
           => A = B ) ) ) ).

fof(t35_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v7_rlvect_1(C)
                & l2_rlvect_1(C) )
             => ( ( m1_rlsub_1(A,B)
                  & m1_rlsub_1(B,C) )
               => m1_rlsub_1(A,C) ) ) ) ) ).

fof(t36_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( r1_tarski(u1_struct_0(B),u1_struct_0(C))
               => m1_rlsub_1(B,C) ) ) ) ) ).

fof(t37_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r1_rlvect_1(B,D)
                     => r1_rlvect_1(C,D) ) )
               => m1_rlsub_1(B,C) ) ) ) ) ).

fof(t38_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v2_rlvect_1(B)
            & m1_rlsub_1(B,A) )
         => ! [C] :
              ( ( v2_rlvect_1(C)
                & m1_rlsub_1(C,A) )
             => ( u1_struct_0(B) = u1_struct_0(C)
               => B = C ) ) ) ) ).

fof(t39_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v2_rlvect_1(B)
            & m1_rlsub_1(B,A) )
         => ! [C] :
              ( ( v2_rlvect_1(C)
                & m1_rlsub_1(C,A) )
             => ( ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( r1_rlvect_1(B,D)
                    <=> r1_rlvect_1(C,D) ) )
               => B = C ) ) ) ) ).

fof(t40_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_rlvect_1(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v2_rlvect_1(B)
            & m1_rlsub_1(B,A) )
         => ( u1_struct_0(B) = u1_struct_0(A)
           => B = A ) ) ) ).

fof(t41_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_rlvect_1(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v2_rlvect_1(B)
            & m1_rlsub_1(B,A) )
         => ( ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( r1_rlvect_1(B,C)
                <=> r1_rlvect_1(A,C) ) )
           => B = A ) ) ) ).

fof(t42_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( u1_struct_0(C) = B
               => v1_rlsub_1(B,A) ) ) ) ) ).

fof(t43_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ~ ( B != k1_xboole_0
              & v1_rlsub_1(B,A)
              & ! [C] :
                  ( ( v2_rlvect_1(C)
                    & m1_rlsub_1(C,A) )
                 => B != u1_struct_0(C) ) ) ) ) ).

fof(d3_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v2_rlvect_1(B)
            & m1_rlsub_1(B,A) )
         => ( B = k1_rlsub_1(A)
          <=> u1_struct_0(B) = k1_struct_0(A,k1_rlvect_1(A)) ) ) ) ).

fof(d4_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => k2_rlsub_1(A) = g2_rlvect_1(u1_struct_0(A),u2_struct_0(A),u1_rlvect_1(A),u2_rlvect_1(A)) ) ).

fof(t44_rlsub_1,axiom,
    $true ).

fof(t45_rlsub_1,axiom,
    $true ).

fof(t46_rlsub_1,axiom,
    $true ).

fof(t47_rlsub_1,axiom,
    $true ).

fof(t48_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => k1_rlsub_1(B) = k1_rlsub_1(A) ) ) ).

fof(t49_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => k1_rlsub_1(B) = k1_rlsub_1(C) ) ) ) ).

fof(t50_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => m1_rlsub_1(k1_rlsub_1(B),A) ) ) ).

fof(t51_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => m1_rlsub_1(k1_rlsub_1(A),B) ) ) ).

fof(t52_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => m1_rlsub_1(k1_rlsub_1(B),C) ) ) ) ).

fof(t53_rlsub_1,axiom,
    $true ).

fof(t54_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_rlvect_1(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => m1_rlsub_1(A,k2_rlsub_1(A)) ) ).

fof(d6_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( m2_rlsub_1(C,A,B)
              <=> ? [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                    & C = k3_rlsub_1(A,D,B) ) ) ) ) ) ).

fof(t55_rlsub_1,axiom,
    $true ).

fof(t56_rlsub_1,axiom,
    $true ).

fof(t57_rlsub_1,axiom,
    $true ).

fof(t58_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( r2_hidden(k1_rlvect_1(A),k3_rlsub_1(A,B,C))
              <=> r1_rlvect_1(C,B) ) ) ) ) ).

fof(t59_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => r2_hidden(B,k3_rlsub_1(A,B,C)) ) ) ) ).

fof(t60_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => k3_rlsub_1(A,k1_rlvect_1(A),B) = u1_struct_0(B) ) ) ).

fof(t61_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k3_rlsub_1(A,B,k1_rlsub_1(A)) = k1_struct_0(A,B) ) ) ).

fof(t62_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k3_rlsub_1(A,B,k2_rlsub_1(A)) = u1_struct_0(A) ) ) ).

fof(t63_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( r2_hidden(k1_rlvect_1(A),k3_rlsub_1(A,B,C))
              <=> k3_rlsub_1(A,B,C) = u1_struct_0(C) ) ) ) ) ).

fof(t64_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( r1_rlvect_1(C,B)
              <=> k3_rlsub_1(A,B,C) = u1_struct_0(C) ) ) ) ) ).

fof(t65_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r1_rlvect_1(D,B)
                   => k3_rlsub_1(A,k3_rlvect_1(A,B,C),D) = u1_struct_0(D) ) ) ) ) ) ).

fof(t66_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( k3_rlsub_1(A,k3_rlvect_1(A,B,C),D) = u1_struct_0(D)
                   => ( C = np__0
                      | r1_rlvect_1(D,B) ) ) ) ) ) ) ).

fof(t67_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( r1_rlvect_1(C,B)
              <=> k3_rlsub_1(A,k5_rlvect_1(A,B),C) = u1_struct_0(C) ) ) ) ) ).

fof(t68_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r1_rlvect_1(D,B)
                  <=> k3_rlsub_1(A,C,D) = k3_rlsub_1(A,k4_rlvect_1(A,C,B),D) ) ) ) ) ) ).

fof(t69_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r1_rlvect_1(D,B)
                  <=> k3_rlsub_1(A,C,D) = k3_rlsub_1(A,k6_rlvect_1(A,C,B),D) ) ) ) ) ) ).

fof(t70_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r2_hidden(B,k3_rlsub_1(A,C,D))
                  <=> k3_rlsub_1(A,C,D) = k3_rlsub_1(A,B,D) ) ) ) ) ) ).

fof(t71_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( k3_rlsub_1(A,B,C) = k3_rlsub_1(A,k5_rlvect_1(A,B),C)
              <=> r1_rlvect_1(C,B) ) ) ) ) ).

fof(t72_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_rlsub_1(E,A)
                     => ( ( r2_hidden(B,k3_rlsub_1(A,C,E))
                          & r2_hidden(B,k3_rlsub_1(A,D,E)) )
                       => k3_rlsub_1(A,C,E) = k3_rlsub_1(A,D,E) ) ) ) ) ) ) ).

fof(t73_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( ( r2_hidden(B,k3_rlsub_1(A,C,D))
                      & r2_hidden(B,k3_rlsub_1(A,k5_rlvect_1(A,C),D)) )
                   => r1_rlvect_1(D,C) ) ) ) ) ) ).

fof(t74_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r2_hidden(k3_rlvect_1(A,B,C),k3_rlsub_1(A,B,D))
                   => ( C = np__1
                      | r1_rlvect_1(D,B) ) ) ) ) ) ) ).

fof(t75_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r1_rlvect_1(D,B)
                   => r2_hidden(k3_rlvect_1(A,B,C),k3_rlsub_1(A,B,D)) ) ) ) ) ) ).

fof(t76_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ( r2_hidden(k5_rlvect_1(A,B),k3_rlsub_1(A,B,C))
              <=> r1_rlvect_1(C,B) ) ) ) ) ).

fof(t77_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r2_hidden(k4_rlvect_1(A,B,C),k3_rlsub_1(A,C,D))
                  <=> r1_rlvect_1(D,B) ) ) ) ) ) ).

fof(t78_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r2_hidden(k6_rlvect_1(A,B,C),k3_rlsub_1(A,B,D))
                  <=> r1_rlvect_1(D,C) ) ) ) ) ) ).

fof(t79_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r2_hidden(B,k3_rlsub_1(A,C,D))
                  <=> ? [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                        & r1_rlvect_1(D,E)
                        & B = k4_rlvect_1(A,C,E) ) ) ) ) ) ) ).

fof(t80_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( r2_hidden(B,k3_rlsub_1(A,C,D))
                  <=> ? [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                        & r1_rlvect_1(D,E)
                        & B = k6_rlvect_1(A,C,E) ) ) ) ) ) ) ).

fof(t81_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( ? [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                        & r2_hidden(B,k3_rlsub_1(A,E,D))
                        & r2_hidden(C,k3_rlsub_1(A,E,D)) )
                  <=> r1_rlvect_1(D,k6_rlvect_1(A,B,C)) ) ) ) ) ) ).

fof(t82_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ~ ( k3_rlsub_1(A,B,D) = k3_rlsub_1(A,C,D)
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ~ ( r1_rlvect_1(D,E)
                              & k4_rlvect_1(A,B,E) = C ) ) ) ) ) ) ) ).

fof(t83_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ~ ( k3_rlsub_1(A,B,D) = k3_rlsub_1(A,C,D)
                      & ! [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                         => ~ ( r1_rlvect_1(D,E)
                              & k6_rlvect_1(A,B,E) = C ) ) ) ) ) ) ) ).

fof(t84_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( v2_rlvect_1(C)
                & m1_rlsub_1(C,A) )
             => ! [D] :
                  ( ( v2_rlvect_1(D)
                    & m1_rlsub_1(D,A) )
                 => ( k3_rlsub_1(A,B,C) = k3_rlsub_1(A,B,D)
                  <=> C = D ) ) ) ) ) ).

fof(t85_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( ( v2_rlvect_1(D)
                    & m1_rlsub_1(D,A) )
                 => ! [E] :
                      ( ( v2_rlvect_1(E)
                        & m1_rlsub_1(E,A) )
                     => ( k3_rlsub_1(A,B,D) = k3_rlsub_1(A,C,E)
                       => D = E ) ) ) ) ) ) ).

fof(t86_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m2_rlsub_1(C,A,B)
             => ( v1_rlsub_1(C,A)
              <=> C = u1_struct_0(B) ) ) ) ) ).

fof(t87_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v2_rlvect_1(B)
            & m1_rlsub_1(B,A) )
         => ! [C] :
              ( ( v2_rlvect_1(C)
                & m1_rlsub_1(C,A) )
             => ! [D] :
                  ( m2_rlsub_1(D,A,B)
                 => ! [E] :
                      ( m2_rlsub_1(E,A,C)
                     => ( D = E
                       => B = C ) ) ) ) ) ) ).

fof(t88_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => m2_rlsub_1(k1_struct_0(A,B),A,k1_rlsub_1(A)) ) ) ).

fof(t89_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ~ ( m2_rlsub_1(B,A,k1_rlsub_1(A))
              & ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => B != k1_struct_0(A,C) ) ) ) ) ).

fof(t90_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => m2_rlsub_1(u1_struct_0(B),A,B) ) ) ).

fof(t91_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => m2_rlsub_1(u1_struct_0(A),A,k2_rlsub_1(A)) ) ).

fof(t92_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( m2_rlsub_1(B,A,k2_rlsub_1(A))
           => B = u1_struct_0(A) ) ) ) ).

fof(t93_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ! [C] :
              ( m2_rlsub_1(C,A,B)
             => ( r2_hidden(k1_rlvect_1(A),C)
              <=> C = u1_struct_0(B) ) ) ) ) ).

fof(t94_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ! [D] :
                  ( m2_rlsub_1(D,A,C)
                 => ( r2_hidden(B,D)
                  <=> D = k3_rlsub_1(A,B,C) ) ) ) ) ) ).

fof(t95_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ! [E] :
                      ( m2_rlsub_1(E,A,D)
                     => ~ ( r2_hidden(B,E)
                          & r2_hidden(C,E)
                          & ! [F] :
                              ( m1_subset_1(F,u1_struct_0(A))
                             => ~ ( r1_rlvect_1(D,F)
                                  & k4_rlvect_1(A,B,F) = C ) ) ) ) ) ) ) ) ).

fof(t96_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ! [E] :
                      ( m2_rlsub_1(E,A,D)
                     => ~ ( r2_hidden(B,E)
                          & r2_hidden(C,E)
                          & ! [F] :
                              ( m1_subset_1(F,u1_struct_0(A))
                             => ~ ( r1_rlvect_1(D,F)
                                  & k6_rlvect_1(A,B,F) = C ) ) ) ) ) ) ) ) ).

fof(t97_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlsub_1(D,A)
                 => ( ? [E] :
                        ( m2_rlsub_1(E,A,D)
                        & r2_hidden(B,E)
                        & r2_hidden(C,E) )
                  <=> r1_rlvect_1(D,k6_rlvect_1(A,B,C)) ) ) ) ) ) ).

fof(t98_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => ! [D] :
                  ( m2_rlsub_1(D,A,C)
                 => ! [E] :
                      ( m2_rlsub_1(E,A,C)
                     => ( ( r2_hidden(B,D)
                          & r2_hidden(B,E) )
                       => D = E ) ) ) ) ) ) ).

fof(dt_m1_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlsub_1(B,A)
         => ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) ) ) ) ).

fof(existence_m1_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ? [B] : m1_rlsub_1(B,A) ) ).

fof(dt_m2_rlsub_1,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_rlsub_1(B,A) )
     => ! [C] :
          ( m2_rlsub_1(C,A,B)
         => m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(existence_m2_rlsub_1,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_rlsub_1(B,A) )
     => ? [C] : m2_rlsub_1(C,A,B) ) ).

fof(dt_k1_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ( v2_rlvect_1(k1_rlsub_1(A))
        & m1_rlsub_1(k1_rlsub_1(A),A) ) ) ).

fof(dt_k2_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ( v2_rlvect_1(k2_rlsub_1(A))
        & m1_rlsub_1(k2_rlsub_1(A),A) ) ) ).

fof(dt_k3_rlsub_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_rlsub_1(C,A) )
     => m1_subset_1(k3_rlsub_1(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) ).

fof(t9_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(A)))
                 => ( ( v1_rlsub_1(B,A)
                      & v1_rlsub_1(C,A)
                      & D = a_3_0_rlsub_1(A,B,C) )
                   => v1_rlsub_1(D,A) ) ) ) ) ) ).

fof(d5_rlsub_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlsub_1(C,A)
             => k3_rlsub_1(A,B,C) = a_3_1_rlsub_1(A,B,C) ) ) ) ).

fof(fraenkel_a_3_0_rlsub_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v7_rlvect_1(B)
        & l2_rlvect_1(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_3_0_rlsub_1(B,C,D))
      <=> ? [E,F] :
            ( m1_subset_1(E,u1_struct_0(B))
            & m1_subset_1(F,u1_struct_0(B))
            & A = k4_rlvect_1(B,E,F)
            & r2_hidden(E,C)
            & r2_hidden(F,D) ) ) ) ).

fof(fraenkel_a_3_1_rlsub_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v7_rlvect_1(B)
        & l2_rlvect_1(B)
        & m1_subset_1(C,u1_struct_0(B))
        & m1_rlsub_1(D,B) )
     => ( r2_hidden(A,a_3_1_rlsub_1(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(B))
            & A = k4_rlvect_1(B,C,E)
            & r1_rlvect_1(D,E) ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+212 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Groups
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : group_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  138 (  27 unt;   0 def)
%            Number of atoms       :  816 ( 139 equ)
%            Maximal formula atoms :   17 (   5 avg)
%            Number of connectives :  791 ( 113   ~;   5   |; 356   &)
%                                         (  19 <=>; 298  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   7 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   34 (  32 usr;   1 prp; 0-3 aty)
%            Number of functors    :   35 (  35 usr;   7 con; 0-6 aty)
%            Number of variables   :  297 ( 283   !;  14   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_group_1,axiom,
    ? [A] :
      ( l1_group_1(A)
      & v1_group_1(A) ) ).

fof(rc2_group_1,axiom,
    ? [A] :
      ( l1_group_1(A)
      & ~ v3_struct_0(A)
      & v1_group_1(A) ) ).

fof(fc1_group_1,axiom,
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A) )
     => ( ~ v3_struct_0(g1_group_1(A,B))
        & v1_group_1(g1_group_1(A,B)) ) ) ).

fof(cc1_group_1,axiom,
    ! [A] :
      ( l1_group_1(A)
     => ( ( ~ v3_struct_0(A)
          & v3_group_1(A) )
       => ( ~ v3_struct_0(A)
          & v2_group_1(A) ) ) ) ).

fof(rc3_group_1,axiom,
    ? [A] :
      ( l1_group_1(A)
      & ~ v3_struct_0(A)
      & v1_group_1(A)
      & v2_group_1(A)
      & v3_group_1(A)
      & v4_group_1(A) ) ).

fof(rc4_group_1,axiom,
    ? [A] :
      ( l1_group_1(A)
      & ~ v3_struct_0(A)
      & v1_group_1(A)
      & v2_group_1(A)
      & v3_group_1(A)
      & v4_group_1(A)
      & v7_group_1(A) ) ).

fof(fc2_group_1,axiom,
    ! [A,B,C] :
      ( ( ~ v1_xboole_0(A)
        & v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,A) )
     => ( ~ v3_struct_0(g1_rlvect_1(A,B,C))
        & v1_rlvect_1(g1_rlvect_1(A,B,C)) ) ) ).

fof(d1_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k1_group_1(A,B,C) = k2_binop_1(u1_struct_0(A),u1_struct_0(A),u1_struct_0(A),u1_group_1(A),B,C) ) ) ) ).

fof(d2_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ( v2_group_1(A)
      <=> ? [B] :
            ( m1_subset_1(B,u1_struct_0(A))
            & ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( k1_group_1(A,C,B) = C
                  & k1_group_1(A,B,C) = C ) ) ) ) ) ).

fof(d3_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ( v3_group_1(A)
      <=> ? [B] :
            ( m1_subset_1(B,u1_struct_0(A))
            & ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( k1_group_1(A,C,B) = C
                  & k1_group_1(A,B,C) = C
                  & ? [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                      & k1_group_1(A,C,D) = B
                      & k1_group_1(A,D,C) = B ) ) ) ) ) ) ).

fof(d4_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ( v4_group_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k1_group_1(A,k1_group_1(A,B,C),D) = k1_group_1(A,B,k1_group_1(A,C,D)) ) ) ) ) ) ).

fof(t1_group_1,axiom,
    $true ).

fof(t2_group_1,axiom,
    $true ).

fof(t3_group_1,axiom,
    $true ).

fof(t4_group_1,axiom,
    $true ).

fof(t5_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k1_group_1(A,k1_group_1(A,B,C),D) = k1_group_1(A,B,k1_group_1(A,C,D)) ) ) )
       => ( ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => ~ ! [C] :
                    ( m1_subset_1(C,u1_struct_0(A))
                   => ( k1_group_1(A,C,B) = C
                      & k1_group_1(A,B,C) = C
                      & ? [D] :
                          ( m1_subset_1(D,u1_struct_0(A))
                          & k1_group_1(A,C,D) = B
                          & k1_group_1(A,D,C) = B ) ) ) )
          | ( ~ v3_struct_0(A)
            & v3_group_1(A)
            & v4_group_1(A)
            & l1_group_1(A) ) ) ) ) ).

fof(t6_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ( ( ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => k1_group_1(A,k1_group_1(A,B,C),D) = k1_group_1(A,B,k1_group_1(A,C,D)) ) ) )
          & ! [B] :
              ( m1_subset_1(B,u1_struct_0(A))
             => ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ( ? [D] :
                        ( m1_subset_1(D,u1_struct_0(A))
                        & k1_group_1(A,B,D) = C )
                    & ? [D] :
                        ( m1_subset_1(D,u1_struct_0(A))
                        & k1_group_1(A,D,B) = C ) ) ) ) )
       => ( v4_group_1(A)
          & v3_group_1(A) ) ) ) ).

fof(t7_group_1,axiom,
    ( v4_group_1(g1_group_1(k1_numbers,k33_binop_2))
    & v3_group_1(g1_group_1(k1_numbers,k33_binop_2)) ) ).

fof(d5_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ( v2_group_1(A)
       => ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ( B = k2_group_1(A)
            <=> ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => ( k1_group_1(A,C,B) = C
                    & k1_group_1(A,B,C) = C ) ) ) ) ) ) ).

fof(t8_group_1,axiom,
    $true ).

fof(t9_group_1,axiom,
    $true ).

fof(t10_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( k1_group_1(A,C,B) = C
                  & k1_group_1(A,B,C) = C ) )
           => B = k2_group_1(A) ) ) ) ).

fof(d6_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( C = k3_group_1(A,B)
              <=> ( k1_group_1(A,B,C) = k2_group_1(A)
                  & k1_group_1(A,C,B) = k2_group_1(A) ) ) ) ) ) ).

fof(t11_group_1,axiom,
    $true ).

fof(t12_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( k1_group_1(A,B,C) = k2_group_1(A)
                  & k1_group_1(A,C,B) = k2_group_1(A) )
               => C = k3_group_1(A,B) ) ) ) ) ).

fof(t13_group_1,axiom,
    $true ).

fof(t14_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( k1_group_1(A,B,C) = k1_group_1(A,B,D)
                      | k1_group_1(A,C,B) = k1_group_1(A,D,B) )
                   => C = D ) ) ) ) ) ).

fof(t15_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( k1_group_1(A,B,C) = B
                  | k1_group_1(A,C,B) = B )
               => C = k2_group_1(A) ) ) ) ) ).

fof(t16_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => k3_group_1(A,k2_group_1(A)) = k2_group_1(A) ) ).

fof(t17_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k3_group_1(A,B) = k3_group_1(A,C)
               => B = C ) ) ) ) ).

fof(t18_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k3_group_1(A,B) = k2_group_1(A)
           => B = k2_group_1(A) ) ) ) ).

fof(t19_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k3_group_1(A,k3_group_1(A,B)) = B ) ) ).

fof(t20_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( k1_group_1(A,B,C) = k2_group_1(A)
                  | k1_group_1(A,C,B) = k2_group_1(A) )
               => ( B = k3_group_1(A,C)
                  & C = k3_group_1(A,B) ) ) ) ) ) ).

fof(t21_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( k1_group_1(A,B,C) = D
                  <=> C = k1_group_1(A,k3_group_1(A,B),D) ) ) ) ) ) ).

fof(t22_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( k1_group_1(A,B,C) = D
                  <=> B = k1_group_1(A,D,k3_group_1(A,C)) ) ) ) ) ) ).

fof(t23_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ? [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                  & k1_group_1(A,B,D) = C ) ) ) ) ).

fof(t24_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ? [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                  & k1_group_1(A,D,B) = C ) ) ) ) ).

fof(t25_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k3_group_1(A,k1_group_1(A,B,C)) = k1_group_1(A,k3_group_1(A,C),k3_group_1(A,B)) ) ) ) ).

fof(t26_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k1_group_1(A,B,C) = k1_group_1(A,C,B)
              <=> k3_group_1(A,k1_group_1(A,B,C)) = k1_group_1(A,k3_group_1(A,B),k3_group_1(A,C)) ) ) ) ) ).

fof(t27_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k1_group_1(A,B,C) = k1_group_1(A,C,B)
              <=> k1_group_1(A,k3_group_1(A,B),k3_group_1(A,C)) = k1_group_1(A,k3_group_1(A,C),k3_group_1(A,B)) ) ) ) ) ).

fof(t28_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k1_group_1(A,B,C) = k1_group_1(A,C,B)
              <=> k1_group_1(A,B,k3_group_1(A,C)) = k1_group_1(A,k3_group_1(A,C),B) ) ) ) ) ).

fof(d7_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,u1_struct_0(A),u1_struct_0(A))
            & m2_relset_1(B,u1_struct_0(A),u1_struct_0(A)) )
         => ( B = k4_group_1(A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => k8_funct_2(u1_struct_0(A),u1_struct_0(A),B,C) = k3_group_1(A,C) ) ) ) ) ).

fof(t29_group_1,axiom,
    $true ).

fof(t30_group_1,axiom,
    $true ).

fof(t31_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => v2_binop_1(u1_group_1(A),u1_struct_0(A)) ) ).

fof(t32_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_group_1(A)
        & l1_group_1(A) )
     => r3_binop_1(u1_struct_0(A),k2_group_1(A),u1_group_1(A)) ) ).

fof(t33_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_group_1(A)
        & l1_group_1(A) )
     => k3_binop_1(u1_struct_0(A),u1_group_1(A)) = k2_group_1(A) ) ).

fof(t34_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_group_1(A)
        & l1_group_1(A) )
     => v1_setwiseo(u1_group_1(A),u1_struct_0(A)) ) ).

fof(t35_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => r1_finseqop(u1_struct_0(A),k4_group_1(A),u1_group_1(A)) ) ).

fof(t36_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => v1_finseqop(u1_group_1(A),u1_struct_0(A)) ) ).

fof(t37_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => k6_finseqop(u1_struct_0(A),u1_group_1(A)) = k4_group_1(A) ) ).

fof(d8_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(u1_struct_0(A),k5_numbers),u1_struct_0(A))
            & m2_relset_1(B,k2_zfmisc_1(u1_struct_0(A),k5_numbers),u1_struct_0(A)) )
         => ( B = k5_group_1(A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( k2_binop_1(u1_struct_0(A),k5_numbers,u1_struct_0(A),B,C,np__0) = k2_group_1(A)
                  & ! [D] :
                      ( m2_subset_1(D,k1_numbers,k5_numbers)
                     => k2_binop_1(u1_struct_0(A),k5_numbers,u1_struct_0(A),B,C,k1_nat_1(D,np__1)) = k1_group_1(A,k2_binop_1(u1_struct_0(A),k5_numbers,u1_struct_0(A),B,C,D),C) ) ) ) ) ) ) ).

fof(d9_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( r1_xreal_0(np__0,B)
                 => k6_group_1(A,B,C) = k2_binop_1(u1_struct_0(A),k5_numbers,u1_struct_0(A),k5_group_1(A),C,k1_int_2(B)) )
                & ( ~ r1_xreal_0(np__0,B)
                 => k6_group_1(A,B,C) = k3_group_1(A,k2_binop_1(u1_struct_0(A),k5_numbers,u1_struct_0(A),k5_group_1(A),C,k1_int_2(B))) ) ) ) ) ) ).

fof(d10_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k6_group_1(A,B,C) = k2_binop_1(u1_struct_0(A),k5_numbers,u1_struct_0(A),k5_group_1(A),C,B) ) ) ) ).

fof(t38_group_1,axiom,
    $true ).

fof(t39_group_1,axiom,
    $true ).

fof(t40_group_1,axiom,
    $true ).

fof(t41_group_1,axiom,
    $true ).

fof(t42_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => k6_group_1(B,A,k2_group_1(B)) = k2_group_1(B) ) ) ).

fof(t43_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_group_1(A,np__0,B) = k2_group_1(A) ) ) ).

fof(t44_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_group_1(A,np__1,B) = B ) ) ).

fof(t45_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_group_1(A,np__2,B) = k1_group_1(A,B,B) ) ) ).

fof(t46_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_group_1(A,np__3,B) = k1_group_1(A,k1_group_1(A,B,B),B) ) ) ).

fof(t47_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k6_group_1(A,np__2,B) = k2_group_1(A)
          <=> k3_group_1(A,B) = B ) ) ) ).

fof(t48_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k6_group_1(C,k1_nat_1(A,B),D) = k1_group_1(C,k6_group_1(C,A,D),k6_group_1(C,B,D)) ) ) ) ) ).

fof(t49_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( k6_group_1(B,k1_nat_1(A,np__1),C) = k1_group_1(B,k6_group_1(B,A,C),C)
                & k6_group_1(B,k1_nat_1(A,np__1),C) = k1_group_1(B,C,k6_group_1(B,A,C)) ) ) ) ) ).

fof(t50_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k6_group_1(C,k2_nat_1(A,B),D) = k6_group_1(C,B,k6_group_1(C,A,D)) ) ) ) ) ).

fof(t51_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k6_group_1(B,A,k3_group_1(B,C)) = k3_group_1(B,k6_group_1(B,A,C)) ) ) ) ).

fof(t52_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( k1_group_1(B,C,D) = k1_group_1(B,D,C)
                   => k1_group_1(B,C,k6_group_1(B,A,D)) = k1_group_1(B,k6_group_1(B,A,D),C) ) ) ) ) ) ).

fof(t53_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( m2_subset_1(B,k1_numbers,k5_numbers)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(C))
                     => ( k1_group_1(C,D,E) = k1_group_1(C,E,D)
                       => k1_group_1(C,k6_group_1(C,A,D),k6_group_1(C,B,E)) = k1_group_1(C,k6_group_1(C,B,E),k6_group_1(C,A,D)) ) ) ) ) ) ) ).

fof(t54_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( k1_group_1(B,C,D) = k1_group_1(B,D,C)
                   => k6_group_1(B,A,k1_group_1(B,C,D)) = k1_group_1(B,k6_group_1(B,A,C),k6_group_1(B,A,D)) ) ) ) ) ) ).

fof(t55_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( r1_xreal_0(np__0,A)
               => k6_group_1(B,A,C) = k6_group_1(B,k1_int_2(A),C) ) ) ) ) ).

fof(t56_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( ~ r1_xreal_0(np__0,A)
               => k6_group_1(B,A,C) = k3_group_1(B,k6_group_1(B,k1_int_2(A),C)) ) ) ) ) ).

fof(t57_group_1,axiom,
    $true ).

fof(t58_group_1,axiom,
    $true ).

fof(t59_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( A = np__0
               => k6_group_1(B,A,C) = k2_group_1(B) ) ) ) ) ).

fof(t60_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( r1_xreal_0(A,np__0)
               => k6_group_1(B,A,C) = k3_group_1(B,k6_group_1(B,k1_int_2(A),C)) ) ) ) ) ).

fof(t61_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => k6_group_1(B,A,k2_group_1(B)) = k2_group_1(B) ) ) ).

fof(t62_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_group_1(A,k7_binop_2(np__1),B) = k3_group_1(A,B) ) ) ).

fof(t63_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k6_group_1(C,k2_xcmplx_0(A,B),D) = k1_group_1(C,k6_group_1(C,A,D),k6_group_1(C,B,D)) ) ) ) ) ).

fof(t64_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k6_group_1(C,k2_xcmplx_0(A,B),D) = k1_group_1(C,k6_group_1(C,A,D),k6_group_1(C,B,D)) ) ) ) ) ).

fof(t65_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k6_group_1(C,k2_xcmplx_0(B,A),D) = k1_group_1(C,k6_group_1(C,B,D),k6_group_1(C,A,D)) ) ) ) ) ).

fof(t66_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( k6_group_1(B,k2_xcmplx_0(A,np__1),C) = k1_group_1(B,k6_group_1(B,A,C),C)
                & k6_group_1(B,k2_xcmplx_0(A,np__1),C) = k1_group_1(B,C,k6_group_1(B,A,C)) ) ) ) ) ).

fof(t67_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k6_group_1(C,k3_xcmplx_0(A,B),D) = k6_group_1(C,B,k6_group_1(C,A,D)) ) ) ) ) ).

fof(t68_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k6_group_1(C,k3_xcmplx_0(A,B),D) = k6_group_1(C,B,k6_group_1(C,A,D)) ) ) ) ) ).

fof(t69_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => k6_group_1(C,k3_xcmplx_0(B,A),D) = k6_group_1(C,A,k6_group_1(C,B,D)) ) ) ) ) ).

fof(t70_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k6_group_1(B,k4_xcmplx_0(A),C) = k3_group_1(B,k6_group_1(B,A,C)) ) ) ) ).

fof(t71_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k6_group_1(B,k7_binop_2(A),C) = k3_group_1(B,k6_group_1(B,A,C)) ) ) ) ).

fof(t72_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k6_group_1(B,A,k3_group_1(B,C)) = k3_group_1(B,k6_group_1(B,A,C)) ) ) ) ).

fof(t73_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( k1_group_1(B,C,D) = k1_group_1(B,D,C)
                   => k6_group_1(B,A,k1_group_1(B,C,D)) = k1_group_1(B,k6_group_1(B,A,C),k6_group_1(B,A,D)) ) ) ) ) ) ).

fof(t74_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(C))
                     => ( k1_group_1(C,D,E) = k1_group_1(C,E,D)
                       => k1_group_1(C,k6_group_1(C,A,D),k6_group_1(C,B,E)) = k1_group_1(C,k6_group_1(C,B,E),k6_group_1(C,A,D)) ) ) ) ) ) ) ).

fof(t75_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( v1_int_1(B)
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_group_1(C)
                & v4_group_1(C)
                & l1_group_1(C) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(C))
                     => ( k1_group_1(C,D,E) = k1_group_1(C,E,D)
                       => k1_group_1(C,k6_group_1(C,A,D),k6_group_1(C,B,E)) = k1_group_1(C,k6_group_1(C,B,E),k6_group_1(C,A,D)) ) ) ) ) ) ) ).

fof(t76_group_1,axiom,
    $true ).

fof(t77_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( k1_group_1(B,C,D) = k1_group_1(B,D,C)
                   => k1_group_1(B,C,k6_group_1(B,A,D)) = k1_group_1(B,k6_group_1(B,A,D),C) ) ) ) ) ) ).

fof(d11_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( v5_group_1(B,A)
          <=> ! [C] :
                ( m2_subset_1(C,k1_numbers,k5_numbers)
               => ( k6_group_1(A,C,B) = k2_group_1(A)
                 => C = np__0 ) ) ) ) ) ).

fof(t78_group_1,axiom,
    $true ).

fof(t79_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ~ v5_group_1(k2_group_1(A),A) ) ).

fof(d12_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_subset_1(C,k1_numbers,k5_numbers)
             => ( ( v5_group_1(B,A)
                 => ( C = k7_group_1(A,B)
                  <=> C = np__0 ) )
                & ( ~ v5_group_1(B,A)
                 => ( C = k7_group_1(A,B)
                  <=> ( k6_group_1(A,C,B) = k2_group_1(A)
                      & C != np__0
                      & ! [D] :
                          ( m2_subset_1(D,k1_numbers,k5_numbers)
                         => ( k6_group_1(A,D,B) = k2_group_1(A)
                           => ( D = np__0
                              | r1_xreal_0(C,D) ) ) ) ) ) ) ) ) ) ) ).

fof(t80_group_1,axiom,
    $true ).

fof(t81_group_1,axiom,
    $true ).

fof(t82_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_group_1(A,k7_group_1(A,B),B) = k2_group_1(A) ) ) ).

fof(t83_group_1,axiom,
    $true ).

fof(t84_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => k7_group_1(A,k2_group_1(A)) = np__1 ) ).

fof(t85_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k7_group_1(A,B) = np__1
           => B = k2_group_1(A) ) ) ) ).

fof(t86_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ( k6_group_1(B,A,C) = k2_group_1(B)
               => r1_nat_1(k7_group_1(B,C),A) ) ) ) ) ).

fof(d13_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => k8_group_1(A) = k1_card_1(u1_struct_0(A)) ) ).

fof(d14_group_1,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ( v6_group_1(A)
      <=> v1_finset_1(u1_struct_0(A)) ) ) ).

fof(d15_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ( v6_group_1(A)
       => ! [B] :
            ( m2_subset_1(B,k1_numbers,k5_numbers)
           => ( B = k9_group_1(A)
            <=> ? [C] :
                  ( v1_finset_1(C)
                  & C = u1_struct_0(A)
                  & B = k4_card_1(C) ) ) ) ) ) ).

fof(t87_group_1,axiom,
    $true ).

fof(t88_group_1,axiom,
    $true ).

fof(t89_group_1,axiom,
    $true ).

fof(t90_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ( v6_group_1(A)
       => r1_xreal_0(np__1,k9_group_1(A)) ) ) ).

fof(d16_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ( v7_group_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => k1_group_1(A,B,C) = k1_group_1(A,C,B) ) ) ) ) ).

fof(t91_group_1,axiom,
    $true ).

fof(t92_group_1,axiom,
    ( ~ v3_struct_0(g1_group_1(k1_numbers,k33_binop_2))
    & v3_group_1(g1_group_1(k1_numbers,k33_binop_2))
    & v4_group_1(g1_group_1(k1_numbers,k33_binop_2))
    & v7_group_1(g1_group_1(k1_numbers,k33_binop_2))
    & l1_group_1(g1_group_1(k1_numbers,k33_binop_2)) ) ).

fof(t93_group_1,axiom,
    $true ).

fof(t94_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & l1_group_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k3_group_1(A,k10_group_1(A,B,C)) = k10_group_1(A,k3_group_1(A,B),k3_group_1(A,C)) ) ) ) ).

fof(t95_group_1,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & v7_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => k6_group_1(B,A,k10_group_1(B,C,D)) = k10_group_1(B,k6_group_1(B,A,C),k6_group_1(B,A,D)) ) ) ) ) ).

fof(t96_group_1,axiom,
    ! [A] :
      ( v1_int_1(A)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_group_1(B)
            & v4_group_1(B)
            & v7_group_1(B)
            & l1_group_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => k6_group_1(B,A,k10_group_1(B,C,D)) = k10_group_1(B,k6_group_1(B,A,C),k6_group_1(B,A,D)) ) ) ) ) ).

fof(t97_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & l1_group_1(A) )
     => ( v3_rlvect_1(g1_rlvect_1(u1_struct_0(A),u1_group_1(A),k2_group_1(A)))
        & v4_rlvect_1(g1_rlvect_1(u1_struct_0(A),u1_group_1(A),k2_group_1(A)))
        & v5_rlvect_1(g1_rlvect_1(u1_struct_0(A),u1_group_1(A),k2_group_1(A)))
        & v6_rlvect_1(g1_rlvect_1(u1_struct_0(A),u1_group_1(A),k2_group_1(A))) ) ) ).

fof(dt_l1_group_1,axiom,
    ! [A] :
      ( l1_group_1(A)
     => l1_struct_0(A) ) ).

fof(existence_l1_group_1,axiom,
    ? [A] : l1_group_1(A) ).

fof(abstractness_v1_group_1,axiom,
    ! [A] :
      ( l1_group_1(A)
     => ( v1_group_1(A)
       => A = g1_group_1(u1_struct_0(A),u1_group_1(A)) ) ) ).

fof(dt_k1_group_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k1_group_1(A,B,C),u1_struct_0(A)) ) ).

fof(dt_k2_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => m1_subset_1(k2_group_1(A),u1_struct_0(A)) ) ).

fof(dt_k3_group_1,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k3_group_1(A,B),u1_struct_0(A)) ) ).

fof(dt_k4_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => ( v1_funct_1(k4_group_1(A))
        & v1_funct_2(k4_group_1(A),u1_struct_0(A),u1_struct_0(A))
        & m2_relset_1(k4_group_1(A),u1_struct_0(A),u1_struct_0(A)) ) ) ).

fof(dt_k5_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_group_1(A) )
     => ( v1_funct_1(k5_group_1(A))
        & v1_funct_2(k5_group_1(A),k2_zfmisc_1(u1_struct_0(A),k5_numbers),u1_struct_0(A))
        & m2_relset_1(k5_group_1(A),k2_zfmisc_1(u1_struct_0(A),k5_numbers),u1_struct_0(A)) ) ) ).

fof(dt_k6_group_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A)
        & v1_int_1(B)
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k6_group_1(A,B,C),u1_struct_0(A)) ) ).

fof(dt_k7_group_1,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m2_subset_1(k7_group_1(A,B),k1_numbers,k5_numbers) ) ).

fof(dt_k8_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => v1_card_1(k8_group_1(A)) ) ).

fof(dt_k9_group_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_group_1(A)
        & v4_group_1(A)
        & l1_group_1(A) )
     => m2_subset_1(k9_group_1(A),k1_numbers,k5_numbers) ) ).

fof(dt_k10_group_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v7_group_1(A)
        & l1_group_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k10_group_1(A,B,C),u1_struct_0(A)) ) ).

fof(commutativity_k10_group_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v7_group_1(A)
        & l1_group_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k10_group_1(A,B,C) = k10_group_1(A,C,B) ) ).

fof(redefinition_k10_group_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v7_group_1(A)
        & l1_group_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k10_group_1(A,B,C) = k1_group_1(A,B,C) ) ).

fof(dt_u1_group_1,axiom,
    ! [A] :
      ( l1_group_1(A)
     => ( v1_funct_1(u1_group_1(A))
        & v1_funct_2(u1_group_1(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A))
        & m2_relset_1(u1_group_1(A),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(A)),u1_struct_0(A)) ) ) ).

fof(dt_g1_group_1,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A) )
     => ( v1_group_1(g1_group_1(A,B))
        & l1_group_1(g1_group_1(A,B)) ) ) ).

fof(free_g1_group_1,axiom,
    ! [A,B] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A) )
     => ! [C,D] :
          ( g1_group_1(A,B) = g1_group_1(C,D)
         => ( A = C
            & B = D ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+213 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Abelian Groups, Fields and Vector Spaces
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : vectsp_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  178 (  76 unt;   0 def)
%            Number of atoms       :  945 ( 140 equ)
%            Maximal formula atoms :   23 (   5 avg)
%            Number of connectives :  885 ( 118   ~;   5   |; 524   &)
%                                         (  17 <=>; 221  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   20 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   39 (  37 usr;   1 prp; 0-3 aty)
%            Number of functors    :   35 (  35 usr;   7 con; 0-6 aty)
%            Number of variables   :  268 ( 248   !;  20   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(fc1_vectsp_1,axiom,
    ( ~ v3_struct_0(k1_vectsp_1)
    & v1_rlvect_1(k1_vectsp_1) ) ).

fof(fc2_vectsp_1,axiom,
    ( ~ v3_struct_0(k1_vectsp_1)
    & v1_rlvect_1(k1_vectsp_1)
    & v3_rlvect_1(k1_vectsp_1)
    & v4_rlvect_1(k1_vectsp_1)
    & v5_rlvect_1(k1_vectsp_1)
    & v6_rlvect_1(k1_vectsp_1) ) ).

fof(rc1_vectsp_1,axiom,
    ? [A] :
      ( l1_rlvect_1(A)
      & ~ v3_struct_0(A)
      & v1_rlvect_1(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A) ) ).

fof(rc2_vectsp_1,axiom,
    ? [A] :
      ( l1_vectsp_1(A)
      & v1_vectsp_1(A) ) ).

fof(rc3_vectsp_1,axiom,
    ? [A] :
      ( l1_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v1_vectsp_1(A) ) ).

fof(rc4_vectsp_1,axiom,
    ? [A] :
      ( l2_vectsp_1(A)
      & v2_vectsp_1(A) ) ).

fof(rc5_vectsp_1,axiom,
    ? [A] :
      ( l2_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v2_vectsp_1(A) ) ).

fof(rc6_vectsp_1,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & v3_vectsp_1(A) ) ).

fof(rc7_vectsp_1,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_vectsp_1(A) ) ).

fof(fc3_vectsp_1,axiom,
    ( ~ v3_struct_0(k3_vectsp_1)
    & v3_vectsp_1(k3_vectsp_1) ) ).

fof(fc4_vectsp_1,axiom,
    ( ~ v3_struct_0(k3_vectsp_1)
    & v2_group_1(k3_vectsp_1)
    & v3_vectsp_1(k3_vectsp_1) ) ).

fof(fc5_vectsp_1,axiom,
    ( ~ v3_struct_0(k3_vectsp_1)
    & v3_rlvect_1(k3_vectsp_1)
    & v4_rlvect_1(k3_vectsp_1)
    & v5_rlvect_1(k3_vectsp_1)
    & v6_rlvect_1(k3_vectsp_1)
    & v2_group_1(k3_vectsp_1)
    & v4_group_1(k3_vectsp_1)
    & v7_group_1(k3_vectsp_1)
    & v3_vectsp_1(k3_vectsp_1)
    & v6_vectsp_1(k3_vectsp_1)
    & v7_vectsp_1(k3_vectsp_1)
    & v8_vectsp_1(k3_vectsp_1)
    & v9_vectsp_1(k3_vectsp_1)
    & ~ v10_vectsp_1(k3_vectsp_1) ) ).

fof(cc1_vectsp_1,axiom,
    ! [A] :
      ( l3_vectsp_1(A)
     => ( ( ~ v3_struct_0(A)
          & v7_vectsp_1(A) )
       => ( ~ v3_struct_0(A)
          & v4_vectsp_1(A)
          & v5_vectsp_1(A) ) ) ) ).

fof(cc2_vectsp_1,axiom,
    ! [A] :
      ( l3_vectsp_1(A)
     => ( ( ~ v3_struct_0(A)
          & v4_vectsp_1(A)
          & v5_vectsp_1(A) )
       => ( ~ v3_struct_0(A)
          & v7_vectsp_1(A) ) ) ) ).

fof(cc3_vectsp_1,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => ( ( ~ v3_struct_0(A)
          & v2_group_1(A) )
       => ( ~ v3_struct_0(A)
          & v6_vectsp_1(A)
          & v8_vectsp_1(A) ) ) ) ).

fof(cc4_vectsp_1,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => ( ( ~ v3_struct_0(A)
          & v6_vectsp_1(A)
          & v8_vectsp_1(A) )
       => ( ~ v3_struct_0(A)
          & v2_group_1(A) ) ) ) ).

fof(rc8_vectsp_1,axiom,
    ? [A] :
      ( l1_group_1(A)
      & ~ v3_struct_0(A)
      & v4_group_1(A)
      & v7_group_1(A) ) ).

fof(rc9_vectsp_1,axiom,
    ? [A] :
      ( l1_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v7_group_1(A)
      & v6_vectsp_1(A)
      & v8_vectsp_1(A) ) ).

fof(rc10_vectsp_1,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v7_group_1(A)
      & v3_vectsp_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A)
      & v9_vectsp_1(A)
      & ~ v10_vectsp_1(A) ) ).

fof(rc11_vectsp_1,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] :
          ( l4_vectsp_1(B,A)
          & v11_vectsp_1(B,A) ) ) ).

fof(rc12_vectsp_1,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] :
          ( l4_vectsp_1(B,A)
          & ~ v3_struct_0(B)
          & v11_vectsp_1(B,A) ) ) ).

fof(fc6_vectsp_1,axiom,
    ! [A,B,C,D,E] :
      ( ( l1_struct_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(B,B),B)
        & m1_relset_1(C,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,B)
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(u1_struct_0(A),B),B)
        & m1_relset_1(E,k2_zfmisc_1(u1_struct_0(A),B),B) )
     => ( ~ v3_struct_0(g4_vectsp_1(A,B,C,D,E))
        & v11_vectsp_1(g4_vectsp_1(A,B,C,D,E),A) ) ) ).

fof(rc13_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ? [B] :
          ( l4_vectsp_1(B,A)
          & ~ v3_struct_0(B)
          & v3_rlvect_1(B)
          & v4_rlvect_1(B)
          & v5_rlvect_1(B)
          & v6_rlvect_1(B)
          & v11_vectsp_1(B,A)
          & v12_vectsp_1(B,A) ) ) ).

fof(cc5_vectsp_1,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => ( ( ~ v3_struct_0(A)
          & v7_group_1(A)
          & v8_vectsp_1(A) )
       => ( ~ v3_struct_0(A)
          & v6_vectsp_1(A) ) ) ) ).

fof(rc14_vectsp_1,axiom,
    ? [A] :
      ( l1_rlvect_1(A)
      & ~ v3_struct_0(A)
      & v13_vectsp_1(A) ) ).

fof(rc15_vectsp_1,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v7_group_1(A)
      & v3_vectsp_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A)
      & v9_vectsp_1(A)
      & ~ v10_vectsp_1(A)
      & v13_vectsp_1(A) ) ).

fof(d1_vectsp_1,axiom,
    $true ).

fof(d2_vectsp_1,axiom,
    $true ).

fof(d3_vectsp_1,axiom,
    $true ).

fof(d4_vectsp_1,axiom,
    $true ).

fof(d5_vectsp_1,axiom,
    $true ).

fof(d6_vectsp_1,axiom,
    k1_vectsp_1 = g1_rlvect_1(k1_numbers,k33_binop_2,np__0) ).

fof(t1_vectsp_1,axiom,
    $true ).

fof(t2_vectsp_1,axiom,
    $true ).

fof(t3_vectsp_1,axiom,
    $true ).

fof(t4_vectsp_1,axiom,
    $true ).

fof(t5_vectsp_1,axiom,
    $true ).

fof(t6_vectsp_1,axiom,
    ! [A] :
      ( m1_subset_1(A,u1_struct_0(k1_vectsp_1))
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(k1_vectsp_1))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k1_vectsp_1))
             => ( k4_rlvect_1(k1_vectsp_1,A,B) = k4_rlvect_1(k1_vectsp_1,B,A)
                & k4_rlvect_1(k1_vectsp_1,k4_rlvect_1(k1_vectsp_1,A,B),C) = k4_rlvect_1(k1_vectsp_1,A,k4_rlvect_1(k1_vectsp_1,B,C))
                & k4_rlvect_1(k1_vectsp_1,A,k1_rlvect_1(k1_vectsp_1)) = A
                & k4_rlvect_1(k1_vectsp_1,A,k5_rlvect_1(k1_vectsp_1,A)) = k1_rlvect_1(k1_vectsp_1) ) ) ) ) ).

fof(t7_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( k2_rlvect_1(A,B,C) = k2_rlvect_1(A,C,B)
                      & k2_rlvect_1(A,k2_rlvect_1(A,B,C),D) = k2_rlvect_1(A,B,k2_rlvect_1(A,C,D))
                      & k2_rlvect_1(A,B,k1_rlvect_1(A)) = B
                      & ? [E] :
                          ( m1_subset_1(E,u1_struct_0(A))
                          & k2_rlvect_1(A,B,E) = k1_rlvect_1(A) ) ) ) ) )
      <=> ( ~ v3_struct_0(A)
          & v3_rlvect_1(A)
          & v4_rlvect_1(A)
          & v5_rlvect_1(A)
          & v6_rlvect_1(A)
          & l1_rlvect_1(A) ) ) ) ).

fof(d7_vectsp_1,axiom,
    $true ).

fof(d8_vectsp_1,axiom,
    $true ).

fof(d9_vectsp_1,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => k2_vectsp_1(A) = u1_vectsp_1(A) ) ).

fof(d10_vectsp_1,axiom,
    $true ).

fof(d11_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l3_vectsp_1(A) )
     => ( v4_vectsp_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k1_group_1(A,B,k2_rlvect_1(A,C,D)) = k2_rlvect_1(A,k1_group_1(A,B,C),k1_group_1(A,B,D)) ) ) ) ) ) ).

fof(d12_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l3_vectsp_1(A) )
     => ( v5_vectsp_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k1_group_1(A,k2_rlvect_1(A,C,D),B) = k2_rlvect_1(A,k1_group_1(A,C,B),k1_group_1(A,D,B)) ) ) ) ) ) ).

fof(d13_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_vectsp_1(A) )
     => ( v6_vectsp_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => k1_group_1(A,B,k2_group_1(A)) = B ) ) ) ).

fof(d14_vectsp_1,axiom,
    $true ).

fof(d15_vectsp_1,axiom,
    k3_vectsp_1 = g3_vectsp_1(k1_numbers,k33_binop_2,k35_binop_2,np__1,np__0) ).

fof(d16_vectsp_1,axiom,
    $true ).

fof(d17_vectsp_1,axiom,
    $true ).

fof(d18_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l3_vectsp_1(A) )
     => ( v7_vectsp_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( k1_group_1(A,B,k2_rlvect_1(A,C,D)) = k2_rlvect_1(A,k1_group_1(A,B,C),k1_group_1(A,B,D))
                      & k1_group_1(A,k2_rlvect_1(A,C,D),B) = k2_rlvect_1(A,k1_group_1(A,C,B),k1_group_1(A,D,B)) ) ) ) ) ) ) ).

fof(d19_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_vectsp_1(A) )
     => ( v8_vectsp_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => k1_group_1(A,k2_group_1(A),B) = B ) ) ) ).

fof(d20_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_vectsp_1(A) )
     => ( v9_vectsp_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ~ ( B != k1_rlvect_1(A)
                & ! [C] :
                    ( m1_subset_1(C,u1_struct_0(A))
                   => k1_group_1(A,B,C) != k2_group_1(A) ) ) ) ) ) ).

fof(d21_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_vectsp_1(A) )
     => ( v10_vectsp_1(A)
      <=> k1_rlvect_1(A) = k2_group_1(A) ) ) ).

fof(t8_vectsp_1,axiom,
    $true ).

fof(t9_vectsp_1,axiom,
    $true ).

fof(t10_vectsp_1,axiom,
    $true ).

fof(t11_vectsp_1,axiom,
    $true ).

fof(t12_vectsp_1,axiom,
    $true ).

fof(t13_vectsp_1,axiom,
    $true ).

fof(t14_vectsp_1,axiom,
    $true ).

fof(t15_vectsp_1,axiom,
    $true ).

fof(t16_vectsp_1,axiom,
    $true ).

fof(t17_vectsp_1,axiom,
    $true ).

fof(t18_vectsp_1,axiom,
    $true ).

fof(t19_vectsp_1,axiom,
    $true ).

fof(t20_vectsp_1,axiom,
    k2_group_1(k3_vectsp_1) = np__1 ).

fof(t21_vectsp_1,axiom,
    ! [A] :
      ( m1_subset_1(A,u1_struct_0(k3_vectsp_1))
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(k3_vectsp_1))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(k3_vectsp_1))
             => ( k4_rlvect_1(k3_vectsp_1,A,B) = k4_rlvect_1(k3_vectsp_1,B,A)
                & k4_rlvect_1(k3_vectsp_1,k4_rlvect_1(k3_vectsp_1,A,B),C) = k4_rlvect_1(k3_vectsp_1,A,k4_rlvect_1(k3_vectsp_1,B,C))
                & k4_rlvect_1(k3_vectsp_1,A,k1_rlvect_1(k3_vectsp_1)) = A
                & k4_rlvect_1(k3_vectsp_1,A,k5_rlvect_1(k3_vectsp_1,A)) = k1_rlvect_1(k3_vectsp_1)
                & k10_group_1(k3_vectsp_1,A,B) = k10_group_1(k3_vectsp_1,B,A)
                & k10_group_1(k3_vectsp_1,k10_group_1(k3_vectsp_1,A,B),C) = k10_group_1(k3_vectsp_1,A,k10_group_1(k3_vectsp_1,B,C))
                & k10_group_1(k3_vectsp_1,k2_group_1(k3_vectsp_1),A) = A
                & ~ ( A != k1_rlvect_1(k3_vectsp_1)
                    & ! [D] :
                        ( m1_subset_1(D,u1_struct_0(k3_vectsp_1))
                       => k10_group_1(k3_vectsp_1,A,D) != k2_group_1(k3_vectsp_1) ) )
                & k10_group_1(k3_vectsp_1,A,k4_rlvect_1(k3_vectsp_1,B,C)) = k4_rlvect_1(k3_vectsp_1,k10_group_1(k3_vectsp_1,A,B),k10_group_1(k3_vectsp_1,A,C))
                & k10_group_1(k3_vectsp_1,k4_rlvect_1(k3_vectsp_1,B,C),A) = k4_rlvect_1(k3_vectsp_1,k10_group_1(k3_vectsp_1,B,A),k10_group_1(k3_vectsp_1,C,A)) ) ) ) ) ).

fof(t22_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l3_vectsp_1(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ~ ( B != k1_rlvect_1(A)
                          & ! [E] :
                              ( m1_subset_1(E,u1_struct_0(A))
                             => k1_group_1(A,B,E) != k2_group_1(A) ) )
                      & k1_group_1(A,B,k2_rlvect_1(A,C,D)) = k2_rlvect_1(A,k1_group_1(A,B,C),k1_group_1(A,B,D))
                      & k1_group_1(A,k2_rlvect_1(A,C,D),B) = k2_rlvect_1(A,k1_group_1(A,C,B),k1_group_1(A,D,B)) ) ) ) )
      <=> ( ~ v3_struct_0(A)
          & v7_vectsp_1(A)
          & v9_vectsp_1(A)
          & l3_vectsp_1(A) ) ) ) ).

fof(t23_vectsp_1,axiom,
    $true ).

fof(t24_vectsp_1,axiom,
    $true ).

fof(t25_vectsp_1,axiom,
    $true ).

fof(t26_vectsp_1,axiom,
    $true ).

fof(t27_vectsp_1,axiom,
    $true ).

fof(t28_vectsp_1,axiom,
    $true ).

fof(t29_vectsp_1,axiom,
    $true ).

fof(t30_vectsp_1,axiom,
    $true ).

fof(t31_vectsp_1,axiom,
    $true ).

fof(t32_vectsp_1,axiom,
    $true ).

fof(t33_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( k10_group_1(A,B,C) = k10_group_1(A,B,D)
                   => ( B = k1_rlvect_1(A)
                      | C = D ) ) ) ) ) ) ).

fof(d22_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( C = k4_vectsp_1(A,B)
                <=> k10_group_1(A,B,C) = k2_group_1(A) ) ) ) ) ) ).

fof(d23_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k5_vectsp_1(A,B,C) = k10_group_1(A,B,k4_vectsp_1(A,C)) ) ) ) ).

fof(t34_vectsp_1,axiom,
    $true ).

fof(t35_vectsp_1,axiom,
    $true ).

fof(t36_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k1_group_1(A,B,k1_rlvect_1(A)) = k1_rlvect_1(A) ) ) ).

fof(t37_vectsp_1,axiom,
    $true ).

fof(t38_vectsp_1,axiom,
    $true ).

fof(t39_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v5_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k1_group_1(A,k1_rlvect_1(A),B) = k1_rlvect_1(A) ) ) ).

fof(t40_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k1_group_1(A,B,k5_rlvect_1(A,C)) = k5_rlvect_1(A,k1_group_1(A,B,C)) ) ) ) ).

fof(t41_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v5_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k1_group_1(A,k5_rlvect_1(A,B),C) = k5_rlvect_1(A,k1_group_1(A,B,C)) ) ) ) ).

fof(t42_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k1_group_1(A,k5_rlvect_1(A,B),k5_rlvect_1(A,C)) = k1_group_1(A,B,C) ) ) ) ).

fof(t43_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k1_group_1(A,B,k6_rlvect_1(A,C,D)) = k6_rlvect_1(A,k1_group_1(A,B,C),k1_group_1(A,B,D)) ) ) ) ) ).

fof(t44_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k10_group_1(A,B,C) = k1_rlvect_1(A)
              <=> ( B = k1_rlvect_1(A)
                  | C = k1_rlvect_1(A) ) ) ) ) ) ).

fof(t45_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v5_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k1_group_1(A,k6_rlvect_1(A,B,C),D) = k6_rlvect_1(A,k1_group_1(A,B,D),k1_group_1(A,C,D)) ) ) ) ) ).

fof(d24_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & l4_vectsp_1(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => k6_vectsp_1(A,B,C,D) = k2_binop_1(u1_struct_0(A),u1_struct_0(B),u1_struct_0(B),u2_vectsp_1(A,B),C,D) ) ) ) ) ).

fof(d25_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,u1_struct_0(A),u1_struct_0(A))
            & m2_relset_1(B,u1_struct_0(A),u1_struct_0(A)) )
         => ( B = k7_vectsp_1(A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => k8_funct_2(u1_struct_0(A),u1_struct_0(A),B,C) = k5_rlvect_1(A,C) ) ) ) ) ).

fof(d26_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & l4_vectsp_1(B,A) )
         => ( v12_vectsp_1(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ! [F] :
                            ( m1_subset_1(F,u1_struct_0(B))
                           => ( k6_vectsp_1(A,B,C,k2_rlvect_1(B,E,F)) = k2_rlvect_1(B,k6_vectsp_1(A,B,C,E),k6_vectsp_1(A,B,C,F))
                              & k6_vectsp_1(A,B,k2_rlvect_1(A,C,D),E) = k2_rlvect_1(B,k6_vectsp_1(A,B,C,E),k6_vectsp_1(A,B,D,E))
                              & k6_vectsp_1(A,B,k1_group_1(A,C,D),E) = k6_vectsp_1(A,B,C,k6_vectsp_1(A,B,D,E))
                              & k6_vectsp_1(A,B,k2_group_1(A),E) = E ) ) ) ) ) ) ) ) ).

fof(t46_vectsp_1,axiom,
    $true ).

fof(t47_vectsp_1,axiom,
    $true ).

fof(t48_vectsp_1,axiom,
    $true ).

fof(t49_vectsp_1,axiom,
    $true ).

fof(t50_vectsp_1,axiom,
    $true ).

fof(t51_vectsp_1,axiom,
    $true ).

fof(t52_vectsp_1,axiom,
    $true ).

fof(t53_vectsp_1,axiom,
    $true ).

fof(t54_vectsp_1,axiom,
    $true ).

fof(t55_vectsp_1,axiom,
    $true ).

fof(t56_vectsp_1,axiom,
    $true ).

fof(t57_vectsp_1,axiom,
    $true ).

fof(t58_vectsp_1,axiom,
    $true ).

fof(t59_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v12_vectsp_1(C,A)
                & l4_vectsp_1(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( k6_vectsp_1(A,C,k1_rlvect_1(A),D) = k1_rlvect_1(C)
                    & k6_vectsp_1(A,C,k5_rlvect_1(A,k2_group_1(A)),D) = k5_rlvect_1(C,D)
                    & k6_vectsp_1(A,C,B,k1_rlvect_1(C)) = k1_rlvect_1(C) ) ) ) ) ) ).

fof(t60_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v12_vectsp_1(C,A)
                & l4_vectsp_1(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( k6_vectsp_1(A,C,B,D) = k1_rlvect_1(C)
                  <=> ( B = k1_rlvect_1(A)
                      | D = k1_rlvect_1(C) ) ) ) ) ) ) ).

fof(t61_vectsp_1,axiom,
    $true ).

fof(t62_vectsp_1,axiom,
    $true ).

fof(t63_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k2_rlvect_1(A,B,C) = k1_rlvect_1(A)
              <=> k5_rlvect_1(A,B) = C ) ) ) ) ).

fof(t64_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( k5_rlvect_1(A,k2_rlvect_1(A,C,D)) = k6_rlvect_1(A,k5_rlvect_1(A,D),C)
                    & k5_rlvect_1(A,k2_rlvect_1(A,D,k5_rlvect_1(A,C))) = k6_rlvect_1(A,C,D)
                    & k5_rlvect_1(A,k6_rlvect_1(A,C,D)) = k2_rlvect_1(A,D,k5_rlvect_1(A,C))
                    & k5_rlvect_1(A,k6_rlvect_1(A,k5_rlvect_1(A,C),D)) = k2_rlvect_1(A,D,C)
                    & k6_rlvect_1(A,B,k2_rlvect_1(A,D,C)) = k6_rlvect_1(A,k6_rlvect_1(A,B,C),D) ) ) ) ) ) ).

fof(t65_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k6_rlvect_1(A,k1_rlvect_1(A),B) = k5_rlvect_1(A,B)
            & k6_rlvect_1(A,B,k1_rlvect_1(A)) = B ) ) ) ).

fof(t66_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ( k2_rlvect_1(A,B,k5_rlvect_1(A,C)) = k1_rlvect_1(A)
                 => B = C )
                & ( B = C
                 => k2_rlvect_1(A,B,k5_rlvect_1(A,C)) = k1_rlvect_1(A) )
                & ( k6_rlvect_1(A,B,C) = k1_rlvect_1(A)
                 => B = C )
                & ( B = C
                 => k6_rlvect_1(A,B,C) = k1_rlvect_1(A) ) ) ) ) ) ).

fof(t67_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v12_vectsp_1(C,A)
                & l4_vectsp_1(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( B != k1_rlvect_1(A)
                   => k6_vectsp_1(A,C,k4_vectsp_1(A,B),k6_vectsp_1(A,C,B,D)) = D ) ) ) ) ) ).

fof(t68_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v12_vectsp_1(B,A)
            & l4_vectsp_1(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ( k5_rlvect_1(B,k6_vectsp_1(A,B,C,D)) = k6_vectsp_1(A,B,k5_rlvect_1(A,C),D)
                        & k6_rlvect_1(B,E,k6_vectsp_1(A,B,C,D)) = k2_rlvect_1(B,E,k6_vectsp_1(A,B,k5_rlvect_1(A,C),D)) ) ) ) ) ) ) ).

fof(t69_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v12_vectsp_1(B,A)
            & l4_vectsp_1(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => k6_vectsp_1(A,B,C,k5_rlvect_1(B,D)) = k5_rlvect_1(B,k6_vectsp_1(A,B,C,D)) ) ) ) ) ).

fof(t70_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v12_vectsp_1(B,A)
            & l4_vectsp_1(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => k6_vectsp_1(A,B,C,k6_rlvect_1(B,D,E)) = k6_rlvect_1(B,k6_vectsp_1(A,B,C,D),k6_vectsp_1(A,B,C,E)) ) ) ) ) ) ).

fof(t71_vectsp_1,axiom,
    $true ).

fof(t72_vectsp_1,axiom,
    $true ).

fof(t73_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => k4_vectsp_1(A,k4_vectsp_1(A,B)) = B ) ) ) ).

fof(t74_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => ( k4_vectsp_1(A,B) != k1_rlvect_1(A)
              & k5_rlvect_1(A,k4_vectsp_1(A,B)) != k1_rlvect_1(A) ) ) ) ) ).

fof(t75_vectsp_1,axiom,
    $true ).

fof(t76_vectsp_1,axiom,
    $true ).

fof(t77_vectsp_1,axiom,
    $true ).

fof(t78_vectsp_1,axiom,
    k4_rlvect_1(k3_vectsp_1,k2_group_1(k3_vectsp_1),k2_group_1(k3_vectsp_1)) != k1_rlvect_1(k3_vectsp_1) ).

fof(d27_vectsp_1,axiom,
    $true ).

fof(d28_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ( v13_vectsp_1(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ( k2_rlvect_1(A,B,B) = k1_rlvect_1(A)
             => B = k1_rlvect_1(A) ) ) ) ) ).

fof(d29_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ( v13_vectsp_1(A)
      <=> k2_rlvect_1(A,k2_group_1(A),k2_group_1(A)) != k1_rlvect_1(A) ) ) ).

fof(t79_vectsp_1,axiom,
    $true ).

fof(t80_vectsp_1,axiom,
    $true ).

fof(t81_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k5_rlvect_1(A,k6_rlvect_1(A,B,C)) = k6_rlvect_1(A,C,B) ) ) ) ).

fof(t82_vectsp_1,axiom,
    $true ).

fof(t83_vectsp_1,axiom,
    $true ).

fof(t84_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k6_rlvect_1(A,B,C) = k1_rlvect_1(A)
               => B = C ) ) ) ) ).

fof(t85_vectsp_1,axiom,
    $true ).

fof(t86_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( k5_rlvect_1(A,B) = k1_rlvect_1(A)
           => B = k1_rlvect_1(A) ) ) ) ).

fof(t87_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k6_rlvect_1(A,B,C) = k1_rlvect_1(A)
               => k6_rlvect_1(A,C,B) = k1_rlvect_1(A) ) ) ) ) ).

fof(t88_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( k6_rlvect_1(A,k10_group_1(A,B,D),C) = k1_rlvect_1(A)
                     => ( B = k1_rlvect_1(A)
                        | D = k10_group_1(A,C,k4_vectsp_1(A,B)) ) )
                    & ( k6_rlvect_1(A,C,k10_group_1(A,D,B)) = k1_rlvect_1(A)
                     => ( B = k1_rlvect_1(A)
                        | D = k10_group_1(A,C,k4_vectsp_1(A,B)) ) ) ) ) ) ) ) ).

fof(t89_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k2_rlvect_1(A,B,C) = k5_rlvect_1(A,k2_rlvect_1(A,k5_rlvect_1(A,C),k5_rlvect_1(A,B))) ) ) ) ).

fof(t90_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k6_rlvect_1(A,k2_rlvect_1(A,C,B),k2_rlvect_1(A,D,B)) = k6_rlvect_1(A,C,D) ) ) ) ) ).

fof(t91_vectsp_1,axiom,
    $true ).

fof(t92_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k5_rlvect_1(A,k2_rlvect_1(A,k5_rlvect_1(A,B),C)) = k2_rlvect_1(A,k5_rlvect_1(A,C),B) ) ) ) ).

fof(t93_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k6_rlvect_1(A,k6_rlvect_1(A,B,C),D) = k6_rlvect_1(A,k6_rlvect_1(A,B,D),C) ) ) ) ) ).

fof(t94_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ( ~ v3_struct_0(g1_group_1(u1_struct_0(A),u1_rlvect_1(A)))
        & v3_group_1(g1_group_1(u1_struct_0(A),u1_rlvect_1(A)))
        & v4_group_1(g1_group_1(u1_struct_0(A),u1_rlvect_1(A)))
        & v7_group_1(g1_group_1(u1_struct_0(A),u1_rlvect_1(A)))
        & l1_group_1(g1_group_1(u1_struct_0(A),u1_rlvect_1(A))) ) ) ).

fof(dt_l1_vectsp_1,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => l1_group_1(A) ) ).

fof(existence_l1_vectsp_1,axiom,
    ? [A] : l1_vectsp_1(A) ).

fof(dt_l2_vectsp_1,axiom,
    ! [A] :
      ( l2_vectsp_1(A)
     => ( l1_vectsp_1(A)
        & l2_struct_0(A) ) ) ).

fof(existence_l2_vectsp_1,axiom,
    ? [A] : l2_vectsp_1(A) ).

fof(dt_l3_vectsp_1,axiom,
    ! [A] :
      ( l3_vectsp_1(A)
     => ( l1_rlvect_1(A)
        & l2_vectsp_1(A) ) ) ).

fof(existence_l3_vectsp_1,axiom,
    ? [A] : l3_vectsp_1(A) ).

fof(dt_l4_vectsp_1,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( l4_vectsp_1(B,A)
         => l1_rlvect_1(B) ) ) ).

fof(existence_l4_vectsp_1,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] : l4_vectsp_1(B,A) ) ).

fof(abstractness_v1_vectsp_1,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => ( v1_vectsp_1(A)
       => A = g1_vectsp_1(u1_struct_0(A),u1_group_1(A),u1_vectsp_1(A)) ) ) ).

fof(abstractness_v2_vectsp_1,axiom,
    ! [A] :
      ( l2_vectsp_1(A)
     => ( v2_vectsp_1(A)
       => A = g2_vectsp_1(u1_struct_0(A),u1_group_1(A),u1_vectsp_1(A),u2_struct_0(A)) ) ) ).

fof(abstractness_v3_vectsp_1,axiom,
    ! [A] :
      ( l3_vectsp_1(A)
     => ( v3_vectsp_1(A)
       => A = g3_vectsp_1(u1_struct_0(A),u1_rlvect_1(A),u1_group_1(A),u1_vectsp_1(A),u2_struct_0(A)) ) ) ).

fof(abstractness_v11_vectsp_1,axiom,
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l4_vectsp_1(B,A) )
     => ( v11_vectsp_1(B,A)
       => B = g4_vectsp_1(A,u1_struct_0(B),u1_rlvect_1(B),u2_struct_0(B),u2_vectsp_1(A,B)) ) ) ).

fof(dt_k1_vectsp_1,axiom,
    ( v1_rlvect_1(k1_vectsp_1)
    & l1_rlvect_1(k1_vectsp_1) ) ).

fof(dt_k2_vectsp_1,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => m1_subset_1(k2_vectsp_1(A),u1_struct_0(A)) ) ).

fof(dt_k3_vectsp_1,axiom,
    ( v3_vectsp_1(k3_vectsp_1)
    & l3_vectsp_1(k3_vectsp_1) ) ).

fof(dt_k4_vectsp_1,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & l3_vectsp_1(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k4_vectsp_1(A,B),u1_struct_0(A)) ) ).

fof(dt_k5_vectsp_1,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & l3_vectsp_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k5_vectsp_1(A,B,C),u1_struct_0(A)) ) ).

fof(dt_k6_vectsp_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & ~ v3_struct_0(B)
        & l4_vectsp_1(B,A)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(B)) )
     => m1_subset_1(k6_vectsp_1(A,B,C,D),u1_struct_0(B)) ) ).

fof(dt_k7_vectsp_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ( v1_funct_1(k7_vectsp_1(A))
        & v1_funct_2(k7_vectsp_1(A),u1_struct_0(A),u1_struct_0(A))
        & m2_relset_1(k7_vectsp_1(A),u1_struct_0(A),u1_struct_0(A)) ) ) ).

fof(dt_u1_vectsp_1,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => m1_subset_1(u1_vectsp_1(A),u1_struct_0(A)) ) ).

fof(dt_u2_vectsp_1,axiom,
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l4_vectsp_1(B,A) )
     => ( v1_funct_1(u2_vectsp_1(A,B))
        & v1_funct_2(u2_vectsp_1(A,B),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)),u1_struct_0(B))
        & m2_relset_1(u2_vectsp_1(A,B),k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)),u1_struct_0(B)) ) ) ).

fof(dt_g1_vectsp_1,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,A) )
     => ( v1_vectsp_1(g1_vectsp_1(A,B,C))
        & l1_vectsp_1(g1_vectsp_1(A,B,C)) ) ) ).

fof(free_g1_vectsp_1,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,A) )
     => ! [D,E,F] :
          ( g1_vectsp_1(A,B,C) = g1_vectsp_1(D,E,F)
         => ( A = D
            & B = E
            & C = F ) ) ) ).

fof(dt_g2_vectsp_1,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,A)
        & m1_subset_1(D,A) )
     => ( v2_vectsp_1(g2_vectsp_1(A,B,C,D))
        & l2_vectsp_1(g2_vectsp_1(A,B,C,D)) ) ) ).

fof(free_g2_vectsp_1,axiom,
    ! [A,B,C,D] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & m1_subset_1(C,A)
        & m1_subset_1(D,A) )
     => ! [E,F,G,H] :
          ( g2_vectsp_1(A,B,C,D) = g2_vectsp_1(E,F,G,H)
         => ( A = E
            & B = F
            & C = G
            & D = H ) ) ) ).

fof(dt_g3_vectsp_1,axiom,
    ! [A,B,C,D,E] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_relset_1(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(D,A)
        & m1_subset_1(E,A) )
     => ( v3_vectsp_1(g3_vectsp_1(A,B,C,D,E))
        & l3_vectsp_1(g3_vectsp_1(A,B,C,D,E)) ) ) ).

fof(free_g3_vectsp_1,axiom,
    ! [A,B,C,D,E] :
      ( ( v1_funct_1(B)
        & v1_funct_2(B,k2_zfmisc_1(A,A),A)
        & m1_relset_1(B,k2_zfmisc_1(A,A),A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(A,A),A)
        & m1_relset_1(C,k2_zfmisc_1(A,A),A)
        & m1_subset_1(D,A)
        & m1_subset_1(E,A) )
     => ! [F,G,H,I,J] :
          ( g3_vectsp_1(A,B,C,D,E) = g3_vectsp_1(F,G,H,I,J)
         => ( A = F
            & B = G
            & C = H
            & D = I
            & E = J ) ) ) ).

fof(dt_g4_vectsp_1,axiom,
    ! [A,B,C,D,E] :
      ( ( l1_struct_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(B,B),B)
        & m1_relset_1(C,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,B)
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(u1_struct_0(A),B),B)
        & m1_relset_1(E,k2_zfmisc_1(u1_struct_0(A),B),B) )
     => ( v11_vectsp_1(g4_vectsp_1(A,B,C,D,E),A)
        & l4_vectsp_1(g4_vectsp_1(A,B,C,D,E),A) ) ) ).

fof(free_g4_vectsp_1,axiom,
    ! [A,B,C,D,E] :
      ( ( l1_struct_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(B,B),B)
        & m1_relset_1(C,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,B)
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(u1_struct_0(A),B),B)
        & m1_relset_1(E,k2_zfmisc_1(u1_struct_0(A),B),B) )
     => ! [F,G,H,I,J] :
          ( g4_vectsp_1(A,B,C,D,E) = g4_vectsp_1(F,G,H,I,J)
         => ( A = F
            & B = G
            & C = H
            & D = I
            & E = J ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+224 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Linear Combinations in Real Linear Space
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : rlvect_2 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  171 (  37 unt;   0 def)
%            Number of atoms       : 1255 ( 118 equ)
%            Maximal formula atoms :   17 (   7 avg)
%            Number of connectives : 1218 ( 134   ~;   1   |; 730   &)
%                                         (  19 <=>; 334  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   7 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :   40 (  38 usr;   1 prp; 0-4 aty)
%            Number of functors    :   71 (  71 usr;   5 con; 0-6 aty)
%            Number of variables   :  384 ( 375   !;   9   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_rlvect_2,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & v1_xboole_0(B)
          & v1_funct_1(B)
          & v1_finset_1(B)
          & v1_membered(B)
          & v2_membered(B)
          & v3_membered(B)
          & v4_membered(B)
          & v5_membered(B) ) ) ).

fof(rc2_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v1_finset_1(B) ) ) ).

fof(fc1_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ~ v1_xboole_0(k18_rlvect_2(A)) ) ).

fof(fc2_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ( ~ v3_struct_0(k23_rlvect_2(A))
        & v2_rlvect_1(k23_rlvect_2(A))
        & v3_rlvect_1(k23_rlvect_2(A))
        & v4_rlvect_1(k23_rlvect_2(A))
        & v5_rlvect_1(k23_rlvect_2(A))
        & v6_rlvect_1(k23_rlvect_2(A))
        & v7_rlvect_1(k23_rlvect_2(A)) ) ) ).

fof(d1_rlvect_2,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( r1_rlvect_1(A,B)
         => k1_rlvect_2(A,B) = B ) ) ).

fof(t1_rlvect_2,axiom,
    $true ).

fof(t2_rlvect_2,axiom,
    $true ).

fof(t3_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k1_rlvect_2(A,B) = B ) ) ).

fof(t4_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m2_finseq_1(D,u1_struct_0(A))
                 => ( ( k3_finseq_1(B) = k3_finseq_1(C)
                      & k3_finseq_1(B) = k3_finseq_1(D)
                      & ! [E] :
                          ( m2_subset_1(E,k1_numbers,k5_numbers)
                         => ( r2_hidden(E,k1_relat_1(B))
                           => k1_funct_1(D,E) = k4_rlvect_1(A,k4_finseq_4(k5_numbers,u1_struct_0(A),B,E),k4_finseq_4(k5_numbers,u1_struct_0(A),C,E)) ) ) )
                   => k9_rlvect_1(A,D) = k4_rlvect_1(A,k9_rlvect_1(A,B),k9_rlvect_1(A,C)) ) ) ) ) ) ).

fof(t5_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m2_finseq_1(D,u1_struct_0(A))
                 => ( ( k3_finseq_1(C) = k3_finseq_1(D)
                      & ! [E] :
                          ( m2_subset_1(E,k1_numbers,k5_numbers)
                         => ( r2_hidden(E,k1_relat_1(C))
                           => k1_funct_1(D,E) = k3_rlvect_1(A,k4_finseq_4(k5_numbers,u1_struct_0(A),C,E),B) ) ) )
                   => k9_rlvect_1(A,D) = k3_rlvect_1(A,k9_rlvect_1(A,C),B) ) ) ) ) ) ).

fof(t6_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ( ( k3_finseq_1(B) = k3_finseq_1(C)
                  & ! [D] :
                      ( m2_subset_1(D,k1_numbers,k5_numbers)
                     => ( r2_hidden(D,k1_relat_1(B))
                       => k1_funct_1(C,D) = k5_rlvect_1(A,k4_finseq_4(k5_numbers,u1_struct_0(A),B,D)) ) ) )
               => k9_rlvect_1(A,C) = k5_rlvect_1(A,k9_rlvect_1(A,B)) ) ) ) ) ).

fof(t7_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m2_finseq_1(D,u1_struct_0(A))
                 => ( ( k3_finseq_1(B) = k3_finseq_1(C)
                      & k3_finseq_1(B) = k3_finseq_1(D)
                      & ! [E] :
                          ( m2_subset_1(E,k1_numbers,k5_numbers)
                         => ( r2_hidden(E,k1_relat_1(B))
                           => k1_funct_1(D,E) = k6_rlvect_1(A,k4_finseq_4(k5_numbers,u1_struct_0(A),B,E),k4_finseq_4(k5_numbers,u1_struct_0(A),C,E)) ) ) )
                   => k9_rlvect_1(A,D) = k6_rlvect_1(A,k9_rlvect_1(A,B),k9_rlvect_1(A,C)) ) ) ) ) ) ).

fof(t8_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,k1_relat_1(B),k1_relat_1(B))
                    & v3_funct_2(D,k1_relat_1(B),k1_relat_1(B))
                    & m2_relset_1(D,k1_relat_1(B),k1_relat_1(B)) )
                 => ( ( k3_finseq_1(B) = k3_finseq_1(C)
                      & ! [E] :
                          ( m2_subset_1(E,k1_numbers,k5_numbers)
                         => ( r2_hidden(E,k1_relat_1(C))
                           => k1_funct_1(C,E) = k1_funct_1(B,k1_funct_1(D,E)) ) ) )
                   => k9_rlvect_1(A,B) = k9_rlvect_1(A,C) ) ) ) ) ) ).

fof(t9_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(A))
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,k1_relat_1(B),k1_relat_1(B))
                    & v3_funct_2(D,k1_relat_1(B),k1_relat_1(B))
                    & m2_relset_1(D,k1_relat_1(B),k1_relat_1(B)) )
                 => ( C = k5_relat_1(D,B)
                   => k9_rlvect_1(A,B) = k9_rlvect_1(A,C) ) ) ) ) ) ).

fof(d2_rlvect_2,axiom,
    $true ).

fof(d3_rlvect_2,axiom,
    $true ).

fof(d4_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_finset_1(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ( ( v3_rlvect_1(A)
              & v4_rlvect_1(A)
              & v5_rlvect_1(A) )
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( C = k6_rlvect_2(A,B)
                <=> ? [D] :
                      ( m2_finseq_1(D,u1_struct_0(A))
                      & k2_relat_1(D) = B
                      & v2_funct_1(D)
                      & C = k9_rlvect_1(A,D) ) ) ) ) ) ) ).

fof(t10_rlvect_2,axiom,
    $true ).

fof(t11_rlvect_2,axiom,
    $true ).

fof(t12_rlvect_2,axiom,
    $true ).

fof(t13_rlvect_2,axiom,
    $true ).

fof(t14_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & l1_rlvect_1(A) )
     => k6_rlvect_2(A,k1_pre_topc(A)) = k1_rlvect_1(A) ) ).

fof(t15_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k6_rlvect_2(A,k7_rlvect_2(A,B)) = B ) ) ).

fof(t16_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( B != C
               => k6_rlvect_2(A,k8_rlvect_2(A,B,C)) = k4_rlvect_1(A,B,C) ) ) ) ) ).

fof(t17_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ~ ( B != C
                      & C != D
                      & B != D
                      & k6_rlvect_2(A,k9_rlvect_2(A,B,C,D)) != k4_rlvect_1(A,k4_rlvect_1(A,B,C),D) ) ) ) ) ) ).

fof(t18_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_finset_1(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => ( r1_xboole_0(C,B)
               => k6_rlvect_2(A,k2_rlvect_2(A,C,B)) = k4_rlvect_1(A,k6_rlvect_2(A,C),k6_rlvect_2(A,B)) ) ) ) ) ).

fof(t19_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_finset_1(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => k6_rlvect_2(A,k2_rlvect_2(A,C,B)) = k6_rlvect_1(A,k4_rlvect_1(A,k6_rlvect_2(A,C),k6_rlvect_2(A,B)),k6_rlvect_2(A,k3_rlvect_2(A,C,B))) ) ) ) ).

fof(t20_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_finset_1(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => k6_rlvect_2(A,k3_rlvect_2(A,C,B)) = k6_rlvect_1(A,k4_rlvect_1(A,k6_rlvect_2(A,C),k6_rlvect_2(A,B)),k6_rlvect_2(A,k2_rlvect_2(A,C,B))) ) ) ) ).

fof(t21_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_finset_1(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => k6_rlvect_2(A,k4_rlvect_2(A,C,B)) = k6_rlvect_1(A,k6_rlvect_2(A,k2_rlvect_2(A,C,B)),k6_rlvect_2(A,B)) ) ) ) ).

fof(t22_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_finset_1(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => k6_rlvect_2(A,k4_rlvect_2(A,C,B)) = k6_rlvect_1(A,k6_rlvect_2(A,C),k6_rlvect_2(A,k3_rlvect_2(A,C,B))) ) ) ) ).

fof(t23_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_finset_1(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => k6_rlvect_2(A,k5_rlvect_2(A,C,B)) = k6_rlvect_1(A,k6_rlvect_2(A,k2_rlvect_2(A,C,B)),k6_rlvect_2(A,k3_rlvect_2(A,C,B))) ) ) ) ).

fof(t24_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( ( v1_finset_1(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
             => k6_rlvect_2(A,k5_rlvect_2(A,C,B)) = k4_rlvect_1(A,k6_rlvect_2(A,k4_rlvect_2(A,C,B)),k6_rlvect_2(A,k4_rlvect_2(A,B,C))) ) ) ) ).

fof(d5_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_struct_0(A) )
     => ! [B] :
          ( m2_fraenkel(B,u1_struct_0(A),k1_numbers,k1_fraenkel(u1_struct_0(A),k1_numbers))
         => ( m1_rlvect_2(B,A)
          <=> ? [C] :
                ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
                & ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( ~ r2_hidden(D,C)
                     => k8_funct_2(u1_struct_0(A),k1_numbers,B,D) = np__0 ) ) ) ) ) ) ).

fof(t25_rlvect_2,axiom,
    $true ).

fof(t26_rlvect_2,axiom,
    $true ).

fof(t27_rlvect_2,axiom,
    $true ).

fof(t28_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k8_funct_2(u1_struct_0(A),k1_numbers,B,C) = np__0
              <=> ~ r2_hidden(C,k10_rlvect_2(A,B)) ) ) ) ) ).

fof(d7_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ( B = k11_rlvect_2(A)
          <=> k10_rlvect_2(A,B) = k1_xboole_0 ) ) ) ).

fof(t29_rlvect_2,axiom,
    $true ).

fof(t30_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k8_funct_2(u1_struct_0(A),k1_numbers,k11_rlvect_2(A),B) = np__0 ) ) ).

fof(d8_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ( m2_rlvect_2(C,A,B)
              <=> r1_tarski(k10_rlvect_2(A,C),B) ) ) ) ) ).

fof(t31_rlvect_2,axiom,
    $true ).

fof(t32_rlvect_2,axiom,
    $true ).

fof(t33_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m2_rlvect_2(D,A,B)
                 => ( r1_tarski(B,C)
                   => m2_rlvect_2(D,A,C) ) ) ) ) ) ).

fof(t34_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => m2_rlvect_2(k11_rlvect_2(A),A,B) ) ) ).

fof(t35_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m2_rlvect_2(B,A,k1_subset_1(u1_struct_0(A)))
         => B = k11_rlvect_2(A) ) ) ).

fof(d9_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m2_finseq_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),k1_numbers)
                & m2_relset_1(C,u1_struct_0(A),k1_numbers) )
             => ! [D] :
                  ( m2_finseq_1(D,u1_struct_0(A))
                 => ( D = k12_rlvect_2(A,B,C)
                  <=> ( k3_finseq_1(D) = k3_finseq_1(B)
                      & ! [E] :
                          ( m2_subset_1(E,k1_numbers,k5_numbers)
                         => ( r2_hidden(E,k1_relat_1(D))
                           => k1_funct_1(D,E) = k3_rlvect_1(A,k4_finseq_4(k5_numbers,u1_struct_0(A),B,E),k8_funct_2(u1_struct_0(A),k1_numbers,C,k4_finseq_4(k5_numbers,u1_struct_0(A),B,E))) ) ) ) ) ) ) ) ) ).

fof(t36_rlvect_2,axiom,
    $true ).

fof(t37_rlvect_2,axiom,
    $true ).

fof(t38_rlvect_2,axiom,
    $true ).

fof(t39_rlvect_2,axiom,
    $true ).

fof(t40_rlvect_2,axiom,
    ! [A] :
      ( m2_subset_1(A,k1_numbers,k5_numbers)
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v7_rlvect_1(B)
            & l2_rlvect_1(B) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m2_finseq_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,u1_struct_0(B),k1_numbers)
                        & m2_relset_1(E,u1_struct_0(B),k1_numbers) )
                     => ( ( r2_hidden(A,k1_relat_1(D))
                          & C = k1_funct_1(D,A) )
                       => k1_funct_1(k12_rlvect_2(B,D,E),A) = k3_rlvect_1(B,C,k8_funct_2(u1_struct_0(B),k1_numbers,E,C)) ) ) ) ) ) ) ).

fof(t41_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,u1_struct_0(A),k1_numbers)
            & m2_relset_1(B,u1_struct_0(A),k1_numbers) )
         => k12_rlvect_2(A,k6_finseq_1(u1_struct_0(A)),B) = k6_finseq_1(u1_struct_0(A)) ) ) ).

fof(t42_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(A),k1_numbers)
                & m2_relset_1(C,u1_struct_0(A),k1_numbers) )
             => k12_rlvect_2(A,k12_finseq_1(u1_struct_0(A),B),C) = k12_finseq_1(u1_struct_0(A),k3_rlvect_1(A,B,k8_funct_2(u1_struct_0(A),k1_numbers,C,B))) ) ) ) ).

fof(t43_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,u1_struct_0(A),k1_numbers)
                    & m2_relset_1(D,u1_struct_0(A),k1_numbers) )
                 => k12_rlvect_2(A,k2_finseq_4(u1_struct_0(A),B,C),D) = k2_finseq_4(u1_struct_0(A),k3_rlvect_1(A,B,k8_funct_2(u1_struct_0(A),k1_numbers,D,B)),k3_rlvect_1(A,C,k8_funct_2(u1_struct_0(A),k1_numbers,D,C))) ) ) ) ) ).

fof(t44_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,u1_struct_0(A),k1_numbers)
                        & m2_relset_1(E,u1_struct_0(A),k1_numbers) )
                     => k12_rlvect_2(A,k3_finseq_4(u1_struct_0(A),B,C,D),E) = k3_finseq_4(u1_struct_0(A),k3_rlvect_1(A,B,k8_funct_2(u1_struct_0(A),k1_numbers,E,B)),k3_rlvect_1(A,C,k8_funct_2(u1_struct_0(A),k1_numbers,E,C)),k3_rlvect_1(A,D,k8_funct_2(u1_struct_0(A),k1_numbers,E,D))) ) ) ) ) ) ).

fof(d10_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( C = k13_rlvect_2(A,B)
              <=> ? [D] :
                    ( m2_finseq_1(D,u1_struct_0(A))
                    & v2_funct_1(D)
                    & k2_relat_1(D) = k10_rlvect_2(A,B)
                    & C = k9_rlvect_1(A,k12_rlvect_2(A,D,B)) ) ) ) ) ) ).

fof(t45_rlvect_2,axiom,
    $true ).

fof(t46_rlvect_2,axiom,
    $true ).

fof(t47_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ( ( B != k1_xboole_0
              & v1_rlsub_1(B,A) )
          <=> ! [C] :
                ( m2_rlvect_2(C,A,B)
               => r2_hidden(k13_rlvect_2(A,C),B) ) ) ) ) ).

fof(t48_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => k13_rlvect_2(A,k11_rlvect_2(A)) = k1_rlvect_1(A) ) ).

fof(t49_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m2_rlvect_2(B,A,k1_subset_1(u1_struct_0(A)))
         => k13_rlvect_2(A,B) = k1_rlvect_1(A) ) ) ).

fof(t50_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m2_rlvect_2(C,A,k7_rlvect_2(A,B))
             => k13_rlvect_2(A,C) = k3_rlvect_1(A,B,k8_funct_2(u1_struct_0(A),k1_numbers,C,B)) ) ) ) ).

fof(t51_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( B != C
               => ! [D] :
                    ( m2_rlvect_2(D,A,k8_rlvect_2(A,B,C))
                   => k13_rlvect_2(A,D) = k4_rlvect_1(A,k3_rlvect_1(A,B,k8_funct_2(u1_struct_0(A),k1_numbers,D,B)),k3_rlvect_1(A,C,k8_funct_2(u1_struct_0(A),k1_numbers,D,C))) ) ) ) ) ) ).

fof(t52_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ( k10_rlvect_2(A,B) = k1_xboole_0
           => k13_rlvect_2(A,B) = k1_rlvect_1(A) ) ) ) ).

fof(t53_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ( k10_rlvect_2(A,C) = k7_rlvect_2(A,B)
               => k13_rlvect_2(A,C) = k3_rlvect_1(A,B,k8_funct_2(u1_struct_0(A),k1_numbers,C,B)) ) ) ) ) ).

fof(t54_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => ( k10_rlvect_2(A,D) = k8_rlvect_2(A,B,C)
                   => ( B = C
                      | k13_rlvect_2(A,D) = k4_rlvect_1(A,k3_rlvect_1(A,B,k8_funct_2(u1_struct_0(A),k1_numbers,D,B)),k3_rlvect_1(A,C,k8_funct_2(u1_struct_0(A),k1_numbers,D,C))) ) ) ) ) ) ) ).

fof(d11_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ( r1_rlvect_2(A,B,C)
              <=> ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => k8_funct_2(u1_struct_0(A),k1_numbers,B,D) = k8_funct_2(u1_struct_0(A),k1_numbers,C,D) ) ) ) ) ) ).

fof(d12_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => ( D = k14_rlvect_2(A,B,C)
                  <=> ! [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                       => k8_funct_2(u1_struct_0(A),k1_numbers,D,E) = k3_real_1(k8_funct_2(u1_struct_0(A),k1_numbers,B,E),k8_funct_2(u1_struct_0(A),k1_numbers,C,E)) ) ) ) ) ) ) ).

fof(t55_rlvect_2,axiom,
    $true ).

fof(t56_rlvect_2,axiom,
    $true ).

fof(t57_rlvect_2,axiom,
    $true ).

fof(t58_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => r1_tarski(k10_rlvect_2(A,k14_rlvect_2(A,B,C)),k2_rlvect_2(A,k10_rlvect_2(A,B),k10_rlvect_2(A,C))) ) ) ) ).

fof(t59_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => ( ( m2_rlvect_2(C,A,B)
                      & m2_rlvect_2(D,A,B) )
                   => m2_rlvect_2(k14_rlvect_2(A,C,D),A,B) ) ) ) ) ) ).

fof(t60_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => r1_rlvect_2(A,k14_rlvect_2(A,B,C),k14_rlvect_2(A,C,B)) ) ) ) ).

fof(t61_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => r1_rlvect_2(A,k14_rlvect_2(A,B,k14_rlvect_2(A,C,D)),k14_rlvect_2(A,k14_rlvect_2(A,B,C),D)) ) ) ) ) ).

fof(t62_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ( r1_rlvect_2(A,k14_rlvect_2(A,B,k11_rlvect_2(A)),B)
            & r1_rlvect_2(A,k14_rlvect_2(A,k11_rlvect_2(A),B),B) ) ) ) ).

fof(d13_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => ( D = k15_rlvect_2(A,B,C)
                  <=> ! [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                       => k8_funct_2(u1_struct_0(A),k1_numbers,D,E) = k4_real_1(B,k8_funct_2(u1_struct_0(A),k1_numbers,C,E)) ) ) ) ) ) ) ).

fof(t63_rlvect_2,axiom,
    $true ).

fof(t64_rlvect_2,axiom,
    $true ).

fof(t65_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ( B != np__0
               => k10_rlvect_2(A,k15_rlvect_2(A,B,C)) = k10_rlvect_2(A,C) ) ) ) ) ).

fof(t66_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => r1_rlvect_2(A,k15_rlvect_2(A,np__0,B),k11_rlvect_2(A)) ) ) ).

fof(t67_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => ( m2_rlvect_2(D,A,C)
                   => m2_rlvect_2(k15_rlvect_2(A,B,D),A,C) ) ) ) ) ) ).

fof(t68_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => r1_rlvect_2(A,k15_rlvect_2(A,k3_real_1(B,C),D),k14_rlvect_2(A,k15_rlvect_2(A,B,D),k15_rlvect_2(A,C,D))) ) ) ) ) ).

fof(t69_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => r1_rlvect_2(A,k15_rlvect_2(A,B,k14_rlvect_2(A,C,D)),k14_rlvect_2(A,k15_rlvect_2(A,B,C),k15_rlvect_2(A,B,D))) ) ) ) ) ).

fof(t70_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_subset_1(C,k1_numbers)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => r1_rlvect_2(A,k15_rlvect_2(A,B,k15_rlvect_2(A,C,D)),k15_rlvect_2(A,k4_real_1(B,C),D)) ) ) ) ) ).

fof(t71_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => r1_rlvect_2(A,k15_rlvect_2(A,np__1,B),B) ) ) ).

fof(d14_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => k16_rlvect_2(A,B) = k15_rlvect_2(A,k1_real_1(np__1),B) ) ) ).

fof(t72_rlvect_2,axiom,
    $true ).

fof(t73_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => k8_funct_2(u1_struct_0(A),k1_numbers,k16_rlvect_2(A,C),B) = k1_real_1(k8_funct_2(u1_struct_0(A),k1_numbers,C,B)) ) ) ) ).

fof(t74_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ( r1_rlvect_2(A,k14_rlvect_2(A,B,C),k11_rlvect_2(A))
               => r1_rlvect_2(A,C,k16_rlvect_2(A,B)) ) ) ) ) ).

fof(t75_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => k10_rlvect_2(A,k16_rlvect_2(A,B)) = k10_rlvect_2(A,B) ) ) ).

fof(t76_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ( m2_rlvect_2(C,A,B)
               => m2_rlvect_2(k16_rlvect_2(A,C),A,B) ) ) ) ) ).

fof(t77_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => r1_rlvect_2(A,k16_rlvect_2(A,k16_rlvect_2(A,B)),B) ) ) ).

fof(d15_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => k17_rlvect_2(A,B,C) = k14_rlvect_2(A,B,k16_rlvect_2(A,C)) ) ) ) ).

fof(t78_rlvect_2,axiom,
    $true ).

fof(t79_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => k8_funct_2(u1_struct_0(A),k1_numbers,k17_rlvect_2(A,C,D),B) = k5_real_1(k8_funct_2(u1_struct_0(A),k1_numbers,C,B),k8_funct_2(u1_struct_0(A),k1_numbers,D,B)) ) ) ) ) ).

fof(t80_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => r1_tarski(k10_rlvect_2(A,k17_rlvect_2(A,B,C)),k2_rlvect_2(A,k10_rlvect_2(A,B),k10_rlvect_2(A,C))) ) ) ) ).

fof(t81_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => ! [D] :
                  ( m1_rlvect_2(D,A)
                 => ( ( m2_rlvect_2(C,A,B)
                      & m2_rlvect_2(D,A,B) )
                   => m2_rlvect_2(k17_rlvect_2(A,C,D),A,B) ) ) ) ) ) ).

fof(t82_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => r1_rlvect_2(A,k17_rlvect_2(A,B,B),k11_rlvect_2(A)) ) ) ).

fof(d16_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( B = k18_rlvect_2(A)
        <=> ! [C] :
              ( r2_hidden(C,B)
            <=> m1_rlvect_2(C,A) ) ) ) ).

fof(d17_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k18_rlvect_2(A))
         => k19_rlvect_2(A,B) = B ) ) ).

fof(d18_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => k20_rlvect_2(A,B) = B ) ) ).

fof(d19_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(k18_rlvect_2(A),k18_rlvect_2(A)),k18_rlvect_2(A))
            & m2_relset_1(B,k2_zfmisc_1(k18_rlvect_2(A),k18_rlvect_2(A)),k18_rlvect_2(A)) )
         => ( B = k21_rlvect_2(A)
          <=> ! [C] :
                ( m1_subset_1(C,k18_rlvect_2(A))
               => ! [D] :
                    ( m1_subset_1(D,k18_rlvect_2(A))
                   => k2_binop_1(k18_rlvect_2(A),k18_rlvect_2(A),k18_rlvect_2(A),B,C,D) = k14_rlvect_2(A,k19_rlvect_2(A,C),k19_rlvect_2(A,D)) ) ) ) ) ) ).

fof(d20_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( ( v1_funct_1(B)
            & v1_funct_2(B,k2_zfmisc_1(k1_numbers,k18_rlvect_2(A)),k18_rlvect_2(A))
            & m2_relset_1(B,k2_zfmisc_1(k1_numbers,k18_rlvect_2(A)),k18_rlvect_2(A)) )
         => ( B = k22_rlvect_2(A)
          <=> ! [C] :
                ( m1_subset_1(C,k1_numbers)
               => ! [D] :
                    ( m1_subset_1(D,k18_rlvect_2(A))
                   => k1_funct_1(B,k4_tarski(C,D)) = k15_rlvect_2(A,C,k19_rlvect_2(A,D)) ) ) ) ) ) ).

fof(d21_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => k23_rlvect_2(A) = g2_rlvect_1(k18_rlvect_2(A),k20_rlvect_2(A,k11_rlvect_2(A)),k21_rlvect_2(A),k22_rlvect_2(A)) ) ).

fof(t83_rlvect_2,axiom,
    $true ).

fof(t84_rlvect_2,axiom,
    $true ).

fof(t85_rlvect_2,axiom,
    $true ).

fof(t86_rlvect_2,axiom,
    $true ).

fof(t87_rlvect_2,axiom,
    $true ).

fof(t88_rlvect_2,axiom,
    $true ).

fof(t89_rlvect_2,axiom,
    $true ).

fof(t90_rlvect_2,axiom,
    $true ).

fof(t91_rlvect_2,axiom,
    $true ).

fof(t92_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => u1_struct_0(k23_rlvect_2(A)) = k18_rlvect_2(A) ) ).

fof(t93_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => u2_struct_0(k23_rlvect_2(A)) = k11_rlvect_2(A) ) ).

fof(t94_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => u1_rlvect_1(k23_rlvect_2(A)) = k21_rlvect_2(A) ) ).

fof(t95_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => u2_rlvect_1(k23_rlvect_2(A)) = k22_rlvect_2(A) ) ).

fof(t96_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => k4_rlvect_1(k23_rlvect_2(A),k1_rlvect_2(k23_rlvect_2(A),B),k1_rlvect_2(k23_rlvect_2(A),C)) = k14_rlvect_2(A,B,C) ) ) ) ).

fof(t97_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_numbers)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => k3_rlvect_1(k23_rlvect_2(A),k1_rlvect_2(k23_rlvect_2(A),C),B) = k15_rlvect_2(A,B,C) ) ) ) ).

fof(t98_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => k5_rlvect_1(k23_rlvect_2(A),k1_rlvect_2(k23_rlvect_2(A),B)) = k16_rlvect_2(A,B) ) ) ).

fof(t99_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => ! [C] :
              ( m1_rlvect_2(C,A)
             => k6_rlvect_1(k23_rlvect_2(A),k1_rlvect_2(k23_rlvect_2(A),B),k1_rlvect_2(k23_rlvect_2(A),C)) = k17_rlvect_2(A,B,C) ) ) ) ).

fof(dt_m1_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_struct_0(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => m2_fraenkel(B,u1_struct_0(A),k1_numbers,k1_fraenkel(u1_struct_0(A),k1_numbers)) ) ) ).

fof(existence_m1_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_struct_0(A) )
     => ? [B] : m1_rlvect_2(B,A) ) ).

fof(dt_m2_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ! [C] :
          ( m2_rlvect_2(C,A,B)
         => m1_rlvect_2(C,A) ) ) ).

fof(existence_m2_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ? [C] : m2_rlvect_2(C,A,B) ) ).

fof(symmetry_r1_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_rlvect_2(B,A)
        & m1_rlvect_2(C,A) )
     => ( r1_rlvect_2(A,B,C)
       => r1_rlvect_2(A,C,B) ) ) ).

fof(reflexivity_r1_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_rlvect_2(B,A)
        & m1_rlvect_2(C,A) )
     => r1_rlvect_2(A,B,B) ) ).

fof(redefinition_r1_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_rlvect_2(B,A)
        & m1_rlvect_2(C,A) )
     => ( r1_rlvect_2(A,B,C)
      <=> B = C ) ) ).

fof(dt_k1_rlvect_2,axiom,
    ! [A,B] :
      ( l1_struct_0(A)
     => m1_subset_1(k1_rlvect_2(A,B),u1_struct_0(A)) ) ).

fof(dt_k2_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v1_finset_1(k2_rlvect_2(A,B,C))
        & m1_subset_1(k2_rlvect_2(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(commutativity_k2_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k2_rlvect_2(A,B,C) = k2_rlvect_2(A,C,B) ) ).

fof(idempotence_k2_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k2_rlvect_2(A,B,B) = B ) ).

fof(redefinition_k2_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k2_rlvect_2(A,B,C) = k2_xboole_0(B,C) ) ).

fof(dt_k3_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v1_finset_1(k3_rlvect_2(A,B,C))
        & m1_subset_1(k3_rlvect_2(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(commutativity_k3_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k3_rlvect_2(A,B,C) = k3_rlvect_2(A,C,B) ) ).

fof(idempotence_k3_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k3_rlvect_2(A,B,B) = B ) ).

fof(redefinition_k3_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k3_rlvect_2(A,B,C) = k3_xboole_0(B,C) ) ).

fof(dt_k4_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v1_finset_1(k4_rlvect_2(A,B,C))
        & m1_subset_1(k4_rlvect_2(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(redefinition_k4_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k4_rlvect_2(A,B,C) = k4_xboole_0(B,C) ) ).

fof(dt_k5_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v1_finset_1(k5_rlvect_2(A,B,C))
        & m1_subset_1(k5_rlvect_2(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(commutativity_k5_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k5_rlvect_2(A,B,C) = k5_rlvect_2(A,C,B) ) ).

fof(redefinition_k5_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A))) )
     => k5_rlvect_2(A,B,C) = k5_xboole_0(B,C) ) ).

fof(dt_k6_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & v1_finset_1(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k6_rlvect_2(A,B),u1_struct_0(A)) ) ).

fof(dt_k7_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( v1_finset_1(k7_rlvect_2(A,B))
        & m1_subset_1(k7_rlvect_2(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(redefinition_k7_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => k7_rlvect_2(A,B) = k1_tarski(B) ) ).

fof(dt_k8_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => ( v1_finset_1(k8_rlvect_2(A,B,C))
        & m1_subset_1(k8_rlvect_2(A,B,C),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(commutativity_k8_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k8_rlvect_2(A,B,C) = k8_rlvect_2(A,C,B) ) ).

fof(redefinition_k8_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => k8_rlvect_2(A,B,C) = k2_tarski(B,C) ) ).

fof(dt_k9_rlvect_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(A)) )
     => ( v1_finset_1(k9_rlvect_2(A,B,C,D))
        & m1_subset_1(k9_rlvect_2(A,B,C,D),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(redefinition_k9_rlvect_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(A)) )
     => k9_rlvect_2(A,B,C,D) = k1_enumset1(B,C,D) ) ).

fof(dt_k10_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_rlvect_2(B,A) )
     => ( v1_finset_1(k10_rlvect_2(A,B))
        & m1_subset_1(k10_rlvect_2(A,B),k1_zfmisc_1(u1_struct_0(A))) ) ) ).

fof(dt_k11_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => m1_rlvect_2(k11_rlvect_2(A),A) ) ).

fof(dt_k12_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_finseq_1(B,u1_struct_0(A))
        & v1_funct_1(C)
        & v1_funct_2(C,u1_struct_0(A),k1_numbers)
        & m1_relset_1(C,u1_struct_0(A),k1_numbers) )
     => m2_finseq_1(k12_rlvect_2(A,B,C),u1_struct_0(A)) ) ).

fof(dt_k13_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_rlvect_2(B,A) )
     => m1_subset_1(k13_rlvect_2(A,B),u1_struct_0(A)) ) ).

fof(dt_k14_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A)
        & m1_rlvect_2(B,A)
        & m1_rlvect_2(C,A) )
     => m1_rlvect_2(k14_rlvect_2(A,B,C),A) ) ).

fof(dt_k15_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_subset_1(B,k1_numbers)
        & m1_rlvect_2(C,A) )
     => m1_rlvect_2(k15_rlvect_2(A,B,C),A) ) ).

fof(dt_k16_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_rlvect_2(B,A) )
     => m1_rlvect_2(k16_rlvect_2(A,B),A) ) ).

fof(dt_k17_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_rlvect_2(B,A)
        & m1_rlvect_2(C,A) )
     => m1_rlvect_2(k17_rlvect_2(A,B,C),A) ) ).

fof(dt_k18_rlvect_2,axiom,
    $true ).

fof(dt_k19_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_subset_1(B,k18_rlvect_2(A)) )
     => m1_rlvect_2(k19_rlvect_2(A,B),A) ) ).

fof(dt_k20_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_rlvect_2(B,A) )
     => m1_subset_1(k20_rlvect_2(A,B),k18_rlvect_2(A)) ) ).

fof(dt_k21_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ( v1_funct_1(k21_rlvect_2(A))
        & v1_funct_2(k21_rlvect_2(A),k2_zfmisc_1(k18_rlvect_2(A),k18_rlvect_2(A)),k18_rlvect_2(A))
        & m2_relset_1(k21_rlvect_2(A),k2_zfmisc_1(k18_rlvect_2(A),k18_rlvect_2(A)),k18_rlvect_2(A)) ) ) ).

fof(dt_k22_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ( v1_funct_1(k22_rlvect_2(A))
        & v1_funct_2(k22_rlvect_2(A),k2_zfmisc_1(k1_numbers,k18_rlvect_2(A)),k18_rlvect_2(A))
        & m2_relset_1(k22_rlvect_2(A),k2_zfmisc_1(k1_numbers,k18_rlvect_2(A)),k18_rlvect_2(A)) ) ) ).

fof(dt_k23_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ( ~ v3_struct_0(k23_rlvect_2(A))
        & v3_rlvect_1(k23_rlvect_2(A))
        & v4_rlvect_1(k23_rlvect_2(A))
        & v5_rlvect_1(k23_rlvect_2(A))
        & v6_rlvect_1(k23_rlvect_2(A))
        & v7_rlvect_1(k23_rlvect_2(A))
        & l2_rlvect_1(k23_rlvect_2(A)) ) ) ).

fof(dt_k24_rlvect_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v2_rlvect_1(k24_rlvect_2(A,B))
        & m1_rlsub_1(k24_rlvect_2(A,B),k23_rlvect_2(A)) ) ) ).

fof(d6_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_rlvect_2(B,A)
         => k10_rlvect_2(A,B) = a_2_0_rlvect_2(A,B) ) ) ).

fof(d22_rlvect_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_rlvect_1(A)
        & l2_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( ( v2_rlvect_1(C)
                & m1_rlsub_1(C,k23_rlvect_2(A)) )
             => ( C = k24_rlvect_2(A,B)
              <=> u1_struct_0(C) = a_2_1_rlvect_2(A,B) ) ) ) ) ).

fof(fraenkel_a_2_0_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(B)
        & l1_rlvect_1(B)
        & m1_rlvect_2(C,B) )
     => ( r2_hidden(A,a_2_0_rlvect_2(B,C))
      <=> ? [D] :
            ( m1_subset_1(D,u1_struct_0(B))
            & A = D
            & k8_funct_2(u1_struct_0(B),k1_numbers,C,D) != np__0 ) ) ) ).

fof(fraenkel_a_2_1_rlvect_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v7_rlvect_1(B)
        & l2_rlvect_1(B)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( r2_hidden(A,a_2_1_rlvect_2(B,C))
      <=> ? [D] :
            ( m2_rlvect_2(D,B,C)
            & A = D ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+241 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Rings and Left-, Right-, and Bi-Modules over a Ring
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : vectsp_2 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  154 (  68 unt;   0 def)
%            Number of atoms       : 1283 ( 127 equ)
%            Maximal formula atoms :   40 (   8 avg)
%            Number of connectives : 1300 ( 171   ~;   1   |; 931   &)
%                                         (   8 <=>; 189  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   28 (   8 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   41 (  39 usr;   1 prp; 0-3 aty)
%            Number of functors    :   35 (  35 usr;   4 con; 0-7 aty)
%            Number of variables   :  243 ( 223   !;  20   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(cc1_vectsp_2,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => ( ( ~ v3_struct_0(A)
          & v1_vectsp_2(A) )
       => ( ~ v3_struct_0(A)
          & v2_group_1(A)
          & v6_vectsp_1(A)
          & v8_vectsp_1(A) ) ) ) ).

fof(rc1_vectsp_2,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v3_vectsp_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A) ) ).

fof(rc2_vectsp_2,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v3_vectsp_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A) ) ).

fof(rc3_vectsp_2,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v7_group_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A) ) ).

fof(rc4_vectsp_2,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v7_group_1(A)
      & v3_vectsp_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A) ) ).

fof(rc5_vectsp_2,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v7_group_1(A)
      & v3_vectsp_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A)
      & ~ v10_vectsp_1(A)
      & v2_vectsp_2(A) ) ).

fof(rc6_vectsp_2,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A)
      & v9_vectsp_1(A)
      & ~ v10_vectsp_1(A) ) ).

fof(rc7_vectsp_2,axiom,
    ? [A] :
      ( l3_vectsp_1(A)
      & ~ v3_struct_0(A)
      & v3_rlvect_1(A)
      & v4_rlvect_1(A)
      & v5_rlvect_1(A)
      & v6_rlvect_1(A)
      & v2_group_1(A)
      & v4_group_1(A)
      & v3_vectsp_1(A)
      & v4_vectsp_1(A)
      & v5_vectsp_1(A)
      & v6_vectsp_1(A)
      & v7_vectsp_1(A)
      & v8_vectsp_1(A)
      & v9_vectsp_1(A)
      & ~ v10_vectsp_1(A) ) ).

fof(cc2_vectsp_2,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => ( ( ~ v3_struct_0(A)
          & v7_group_1(A)
          & v8_vectsp_1(A) )
       => ( ~ v3_struct_0(A)
          & v2_group_1(A)
          & v6_vectsp_1(A)
          & v8_vectsp_1(A) ) ) ) ).

fof(cc3_vectsp_2,axiom,
    ! [A] :
      ( l1_vectsp_1(A)
     => ( ( ~ v3_struct_0(A)
          & v7_group_1(A)
          & v6_vectsp_1(A) )
       => ( ~ v3_struct_0(A)
          & v2_group_1(A)
          & v6_vectsp_1(A)
          & v8_vectsp_1(A) ) ) ) ).

fof(rc8_vectsp_2,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] :
          ( l1_vectsp_2(B,A)
          & v3_vectsp_2(B,A) ) ) ).

fof(rc9_vectsp_2,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] :
          ( l1_vectsp_2(B,A)
          & ~ v3_struct_0(B) ) ) ).

fof(fc1_vectsp_2,axiom,
    ! [A,B,C,D,E] :
      ( ( l1_struct_0(A)
        & ~ v1_xboole_0(B)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(B,B),B)
        & m1_relset_1(C,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,B)
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(B,u1_struct_0(A)),B)
        & m1_relset_1(E,k2_zfmisc_1(B,u1_struct_0(A)),B) )
     => ( ~ v3_struct_0(g1_vectsp_2(A,B,C,D,E))
        & v3_vectsp_2(g1_vectsp_2(A,B,C,D,E),A) ) ) ).

fof(rc10_vectsp_2,axiom,
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B) )
     => ? [C] :
          ( l2_vectsp_2(C,A,B)
          & v4_vectsp_2(C,A,B) ) ) ).

fof(rc11_vectsp_2,axiom,
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B) )
     => ? [C] :
          ( l2_vectsp_2(C,A,B)
          & ~ v3_struct_0(C) ) ) ).

fof(fc2_vectsp_2,axiom,
    ! [A,B,C,D,E,F,G] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B)
        & ~ v1_xboole_0(C)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(C,C),C)
        & m1_relset_1(D,k2_zfmisc_1(C,C),C)
        & m1_subset_1(E,C)
        & v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(u1_struct_0(A),C),C)
        & m1_relset_1(F,k2_zfmisc_1(u1_struct_0(A),C),C)
        & v1_funct_1(G)
        & v1_funct_2(G,k2_zfmisc_1(C,u1_struct_0(B)),C)
        & m1_relset_1(G,k2_zfmisc_1(C,u1_struct_0(B)),C) )
     => ( ~ v3_struct_0(g2_vectsp_2(A,B,C,D,E,F,G))
        & v4_vectsp_2(g2_vectsp_2(A,B,C,D,E,F,G),A,B) ) ) ).

fof(rc12_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ? [B] :
          ( l4_vectsp_1(B,A)
          & ~ v3_struct_0(B)
          & v3_rlvect_1(B)
          & v4_rlvect_1(B)
          & v5_rlvect_1(B)
          & v6_rlvect_1(B)
          & v11_vectsp_1(B,A) ) ) ).

fof(rc13_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ? [B] :
          ( l1_vectsp_2(B,A)
          & ~ v3_struct_0(B)
          & v3_rlvect_1(B)
          & v4_rlvect_1(B)
          & v5_rlvect_1(B)
          & v6_rlvect_1(B)
          & v3_vectsp_2(B,A) ) ) ).

fof(rc14_vectsp_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B) )
     => ? [C] :
          ( l2_vectsp_2(C,A,B)
          & ~ v3_struct_0(C)
          & v3_rlvect_1(C)
          & v4_rlvect_1(C)
          & v5_rlvect_1(C)
          & v6_rlvect_1(C)
          & v4_vectsp_2(C,A,B) ) ) ).

fof(rc15_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ? [B] :
          ( l4_vectsp_1(B,A)
          & ~ v3_struct_0(B)
          & v3_rlvect_1(B)
          & v4_rlvect_1(B)
          & v5_rlvect_1(B)
          & v6_rlvect_1(B)
          & v11_vectsp_1(B,A)
          & v12_vectsp_1(B,A) ) ) ).

fof(fc3_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ( ~ v3_struct_0(k4_vectsp_2(A))
        & v3_rlvect_1(k4_vectsp_2(A))
        & v4_rlvect_1(k4_vectsp_2(A))
        & v5_rlvect_1(k4_vectsp_2(A))
        & v6_rlvect_1(k4_vectsp_2(A))
        & v11_vectsp_1(k4_vectsp_2(A),A)
        & v12_vectsp_1(k4_vectsp_2(A),A) ) ) ).

fof(rc16_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ? [B] :
          ( l1_vectsp_2(B,A)
          & ~ v3_struct_0(B)
          & v3_rlvect_1(B)
          & v4_rlvect_1(B)
          & v5_rlvect_1(B)
          & v6_rlvect_1(B)
          & v3_vectsp_2(B,A)
          & v5_vectsp_2(B,A) ) ) ).

fof(fc4_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ( ~ v3_struct_0(k5_vectsp_2(A))
        & v3_rlvect_1(k5_vectsp_2(A))
        & v4_rlvect_1(k5_vectsp_2(A))
        & v5_rlvect_1(k5_vectsp_2(A))
        & v6_rlvect_1(k5_vectsp_2(A))
        & v3_vectsp_2(k5_vectsp_2(A),A)
        & v5_vectsp_2(k5_vectsp_2(A),A) ) ) ).

fof(rc17_vectsp_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B) )
     => ? [C] :
          ( l2_vectsp_2(C,A,B)
          & ~ v3_struct_0(C)
          & v3_rlvect_1(C)
          & v4_rlvect_1(C)
          & v5_rlvect_1(C)
          & v6_rlvect_1(C)
          & v12_vectsp_1(C,A)
          & v4_vectsp_2(C,A,B)
          & v5_vectsp_2(C,B)
          & v6_vectsp_2(C,A,B) ) ) ).

fof(fc5_vectsp_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B) )
     => ( ~ v3_struct_0(k9_vectsp_2(A,B))
        & v3_rlvect_1(k9_vectsp_2(A,B))
        & v4_rlvect_1(k9_vectsp_2(A,B))
        & v5_rlvect_1(k9_vectsp_2(A,B))
        & v6_rlvect_1(k9_vectsp_2(A,B))
        & v12_vectsp_1(k9_vectsp_2(A,B),A)
        & v4_vectsp_2(k9_vectsp_2(A,B),A,B)
        & v5_vectsp_2(k9_vectsp_2(A,B),B)
        & v6_vectsp_2(k9_vectsp_2(A,B),A,B) ) ) ).

fof(d1_vectsp_2,axiom,
    $true ).

fof(d2_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_vectsp_1(A) )
     => ( v1_vectsp_2(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ( k1_group_1(A,B,k2_vectsp_1(A)) = B
              & k1_group_1(A,k2_vectsp_1(A),B) = B ) ) ) ) ).

fof(t1_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l3_vectsp_1(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ( k2_rlvect_1(A,B,C) = k2_rlvect_1(A,C,B)
                      & k2_rlvect_1(A,k2_rlvect_1(A,B,C),D) = k2_rlvect_1(A,B,k2_rlvect_1(A,C,D))
                      & k2_rlvect_1(A,B,k1_rlvect_1(A)) = B
                      & k2_rlvect_1(A,B,k5_rlvect_1(A,B)) = k1_rlvect_1(A)
                      & k1_group_1(A,B,k2_group_1(A)) = B
                      & k1_group_1(A,k2_group_1(A),B) = B
                      & k1_group_1(A,k1_group_1(A,B,C),D) = k1_group_1(A,B,k1_group_1(A,C,D))
                      & k1_group_1(A,B,k2_rlvect_1(A,C,D)) = k2_rlvect_1(A,k1_group_1(A,B,C),k1_group_1(A,B,D))
                      & k1_group_1(A,k2_rlvect_1(A,C,D),B) = k2_rlvect_1(A,k1_group_1(A,C,B),k1_group_1(A,D,B)) ) ) ) )
      <=> ( ~ v3_struct_0(A)
          & v3_rlvect_1(A)
          & v4_rlvect_1(A)
          & v5_rlvect_1(A)
          & v6_rlvect_1(A)
          & v4_group_1(A)
          & v6_vectsp_1(A)
          & v7_vectsp_1(A)
          & v8_vectsp_1(A)
          & l3_vectsp_1(A) ) ) ) ).

fof(d3_vectsp_2,axiom,
    $true ).

fof(d4_vectsp_2,axiom,
    $true ).

fof(d5_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l2_vectsp_1(A) )
     => ( v2_vectsp_2(A)
      <=> ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ~ ( k1_group_1(A,B,C) = k1_rlvect_1(A)
                    & B != k1_rlvect_1(A)
                    & C != k1_rlvect_1(A) ) ) ) ) ) ).

fof(t2_vectsp_2,axiom,
    $true ).

fof(t3_vectsp_2,axiom,
    $true ).

fof(t4_vectsp_2,axiom,
    $true ).

fof(t5_vectsp_2,axiom,
    $true ).

fof(t6_vectsp_2,axiom,
    $true ).

fof(t7_vectsp_2,axiom,
    $true ).

fof(t8_vectsp_2,axiom,
    $true ).

fof(t9_vectsp_2,axiom,
    $true ).

fof(t10_vectsp_2,axiom,
    $true ).

fof(t11_vectsp_2,axiom,
    $true ).

fof(t12_vectsp_2,axiom,
    $true ).

fof(t13_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & v2_vectsp_2(A)
        & l3_vectsp_1(A) ) ) ).

fof(t14_vectsp_2,axiom,
    $true ).

fof(t15_vectsp_2,axiom,
    $true ).

fof(t16_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ( ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ( ~ ( B != k1_rlvect_1(A)
                  & ! [C] :
                      ( m1_subset_1(C,u1_struct_0(A))
                     => k1_group_1(A,B,C) != k2_group_1(A) ) )
              & k1_rlvect_1(A) != k2_group_1(A) ) )
       => ( ~ v3_struct_0(A)
          & v3_rlvect_1(A)
          & v4_rlvect_1(A)
          & v5_rlvect_1(A)
          & v6_rlvect_1(A)
          & v4_group_1(A)
          & v6_vectsp_1(A)
          & v7_vectsp_1(A)
          & v8_vectsp_1(A)
          & v9_vectsp_1(A)
          & ~ v10_vectsp_1(A)
          & l3_vectsp_1(A) ) ) ) ).

fof(t17_vectsp_2,axiom,
    $true ).

fof(t18_vectsp_2,axiom,
    $true ).

fof(t19_vectsp_2,axiom,
    $true ).

fof(t20_vectsp_2,axiom,
    $true ).

fof(t21_vectsp_2,axiom,
    $true ).

fof(t22_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( ( k4_rlvect_1(A,B,C) = D
                     => B = k6_rlvect_1(A,D,C) )
                    & ( B = k6_rlvect_1(A,D,C)
                     => k4_rlvect_1(A,B,C) = D )
                    & ( k4_rlvect_1(A,B,C) = D
                     => C = k6_rlvect_1(A,D,B) )
                    & ( C = k6_rlvect_1(A,D,B)
                     => k4_rlvect_1(A,B,C) = D ) ) ) ) ) ) ).

fof(t23_vectsp_2,axiom,
    $true ).

fof(t24_vectsp_2,axiom,
    $true ).

fof(t25_vectsp_2,axiom,
    $true ).

fof(t26_vectsp_2,axiom,
    $true ).

fof(t27_vectsp_2,axiom,
    $true ).

fof(t28_vectsp_2,axiom,
    $true ).

fof(t29_vectsp_2,axiom,
    $true ).

fof(t30_vectsp_2,axiom,
    $true ).

fof(t31_vectsp_2,axiom,
    $true ).

fof(t32_vectsp_2,axiom,
    $true ).

fof(t33_vectsp_2,axiom,
    $true ).

fof(t34_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B = k1_rlvect_1(A)
          <=> k5_rlvect_1(A,B) = k1_rlvect_1(A) ) ) ) ).

fof(t35_vectsp_2,axiom,
    $true ).

fof(t36_vectsp_2,axiom,
    $true ).

fof(t37_vectsp_2,axiom,
    $true ).

fof(t38_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ? [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                  & B = k4_rlvect_1(A,C,D)
                  & B = k4_rlvect_1(A,D,C) ) ) ) ) ).

fof(t39_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v7_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k1_group_1(A,B,C) = k2_group_1(A)
               => ( B != k1_rlvect_1(A)
                  & C != k1_rlvect_1(A) ) ) ) ) ) ).

fof(t40_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ~ ( B != k1_rlvect_1(A)
              & ! [C] :
                  ( m1_subset_1(C,u1_struct_0(A))
                 => k1_group_1(A,C,B) != k2_group_1(A) ) ) ) ) ).

fof(t41_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k1_group_1(A,B,C) = k2_group_1(A)
               => k1_group_1(A,C,B) = k2_group_1(A) ) ) ) ) ).

fof(t42_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v2_group_1(A)
        & v4_group_1(A)
        & v7_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( k1_group_1(A,B,C) = k1_group_1(A,B,D)
                   => ( B = k1_rlvect_1(A)
                      | C = D ) ) ) ) ) ) ).

fof(d6_vectsp_2,axiom,
    $true ).

fof(d7_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v2_group_1(A)
        & v4_group_1(A)
        & v7_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ( C = k1_vectsp_2(A,B)
                <=> k1_group_1(A,B,C) = k2_group_1(A) ) ) ) ) ) ).

fof(d8_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k2_vectsp_2(A,B,C) = k1_group_1(A,B,k1_vectsp_2(A,C)) ) ) ) ).

fof(t43_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => ( k1_group_1(A,B,k1_vectsp_2(A,B)) = k2_group_1(A)
              & k1_group_1(A,k1_vectsp_2(A,B),B) = k2_group_1(A) ) ) ) ) ).

fof(t44_vectsp_2,axiom,
    $true ).

fof(t45_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( k1_group_1(A,B,C) = k2_group_1(A)
               => ( B = k1_vectsp_2(A,C)
                  & C = k1_vectsp_2(A,B) ) ) ) ) ) ).

fof(t46_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ~ ( B != k1_rlvect_1(A)
                  & C != k1_rlvect_1(A)
                  & k1_group_1(A,k1_vectsp_2(A,B),k1_vectsp_2(A,C)) != k1_vectsp_2(A,k1_group_1(A,C,B)) ) ) ) ) ).

fof(t47_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ~ ( k1_group_1(A,B,C) = k1_rlvect_1(A)
                  & B != k1_rlvect_1(A)
                  & C != k1_rlvect_1(A) ) ) ) ) ).

fof(t48_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ~ ( B != k1_rlvect_1(A)
              & k1_vectsp_2(A,B) = k1_rlvect_1(A) ) ) ) ).

fof(t49_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => k1_vectsp_2(A,k1_vectsp_2(A,B)) = B ) ) ) ).

fof(t50_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => ( k2_vectsp_2(A,k2_group_1(A),B) = k1_vectsp_2(A,B)
              & k2_vectsp_2(A,k2_group_1(A),k1_vectsp_2(A,B)) = B ) ) ) ) ).

fof(t51_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => ( k1_group_1(A,B,k2_vectsp_2(A,k2_group_1(A),B)) = k2_group_1(A)
              & k1_group_1(A,k2_vectsp_2(A,k2_group_1(A),B),B) = k2_group_1(A) ) ) ) ) ).

fof(t52_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ( B != k1_rlvect_1(A)
           => k2_vectsp_2(A,B,B) = k2_group_1(A) ) ) ) ).

fof(t53_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ~ ( B != k1_rlvect_1(A)
                      & C != k1_rlvect_1(A)
                      & k2_vectsp_2(A,D,B) != k2_vectsp_2(A,k1_group_1(A,D,C),k1_group_1(A,B,C)) ) ) ) ) ) ).

fof(t54_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( B != k1_rlvect_1(A)
               => ( k5_rlvect_1(A,k2_vectsp_2(A,C,B)) = k2_vectsp_2(A,k5_rlvect_1(A,C),B)
                  & k2_vectsp_2(A,C,k5_rlvect_1(A,B)) = k5_rlvect_1(A,k2_vectsp_2(A,C,B)) ) ) ) ) ) ).

fof(t55_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( B != k1_rlvect_1(A)
                   => ( k4_rlvect_1(A,k2_vectsp_2(A,C,B),k2_vectsp_2(A,D,B)) = k2_vectsp_2(A,k4_rlvect_1(A,C,D),B)
                      & k6_rlvect_1(A,k2_vectsp_2(A,C,B),k2_vectsp_2(A,D,B)) = k2_vectsp_2(A,k6_rlvect_1(A,C,D),B) ) ) ) ) ) ) ).

fof(t56_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ~ ( B != k1_rlvect_1(A)
                      & C != k1_rlvect_1(A)
                      & k2_vectsp_2(A,D,k2_vectsp_2(A,B,C)) != k2_vectsp_2(A,k1_group_1(A,D,C),B) ) ) ) ) ) ).

fof(t57_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( B != k1_rlvect_1(A)
               => k1_group_1(A,k2_vectsp_2(A,C,B),B) = C ) ) ) ) ).

fof(d9_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => k3_vectsp_2(A) = g1_rlvect_1(u1_struct_0(A),u1_rlvect_1(A),u2_struct_0(A)) ) ).

fof(d10_vectsp_2,axiom,
    $true ).

fof(d11_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => k4_vectsp_2(A) = g4_vectsp_1(A,u1_struct_0(A),u1_rlvect_1(A),u2_struct_0(A),u1_group_1(A)) ) ).

fof(d12_vectsp_2,axiom,
    $true ).

fof(d13_vectsp_2,axiom,
    $true ).

fof(d14_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => k5_vectsp_2(A) = g1_vectsp_2(A,u1_struct_0(A),u1_rlvect_1(A),u2_struct_0(A),u1_group_1(A)) ) ).

fof(d15_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => k6_vectsp_2(A,B,C,D) = k2_binop_1(u1_struct_0(B),u1_struct_0(A),u1_struct_0(B),u1_vectsp_2(A,B),D,C) ) ) ) ) ).

fof(d16_vectsp_2,axiom,
    $true ).

fof(d17_vectsp_2,axiom,
    ! [A] :
      ( ( v1_funct_1(A)
        & v1_funct_2(A,k1_tarski(k1_xboole_0),k1_tarski(k1_xboole_0))
        & m2_relset_1(A,k1_tarski(k1_xboole_0),k1_tarski(k1_xboole_0)) )
     => A = k7_vectsp_2 ) ).

fof(d18_vectsp_2,axiom,
    ! [A] :
      ( m1_subset_1(A,k1_tarski(k1_xboole_0))
     => A = k8_vectsp_2 ) ).

fof(d19_vectsp_2,axiom,
    $true ).

fof(d20_vectsp_2,axiom,
    $true ).

fof(d21_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v4_group_1(B)
            & v6_vectsp_1(B)
            & v7_vectsp_1(B)
            & v8_vectsp_1(B)
            & l3_vectsp_1(B) )
         => k9_vectsp_2(A,B) = g2_vectsp_2(A,B,k1_tarski(k1_xboole_0),k2_midsp_1,k8_vectsp_2,k10_funct_3(u1_struct_0(A),k1_tarski(k1_xboole_0)),k9_funct_3(k1_tarski(k1_xboole_0),u1_struct_0(B))) ) ) ).

fof(t58_vectsp_2,axiom,
    $true ).

fof(t59_vectsp_2,axiom,
    $true ).

fof(t60_vectsp_2,axiom,
    $true ).

fof(t61_vectsp_2,axiom,
    $true ).

fof(t62_vectsp_2,axiom,
    $true ).

fof(t63_vectsp_2,axiom,
    $true ).

fof(t64_vectsp_2,axiom,
    $true ).

fof(t65_vectsp_2,axiom,
    $true ).

fof(t66_vectsp_2,axiom,
    $true ).

fof(t67_vectsp_2,axiom,
    $true ).

fof(t68_vectsp_2,axiom,
    $true ).

fof(t69_vectsp_2,axiom,
    $true ).

fof(t70_vectsp_2,axiom,
    $true ).

fof(t71_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(k4_vectsp_2(A)))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(k4_vectsp_2(A)))
                     => ( k6_vectsp_1(A,k4_vectsp_2(A),B,k4_rlvect_1(k4_vectsp_2(A),D,E)) = k4_rlvect_1(k4_vectsp_2(A),k6_vectsp_1(A,k4_vectsp_2(A),B,D),k6_vectsp_1(A,k4_vectsp_2(A),B,E))
                        & k6_vectsp_1(A,k4_vectsp_2(A),k4_rlvect_1(A,B,C),D) = k4_rlvect_1(k4_vectsp_2(A),k6_vectsp_1(A,k4_vectsp_2(A),B,D),k6_vectsp_1(A,k4_vectsp_2(A),C,D))
                        & k6_vectsp_1(A,k4_vectsp_2(A),k1_group_1(A,B,C),D) = k6_vectsp_1(A,k4_vectsp_2(A),B,k6_vectsp_1(A,k4_vectsp_2(A),C,D))
                        & k6_vectsp_1(A,k4_vectsp_2(A),k2_group_1(A),D) = D ) ) ) ) ) ) ).

fof(t72_vectsp_2,axiom,
    $true ).

fof(t73_vectsp_2,axiom,
    $true ).

fof(t74_vectsp_2,axiom,
    $true ).

fof(t75_vectsp_2,axiom,
    $true ).

fof(t76_vectsp_2,axiom,
    $true ).

fof(t77_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(k5_vectsp_2(A)))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(k5_vectsp_2(A)))
                     => ( k6_vectsp_2(A,k5_vectsp_2(A),B,k4_rlvect_1(k5_vectsp_2(A),D,E)) = k4_rlvect_1(k5_vectsp_2(A),k6_vectsp_2(A,k5_vectsp_2(A),B,D),k6_vectsp_2(A,k5_vectsp_2(A),B,E))
                        & k6_vectsp_2(A,k5_vectsp_2(A),k4_rlvect_1(A,B,C),D) = k4_rlvect_1(k5_vectsp_2(A),k6_vectsp_2(A,k5_vectsp_2(A),B,D),k6_vectsp_2(A,k5_vectsp_2(A),C,D))
                        & k6_vectsp_2(A,k5_vectsp_2(A),k1_group_1(A,C,B),D) = k6_vectsp_2(A,k5_vectsp_2(A),B,k6_vectsp_2(A,k5_vectsp_2(A),C,D))
                        & k6_vectsp_2(A,k5_vectsp_2(A),k2_group_1(A),D) = D ) ) ) ) ) ) ).

fof(d22_vectsp_2,axiom,
    $true ).

fof(d23_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & l1_vectsp_2(B,A) )
         => ( v5_vectsp_2(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,u1_struct_0(A))
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ! [F] :
                            ( m1_subset_1(F,u1_struct_0(B))
                           => ( k6_vectsp_2(A,B,C,k2_rlvect_1(B,E,F)) = k2_rlvect_1(B,k6_vectsp_2(A,B,C,E),k6_vectsp_2(A,B,C,F))
                              & k6_vectsp_2(A,B,k2_rlvect_1(A,C,D),E) = k2_rlvect_1(B,k6_vectsp_2(A,B,C,E),k6_vectsp_2(A,B,D,E))
                              & k6_vectsp_2(A,B,k1_group_1(A,D,C),E) = k6_vectsp_2(A,B,C,k6_vectsp_2(A,B,D,E))
                              & k6_vectsp_2(A,B,k2_group_1(A),E) = E ) ) ) ) ) ) ) ) ).

fof(d24_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v4_group_1(B)
            & v6_vectsp_1(B)
            & v7_vectsp_1(B)
            & v8_vectsp_1(B)
            & l3_vectsp_1(B) )
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & l2_vectsp_2(C,A,B) )
             => ( v6_vectsp_2(C,A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ! [F] :
                            ( m1_subset_1(F,u1_struct_0(C))
                           => k6_vectsp_1(A,C,D,k6_vectsp_2(B,C,E,F)) = k6_vectsp_2(B,C,E,k6_vectsp_1(A,C,D,F)) ) ) ) ) ) ) ) ).

fof(t78_vectsp_2,axiom,
    $true ).

fof(t79_vectsp_2,axiom,
    $true ).

fof(t80_vectsp_2,axiom,
    $true ).

fof(t81_vectsp_2,axiom,
    $true ).

fof(t82_vectsp_2,axiom,
    $true ).

fof(t83_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v4_group_1(B)
            & v6_vectsp_1(B)
            & v7_vectsp_1(B)
            & v8_vectsp_1(B)
            & l3_vectsp_1(B) )
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & l2_vectsp_2(C,A,B) )
             => ( ! [D] :
                    ( m1_subset_1(D,u1_struct_0(A))
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(A))
                       => ! [F] :
                            ( m1_subset_1(F,u1_struct_0(B))
                           => ! [G] :
                                ( m1_subset_1(G,u1_struct_0(B))
                               => ! [H] :
                                    ( m1_subset_1(H,u1_struct_0(C))
                                   => ! [I] :
                                        ( m1_subset_1(I,u1_struct_0(C))
                                       => ( k6_vectsp_1(A,C,D,k2_rlvect_1(C,H,I)) = k2_rlvect_1(C,k6_vectsp_1(A,C,D,H),k6_vectsp_1(A,C,D,I))
                                          & k6_vectsp_1(A,C,k4_rlvect_1(A,D,E),H) = k2_rlvect_1(C,k6_vectsp_1(A,C,D,H),k6_vectsp_1(A,C,E,H))
                                          & k6_vectsp_1(A,C,k1_group_1(A,D,E),H) = k6_vectsp_1(A,C,D,k6_vectsp_1(A,C,E,H))
                                          & k6_vectsp_1(A,C,k2_group_1(A),H) = H
                                          & k6_vectsp_2(B,C,F,k2_rlvect_1(C,H,I)) = k2_rlvect_1(C,k6_vectsp_2(B,C,F,H),k6_vectsp_2(B,C,F,I))
                                          & k6_vectsp_2(B,C,k4_rlvect_1(B,F,G),H) = k2_rlvect_1(C,k6_vectsp_2(B,C,F,H),k6_vectsp_2(B,C,G,H))
                                          & k6_vectsp_2(B,C,k1_group_1(B,G,F),H) = k6_vectsp_2(B,C,F,k6_vectsp_2(B,C,G,H))
                                          & k6_vectsp_2(B,C,k2_group_1(B),H) = H
                                          & k6_vectsp_1(A,C,D,k6_vectsp_2(B,C,F,H)) = k6_vectsp_2(B,C,F,k6_vectsp_1(A,C,D,H)) ) ) ) ) ) ) )
              <=> ( v5_vectsp_2(C,B)
                  & v12_vectsp_1(C,A)
                  & v6_vectsp_2(C,A,B) ) ) ) ) ) ).

fof(t84_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v4_group_1(B)
            & v6_vectsp_1(B)
            & v7_vectsp_1(B)
            & v8_vectsp_1(B)
            & l3_vectsp_1(B) )
         => ( ~ v3_struct_0(k9_vectsp_2(A,B))
            & v3_rlvect_1(k9_vectsp_2(A,B))
            & v4_rlvect_1(k9_vectsp_2(A,B))
            & v5_rlvect_1(k9_vectsp_2(A,B))
            & v6_rlvect_1(k9_vectsp_2(A,B))
            & v12_vectsp_1(k9_vectsp_2(A,B),A)
            & v5_vectsp_2(k9_vectsp_2(A,B),B)
            & v6_vectsp_2(k9_vectsp_2(A,B),A,B)
            & l2_vectsp_2(k9_vectsp_2(A,B),A,B) ) ) ) ).

fof(t85_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_vectsp_1(A) )
     => ( v1_vectsp_2(A)
       => k2_vectsp_1(A) = k2_group_1(A) ) ) ).

fof(dt_l1_vectsp_2,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ! [B] :
          ( l1_vectsp_2(B,A)
         => l1_rlvect_1(B) ) ) ).

fof(existence_l1_vectsp_2,axiom,
    ! [A] :
      ( l1_struct_0(A)
     => ? [B] : l1_vectsp_2(B,A) ) ).

fof(dt_l2_vectsp_2,axiom,
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B) )
     => ! [C] :
          ( l2_vectsp_2(C,A,B)
         => ( l4_vectsp_1(C,A)
            & l1_vectsp_2(C,B) ) ) ) ).

fof(existence_l2_vectsp_2,axiom,
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B) )
     => ? [C] : l2_vectsp_2(C,A,B) ) ).

fof(abstractness_v3_vectsp_2,axiom,
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_vectsp_2(B,A) )
     => ( v3_vectsp_2(B,A)
       => B = g1_vectsp_2(A,u1_struct_0(B),u1_rlvect_1(B),u2_struct_0(B),u1_vectsp_2(A,B)) ) ) ).

fof(abstractness_v4_vectsp_2,axiom,
    ! [A,B,C] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B)
        & l2_vectsp_2(C,A,B) )
     => ( v4_vectsp_2(C,A,B)
       => C = g2_vectsp_2(A,B,u1_struct_0(C),u1_rlvect_1(C),u2_struct_0(C),u2_vectsp_1(B,C),u1_vectsp_2(B,C)) ) ) ).

fof(dt_k1_vectsp_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v2_group_1(A)
        & v4_group_1(A)
        & v7_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k1_vectsp_2(A,B),u1_struct_0(A)) ) ).

fof(dt_k2_vectsp_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A)
        & m1_subset_1(B,u1_struct_0(A))
        & m1_subset_1(C,u1_struct_0(A)) )
     => m1_subset_1(k2_vectsp_2(A,B,C),u1_struct_0(A)) ) ).

fof(dt_k3_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & l1_rlvect_1(A) )
     => ( ~ v3_struct_0(k3_vectsp_2(A))
        & v1_rlvect_1(k3_vectsp_2(A))
        & v3_rlvect_1(k3_vectsp_2(A))
        & v4_rlvect_1(k3_vectsp_2(A))
        & v5_rlvect_1(k3_vectsp_2(A))
        & v6_rlvect_1(k3_vectsp_2(A))
        & l1_rlvect_1(k3_vectsp_2(A)) ) ) ).

fof(dt_k4_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ( ~ v3_struct_0(k4_vectsp_2(A))
        & v3_rlvect_1(k4_vectsp_2(A))
        & v4_rlvect_1(k4_vectsp_2(A))
        & v5_rlvect_1(k4_vectsp_2(A))
        & v6_rlvect_1(k4_vectsp_2(A))
        & v11_vectsp_1(k4_vectsp_2(A),A)
        & l4_vectsp_1(k4_vectsp_2(A),A) ) ) ).

fof(dt_k5_vectsp_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ( ~ v3_struct_0(k5_vectsp_2(A))
        & v3_rlvect_1(k5_vectsp_2(A))
        & v4_rlvect_1(k5_vectsp_2(A))
        & v5_rlvect_1(k5_vectsp_2(A))
        & v6_rlvect_1(k5_vectsp_2(A))
        & v3_vectsp_2(k5_vectsp_2(A),A)
        & l1_vectsp_2(k5_vectsp_2(A),A) ) ) ).

fof(dt_k6_vectsp_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & ~ v3_struct_0(B)
        & l1_vectsp_2(B,A)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_subset_1(D,u1_struct_0(B)) )
     => m1_subset_1(k6_vectsp_2(A,B,C,D),u1_struct_0(B)) ) ).

fof(dt_k7_vectsp_2,axiom,
    ( v1_funct_1(k7_vectsp_2)
    & v1_funct_2(k7_vectsp_2,k1_tarski(k1_xboole_0),k1_tarski(k1_xboole_0))
    & m2_relset_1(k7_vectsp_2,k1_tarski(k1_xboole_0),k1_tarski(k1_xboole_0)) ) ).

fof(dt_k8_vectsp_2,axiom,
    m1_subset_1(k8_vectsp_2,k1_tarski(k1_xboole_0)) ).

fof(dt_k9_vectsp_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B) )
     => ( ~ v3_struct_0(k9_vectsp_2(A,B))
        & v3_rlvect_1(k9_vectsp_2(A,B))
        & v4_rlvect_1(k9_vectsp_2(A,B))
        & v5_rlvect_1(k9_vectsp_2(A,B))
        & v6_rlvect_1(k9_vectsp_2(A,B))
        & v4_vectsp_2(k9_vectsp_2(A,B),A,B)
        & l2_vectsp_2(k9_vectsp_2(A,B),A,B) ) ) ).

fof(dt_u1_vectsp_2,axiom,
    ! [A,B] :
      ( ( l1_struct_0(A)
        & l1_vectsp_2(B,A) )
     => ( v1_funct_1(u1_vectsp_2(A,B))
        & v1_funct_2(u1_vectsp_2(A,B),k2_zfmisc_1(u1_struct_0(B),u1_struct_0(A)),u1_struct_0(B))
        & m2_relset_1(u1_vectsp_2(A,B),k2_zfmisc_1(u1_struct_0(B),u1_struct_0(A)),u1_struct_0(B)) ) ) ).

fof(dt_g1_vectsp_2,axiom,
    ! [A,B,C,D,E] :
      ( ( l1_struct_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(B,B),B)
        & m1_relset_1(C,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,B)
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(B,u1_struct_0(A)),B)
        & m1_relset_1(E,k2_zfmisc_1(B,u1_struct_0(A)),B) )
     => ( v3_vectsp_2(g1_vectsp_2(A,B,C,D,E),A)
        & l1_vectsp_2(g1_vectsp_2(A,B,C,D,E),A) ) ) ).

fof(free_g1_vectsp_2,axiom,
    ! [A,B,C,D,E] :
      ( ( l1_struct_0(A)
        & v1_funct_1(C)
        & v1_funct_2(C,k2_zfmisc_1(B,B),B)
        & m1_relset_1(C,k2_zfmisc_1(B,B),B)
        & m1_subset_1(D,B)
        & v1_funct_1(E)
        & v1_funct_2(E,k2_zfmisc_1(B,u1_struct_0(A)),B)
        & m1_relset_1(E,k2_zfmisc_1(B,u1_struct_0(A)),B) )
     => ! [F,G,H,I,J] :
          ( g1_vectsp_2(A,B,C,D,E) = g1_vectsp_2(F,G,H,I,J)
         => ( A = F
            & B = G
            & C = H
            & D = I
            & E = J ) ) ) ).

fof(dt_g2_vectsp_2,axiom,
    ! [A,B,C,D,E,F,G] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(C,C),C)
        & m1_relset_1(D,k2_zfmisc_1(C,C),C)
        & m1_subset_1(E,C)
        & v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(u1_struct_0(A),C),C)
        & m1_relset_1(F,k2_zfmisc_1(u1_struct_0(A),C),C)
        & v1_funct_1(G)
        & v1_funct_2(G,k2_zfmisc_1(C,u1_struct_0(B)),C)
        & m1_relset_1(G,k2_zfmisc_1(C,u1_struct_0(B)),C) )
     => ( v4_vectsp_2(g2_vectsp_2(A,B,C,D,E,F,G),A,B)
        & l2_vectsp_2(g2_vectsp_2(A,B,C,D,E,F,G),A,B) ) ) ).

fof(free_g2_vectsp_2,axiom,
    ! [A,B,C,D,E,F,G] :
      ( ( l1_struct_0(A)
        & l1_struct_0(B)
        & v1_funct_1(D)
        & v1_funct_2(D,k2_zfmisc_1(C,C),C)
        & m1_relset_1(D,k2_zfmisc_1(C,C),C)
        & m1_subset_1(E,C)
        & v1_funct_1(F)
        & v1_funct_2(F,k2_zfmisc_1(u1_struct_0(A),C),C)
        & m1_relset_1(F,k2_zfmisc_1(u1_struct_0(A),C),C)
        & v1_funct_1(G)
        & v1_funct_2(G,k2_zfmisc_1(C,u1_struct_0(B)),C)
        & m1_relset_1(G,k2_zfmisc_1(C,u1_struct_0(B)),C) )
     => ! [H,I,J,K,L,M,N] :
          ( g2_vectsp_2(A,B,C,D,E,F,G) = g2_vectsp_2(H,I,J,K,L,M,N)
         => ( A = H
            & B = I
            & C = J
            & D = K
            & E = L
            & F = M
            & G = N ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+276 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Groups, Rings, Left- and Right-Modules
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : mod_1 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   43 (  33 unt;   0 def)
%            Number of atoms       :  222 (  19 equ)
%            Maximal formula atoms :   23 (   5 avg)
%            Number of connectives :  203 (  24   ~;   2   |; 135   &)
%                                         (   2 <=>;  40  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   4 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   21 (  19 usr;   1 prp; 0-2 aty)
%            Number of functors    :   10 (  10 usr;   0 con; 1-4 aty)
%            Number of variables   :   38 (  38   !;   0   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(t1_mod_1,axiom,
    $true ).

fof(t2_mod_1,axiom,
    $true ).

fof(t3_mod_1,axiom,
    $true ).

fof(t4_mod_1,axiom,
    $true ).

fof(t5_mod_1,axiom,
    $true ).

fof(t6_mod_1,axiom,
    $true ).

fof(t7_mod_1,axiom,
    $true ).

fof(t8_mod_1,axiom,
    $true ).

fof(t9_mod_1,axiom,
    $true ).

fof(t10_mod_1,axiom,
    $true ).

fof(t11_mod_1,axiom,
    $true ).

fof(t12_mod_1,axiom,
    $true ).

fof(t13_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_vectsp_1(A)
        & v6_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k1_group_1(A,B,k5_rlvect_1(A,k2_group_1(A))) = k5_rlvect_1(A,B) ) ) ).

fof(t14_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v5_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k1_group_1(A,k5_rlvect_1(A,k2_group_1(A)),B) = k5_rlvect_1(A,B) ) ) ).

fof(t15_mod_1,axiom,
    $true ).

fof(t16_mod_1,axiom,
    $true ).

fof(t17_mod_1,axiom,
    $true ).

fof(t18_mod_1,axiom,
    $true ).

fof(t19_mod_1,axiom,
    $true ).

fof(t20_mod_1,axiom,
    $true ).

fof(t21_mod_1,axiom,
    $true ).

fof(t22_mod_1,axiom,
    $true ).

fof(t23_mod_1,axiom,
    $true ).

fof(t24_mod_1,axiom,
    $true ).

fof(t25_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v12_vectsp_1(C,A)
                & l4_vectsp_1(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( k6_vectsp_1(A,C,B,D) = k1_rlvect_1(C)
                  <=> ( B = k1_rlvect_1(A)
                      | D = k1_rlvect_1(C) ) ) ) ) ) ) ).

fof(t26_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v12_vectsp_1(C,A)
                & l4_vectsp_1(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( B != k1_rlvect_1(A)
                   => k6_vectsp_1(A,C,k1_vectsp_2(A,B),k6_vectsp_1(A,C,B,D)) = D ) ) ) ) ) ).

fof(t27_mod_1,axiom,
    $true ).

fof(t28_mod_1,axiom,
    $true ).

fof(t29_mod_1,axiom,
    $true ).

fof(t30_mod_1,axiom,
    $true ).

fof(t31_mod_1,axiom,
    $true ).

fof(t32_mod_1,axiom,
    $true ).

fof(t33_mod_1,axiom,
    $true ).

fof(t34_mod_1,axiom,
    $true ).

fof(t35_mod_1,axiom,
    $true ).

fof(t36_mod_1,axiom,
    $true ).

fof(t37_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( k6_vectsp_2(A,B,k1_rlvect_1(A),D) = k1_rlvect_1(B)
                    & k6_vectsp_2(A,B,k5_rlvect_1(A,k2_group_1(A)),D) = k5_rlvect_1(B,D)
                    & k6_vectsp_2(A,B,C,k1_rlvect_1(B)) = k1_rlvect_1(B) ) ) ) ) ) ).

fof(t38_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ( k5_rlvect_1(B,k6_vectsp_2(A,B,C,D)) = k6_vectsp_2(A,B,k5_rlvect_1(A,C),D)
                        & k6_rlvect_1(B,E,k6_vectsp_2(A,B,C,D)) = k2_rlvect_1(B,E,k6_vectsp_2(A,B,k5_rlvect_1(A,C),D)) ) ) ) ) ) ) ).

fof(t39_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => k6_vectsp_2(A,B,C,k5_rlvect_1(B,D)) = k5_rlvect_1(B,k6_vectsp_2(A,B,C,D)) ) ) ) ) ).

fof(t40_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => k6_vectsp_2(A,B,C,k6_rlvect_1(B,D,E)) = k6_rlvect_1(B,k6_vectsp_2(A,B,C,D),k6_vectsp_2(A,B,C,E)) ) ) ) ) ) ).

fof(t41_mod_1,axiom,
    $true ).

fof(t42_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( k6_vectsp_2(A,C,B,D) = k1_rlvect_1(C)
                  <=> ( B = k1_rlvect_1(A)
                      | D = k1_rlvect_1(C) ) ) ) ) ) ) ).

fof(t43_mod_1,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & v9_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ( B != k1_rlvect_1(A)
                   => k6_vectsp_2(A,C,k1_vectsp_2(A,B),k6_vectsp_2(A,C,B,D)) = D ) ) ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+278 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Submodules and Cosets of Submodules
% Version  : [Urb08] axioms.
% English  : Submodules and Cosets of Submodules in Right Module over
%            Associative Ring,

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : rmod_2 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  110 (  16 unt;   0 def)
%            Number of atoms       : 2072 (  68 equ)
%            Maximal formula atoms :   34 (  18 avg)
%            Number of connectives : 2169 ( 207   ~;   1   |;1533   &)
%                                         (  24 <=>; 404  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (  12 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   22 (  20 usr;   1 prp; 0-4 aty)
%            Number of functors    :   21 (  21 usr;   1 con; 0-5 aty)
%            Number of variables   :  402 ( 390   !;  12   ?)
% SPC      : 

% Comments :  The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(rc1_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ? [C] :
          ( m1_rmod_2(C,A,B)
          & ~ v3_struct_0(C)
          & v3_rlvect_1(C)
          & v4_rlvect_1(C)
          & v5_rlvect_1(C)
          & v6_rlvect_1(C)
          & v3_vectsp_2(C,A)
          & v5_vectsp_2(C,A) ) ) ).

fof(d1_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( v1_rmod_2(C,A,B)
              <=> ( ! [D] :
                      ( m1_subset_1(D,u1_struct_0(B))
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(B))
                         => ( ( r2_hidden(D,C)
                              & r2_hidden(E,C) )
                           => r2_hidden(k4_rlvect_1(B,D,E),C) ) ) )
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(A))
                     => ! [E] :
                          ( m1_subset_1(E,u1_struct_0(B))
                         => ( r2_hidden(E,C)
                           => r2_hidden(k6_vectsp_2(A,B,D,E),C) ) ) ) ) ) ) ) ) ).

fof(t1_rmod_2,axiom,
    $true ).

fof(t2_rmod_2,axiom,
    $true ).

fof(t3_rmod_2,axiom,
    $true ).

fof(t4_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( v1_rmod_2(C,A,B)
               => ( C = k1_xboole_0
                  | r2_hidden(k1_rlvect_1(B),C) ) ) ) ) ) ).

fof(t5_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( v1_rmod_2(C,A,B)
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(B))
                   => ( r2_hidden(D,C)
                     => r2_hidden(k5_rlvect_1(B,D),C) ) ) ) ) ) ) ).

fof(t6_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( v1_rmod_2(C,A,B)
               => ! [D] :
                    ( m1_subset_1(D,u1_struct_0(B))
                   => ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ( ( r2_hidden(D,C)
                            & r2_hidden(E,C) )
                         => r2_hidden(k6_rlvect_1(B,D,E),C) ) ) ) ) ) ) ) ).

fof(t7_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => v1_rmod_2(k6_domain_1(u1_struct_0(B),k1_rlvect_1(B)),A,B) ) ) ).

fof(t8_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( u1_struct_0(B) = C
               => v1_rmod_2(C,A,B) ) ) ) ) ).

fof(t10_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                 => ( ( v1_rmod_2(C,A,B)
                      & v1_rmod_2(D,A,B) )
                   => v1_rmod_2(k5_subset_1(u1_struct_0(B),C,D),A,B) ) ) ) ) ) ).

fof(d2_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ( m1_rmod_2(C,A,B)
              <=> ( r1_tarski(u1_struct_0(C),u1_struct_0(B))
                  & u2_struct_0(C) = u2_struct_0(B)
                  & u1_rlvect_1(C) = k7_relat_1(u1_rlvect_1(B),k2_zfmisc_1(u1_struct_0(C),u1_struct_0(C)))
                  & u1_vectsp_2(A,C) = k7_relat_1(u1_vectsp_2(A,B),k2_zfmisc_1(u1_struct_0(C),u1_struct_0(A))) ) ) ) ) ) ).

fof(t11_rmod_2,axiom,
    $true ).

fof(t12_rmod_2,axiom,
    $true ).

fof(t13_rmod_2,axiom,
    $true ).

fof(t14_rmod_2,axiom,
    $true ).

fof(t15_rmod_2,axiom,
    $true ).

fof(t16_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B) )
     => ! [C] :
          ( ( ~ v3_struct_0(C)
            & v3_rlvect_1(C)
            & v4_rlvect_1(C)
            & v5_rlvect_1(C)
            & v6_rlvect_1(C)
            & v5_vectsp_2(C,B)
            & l1_vectsp_2(C,B) )
         => ! [D] :
              ( m1_rmod_2(D,B,C)
             => ! [E] :
                  ( m1_rmod_2(E,B,C)
                 => ( ( r1_rlvect_1(D,A)
                      & m1_rmod_2(D,B,E) )
                   => r1_rlvect_1(E,A) ) ) ) ) ) ).

fof(t17_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B) )
     => ! [C] :
          ( ( ~ v3_struct_0(C)
            & v3_rlvect_1(C)
            & v4_rlvect_1(C)
            & v5_rlvect_1(C)
            & v6_rlvect_1(C)
            & v5_vectsp_2(C,B)
            & l1_vectsp_2(C,B) )
         => ! [D] :
              ( m1_rmod_2(D,B,C)
             => ( r1_rlvect_1(D,A)
               => r1_rlvect_1(C,A) ) ) ) ) ).

fof(t18_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => m1_subset_1(D,u1_struct_0(B)) ) ) ) ) ).

fof(t19_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => k1_rlvect_1(C) = k1_rlvect_1(B) ) ) ) ).

fof(t20_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => k1_rlvect_1(C) = k1_rlvect_1(D) ) ) ) ) ).

fof(t21_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(E))
                         => ! [G] :
                              ( m1_subset_1(G,u1_struct_0(E))
                             => ( ( F = C
                                  & G = D )
                               => k4_rlvect_1(E,F,G) = k4_rlvect_1(B,C,D) ) ) ) ) ) ) ) ) ).

fof(t22_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ! [E] :
                      ( m1_rmod_2(E,A,C)
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(E))
                         => ( F = D
                           => k6_vectsp_2(A,E,B,F) = k6_vectsp_2(A,C,B,D) ) ) ) ) ) ) ) ).

fof(t23_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(D))
                     => ( E = C
                       => k5_rlvect_1(B,C) = k5_rlvect_1(D,E) ) ) ) ) ) ) ).

fof(t24_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(E))
                         => ! [G] :
                              ( m1_subset_1(G,u1_struct_0(E))
                             => ( ( F = C
                                  & G = D )
                               => k6_rlvect_1(E,F,G) = k6_rlvect_1(B,C,D) ) ) ) ) ) ) ) ) ).

fof(t25_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => r1_rlvect_1(C,k1_rlvect_1(B)) ) ) ) ).

fof(t26_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => r1_rlvect_1(D,k1_rlvect_1(C)) ) ) ) ) ).

fof(t27_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => r1_rlvect_1(B,k1_rlvect_1(C)) ) ) ) ).

fof(t28_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( ( r1_rlvect_1(E,C)
                          & r1_rlvect_1(E,D) )
                       => r1_rlvect_1(E,k4_rlvect_1(B,C,D)) ) ) ) ) ) ) ).

fof(t29_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ! [E] :
                      ( m1_rmod_2(E,A,C)
                     => ( r1_rlvect_1(E,D)
                       => r1_rlvect_1(E,k6_vectsp_2(A,C,B,D)) ) ) ) ) ) ) ).

fof(t30_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r1_rlvect_1(D,C)
                   => r1_rlvect_1(D,k5_rlvect_1(B,C)) ) ) ) ) ) ).

fof(t31_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( ( r1_rlvect_1(E,C)
                          & r1_rlvect_1(E,D) )
                       => r1_rlvect_1(E,k6_rlvect_1(B,C,D)) ) ) ) ) ) ) ).

fof(t32_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => m1_rmod_2(B,A,B) ) ) ).

fof(t33_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v3_vectsp_2(C,A)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ( ( m1_rmod_2(C,A,B)
                  & m1_rmod_2(B,A,C) )
               => C = B ) ) ) ) ).

fof(t34_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ! [D] :
                  ( ( ~ v3_struct_0(D)
                    & v3_rlvect_1(D)
                    & v4_rlvect_1(D)
                    & v5_rlvect_1(D)
                    & v6_rlvect_1(D)
                    & v5_vectsp_2(D,A)
                    & l1_vectsp_2(D,A) )
                 => ( ( m1_rmod_2(B,A,C)
                      & m1_rmod_2(C,A,D) )
                   => m1_rmod_2(B,A,D) ) ) ) ) ) ).

fof(t35_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r1_tarski(u1_struct_0(C),u1_struct_0(D))
                   => m1_rmod_2(C,A,D) ) ) ) ) ) ).

fof(t36_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ( r1_rlvect_1(C,E)
                         => r1_rlvect_1(D,E) ) )
                   => m1_rmod_2(C,A,D) ) ) ) ) ) ).

fof(t37_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => ( u1_struct_0(C) = u1_struct_0(D)
                   => C = D ) ) ) ) ) ).

fof(t38_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => ( ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ( r1_rlvect_1(C,E)
                        <=> r1_rlvect_1(D,E) ) )
                   => C = D ) ) ) ) ) ).

fof(t39_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ( u1_struct_0(C) = u1_struct_0(B)
               => C = B ) ) ) ) ).

fof(t40_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ( ! [D] :
                    ( m1_subset_1(D,u1_struct_0(B))
                   => r1_rlvect_1(C,D) )
               => C = B ) ) ) ) ).

fof(t41_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( u1_struct_0(D) = C
                   => v1_rmod_2(C,A,B) ) ) ) ) ) ).

fof(t42_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ~ ( C != k1_xboole_0
                  & v1_rmod_2(C,A,B)
                  & ! [D] :
                      ( ( v3_vectsp_2(D,A)
                        & m1_rmod_2(D,A,B) )
                     => C != u1_struct_0(D) ) ) ) ) ) ).

fof(d3_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ( C = k1_rmod_2(A,B)
              <=> u1_struct_0(C) = k6_domain_1(u1_struct_0(B),k1_rlvect_1(B)) ) ) ) ) ).

fof(d4_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => k2_rmod_2(A,B) = g1_vectsp_2(A,u1_struct_0(B),u1_rlvect_1(B),u2_struct_0(B),u1_vectsp_2(A,B)) ) ) ).

fof(t43_rmod_2,axiom,
    $true ).

fof(t44_rmod_2,axiom,
    $true ).

fof(t45_rmod_2,axiom,
    $true ).

fof(t46_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B) )
     => ! [C] :
          ( ( ~ v3_struct_0(C)
            & v3_rlvect_1(C)
            & v4_rlvect_1(C)
            & v5_rlvect_1(C)
            & v6_rlvect_1(C)
            & v5_vectsp_2(C,B)
            & l1_vectsp_2(C,B) )
         => ( r1_rlvect_1(k1_rmod_2(B,C),A)
          <=> A = k1_rlvect_1(C) ) ) ) ).

fof(t47_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => k1_rmod_2(A,C) = k1_rmod_2(A,B) ) ) ) ).

fof(t48_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => k1_rmod_2(A,C) = k1_rmod_2(A,D) ) ) ) ) ).

fof(t49_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => m1_rmod_2(k1_rmod_2(A,C),A,B) ) ) ) ).

fof(t50_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => m1_rmod_2(k1_rmod_2(A,B),A,C) ) ) ) ).

fof(t51_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => m1_rmod_2(k1_rmod_2(A,C),A,D) ) ) ) ) ).

fof(t52_rmod_2,axiom,
    $true ).

fof(t53_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => m1_rmod_2(B,A,k2_rmod_2(A,B)) ) ) ).

fof(d6_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                 => ( m2_rmod_2(D,A,B,C)
                  <=> ? [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                        & D = k3_rmod_2(A,B,E,C) ) ) ) ) ) ) ).

fof(t54_rmod_2,axiom,
    $true ).

fof(t55_rmod_2,axiom,
    $true ).

fof(t56_rmod_2,axiom,
    $true ).

fof(t57_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B) )
     => ! [C] :
          ( ( ~ v3_struct_0(C)
            & v3_rlvect_1(C)
            & v4_rlvect_1(C)
            & v5_rlvect_1(C)
            & v6_rlvect_1(C)
            & v5_vectsp_2(C,B)
            & l1_vectsp_2(C,B) )
         => ! [D] :
              ( m1_subset_1(D,u1_struct_0(C))
             => ! [E] :
                  ( m1_rmod_2(E,B,C)
                 => ( r2_hidden(A,k3_rmod_2(B,C,D,E))
                  <=> ? [F] :
                        ( m1_subset_1(F,u1_struct_0(C))
                        & r1_rlvect_1(E,F)
                        & A = k4_rlvect_1(C,D,F) ) ) ) ) ) ) ).

fof(t58_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r2_hidden(k1_rlvect_1(B),k3_rmod_2(A,B,C,D))
                  <=> r1_rlvect_1(D,C) ) ) ) ) ) ).

fof(t59_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => r2_hidden(C,k3_rmod_2(A,B,C,D)) ) ) ) ) ).

fof(t60_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => k3_rmod_2(A,B,k1_rlvect_1(B),C) = u1_struct_0(C) ) ) ) ).

fof(t61_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k3_rmod_2(A,B,C,k1_rmod_2(A,B)) = k6_domain_1(u1_struct_0(B),C) ) ) ) ).

fof(t62_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k3_rmod_2(A,B,C,k2_rmod_2(A,B)) = u1_struct_0(B) ) ) ) ).

fof(t63_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r2_hidden(k1_rlvect_1(B),k3_rmod_2(A,B,C,D))
                  <=> k3_rmod_2(A,B,C,D) = u1_struct_0(D) ) ) ) ) ) ).

fof(t64_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r1_rlvect_1(D,C)
                  <=> k3_rmod_2(A,B,C,D) = u1_struct_0(D) ) ) ) ) ) ).

fof(t65_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ! [E] :
                      ( m1_rmod_2(E,A,C)
                     => ( r1_rlvect_1(E,D)
                       => k3_rmod_2(A,C,k6_vectsp_2(A,C,B,D),E) = u1_struct_0(E) ) ) ) ) ) ) ).

fof(t66_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( r1_rlvect_1(E,C)
                      <=> k3_rmod_2(A,B,D,E) = k3_rmod_2(A,B,k4_rlvect_1(B,D,C),E) ) ) ) ) ) ) ).

fof(t67_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( r1_rlvect_1(E,C)
                      <=> k3_rmod_2(A,B,D,E) = k3_rmod_2(A,B,k6_rlvect_1(B,D,C),E) ) ) ) ) ) ) ).

fof(t68_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( r2_hidden(C,k3_rmod_2(A,B,D,E))
                      <=> k3_rmod_2(A,B,D,E) = k3_rmod_2(A,B,C,E) ) ) ) ) ) ) ).

fof(t69_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( m1_rmod_2(F,A,B)
                         => ( ( r2_hidden(C,k3_rmod_2(A,B,D,F))
                              & r2_hidden(C,k3_rmod_2(A,B,E,F)) )
                           => k3_rmod_2(A,B,D,F) = k3_rmod_2(A,B,E,F) ) ) ) ) ) ) ) ).

fof(t70_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( ( ~ v3_struct_0(C)
                & v3_rlvect_1(C)
                & v4_rlvect_1(C)
                & v5_rlvect_1(C)
                & v6_rlvect_1(C)
                & v5_vectsp_2(C,A)
                & l1_vectsp_2(C,A) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(C))
                 => ! [E] :
                      ( m1_rmod_2(E,A,C)
                     => ( r1_rlvect_1(E,D)
                       => r2_hidden(k6_vectsp_2(A,C,B,D),k3_rmod_2(A,C,D,E)) ) ) ) ) ) ) ).

fof(t71_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r1_rlvect_1(D,C)
                   => r2_hidden(k5_rlvect_1(B,C),k3_rmod_2(A,B,C,D)) ) ) ) ) ) ).

fof(t72_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( r2_hidden(k4_rlvect_1(B,C,D),k3_rmod_2(A,B,D,E))
                      <=> r1_rlvect_1(E,C) ) ) ) ) ) ) ).

fof(t73_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( r2_hidden(k6_rlvect_1(B,C,D),k3_rmod_2(A,B,C,E))
                      <=> r1_rlvect_1(E,D) ) ) ) ) ) ) ).

fof(t74_rmod_2,axiom,
    $true ).

fof(t75_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( r2_hidden(C,k3_rmod_2(A,B,D,E))
                      <=> ? [F] :
                            ( m1_subset_1(F,u1_struct_0(B))
                            & r1_rlvect_1(E,F)
                            & C = k6_rlvect_1(B,D,F) ) ) ) ) ) ) ) ).

fof(t76_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( ? [F] :
                            ( m1_subset_1(F,u1_struct_0(B))
                            & r2_hidden(C,k3_rmod_2(A,B,F,E))
                            & r2_hidden(D,k3_rmod_2(A,B,F,E)) )
                      <=> r1_rlvect_1(E,k6_rlvect_1(B,C,D)) ) ) ) ) ) ) ).

fof(t77_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ~ ( k3_rmod_2(A,B,C,E) = k3_rmod_2(A,B,D,E)
                          & ! [F] :
                              ( m1_subset_1(F,u1_struct_0(B))
                             => ~ ( r1_rlvect_1(E,F)
                                  & k4_rlvect_1(B,C,F) = D ) ) ) ) ) ) ) ) ).

fof(t78_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ~ ( k3_rmod_2(A,B,C,E) = k3_rmod_2(A,B,D,E)
                          & ! [F] :
                              ( m1_subset_1(F,u1_struct_0(B))
                             => ~ ( r1_rlvect_1(E,F)
                                  & k6_rlvect_1(B,C,F) = D ) ) ) ) ) ) ) ) ).

fof(t79_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => ! [E] :
                      ( ( v3_vectsp_2(E,A)
                        & m1_rmod_2(E,A,B) )
                     => ( k3_rmod_2(A,B,C,D) = k3_rmod_2(A,B,C,E)
                      <=> D = E ) ) ) ) ) ) ).

fof(t80_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( ( v3_vectsp_2(E,A)
                        & m1_rmod_2(E,A,B) )
                     => ! [F] :
                          ( ( v3_vectsp_2(F,A)
                            & m1_rmod_2(F,A,B) )
                         => ( k3_rmod_2(A,B,C,E) = k3_rmod_2(A,B,D,F)
                           => E = F ) ) ) ) ) ) ) ).

fof(t81_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ? [E] :
                      ( m2_rmod_2(E,A,B,D)
                      & r2_hidden(C,E) ) ) ) ) ) ).

fof(t82_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m2_rmod_2(D,A,B,C)
                 => ( v1_rmod_2(D,A,B)
                  <=> D = u1_struct_0(C) ) ) ) ) ) ).

fof(t83_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => ! [E] :
                      ( m2_rmod_2(E,A,B,C)
                     => ! [F] :
                          ( m2_rmod_2(F,A,B,D)
                         => ( E = F
                           => C = D ) ) ) ) ) ) ) ).

fof(t84_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => m2_rmod_2(k6_domain_1(u1_struct_0(B),C),A,B,k1_rmod_2(A,B)) ) ) ) ).

fof(t85_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ~ ( m2_rmod_2(C,A,B,k1_rmod_2(A,B))
                  & ! [D] :
                      ( m1_subset_1(D,u1_struct_0(B))
                     => C != k6_domain_1(u1_struct_0(B),D) ) ) ) ) ) ).

fof(t86_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => m2_rmod_2(u1_struct_0(C),A,B,C) ) ) ) ).

fof(t87_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => m2_rmod_2(u1_struct_0(B),A,B,k2_rmod_2(A,B)) ) ) ).

fof(t88_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( m2_rmod_2(C,A,B,k2_rmod_2(A,B))
               => C = u1_struct_0(B) ) ) ) ) ).

fof(t89_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m2_rmod_2(D,A,B,C)
                 => ( r2_hidden(k1_rlvect_1(B),D)
                  <=> D = u1_struct_0(C) ) ) ) ) ) ).

fof(t90_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m2_rmod_2(E,A,B,D)
                     => ( r2_hidden(C,E)
                      <=> E = k3_rmod_2(A,B,C,D) ) ) ) ) ) ) ).

fof(t91_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ! [F] :
                          ( m2_rmod_2(F,A,B,E)
                         => ~ ( r2_hidden(C,F)
                              & r2_hidden(D,F)
                              & ! [G] :
                                  ( m1_subset_1(G,u1_struct_0(B))
                                 => ~ ( r1_rlvect_1(E,G)
                                      & k4_rlvect_1(B,C,G) = D ) ) ) ) ) ) ) ) ) ).

fof(t92_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ! [F] :
                          ( m2_rmod_2(F,A,B,E)
                         => ~ ( r2_hidden(C,F)
                              & r2_hidden(D,F)
                              & ! [G] :
                                  ( m1_subset_1(G,u1_struct_0(B))
                                 => ~ ( r1_rlvect_1(E,G)
                                      & k6_rlvect_1(B,C,G) = D ) ) ) ) ) ) ) ) ) ).

fof(t93_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( ? [F] :
                            ( m2_rmod_2(F,A,B,E)
                            & r2_hidden(C,F)
                            & r2_hidden(D,F) )
                      <=> r1_rlvect_1(E,k6_rlvect_1(B,C,D)) ) ) ) ) ) ) ).

fof(t94_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m2_rmod_2(E,A,B,D)
                     => ! [F] :
                          ( m2_rmod_2(F,A,B,D)
                         => ( ( r2_hidden(C,E)
                              & r2_hidden(C,F) )
                           => E = F ) ) ) ) ) ) ) ).

fof(dt_m1_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ! [C] :
          ( m1_rmod_2(C,A,B)
         => ( ~ v3_struct_0(C)
            & v3_rlvect_1(C)
            & v4_rlvect_1(C)
            & v5_rlvect_1(C)
            & v6_rlvect_1(C)
            & v5_vectsp_2(C,A)
            & l1_vectsp_2(C,A) ) ) ) ).

fof(existence_m1_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ? [C] : m1_rmod_2(C,A,B) ) ).

fof(dt_m2_rmod_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_2(C,A,B) )
     => ! [D] :
          ( m2_rmod_2(D,A,B,C)
         => m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) ) ) ).

fof(existence_m2_rmod_2,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_2(C,A,B) )
     => ? [D] : m2_rmod_2(D,A,B,C) ) ).

fof(dt_k1_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ( v3_vectsp_2(k1_rmod_2(A,B),A)
        & m1_rmod_2(k1_rmod_2(A,B),A,B) ) ) ).

fof(dt_k2_rmod_2,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ( v3_vectsp_2(k2_rmod_2(A,B),A)
        & m1_rmod_2(k2_rmod_2(A,B),A,B) ) ) ).

fof(dt_k3_rmod_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_subset_1(C,u1_struct_0(B))
        & m1_rmod_2(D,A,B) )
     => m1_subset_1(k3_rmod_2(A,B,C,D),k1_zfmisc_1(u1_struct_0(B))) ) ).

fof(t9_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                 => ! [E] :
                      ( m1_subset_1(E,k1_zfmisc_1(u1_struct_0(B)))
                     => ( ( v1_rmod_2(C,A,B)
                          & v1_rmod_2(D,A,B)
                          & E = a_4_0_rmod_2(A,B,C,D) )
                       => v1_rmod_2(E,A,B) ) ) ) ) ) ) ).

fof(d5_rmod_2,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => k3_rmod_2(A,B,C,D) = a_4_1_rmod_2(A,B,C,D) ) ) ) ) ).

fof(fraenkel_a_4_0_rmod_2,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B)
        & ~ v3_struct_0(C)
        & v3_rlvect_1(C)
        & v4_rlvect_1(C)
        & v5_rlvect_1(C)
        & v6_rlvect_1(C)
        & v5_vectsp_2(C,B)
        & l1_vectsp_2(C,B)
        & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(C)))
        & m1_subset_1(E,k1_zfmisc_1(u1_struct_0(C))) )
     => ( r2_hidden(A,a_4_0_rmod_2(B,C,D,E))
      <=> ? [F,G] :
            ( m1_subset_1(F,u1_struct_0(C))
            & m1_subset_1(G,u1_struct_0(C))
            & A = k4_rlvect_1(C,F,G)
            & r2_hidden(F,D)
            & r2_hidden(G,E) ) ) ) ).

fof(fraenkel_a_4_1_rmod_2,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B)
        & ~ v3_struct_0(C)
        & v3_rlvect_1(C)
        & v4_rlvect_1(C)
        & v5_rlvect_1(C)
        & v6_rlvect_1(C)
        & v5_vectsp_2(C,B)
        & l1_vectsp_2(C,B)
        & m1_subset_1(D,u1_struct_0(C))
        & m1_rmod_2(E,B,C) )
     => ( r2_hidden(A,a_4_1_rmod_2(B,C,D,E))
      <=> ? [F] :
            ( m1_subset_1(F,u1_struct_0(C))
            & A = k4_rlvect_1(C,D,F)
            & r1_rlvect_1(E,F) ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+279 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Operations on Submodules in Right Module over Associative Ring
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : rmod_3 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   82 (  17 unt;   0 def)
%            Number of atoms       : 1462 (  64 equ)
%            Maximal formula atoms :   34 (  17 avg)
%            Number of connectives : 1523 ( 143   ~;   3   |;1091   &)
%                                         (  15 <=>; 271  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   29 (  12 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   32 (  30 usr;   1 prp; 0-4 aty)
%            Number of functors    :   24 (  24 usr;   0 con; 1-6 aty)
%            Number of variables   :  284 ( 271   !;  13   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(fc1_rmod_3,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ~ v1_xboole_0(k3_rmod_3(A,B)) ) ).

fof(d2_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( ( v3_vectsp_2(E,A)
                        & m1_rmod_2(E,A,B) )
                     => ( E = k2_rmod_3(A,B,C,D)
                      <=> u1_struct_0(E) = k3_xboole_0(u1_struct_0(C),u1_struct_0(D)) ) ) ) ) ) ) ).

fof(t1_rmod_3,axiom,
    $true ).

fof(t2_rmod_3,axiom,
    $true ).

fof(t3_rmod_3,axiom,
    $true ).

fof(t4_rmod_3,axiom,
    $true ).

fof(t5_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( r1_rlvect_1(k1_rmod_3(A,B,C,D),E)
                    <=> ? [F] :
                          ( m1_subset_1(F,u1_struct_0(B))
                          & ? [G] :
                              ( m1_subset_1(G,u1_struct_0(B))
                              & r1_rlvect_1(C,F)
                              & r1_rlvect_1(D,G)
                              & E = k4_rlvect_1(B,F,G) ) ) ) ) ) ) ) ).

fof(t6_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ( ( r1_rlvect_1(C,E)
                          | r1_rlvect_1(D,E) )
                       => r1_rlvect_1(k1_rmod_3(A,B,C,D),E) ) ) ) ) ) ) ).

fof(t7_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( r1_rlvect_1(k2_rmod_3(A,B,C,D),E)
                    <=> ( r1_rlvect_1(C,E)
                        & r1_rlvect_1(D,E) ) ) ) ) ) ) ).

fof(t8_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => k1_rmod_3(A,B,C,C) = C ) ) ) ).

fof(t9_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => k1_rmod_3(A,B,C,D) = k1_rmod_3(A,B,D,C) ) ) ) ) ).

fof(t10_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => k1_rmod_3(A,B,C,k1_rmod_3(A,B,D,E)) = k1_rmod_3(A,B,k1_rmod_3(A,B,C,D),E) ) ) ) ) ) ).

fof(t11_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( m1_rmod_2(C,A,k1_rmod_3(A,B,C,D))
                    & m1_rmod_2(D,A,k1_rmod_3(A,B,C,D)) ) ) ) ) ) ).

fof(t12_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => ( m1_rmod_2(C,A,D)
                  <=> k1_rmod_3(A,B,C,D) = D ) ) ) ) ) ).

fof(t13_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ( k1_rmod_3(A,B,k1_rmod_2(A,B),C) = C
                & k1_rmod_3(A,B,C,k1_rmod_2(A,B)) = C ) ) ) ) ).

fof(t14_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ( k1_rmod_3(A,B,k1_rmod_2(A,B),k2_rmod_2(A,B)) = B
            & k1_rmod_3(A,B,k2_rmod_2(A,B),k1_rmod_2(A,B)) = B ) ) ) ).

fof(t15_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ( k1_rmod_3(A,B,k2_rmod_2(A,B),C) = g1_vectsp_2(A,u1_struct_0(B),u1_rlvect_1(B),u2_struct_0(B),u1_vectsp_2(A,B))
                & k1_rmod_3(A,B,C,k2_rmod_2(A,B)) = g1_vectsp_2(A,u1_struct_0(B),u1_rlvect_1(B),u2_struct_0(B),u1_vectsp_2(A,B)) ) ) ) ) ).

fof(t16_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => k1_rmod_3(A,B,k2_rmod_2(A,B),k2_rmod_2(A,B)) = B ) ) ).

fof(t17_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => k2_rmod_3(A,B,C,C) = C ) ) ) ).

fof(t18_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => k2_rmod_3(A,B,C,D) = k2_rmod_3(A,B,D,C) ) ) ) ) ).

fof(t19_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => k2_rmod_3(A,B,C,k2_rmod_3(A,B,D,E)) = k2_rmod_3(A,B,k2_rmod_3(A,B,C,D),E) ) ) ) ) ) ).

fof(t20_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( m1_rmod_2(k2_rmod_3(A,B,C,D),A,C)
                    & m1_rmod_2(k2_rmod_3(A,B,C,D),A,D) ) ) ) ) ) ).

fof(t21_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ( ! [D] :
                    ( ( v3_vectsp_2(D,A)
                      & m1_rmod_2(D,A,B) )
                   => ( m1_rmod_2(D,A,C)
                     => k2_rmod_3(A,B,D,C) = D ) )
                & ! [D] :
                    ( m1_rmod_2(D,A,B)
                   => ( k2_rmod_3(A,B,D,C) = D
                     => m1_rmod_2(D,A,C) ) ) ) ) ) ) ).

fof(t22_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( m1_rmod_2(C,A,D)
                       => m1_rmod_2(k2_rmod_3(A,B,C,E),A,k2_rmod_3(A,B,D,E)) ) ) ) ) ) ) ).

fof(t23_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( m1_rmod_2(C,A,D)
                       => m1_rmod_2(k2_rmod_3(A,B,C,E),A,D) ) ) ) ) ) ) ).

fof(t24_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( ( m1_rmod_2(C,A,D)
                          & m1_rmod_2(C,A,E) )
                       => m1_rmod_2(C,A,k2_rmod_3(A,B,D,E)) ) ) ) ) ) ) ).

fof(t25_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ( k2_rmod_3(A,B,k1_rmod_2(A,B),C) = k1_rmod_2(A,B)
                & k2_rmod_3(A,B,C,k1_rmod_2(A,B)) = k1_rmod_2(A,B) ) ) ) ) ).

fof(t26_rmod_3,axiom,
    $true ).

fof(t27_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ( k2_rmod_3(A,B,k2_rmod_2(A,B),C) = C
                & k2_rmod_3(A,B,C,k2_rmod_2(A,B)) = C ) ) ) ) ).

fof(t28_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => k2_rmod_3(A,B,k2_rmod_2(A,B),k2_rmod_2(A,B)) = B ) ) ).

fof(t29_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => m1_rmod_2(k2_rmod_3(A,B,C,D),A,k1_rmod_3(A,B,C,D)) ) ) ) ) ).

fof(t30_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => k1_rmod_3(A,B,k2_rmod_3(A,B,C,D),D) = D ) ) ) ) ).

fof(t31_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => k2_rmod_3(A,B,D,k1_rmod_3(A,B,D,C)) = D ) ) ) ) ).

fof(t32_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => m1_rmod_2(k1_rmod_3(A,B,k2_rmod_3(A,B,C,D),k2_rmod_3(A,B,D,E)),A,k2_rmod_3(A,B,D,k1_rmod_3(A,B,C,E))) ) ) ) ) ) ).

fof(t33_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( m1_rmod_2(C,A,D)
                       => k2_rmod_3(A,B,D,k1_rmod_3(A,B,C,E)) = k1_rmod_3(A,B,k2_rmod_3(A,B,C,D),k2_rmod_3(A,B,D,E)) ) ) ) ) ) ) ).

fof(t34_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => m1_rmod_2(k1_rmod_3(A,B,C,k2_rmod_3(A,B,D,E)),A,k2_rmod_3(A,B,k1_rmod_3(A,B,D,C),k1_rmod_3(A,B,C,E))) ) ) ) ) ) ).

fof(t35_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( m1_rmod_2(C,A,D)
                       => k1_rmod_3(A,B,D,k2_rmod_3(A,B,C,E)) = k2_rmod_3(A,B,k1_rmod_3(A,B,C,D),k1_rmod_3(A,B,D,E)) ) ) ) ) ) ) ).

fof(t36_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( ( v3_vectsp_2(E,A)
                        & m1_rmod_2(E,A,B) )
                     => ( m1_rmod_2(E,A,C)
                       => k1_rmod_3(A,B,E,k2_rmod_3(A,B,D,C)) = k2_rmod_3(A,B,k1_rmod_3(A,B,E,D),C) ) ) ) ) ) ) ).

fof(t37_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v3_vectsp_2(C,A)
                & m1_rmod_2(C,A,B) )
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => ( k1_rmod_3(A,B,C,D) = D
                  <=> k2_rmod_3(A,B,C,D) = C ) ) ) ) ) ).

fof(t38_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( ( v3_vectsp_2(D,A)
                    & m1_rmod_2(D,A,B) )
                 => ! [E] :
                      ( ( v3_vectsp_2(E,A)
                        & m1_rmod_2(E,A,B) )
                     => ( m1_rmod_2(C,A,D)
                       => m1_rmod_2(k1_rmod_3(A,B,C,E),A,k1_rmod_3(A,B,D,E)) ) ) ) ) ) ) ).

fof(t39_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( m1_rmod_2(C,A,D)
                       => m1_rmod_2(C,A,k1_rmod_3(A,B,D,E)) ) ) ) ) ) ) ).

fof(t40_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( ( m1_rmod_2(C,A,D)
                          & m1_rmod_2(E,A,D) )
                       => m1_rmod_2(k1_rmod_3(A,B,C,E),A,D) ) ) ) ) ) ) ).

fof(t41_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( ~ ( ? [E] :
                            ( m1_rmod_2(E,A,B)
                            & u1_struct_0(E) = k2_xboole_0(u1_struct_0(C),u1_struct_0(D)) )
                        & ~ m1_rmod_2(C,A,D)
                        & ~ m1_rmod_2(D,A,C) )
                    & ~ ( ( m1_rmod_2(C,A,D)
                          | m1_rmod_2(D,A,C) )
                        & ! [E] :
                            ( m1_rmod_2(E,A,B)
                           => u1_struct_0(E) != k2_xboole_0(u1_struct_0(C),u1_struct_0(D)) ) ) ) ) ) ) ) ).

fof(d3_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( C = k3_rmod_3(A,B)
            <=> ! [D] :
                  ( r2_hidden(D,C)
                <=> ? [E] :
                      ( v3_vectsp_2(E,A)
                      & m1_rmod_2(E,A,B)
                      & E = D ) ) ) ) ) ).

fof(t42_rmod_3,axiom,
    $true ).

fof(t43_rmod_3,axiom,
    $true ).

fof(t44_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => r2_hidden(B,k3_rmod_3(A,B)) ) ) ).

fof(d4_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r1_rmod_3(A,B,C,D)
                  <=> ( g1_vectsp_2(A,u1_struct_0(B),u1_rlvect_1(B),u2_struct_0(B),u1_vectsp_2(A,B)) = k1_rmod_3(A,B,C,D)
                      & k2_rmod_3(A,B,C,D) = k1_rmod_2(A,B) ) ) ) ) ) ) ).

fof(t45_rmod_3,axiom,
    $true ).

fof(t46_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r1_rmod_3(A,B,C,D)
                   => r1_rmod_3(A,B,D,C) ) ) ) ) ) ).

fof(t47_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ( r1_rmod_3(A,B,k1_rmod_2(A,B),k2_rmod_2(A,B))
            & r1_rmod_3(A,B,k2_rmod_2(A,B),k1_rmod_2(A,B)) ) ) ) ).

fof(t48_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m2_rmod_2(E,A,B,C)
                     => ! [F] :
                          ( m2_rmod_2(F,A,B,D)
                         => ( ~ r1_xboole_0(E,F)
                           => m2_rmod_2(k5_subset_1(u1_struct_0(B),E,F),A,B,k2_rmod_3(A,B,C,D)) ) ) ) ) ) ) ) ).

fof(t49_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( r1_rmod_3(A,B,C,D)
                  <=> ! [E] :
                        ( m2_rmod_2(E,A,B,C)
                       => ! [F] :
                            ( m2_rmod_2(F,A,B,D)
                           => ? [G] :
                                ( m1_subset_1(G,u1_struct_0(B))
                                & k5_subset_1(u1_struct_0(B),E,F) = k6_domain_1(u1_struct_0(B),G) ) ) ) ) ) ) ) ) ).

fof(t50_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v3_vectsp_2(B,A)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( k1_rmod_3(A,B,C,D) = B
                  <=> ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ? [F] :
                            ( m1_subset_1(F,u1_struct_0(B))
                            & ? [G] :
                                ( m1_subset_1(G,u1_struct_0(B))
                                & r1_rlvect_1(C,F)
                                & r1_rlvect_1(D,G)
                                & E = k4_rlvect_1(B,F,G) ) ) ) ) ) ) ) ) ).

fof(t51_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(B))
                         => ! [G] :
                              ( m1_subset_1(G,u1_struct_0(B))
                             => ! [H] :
                                  ( m1_subset_1(H,u1_struct_0(B))
                                 => ! [I] :
                                      ( m1_subset_1(I,u1_struct_0(B))
                                     => ( ( r1_rmod_3(A,B,C,D)
                                          & E = k4_rlvect_1(B,F,G)
                                          & E = k4_rlvect_1(B,H,I)
                                          & r1_rlvect_1(C,F)
                                          & r1_rlvect_1(C,H)
                                          & r1_rlvect_1(D,G)
                                          & r1_rlvect_1(D,I) )
                                       => ( F = H
                                          & G = I ) ) ) ) ) ) ) ) ) ) ) ).

fof(t52_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ( B = k1_rmod_3(A,B,C,D)
                   => ( ! [E] :
                          ( m1_subset_1(E,u1_struct_0(B))
                         => ? [F] :
                              ( m1_subset_1(F,u1_struct_0(B))
                              & ? [G] :
                                  ( m1_subset_1(G,u1_struct_0(B))
                                  & ? [H] :
                                      ( m1_subset_1(H,u1_struct_0(B))
                                      & ? [I] :
                                          ( m1_subset_1(I,u1_struct_0(B))
                                          & E = k4_rlvect_1(B,F,G)
                                          & E = k4_rlvect_1(B,H,I)
                                          & r1_rlvect_1(C,F)
                                          & r1_rlvect_1(C,H)
                                          & r1_rlvect_1(D,G)
                                          & r1_rlvect_1(D,I)
                                          & ~ ( F = H
                                              & G = I ) ) ) ) ) )
                      | r1_rmod_3(A,B,C,D) ) ) ) ) ) ) ).

fof(d5_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_rmod_2(E,A,B)
                     => ( r1_rmod_3(A,B,D,E)
                       => ! [F] :
                            ( m1_subset_1(F,k2_zfmisc_1(u1_struct_0(B),u1_struct_0(B)))
                           => ( F = k4_rmod_3(A,B,C,D,E)
                            <=> ( C = k4_rlvect_1(B,k2_domain_1(u1_struct_0(B),u1_struct_0(B),F),k3_domain_1(u1_struct_0(B),u1_struct_0(B),F))
                                & r1_rlvect_1(D,k2_domain_1(u1_struct_0(B),u1_struct_0(B),F))
                                & r1_rlvect_1(E,k3_domain_1(u1_struct_0(B),u1_struct_0(B),F)) ) ) ) ) ) ) ) ) ) ).

fof(t53_rmod_3,axiom,
    $true ).

fof(t54_rmod_3,axiom,
    $true ).

fof(t55_rmod_3,axiom,
    $true ).

fof(t56_rmod_3,axiom,
    $true ).

fof(t57_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ( r1_rmod_3(A,B,C,D)
                       => k2_domain_1(u1_struct_0(B),u1_struct_0(B),k4_rmod_3(A,B,E,C,D)) = k3_domain_1(u1_struct_0(B),u1_struct_0(B),k4_rmod_3(A,B,E,D,C)) ) ) ) ) ) ) ).

fof(t58_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ( r1_rmod_3(A,B,C,D)
                       => k3_domain_1(u1_struct_0(B),u1_struct_0(B),k4_rmod_3(A,B,E,C,D)) = k2_domain_1(u1_struct_0(B),u1_struct_0(B),k4_rmod_3(A,B,E,D,C)) ) ) ) ) ) ) ).

fof(d6_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(k3_rmod_3(A,B),k3_rmod_3(A,B)),k3_rmod_3(A,B))
                & m2_relset_1(C,k2_zfmisc_1(k3_rmod_3(A,B),k3_rmod_3(A,B)),k3_rmod_3(A,B)) )
             => ( C = k5_rmod_3(A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,k3_rmod_3(A,B))
                   => ! [E] :
                        ( m1_subset_1(E,k3_rmod_3(A,B))
                       => ! [F] :
                            ( m1_rmod_2(F,A,B)
                           => ! [G] :
                                ( m1_rmod_2(G,A,B)
                               => ( ( D = F
                                    & E = G )
                                 => k2_binop_1(k3_rmod_3(A,B),k3_rmod_3(A,B),k3_rmod_3(A,B),C,D,E) = k1_rmod_3(A,B,F,G) ) ) ) ) ) ) ) ) ) ).

fof(d7_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,k2_zfmisc_1(k3_rmod_3(A,B),k3_rmod_3(A,B)),k3_rmod_3(A,B))
                & m2_relset_1(C,k2_zfmisc_1(k3_rmod_3(A,B),k3_rmod_3(A,B)),k3_rmod_3(A,B)) )
             => ( C = k6_rmod_3(A,B)
              <=> ! [D] :
                    ( m1_subset_1(D,k3_rmod_3(A,B))
                   => ! [E] :
                        ( m1_subset_1(E,k3_rmod_3(A,B))
                       => ! [F] :
                            ( m1_rmod_2(F,A,B)
                           => ! [G] :
                                ( m1_rmod_2(G,A,B)
                               => ( ( D = F
                                    & E = G )
                                 => k2_binop_1(k3_rmod_3(A,B),k3_rmod_3(A,B),k3_rmod_3(A,B),C,D,E) = k2_rmod_3(A,B,F,G) ) ) ) ) ) ) ) ) ) ).

fof(t59_rmod_3,axiom,
    $true ).

fof(t60_rmod_3,axiom,
    $true ).

fof(t61_rmod_3,axiom,
    $true ).

fof(t62_rmod_3,axiom,
    $true ).

fof(t63_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ( ~ v3_struct_0(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v10_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & l3_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B))) ) ) ) ).

fof(t64_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ( ~ v3_struct_0(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v10_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v13_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & l3_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B))) ) ) ) ).

fof(t65_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ( ~ v3_struct_0(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v10_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v14_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & l3_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B))) ) ) ) ).

fof(t66_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ( ~ v3_struct_0(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v10_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v15_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & l3_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B))) ) ) ) ).

fof(t67_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ( ~ v3_struct_0(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v10_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & v12_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B)))
            & l3_lattices(g3_lattices(k3_rmod_3(A,B),k5_rmod_3(A,B),k6_rmod_3(A,B))) ) ) ) ).

fof(dt_k1_rmod_3,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_2(C,A,B)
        & m1_rmod_2(D,A,B) )
     => ( v3_vectsp_2(k1_rmod_3(A,B,C,D),A)
        & m1_rmod_2(k1_rmod_3(A,B,C,D),A,B) ) ) ).

fof(dt_k2_rmod_3,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_2(C,A,B)
        & m1_rmod_2(D,A,B) )
     => ( v3_vectsp_2(k2_rmod_3(A,B,C,D),A)
        & m1_rmod_2(k2_rmod_3(A,B,C,D),A,B) ) ) ).

fof(dt_k3_rmod_3,axiom,
    $true ).

fof(dt_k4_rmod_3,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_subset_1(C,u1_struct_0(B))
        & m1_rmod_2(D,A,B)
        & m1_rmod_2(E,A,B) )
     => m1_subset_1(k4_rmod_3(A,B,C,D,E),k2_zfmisc_1(u1_struct_0(B),u1_struct_0(B))) ) ).

fof(dt_k5_rmod_3,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ( v1_funct_1(k5_rmod_3(A,B))
        & v1_funct_2(k5_rmod_3(A,B),k2_zfmisc_1(k3_rmod_3(A,B),k3_rmod_3(A,B)),k3_rmod_3(A,B))
        & m2_relset_1(k5_rmod_3(A,B),k2_zfmisc_1(k3_rmod_3(A,B),k3_rmod_3(A,B)),k3_rmod_3(A,B)) ) ) ).

fof(dt_k6_rmod_3,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ( v1_funct_1(k6_rmod_3(A,B))
        & v1_funct_2(k6_rmod_3(A,B),k2_zfmisc_1(k3_rmod_3(A,B),k3_rmod_3(A,B)),k3_rmod_3(A,B))
        & m2_relset_1(k6_rmod_3(A,B),k2_zfmisc_1(k3_rmod_3(A,B),k3_rmod_3(A,B)),k3_rmod_3(A,B)) ) ) ).

fof(d1_rmod_3,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_2(C,A,B)
             => ! [D] :
                  ( m1_rmod_2(D,A,B)
                 => ! [E] :
                      ( ( v3_vectsp_2(E,A)
                        & m1_rmod_2(E,A,B) )
                     => ( E = k1_rmod_3(A,B,C,D)
                      <=> u1_struct_0(E) = a_4_0_rmod_3(A,B,C,D) ) ) ) ) ) ) ).

fof(fraenkel_a_4_0_rmod_3,axiom,
    ! [A,B,C,D,E] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B)
        & ~ v3_struct_0(C)
        & v3_rlvect_1(C)
        & v4_rlvect_1(C)
        & v5_rlvect_1(C)
        & v6_rlvect_1(C)
        & v5_vectsp_2(C,B)
        & l1_vectsp_2(C,B)
        & m1_rmod_2(D,B,C)
        & m1_rmod_2(E,B,C) )
     => ( r2_hidden(A,a_4_0_rmod_3(B,C,D,E))
      <=> ? [F,G] :
            ( m1_subset_1(F,u1_struct_0(C))
            & m1_subset_1(G,u1_struct_0(C))
            & A = k4_rlvect_1(C,F,G)
            & r1_rlvect_1(D,F)
            & r1_rlvect_1(E,G) ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SET007+280 : TPTP v8.1.0. Released v3.4.0.
% Domain   : Set Theory
% Axioms   : Linear Combinations in Right Module over Associative Ring
% Version  : [Urb08] axioms.
% English  :

% Refs     : [Mat90] Matuszewski (1990), Formalized Mathematics
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : rmod_4 [Urb08]

% Status   : Satisfiable
% Syntax   : Number of formulae    :  112 (  21 unt;   0 def)
%            Number of atoms       : 1942 (  81 equ)
%            Maximal formula atoms :   27 (  17 avg)
%            Number of connectives : 2030 ( 200   ~;   1   |;1475   &)
%                                         (  14 <=>; 340  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   26 (  12 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :   35 (  33 usr;   1 prp; 0-4 aty)
%            Number of functors    :   44 (  44 usr;   3 con; 0-4 aty)
%            Number of variables   :  369 ( 362   !;   7   ?)
% SPC      : 

% Comments : The individual reference can be found in [Mat90] by looking for
%            the name provided by [Urb08].
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : These set theory axioms are used in encodings of problems in
%            various domains, including ALG, CAT, GRP, LAT, SET, and TOP.
%------------------------------------------------------------------------------
fof(t1_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m2_finseq_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m2_finseq_1(E,u1_struct_0(B))
                     => ( ( k3_finseq_1(D) = k3_finseq_1(E)
                          & ! [F] :
                              ( m2_subset_1(F,k1_numbers,k5_numbers)
                             => ! [G] :
                                  ( m1_subset_1(G,u1_struct_0(B))
                                 => ( ( r2_hidden(F,k1_relat_1(D))
                                      & G = k1_funct_1(E,F) )
                                   => k1_funct_1(D,F) = k6_vectsp_2(A,B,C,G) ) ) ) )
                       => k9_rlvect_1(B,D) = k6_vectsp_2(A,B,C,k9_rlvect_1(B,E)) ) ) ) ) ) ) ).

fof(t2_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => k6_vectsp_2(A,B,C,k9_rlvect_1(B,k6_finseq_1(u1_struct_0(B)))) = k1_rlvect_1(B) ) ) ) ).

fof(t3_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => k6_vectsp_2(A,B,C,k9_rlvect_1(B,k2_finseq_4(u1_struct_0(B),D,E))) = k4_rlvect_1(B,k6_vectsp_2(A,B,C,D),k6_vectsp_2(A,B,C,E)) ) ) ) ) ) ).

fof(t4_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(B))
                         => k6_vectsp_2(A,B,C,k9_rlvect_1(B,k3_finseq_4(u1_struct_0(B),D,E,F))) = k4_rlvect_1(B,k4_rlvect_1(B,k6_vectsp_2(A,B,C,D),k6_vectsp_2(A,B,C,E)),k6_vectsp_2(A,B,C,F)) ) ) ) ) ) ) ).

fof(d1_rmod_4,axiom,
    $true ).

fof(d2_rmod_4,axiom,
    $true ).

fof(d3_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( D = k1_rmod_4(A,B,C)
                  <=> ? [E] :
                        ( m2_finseq_1(E,u1_struct_0(B))
                        & k2_relat_1(E) = C
                        & v2_funct_1(E)
                        & D = k9_rlvect_1(B,E) ) ) ) ) ) ) ).

fof(t5_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => k1_rmod_4(A,B,k1_pre_topc(B)) = k1_rlvect_1(B) ) ) ).

fof(t6_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k1_rmod_4(A,B,k7_rlvect_2(B,C)) = C ) ) ) ).

fof(t7_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( C != D
                   => k1_rmod_4(A,B,k8_rlvect_2(B,C,D)) = k4_rlvect_1(B,C,D) ) ) ) ) ) ).

fof(t8_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ~ ( C != D
                          & D != E
                          & C != E
                          & k1_rmod_4(A,B,k9_rlvect_2(B,C,D,E)) != k4_rlvect_1(B,k4_rlvect_1(B,C,D),E) ) ) ) ) ) ) ).

fof(t9_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ! [D] :
                  ( ( v1_finset_1(D)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
                 => ( r1_xboole_0(C,D)
                   => k1_rmod_4(A,B,k2_rlvect_2(B,C,D)) = k4_rlvect_1(B,k1_rmod_4(A,B,C),k1_rmod_4(A,B,D)) ) ) ) ) ) ).

fof(t10_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ! [D] :
                  ( ( v1_finset_1(D)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
                 => k1_rmod_4(A,B,k2_rlvect_2(B,C,D)) = k6_rlvect_1(B,k4_rlvect_1(B,k1_rmod_4(A,B,C),k1_rmod_4(A,B,D)),k1_rmod_4(A,B,k3_rlvect_2(B,C,D))) ) ) ) ) ).

fof(t11_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ! [D] :
                  ( ( v1_finset_1(D)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
                 => k1_rmod_4(A,B,k3_rlvect_2(B,C,D)) = k6_rlvect_1(B,k4_rlvect_1(B,k1_rmod_4(A,B,C),k1_rmod_4(A,B,D)),k1_rmod_4(A,B,k2_rlvect_2(B,C,D))) ) ) ) ) ).

fof(t12_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ! [D] :
                  ( ( v1_finset_1(D)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
                 => k1_rmod_4(A,B,k4_rlvect_2(B,C,D)) = k6_rlvect_1(B,k1_rmod_4(A,B,k2_rlvect_2(B,C,D)),k1_rmod_4(A,B,D)) ) ) ) ) ).

fof(t13_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ! [D] :
                  ( ( v1_finset_1(D)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
                 => k1_rmod_4(A,B,k4_rlvect_2(B,C,D)) = k6_rlvect_1(B,k1_rmod_4(A,B,C),k1_rmod_4(A,B,k3_rlvect_2(B,C,D))) ) ) ) ) ).

fof(t14_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ! [D] :
                  ( ( v1_finset_1(D)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
                 => k1_rmod_4(A,B,k5_rlvect_2(B,C,D)) = k6_rlvect_1(B,k1_rmod_4(A,B,k2_rlvect_2(B,C,D)),k1_rmod_4(A,B,k3_rlvect_2(B,C,D))) ) ) ) ) ).

fof(t15_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_finset_1(C)
                & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
             => ! [D] :
                  ( ( v1_finset_1(D)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B))) )
                 => k1_rmod_4(A,B,k5_rlvect_2(B,C,D)) = k4_rlvect_1(B,k1_rmod_4(A,B,k4_rlvect_2(B,C,D)),k1_rmod_4(A,B,k4_rlvect_2(B,D,C))) ) ) ) ) ).

fof(d4_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m2_fraenkel(C,u1_struct_0(B),u1_struct_0(A),k1_fraenkel(u1_struct_0(B),u1_struct_0(A)))
             => ( m1_rmod_4(C,A,B)
              <=> ? [D] :
                    ( v1_finset_1(D)
                    & m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                    & ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => ( ~ r2_hidden(E,D)
                         => k8_funct_2(u1_struct_0(B),u1_struct_0(A),C,E) = k1_rlvect_1(A) ) ) ) ) ) ) ) ).

fof(t16_rmod_4,axiom,
    $true ).

fof(t17_rmod_4,axiom,
    $true ).

fof(t18_rmod_4,axiom,
    $true ).

fof(t19_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C,D] :
              ( m1_rmod_4(D,A,B)
             => ( r2_hidden(C,k2_rmod_4(A,B,D))
              <=> ? [E] :
                    ( m1_subset_1(E,u1_struct_0(B))
                    & C = E
                    & k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,E) != k1_rlvect_1(A) ) ) ) ) ) ).

fof(t20_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ( k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,C) = k1_rlvect_1(A)
                  <=> ~ r2_hidden(C,k2_rmod_4(A,B,D)) ) ) ) ) ) ).

fof(d6_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ( C = k3_rmod_4(A,B)
              <=> k2_rmod_4(A,B,C) = k1_xboole_0 ) ) ) ) ).

fof(t21_rmod_4,axiom,
    $true ).

fof(t22_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => k8_funct_2(u1_struct_0(B),u1_struct_0(A),k3_rmod_4(A,B),C) = k1_rlvect_1(A) ) ) ) ).

fof(d7_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ( m2_rmod_4(D,A,B,C)
                  <=> r1_tarski(k2_rmod_4(A,B,D),C) ) ) ) ) ) ).

fof(t23_rmod_4,axiom,
    $true ).

fof(t24_rmod_4,axiom,
    $true ).

fof(t25_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                 => ! [E] :
                      ( m2_rmod_4(E,A,B,C)
                     => ( r1_tarski(C,D)
                       => m2_rmod_4(E,A,B,D) ) ) ) ) ) ) ).

fof(t26_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => m2_rmod_4(k3_rmod_4(A,B),A,B,C) ) ) ) ).

fof(t27_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m2_rmod_4(C,A,B,k1_subset_1(u1_struct_0(B)))
             => C = k3_rmod_4(A,B) ) ) ) ).

fof(t28_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => m2_rmod_4(C,A,B,k2_rmod_4(A,B,C)) ) ) ) ).

fof(d8_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(B))
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,u1_struct_0(B),u1_struct_0(A))
                    & m2_relset_1(D,u1_struct_0(B),u1_struct_0(A)) )
                 => ! [E] :
                      ( m2_finseq_1(E,u1_struct_0(B))
                     => ( E = k4_rmod_4(A,B,C,D)
                      <=> ( k3_finseq_1(E) = k3_finseq_1(C)
                          & ! [F] :
                              ( m2_subset_1(F,k1_numbers,k5_numbers)
                             => ( r2_hidden(F,k1_relat_1(E))
                               => k1_funct_1(E,F) = k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,k4_finseq_4(k5_numbers,u1_struct_0(B),C,F)),k4_finseq_4(k5_numbers,u1_struct_0(B),C,F)) ) ) ) ) ) ) ) ) ) ).

fof(t29_rmod_4,axiom,
    $true ).

fof(t30_rmod_4,axiom,
    $true ).

fof(t31_rmod_4,axiom,
    $true ).

fof(t32_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m2_subset_1(C,k1_numbers,k5_numbers)
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m2_finseq_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,u1_struct_0(B),u1_struct_0(A))
                            & m2_relset_1(F,u1_struct_0(B),u1_struct_0(A)) )
                         => ( ( r2_hidden(C,k1_relat_1(E))
                              & D = k1_funct_1(E,C) )
                           => k1_funct_1(k4_rmod_4(A,B,E,F),C) = k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),F,D),D) ) ) ) ) ) ) ) ).

fof(t33_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(B),u1_struct_0(A))
                & m2_relset_1(C,u1_struct_0(B),u1_struct_0(A)) )
             => k4_rmod_4(A,B,k6_finseq_1(u1_struct_0(B)),C) = k6_finseq_1(u1_struct_0(B)) ) ) ) ).

fof(t34_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( ( v1_funct_1(D)
                    & v1_funct_2(D,u1_struct_0(B),u1_struct_0(A))
                    & m2_relset_1(D,u1_struct_0(B),u1_struct_0(A)) )
                 => k4_rmod_4(A,B,k12_finseq_1(u1_struct_0(B),C),D) = k12_finseq_1(u1_struct_0(B),k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,C),C)) ) ) ) ) ).

fof(t35_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,u1_struct_0(B),u1_struct_0(A))
                        & m2_relset_1(E,u1_struct_0(B),u1_struct_0(A)) )
                     => k4_rmod_4(A,B,k2_finseq_4(u1_struct_0(B),C,D),E) = k2_finseq_4(u1_struct_0(B),k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,C),C),k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,D),D)) ) ) ) ) ) ).

fof(t36_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( ( v1_funct_1(F)
                            & v1_funct_2(F,u1_struct_0(B),u1_struct_0(A))
                            & m2_relset_1(F,u1_struct_0(B),u1_struct_0(A)) )
                         => k4_rmod_4(A,B,k3_finseq_4(u1_struct_0(B),C,D,E),F) = k3_finseq_4(u1_struct_0(B),k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),F,C),C),k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),F,D),D),k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),F,E),E)) ) ) ) ) ) ) ).

fof(t37_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m2_finseq_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m2_finseq_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( ( v1_funct_1(E)
                        & v1_funct_2(E,u1_struct_0(B),u1_struct_0(A))
                        & m2_relset_1(E,u1_struct_0(B),u1_struct_0(A)) )
                     => k4_rmod_4(A,B,k8_finseq_1(u1_struct_0(B),C,D),E) = k8_finseq_1(u1_struct_0(B),k4_rmod_4(A,B,C,E),k4_rmod_4(A,B,D,E)) ) ) ) ) ) ).

fof(d9_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( D = k5_rmod_4(A,B,C)
                  <=> ? [E] :
                        ( m2_finseq_1(E,u1_struct_0(B))
                        & v2_funct_1(E)
                        & k2_relat_1(E) = k2_rmod_4(A,B,C)
                        & D = k9_rlvect_1(B,k4_rmod_4(A,B,E,C)) ) ) ) ) ) ) ).

fof(t38_rmod_4,axiom,
    $true ).

fof(t39_rmod_4,axiom,
    $true ).

fof(t40_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( k1_rlvect_1(A) != k2_group_1(A)
               => ( ( C != k1_xboole_0
                    & v1_rmod_2(C,A,B) )
                <=> ! [D] :
                      ( m2_rmod_4(D,A,B,C)
                     => r2_hidden(k5_rmod_4(A,B,D),C) ) ) ) ) ) ) ).

fof(t41_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => k5_rmod_4(A,B,k3_rmod_4(A,B)) = k1_rlvect_1(B) ) ) ).

fof(t42_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m2_rmod_4(C,A,B,k1_subset_1(u1_struct_0(B)))
             => k5_rmod_4(A,B,C) = k1_rlvect_1(B) ) ) ) ).

fof(t43_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m2_rmod_4(D,A,B,k7_rlvect_2(B,C))
                 => k5_rmod_4(A,B,D) = k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,C),C) ) ) ) ) ).

fof(t44_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ( C != D
                   => ! [E] :
                        ( m2_rmod_4(E,A,B,k8_rlvect_2(B,C,D))
                       => k5_rmod_4(A,B,E) = k4_rlvect_1(B,k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,C),C),k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,D),D)) ) ) ) ) ) ) ).

fof(t45_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ( k2_rmod_4(A,B,C) = k1_xboole_0
               => k5_rmod_4(A,B,C) = k1_rlvect_1(B) ) ) ) ) ).

fof(t46_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ( k2_rmod_4(A,B,D) = k7_rlvect_2(B,C)
                   => k5_rmod_4(A,B,D) = k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,C),C) ) ) ) ) ) ).

fof(t47_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(B))
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => ( k2_rmod_4(A,B,E) = k8_rlvect_2(B,C,D)
                       => ( C = D
                          | k5_rmod_4(A,B,E) = k4_rlvect_1(B,k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,C),C),k6_vectsp_2(A,B,k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,D),D)) ) ) ) ) ) ) ) ).

fof(d10_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ( r1_rmod_4(A,B,C,D)
                  <=> ! [E] :
                        ( m1_subset_1(E,u1_struct_0(B))
                       => k8_funct_2(u1_struct_0(B),u1_struct_0(A),C,E) = k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,E) ) ) ) ) ) ) ).

fof(d11_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => ( E = k6_rmod_4(A,B,C,D)
                      <=> ! [F] :
                            ( m1_subset_1(F,u1_struct_0(B))
                           => k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,F) = k4_rlvect_1(A,k8_funct_2(u1_struct_0(B),u1_struct_0(A),C,F),k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,F)) ) ) ) ) ) ) ) ).

fof(t48_rmod_4,axiom,
    $true ).

fof(t49_rmod_4,axiom,
    $true ).

fof(t50_rmod_4,axiom,
    $true ).

fof(t51_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => r1_tarski(k2_rmod_4(A,B,k6_rmod_4(A,B,C,D)),k2_rlvect_2(B,k2_rmod_4(A,B,C),k2_rmod_4(A,B,D))) ) ) ) ) ).

fof(t52_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => ( ( m2_rmod_4(D,A,B,C)
                          & m2_rmod_4(E,A,B,C) )
                       => m2_rmod_4(k6_rmod_4(A,B,D,E),A,B,C) ) ) ) ) ) ) ).

fof(t53_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => r1_rmod_4(A,B,k6_rmod_4(A,B,C,D),k6_rmod_4(A,B,D,C)) ) ) ) ) ).

fof(t54_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => r1_rmod_4(A,B,k6_rmod_4(A,B,C,k6_rmod_4(A,B,D,E)),k6_rmod_4(A,B,k6_rmod_4(A,B,C,D),E)) ) ) ) ) ) ).

fof(t55_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ( r1_rmod_4(A,B,k6_rmod_4(A,B,C,k3_rmod_4(A,B)),C)
                & r1_rmod_4(A,B,k6_rmod_4(A,B,k3_rmod_4(A,B),C),C) ) ) ) ) ).

fof(d12_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => ( E = k7_rmod_4(A,B,C,D)
                      <=> ! [F] :
                            ( m1_subset_1(F,u1_struct_0(B))
                           => k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,F) = k1_group_1(A,k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,F),C) ) ) ) ) ) ) ) ).

fof(t56_rmod_4,axiom,
    $true ).

fof(t57_rmod_4,axiom,
    $true ).

fof(t58_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => r1_tarski(k2_rmod_4(A,B,k7_rmod_4(A,B,C,D)),k2_rmod_4(A,B,D)) ) ) ) ) ).

fof(t59_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & v2_vectsp_2(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ( D != k1_rlvect_1(A)
                   => k2_rmod_4(A,B,k7_rmod_4(A,B,D,C)) = k2_rmod_4(A,B,C) ) ) ) ) ) ).

fof(t60_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => r1_rmod_4(A,B,k7_rmod_4(A,B,k1_rlvect_1(A),C),k3_rmod_4(A,B)) ) ) ) ).

fof(t61_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => ( m2_rmod_4(E,A,B,D)
                       => m2_rmod_4(k7_rmod_4(A,B,C,E),A,B,D) ) ) ) ) ) ) ).

fof(t62_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => r1_rmod_4(A,B,k7_rmod_4(A,B,k4_rlvect_1(A,C,D),E),k6_rmod_4(A,B,k7_rmod_4(A,B,C,E),k7_rmod_4(A,B,D,E))) ) ) ) ) ) ).

fof(t63_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => r1_rmod_4(A,B,k7_rmod_4(A,B,C,k6_rmod_4(A,B,D,E)),k6_rmod_4(A,B,k7_rmod_4(A,B,C,D),k7_rmod_4(A,B,C,E))) ) ) ) ) ) ).

fof(t64_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => r1_rmod_4(A,B,k7_rmod_4(A,B,D,k7_rmod_4(A,B,C,E)),k7_rmod_4(A,B,k1_group_1(A,C,D),E)) ) ) ) ) ) ).

fof(t65_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => r1_rmod_4(A,B,k7_rmod_4(A,B,k2_group_1(A),C),C) ) ) ) ).

fof(d13_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => k8_rmod_4(A,B,C) = k7_rmod_4(A,B,k5_rlvect_1(A,k2_group_1(A)),C) ) ) ) ).

fof(t66_rmod_4,axiom,
    $true ).

fof(t67_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => k8_funct_2(u1_struct_0(B),u1_struct_0(A),k8_rmod_4(A,B,D),C) = k5_rlvect_1(A,k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,C)) ) ) ) ) ).

fof(t68_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ( r1_rmod_4(A,B,k6_rmod_4(A,B,C,D),k3_rmod_4(A,B))
                   => r1_rmod_4(A,B,D,k8_rmod_4(A,B,C)) ) ) ) ) ) ).

fof(t69_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => k2_rmod_4(A,B,k8_rmod_4(A,B,C)) = k2_rmod_4(A,B,C) ) ) ) ).

fof(t70_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ( m2_rmod_4(D,A,B,C)
                   => m2_rmod_4(k8_rmod_4(A,B,D),A,B,C) ) ) ) ) ) ).

fof(d14_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => k9_rmod_4(A,B,C,D) = k6_rmod_4(A,B,C,k8_rmod_4(A,B,D)) ) ) ) ) ).

fof(t71_rmod_4,axiom,
    $true ).

fof(t72_rmod_4,axiom,
    $true ).

fof(t73_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => k8_funct_2(u1_struct_0(B),u1_struct_0(A),k9_rmod_4(A,B,D,E),C) = k6_rlvect_1(A,k8_funct_2(u1_struct_0(B),u1_struct_0(A),D,C),k8_funct_2(u1_struct_0(B),u1_struct_0(A),E,C)) ) ) ) ) ) ).

fof(t74_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => r1_tarski(k2_rmod_4(A,B,k9_rmod_4(A,B,C,D)),k2_rlvect_2(B,k2_rmod_4(A,B,C),k2_rmod_4(A,B,D))) ) ) ) ) ).

fof(t75_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => ! [E] :
                      ( m1_rmod_4(E,A,B)
                     => ( ( m2_rmod_4(D,A,B,C)
                          & m2_rmod_4(E,A,B,C) )
                       => m2_rmod_4(k9_rmod_4(A,B,D,E),A,B,C) ) ) ) ) ) ) ).

fof(t76_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => r1_rmod_4(A,B,k9_rmod_4(A,B,C,C),k3_rmod_4(A,B)) ) ) ) ).

fof(t77_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => k5_rmod_4(A,B,k6_rmod_4(A,B,C,D)) = k4_rlvect_1(B,k5_rmod_4(A,B,C),k5_rmod_4(A,B,D)) ) ) ) ) ).

fof(t78_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & v2_vectsp_2(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_subset_1(D,u1_struct_0(A))
                 => k5_rmod_4(A,B,k7_rmod_4(A,B,D,C)) = k6_vectsp_2(A,B,D,k5_rmod_4(A,B,C)) ) ) ) ) ).

fof(t79_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & v2_vectsp_2(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => k5_rmod_4(A,B,k8_rmod_4(A,B,C)) = k5_rlvect_1(B,k5_rmod_4(A,B,C)) ) ) ) ).

fof(t80_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & v2_vectsp_2(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => ! [D] :
                  ( m1_rmod_4(D,A,B)
                 => k5_rmod_4(A,B,k9_rmod_4(A,B,C,D)) = k6_rlvect_1(B,k5_rmod_4(A,B,C),k5_rmod_4(A,B,D)) ) ) ) ) ).

fof(dt_m1_rmod_4,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ! [C] :
          ( m1_rmod_4(C,A,B)
         => m2_fraenkel(C,u1_struct_0(B),u1_struct_0(A),k1_fraenkel(u1_struct_0(B),u1_struct_0(A))) ) ) ).

fof(existence_m1_rmod_4,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => ? [C] : m1_rmod_4(C,A,B) ) ).

fof(dt_m2_rmod_4,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ! [D] :
          ( m2_rmod_4(D,A,B,C)
         => m1_rmod_4(D,A,B) ) ) ).

fof(existence_m2_rmod_4,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ? [D] : m2_rmod_4(D,A,B,C) ) ).

fof(symmetry_r1_rmod_4,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B)
        & m1_rmod_4(D,A,B) )
     => ( r1_rmod_4(A,B,C,D)
       => r1_rmod_4(A,B,D,C) ) ) ).

fof(reflexivity_r1_rmod_4,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B)
        & m1_rmod_4(D,A,B) )
     => r1_rmod_4(A,B,C,C) ) ).

fof(redefinition_r1_rmod_4,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B)
        & m1_rmod_4(D,A,B) )
     => ( r1_rmod_4(A,B,C,D)
      <=> C = D ) ) ).

fof(dt_k1_rmod_4,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & v1_finset_1(C)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => m1_subset_1(k1_rmod_4(A,B,C),u1_struct_0(B)) ) ).

fof(dt_k2_rmod_4,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B) )
     => ( v1_finset_1(k2_rmod_4(A,B,C))
        & m1_subset_1(k2_rmod_4(A,B,C),k1_zfmisc_1(u1_struct_0(B))) ) ) ).

fof(dt_k3_rmod_4,axiom,
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A) )
     => m1_rmod_4(k3_rmod_4(A,B),A,B) ) ).

fof(dt_k4_rmod_4,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_finseq_1(C,u1_struct_0(B))
        & v1_funct_1(D)
        & v1_funct_2(D,u1_struct_0(B),u1_struct_0(A))
        & m1_relset_1(D,u1_struct_0(B),u1_struct_0(A)) )
     => m2_finseq_1(k4_rmod_4(A,B,C,D),u1_struct_0(B)) ) ).

fof(dt_k5_rmod_4,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B) )
     => m1_subset_1(k5_rmod_4(A,B,C),u1_struct_0(B)) ) ).

fof(dt_k6_rmod_4,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B)
        & m1_rmod_4(D,A,B) )
     => m1_rmod_4(k6_rmod_4(A,B,C,D),A,B) ) ).

fof(dt_k7_rmod_4,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_subset_1(C,u1_struct_0(A))
        & m1_rmod_4(D,A,B) )
     => m1_rmod_4(k7_rmod_4(A,B,C,D),A,B) ) ).

fof(dt_k8_rmod_4,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B) )
     => m1_rmod_4(k8_rmod_4(A,B,C),A,B) ) ).

fof(involutiveness_k8_rmod_4,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B) )
     => k8_rmod_4(A,B,k8_rmod_4(A,B,C)) = C ) ).

fof(dt_k9_rmod_4,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_rmod_4(C,A,B)
        & m1_rmod_4(D,A,B) )
     => m1_rmod_4(k9_rmod_4(A,B,C,D),A,B) ) ).

fof(d5_rmod_4,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_rmod_4(C,A,B)
             => k2_rmod_4(A,B,C) = a_3_0_rmod_4(A,B,C) ) ) ) ).

fof(fraenkel_a_3_0_rmod_4,axiom,
    ! [A,B,C,D] :
      ( ( ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v4_group_1(B)
        & v6_vectsp_1(B)
        & v7_vectsp_1(B)
        & v8_vectsp_1(B)
        & l3_vectsp_1(B)
        & ~ v3_struct_0(C)
        & v3_rlvect_1(C)
        & v4_rlvect_1(C)
        & v5_rlvect_1(C)
        & v6_rlvect_1(C)
        & v5_vectsp_2(C,B)
        & l1_vectsp_2(C,B)
        & m1_rmod_4(D,B,C) )
     => ( r2_hidden(A,a_3_0_rmod_4(B,C,D))
      <=> ? [E] :
            ( m1_subset_1(E,u1_struct_0(C))
            & A = E
            & k8_funct_2(u1_struct_0(C),u1_struct_0(B),D,E) != k1_rlvect_1(B) ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(dt_k1_rmod_5,axiom,
    ! [A,B,C] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v7_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & ~ v10_vectsp_1(A)
        & v2_vectsp_2(A)
        & l3_vectsp_1(A)
        & ~ v3_struct_0(B)
        & v3_rlvect_1(B)
        & v4_rlvect_1(B)
        & v5_rlvect_1(B)
        & v6_rlvect_1(B)
        & v5_vectsp_2(B,A)
        & l1_vectsp_2(B,A)
        & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B))) )
     => ( v3_vectsp_2(k1_rmod_5(A,B,C),A)
        & m1_rmod_2(k1_rmod_5(A,B,C),A,B) ) ) ).

fof(d1_rmod_5,axiom,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ( v1_rmod_5(C,A,B)
              <=> ! [D] :
                    ( m2_rmod_4(D,A,B,C)
                   => ( k5_rmod_4(A,B,D) = k1_rlvect_1(B)
                     => k2_rmod_4(A,B,D) = k1_xboole_0 ) ) ) ) ) ) ).

fof(t1_rmod_5,axiom,
    $true ).

fof(t2_rmod_5,conjecture,
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v3_rlvect_1(A)
        & v4_rlvect_1(A)
        & v5_rlvect_1(A)
        & v6_rlvect_1(A)
        & v4_group_1(A)
        & v6_vectsp_1(A)
        & v7_vectsp_1(A)
        & v8_vectsp_1(A)
        & l3_vectsp_1(A) )
     => ! [B] :
          ( ( ~ v3_struct_0(B)
            & v3_rlvect_1(B)
            & v4_rlvect_1(B)
            & v5_rlvect_1(B)
            & v6_rlvect_1(B)
            & v5_vectsp_2(B,A)
            & l1_vectsp_2(B,A) )
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
             => ! [D] :
                  ( m1_subset_1(D,k1_zfmisc_1(u1_struct_0(B)))
                 => ( ( r1_tarski(C,D)
                      & v1_rmod_5(D,A,B) )
                   => v1_rmod_5(C,A,B) ) ) ) ) ) ).

%------------------------------------------------------------------------------
