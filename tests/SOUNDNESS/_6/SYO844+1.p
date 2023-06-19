%------------------------------------------------------------------------------
% File     : SYO844+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Syntactic
% Problem  : ProofGold problem AbstrHF_55_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : AbstrHF_55_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0
% Syntax   : Number of formulae    :   84 (  62 unt;   0 def)
%            Number of atoms       :  127 (  14 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :   75 (  32   ~;   3   |;   1   &)
%                                         (   2 <=>;  37  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   2 avg)
%            Maximal term depth    :    7 (   2 avg)
%            Number of predicates  :   12 (  11 usr;   0 prp; 1-2 aty)
%            Number of functors    :   10 (  10 usr;   5 con; 0-2 aty)
%            Number of variables   :   40 (  40   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : See https://proofgold.org
%------------------------------------------------------------------------------
fof(ax1,axiom,
    ! [X24,X25] :
      ( ain(X25,apow(X24))
    <=> asubq(X25,X24) ) ).

fof(ax2,axiom,
    ! [X24,X25,X26] :
      ( ain(X26,asm(X24,X25))
    <=> ( ain(X26,X24)
        & ~ ain(X26,X25) ) ) ).

fof(ax3,axiom,
    ! [X24,X25] :
      ( ain(X25,apow(X24))
     => asubq(X25,X24) ) ).

fof(ax4,axiom,
    ! [X24,X25,X26] :
      ( ain(X26,aun(X24,X25))
     => ( ain(X26,X24)
        | ain(X26,X25) ) ) ).

fof(ax5,axiom,
    ! [X24,X25,X26] :
      ( ain(X26,asm(X24,X25))
     => ain(X26,X24) ) ).

fof(ax6,axiom,
    ! [X24,X25,X26] :
      ( asubq(X24,X26)
     => ( asubq(X25,X26)
       => asubq(aun(X24,X25),X26) ) ) ).

fof(ax7,axiom,
    ! [X24,X25,X26] :
      ( ain(X26,X25)
     => ~ ain(X26,asm(X24,X25)) ) ).

fof(ax8,axiom,
    ! [X24,X25] :
      ( adisjoint(X24,X25)
     => ( aal2(X24)
       => ( aal4(X25)
         => aal6(aun(X24,X25)) ) ) ) ).

fof(ax9,axiom,
    ! [X24,X25] :
      ( adisjoint(X24,X25)
     => ( aal4(X24)
       => ( aal2(X25)
         => aal6(aun(X24,X25)) ) ) ) ).

fof(ax10,axiom,
    ! [X24,X25] :
      ( aal3(aun(X24,X25))
     => ( aal2(X24)
        | aal2(X25) ) ) ).

fof(ax11,axiom,
    ! [X24,X25,X26] :
      ( asubq(X26,aun(X24,X25))
     => ! [X27] :
          ( ain(X27,X25)
         => ( ~ ain(X27,X26)
           => ( aal4(X26)
             => ( aal3(X24)
                | aal3(X25) ) ) ) ) ) ).

fof(ax12,axiom,
    ~ asubq(a2,a1) ).

fof(ax13,axiom,
    ! [X24] :
      ( ain(a0,X24)
     => asubq(a1,X24) ) ).

fof(ax14,axiom,
    ain(a0,apow(a2)) ).

fof(ax15,axiom,
    ~ ain(a1,apow(asing(a1))) ).

fof(ax16,axiom,
    ~ ain(asing(a1),asing(a2)) ).

fof(ax17,axiom,
    asubq(asing(a1),aun(asing(a1),asing(asing(a1)))) ).

fof(ax18,axiom,
    ~ ain(asm(a3,asing(a1)),asing(asing(a1))) ).

fof(ax19,axiom,
    asubq(asing(asing(a1)),aun(asing(a1),asing(asing(a1)))) ).

fof(ax20,axiom,
    ~ ain(asing(a1),asm(apow(a2),apow(asing(a1)))) ).

fof(ax21,axiom,
    ! [X24] :
      ( asubq(X24,apow(asing(a1)))
     => ( ain(asing(a1),X24)
       => ( ain(a0,X24)
         => X24 = apow(asing(a1)) ) ) ) ).

fof(ax22,axiom,
    apow(asing(a1)) != a3 ).

fof(ax23,axiom,
    ~ ain(a3,asm(apow(a2),asing(a1))) ).

fof(ax24,axiom,
    asm(apow(a2),a2) != apow(a2) ).

fof(ax25,axiom,
    ain(asing(a1),aun(asing(asing(a1)),asing(asing(asing(a1))))) ).

fof(ax26,axiom,
    ain(asing(asing(a1)),asm(apow(aun(asing(a1),asing(asing(a1)))),asing(aun(asing(a1),asing(asing(a1)))))) ).

fof(ax27,axiom,
    ~ ain(asing(a1),aun(asm(apow(a2),apow(asing(a1))),apow(asing(asing(a1))))) ).

fof(ax28,axiom,
    ain(a0,asm(a4,asing(a1))) ).

fof(ax29,axiom,
    ~ ain(apow(a2),aun(apow(a2),asing(asing(a2)))) ).

fof(ax30,axiom,
    ain(asing(a2),aun(asing(a2),apow(asing(a2)))) ).

fof(ax31,axiom,
    ain(a0,aun(a1,asing(a3))) ).

fof(ax32,axiom,
    ~ ain(asm(apow(a2),a2),a4) ).

fof(ax33,axiom,
    ~ ain(a0,aun(asing(asing(a1)),asing(a3))) ).

fof(ax34,axiom,
    ain(a2,asm(a4,apow(asing(a2)))) ).

fof(ax35,axiom,
    ain(a3,aun(apow(asing(a2)),asing(a3))) ).

fof(ax36,axiom,
    ain(a1,asm(aun(asing(asing(a2)),a4),asm(apow(a2),asing(a1)))) ).

fof(ax37,axiom,
    ain(asing(a2),asm(aun(asing(asing(a2)),a4),asm(apow(a2),asing(a1)))) ).

fof(ax38,axiom,
    ain(a3,aun(asing(asing(a2)),a4)) ).

fof(ax39,axiom,
    ain(a2,aun(asing(asing(a2)),a4)) ).

fof(ax40,axiom,
    ain(a1,aun(asm(apow(a2),apow(asing(a1))),aun(asing(asing(a2)),asing(apow(a2))))) ).

fof(ax41,axiom,
    ain(a1,aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2))))) ).

