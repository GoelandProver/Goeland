%------------------------------------------------------------------------------
% File     : SWV483+2 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Software Verification (Security)
% Problem  : PKCS11 for 3 handles and 3 keys
% Version  : Especial.
%          : Theorem formulation flattened to obviously EPR.
% English  : Attempts to prove that the intruder can learn the cleartext value
%            of a sensitive key in a paricular configuration of PKCS11.

% Refs     : [DKS08] Delaune et al. (2008), Formal Analysis of PKCS#11
%          : [Ste09] Steel (2009), Email to Geoff Sutcliffe
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.33 v7.4.0, 0.00 v7.1.0, 0.33 v6.4.0, 0.00 v6.3.0, 0.50 v6.2.0, 0.43 v6.1.0, 0.50 v5.5.0, 0.40 v5.4.0, 0.60 v5.3.0, 0.50 v5.0.0, 0.67 v4.1.0, 0.80 v4.0.1, 1.00 v4.0.0
% Syntax   : Number of formulae    :   75 (   2 unt;   0 def)
%            Number of atoms       :  213 (  66 equ)
%            Maximal formula atoms :   67 (   2 avg)
%            Number of connectives :  138 (   0   ~;   0   |;  32   &)
%                                         (   0 <=>;  73  =>;   0  <=;  33 <~>)
%            Maximal formula depth :   68 (  32 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-33 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   : 2195 (2163   !;  32   ?)
% SPC      : FOF_CSA_EPR_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(initial_state,axiom,
    p(n1,n0,n0,n0,n0,n0,n1,n1,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n1,n0,n0,n0,n0,n0,n0,n0,n0,n0) ).

fof(wrap_hn1k1_hn1k1_command,axiom,
    ! [X17,X16,X15,X14,X13,X12,X11,X10,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,n1,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,X10,X11,X12,X13,X14,X15,X16,X17)
     => p(n1,n1,X1,X2,X3,X4,n1,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,X11,X12,X13,X14,X15,X16,X17) ) ).

fof(wrap_hn1k1_hn1k2_command,axiom,
    ! [X22,X21,X20,X19,X18,X16,X15,X14,A,B,C,D,E,F,G,H,I,J,X10,X9,X8,X7,X6,X5,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,J,I,H,G,F,E,D,C,B,A,X14,X15,X16,n0,X18,X19,X20,X21,X22)
     => p(n1,n1,X1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,J,I,H,G,F,E,D,C,B,A,X14,X15,X16,n1,X18,X19,X20,X21,X22) ) ).

fof(wrap_hn1k1_hn1k3_command,axiom,
    ! [X22,X21,X19,X18,X17,X16,X15,X14,A,B,C,X11,X10,X9,X8,X7,D,E,F,G,H,I,J,X5,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,X5,J,I,H,G,F,E,D,n1,X7,X8,X9,X10,X11,n1,C,B,A,X14,X15,X16,X17,X18,X19,n0,X21,X22)
     => p(n1,n1,X1,X2,X3,X4,X5,J,I,H,G,F,E,D,n1,X7,X8,X9,X10,X11,n1,C,B,A,X14,X15,X16,X17,X18,X19,n1,X21,X22) ) ).

fof(wrap_hn1k2_hn1k1_command,axiom,
    ! [X22,X21,X20,X19,X18,X17,X16,X14,A,B,C,D,E,F,G,H,I,J,X11,X10,X9,X8,X7,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,n1,n1,X7,X8,X9,X10,X11,J,I,H,G,F,E,D,C,B,A,X14,n0,X16,X17,X18,X19,X20,X21,X22)
     => p(n1,X0,X1,X2,X3,X4,n1,n1,n1,X7,X8,X9,X10,X11,J,I,H,G,F,E,D,C,B,A,X14,n1,X16,X17,X18,X19,X20,X21,X22) ) ).

