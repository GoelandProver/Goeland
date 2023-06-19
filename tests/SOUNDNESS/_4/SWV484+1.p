%------------------------------------------------------------------------------
% File     : SWV484+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Software Verification (Security)
% Problem  : PKCS11 for 4 handles and 2 keys
% Version  : [Ste09] axioms : Especial.
% English  : Attempts to prove that the intruder can learn the cleartext value
%            of a sensitive key in a paricular configuration of PKCS11.

% Refs     : [DKS08] Delaune et al. (2008), Formal Analysis of PKCS#11
%          : [Ste09] Steel (2009), Email to Geoff Sutcliffe
% Source   : [Ste09]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.25 v7.5.0, 0.40 v7.4.0, 0.33 v7.3.0, 0.00 v7.1.0, 0.33 v7.0.0, 0.67 v6.4.0, 0.00 v6.3.0, 0.33 v6.2.0, 0.82 v6.0.0, 0.62 v5.5.0, 0.75 v5.4.0, 0.71 v5.2.0, 0.83 v5.0.0, 0.86 v4.1.0, 0.80 v4.0.1, 1.00 v4.0.0
% Syntax   : Number of formulae    :   83 (   2 unt;   0 def)
%            Number of atoms       :  231 (  68 equ)
%            Maximal formula atoms :   69 (   2 avg)
%            Number of connectives :  148 (   0   ~;   0   |;  33   &)
%                                         (   0 <=>;  81  =>;   0  <=;  34 <~>)
%            Maximal formula depth :   71 (  37 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    7 (   7 usr;   2 con; 0-7 aty)
%            Number of variables   : 2874 (2870   !;   4   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(initial_state,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] : p(state(h(n1,n0,n0,n0,n0,n0,n1),h(n1,n0,n0,n0,n0,n0,n0),h(n0,n0,n0,n0,n0,n0,n0),h(n0,n0,n0,n0,n0,n0,n0)),iknows(atoms(n0,n0),enc(n0,n0,n0,n0))) ).

%----Wrap sym=sym for hn1k1 hn1k1
fof(wrap_hn1k1_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,n1,X1,X2,X3,X4,n1),X6,X7,X8),iknows(X9,enc(n0,X11,X12,X13)))
     => p(state(h(n1,n1,X1,X2,X3,X4,n1),X6,X7,X8),iknows(X9,enc(n1,X11,X12,X13))) ) ).

%----Wrap sym=sym for hn1k1 hn1k2
fof(wrap_hn1k1_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,n1,X1,X2,X3,X4,X5),h(n1,X6,X7,X8,X9,X10,n1),X12,X13),iknows(X14,enc(X15,X16,n0,X18)))
     => p(state(h(n1,n1,X1,X2,X3,X4,X5),h(n1,X6,X7,X8,X9,X10,n1),X12,X13),iknows(X14,enc(X15,X16,n1,X18))) ) ).

%----Wrap sym=sym for hn1k1 hn2k1
fof(wrap_hn1k1_hn2k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,n1,X1,X2,X3,X4,X5),X6,h(n1,X7,X8,X9,X10,X11,n1),X13),iknows(X14,enc(n0,X16,X17,X18)))
     => p(state(h(n1,n1,X1,X2,X3,X4,X5),X6,h(n1,X7,X8,X9,X10,X11,n1),X13),iknows(X14,enc(n1,X16,X17,X18))) ) ).

%----Wrap sym=sym for hn1k1 hn2k2
fof(wrap_hn1k1_hn2k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,n1,X1,X2,X3,X4,X5),X6,X7,h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,n0,X18)))
     => p(state(h(n1,n1,X1,X2,X3,X4,X5),X6,X7,h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,n1,X18))) ) ).

%----Wrap sym=sym for hn1k2 hn1k1
fof(wrap_hn1k2_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,X2,X3,X4,n1),h(n1,n1,X7,X8,X9,X10,X11),X12,X13),iknows(X14,enc(X15,n0,X17,X18)))
     => p(state(h(n1,X0,X1,X2,X3,X4,n1),h(n1,n1,X7,X8,X9,X10,X11),X12,X13),iknows(X14,enc(X15,n1,X17,X18))) ) ).

