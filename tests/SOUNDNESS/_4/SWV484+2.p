%------------------------------------------------------------------------------
% File     : SWV484+2 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Software Verification (Security)
% Problem  : PKCS11 for 4 handles and 2 keys
% Version  : Especial.
%          : Theorem formulation flattened to obviously EPR.
% English  : Attempts to prove that the intruder can learn the cleartext value
%            of a sensitive key in a paricular configuration of PKCS11.

% Refs     : [DKS08] Delaune et al. (2008), Formal Analysis of PKCS#11
%          : [Ste09] Steel (2009), Email to Geoff Sutcliffe
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.33 v7.4.0, 0.00 v7.1.0, 0.33 v6.4.0, 0.00 v6.3.0, 0.50 v6.2.0, 0.43 v6.1.0, 0.50 v5.5.0, 0.30 v5.4.0, 0.40 v5.3.0, 0.25 v5.0.0, 0.33 v4.1.0, 0.60 v4.0.1, 0.80 v4.0.0
% Syntax   : Number of formulae    :   83 (   2 unt;   0 def)
%            Number of atoms       :  231 (  68 equ)
%            Maximal formula atoms :   69 (   2 avg)
%            Number of connectives :  148 (   0   ~;   0   |;  33   &)
%                                         (   0 <=>;  81  =>;   0  <=;  34 <~>)
%            Maximal formula depth :   70 (  32 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-34 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   : 2493 (2460   !;  33   ?)
% SPC      : FOF_CSA_EPR_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(initial_state,axiom,
    p(n1,n0,n0,n0,n0,n0,n1,n1,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0) ).

fof(wrap_hn1k1_hn1k1_command,axiom,
    ! [X13,X12,X11,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,n1,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,X11,X12,X13)
     => p(n1,n1,X1,X2,X3,X4,n1,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X11,X12,X13) ) ).

fof(wrap_hn1k1_hn1k2_command,axiom,
    ! [X18,X16,X15,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X10,X9,X8,X7,X6,X5,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X15,X16,n0,X18)
     => p(n1,n1,X1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X15,X16,n1,X18) ) ).

fof(wrap_hn1k1_hn2k1_command,axiom,
    ! [X18,X17,X16,A,B,C,D,E,F,G,H,I,X11,X10,X9,X8,X7,J,K,L,M,N,O,P,X5,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,X5,P,O,N,M,L,K,J,n1,X7,X8,X9,X10,X11,n1,I,H,G,F,E,D,C,B,A,n0,X16,X17,X18)
     => p(n1,n1,X1,X2,X3,X4,X5,P,O,N,M,L,K,J,n1,X7,X8,X9,X10,X11,n1,I,H,G,F,E,D,C,B,A,n1,X16,X17,X18) ) ).

fof(wrap_hn1k1_hn2k2_command,axiom,
    ! [X18,X16,X15,A,B,X12,X11,X10,X9,X8,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X5,X4,X3,X2,X1] :
      ( p(n1,n1,X1,X2,X3,X4,X5,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,n0,X18)
     => p(n1,n1,X1,X2,X3,X4,X5,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,n1,X18) ) ).

fof(wrap_hn1k2_hn1k1_command,axiom,
    ! [X18,X17,X15,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X11,X10,X9,X8,X7,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,n1,n1,X7,X8,X9,X10,X11,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X15,n0,X17,X18)
     => p(n1,X0,X1,X2,X3,X4,n1,n1,n1,X7,X8,X9,X10,X11,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X15,n1,X17,X18) ) ).

fof(wrap_hn1k2_hn1k2_command,axiom,
    ! [X12,X11,X10,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X5,X4,X3,X2,Q,R,S,T,U,V,W] :
      ( p(W,V,U,T,S,R,Q,n1,n1,X2,X3,X4,X5,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X10,X11,X12,n0)
     => p(W,V,U,T,S,R,Q,n1,n1,X2,X3,X4,X5,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X10,X11,X12,n1) ) ).

fof(wrap_hn1k2_hn2k1_command,axiom,
    ! [X18,X17,X15,A,B,C,D,E,F,G,H,I,X11,X10,X9,X8,X7,X6,X5,X4,X3,X2,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,n1,n1,X2,X3,X4,X5,X6,n1,X7,X8,X9,X10,X11,n1,I,H,G,F,E,D,C,B,A,X15,n0,X17,X18)
     => p(P,O,N,M,L,K,J,n1,n1,X2,X3,X4,X5,X6,n1,X7,X8,X9,X10,X11,n1,I,H,G,F,E,D,C,B,A,X15,n1,X17,X18) ) ).