fof(wrap_hn1k2_hn1k2_command,axiom,
    ! [X17,X16,X15,X14,X12,X11,X10,X9,A,B,C,D,E,F,G,H,I,J,X5,X4,X3,X2,K,L,M,N,O,P,Q] :
      ( p(Q,P,O,N,M,L,K,n1,n1,X2,X3,X4,X5,n1,J,I,H,G,F,E,D,C,B,A,X9,X10,X11,X12,n0,X14,X15,X16,X17)
     => p(Q,P,O,N,M,L,K,n1,n1,X2,X3,X4,X5,n1,J,I,H,G,F,E,D,C,B,A,X9,X10,X11,X12,n1,X14,X15,X16,X17) ) ).

fof(wrap_hn1k2_hn1k3_command,axiom,
    ! [X22,X20,X19,X18,X17,X16,X15,X14,A,B,C,X11,X10,X9,X8,X7,X6,X5,X4,X3,X2,D,E,F,G,H,I,J] :
      ( p(J,I,H,G,F,E,D,n1,n1,X2,X3,X4,X5,X6,n1,X7,X8,X9,X10,X11,n1,C,B,A,X14,X15,X16,X17,X18,X19,X20,n0,X22)
     => p(J,I,H,G,F,E,D,n1,n1,X2,X3,X4,X5,X6,n1,X7,X8,X9,X10,X11,n1,C,B,A,X14,X15,X16,X17,X18,X19,X20,n1,X22) ) ).

fof(wrap_hn1k3_hn1k1_command,axiom,
    ! [X22,X21,X20,X19,X18,X17,X15,X14,A,B,C,X12,X11,X10,X9,X8,D,E,F,G,H,I,J,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,J,I,H,G,F,E,D,n1,n1,X8,X9,X10,X11,X12,C,B,A,X14,X15,n0,X17,X18,X19,X20,X21,X22)
     => p(n1,X0,X1,X2,X3,X4,n1,J,I,H,G,F,E,D,n1,n1,X8,X9,X10,X11,X12,C,B,A,X14,X15,n1,X17,X18,X19,X20,X21,X22) ) ).

fof(wrap_hn1k3_hn1k2_command,axiom,
    ! [X22,X21,X20,X18,X17,X16,X15,X14,A,B,C,X12,X11,X10,X9,X8,X5,X4,X3,X2,X1,D,E,F,G,H,I,J] :
      ( p(J,I,H,G,F,E,D,n1,X1,X2,X3,X4,X5,n1,n1,n1,X8,X9,X10,X11,X12,C,B,A,X14,X15,X16,X17,X18,n0,X20,X21,X22)
     => p(J,I,H,G,F,E,D,n1,X1,X2,X3,X4,X5,n1,n1,n1,X8,X9,X10,X11,X12,C,B,A,X14,X15,X16,X17,X18,n1,X20,X21,X22) ) ).

fof(wrap_hn1k3_hn1k3_command,axiom,
    ! [X16,X15,X14,X13,X12,X11,X10,X9,A,B,C,X6,X5,X4,X3,D,E,F,G,H,I,J,K,L,M,N,O,P,Q] :
      ( p(Q,P,O,N,M,L,K,J,I,H,G,F,E,D,n1,n1,X3,X4,X5,X6,n1,C,B,A,X9,X10,X11,X12,X13,X14,X15,X16,n0)
     => p(Q,P,O,N,M,L,K,J,I,H,G,F,E,D,n1,n1,X3,X4,X5,X6,n1,C,B,A,X9,X10,X11,X12,X13,X14,X15,X16,n1) ) ).

fof(unwrap_hn1k1_hn1k1_command,axiom,
    ! [X17,X16,X15,X14,X13,X12,X11,X10,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,X11,X12,X13,X14,X15,X16,X17)
     => p(n1,X0,n1,X2,X3,X4,n1,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,X11,X12,X13,X14,X15,X16,X17) ) ).

fof(unwrap_hn1k1_hn1k2_command,axiom,
    ! [X22,X21,X20,X19,X18,X16,X15,X14,A,B,C,D,E,F,G,H,I,J,X11,X10,X9,X8,X7,X6,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,n0,X6,X7,X8,X9,X10,X11,J,I,H,G,F,E,D,C,B,A,X14,X15,X16,n1,X18,X19,X20,X21,X22)
     => p(n1,X0,n1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,J,I,H,G,F,E,D,C,B,A,X14,X15,X16,n1,X18,X19,X20,X21,X22) ) ).

