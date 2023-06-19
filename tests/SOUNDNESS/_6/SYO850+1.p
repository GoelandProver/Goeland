%------------------------------------------------------------------------------
% File     : SYO850+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Syntactic
% Problem  : ProofGold problem AbstrHF_205_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : AbstrHF_205_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0
% Syntax   : Number of formulae    :   67 (  45 unt;   0 def)
%            Number of atoms       :  132 (  31 equ)
%            Maximal formula atoms :    7 (   1 avg)
%            Number of connectives :  101 (  36   ~;  15   |;   2   &)
%                                         (   1 <=>;  47  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   3 avg)
%            Maximal term depth    :    7 (   2 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 1-2 aty)
%            Number of functors    :   10 (  10 usr;   5 con; 0-2 aty)
%            Number of variables   :   42 (  41   !;   1   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : See https://proofgold.org
%------------------------------------------------------------------------------
fof(ax1,axiom,
    ! [X24] :
      ( aex6(X24)
    <=> ( aal6(X24)
        & ~ aal7(X24) ) ) ).

fof(ax2,axiom,
    ! [X24,X25] :
      ( ain(X24,X25)
     => ~ ain(X25,X24) ) ).

fof(ax3,axiom,
    ! [X24] :
      ( ain(X24,a3)
     => ( X24 = a0
        | X24 = a1
        | X24 = a2 ) ) ).

fof(ax4,axiom,
    ain(a3,a4) ).

fof(ax5,axiom,
    ! [X24] :
      ( ain(X24,a4)
     => ( X24 = a0
        | X24 = a1
        | X24 = a2
        | X24 = a3 ) ) ).

fof(ax6,axiom,
    ! [X24,X25] : asubq(aun(X24,X25),aun(X25,X24)) ).

fof(ax7,axiom,
    asubq(a1,asing(a0)) ).

fof(ax8,axiom,
    ! [X24,X25] :
      ( asubq(X25,X24)
     => ( ~ asubq(X24,X25)
       => ? [X26] :
            ( ain(X26,X24)
            & asubq(X25,asm(X24,asing(X26))) ) ) ) ).

fof(ax9,axiom,
    ! [X24,X25] :
      ( adisjoint(X24,X25)
     => ( aal2(X24)
       => ( aal4(X25)
         => aal6(aun(X24,X25)) ) ) ) ).

fof(ax10,axiom,
    ! [X24,X25] : X24 = aun(asm(X24,X25),aint(X24,X25)) ).

fof(ax11,axiom,
    ! [X24,X25,X26] :
      ( asubq(X26,aun(X24,X25))
     => ( ~ asubq(X26,X24)
       => ( ~ asubq(X26,X25)
         => ( ~ asubq(aun(X24,X25),X26)
           => ( aal2(X24)
              | aal2(X25) ) ) ) ) ) ).

fof(ax12,axiom,
    ! [X24,X25] :
      ( ain(X25,X24)
     => ( aal3(X24)
       => aal2(asm(X24,asing(X25))) ) ) ).

fof(ax13,axiom,
    ! [X24,X25,X26] :
      ( asubq(X26,aun(X24,X25))
     => ! [X27] :
          ( ain(X27,X24)
         => ( ~ ain(X27,X26)
           => ( aal3(X26)
             => aal3(aun(asm(X24,asing(X27)),X25)) ) ) ) ) ).

fof(ax14,axiom,
    ! [X24,X25,X26] :
      ( asubq(X26,aun(X24,X25))
     => ! [X27] :
          ( ain(X27,X24)
         => ( ~ ain(X27,X26)
           => ( aal4(X26)
             => ( aal4(X24)
                | aal2(X25) ) ) ) ) ) ).

fof(ax15,axiom,
    ! [X24,X25,X26] :
      ( asubq(X26,aun(X24,X25))
     => ! [X27] :
          ( ain(X27,X24)
         => ( ~ ain(X27,X26)
           => ( aal4(X26)
             => ( aal3(X24)
                | aal3(X25) ) ) ) ) ) ).

fof(ax16,axiom,
    ~ ain(a1,a1) ).

fof(ax17,axiom,
    ~ ain(a3,a3) ).

fof(ax18,axiom,
    ! [X24] :
      ( asubq(X24,a2)
     => ( ain(a0,X24)
       => ( ain(a1,X24)
         => X24 = a2 ) ) ) ).

fof(ax19,axiom,
    ain(a1,asing(a1)) ).

fof(ax20,axiom,
    a0 != apow(asing(a1)) ).

fof(ax21,axiom,
    a0 != asm(a3,asing(a1)) ).

fof(ax22,axiom,
    ~ ain(asing(a1),asing(a2)) ).

fof(ax23,axiom,
    a1 != asm(a3,asing(a1)) ).

fof(ax24,axiom,
    ~ asubq(asing(a1),asing(asing(a1))) ).

fof(ax25,axiom,
    ~ ain(a1,asm(a3,asing(a1))) ).

fof(ax26,axiom,
    asing(a1) != asm(a3,asing(a1)) ).

fof(ax27,axiom,
    ! [X24] :
      ( asubq(X24,apow(asing(a1)))
     => ( ~ ain(asing(a1),X24)
       => ( ain(a0,X24)
         => ( X24 = a0
            | X24 = a1
            | X24 = asing(asing(a1))
            | X24 = apow(asing(a1)) ) ) ) ) ).

fof(ax28,axiom,
    ! [X24] :
      ( ain(X24,asing(a2))
     => X24 = a2 ) ).

fof(ax29,axiom,
    ~ ain(asing(a2),asm(apow(a2),a2)) ).

fof(ax30,axiom,
    asm(a3,asing(a1)) != apow(a2) ).

fof(ax31,axiom,
    ~ ain(apow(a2),apow(asing(asing(a1)))) ).

fof(ax32,axiom,
    ain(asing(a1),aun(aun(asing(a1),asing(asing(a1))),apow(asing(asing(a1))))) ).

fof(ax33,axiom,
    ain(a0,asm(a4,asing(a2))) ).

fof(ax34,axiom,
    ~ ain(a2,aun(apow(asing(a2)),asing(a3))) ).

fof(ax35,axiom,
    ~ ain(asing(a1),aun(asing(asing(a2)),a4)) ).

fof(ax36,axiom,
    ain(asm(apow(a2),a2),aun(a3,asing(asm(apow(a2),a2)))) ).

fof(ax37,axiom,
    ain(asm(apow(a2),apow(asing(a2))),asing(asm(apow(a2),apow(asing(a2))))) ).

fof(ax38,axiom,
    ain(a0,aun(asing(asing(asing(a1))),aun(a1,asing(apow(a2))))) ).

fof(ax39,axiom,
    ain(a1,aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2))))) ).