fof(ax42,axiom,
    ~ asubq(aun(asm(apow(a2),apow(asing(a1))),apow(asing(asing(a1)))),a3) ).

fof(ax43,axiom,
    asubq(a3,aun(a3,asing(apow(asing(a1))))) ).

fof(ax44,axiom,
    asubq(a3,aun(a3,asing(apow(a2)))) ).

fof(ax45,axiom,
    asubq(asm(apow(a2),apow(asing(a1))),aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1))))) ).

fof(ax46,axiom,
    ~ asubq(aun(asing(asing(a2)),aun(a4,asing(apow(a2)))),aun(a4,asing(apow(a2)))) ).

fof(ax47,axiom,
    asubq(asm(apow(a2),apow(asing(a1))),asm(a3,asing(a0))) ).

fof(ax48,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),asing(a2)))
     => ( X24 != asing(a1)
       => ain(X24,a2) ) ) ).

fof(ax49,axiom,
    asubq(asm(asm(apow(a2),a2),asing(asing(a1))),asing(a2)) ).

fof(ax50,axiom,
    asubq(asm(asm(apow(a2),a2),asing(a2)),asing(asing(a1))) ).

fof(ax51,axiom,
    asubq(asm(asm(apow(a2),apow(asing(a2))),asing(a2)),aun(asing(a1),asing(asing(a1)))) ).

fof(ax52,axiom,
    asm(apow(a2),asing(asing(a1))) = a3 ).

fof(ax53,axiom,
    asm(asm(apow(aun(asing(a1),asing(asing(a1)))),asing(aun(asing(a1),asing(asing(a1))))),asing(a0)) = aun(asing(asing(a1)),asing(asing(asing(a1)))) ).

fof(ax54,axiom,
    asm(aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))),asing(a2)) = aun(aun(asing(a1),asing(asing(a1))),apow(asing(asing(a1)))) ).

fof(ax55,axiom,
    asm(aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))),asing(asing(asing(a1)))) = apow(a2) ).

fof(ax56,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,a2))
     => ( X24 != a3
       => ain(X24,asing(a2)) ) ) ).

fof(ax57,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,asing(a1)))
     => ( X24 != a0
       => ain(X24,asm(a4,a2)) ) ) ).

