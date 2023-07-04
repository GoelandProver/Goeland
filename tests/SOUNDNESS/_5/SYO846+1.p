%------------------------------------------------------------------------------
% File     : SYO846+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Syntactic
% Problem  : ProofGold problem AbstrHF_113_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : AbstrHF_113_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0
% Syntax   : Number of formulae    :   80 (  64 unt;   0 def)
%            Number of atoms       :  116 (  23 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   71 (  35   ~;  10   |;   4   &)
%                                         (   3 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   2 avg)
%            Maximal term depth    :    7 (   2 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 1-2 aty)
%            Number of functors    :   10 (  10 usr;   5 con; 0-2 aty)
%            Number of variables   :   26 (  24   !;   2   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : See https://proofgold.org
%------------------------------------------------------------------------------
fof(ax1,axiom,
    ! [X24] :
      ( aal6(X24)
    <=> ? [X25] :
          ( asubq(X25,X24)
          & ~ asubq(X24,X25)
          & aal5(X25) ) ) ).

fof(ax2,axiom,
    ! [X24] :
      ( aex3(X24)
    <=> ( aal3(X24)
        & ~ aal4(X24) ) ) ).

fof(ax3,axiom,
    ! [X24] :
      ( ain(X24,a3)
    <=> ( X24 = a0
        | X24 = a1
        | X24 = a2 ) ) ).

fof(ax4,axiom,
    ! [X24,X25] :
      ( ain(X25,apow(X24))
     => asubq(X25,X24) ) ).

fof(ax5,axiom,
    ! [X24,X25,X26] :
      ( ain(X26,asm(X24,X25))
     => ~ ain(X26,X25) ) ).

fof(ax6,axiom,
    ! [X24] : ain(X24,apow(X24)) ).

fof(ax7,axiom,
    ! [X24,X25] :
      ( asubq(X25,X24)
     => ( ~ asubq(X24,X25)
       => ? [X26] :
            ( ain(X26,X24)
            & asubq(X25,asm(X24,asing(X26))) ) ) ) ).

fof(ax8,axiom,
    ! [X24,X25] :
      ( ~ aal6(X24)
     => ~ aal7(aun(X24,asing(X25))) ) ).

fof(ax9,axiom,
    ! [X24,X25,X26] :
      ( ain(X26,aun(X24,X25))
     => ( aal4(asm(aun(X24,X25),asing(X26)))
       => ( aal3(X24)
          | aal3(X25) ) ) ) ).

fof(ax10,axiom,
    ~ ain(a0,a0) ).

fof(ax11,axiom,
    ~ ain(a2,a2) ).

fof(ax12,axiom,
    ~ asubq(a2,a0) ).

fof(ax13,axiom,
    a0 != asing(a1) ).

fof(ax14,axiom,
    ~ ain(asing(asing(a1)),a2) ).

fof(ax15,axiom,
    ~ ain(asm(a3,asing(a1)),a2) ).

fof(ax16,axiom,
    a2 != apow(asing(a1)) ).

fof(ax17,axiom,
    asing(asing(a1)) != apow(asing(a1)) ).

fof(ax18,axiom,
    asubq(aun(asing(a1),asing(asing(a1))),asm(apow(a2),asing(a2))) ).

fof(ax19,axiom,
    ~ ain(asm(apow(a2),apow(asing(a2))),asm(apow(a2),asing(a2))) ).

fof(ax20,axiom,
    a2 != asing(a2) ).

fof(ax21,axiom,
    ~ ain(asm(apow(a2),apow(asing(a2))),asm(apow(a2),asing(a1))) ).

fof(ax22,axiom,
    asm(apow(a2),apow(asing(a2))) != apow(a2) ).

fof(ax23,axiom,
    ain(asing(asing(a1)),asing(asing(asing(a1)))) ).

fof(ax24,axiom,
    ain(a0,apow(asing(asing(a1)))) ).

fof(ax25,axiom,
    ain(a0,apow(apow(asing(a1)))) ).

fof(ax26,axiom,
    ~ ain(asing(asing(a1)),asing(apow(asing(a1)))) ).

fof(ax27,axiom,
    ain(asing(a1),aun(asing(asing(a1)),asing(asing(asing(a1))))) ).

fof(ax28,axiom,
    ain(a0,apow(aun(asing(a1),asing(asing(a1))))) ).

fof(ax29,axiom,
    ain(asing(asing(a1)),aun(asm(apow(a2),a2),apow(asing(asing(a1))))) ).

fof(ax30,axiom,
    ain(a1,aun(asm(apow(a2),apow(asing(a2))),asing(asing(asing(a1))))) ).

fof(ax31,axiom,
    ain(a2,asm(a4,asing(a1))) ).

fof(ax32,axiom,
    ~ ain(a1,asing(a3)) ).

fof(ax33,axiom,
    ~ ain(asm(apow(a2),a2),a4) ).

fof(ax34,axiom,
    ~ ain(a1,aun(asing(asing(a1)),asing(a3))) ).

fof(ax35,axiom,
    ain(a1,asm(aun(asing(asing(a2)),a4),asm(apow(a2),asing(a1)))) ).

fof(ax36,axiom,
    ~ ain(asing(a1),aun(asing(asing(a2)),a4)) ).

fof(ax37,axiom,
    ain(a2,aun(asing(asing(a1)),aun(asing(asing(a2)),a4))) ).

fof(ax38,axiom,
    ~ ain(asm(apow(a2),a2),aun(asing(asing(a1)),aun(asing(asing(a2)),a4))) ).

fof(ax39,axiom,
    ~ ain(asm(a3,asing(a1)),aun(apow(asing(a2)),asing(apow(a2)))) ).

fof(ax40,axiom,
    ain(a1,aun(asm(apow(a2),apow(asing(a1))),aun(asing(asing(a2)),asing(apow(a2))))) ).

fof(ax41,axiom,
    ain(a2,aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2))))) ).