fof(wrap_hn1k2_hn2k2_command,axiom,
    ! [X17,X16,X15,A,B,X12,X11,X10,X9,X8,C,D,E,F,G,H,I,X6,X5,X4,X3,X2,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,n1,n1,X2,X3,X4,X5,X6,I,H,G,F,E,D,C,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,X17,n0)
     => p(P,O,N,M,L,K,J,n1,n1,X2,X3,X4,X5,X6,I,H,G,F,E,D,C,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,X17,n1) ) ).

fof(wrap_hn2k1_hn1k1_command,axiom,
    ! [X18,X17,X16,A,B,C,D,E,F,G,H,I,X12,X11,X10,X9,X8,J,K,L,M,N,O,P,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,P,O,N,M,L,K,J,n1,n1,X8,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,n0,X16,X17,X18)
     => p(n1,X0,X1,X2,X3,X4,n1,P,O,N,M,L,K,J,n1,n1,X8,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,n1,X16,X17,X18) ) ).

fof(wrap_hn2k1_hn1k2_command,axiom,
    ! [X18,X16,X15,A,B,C,D,E,F,G,H,I,X12,X11,X10,X9,X8,X5,X4,X3,X2,X1,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,n1,X1,X2,X3,X4,X5,n1,n1,n1,X8,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,X15,X16,n0,X18)
     => p(P,O,N,M,L,K,J,n1,X1,X2,X3,X4,X5,n1,n1,n1,X8,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,X15,X16,n1,X18) ) ).

fof(wrap_hn2k1_hn2k1_command,axiom,
    ! [X13,X12,X11,A,B,C,D,E,F,G,H,I,X6,X5,X4,X3,J,K,L,M,N,O,P,Q,R,S,T,U,V,W] :
      ( p(W,V,U,T,S,R,Q,P,O,N,M,L,K,J,n1,n1,X3,X4,X5,X6,n1,I,H,G,F,E,D,C,B,A,n0,X11,X12,X13)
     => p(W,V,U,T,S,R,Q,P,O,N,M,L,K,J,n1,n1,X3,X4,X5,X6,n1,I,H,G,F,E,D,C,B,A,n1,X11,X12,X13) ) ).

fof(wrap_hn2k1_hn2k2_command,axiom,
    ! [X18,X16,X15,A,B,X12,X11,X10,X9,X8,X7,X6,X5,X4,X3,C,D,E,F,G,H,I,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,n1,X3,X4,X5,X6,X7,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,n0,X18)
     => p(P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,n1,X3,X4,X5,X6,X7,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,n1,X18) ) ).

fof(wrap_hn2k2_hn1k1_command,axiom,
    ! [X18,X17,X15,A,B,X13,X12,X11,X10,X9,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,n1,X9,X10,X11,X12,X13,B,A,X15,n0,X17,X18)
     => p(n1,X0,X1,X2,X3,X4,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,n1,X9,X10,X11,X12,X13,B,A,X15,n1,X17,X18) ) ).

fof(wrap_hn2k2_hn1k2_command,axiom,
    ! [X17,X16,X15,A,B,X13,X12,X11,X10,X9,C,D,E,F,G,H,I,X5,X4,X3,X2,X1,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,n1,X1,X2,X3,X4,X5,n1,I,H,G,F,E,D,C,n1,n1,X9,X10,X11,X12,X13,B,A,X15,X16,X17,n0)
     => p(P,O,N,M,L,K,J,n1,X1,X2,X3,X4,X5,n1,I,H,G,F,E,D,C,n1,n1,X9,X10,X11,X12,X13,B,A,X15,X16,X17,n1) ) ).

fof(wrap_hn2k2_hn2k1_command,axiom,
    ! [X18,X17,X15,A,B,X13,X12,X11,X10,X9,X6,X5,X4,X3,X2,C,D,E,F,G,H,I,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X2,X3,X4,X5,X6,n1,n1,n1,X9,X10,X11,X12,X13,B,A,X15,n0,X17,X18)
     => p(P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X2,X3,X4,X5,X6,n1,n1,n1,X9,X10,X11,X12,X13,B,A,X15,n1,X17,X18) ) ).