%----Wrap sym=sym for hn1k2 hn1k2
fof(wrap_hn1k2_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,n1,X2,X3,X4,X5,n1),X7,X8),iknows(X9,enc(X10,X11,X12,n0)))
     => p(state(X0,h(n1,n1,X2,X3,X4,X5,n1),X7,X8),iknows(X9,enc(X10,X11,X12,n1))) ) ).

%----Wrap sym=sym for hn1k2 hn2k1
fof(wrap_hn1k2_hn2k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,n1,X2,X3,X4,X5,X6),h(n1,X7,X8,X9,X10,X11,n1),X13),iknows(X14,enc(X15,n0,X17,X18)))
     => p(state(X0,h(n1,n1,X2,X3,X4,X5,X6),h(n1,X7,X8,X9,X10,X11,n1),X13),iknows(X14,enc(X15,n1,X17,X18))) ) ).

%----Wrap sym=sym for hn1k2 hn2k2
fof(wrap_hn1k2_hn2k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,n1,X2,X3,X4,X5,X6),X7,h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,X17,n0)))
     => p(state(X0,h(n1,n1,X2,X3,X4,X5,X6),X7,h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,X17,n1))) ) ).

%----Wrap sym=sym for hn2k1 hn1k1
fof(wrap_hn2k1_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,X2,X3,X4,n1),X6,h(n1,n1,X8,X9,X10,X11,X12),X13),iknows(X14,enc(n0,X16,X17,X18)))
     => p(state(h(n1,X0,X1,X2,X3,X4,n1),X6,h(n1,n1,X8,X9,X10,X11,X12),X13),iknows(X14,enc(n1,X16,X17,X18))) ) ).

%----Wrap sym=sym for hn2k1 hn1k2
fof(wrap_hn2k1_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,X2,X3,X4,X5,n1),h(n1,n1,X8,X9,X10,X11,X12),X13),iknows(X14,enc(X15,X16,n0,X18)))
     => p(state(X0,h(n1,X1,X2,X3,X4,X5,n1),h(n1,n1,X8,X9,X10,X11,X12),X13),iknows(X14,enc(X15,X16,n1,X18))) ) ).

%----Wrap sym=sym for hn2k1 hn2k1
fof(wrap_hn2k1_hn2k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,n1,X3,X4,X5,X6,n1),X8),iknows(X9,enc(n0,X11,X12,X13)))
     => p(state(X0,X1,h(n1,n1,X3,X4,X5,X6,n1),X8),iknows(X9,enc(n1,X11,X12,X13))) ) ).

%----Wrap sym=sym for hn2k1 hn2k2
fof(wrap_hn2k1_hn2k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,n1,X3,X4,X5,X6,X7),h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,n0,X18)))
     => p(state(X0,X1,h(n1,n1,X3,X4,X5,X6,X7),h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,n1,X18))) ) ).

%----Wrap sym=sym for hn2k2 hn1k1
fof(wrap_hn2k2_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,X2,X3,X4,n1),X6,X7,h(n1,n1,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,n0,X17,X18)))
     => p(state(h(n1,X0,X1,X2,X3,X4,n1),X6,X7,h(n1,n1,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,n1,X17,X18))) ) ).

%----Wrap sym=sym for hn2k2 hn1k2
fof(wrap_hn2k2_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,X2,X3,X4,X5,n1),X7,h(n1,n1,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,X16,X17,n0)))
     => p(state(X0,h(n1,X1,X2,X3,X4,X5,n1),X7,h(n1,n1,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,X16,X17,n1))) ) ).

%----Wrap sym=sym for hn2k2 hn2k1
fof(wrap_hn2k2_hn2k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,X3,X4,X5,X6,n1),h(n1,n1,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,n0,X17,X18)))
     => p(state(X0,X1,h(n1,X2,X3,X4,X5,X6,n1),h(n1,n1,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,n1,X17,X18))) ) ).