fof(ax42,axiom,
    ain(a1,aun(asing(asing(a1)),aun(a4,asing(apow(a2))))) ).

fof(ax43,axiom,
    ! [X24] :
      ( asubq(X24,aun(asing(a1),asing(asing(a1))))
     => ( ~ ain(asing(a1),X24)
       => ( ain(a1,X24)
         => X24 = asing(a1) ) ) ) ).

fof(ax44,axiom,
    ! [X24] :
      ( ain(X24,aun(aun(asing(a1),asing(asing(a1))),apow(asing(asing(a1)))))
     => ( X24 = a0
        | X24 = a1
        | X24 = asing(a1)
        | X24 = asing(asing(a1)) ) ) ).

fof(ax45,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,asing(a1)))
     => ( X24 = a0
        | X24 = a2
        | X24 = a3 ) ) ).

fof(ax46,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,apow(asing(a2))))
     => ( X24 = a1
        | X24 = a2
        | X24 = a3 ) ) ).

fof(ax47,axiom,
    ~ asubq(aun(asing(apow(asing(a1))),a4),a4) ).

fof(ax48,axiom,
    ~ asubq(aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))),aun(asm(apow(a2),apow(asing(a1))),apow(asing(asing(a1))))) ).

fof(ax49,axiom,
    asubq(apow(a2),aun(asing(asing(a1)),aun(a4,asing(apow(a2))))) ).

fof(ax50,axiom,
    ~ asubq(aun(asing(asing(a1)),aun(asing(asing(a2)),a4)),aun(asing(asing(a2)),a4)) ).

fof(ax51,axiom,
    asubq(a1,asm(a2,asing(a1))) ).

fof(ax52,axiom,
    asubq(a2,asm(a3,asing(a2))) ).

fof(ax53,axiom,
    asubq(asm(asm(apow(a2),a2),asing(asing(a1))),asing(a2)) ).

fof(ax54,axiom,
    asubq(asm(asm(apow(a2),a2),asing(a2)),asing(asing(a1))) ).

