%------------------------------------------------------------------------------
% File     : SYO848+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Syntactic
% Problem  : ProofGold problem AbstrHF_152_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : AbstrHF_152_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0
% Syntax   : Number of formulae    :   84 (  63 unt;   0 def)
%            Number of atoms       :  127 (  21 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :   71 (  28   ~;   8   |;   1   &)
%                                         (   1 <=>;  33  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   2 avg)
%            Maximal term depth    :    7 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-2 aty)
%            Number of functors    :   10 (  10 usr;   5 con; 0-2 aty)
%            Number of variables   :   41 (  40   !;   1   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : See https://proofgold.org
%------------------------------------------------------------------------------
fof(ax1,axiom,
    ! [X24] :
      ( aal2(X24)
    <=> ? [X25] :
          ( ain(X25,X24)
          & ~ asubq(X24,apow(X25)) ) ) ).

fof(ax2,axiom,
    ! [X24] :
      ( ain(X24,a2)
     => ( X24 = a0
        | X24 = a1 ) ) ).

fof(ax3,axiom,
    ! [X24,X25] :
      ( asubq(X25,X24)
     => ain(X25,apow(X24)) ) ).

fof(ax4,axiom,
    ! [X24,X25,X26] :
      ( asubq(X24,X25)
     => ( asubq(X25,X26)
       => asubq(X24,X26) ) ) ).

fof(ax5,axiom,
    ! [X24,X25,X26] :
      ( asubq(X24,X26)
     => ( asubq(X25,X26)
       => asubq(aun(X24,X25),X26) ) ) ).

fof(ax6,axiom,
    ! [X24,X25,X26] :
      ( asubq(X26,X25)
     => asubq(asm(X24,X25),asm(X24,X26)) ) ).

fof(ax7,axiom,
    ! [X24,X25] :
      ( adisjoint(X24,X25)
     => adisjoint(X25,X24) ) ).

fof(ax8,axiom,
    ! [X24,X25,X26] :
      ( ~ ain(X26,X24)
     => ~ ain(X26,asm(X24,X25)) ) ).

fof(ax9,axiom,
    ! [X24,X25] :
      ( ain(X25,X24)
     => asubq(asing(X25),X24) ) ).

fof(ax10,axiom,
    ! [X24,X25] :
      ( ain(X25,X24)
     => ( ~ aal5(X24)
       => ~ aal4(asm(X24,asing(X25))) ) ) ).

fof(ax11,axiom,
    ! [X24,X25] : asubq(X24,aun(asm(X24,X25),aint(X24,X25))) ).

fof(ax12,axiom,
    ! [X24,X25] :
      ( aal4(aun(X24,X25))
     => ( aal2(X24)
        | aal3(X25) ) ) ).

fof(ax13,axiom,
    ! [X24,X25,X26] :
      ( asubq(X26,aun(X24,X25))
     => ! [X27] :
          ( ain(X27,X24)
         => ( ~ ain(X27,X26)
           => ( aal4(X26)
             => ( aal3(X24)
                | aal3(X25) ) ) ) ) ) ).

fof(ax14,axiom,
    ~ ain(a2,a0) ).

fof(ax15,axiom,
    asubq(a3,a4) ).

fof(ax16,axiom,
    ~ asubq(a4,a3) ).

fof(ax17,axiom,
    ain(a1,asing(a1)) ).

fof(ax18,axiom,
    ain(a0,asm(apow(a2),asing(a2))) ).

fof(ax19,axiom,
    ain(asing(a1),asm(apow(a2),a2)) ).

fof(ax20,axiom,
    ain(a1,asm(apow(a2),asing(a2))) ).

fof(ax21,axiom,
    ~ ain(asing(a2),a1) ).

fof(ax22,axiom,
    ain(asing(a1),asm(apow(a2),asing(a2))) ).

fof(ax23,axiom,
    ain(a2,asm(apow(a2),apow(asing(a1)))) ).

fof(ax24,axiom,
    ain(asing(a1),asm(apow(a2),apow(asing(a2)))) ).

fof(ax25,axiom,
    a1 != apow(asing(a1)) ).

fof(ax26,axiom,
    a2 != apow(asing(a1)) ).

fof(ax27,axiom,
    ! [X24] :
      ( asubq(X24,apow(asing(a1)))
     => ( ~ ain(asing(a1),X24)
       => ( X24 = a0
          | X24 = a1
          | X24 = asing(asing(a1))
          | X24 = apow(asing(a1)) ) ) ) ).

fof(ax28,axiom,
    ~ ain(asing(a2),apow(a2)) ).

fof(ax29,axiom,
    a2 != asing(a2) ).

fof(ax30,axiom,
    ain(apow(asing(a1)),asing(apow(asing(a1)))) ).

fof(ax31,axiom,
    ain(a0,apow(aun(asing(a1),asing(asing(a1))))) ).

fof(ax32,axiom,
    ain(asing(a1),apow(aun(asing(a1),asing(asing(a1))))) ).

fof(ax33,axiom,
    ~ ain(apow(a2),asing(asing(a2))) ).

fof(ax34,axiom,
    ain(a1,aun(asing(a1),apow(asing(a2)))) ).

fof(ax35,axiom,
    ain(a2,asm(a4,asing(a1))) ).

fof(ax36,axiom,
    ~ ain(a0,asing(a3)) ).

fof(ax37,axiom,
    ain(a3,aun(a1,asing(a3))) ).

fof(ax38,axiom,
    ain(asing(a2),asm(aun(asing(asing(a2)),a4),asm(apow(a2),asing(a1)))) ).

fof(ax39,axiom,
    ain(a0,aun(asing(asing(asing(a1))),aun(a2,asing(apow(a2))))) ).

fof(ax40,axiom,
    ain(a1,aun(asing(a1),aun(apow(asing(a2)),asing(apow(a2))))) ).

fof(ax41,axiom,
    ain(apow(a2),aun(asm(apow(a2),apow(asing(a1))),aun(asing(asing(a2)),asing(apow(a2))))) ).

fof(ax42,axiom,
    ain(a1,aun(a4,asing(apow(a2)))) ).

fof(ax43,axiom,
    ~ ain(asing(a2),aun(asing(asing(a1)),aun(a4,asing(apow(a2))))) ).

fof(ax44,axiom,
    ain(a2,aun(asing(asing(a2)),aun(a4,asing(apow(a2))))) ).

fof(ax45,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),asing(a2)))
     => ( X24 = a0
        | X24 = a1
        | X24 = asing(a1) ) ) ).

