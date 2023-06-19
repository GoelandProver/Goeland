%------------------------------------------------------------------------------
% File     : SWV482+2 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Software Verification (Security)
% Problem  : PKCS11 for 2 handles and 2 keys
% Version  : Especial.
%          : Theorem formulation flattened to obviously EPR.
% English  : Attempts to prove that the intruder can learn the cleartext value
%            of a sensitive key in a paricular configuration of PKCS11.

% Refs     : [DKS08] Delaune et al. (2008), Formal Analysis of PKCS#11
%          : [Ste09] Steel (2009), Email to Geoff Sutcliffe
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.3.0, 0.25 v6.2.0, 0.14 v6.1.0, 0.33 v5.5.0, 0.20 v5.3.0, 0.00 v4.1.0, 0.40 v4.0.1, 0.20 v4.0.0
% Syntax   : Number of formulae    :   39 (   2 unt;   0 def)
%            Number of atoms       :  115 (  40 equ)
%            Maximal formula atoms :   41 (   2 avg)
%            Number of connectives :   76 (   0   ~;   0   |;  19   &)
%                                         (   0 <=>;  37  =>;   0  <=;  20 <~>)
%            Maximal formula depth :   42 (  19 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-20 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :  639 ( 620   !;  19   ?)
% SPC      : FOF_CSA_EPR_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(initial_state,axiom,
    p(n1,n0,n0,n0,n0,n0,n1,n1,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0) ).

fof(wrap_hn1k1_hn1k1_command,axiom,
    ! [X11,X10,X9,A,B,C,D,E,F,G,H,I,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,n1,I,H,G,F,E,D,C,B,A,n0,X9,X10,X11)
     => p(n1,n1,X1,X2,X3,X4,n1,I,H,G,F,E,D,C,B,A,n1,X9,X10,X11) ) ).

fof(wrap_hn1k1_hn1k2_command,axiom,
    ! [X16,X14,X13,A,B,X10,X9,X8,X7,X6,X5,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,B,A,X13,X14,n0,X16)
     => p(n1,n1,X1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,B,A,X13,X14,n1,X16) ) ).

fof(wrap_hn1k2_hn1k1_command,axiom,
    ! [X16,X15,X13,A,B,X11,X10,X9,X8,X7,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,n1,n1,X7,X8,X9,X10,X11,B,A,X13,n0,X15,X16)
     => p(n1,X0,X1,X2,X3,X4,n1,n1,n1,X7,X8,X9,X10,X11,B,A,X13,n1,X15,X16) ) ).

fof(wrap_hn1k2_hn1k2_command,axiom,
    ! [X10,X9,X8,A,B,X5,X4,X3,X2,C,D,E,F,G,H,I] :
      ( p(I,H,G,F,E,D,C,n1,n1,X2,X3,X4,X5,n1,B,A,X8,X9,X10,n0)
     => p(I,H,G,F,E,D,C,n1,n1,X2,X3,X4,X5,n1,B,A,X8,X9,X10,n1) ) ).

fof(unwrap_hn1k1_hn1k1_command,axiom,
    ! [X11,X10,X9,A,B,C,D,E,F,G,H,I,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,I,H,G,F,E,D,C,B,A,n1,X9,X10,X11)
     => p(n1,X0,n1,X2,X3,X4,n1,I,H,G,F,E,D,C,B,A,n1,X9,X10,X11) ) ).

fof(unwrap_hn1k1_hn1k2_command,axiom,
    ! [X16,X14,X13,A,B,X11,X10,X9,X8,X7,X6,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,n0,X6,X7,X8,X9,X10,X11,B,A,X13,X14,n1,X16)
     => p(n1,X0,n1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,B,A,X13,X14,n1,X16) ) ).

fof(unwrap_hn1k2_hn1k1_command,axiom,
    ! [X16,X15,X13,A,B,X11,X10,X9,X8,X6,X5,X4,X3,X2,X1,X0] :
      ( p(n0,X0,X1,X2,X3,X4,X5,n1,X6,n1,X8,X9,X10,X11,B,A,X13,n1,X15,X16)
     => p(n1,X0,X1,X2,X3,X4,n1,n1,X6,n1,X8,X9,X10,X11,B,A,X13,n1,X15,X16) ) ).

fof(unwrap_hn1k2_hn1k2_command,axiom,
    ! [X10,X9,X8,A,B,X6,X5,X4,X3,X1,C,D,E,F,G,H,I] :
      ( p(I,H,G,F,E,D,C,n1,X1,n1,X3,X4,X5,X6,B,A,X8,X9,X10,n1)
     => p(I,H,G,F,E,D,C,n1,X1,n1,X3,X4,X5,n1,B,A,X8,X9,X10,n1) ) ).