fof(unwrap_hn1k1_hn1k3_command,axiom,
    ! [X22,X21,X19,X18,X17,X16,X15,X14,A,B,C,X12,X11,X10,X9,X8,X7,D,E,F,G,H,I,J,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,J,I,H,G,F,E,D,n0,X7,X8,X9,X10,X11,X12,C,B,A,X14,X15,X16,X17,X18,X19,n1,X21,X22)
     => p(n1,X0,n1,X2,X3,X4,X5,J,I,H,G,F,E,D,n1,X7,X8,X9,X10,X11,n1,C,B,A,X14,X15,X16,X17,X18,X19,n1,X21,X22) ) ).

fof(unwrap_hn1k2_hn1k1_command,axiom,
    ! [X22,X21,X20,X19,X18,X17,X16,X14,A,B,C,D,E,F,G,H,I,J,X11,X10,X9,X8,X6,X5,X4,X3,X2,X1,X0] :
      ( p(n0,X0,X1,X2,X3,X4,X5,n1,X6,n1,X8,X9,X10,X11,J,I,H,G,F,E,D,C,B,A,X14,n1,X16,X17,X18,X19,X20,X21,X22)
     => p(n1,X0,X1,X2,X3,X4,n1,n1,X6,n1,X8,X9,X10,X11,J,I,H,G,F,E,D,C,B,A,X14,n1,X16,X17,X18,X19,X20,X21,X22) ) ).

fof(unwrap_hn1k2_hn1k2_command,axiom,
    ! [X17,X16,X15,X14,X12,X11,X10,X9,A,B,C,D,E,F,G,H,I,J,X6,X5,X4,X3,X1,K,L,M,N,O,P,Q] :
      ( p(Q,P,O,N,M,L,K,n1,X1,n1,X3,X4,X5,X6,J,I,H,G,F,E,D,C,B,A,X9,X10,X11,X12,n1,X14,X15,X16,X17)
     => p(Q,P,O,N,M,L,K,n1,X1,n1,X3,X4,X5,n1,J,I,H,G,F,E,D,C,B,A,X9,X10,X11,X12,n1,X14,X15,X16,X17) ) ).

fof(unwrap_hn1k2_hn1k3_command,axiom,
    ! [X22,X20,X19,X18,X17,X16,X15,X14,A,B,C,X12,X11,X10,X9,X8,X7,X6,X5,X4,X3,X1,D,E,F,G,H,I,J] :
      ( p(J,I,H,G,F,E,D,n1,X1,n1,X3,X4,X5,X6,n0,X7,X8,X9,X10,X11,X12,C,B,A,X14,X15,X16,X17,X18,X19,X20,n1,X22)
     => p(J,I,H,G,F,E,D,n1,X1,n1,X3,X4,X5,X6,n1,X7,X8,X9,X10,X11,n1,C,B,A,X14,X15,X16,X17,X18,X19,X20,n1,X22) ) ).

fof(unwrap_hn1k3_hn1k1_command,axiom,
    ! [X22,X21,X20,X19,X18,X17,X15,X14,A,B,C,X12,X11,X10,X9,X7,D,E,F,G,H,I,J,X5,X4,X3,X2,X1,X0] :
      ( p(n0,X0,X1,X2,X3,X4,X5,J,I,H,G,F,E,D,n1,X7,n1,X9,X10,X11,X12,C,B,A,X14,X15,n1,X17,X18,X19,X20,X21,X22)
     => p(n1,X0,X1,X2,X3,X4,n1,J,I,H,G,F,E,D,n1,X7,n1,X9,X10,X11,X12,C,B,A,X14,X15,n1,X17,X18,X19,X20,X21,X22) ) ).