fof(ax58,axiom,
    asm(asm(a4,apow(asing(a2))),asing(a3)) = asm(apow(a2),apow(asing(a1))) ).

fof(ax59,axiom,
    asm(a4,asing(a0)) = asm(a4,apow(asing(a2))) ).

fof(ax60,axiom,
    asubq(asm(a3,asing(a1)),aun(a4,asing(apow(a2)))) ).

fof(ax61,axiom,
    asubq(asm(apow(a2),apow(asing(a1))),a4) ).

fof(ax62,axiom,
    ! [X24] :
      ( ain(X24,aun(asing(asing(a1)),aun(asing(asing(a2)),a4)))
     => ( ain(X24,aun(asing(a2),aun(apow(asing(a2)),asing(apow(a2)))))
       => ~ ain(X24,asing(apow(a2))) ) ) ).

fof(ax63,axiom,
    asubq(asm(a3,asing(a1)),aint(aun(asing(asing(a1)),a4),aun(asing(a2),apow(asing(a2))))) ).

fof(ax64,axiom,
    aint(aun(asing(asing(a2)),a4),asm(apow(a2),asing(a1))) = asm(a3,asing(a1)) ).

fof(ax65,axiom,
    ~ aal3(aun(a1,asing(a3))) ).

fof(ax66,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),asing(a2)))
     => ~ aal3(asm(asm(apow(a2),asing(a2)),asing(X24))) ) ).

fof(ax67,axiom,
    ~ aal4(asm(apow(a2),apow(asing(a2)))) ).

fof(ax68,axiom,
    ~ aal5(apow(a2)) ).

fof(ax69,axiom,
    ~ aal5(aun(asm(apow(a2),apow(asing(a1))),apow(asing(asing(a1))))) ).

fof(ax70,axiom,
    ! [X24] :
      ( aal5(asm(aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))),asing(X24)))
     => X24 != a1 ) ).

fof(ax71,axiom,
    ~ aal6(aun(asing(apow(asing(a1))),a4)) ).

fof(ax72,axiom,
    aal4(aun(a3,asing(asm(apow(a2),a2)))) ).

fof(ax73,axiom,
    aex3(aun(a2,asing(apow(a2)))) ).

fof(ax74,axiom,
    aex3(aun(asing(asing(asing(a1))),aun(a1,asing(apow(a2))))) ).

fof(ax75,axiom,
    aex4(aint(aun(apow(a2),asing(asing(a2))),aun(asing(asing(a2)),aun(a4,asing(apow(a2)))))) ).

fof(ax76,axiom,
    aex5(aun(asing(apow(asing(a1))),a4)) ).

fof(ax77,axiom,
    aex5(aun(a4,asing(asm(apow(a2),a2)))) ).

fof(ax78,axiom,
    aex4(asm(aun(a4,asing(apow(a2))),asing(a3))) ).

fof(ax79,axiom,
    aex3(asm(aun(asing(asing(a1)),a4),aun(asing(a2),apow(asing(a2))))) ).

fof(ax80,axiom,
    ! [X24] :
      ( ain(X24,a4)
     => ( ~ ain(X24,asing(a1))
       => ( ain(X24,aun(aun(asing(a1),asing(asing(a1))),aun(apow(asing(a2)),asing(a3))))
         => ain(X24,aun(apow(asing(a2)),asing(a3))) ) ) ) ).

fof(ax81,axiom,
    ! [X24] :
      ( ain(X24,apow(asing(a2)))
     => ( ~ ain(X24,asing(asing(a2)))
       => ain(X24,aun(a3,asing(apow(a2)))) ) ) ).

fof(ax82,axiom,
    asubq(asm(aint(aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2)))),aun(asing(asing(a2)),aun(a4,asing(apow(a2))))),asing(asing(a2))),aun(a3,asing(apow(a2)))) ).

fof(ax83,axiom,
    ! [X24] :
      ( ain(X24,apow(asing(a2)))
     => ~ aal5(asm(aint(aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2)))),aun(asing(asing(a2)),aun(a4,asing(apow(a2))))),asing(X24))) ) ).

fof(conj,conjecture,
    ~ asubq(asm(apow(a2),asing(a2)),aun(asing(a1),asing(asing(a1)))) ).

%------------------------------------------------------------------------------