fof(wrap_hn2k2_hn2k2_command,axiom,
    ! [X12,X11,X10,A,B,X7,X6,X5,X4,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W] :
      ( p(W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,n1,X4,X5,X6,X7,n1,B,A,X10,X11,X12,n0)
     => p(W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,n1,X4,X5,X6,X7,n1,B,A,X10,X11,X12,n1) ) ).

fof(unwrap_hn1k1_hn1k1_command,axiom,
    ! [X13,X12,X11,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X11,X12,X13)
     => p(n1,X0,n1,X2,X3,X4,n1,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X11,X12,X13) ) ).

fof(unwrap_hn1k1_hn1k2_command,axiom,
    ! [X18,X16,X15,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X11,X10,X9,X8,X7,X6,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,n0,X6,X7,X8,X9,X10,X11,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X15,X16,n1,X18)
     => p(n1,X0,n1,X2,X3,X4,X5,n1,X6,X7,X8,X9,X10,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X15,X16,n1,X18) ) ).

fof(unwrap_hn1k1_hn2k1_command,axiom,
    ! [X18,X17,X16,A,B,C,D,E,F,G,H,I,X12,X11,X10,X9,X8,X7,J,K,L,M,N,O,P,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,P,O,N,M,L,K,J,n0,X7,X8,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,n1,X16,X17,X18)
     => p(n1,X0,n1,X2,X3,X4,X5,P,O,N,M,L,K,J,n1,X7,X8,X9,X10,X11,n1,I,H,G,F,E,D,C,B,A,n1,X16,X17,X18) ) ).

fof(unwrap_hn1k1_hn2k2_command,axiom,
    ! [X18,X16,X15,A,B,X13,X12,X11,X10,X9,X8,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X5,X4,X3,X2,X0] :
      ( p(n1,X0,n1,X2,X3,X4,X5,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n0,X8,X9,X10,X11,X12,X13,B,A,X15,X16,n1,X18)
     => p(n1,X0,n1,X2,X3,X4,X5,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,n1,X18) ) ).

fof(unwrap_hn1k2_hn1k1_command,axiom,
    ! [X18,X17,X15,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X11,X10,X9,X8,X6,X5,X4,X3,X2,X1,X0] :
      ( p(n0,X0,X1,X2,X3,X4,X5,n1,X6,n1,X8,X9,X10,X11,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X15,n1,X17,X18)
     => p(n1,X0,X1,X2,X3,X4,n1,n1,X6,n1,X8,X9,X10,X11,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X15,n1,X17,X18) ) ).

fof(unwrap_hn1k2_hn1k2_command,axiom,
    ! [X12,X11,X10,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X6,X5,X4,X3,X1,Q,R,S,T,U,V,W] :
      ( p(W,V,U,T,S,R,Q,n1,X1,n1,X3,X4,X5,X6,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X10,X11,X12,n1)
     => p(W,V,U,T,S,R,Q,n1,X1,n1,X3,X4,X5,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X10,X11,X12,n1) ) ).

fof(unwrap_hn1k2_hn2k1_command,axiom,
    ! [X18,X17,X15,A,B,C,D,E,F,G,H,I,X12,X11,X10,X9,X8,X7,X6,X5,X4,X3,X1,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,n1,X1,n1,X3,X4,X5,X6,n0,X7,X8,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,X15,n1,X17,X18)
     => p(P,O,N,M,L,K,J,n1,X1,n1,X3,X4,X5,X6,n1,X7,X8,X9,X10,X11,n1,I,H,G,F,E,D,C,B,A,X15,n1,X17,X18) ) ).

fof(unwrap_hn1k2_hn2k2_command,axiom,
    ! [X17,X16,X15,A,B,X13,X12,X11,X10,X9,X8,C,D,E,F,G,H,I,X6,X5,X4,X3,X1,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,n1,X1,n1,X3,X4,X5,X6,I,H,G,F,E,D,C,n0,X8,X9,X10,X11,X12,X13,B,A,X15,X16,X17,n1)
     => p(P,O,N,M,L,K,J,n1,X1,n1,X3,X4,X5,X6,I,H,G,F,E,D,C,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,X17,n1) ) ).