fof(unwrap_hn1k3_hn1k2_command,axiom,
    ! [X22,X21,X20,X18,X17,X16,X15,X14,A,B,C,X12,X11,X10,X9,X7,X6,X5,X4,X3,X2,X1,D,E,F,G,H,I,J] :
      ( p(J,I,H,G,F,E,D,n0,X1,X2,X3,X4,X5,X6,n1,X7,n1,X9,X10,X11,X12,C,B,A,X14,X15,X16,X17,X18,n1,X20,X21,X22)
     => p(J,I,H,G,F,E,D,n1,X1,X2,X3,X4,X5,n1,n1,X7,n1,X9,X10,X11,X12,C,B,A,X14,X15,X16,X17,X18,n1,X20,X21,X22) ) ).

fof(unwrap_hn1k3_hn1k3_command,axiom,
    ! [X16,X15,X14,X13,X12,X11,X10,X9,A,B,C,X7,X6,X5,X4,X2,D,E,F,G,H,I,J,K,L,M,N,O,P,Q] :
      ( p(Q,P,O,N,M,L,K,J,I,H,G,F,E,D,n1,X2,n1,X4,X5,X6,X7,C,B,A,X9,X10,X11,X12,X13,X14,X15,X16,n1)
     => p(Q,P,O,N,M,L,K,J,I,H,G,F,E,D,n1,X2,n1,X4,X5,X6,n1,C,B,A,X9,X10,X11,X12,X13,X14,X15,X16,n1) ) ).