fof(ax55,axiom,
    asm(asm(apow(a2),apow(asing(a2))),asing(a2)) = aun(asing(a1),asing(asing(a1))) ).

fof(ax56,axiom,
    asubq(aun(asing(a1),asing(a3)),asm(asm(a4,asing(a2)),asing(a0))) ).

fof(ax57,axiom,
    asm(asm(a4,asing(a1)),asing(a3)) = asm(a3,asing(a1)) ).

fof(ax58,axiom,
    aint(aun(apow(a2),asing(asing(a2))),aun(a4,asing(asm(apow(a2),a2)))) = a3 ).

fof(ax59,axiom,
    ! [X24] :
      ( ain(X24,aun(apow(a2),asing(asing(a2))))
     => ( ain(X24,aun(asing(a2),aun(apow(asing(a2)),asing(apow(a2)))))
       => ~ ain(X24,asing(apow(a2))) ) ) ).

fof(ax60,axiom,
    aint(aun(aun(asing(a2),apow(asing(a2))),asing(asm(a3,asing(a1)))),aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2))))) = aun(asing(a2),apow(asing(a2))) ).

fof(ax61,axiom,
    ~ aal2(asing(a3)) ).

fof(ax62,axiom,
    ! [X24] :
      ( ain(X24,a2)
     => ~ aal2(asm(a2,asing(X24))) ) ).

fof(ax63,axiom,
    ! [X24] :
      ( ain(X24,aun(apow(asing(a2)),asing(apow(a2))))
     => ~ aal3(asm(aun(apow(asing(a2)),asing(apow(a2))),asing(X24))) ) ).

fof(ax64,axiom,
    aal2(asm(a4,a2)) ).

fof(ax65,axiom,
    aal3(asm(apow(aun(asing(a1),asing(asing(a1)))),asing(aun(asing(a1),asing(asing(a1)))))) ).

fof(ax66,axiom,
    aal3(asm(a4,asing(a2))) ).

fof(ax67,axiom,
    aal3(aun(a2,asing(apow(a2)))) ).

fof(ax68,axiom,
    aal4(apow(a2)) ).

fof(ax69,axiom,
    aal4(aun(asm(apow(a2),asing(a2)),asing(asm(apow(a2),apow(asing(a2)))))) ).

fof(ax70,axiom,
    aal5(aun(apow(a2),asing(asing(a2)))) ).

fof(ax71,axiom,
    aex2(aun(asing(a1),asing(asing(a1)))) ).

fof(ax72,axiom,
    aex2(asm(a3,asing(a1))) ).

fof(ax73,axiom,
    aex2(aint(aun(apow(a2),asing(asing(a2))),asm(a4,asing(a1)))) ).

fof(ax74,axiom,
    aex3(aun(a2,asing(apow(a2)))) ).

fof(ax75,axiom,
    ! [X24] :
      ( ain(X24,a3)
     => ( ain(X24,apow(asm(a3,asing(a1))))
       => ~ aal3(asm(aint(aun(a3,asing(asm(a3,asing(a1)))),apow(asm(a3,asing(a1)))),asing(X24))) ) ) ).

fof(ax76,axiom,
    ~ aal3(asm(aint(aun(a3,asing(asm(a3,asing(a1)))),apow(asm(a3,asing(a1)))),asing(asm(a3,asing(a1))))) ).

fof(ax77,axiom,
    aex5(aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1))))) ).

fof(ax78,axiom,
    aex5(aun(a4,asing(apow(a2)))) ).

fof(ax79,axiom,
    asubq(asm(aint(aun(aun(asing(a1),asing(asing(a1))),aun(apow(asing(a2)),asing(a3))),aun(asing(asing(a2)),a4)),asing(a0)),asm(aun(asing(asing(a2)),a4),asm(apow(a2),asing(a1)))) ).

fof(conj,conjecture,
    aex4(aint(aun(apow(a2),asing(asing(a2))),aun(asing(asing(a1)),aun(a4,asing(apow(a2)))))) ).

%------------------------------------------------------------------------------
