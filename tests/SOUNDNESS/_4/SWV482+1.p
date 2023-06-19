%------------------------------------------------------------------------------
% File     : SWV482+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Software Verification (Security)
% Problem  : PKCS11 for 2 handles and 2 keys
% Version  : [Ste09] axioms : Especial.
% English  : Attempts to prove that the intruder can learn the cleartext value
%            of a sensitive key in a paricular configuration of PKCS11.

% Refs     : [DKS08] Delaune et al. (2008), Formal Analysis of PKCS#11
%          : [Ste09] Steel (2009), Email to Geoff Sutcliffe
% Source   : [Ste09]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.25 v7.5.0, 0.40 v7.4.0, 0.33 v7.3.0, 0.00 v7.0.0, 0.67 v6.4.0, 0.00 v6.3.0, 0.33 v6.2.0, 0.64 v6.0.0, 0.46 v5.5.0, 0.62 v5.4.0, 0.57 v5.3.0, 0.43 v5.2.0, 0.50 v5.0.0, 0.57 v4.1.0, 0.60 v4.0.0
% Syntax   : Number of formulae    :   39 (   2 unt;   0 def)
%            Number of atoms       :  115 (  40 equ)
%            Maximal formula atoms :   41 (   2 avg)
%            Number of connectives :   76 (   0   ~;   0   |;  19   &)
%                                         (   0 <=>;  37  =>;   0  <=;  20 <~>)
%            Maximal formula depth :   43 (  23 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    7 (   7 usr;   2 con; 0-7 aty)
%            Number of variables   :  802 ( 798   !;   4   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(initial_state,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] : p(state(h(n1,n0,n0,n0,n0,n0,n1),h(n1,n0,n0,n0,n0,n0,n0)),iknows(atoms(n0,n0),enc(n0,n0,n0,n0))) ).

%----Wrap sym=sym for hn1k1 hn1k1
fof(wrap_hn1k1_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,n1,X1,X2,X3,X4,n1),X6),iknows(X7,enc(n0,X9,X10,X11)))
     => p(state(h(n1,n1,X1,X2,X3,X4,n1),X6),iknows(X7,enc(n1,X9,X10,X11))) ) ).

%----Wrap sym=sym for hn1k1 hn1k2
fof(wrap_hn1k1_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,n1,X1,X2,X3,X4,X5),h(n1,X6,X7,X8,X9,X10,n1)),iknows(X12,enc(X13,X14,n0,X16)))
     => p(state(h(n1,n1,X1,X2,X3,X4,X5),h(n1,X6,X7,X8,X9,X10,n1)),iknows(X12,enc(X13,X14,n1,X16))) ) ).

%----Wrap sym=sym for hn1k2 hn1k1
fof(wrap_hn1k2_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,X1,X2,X3,X4,n1),h(n1,n1,X7,X8,X9,X10,X11)),iknows(X12,enc(X13,n0,X15,X16)))
     => p(state(h(n1,X0,X1,X2,X3,X4,n1),h(n1,n1,X7,X8,X9,X10,X11)),iknows(X12,enc(X13,n1,X15,X16))) ) ).

%----Wrap sym=sym for hn1k2 hn1k2
fof(wrap_hn1k2_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,n1,X2,X3,X4,X5,n1)),iknows(X7,enc(X8,X9,X10,n0)))
     => p(state(X0,h(n1,n1,X2,X3,X4,X5,n1)),iknows(X7,enc(X8,X9,X10,n1))) ) ).

%----Unwrap sym=sym for hn1k1 hn1k1
fof(unwrap_hn1k1_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,n1,X2,X3,X4,X5),X6),iknows(X7,enc(n1,X9,X10,X11)))
     => p(state(h(n1,X0,n1,X2,X3,X4,n1),X6),iknows(X7,enc(n1,X9,X10,X11))) ) ).

%----Unwrap sym=sym for hn1k1 hn1k2
fof(unwrap_hn1k1_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,n1,X2,X3,X4,X5),h(n0,X6,X7,X8,X9,X10,X11)),iknows(X12,enc(X13,X14,n1,X16)))
     => p(state(h(n1,X0,n1,X2,X3,X4,X5),h(n1,X6,X7,X8,X9,X10,n1)),iknows(X12,enc(X13,X14,n1,X16))) ) ).

%----Unwrap sym=sym for hn1k2 hn1k1
fof(unwrap_hn1k2_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n0,X0,X1,X2,X3,X4,X5),h(n1,X6,n1,X8,X9,X10,X11)),iknows(X12,enc(X13,n1,X15,X16)))
     => p(state(h(n1,X0,X1,X2,X3,X4,n1),h(n1,X6,n1,X8,X9,X10,X11)),iknows(X12,enc(X13,n1,X15,X16))) ) ).