fof(set_attr_hn1k1_wrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,X5,X4,X2] :
      ( p(n1,n0,n0,X2,n0,X4,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n1,n0,X2,n0,X4,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_unwrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,X5,X4,X3] :
      ( p(n1,n0,n0,n0,X3,X4,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,n1,n0,X3,X4,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_encrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,X5,X4,X3] :
      ( p(n1,n0,n0,n0,X3,X4,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,n0,n1,X3,X4,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_decrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,X5,X4,X2,X1] :
      ( p(n1,n0,X1,X2,n0,X4,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,X1,X2,n1,X4,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_sensitive_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,X5,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,n0,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,X0,X1,X2,X3,n1,X5,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_wrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,X6,X5,X3,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,n1,n0,n0,X3,n0,X5,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,n1,n1,n0,X3,n0,X5,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_unwrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,X6,X5,X4,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,n1,n0,n0,n0,X4,X5,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,n1,n0,n1,n0,X4,X5,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_encrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,X6,X5,X4,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,n1,n0,n0,n0,X4,X5,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,n1,n0,n0,n1,X4,X5,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_decrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,X6,X5,X3,X2,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,n1,n0,X2,X3,n0,X5,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,n1,n0,X2,X3,n1,X5,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_sensitive_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,X6,X4,X3,X2,X1,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,n1,X1,X2,X3,X4,n0,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,n1,X1,X2,X3,X4,n1,X6,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k3_wrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,X7,X6,X4,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,n0,n0,X4,n0,X6,X7,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,n1,n0,X4,n0,X6,X7,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k3_unwrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,X7,X6,X5,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,n0,n0,n0,X5,X6,X7,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,n0,n1,n0,X5,X6,X7,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k3_encrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,X7,X6,X5,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,n0,n0,n0,X5,X6,X7,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,n0,n0,n1,X5,X6,X7,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k3_decrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,X7,X6,X4,X3,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,n0,X3,X4,n0,X6,X7,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,n0,X3,X4,n1,X6,X7,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k3_sensitive_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,X7,X5,X4,X3,X2,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,X2,X3,X4,X5,n0,X7,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,X2,X3,X4,X5,n1,X7,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_extractable_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,X0,X1,X2,X3,X4,n0,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_extractable_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,X5,X4,X3,X2,X1,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,n1,X1,X2,X3,X4,X5,n1,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,n1,X1,X2,X3,X4,X5,n0,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k3_extractable_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,X6,X5,X4,X3,X2,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z] :
      ( p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,X2,X3,X4,X5,X6,n1,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,n1,X2,X3,X4,X5,X6,n0,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(decrypt_hn1k1_k1Enck1_command,axiom,
    ! [X19,X18,X17,X16,X15,X14,X13,X12,X10,X9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X5,X4,X2,X1,X0] :
      ( p(n1,X0,X1,X2,n1,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,X9,X10,n1,X12,X13,X14,X15,X16,X17,X18,X19)
     => p(n1,X0,X1,X2,n1,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X9,X10,n1,X12,X13,X14,X15,X16,X17,X18,X19) ) ).

fof(decrypt_hn1k1_k2Enck1_command,axiom,
    ! [X19,X18,X17,X16,X15,X13,X12,X11,X10,X8,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X5,X4,X2,X1,X0] :
      ( p(n1,X0,X1,X2,n1,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X8,n0,X10,X11,X12,X13,n1,X15,X16,X17,X18,X19)
     => p(n1,X0,X1,X2,n1,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X8,n1,X10,X11,X12,X13,n1,X15,X16,X17,X18,X19) ) ).

fof(decrypt_hn1k1_k3Enck1_command,axiom,
    ! [X19,X18,X16,X15,X14,X13,X12,X11,X9,X8,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X5,X4,X2,X1,X0] :
      ( p(n1,X0,X1,X2,n1,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X8,X9,n0,X11,X12,X13,X14,X15,X16,n1,X18,X19)
     => p(n1,X0,X1,X2,n1,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X8,X9,n1,X11,X12,X13,X14,X15,X16,n1,X18,X19) ) ).

fof(decrypt_hn1k2_k1Enck2_command,axiom,
    ! [X19,X18,X17,X16,X15,X14,X13,X11,X10,X9,A,B,C,D,E,F,G,X6,X5,X3,X2,X1,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,n1,X1,X2,X3,n1,X5,X6,G,F,E,D,C,B,A,n0,X9,X10,X11,n1,X13,X14,X15,X16,X17,X18,X19)
     => p(N,M,L,K,J,I,H,n1,X1,X2,X3,n1,X5,X6,G,F,E,D,C,B,A,n1,X9,X10,X11,n1,X13,X14,X15,X16,X17,X18,X19) ) ).

fof(decrypt_hn1k2_k2Enck2_command,axiom,
    ! [X19,X18,X17,X16,X14,X13,X12,X11,X10,X8,A,B,C,D,E,F,G,X6,X5,X3,X2,X1,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,n1,X1,X2,X3,n1,X5,X6,G,F,E,D,C,B,A,X8,n0,X10,X11,X12,X13,X14,n1,X16,X17,X18,X19)
     => p(N,M,L,K,J,I,H,n1,X1,X2,X3,n1,X5,X6,G,F,E,D,C,B,A,X8,n1,X10,X11,X12,X13,X14,n1,X16,X17,X18,X19) ) ).

fof(decrypt_hn1k2_k3Enck2_command,axiom,
    ! [X19,X17,X16,X15,X14,X13,X12,X11,X9,X8,A,B,C,D,E,F,G,X6,X5,X3,X2,X1,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,n1,X1,X2,X3,n1,X5,X6,G,F,E,D,C,B,A,X8,X9,n0,X11,X12,X13,X14,X15,X16,X17,n1,X19)
     => p(N,M,L,K,J,I,H,n1,X1,X2,X3,n1,X5,X6,G,F,E,D,C,B,A,X8,X9,n1,X11,X12,X13,X14,X15,X16,X17,n1,X19) ) ).

fof(decrypt_hn1k3_k1Enck3_command,axiom,
    ! [X19,X18,X17,X16,X15,X14,X12,X11,X10,X9,X7,X6,X4,X3,X2,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,X4,n1,X6,X7,n0,X9,X10,X11,X12,n1,X14,X15,X16,X17,X18,X19)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,X4,n1,X6,X7,n1,X9,X10,X11,X12,n1,X14,X15,X16,X17,X18,X19) ) ).

fof(decrypt_hn1k3_k2Enck3_command,axiom,
    ! [X19,X18,X17,X15,X14,X13,X12,X11,X10,X8,X7,X6,X4,X3,X2,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,X4,n1,X6,X7,X8,n0,X10,X11,X12,X13,X14,X15,n1,X17,X18,X19)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,X4,n1,X6,X7,X8,n1,X10,X11,X12,X13,X14,X15,n1,X17,X18,X19) ) ).

