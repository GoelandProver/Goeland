%------------------------------------------------------------------------------
% File     : SYO842+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Syntactic
% Problem  : ProofGold problem AbstrHF_1_pos_fof
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : AbstrHF_1_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0
% Syntax   : Number of formulae    :   60 (  41 unt;   0 def)
%            Number of atoms       :  101 (  15 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :   64 (  23   ~;   6   |;   1   &)
%                                         (   3 <=>;  31  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   3 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :   12 (  11 usr;   0 prp; 1-2 aty)
%            Number of functors    :   10 (  10 usr;   5 con; 0-2 aty)
%            Number of variables   :   40 (  40   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : See https://proofgold.org
%------------------------------------------------------------------------------
fof(ax1,axiom,
    ! [X24,X25] :
      ( adisjoint(X24,X25)
    <=> aint(X24,X25) = a0 ) ).

fof(ax2,axiom,
    ! [X24,X25,X26] :
      ( ain(X26,aint(X24,X25))
    <=> ( ain(X26,X24)
        & ain(X26,X25) ) ) ).

fof(ax3,axiom,
    ! [X24,X25] :
      ( ain(X25,apow(X24))
     => asubq(X25,X24) ) ).

fof(ax4,axiom,
    ! [X24,X25] : asubq(X25,aun(X24,X25)) ).

fof(ax5,axiom,
    ! [X24,X25,X26] :
      ( ! [X27] :
          ( ain(X27,X24)
         => ( ain(X27,X25)
           => ain(X27,X26) ) )
     => asubq(aint(X24,X25),X26) ) ).

fof(ax6,axiom,
    ! [X24,X25,X26] :
      ( adisjoint(X24,X25)
     => ( asubq(X26,X25)
       => adisjoint(X24,X26) ) ) ).

fof(ax7,axiom,
    ! [X24,X25,X26] :
      ( ain(X25,X24)
     => ( ain(X26,X24)
       => ( ~ asubq(X26,X25)
         => aal2(X24) ) ) ) ).

fof(ax8,axiom,
    ! [X24,X25] :
      ( ain(X25,X24)
     => ( ~ aal4(X24)
       => ~ aal3(asm(X24,asing(X25))) ) ) ).

fof(ax9,axiom,
    ! [X24,X25] :
      ( adisjoint(X24,X25)
     => ( aal2(X25)
       => ! [X26] :
            ( ain(X26,X25)
           => ~ asubq(aun(X24,X25),aun(X24,asing(X26))) ) ) ) ).

fof(ax10,axiom,
    ! [X24,X25] :
      ( ~ aal4(X24)
     => ~ aal5(aun(X24,asing(X25))) ) ).

fof(ax11,axiom,
    ! [X24,X25,X26] :
      ( asubq(X26,aun(X24,X25))
     => ! [X27] :
          ( ain(X27,X24)
         => ( ~ ain(X27,X26)
           => ( aal4(X26)
             => ( aal3(X24)
                | aal3(X25) ) ) ) ) ) ).

fof(ax12,axiom,
    ! [X24] :
      ( ain(a0,X24)
     => asubq(a1,X24) ) ).

fof(ax13,axiom,
    ~ ain(a0,asing(a1)) ).

fof(ax14,axiom,
    ~ ain(a1,asing(asing(a1))) ).

fof(ax15,axiom,
    ! [X24] :
      ( ain(X24,apow(asing(a1)))
     => ( X24 = a0
        | X24 = asing(a1) ) ) ).

fof(ax16,axiom,
    ~ ain(asing(a2),apow(a2)) ).

fof(ax17,axiom,
    a2 != asm(apow(a2),a2) ).

fof(ax18,axiom,
    ~ asubq(apow(a2),asing(a2)) ).

fof(ax19,axiom,
    ain(asing(asing(a1)),asm(apow(aun(asing(a1),asing(asing(a1)))),asing(aun(asing(a1),asing(asing(a1)))))) ).

fof(ax20,axiom,
    ain(aun(asing(a1),asing(asing(a1))),asing(aun(asing(a1),asing(asing(a1))))) ).

fof(ax21,axiom,
    ~ ain(asing(a2),a4) ).

fof(ax22,axiom,
    ~ ain(a1,aun(asing(a2),apow(asing(a2)))) ).

fof(ax23,axiom,
    ~ ain(asing(a1),aun(asing(a2),apow(asing(a2)))) ).

fof(ax24,axiom,
    ain(a2,aun(asing(a2),apow(asing(a2)))) ).

fof(ax25,axiom,
    ain(a3,asm(a4,asing(a1))) ).

fof(ax26,axiom,
    ain(a1,asm(aun(asing(asing(a2)),a4),asm(apow(a2),asing(a1)))) ).

fof(ax27,axiom,
    ~ ain(asm(apow(a2),a2),aun(asing(asing(a2)),a4)) ).

fof(ax28,axiom,
    ain(asm(apow(a2),apow(asing(a2))),asing(asm(apow(a2),apow(asing(a2))))) ).

fof(ax29,axiom,
    ain(asm(apow(a2),apow(asing(a2))),aun(asm(apow(a2),asing(a1)),asing(asm(apow(a2),apow(asing(a2)))))) ).

fof(ax30,axiom,
    ain(a1,aun(asing(a1),aun(apow(asing(a2)),asing(apow(a2))))) ).

fof(ax31,axiom,
    ain(a1,aun(asing(asing(a1)),aun(a4,asing(apow(a2))))) ).

fof(ax32,axiom,
    ain(a2,aun(asing(asing(a2)),aun(a4,asing(apow(a2))))) ).

fof(ax33,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),apow(asing(a2))))
     => ( X24 = a1
        | X24 = asing(a1)
        | X24 = a2 ) ) ).