%----Wrap sym=sym for hn2k2 hn2k2
fof(wrap_hn2k2_hn2k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,n1,X4,X5,X6,X7,n1)),iknows(X9,enc(X10,X11,X12,n0)))
     => p(state(X0,X1,X2,h(n1,n1,X4,X5,X6,X7,n1)),iknows(X9,enc(X10,X11,X12,n1))) ) ).

%----Unwrap sym=sym for hn1k1 hn1k1
fof(unwrap_hn1k1_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,n1,X2,X3,X4,X5),X6,X7,X8),iknows(X9,enc(n1,X11,X12,X13)))
     => p(state(h(n1,X0,n1,X2,X3,X4,n1),X6,X7,X8),iknows(X9,enc(n1,X11,X12,X13))) ) ).

%----Unwrap sym=sym for hn1k1 hn1k2
fof(unwrap_hn1k1_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,n1,X2,X3,X4,X5),h(n0,X6,X7,X8,X9,X10,X11),X12,X13),iknows(X14,enc(X15,X16,n1,X18)))
     => p(state(h(n1,X0,n1,X2,X3,X4,X5),h(n1,X6,X7,X8,X9,X10,n1),X12,X13),iknows(X14,enc(X15,X16,n1,X18))) ) ).

%----Unwrap sym=sym for hn1k1 hn2k1
fof(unwrap_hn1k1_hn2k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,n1,X2,X3,X4,X5),X6,h(n0,X7,X8,X9,X10,X11,X12),X13),iknows(X14,enc(n1,X16,X17,X18)))
     => p(state(h(n1,X0,n1,X2,X3,X4,X5),X6,h(n1,X7,X8,X9,X10,X11,n1),X13),iknows(X14,enc(n1,X16,X17,X18))) ) ).

%----Unwrap sym=sym for hn1k1 hn2k2
fof(unwrap_hn1k1_hn2k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,n1,X2,X3,X4,X5),X6,X7,h(n0,X8,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,X16,n1,X18)))
     => p(state(h(n1,X0,n1,X2,X3,X4,X5),X6,X7,h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,n1,X18))) ) ).

%----Unwrap sym=sym for hn1k2 hn1k1
fof(unwrap_hn1k2_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n0,X0,X1,X2,X3,X4,X5),h(n1,X6,n1,X8,X9,X10,X11),X12,X13),iknows(X14,enc(X15,n1,X17,X18)))
     => p(state(h(n1,X0,X1,X2,X3,X4,n1),h(n1,X6,n1,X8,X9,X10,X11),X12,X13),iknows(X14,enc(X15,n1,X17,X18))) ) ).

%----Unwrap sym=sym for hn1k2 hn1k2
fof(unwrap_hn1k2_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,n1,X3,X4,X5,X6),X7,X8),iknows(X9,enc(X10,X11,X12,n1)))
     => p(state(X0,h(n1,X1,n1,X3,X4,X5,n1),X7,X8),iknows(X9,enc(X10,X11,X12,n1))) ) ).

%----Unwrap sym=sym for hn1k2 hn2k1
fof(unwrap_hn1k2_hn2k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,n1,X3,X4,X5,X6),h(n0,X7,X8,X9,X10,X11,X12),X13),iknows(X14,enc(X15,n1,X17,X18)))
     => p(state(X0,h(n1,X1,n1,X3,X4,X5,X6),h(n1,X7,X8,X9,X10,X11,n1),X13),iknows(X14,enc(X15,n1,X17,X18))) ) ).

%----Unwrap sym=sym for hn1k2 hn2k2
fof(unwrap_hn1k2_hn2k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,n1,X3,X4,X5,X6),X7,h(n0,X8,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,X16,X17,n1)))
     => p(state(X0,h(n1,X1,n1,X3,X4,X5,X6),X7,h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,X17,n1))) ) ).