fof(decrypt_hn1k3_k3Enck3_command,axiom,
    ! [X18,X17,X16,X15,X14,X13,X12,X11,X9,X8,X7,X6,X4,X3,X2,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,X4,n1,X6,X7,X8,X9,n0,X11,X12,X13,X14,X15,X16,X17,X18,n1)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,X4,n1,X6,X7,X8,X9,n1,X11,X12,X13,X14,X15,X16,X17,X18,n1) ) ).

fof(encrypt_hn1k1_k1Enck1_command,axiom,
    ! [X19,X18,X17,X16,X15,X14,X13,X12,X10,X9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X5,X4,X3,X1,X0] :
      ( p(n1,X0,X1,n1,X3,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X9,X10,n0,X12,X13,X14,X15,X16,X17,X18,X19)
     => p(n1,X0,X1,n1,X3,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X9,X10,n1,X12,X13,X14,X15,X16,X17,X18,X19) ) ).

fof(encrypt_hn1k1_k2Enck1_command,axiom,
    ! [X19,X18,X17,X16,X15,X13,X12,X11,X10,X8,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X5,X4,X3,X1,X0] :
      ( p(n1,X0,X1,n1,X3,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X8,n1,X10,X11,X12,X13,n0,X15,X16,X17,X18,X19)
     => p(n1,X0,X1,n1,X3,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X8,n1,X10,X11,X12,X13,n1,X15,X16,X17,X18,X19) ) ).

fof(encrypt_hn1k1_k3Enck1_command,axiom,
    ! [X19,X18,X16,X15,X14,X13,X12,X11,X9,X8,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X5,X4,X3,X1,X0] :
      ( p(n1,X0,X1,n1,X3,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X8,X9,n1,X11,X12,X13,X14,X15,X16,n0,X18,X19)
     => p(n1,X0,X1,n1,X3,X4,X5,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X8,X9,n1,X11,X12,X13,X14,X15,X16,n1,X18,X19) ) ).

fof(encrypt_hn1k2_k1Enck2_command,axiom,
    ! [X19,X18,X17,X16,X15,X14,X13,X11,X10,X9,A,B,C,D,E,F,G,X6,X5,X4,X2,X1,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,n1,X1,X2,n1,X4,X5,X6,G,F,E,D,C,B,A,n1,X9,X10,X11,n0,X13,X14,X15,X16,X17,X18,X19)
     => p(N,M,L,K,J,I,H,n1,X1,X2,n1,X4,X5,X6,G,F,E,D,C,B,A,n1,X9,X10,X11,n1,X13,X14,X15,X16,X17,X18,X19) ) ).

fof(encrypt_hn1k2_k2Enck2_command,axiom,
    ! [X19,X18,X17,X16,X14,X13,X12,X11,X10,X8,A,B,C,D,E,F,G,X6,X5,X4,X2,X1,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,n1,X1,X2,n1,X4,X5,X6,G,F,E,D,C,B,A,X8,n1,X10,X11,X12,X13,X14,n0,X16,X17,X18,X19)
     => p(N,M,L,K,J,I,H,n1,X1,X2,n1,X4,X5,X6,G,F,E,D,C,B,A,X8,n1,X10,X11,X12,X13,X14,n1,X16,X17,X18,X19) ) ).

fof(encrypt_hn1k2_k3Enck2_command,axiom,
    ! [X19,X17,X16,X15,X14,X13,X12,X11,X9,X8,A,B,C,D,E,F,G,X6,X5,X4,X2,X1,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,n1,X1,X2,n1,X4,X5,X6,G,F,E,D,C,B,A,X8,X9,n1,X11,X12,X13,X14,X15,X16,X17,n0,X19)
     => p(N,M,L,K,J,I,H,n1,X1,X2,n1,X4,X5,X6,G,F,E,D,C,B,A,X8,X9,n1,X11,X12,X13,X14,X15,X16,X17,n1,X19) ) ).