%----Unwrap sym=sym for hn1k2 hn1k2
fof(unwrap_hn1k2_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,X1,n1,X3,X4,X5,X6)),iknows(X7,enc(X8,X9,X10,n1)))
     => p(state(X0,h(n1,X1,n1,X3,X4,X5,n1)),iknows(X7,enc(X8,X9,X10,n1))) ) ).

%----Set attribute for hn1k1 wrap
fof(set_attr_hn1k1_wrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,n0,n0,X2,n0,X4,X5),X6),X7)
     => p(state(h(n1,n1,n0,X2,n0,X4,X5),X6),X7) ) ).

%----Set attribute for hn1k1 unwrap
fof(set_attr_hn1k1_unwrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,n0,n0,n0,X3,X4,X5),X6),X7)
     => p(state(h(n1,n0,n1,n0,X3,X4,X5),X6),X7) ) ).

%----Set attribute for hn1k1 encrypt
fof(set_attr_hn1k1_encrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,n0,n0,n0,X3,X4,X5),X6),X7)
     => p(state(h(n1,n0,n0,n1,X3,X4,X5),X6),X7) ) ).

%----Set attribute for hn1k1 decrypt
fof(set_attr_hn1k1_decrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,n0,X1,X2,n0,X4,X5),X6),X7)
     => p(state(h(n1,n0,X1,X2,n1,X4,X5),X6),X7) ) ).

%----Set attribute for hn1k1 sensitive
fof(set_attr_hn1k1_sensitive_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,X1,X2,X3,n0,X5),X6),X7)
     => p(state(h(n1,X0,X1,X2,X3,n1,X5),X6),X7) ) ).

%----Set attribute for hn1k2 wrap
fof(set_attr_hn1k2_wrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,n0,n0,X3,n0,X5,X6)),X7)
     => p(state(X0,h(n1,n1,n0,X3,n0,X5,X6)),X7) ) ).

%----Set attribute for hn1k2 unwrap
fof(set_attr_hn1k2_unwrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,n0,n0,n0,X4,X5,X6)),X7)
     => p(state(X0,h(n1,n0,n1,n0,X4,X5,X6)),X7) ) ).

%----Set attribute for hn1k2 encrypt
fof(set_attr_hn1k2_encrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,n0,n0,n0,X4,X5,X6)),X7)
     => p(state(X0,h(n1,n0,n0,n1,X4,X5,X6)),X7) ) ).

%----Set attribute for hn1k2 decrypt
fof(set_attr_hn1k2_decrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,n0,X2,X3,n0,X5,X6)),X7)
     => p(state(X0,h(n1,n0,X2,X3,n1,X5,X6)),X7) ) ).

%----Set attribute for hn1k2 sensitive
fof(set_attr_hn1k2_sensitive_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,X1,X2,X3,X4,n0,X6)),X7)
     => p(state(X0,h(n1,X1,X2,X3,X4,n1,X6)),X7) ) ).

%----Unset attribute for hn1k1 extractable
fof(set_attr_hn1k1_extractable_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,X1,X2,X3,X4,n1),X6),X7)
     => p(state(h(n1,X0,X1,X2,X3,X4,n0),X6),X7) ) ).

%----Unset attribute for hn1k2 extractable
fof(set_attr_hn1k2_extractable_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,X1,X2,X3,X4,X5,n1)),X7)
     => p(state(X0,h(n1,X1,X2,X3,X4,X5,n0)),X7) ) ).

%----Decrypt hn1k1 k1Enck1
fof(decrypt_hn1k1_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,X1,X2,n1,X4,X5),X6),iknows(atoms(n0,X8),enc(n1,X10,X11,X12)))
     => p(state(h(n1,X0,X1,X2,n1,X4,X5),X6),iknows(atoms(n1,X8),enc(n1,X10,X11,X12))) ) ).

%----Decrypt hn1k1 k2Enck1
fof(decrypt_hn1k1_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,X1,X2,n1,X4,X5),X6),iknows(atoms(X7,n0),enc(X9,X10,n1,X12)))
     => p(state(h(n1,X0,X1,X2,n1,X4,X5),X6),iknows(atoms(X7,n1),enc(X9,X10,n1,X12))) ) ).

%----Decrypt hn1k2 k1Enck2
fof(decrypt_hn1k2_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,X1,X2,X3,n1,X5,X6)),iknows(atoms(n0,X8),enc(X9,n1,X11,X12)))
     => p(state(X0,h(n1,X1,X2,X3,n1,X5,X6)),iknows(atoms(n1,X8),enc(X9,n1,X11,X12))) ) ).