%----Unwrap sym=sym for hn2k1 hn1k1
fof(unwrap_hn2k1_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n0,X0,X1,X2,X3,X4,X5),X6,h(n1,X7,n1,X9,X10,X11,X12),X13),iknows(X14,enc(n1,X16,X17,X18)))
     => p(state(h(n1,X0,X1,X2,X3,X4,n1),X6,h(n1,X7,n1,X9,X10,X11,X12),X13),iknows(X14,enc(n1,X16,X17,X18))) ) ).

%----Unwrap sym=sym for hn2k1 hn1k2
fof(unwrap_hn2k1_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n0,X1,X2,X3,X4,X5,X6),h(n1,X7,n1,X9,X10,X11,X12),X13),iknows(X14,enc(X15,X16,n1,X18)))
     => p(state(X0,h(n1,X1,X2,X3,X4,X5,n1),h(n1,X7,n1,X9,X10,X11,X12),X13),iknows(X14,enc(X15,X16,n1,X18))) ) ).

%----Unwrap sym=sym for hn2k1 hn2k1
fof(unwrap_hn2k1_hn2k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,n1,X4,X5,X6,X7),X8),iknows(X9,enc(n1,X11,X12,X13)))
     => p(state(X0,X1,h(n1,X2,n1,X4,X5,X6,n1),X8),iknows(X9,enc(n1,X11,X12,X13))) ) ).

%----Unwrap sym=sym for hn2k1 hn2k2
fof(unwrap_hn2k1_hn2k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,n1,X4,X5,X6,X7),h(n0,X8,X9,X10,X11,X12,X13)),iknows(X14,enc(X15,X16,n1,X18)))
     => p(state(X0,X1,h(n1,X2,n1,X4,X5,X6,X7),h(n1,X8,X9,X10,X11,X12,n1)),iknows(X14,enc(X15,X16,n1,X18))) ) ).

%----Unwrap sym=sym for hn2k2 hn1k1
fof(unwrap_hn2k2_hn1k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n0,X0,X1,X2,X3,X4,X5),X6,X7,h(n1,X8,n1,X10,X11,X12,X13)),iknows(X14,enc(X15,n1,X17,X18)))
     => p(state(h(n1,X0,X1,X2,X3,X4,n1),X6,X7,h(n1,X8,n1,X10,X11,X12,X13)),iknows(X14,enc(X15,n1,X17,X18))) ) ).

%----Unwrap sym=sym for hn2k2 hn1k2
fof(unwrap_hn2k2_hn1k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n0,X1,X2,X3,X4,X5,X6),X7,h(n1,X8,n1,X10,X11,X12,X13)),iknows(X14,enc(X15,X16,X17,n1)))
     => p(state(X0,h(n1,X1,X2,X3,X4,X5,n1),X7,h(n1,X8,n1,X10,X11,X12,X13)),iknows(X14,enc(X15,X16,X17,n1))) ) ).

%----Unwrap sym=sym for hn2k2 hn2k1
fof(unwrap_hn2k2_hn2k1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n0,X2,X3,X4,X5,X6,X7),h(n1,X8,n1,X10,X11,X12,X13)),iknows(X14,enc(X15,n1,X17,X18)))
     => p(state(X0,X1,h(n1,X2,X3,X4,X5,X6,n1),h(n1,X8,n1,X10,X11,X12,X13)),iknows(X14,enc(X15,n1,X17,X18))) ) ).

%----Unwrap sym=sym for hn2k2 hn2k2
fof(unwrap_hn2k2_hn2k2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,X3,n1,X5,X6,X7,X8)),iknows(X9,enc(X10,X11,X12,n1)))
     => p(state(X0,X1,X2,h(n1,X3,n1,X5,X6,X7,n1)),iknows(X9,enc(X10,X11,X12,n1))) ) ).

%----Set attribute for hn1k1 wrap
fof(set_attr_hn1k1_wrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,n0,n0,X2,n0,X4,X5),X6,X7,X8),X9)
     => p(state(h(n1,n1,n0,X2,n0,X4,X5),X6,X7,X8),X9) ) ).