fof(unwrap_hn2k1_hn1k1_command,axiom,
    ! [X18,X17,X16,A,B,C,D,E,F,G,H,I,X12,X11,X10,X9,X7,J,K,L,M,N,O,P,X5,X4,X3,X2,X1,X0] :
      ( p(n0,X0,X1,X2,X3,X4,X5,P,O,N,M,L,K,J,n1,X7,n1,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,n1,X16,X17,X18)
     => p(n1,X0,X1,X2,X3,X4,n1,P,O,N,M,L,K,J,n1,X7,n1,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,n1,X16,X17,X18) ) ).

fof(unwrap_hn2k1_hn1k2_command,axiom,
    ! [X18,X16,X15,A,B,C,D,E,F,G,H,I,X12,X11,X10,X9,X7,X6,X5,X4,X3,X2,X1,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,n0,X1,X2,X3,X4,X5,X6,n1,X7,n1,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,X15,X16,n1,X18)
     => p(P,O,N,M,L,K,J,n1,X1,X2,X3,X4,X5,n1,n1,X7,n1,X9,X10,X11,X12,I,H,G,F,E,D,C,B,A,X15,X16,n1,X18) ) ).

fof(unwrap_hn2k1_hn2k1_command,axiom,
    ! [X13,X12,X11,A,B,C,D,E,F,G,H,I,X7,X6,X5,X4,X2,J,K,L,M,N,O,P,Q,R,S,T,U,V,W] :
      ( p(W,V,U,T,S,R,Q,P,O,N,M,L,K,J,n1,X2,n1,X4,X5,X6,X7,I,H,G,F,E,D,C,B,A,n1,X11,X12,X13)
     => p(W,V,U,T,S,R,Q,P,O,N,M,L,K,J,n1,X2,n1,X4,X5,X6,n1,I,H,G,F,E,D,C,B,A,n1,X11,X12,X13) ) ).

fof(unwrap_hn2k1_hn2k2_command,axiom,
    ! [X18,X16,X15,A,B,X13,X12,X11,X10,X9,X8,X7,X6,X5,X4,X2,C,D,E,F,G,H,I,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X2,n1,X4,X5,X6,X7,n0,X8,X9,X10,X11,X12,X13,B,A,X15,X16,n1,X18)
     => p(P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X2,n1,X4,X5,X6,X7,n1,X8,X9,X10,X11,X12,n1,B,A,X15,X16,n1,X18) ) ).

fof(unwrap_hn2k2_hn1k1_command,axiom,
    ! [X18,X17,X15,A,B,X13,X12,X11,X10,X8,C,D,E,F,G,H,I,J,K,L,M,N,O,P,X5,X4,X3,X2,X1,X0] :
      ( p(n0,X0,X1,X2,X3,X4,X5,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X8,n1,X10,X11,X12,X13,B,A,X15,n1,X17,X18)
     => p(n1,X0,X1,X2,X3,X4,n1,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X8,n1,X10,X11,X12,X13,B,A,X15,n1,X17,X18) ) ).

fof(unwrap_hn2k2_hn1k2_command,axiom,
    ! [X17,X16,X15,A,B,X13,X12,X11,X10,X8,C,D,E,F,G,H,I,X6,X5,X4,X3,X2,X1,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,n0,X1,X2,X3,X4,X5,X6,I,H,G,F,E,D,C,n1,X8,n1,X10,X11,X12,X13,B,A,X15,X16,X17,n1)
     => p(P,O,N,M,L,K,J,n1,X1,X2,X3,X4,X5,n1,I,H,G,F,E,D,C,n1,X8,n1,X10,X11,X12,X13,B,A,X15,X16,X17,n1) ) ).

fof(unwrap_hn2k2_hn2k1_command,axiom,
    ! [X18,X17,X15,A,B,X13,X12,X11,X10,X8,X7,X6,X5,X4,X3,X2,C,D,E,F,G,H,I,J,K,L,M,N,O,P] :
      ( p(P,O,N,M,L,K,J,I,H,G,F,E,D,C,n0,X2,X3,X4,X5,X6,X7,n1,X8,n1,X10,X11,X12,X13,B,A,X15,n1,X17,X18)
     => p(P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X2,X3,X4,X5,X6,n1,n1,X8,n1,X10,X11,X12,X13,B,A,X15,n1,X17,X18) ) ).

fof(unwrap_hn2k2_hn2k2_command,axiom,
    ! [X12,X11,X10,A,B,X8,X7,X6,X5,X3,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W] :
      ( p(W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X3,n1,X5,X6,X7,X8,B,A,X10,X11,X12,n1)
     => p(W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,n1,X3,n1,X5,X6,X7,n1,B,A,X10,X11,X12,n1) ) ).