fof(set_attr_hn1k1_wrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X5,X4,X2] :
      ( p(n1,n0,n0,X2,n0,X4,X5,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n1,n0,X2,n0,X4,X5,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_unwrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X5,X4,X3] :
      ( p(n1,n0,n0,n0,X3,X4,X5,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,n1,n0,X3,X4,X5,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_encrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X5,X4,X3] :
      ( p(n1,n0,n0,n0,X3,X4,X5,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,n0,n1,X3,X4,X5,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_decrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X5,X4,X2,X1] :
      ( p(n1,n0,X1,X2,n0,X4,X5,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,X1,X2,n1,X4,X5,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_sensitive_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X5,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,n0,X5,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,X0,X1,X2,X3,n1,X5,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_wrap_command,axiom,
    ! [A,B,C,D,E,F,X6,X5,X3,G,H,I,J,K,L,M] :
      ( p(M,L,K,J,I,H,G,n1,n0,n0,X3,n0,X5,X6,F,E,D,C,B,A)
     => p(M,L,K,J,I,H,G,n1,n1,n0,X3,n0,X5,X6,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_unwrap_command,axiom,
    ! [A,B,C,D,E,F,X6,X5,X4,G,H,I,J,K,L,M] :
      ( p(M,L,K,J,I,H,G,n1,n0,n0,n0,X4,X5,X6,F,E,D,C,B,A)
     => p(M,L,K,J,I,H,G,n1,n0,n1,n0,X4,X5,X6,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_encrypt_command,axiom,
    ! [A,B,C,D,E,F,X6,X5,X4,G,H,I,J,K,L,M] :
      ( p(M,L,K,J,I,H,G,n1,n0,n0,n0,X4,X5,X6,F,E,D,C,B,A)
     => p(M,L,K,J,I,H,G,n1,n0,n0,n1,X4,X5,X6,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_decrypt_command,axiom,
    ! [A,B,C,D,E,F,X6,X5,X3,X2,G,H,I,J,K,L,M] :
      ( p(M,L,K,J,I,H,G,n1,n0,X2,X3,n0,X5,X6,F,E,D,C,B,A)
     => p(M,L,K,J,I,H,G,n1,n0,X2,X3,n1,X5,X6,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_sensitive_command,axiom,
    ! [A,B,C,D,E,F,X6,X4,X3,X2,X1,G,H,I,J,K,L,M] :
      ( p(M,L,K,J,I,H,G,n1,X1,X2,X3,X4,n0,X6,F,E,D,C,B,A)
     => p(M,L,K,J,I,H,G,n1,X1,X2,X3,X4,n1,X6,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_extractable_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,X0,X1,X2,X3,X4,n0,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_extractable_command,axiom,
    ! [A,B,C,D,E,F,X5,X4,X3,X2,X1,G,H,I,J,K,L,M] :
      ( p(M,L,K,J,I,H,G,n1,X1,X2,X3,X4,X5,n1,F,E,D,C,B,A)
     => p(M,L,K,J,I,H,G,n1,X1,X2,X3,X4,X5,n0,F,E,D,C,B,A) ) ).

fof(decrypt_hn1k1_k1Enck1_command,axiom,
    ! [X12,X11,X10,X8,A,B,C,D,E,F,G,X5,X4,X2,X1,X0] :
      ( p(n1,X0,X1,X2,n1,X4,X5,G,F,E,D,C,B,A,n0,X8,n1,X10,X11,X12)
     => p(n1,X0,X1,X2,n1,X4,X5,G,F,E,D,C,B,A,n1,X8,n1,X10,X11,X12) ) ).

fof(decrypt_hn1k1_k2Enck1_command,axiom,
    ! [X12,X10,X9,X7,A,B,C,D,E,F,G,X5,X4,X2,X1,X0] :
      ( p(n1,X0,X1,X2,n1,X4,X5,G,F,E,D,C,B,A,X7,n0,X9,X10,n1,X12)
     => p(n1,X0,X1,X2,n1,X4,X5,G,F,E,D,C,B,A,X7,n1,X9,X10,n1,X12) ) ).

fof(decrypt_hn1k2_k1Enck2_command,axiom,
    ! [X12,X11,X9,X8,X6,X5,X3,X2,X1,A,B,C,D,E,F,G] :
      ( p(G,F,E,D,C,B,A,n1,X1,X2,X3,n1,X5,X6,n0,X8,X9,n1,X11,X12)
     => p(G,F,E,D,C,B,A,n1,X1,X2,X3,n1,X5,X6,n1,X8,X9,n1,X11,X12) ) ).

fof(decrypt_hn1k2_k2Enck2_command,axiom,
    ! [X11,X10,X9,X7,X6,X5,X3,X2,X1,A,B,C,D,E,F,G] :
      ( p(G,F,E,D,C,B,A,n1,X1,X2,X3,n1,X5,X6,X7,n0,X9,X10,X11,n1)
     => p(G,F,E,D,C,B,A,n1,X1,X2,X3,n1,X5,X6,X7,n1,X9,X10,X11,n1) ) ).

fof(encrypt_hn1k1_k1Enck1_command,axiom,
    ! [X12,X11,X10,X8,A,B,C,D,E,F,G,X5,X4,X3,X1,X0] :
      ( p(n1,X0,X1,n1,X3,X4,X5,G,F,E,D,C,B,A,n1,X8,n0,X10,X11,X12)
     => p(n1,X0,X1,n1,X3,X4,X5,G,F,E,D,C,B,A,n1,X8,n1,X10,X11,X12) ) ).

fof(encrypt_hn1k1_k2Enck1_command,axiom,
    ! [X12,X10,X9,X7,A,B,C,D,E,F,G,X5,X4,X3,X1,X0] :
      ( p(n1,X0,X1,n1,X3,X4,X5,G,F,E,D,C,B,A,X7,n1,X9,X10,n0,X12)
     => p(n1,X0,X1,n1,X3,X4,X5,G,F,E,D,C,B,A,X7,n1,X9,X10,n1,X12) ) ).

fof(encrypt_hn1k2_k1Enck2_command,axiom,
    ! [X12,X11,X9,X8,X6,X5,X4,X2,X1,A,B,C,D,E,F,G] :
      ( p(G,F,E,D,C,B,A,n1,X1,X2,n1,X4,X5,X6,n1,X8,X9,n0,X11,X12)
     => p(G,F,E,D,C,B,A,n1,X1,X2,n1,X4,X5,X6,n1,X8,X9,n1,X11,X12) ) ).

fof(encrypt_hn1k2_k2Enck2_command,axiom,
    ! [X11,X10,X9,X7,X6,X5,X4,X2,X1,A,B,C,D,E,F,G] :
      ( p(G,F,E,D,C,B,A,n1,X1,X2,n1,X4,X5,X6,X7,n1,X9,X10,X11,n0)
     => p(G,F,E,D,C,B,A,n1,X1,X2,n1,X4,X5,X6,X7,n1,X9,X10,X11,n1) ) ).

fof(encrypt_k1Enck1_command,axiom,
    ! [X7,X6,X5,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,n0,X5,X6,X7)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,n1,X5,X6,X7) ) ).

fof(encrypt_k2Enck1_command,axiom,
    ! [X7,X5,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X4,X5,n0,X7)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X4,X5,n1,X7) ) ).

fof(encrypt_k1Enck2_command,axiom,
    ! [X7,X6,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X4,n0,X6,X7)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X4,n1,X6,X7) ) ).

fof(encrypt_k2Enck2_command,axiom,
    ! [X6,X5,X4,X2,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,X2,n1,X4,X5,X6,n0)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,X2,n1,X4,X5,X6,n1) ) ).

fof(intruder_decrypt_k1Enck1_command,axiom,
    ! [X7,X6,X5,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,n1,X5,X6,X7)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,n1,X5,X6,X7) ) ).

fof(intruder_decrypt_k2Enck1_command,axiom,
    ! [X2,X7,X5,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n0,X4,X5,n1,X7)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,X2,n1,X4,X5,n1,X7) ) ).

fof(intruder_decrypt_k1Enck2_command,axiom,
    ! [X3,X7,X6,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,n1,X4,n1,X6,X7)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,n1,X6,X7) ) ).