%----Set attribute for hn1k1 unwrap
fof(set_attr_hn1k1_unwrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,n0,n0,n0,X3,X4,X5),X6,X7,X8),X9)
     => p(state(h(n1,n0,n1,n0,X3,X4,X5),X6,X7,X8),X9) ) ).

%----Set attribute for hn1k1 encrypt
fof(set_attr_hn1k1_encrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,n0,n0,n0,X3,X4,X5),X6,X7,X8),X9)
     => p(state(h(n1,n0,n0,n1,X3,X4,X5),X6,X7,X8),X9) ) ).

%----Set attribute for hn1k1 decrypt
fof(set_attr_hn1k1_decrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,n0,X1,X2,n0,X4,X5),X6,X7,X8),X9)
     => p(state(h(n1,n0,X1,X2,n1,X4,X5),X6,X7,X8),X9) ) ).

%----Set attribute for hn1k1 sensitive
fof(set_attr_hn1k1_sensitive_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,X2,X3,n0,X5),X6,X7,X8),X9)
     => p(state(h(n1,X0,X1,X2,X3,n1,X5),X6,X7,X8),X9) ) ).

%----Set attribute for hn1k2 wrap
fof(set_attr_hn1k2_wrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,n0,n0,X3,n0,X5,X6),X7,X8),X9)
     => p(state(X0,h(n1,n1,n0,X3,n0,X5,X6),X7,X8),X9) ) ).

%----Set attribute for hn1k2 unwrap
fof(set_attr_hn1k2_unwrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,n0,n0,n0,X4,X5,X6),X7,X8),X9)
     => p(state(X0,h(n1,n0,n1,n0,X4,X5,X6),X7,X8),X9) ) ).

%----Set attribute for hn1k2 encrypt
fof(set_attr_hn1k2_encrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,n0,n0,n0,X4,X5,X6),X7,X8),X9)
     => p(state(X0,h(n1,n0,n0,n1,X4,X5,X6),X7,X8),X9) ) ).

%----Set attribute for hn1k2 decrypt
fof(set_attr_hn1k2_decrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,n0,X2,X3,n0,X5,X6),X7,X8),X9)
     => p(state(X0,h(n1,n0,X2,X3,n1,X5,X6),X7,X8),X9) ) ).

%----Set attribute for hn1k2 sensitive
fof(set_attr_hn1k2_sensitive_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,X2,X3,X4,n0,X6),X7,X8),X9)
     => p(state(X0,h(n1,X1,X2,X3,X4,n1,X6),X7,X8),X9) ) ).

%----Set attribute for hn2k1 wrap
fof(set_attr_hn2k1_wrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,n0,n0,X4,n0,X6,X7),X8),X9)
     => p(state(X0,X1,h(n1,n1,n0,X4,n0,X6,X7),X8),X9) ) ).

%----Set attribute for hn2k1 unwrap
fof(set_attr_hn2k1_unwrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,n0,n0,n0,X5,X6,X7),X8),X9)
     => p(state(X0,X1,h(n1,n0,n1,n0,X5,X6,X7),X8),X9) ) ).

%----Set attribute for hn2k1 encrypt
fof(set_attr_hn2k1_encrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,n0,n0,n0,X5,X6,X7),X8),X9)
     => p(state(X0,X1,h(n1,n0,n0,n1,X5,X6,X7),X8),X9) ) ).

%----Set attribute for hn2k1 decrypt
fof(set_attr_hn2k1_decrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,n0,X3,X4,n0,X6,X7),X8),X9)
     => p(state(X0,X1,h(n1,n0,X3,X4,n1,X6,X7),X8),X9) ) ).

%----Set attribute for hn2k1 sensitive
fof(set_attr_hn2k1_sensitive_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,X3,X4,X5,n0,X7),X8),X9)
     => p(state(X0,X1,h(n1,X2,X3,X4,X5,n1,X7),X8),X9) ) ).