fof(ax46,axiom,
    asubq(a2,aun(asing(a1),apow(asing(a2)))) ).

fof(ax47,axiom,
    asubq(a3,aun(a3,asing(asing(a2)))) ).

fof(ax48,axiom,
    asubq(a3,aun(a3,asing(apow(a2)))) ).

fof(ax49,axiom,
    asubq(a4,aun(asing(asing(a2)),a4)) ).

fof(ax50,axiom,
    asubq(aun(asing(asing(a2)),a4),aun(asing(asing(a1)),aun(asing(asing(a2)),a4))) ).

fof(ax51,axiom,
    asubq(asm(a3,asing(a0)),asm(apow(a2),apow(asing(a1)))) ).

fof(ax52,axiom,
    asubq(asm(asm(apow(a2),asing(a2)),asing(a0)),aun(asing(a1),asing(asing(a1)))) ).

fof(ax53,axiom,
    asubq(aun(asing(a1),asing(asing(a1))),asm(asm(apow(a2),asing(a2)),asing(a0))) ).

fof(ax54,axiom,
    asubq(asm(asm(apow(a2),asing(a2)),asing(a1)),apow(asing(a1))) ).

fof(ax55,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),asing(a2)))
     => ( X24 != asing(a1)
       => ain(X24,a2) ) ) ).

fof(ax56,axiom,
    asm(asm(apow(a2),a2),asing(asing(a1))) = asing(a2) ).

fof(ax57,axiom,
    asubq(asm(asm(apow(a2),asing(a1)),asing(asing(a1))),asm(a3,asing(a1))) ).

fof(ax58,axiom,
    asubq(asm(asm(apow(a2),apow(asing(a2))),asing(a1)),asm(apow(a2),a2)) ).

fof(ax59,axiom,
    asubq(aun(asing(a1),asing(asing(a1))),asm(asm(apow(a2),apow(asing(a2))),asing(a2))) ).