%----Decrypt hn1k2 k2Enck2
fof(decrypt_hn1k2_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,X1,X2,X3,n1,X5,X6)),iknows(atoms(X7,n0),enc(X9,X10,X11,n1)))
     => p(state(X0,h(n1,X1,X2,X3,n1,X5,X6)),iknows(atoms(X7,n1),enc(X9,X10,X11,n1))) ) ).

%----Encrypt hn1k1 k1Enck1
fof(encrypt_hn1k1_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,X1,n1,X3,X4,X5),X6),iknows(atoms(n1,X8),enc(n0,X10,X11,X12)))
     => p(state(h(n1,X0,X1,n1,X3,X4,X5),X6),iknows(atoms(n1,X8),enc(n1,X10,X11,X12))) ) ).

%----Encrypt hn1k1 k2Enck1
fof(encrypt_hn1k1_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(n1,X0,X1,n1,X3,X4,X5),X6),iknows(atoms(X7,n1),enc(X9,X10,n0,X12)))
     => p(state(h(n1,X0,X1,n1,X3,X4,X5),X6),iknows(atoms(X7,n1),enc(X9,X10,n1,X12))) ) ).

%----Encrypt hn1k2 k1Enck2
fof(encrypt_hn1k2_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,X1,X2,n1,X4,X5,X6)),iknows(atoms(n1,X8),enc(X9,n0,X11,X12)))
     => p(state(X0,h(n1,X1,X2,n1,X4,X5,X6)),iknows(atoms(n1,X8),enc(X9,n1,X11,X12))) ) ).

%----Encrypt hn1k2 k2Enck2
fof(encrypt_hn1k2_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,h(n1,X1,X2,n1,X4,X5,X6)),iknows(atoms(X7,n1),enc(X9,X10,X11,n0)))
     => p(state(X0,h(n1,X1,X2,n1,X4,X5,X6)),iknows(atoms(X7,n1),enc(X9,X10,X11,n1))) ) ).

%----Intruder encrypt k1Enck1
fof(encrypt_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,X1),iknows(atoms(n1,X3),enc(n0,X5,X6,X7)))
     => p(state(X0,X1),iknows(atoms(n1,X3),enc(n1,X5,X6,X7))) ) ).

%----Intruder encrypt k2Enck1
fof(encrypt_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,X1),iknows(atoms(n1,n1),enc(X4,X5,n0,X7)))
     => p(state(X0,X1),iknows(atoms(n1,n1),enc(X4,X5,n1,X7))) ) ).

%----Intruder encrypt k1Enck2
fof(encrypt_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,X1),iknows(atoms(n1,n1),enc(X4,n0,X6,X7)))
     => p(state(X0,X1),iknows(atoms(n1,n1),enc(X4,n1,X6,X7))) ) ).

%----Intruder encrypt k2Enck2
fof(encrypt_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,X1),iknows(atoms(X2,n1),enc(X4,X5,X6,n0)))
     => p(state(X0,X1),iknows(atoms(X2,n1),enc(X4,X5,X6,n1))) ) ).

%----Intruder decrypt k1Enck1
fof(intruder_decrypt_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,X1),iknows(atoms(n1,X3),enc(n1,X5,X6,X7)))
     => p(state(X0,X1),iknows(atoms(n1,X3),enc(n1,X5,X6,X7))) ) ).

%----Intruder decrypt k2Enck1
fof(intruder_decrypt_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,X1),iknows(atoms(n1,n0),enc(X4,X5,n1,X7)))
     => p(state(X0,X1),iknows(atoms(X2,n1),enc(X4,X5,n1,X7))) ) ).

%----Intruder decrypt k1Enck2
fof(intruder_decrypt_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,X1),iknows(atoms(n0,n1),enc(X4,n1,X6,X7)))
     => p(state(X0,X1),iknows(atoms(n1,X3),enc(X4,n1,X6,X7))) ) ).

%----Intruder decrypt k2Enck2
fof(intruder_decrypt_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(X0,X1),iknows(atoms(X2,n1),enc(X4,X5,X6,n1)))
     => p(state(X0,X1),iknows(atoms(X2,n1),enc(X4,X5,X6,n1))) ) ).

%----Domain constraints
fof(domain_constraints,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20] :
      ( p(state(h(X0,X1,X2,X3,X4,X5,X6),h(X7,X8,X9,X10,X11,X12,X13)),iknows(atoms(X14,X15),enc(X16,X17,X18,X19)))
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
    ? [X,Y,X1,X2] : p(X,iknows(atoms(n1,X1),Y)) ).

%------------------------------------------------------------------------------