%----Set attribute for hn2k2 wrap
fof(set_attr_hn2k2_wrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,n0,n0,X5,n0,X7,X8)),X9)
     => p(state(X0,X1,X2,h(n1,n1,n0,X5,n0,X7,X8)),X9) ) ).

%----Set attribute for hn2k2 unwrap
fof(set_attr_hn2k2_unwrap_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,n0,n0,n0,X6,X7,X8)),X9)
     => p(state(X0,X1,X2,h(n1,n0,n1,n0,X6,X7,X8)),X9) ) ).

%----Set attribute for hn2k2 encrypt
fof(set_attr_hn2k2_encrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,n0,n0,n0,X6,X7,X8)),X9)
     => p(state(X0,X1,X2,h(n1,n0,n0,n1,X6,X7,X8)),X9) ) ).

%----Set attribute for hn2k2 decrypt
fof(set_attr_hn2k2_decrypt_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,n0,X4,X5,n0,X7,X8)),X9)
     => p(state(X0,X1,X2,h(n1,n0,X4,X5,n1,X7,X8)),X9) ) ).

%----Set attribute for hn2k2 sensitive
fof(set_attr_hn2k2_sensitive_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,X3,X4,X5,X6,n0,X8)),X9)
     => p(state(X0,X1,X2,h(n1,X3,X4,X5,X6,n1,X8)),X9) ) ).

%----Unset attribute for hn1k1 extractable
fof(set_attr_hn1k1_extractable_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,X2,X3,X4,n1),X6,X7,X8),X9)
     => p(state(h(n1,X0,X1,X2,X3,X4,n0),X6,X7,X8),X9) ) ).

%----Unset attribute for hn1k2 extractable
fof(set_attr_hn1k2_extractable_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,X2,X3,X4,X5,n1),X7,X8),X9)
     => p(state(X0,h(n1,X1,X2,X3,X4,X5,n0),X7,X8),X9) ) ).

%----Unset attribute for hn2k1 extractable
fof(set_attr_hn2k1_extractable_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,X3,X4,X5,X6,n1),X8),X9)
     => p(state(X0,X1,h(n1,X2,X3,X4,X5,X6,n0),X8),X9) ) ).

%----Unset attribute for hn2k2 extractable
fof(set_attr_hn2k2_extractable_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,X3,X4,X5,X6,X7,n1)),X9)
     => p(state(X0,X1,X2,h(n1,X3,X4,X5,X6,X7,n0)),X9) ) ).

%----Decrypt hn1k1 k1Enck1
fof(decrypt_hn1k1_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,X2,n1,X4,X5),X6,X7,X8),iknows(atoms(n0,X10),enc(n1,X12,X13,X14)))
     => p(state(h(n1,X0,X1,X2,n1,X4,X5),X6,X7,X8),iknows(atoms(n1,X10),enc(n1,X12,X13,X14))) ) ).

%----Decrypt hn1k1 k2Enck1
fof(decrypt_hn1k1_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,X2,n1,X4,X5),X6,X7,X8),iknows(atoms(X9,n0),enc(X11,X12,n1,X14)))
     => p(state(h(n1,X0,X1,X2,n1,X4,X5),X6,X7,X8),iknows(atoms(X9,n1),enc(X11,X12,n1,X14))) ) ).

%----Decrypt hn1k2 k1Enck2
fof(decrypt_hn1k2_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,X2,X3,n1,X5,X6),X7,X8),iknows(atoms(n0,X10),enc(X11,n1,X13,X14)))
     => p(state(X0,h(n1,X1,X2,X3,n1,X5,X6),X7,X8),iknows(atoms(n1,X10),enc(X11,n1,X13,X14))) ) ).

%----Decrypt hn1k2 k2Enck2
fof(decrypt_hn1k2_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,X2,X3,n1,X5,X6),X7,X8),iknows(atoms(X9,n0),enc(X11,X12,X13,n1)))
     => p(state(X0,h(n1,X1,X2,X3,n1,X5,X6),X7,X8),iknows(atoms(X9,n1),enc(X11,X12,X13,n1))) ) ).