fof(ax40,axiom,
    ain(a0,aun(asing(asing(a1)),aun(a4,asing(apow(a2))))) ).

fof(ax41,axiom,
    ain(asing(a2),aun(asing(asing(a2)),aun(a4,asing(apow(a2))))) ).

fof(ax42,axiom,
    ! [X24] :
      ( ain(X24,a4)
     => ( X24 != a2
       => ( X24 = a0
          | X24 = a1
          | X24 = a3 ) ) ) ).

fof(ax43,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,asing(a1)))
     => ( X24 = a0
        | X24 = a2
        | X24 = a3 ) ) ).

fof(ax44,axiom,
    asubq(a4,aun(asing(asing(a2)),a4)) ).

fof(ax45,axiom,
    asubq(asm(apow(a2),asing(a2)),aun(asm(apow(a2),asing(a2)),asing(asm(apow(a2),apow(asing(a2)))))) ).

fof(ax46,axiom,
    asubq(apow(a2),aun(apow(a2),asing(apow(a2)))) ).

fof(ax47,axiom,
    ~ asubq(aun(apow(a2),asing(asing(a2))),apow(a2)) ).

fof(ax48,axiom,
    asubq(aun(asing(asing(a2)),a4),aun(asing(asing(a1)),aun(asing(asing(a2)),a4))) ).

fof(ax49,axiom,
    asubq(asing(a2),asm(asm(apow(a2),apow(asing(a1))),asing(a1))) ).

fof(ax50,axiom,
    asm(asm(apow(a2),asing(a1)),asing(a2)) = apow(asing(a1)) ).

fof(ax51,axiom,
    asm(aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))),asing(asing(asing(a1)))) = apow(a2) ).

fof(ax52,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,asing(a2)))
     => ( X24 != a0
       => ain(X24,aun(asing(a1),asing(a3))) ) ) ).

fof(ax53,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,a2))
     => ( X24 != a2
       => ain(X24,asing(a3)) ) ) ).

fof(ax54,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,apow(asing(a2))))
     => ( X24 != a3
       => ain(X24,asm(apow(a2),apow(asing(a1)))) ) ) ).

fof(ax55,axiom,
    ~ aal2(asing(a1)) ).

fof(ax56,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),asing(a1)))
     => ~ aal3(asm(asm(apow(a2),asing(a1)),asing(X24))) ) ).

fof(ax57,axiom,
    ! [X24] :
      ( ain(X24,aun(asing(a1),aun(apow(asing(a2)),asing(apow(a2)))))
     => ~ aal4(asm(aun(asing(a1),aun(apow(asing(a2)),asing(apow(a2)))),asing(X24))) ) ).

fof(ax58,axiom,
    aal5(aun(apow(a2),asing(asing(a2)))) ).

fof(ax59,axiom,
    aex3(aint(aun(aun(asing(a2),apow(asing(a2))),asing(asm(a3,asing(a1)))),aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2)))))) ).

fof(ax60,axiom,
    asubq(asm(aint(aun(a3,asing(asm(a3,asing(a1)))),apow(asm(a3,asing(a1)))),asing(a1)),aun(asing(a0),asing(asm(a3,asing(a1))))) ).

fof(ax61,axiom,
    aex3(aint(aun(asing(asing(a1)),aun(asing(asing(a2)),a4)),aun(asing(a2),aun(apow(asing(a2)),asing(apow(a2)))))) ).

fof(ax62,axiom,
    aex5(aun(asing(asing(asing(a1))),a4)) ).

fof(ax63,axiom,
    aex4(asm(aun(asing(asing(a2)),a4),asing(a1))) ).

fof(ax64,axiom,
    ! [X24] :
      ( ain(X24,a4)
     => ( ~ ain(X24,asing(a3))
       => ( ain(X24,aun(aun(asing(a1),asing(asing(a1))),aun(apow(asing(a2)),asing(a3))))
         => ain(X24,aun(asing(a1),apow(asing(a2)))) ) ) ) ).

fof(ax65,axiom,
    ~ aal4(asm(aint(aun(aun(asing(a1),asing(asing(a1))),aun(apow(asing(a2)),asing(a3))),aun(asing(asing(a2)),a4)),asing(a3))) ).

fof(ax66,axiom,
    ~ aal5(asm(aint(aun(asm(apow(a2),apow(asing(a2))),aun(apow(asing(a2)),asing(apow(a2)))),aun(asing(asing(a2)),aun(a4,asing(apow(a2))))),asing(apow(a2)))) ).

fof(conj,conjecture,
    ~ ain(a1,asing(apow(asing(a1)))) ).

%------------------------------------------------------------------------------