fof(set_attr_hn1k1_wrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,X5,X4,X2] :
      ( p(n1,n0,n0,X2,n0,X4,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n1,n0,X2,n0,X4,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_unwrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,X5,X4,X3] :
      ( p(n1,n0,n0,n0,X3,X4,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,n1,n0,X3,X4,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_encrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,X5,X4,X3] :
      ( p(n1,n0,n0,n0,X3,X4,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,n0,n1,X3,X4,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_decrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,X5,X4,X2,X1] :
      ( p(n1,n0,X1,X2,n0,X4,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,n0,X1,X2,n1,X4,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_sensitive_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,X5,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,n0,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,X0,X1,X2,X3,n1,X5,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_wrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,X6,X5,X3,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,n1,n0,n0,X3,n0,X5,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,n1,n1,n0,X3,n0,X5,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_unwrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,X6,X5,X4,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,n1,n0,n0,n0,X4,X5,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,n1,n0,n1,n0,X4,X5,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_encrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,X6,X5,X4,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,n1,n0,n0,n0,X4,X5,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,n1,n0,n0,n1,X4,X5,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_decrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,X6,X5,X3,X2,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,n1,n0,X2,X3,n0,X5,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,n1,n0,X2,X3,n1,X5,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_sensitive_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,X6,X4,X3,X2,X1,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,n1,X1,X2,X3,X4,n0,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,n1,X1,X2,X3,X4,n1,X6,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k1_wrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X7,X6,X4,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,n0,n0,X4,n0,X6,X7,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,n1,n0,X4,n0,X6,X7,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k1_unwrap_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X7,X6,X5,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,n0,n0,n0,X5,X6,X7,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,n0,n1,n0,X5,X6,X7,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k1_encrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X7,X6,X5,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,n0,n0,n0,X5,X6,X7,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,n0,n0,n1,X5,X6,X7,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k1_decrypt_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X7,X6,X4,X3,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,n0,X3,X4,n0,X6,X7,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,n0,X3,X4,n1,X6,X7,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k1_sensitive_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X7,X5,X4,X3,X2,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,X2,X3,X4,X5,n0,X7,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,X2,X3,X4,X5,n1,X7,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k2_wrap_command,axiom,
    ! [A,B,C,D,E,F,X8,X7,X5,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,n0,n0,X5,n0,X7,X8,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,n1,n0,X5,n0,X7,X8,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k2_unwrap_command,axiom,
    ! [A,B,C,D,E,F,X8,X7,X6,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,n0,n0,n0,X6,X7,X8,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,n0,n1,n0,X6,X7,X8,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k2_encrypt_command,axiom,
    ! [A,B,C,D,E,F,X8,X7,X6,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,n0,n0,n0,X6,X7,X8,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,n0,n0,n1,X6,X7,X8,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k2_decrypt_command,axiom,
    ! [A,B,C,D,E,F,X8,X7,X5,X4,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,n0,X4,X5,n0,X7,X8,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,n0,X4,X5,n1,X7,X8,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k2_sensitive_command,axiom,
    ! [A,B,C,D,E,F,X8,X6,X5,X4,X3,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,X3,X4,X5,X6,n0,X8,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,X3,X4,X5,X6,n1,X8,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k1_extractable_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,X4,X3,X2,X1,X0] :
      ( p(n1,X0,X1,X2,X3,X4,n1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(n1,X0,X1,X2,X3,X4,n0,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn1k2_extractable_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,X5,X4,X3,X2,X1,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,n1,X1,X2,X3,X4,X5,n1,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,n1,X1,X2,X3,X4,X5,n0,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k1_extractable_command,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,X6,X5,X4,X3,X2,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,X2,X3,X4,X5,X6,n1,M,L,K,J,I,H,G,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,n1,X2,X3,X4,X5,X6,n0,M,L,K,J,I,H,G,F,E,D,C,B,A) ) ).

fof(set_attr_hn2k2_extractable_command,axiom,
    ! [A,B,C,D,E,F,X7,X6,X5,X4,X3,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1] :
      ( p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,X3,X4,X5,X6,X7,n1,F,E,D,C,B,A)
     => p(A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,n1,X3,X4,X5,X6,X7,n0,F,E,D,C,B,A) ) ).

fof(decrypt_hn1k1_k1Enck1_command,axiom,
    ! [X14,X13,X12,X10,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,X5,X4,X2,X1,X0] :
      ( p(n1,X0,X1,X2,n1,X4,X5,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,X10,n1,X12,X13,X14)
     => p(n1,X0,X1,X2,n1,X4,X5,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,n1,X12,X13,X14) ) ).

fof(decrypt_hn1k1_k2Enck1_command,axiom,
    ! [X14,X12,X11,X9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,X5,X4,X2,X1,X0] :
      ( p(n1,X0,X1,X2,n1,X4,X5,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X9,n0,X11,X12,n1,X14)
     => p(n1,X0,X1,X2,n1,X4,X5,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X9,n1,X11,X12,n1,X14) ) ).

fof(decrypt_hn1k2_k1Enck2_command,axiom,
    ! [X14,X13,X11,X10,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X6,X5,X3,X2,X1,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,n1,X1,X2,X3,n1,X5,X6,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,X10,X11,n1,X13,X14)
     => p(U,T,S,R,Q,P,O,n1,X1,X2,X3,n1,X5,X6,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,X11,n1,X13,X14) ) ).

fof(decrypt_hn1k2_k2Enck2_command,axiom,
    ! [X13,X12,X11,X9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X6,X5,X3,X2,X1,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,n1,X1,X2,X3,n1,X5,X6,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X9,n0,X11,X12,X13,n1)
     => p(U,T,S,R,Q,P,O,n1,X1,X2,X3,n1,X5,X6,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X9,n1,X11,X12,X13,n1) ) ).

fof(decrypt_hn2k1_k1Enck1_command,axiom,
    ! [X14,X13,X12,X10,A,B,C,D,E,F,G,X7,X6,X4,X3,X2,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,n1,X2,X3,X4,n1,X6,X7,G,F,E,D,C,B,A,n0,X10,n1,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,n1,X2,X3,X4,n1,X6,X7,G,F,E,D,C,B,A,n1,X10,n1,X12,X13,X14) ) ).

fof(decrypt_hn2k1_k2Enck1_command,axiom,
    ! [X14,X12,X11,X9,A,B,C,D,E,F,G,X7,X6,X4,X3,X2,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,n1,X2,X3,X4,n1,X6,X7,G,F,E,D,C,B,A,X9,n0,X11,X12,n1,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,n1,X2,X3,X4,n1,X6,X7,G,F,E,D,C,B,A,X9,n1,X11,X12,n1,X14) ) ).

fof(decrypt_hn2k2_k1Enck2_command,axiom,
    ! [X14,X13,X11,X10,X8,X7,X5,X4,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,X5,n1,X7,X8,n0,X10,X11,n1,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,X5,n1,X7,X8,n1,X10,X11,n1,X13,X14) ) ).

fof(decrypt_hn2k2_k2Enck2_command,axiom,
    ! [X13,X12,X11,X9,X8,X7,X5,X4,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,X5,n1,X7,X8,X9,n0,X11,X12,X13,n1)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,X5,n1,X7,X8,X9,n1,X11,X12,X13,n1) ) ).

fof(encrypt_hn1k1_k1Enck1_command,axiom,
    ! [X14,X13,X12,X10,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,X5,X4,X3,X1,X0] :
      ( p(n1,X0,X1,n1,X3,X4,X5,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,n0,X12,X13,X14)
     => p(n1,X0,X1,n1,X3,X4,X5,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,n1,X12,X13,X14) ) ).

fof(encrypt_hn1k1_k2Enck1_command,axiom,
    ! [X14,X12,X11,X9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,X5,X4,X3,X1,X0] :
      ( p(n1,X0,X1,n1,X3,X4,X5,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X9,n1,X11,X12,n0,X14)
     => p(n1,X0,X1,n1,X3,X4,X5,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X9,n1,X11,X12,n1,X14) ) ).

fof(encrypt_hn1k2_k1Enck2_command,axiom,
    ! [X14,X13,X11,X10,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X6,X5,X4,X2,X1,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,n1,X1,X2,n1,X4,X5,X6,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,X11,n0,X13,X14)
     => p(U,T,S,R,Q,P,O,n1,X1,X2,n1,X4,X5,X6,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X10,X11,n1,X13,X14) ) ).