%----Decrypt hn2k1 k1Enck1
fof(decrypt_hn2k1_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,X3,X4,n1,X6,X7),X8),iknows(atoms(n0,X10),enc(n1,X12,X13,X14)))
     => p(state(X0,X1,h(n1,X2,X3,X4,n1,X6,X7),X8),iknows(atoms(n1,X10),enc(n1,X12,X13,X14))) ) ).

%----Decrypt hn2k1 k2Enck1
fof(decrypt_hn2k1_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,X3,X4,n1,X6,X7),X8),iknows(atoms(X9,n0),enc(X11,X12,n1,X14)))
     => p(state(X0,X1,h(n1,X2,X3,X4,n1,X6,X7),X8),iknows(atoms(X9,n1),enc(X11,X12,n1,X14))) ) ).

%----Decrypt hn2k2 k1Enck2
fof(decrypt_hn2k2_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,X3,X4,X5,n1,X7,X8)),iknows(atoms(n0,X10),enc(X11,n1,X13,X14)))
     => p(state(X0,X1,X2,h(n1,X3,X4,X5,n1,X7,X8)),iknows(atoms(n1,X10),enc(X11,n1,X13,X14))) ) ).

%----Decrypt hn2k2 k2Enck2
fof(decrypt_hn2k2_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,X3,X4,X5,n1,X7,X8)),iknows(atoms(X9,n0),enc(X11,X12,X13,n1)))
     => p(state(X0,X1,X2,h(n1,X3,X4,X5,n1,X7,X8)),iknows(atoms(X9,n1),enc(X11,X12,X13,n1))) ) ).

%----Encrypt hn1k1 k1Enck1
fof(encrypt_hn1k1_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,n1,X3,X4,X5),X6,X7,X8),iknows(atoms(n1,X10),enc(n0,X12,X13,X14)))
     => p(state(h(n1,X0,X1,n1,X3,X4,X5),X6,X7,X8),iknows(atoms(n1,X10),enc(n1,X12,X13,X14))) ) ).

%----Encrypt hn1k1 k2Enck1
fof(encrypt_hn1k1_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(n1,X0,X1,n1,X3,X4,X5),X6,X7,X8),iknows(atoms(X9,n1),enc(X11,X12,n0,X14)))
     => p(state(h(n1,X0,X1,n1,X3,X4,X5),X6,X7,X8),iknows(atoms(X9,n1),enc(X11,X12,n1,X14))) ) ).

%----Encrypt hn1k2 k1Enck2
fof(encrypt_hn1k2_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,X2,n1,X4,X5,X6),X7,X8),iknows(atoms(n1,X10),enc(X11,n0,X13,X14)))
     => p(state(X0,h(n1,X1,X2,n1,X4,X5,X6),X7,X8),iknows(atoms(n1,X10),enc(X11,n1,X13,X14))) ) ).

%----Encrypt hn1k2 k2Enck2
fof(encrypt_hn1k2_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,h(n1,X1,X2,n1,X4,X5,X6),X7,X8),iknows(atoms(X9,n1),enc(X11,X12,X13,n0)))
     => p(state(X0,h(n1,X1,X2,n1,X4,X5,X6),X7,X8),iknows(atoms(X9,n1),enc(X11,X12,X13,n1))) ) ).

%----Encrypt hn2k1 k1Enck1
fof(encrypt_hn2k1_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,X3,n1,X5,X6,X7),X8),iknows(atoms(n1,X10),enc(n0,X12,X13,X14)))
     => p(state(X0,X1,h(n1,X2,X3,n1,X5,X6,X7),X8),iknows(atoms(n1,X10),enc(n1,X12,X13,X14))) ) ).

%----Encrypt hn2k1 k2Enck1
fof(encrypt_hn2k1_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,h(n1,X2,X3,n1,X5,X6,X7),X8),iknows(atoms(X9,n1),enc(X11,X12,n0,X14)))
     => p(state(X0,X1,h(n1,X2,X3,n1,X5,X6,X7),X8),iknows(atoms(X9,n1),enc(X11,X12,n1,X14))) ) ).