fof(ax60,axiom,
    asubq(a3,asm(apow(a2),asing(asing(a1)))) ).

fof(ax61,axiom,
    asubq(aun(asing(asing(a1)),asing(asing(asing(a1)))),asm(asm(apow(aun(asing(a1),asing(asing(a1)))),asing(aun(asing(a1),asing(asing(a1))))),asing(a0))) ).

fof(ax62,axiom,
    asubq(aun(asm(apow(a2),apow(asing(a1))),apow(asing(asing(a1)))),asm(aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))),asing(asing(a1)))) ).

fof(ax63,axiom,
    ! [X24] :
      ( ain(X24,aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))))
     => ( X24 != a2
       => ain(X24,aun(aun(asing(a1),asing(asing(a1))),apow(asing(asing(a1))))) ) ) ).

fof(ax64,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,a2))
     => ( X24 != a2
       => ain(X24,asing(a3)) ) ) ).

fof(ax65,axiom,
    asubq(asm(asm(a4,a2),asing(a2)),asing(a3)) ).

fof(ax66,axiom,
    asm(asm(a4,asing(a1)),asing(a2)) = aun(a1,asing(a3)) ).

fof(ax67,axiom,
    aint(aun(aun(asing(a2),apow(asing(a2))),asing(asm(a3,asing(a1)))),aun(asing(asing(a1)),aun(asing(asing(a2)),a4))) = aun(asing(a2),apow(asing(a2))) ).

fof(ax68,axiom,
    aint(aun(aun(asing(a2),apow(asing(a2))),asing(asm(a3,asing(a1)))),aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2))))) = aun(asing(a2),apow(asing(a2))) ).

fof(ax69,axiom,
    aint(aun(asing(asing(a1)),aun(asing(asing(a2)),a4)),aun(a4,asing(asm(apow(a2),a2)))) = a4 ).

fof(ax70,axiom,
    ! [X24] :
      ( ain(X24,aun(asing(asing(a1)),aun(asing(asing(a2)),a4)))
     => ( ain(X24,aun(asing(a2),aun(apow(asing(a2)),asing(apow(a2)))))
       => ~ ain(X24,asing(apow(a2))) ) ) ).

fof(ax71,axiom,
    aint(aun(apow(a2),asing(asing(a2))),asm(a4,asing(a1))) = asm(a3,asing(a1)) ).

fof(ax72,axiom,
    ~ aal2(a1) ).

fof(ax73,axiom,
    ~ aal2(asing(a3)) ).

fof(ax74,axiom,
    ~ aal4(asm(a4,asing(a1))) ).

fof(ax75,axiom,
    ~ aal5(aun(asm(apow(a2),apow(asing(a1))),apow(asing(asing(a1))))) ).

fof(ax76,axiom,
    aex2(aint(aun(asing(asing(a2)),a4),asm(apow(a2),asing(a1)))) ).

fof(ax77,axiom,
    aex2(asm(asm(a4,asing(a2)),asing(a3))) ).

fof(ax78,axiom,
    ~ aal3(asm(aint(aun(a3,asing(asm(a3,asing(a1)))),apow(asm(a3,asing(a1)))),asing(asm(a3,asing(a1))))) ).

fof(ax79,axiom,
    aex3(asm(aun(a3,asing(apow(a2))),asing(a1))) ).

fof(ax80,axiom,
    aex5(aun(asing(asing(a1)),a4)) ).

fof(ax81,axiom,
    aex5(aun(asing(apow(asing(a1))),a4)) ).

fof(ax82,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),apow(asing(a2))))
     => ( ain(X24,aun(asing(asing(a2)),aun(a4,asing(apow(a2)))))
       => ~ aal5(asm(aint(aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2)))),aun(asing(asing(a2)),aun(a4,asing(apow(a2))))),asing(X24))) ) ) ).

fof(ax83,axiom,
    ! [X24] :
      ( ain(X24,apow(asing(a2)))
     => ~ aal5(asm(aint(aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2)))),aun(asing(asing(a2)),aun(a4,asing(apow(a2))))),asing(X24))) ) ).

fof(conj,conjecture,
    ! [X24,X25] :
      ( ain(X25,X24)
     => ( aal4(X24)
       => aal3(asm(X24,asing(X25))) ) ) ).

%------------------------------------------------------------------------------