fof(encrypt_hn1k2_k2Enck2_command,axiom,
    ! [X13,X12,X11,X9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,X6,X5,X4,X2,X1,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,n1,X1,X2,n1,X4,X5,X6,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X9,n1,X11,X12,X13,n0)
     => p(U,T,S,R,Q,P,O,n1,X1,X2,n1,X4,X5,X6,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X9,n1,X11,X12,X13,n1) ) ).

fof(encrypt_hn2k1_k1Enck1_command,axiom,
    ! [X14,X13,X12,X10,A,B,C,D,E,F,G,X7,X6,X5,X3,X2,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,n1,X2,X3,n1,X5,X6,X7,G,F,E,D,C,B,A,n1,X10,n0,X12,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,n1,X2,X3,n1,X5,X6,X7,G,F,E,D,C,B,A,n1,X10,n1,X12,X13,X14) ) ).

fof(encrypt_hn2k1_k2Enck1_command,axiom,
    ! [X14,X12,X11,X9,A,B,C,D,E,F,G,X7,X6,X5,X3,X2,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,n1,X2,X3,n1,X5,X6,X7,G,F,E,D,C,B,A,X9,n1,X11,X12,n0,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,n1,X2,X3,n1,X5,X6,X7,G,F,E,D,C,B,A,X9,n1,X11,X12,n1,X14) ) ).