fof(ax34,axiom,
    ! [X24] :
      ( ain(X24,asm(a4,apow(asing(a2))))
     => ( X24 = a1
        | X24 = a2
        | X24 = a3 ) ) ).

fof(ax35,axiom,
    asubq(a3,aun(asm(apow(a2),apow(asing(a1))),apow(asing(asing(a1))))) ).

fof(ax36,axiom,
    ~ asubq(aun(apow(a2),asing(apow(a2))),apow(a2)) ).

fof(ax37,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),asing(a2)))
     => ( X24 != a0
       => ain(X24,aun(asing(a1),asing(asing(a1)))) ) ) ).

fof(ax38,axiom,
    asubq(a2,asm(asm(apow(a2),asing(a2)),asing(asing(a1)))) ).

fof(ax39,axiom,
    asubq(asm(asm(a3,asing(a1)),asing(a0)),asing(a2)) ).

fof(ax40,axiom,
    ! [X24] :
      ( ain(X24,asm(apow(a2),apow(asing(a2))))
     => ( X24 != a1
       => ain(X24,asm(apow(a2),a2)) ) ) ).

fof(ax41,axiom,
    ! [X24] :
      ( ain(X24,aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))))
     => ( X24 != a1
       => ain(X24,aun(asm(apow(a2),a2),apow(asing(asing(a1))))) ) ) ).

fof(ax42,axiom,
    asubq(asm(aun(asm(apow(a2),apow(asing(a2))),apow(asing(asing(a1)))),asing(a1)),aun(asm(apow(a2),a2),apow(asing(asing(a1))))) ).

fof(ax43,axiom,
    asubq(asing(a3),asm(asm(a4,a2),asing(a2))) ).

fof(ax44,axiom,
    asubq(asm(asm(a4,apow(asing(a2))),asing(a2)),aun(asing(a1),asing(a3))) ).

fof(ax45,axiom,
    asubq(asm(apow(a2),apow(asing(a1))),asm(asm(a4,apow(asing(a2))),asing(a3))) ).

fof(ax46,axiom,
    aint(aun(apow(a2),asing(asing(a2))),aun(a4,asing(asm(apow(a2),a2)))) = a3 ).

fof(ax47,axiom,
    aint(aun(apow(a2),asing(asing(a2))),aun(asing(a2),aun(apow(asing(a2)),asing(apow(a2))))) = aun(asing(a2),apow(asing(a2))) ).

fof(ax48,axiom,
    ! [X24] :
      ( ain(X24,aun(asing(asing(a1)),aun(asing(asing(a2)),a4)))
     => ( ain(X24,aun(asing(a2),aun(apow(asing(a2)),asing(apow(a2)))))
       => ain(X24,aun(asing(a2),apow(asing(a2)))) ) ) ).

fof(ax49,axiom,
    asubq(aint(aun(apow(a2),asing(apow(a2))),asm(a4,asing(a1))),asm(a3,asing(a1))) ).

fof(ax50,axiom,
    ~ aal2(asing(a1)) ).

fof(ax51,axiom,
    ~ aal3(asm(apow(a2),apow(asing(a1)))) ).

fof(ax52,axiom,
    ~ aal7(aun(asing(asing(a1)),aun(asing(asing(a2)),a4))) ).

fof(ax53,axiom,
    aal2(asm(a3,asing(a1))) ).

fof(ax54,axiom,
    aal5(aun(asing(asing(asing(a1))),a4)) ).

fof(ax55,axiom,
    aal6(aun(asing(asing(a1)),aun(asing(asing(a2)),a4))) ).

fof(ax56,axiom,
    aex3(asm(apow(a2),asing(a2))) ).

fof(ax57,axiom,
    aex3(asm(apow(a2),asing(asing(a1)))) ).

fof(ax58,axiom,
    aex4(aint(aun(aun(asing(a1),asing(asing(a1))),aun(apow(asing(a2)),asing(a3))),aun(asing(asing(a2)),a4))) ).

fof(ax59,axiom,
    asubq(aun(apow(asing(a2)),asing(apow(a2))),aun(asing(a1),aun(apow(asing(a2)),asing(apow(a2))))) ).

fof(conj,conjecture,
    ! [X24,X25] :
      ( ain(X25,apow(X24))
    <=> asubq(X25,X24) ) ).

%------------------------------------------------------------------------------