fof(encrypt_hn1k3_k1Enck3_command,axiom,
    ! [X19,X18,X17,X16,X15,X14,X12,X11,X10,X9,X7,X6,X5,X3,X2,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,n1,X5,X6,X7,n1,X9,X10,X11,X12,n0,X14,X15,X16,X17,X18,X19)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,n1,X5,X6,X7,n1,X9,X10,X11,X12,n1,X14,X15,X16,X17,X18,X19) ) ).

fof(encrypt_hn1k3_k2Enck3_command,axiom,
    ! [X19,X18,X17,X15,X14,X13,X12,X11,X10,X8,X7,X6,X5,X3,X2,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,n1,X5,X6,X7,X8,n1,X10,X11,X12,X13,X14,X15,n0,X17,X18,X19)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,n1,X5,X6,X7,X8,n1,X10,X11,X12,X13,X14,X15,n1,X17,X18,X19) ) ).

fof(encrypt_hn1k3_k3Enck3_command,axiom,
    ! [X18,X17,X16,X15,X14,X13,X12,X11,X9,X8,X7,X6,X5,X3,X2,A,B,C,D,E,F,G,H,I,J,K,L,M,N] :
      ( p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,n1,X5,X6,X7,X8,X9,n1,X11,X12,X13,X14,X15,X16,X17,X18,n0)
     => p(N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X2,X3,n1,X5,X6,X7,X8,X9,n1,X11,X12,X13,X14,X15,X16,X17,X18,n1) ) ).

fof(encrypt_k1Enck1_command,axiom,
    ! [X14,X13,X12,X11,X10,X9,X8,X7,X5,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,X5,n0,X7,X8,X9,X10,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,X5,n1,X7,X8,X9,X10,X11,X12,X13,X14) ) ).

fof(encrypt_k2Enck1_command,axiom,
    ! [X14,X13,X12,X11,X10,X8,X7,X6,X5,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X5,X6,X7,X8,n0,X10,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X5,X6,X7,X8,n1,X10,X11,X12,X13,X14) ) ).

fof(encrypt_k3Enck1_command,axiom,
    ! [X14,X13,X11,X10,X9,X8,X7,X6,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,n1,X6,X7,X8,X9,X10,X11,n0,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,n1,X6,X7,X8,X9,X10,X11,n1,X13,X14) ) ).

fof(encrypt_k1Enck2_command,axiom,
    ! [X14,X13,X12,X11,X10,X9,X8,X6,X5,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X5,X6,n0,X8,X9,X10,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X5,X6,n1,X8,X9,X10,X11,X12,X13,X14) ) ).

fof(encrypt_k2Enck2_command,axiom,
    ! [X14,X13,X12,X11,X9,X8,X7,X6,X5,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,X5,X6,X7,X8,X9,n0,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,X5,X6,X7,X8,X9,n1,X11,X12,X13,X14) ) ).

fof(encrypt_k3Enck2_command,axiom,
    ! [X14,X12,X11,X10,X9,X8,X7,X6,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,n1,X6,X7,X8,X9,X10,X11,X12,n0,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,n1,X6,X7,X8,X9,X10,X11,X12,n1,X14) ) ).

fof(encrypt_k1Enck3_command,axiom,
    ! [X14,X13,X12,X11,X10,X9,X7,X6,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,n1,X6,X7,n0,X9,X10,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,n1,X6,X7,n1,X9,X10,X11,X12,X13,X14) ) ).

fof(encrypt_k2Enck3_command,axiom,
    ! [X14,X13,X12,X10,X9,X8,X7,X6,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,n1,X6,X7,X8,X9,X10,n0,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,n1,X6,X7,X8,X9,X10,n1,X12,X13,X14) ) ).

fof(encrypt_k3Enck3_command,axiom,
    ! [X13,X12,X11,X10,X9,X8,X7,X6,X4,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,X4,n1,X6,X7,X8,X9,X10,X11,X12,X13,n0)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,X4,n1,X6,X7,X8,X9,X10,X11,X12,X13,n1) ) ).