fof(intruder_decrypt_k2Enck2_command,axiom,
    ! [X6,X5,X4,X2,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,X2,n1,X4,X5,X6,n1)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,X2,n1,X4,X5,X6,n1) ) ).

fof(domain_constraints,axiom,
    ! [X19,X18,X17,X16,X15,X14,X13,X12,X11,X10,X9,X8,X7,X6,X5,X4,X3,X2,X1,X0] :
      ( p(X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19)
     => ( ( X0 = n1
        <~> X0 = n0 )
        & ( X1 = n1
        <~> X1 = n0 )
        & ( X2 = n1
        <~> X2 = n0 )
        & ( X3 = n1
        <~> X3 = n0 )
        & ( X4 = n1
        <~> X4 = n0 )
        & ( X5 = n1
        <~> X5 = n0 )
        & ( X6 = n1
        <~> X6 = n0 )
        & ( X7 = n1
        <~> X7 = n0 )
        & ( X8 = n1
        <~> X8 = n0 )
        & ( X9 = n1
        <~> X9 = n0 )
        & ( X10 = n1
        <~> X10 = n0 )
        & ( X11 = n1
        <~> X11 = n0 )
        & ( X12 = n1
        <~> X12 = n0 )
        & ( X13 = n1
        <~> X13 = n0 )
        & ( X14 = n1
        <~> X14 = n0 )
        & ( X15 = n1
        <~> X15 = n0 )
        & ( X16 = n1
        <~> X16 = n0 )
        & ( X17 = n1
        <~> X17 = n0 )
        & ( X18 = n1
        <~> X18 = n0 )
        & ( X19 = n1
        <~> X19 = n0 ) ) ) ).

fof(co1,conjecture,
    ? [A,B,C,D,X1,E,F,G,H,I,J,K,L,M,N,O,P,Q,R] : p(R,Q,P,O,N,M,L,K,J,I,H,G,F,E,n1,X1,D,C,B,A) ).

%------------------------------------------------------------------------------