fof(encrypt_hn2k2_k1Enck2_command,axiom,
    ! [X14,X13,X11,X10,X8,X7,X6,X4,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,n1,X6,X7,X8,n1,X10,X11,n0,X13,X14)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,n1,X6,X7,X8,n1,X10,X11,n1,X13,X14) ) ).

fof(encrypt_hn2k2_k2Enck2_command,axiom,
    ! [X13,X12,X11,X9,X8,X7,X6,X4,X3,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U] :
      ( p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,n1,X6,X7,X8,X9,n1,X11,X12,X13,n0)
     => p(U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X3,X4,n1,X6,X7,X8,X9,n1,X11,X12,X13,n1) ) ).

fof(encrypt_k1Enck1_command,axiom,
    ! [X9,X8,X7,X5,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1] :
      ( p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X5,n0,X7,X8,X9)
     => p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X5,n1,X7,X8,X9) ) ).

fof(encrypt_k2Enck1_command,axiom,
    ! [X9,X7,X6,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1] :
      ( p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X6,X7,n0,X9)
     => p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X6,X7,n1,X9) ) ).

fof(encrypt_k1Enck2_command,axiom,
    ! [X9,X8,X6,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1] :
      ( p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X6,n0,X8,X9)
     => p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n1,X6,n1,X8,X9) ) ).

fof(encrypt_k2Enck2_command,axiom,
    ! [X8,X7,X6,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1] :
      ( p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X4,n1,X6,X7,X8,n0)
     => p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X4,n1,X6,X7,X8,n1) ) ).

fof(intruder_decrypt_k1Enck1_command,axiom,
    ! [X9,X8,X7,X5,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1] :
      ( p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X5,n1,X7,X8,X9)
     => p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X5,n1,X7,X8,X9) ) ).

fof(intruder_decrypt_k2Enck1_command,axiom,
    ! [X4,X9,X7,X6,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1] :
      ( p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,n0,X6,X7,n1,X9)
     => p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X4,n1,X6,X7,n1,X9) ) ).

fof(intruder_decrypt_k1Enck2_command,axiom,
    ! [X5,X9,X8,X6,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1] :
      ( p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n0,n1,X6,n1,X8,X9)
     => p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,n1,X5,X6,n1,X8,X9) ) ).

fof(intruder_decrypt_k2Enck2_command,axiom,
    ! [X8,X7,X6,X4,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1] :
      ( p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X4,n1,X6,X7,X8,n1)
     => p(B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,X4,n1,X6,X7,X8,n1) ) ).

fof(domain_constraints,axiom,
    ! [X33,X32,X31,X30,X29,X28,X27,X26,X25,X24,X23,X22,X21,X20,X19,X18,X17,X16,X15,X14,X13,X12,X11,X10,X9,X8,X7,X6,X5,X4,X3,X2,X1,X0] :
      ( p(X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33)
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
        <~> X32 = n0 )
        & ( X33 = n1
        <~> X33 = n0 ) ) ) ).

fof(co1,conjecture,
    ? [A,B,C,D,X1,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,A1,B1,C1,D1,E1,F1] : p(F1,E1,D1,C1,B1,A1,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,n1,X1,D,C,B,A) ).

%------------------------------------------------------------------------------