%----Encrypt hn2k2 k1Enck2
fof(encrypt_hn2k2_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,X3,X4,n1,X6,X7,X8)),iknows(atoms(n1,X10),enc(X11,n0,X13,X14)))
     => p(state(X0,X1,X2,h(n1,X3,X4,n1,X6,X7,X8)),iknows(atoms(n1,X10),enc(X11,n1,X13,X14))) ) ).

%----Encrypt hn2k2 k2Enck2
fof(encrypt_hn2k2_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,h(n1,X3,X4,n1,X6,X7,X8)),iknows(atoms(X9,n1),enc(X11,X12,X13,n0)))
     => p(state(X0,X1,X2,h(n1,X3,X4,n1,X6,X7,X8)),iknows(atoms(X9,n1),enc(X11,X12,X13,n1))) ) ).

%----Intruder encrypt k1Enck1
fof(encrypt_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,X3),iknows(atoms(n1,X5),enc(n0,X7,X8,X9)))
     => p(state(X0,X1,X2,X3),iknows(atoms(n1,X5),enc(n1,X7,X8,X9))) ) ).

%----Intruder encrypt k2Enck1
fof(encrypt_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,X3),iknows(atoms(n1,n1),enc(X6,X7,n0,X9)))
     => p(state(X0,X1,X2,X3),iknows(atoms(n1,n1),enc(X6,X7,n1,X9))) ) ).

%----Intruder encrypt k1Enck2
fof(encrypt_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,X3),iknows(atoms(n1,n1),enc(X6,n0,X8,X9)))
     => p(state(X0,X1,X2,X3),iknows(atoms(n1,n1),enc(X6,n1,X8,X9))) ) ).

%----Intruder encrypt k2Enck2
fof(encrypt_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,X3),iknows(atoms(X4,n1),enc(X6,X7,X8,n0)))
     => p(state(X0,X1,X2,X3),iknows(atoms(X4,n1),enc(X6,X7,X8,n1))) ) ).

%----Intruder decrypt k1Enck1
fof(intruder_decrypt_k1Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,X3),iknows(atoms(n1,X5),enc(n1,X7,X8,X9)))
     => p(state(X0,X1,X2,X3),iknows(atoms(n1,X5),enc(n1,X7,X8,X9))) ) ).

%----Intruder decrypt k2Enck1
fof(intruder_decrypt_k2Enck1_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,X3),iknows(atoms(n1,n0),enc(X6,X7,n1,X9)))
     => p(state(X0,X1,X2,X3),iknows(atoms(X4,n1),enc(X6,X7,n1,X9))) ) ).

%----Intruder decrypt k1Enck2
fof(intruder_decrypt_k1Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,X3),iknows(atoms(n0,n1),enc(X6,n1,X8,X9)))
     => p(state(X0,X1,X2,X3),iknows(atoms(n1,X5),enc(X6,n1,X8,X9))) ) ).

%----Intruder decrypt k2Enck2
fof(intruder_decrypt_k2Enck2_command,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(X0,X1,X2,X3),iknows(atoms(X4,n1),enc(X6,X7,X8,n1)))
     => p(state(X0,X1,X2,X3),iknows(atoms(X4,n1),enc(X6,X7,X8,n1))) ) ).

%----Domain constraints
fof(domain_constraints,axiom,
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34] :
      ( p(state(h(X0,X1,X2,X3,X4,X5,X6),h(X7,X8,X9,X10,X11,X12,X13),h(X14,X15,X16,X17,X18,X19,X20),h(X21,X22,X23,X24,X25,X26,X27)),iknows(atoms(X28,X29),enc(X30,X31,X32,X33)))
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
    ? [X,Y,X1,X2] : p(X,iknows(atoms(n1,X1),Y)) ).

%------------------------------------------------------------------------------