fof(intruder_decrypt_k1Enck1_command,axiom,
    ! [X14,X13,X12,X11,X10,X9,X8,X7,X5,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,X5,n1,X7,X8,X9,X10,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,X5,n1,X7,X8,X9,X10,X11,X12,X13,X14) ) ).

fof(intruder_decrypt_k2Enck1_command,axiom,
    ! [X3,X14,X13,X12,X11,X10,X8,X7,X6,X5,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n0,X5,X6,X7,X8,n1,X10,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,X5,X6,X7,X8,n1,X10,X11,X12,X13,X14) ) ).

fof(intruder_decrypt_k3Enck1_command,axiom,
    ! [X3,X14,X13,X11,X10,X9,X8,X7,X6,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,n0,X6,X7,X8,X9,X10,X11,n1,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,X4,n1,X6,X7,X8,X9,X10,X11,n1,X13,X14) ) ).

fof(intruder_decrypt_k1Enck2_command,axiom,
    ! [X4,X14,X13,X12,X11,X10,X9,X8,X6,X5,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,n1,X5,X6,n1,X8,X9,X10,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,X5,X6,n1,X8,X9,X10,X11,X12,X13,X14) ) ).

fof(intruder_decrypt_k2Enck2_command,axiom,
    ! [X14,X13,X12,X11,X9,X8,X7,X6,X5,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,X5,X6,X7,X8,X9,n1,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,X5,X6,X7,X8,X9,n1,X11,X12,X13,X14) ) ).

fof(intruder_decrypt_k3Enck2_command,axiom,
    ! [X4,X14,X12,X11,X10,X9,X8,X7,X6,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,n0,X6,X7,X8,X9,X10,X11,X12,n1,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,X4,n1,X6,X7,X8,X9,X10,X11,X12,n1,X14) ) ).

fof(intruder_decrypt_k1Enck3_command,axiom,
    ! [X5,X14,X13,X12,X11,X10,X9,X7,X6,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,X4,n1,X6,X7,n1,X9,X10,X11,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X4,X5,X6,X7,n1,X9,X10,X11,X12,X13,X14) ) ).

fof(intruder_decrypt_k2Enck3_command,axiom,
    ! [X5,X14,X13,X12,X10,X9,X8,X7,X6,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n0,n1,X6,X7,X8,X9,X10,n1,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,n1,X5,X6,X7,X8,X9,X10,n1,X12,X13,X14) ) ).

fof(intruder_decrypt_k3Enck3_command,axiom,
    ! [X13,X12,X11,X10,X9,X8,X7,X6,X4,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,X4,n1,X6,X7,X8,X9,X10,X11,X12,X13,n1)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X3,X4,n1,X6,X7,X8,X9,X10,X11,X12,X13,n1) ) ).

fof(domain_constraints,axiom,
    ! [X32,X31,X30,X29,X28,X27,X26,X25,X24,X23,X22,X21,X20,X19,X18,X17,X16,X15,X14,X13,X12,X11,X10,X9,X8,X7,X6,X5,X4,X3,X2,X1,X0] :
      ( p(X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32)
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
        <~> X19 = n0 )
        & ( X20 = n1
        <~> X20 = n0 )
        & ( X21 = n1
        <~> X21 = n0 )
        & ( X22 = n1
        <~> X22 = n0 )
        & ( X23 = n1
        <~> X23 = n0 )
        & ( X24 = n1
        <~> X24 = n0 )
        & ( X25 = n1
        <~> X25 = n0 )
        & ( X26 = n1
        <~> X26 = n0 )
        & ( X27 = n1
        <~> X27 = n0 )
        & ( X28 = n1
        <~> X28 = n0 )
        & ( X29 = n1
        <~> X29 = n0 )
        & ( X30 = n1
        <~> X30 = n0 )
        & ( X31 = n1
        <~> X31 = n0 )
        & ( X32 = n1
        <~> X32 = n0 ) ) ) ).

fof(co1,conjecture,
    ? [A,B,C,D,E,F,G,H,I,X2,X1,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1,C1,D1] : p(D1,C1,B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,n1,X1,X2,I,H,G,F,E,D,C,B,A) ).

%------------------------------------------------------------------------------
