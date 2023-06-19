%------------------------------------------------------------------------------
% File     : GRP782+1 : TPTP v8.1.2. Released v7.5.0.
% Domain   : Group Theory
% Problem  : ProofGold problem AIM1_7_pos_th0
% Version  : Especial.
% English  :

% Refs     : [Urb20] Urban (2020) Email to Geoff Sutcliffe
% Source   : [Urb20]
% Names    : AIM1_7_pos_fof.p [Urb20]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0
% Syntax   : Number of formulae    :   36 (  36 unt;   0 def)
%            Number of atoms       :   36 (  36 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   6 avg)
%            Maximal term depth    :   21 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :   12 (  12 usr;   1 con; 0-3 aty)
%            Number of variables   :  169 ( 169   !;   0   ?)
% SPC      : FOF_CSA_RFO_PEQ

% Comments : See https://proofgold.org
%------------------------------------------------------------------------------
fof(id1,axiom,
    ! [X] : m(X,e) = X ).

fof(id2,axiom,
    ! [X] : m(e,X) = X ).

fof(b1,axiom,
    ! [X,Y] : m(X,b(X,Y)) = Y ).

fof(b2,axiom,
    ! [X,Y] : b(X,m(X,Y)) = Y ).

fof(s1,axiom,
    ! [X,Y] : m(s(X,Y),Y) = X ).

fof(s2,axiom,
    ! [X,Y] : s(m(X,Y),Y) = X ).

fof(tdef,axiom,
    ! [X,U] : t(X,U) = b(X,m(U,X)) ).

fof(i1def,axiom,
    ! [X,U] : i1(X,U) = m(X,m(U,b(X,e))) ).

fof(j1def,axiom,
    ! [X,U] : j1(X,U) = m(m(s(e,X),U),X) ).

fof(i2def,axiom,
    ! [X,U] : i2(X,U) = m(b(X,U),b(b(X,e),e)) ).

fof(j2def,axiom,
    ! [X,U] : j2(X,U) = m(s(e,s(e,X)),s(U,X)) ).

fof(ldef,axiom,
    ! [X,Y,U] : l(X,Y,U) = b(m(Y,X),m(Y,m(X,U))) ).

fof(rdef,axiom,
    ! [X,Y,U] : r(X,Y,U) = s(m(m(U,X),Y),m(X,Y)) ).

fof(ax1,axiom,
    ! [X14,X15,X16] : l(X14,X15,i2(X14,i2(X15,l(X14,X15,i2(X14,i2(X15,X16)))))) = X16 ).

fof(ax2,axiom,
    ! [X14,X15,X16,X17] : l(X14,X15,t(X16,t(X14,r(X15,X16,l(X14,X15,t(X16,t(X14,r(X15,X16,l(X14,X15,t(X16,t(X14,r(X15,X16,l(X14,X15,t(X16,t(X14,r(X15,X16,l(X14,X15,t(X16,t(X14,r(X15,X16,X17)))))))))))))))))))) = X17 ).

fof(ax3,axiom,
    ! [X14,X15,X16,X17] : i1(X14,t(X15,i1(X16,X17))) = t(X15,i1(X16,i1(X14,X17))) ).

fof(ax4,axiom,
    ! [X14,X15,X16,X17,X18] : l(X14,X15,i2(X16,i2(X17,X18))) = i2(X16,i2(X17,l(X14,X15,X18))) ).

fof(ax5,axiom,
    ! [X14,X15,X16,X17,X18] : t(X14,i2(X15,t(X16,i2(X17,X18)))) = t(X16,i2(X17,t(X14,i2(X15,X18)))) ).

fof(ax6,axiom,
    ! [X14,X15,X16,X17,X18] : i2(X14,i1(X15,t(X16,i2(X17,X18)))) = t(X16,i2(X17,i2(X14,i1(X15,X18)))) ).

fof(ax7,axiom,
    ! [X14,X15,X16,X17,X18] : i2(X14,i2(X15,i1(X16,j2(X17,X18)))) = i1(X16,j2(X17,i2(X14,i2(X15,X18)))) ).

fof(ax8,axiom,
    ! [X14,X15,X16,X17,X18] : t(X14,i2(X15,i2(X16,i2(X17,X18)))) = i2(X16,i2(X17,t(X14,i2(X15,X18)))) ).

fof(ax9,axiom,
    ! [X14,X15,X16,X17,X18] : t(X14,i1(X15,i2(X16,i2(X17,X18)))) = i2(X16,i2(X17,t(X14,i1(X15,X18)))) ).

fof(ax10,axiom,
    ! [X14,X15,X16,X17,X18,X19] : l(X14,X15,i1(X16,i2(X17,i1(X18,X19)))) = i2(X17,i1(X18,l(X14,X15,i1(X16,X19)))) ).

fof(ax11,axiom,
    ! [X14,X15,X16,X17,X18,X19] : r(X14,X15,t(X16,i2(X17,t(X18,X19)))) = i2(X17,t(X18,r(X14,X15,t(X16,X19)))) ).

fof(ax12,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20] : r(X14,X15,i2(X16,l(X17,X18,t(X19,X20)))) = l(X17,X18,t(X19,r(X14,X15,i2(X16,X20)))) ).

fof(ax13,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20] : r(X14,X15,t(X16,l(X17,X18,i2(X19,X20)))) = l(X17,X18,i2(X19,r(X14,X15,t(X16,X20)))) ).

fof(ax14,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : r(X14,X15,t(X16,i2(X17,r(X18,X19,i2(X20,X21))))) = r(X18,X19,i2(X20,r(X14,X15,t(X16,i2(X17,X21))))) ).

fof(ax15,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : l(X14,X15,t(X16,i2(X17,r(X18,X19,j2(X20,X21))))) = r(X18,X19,j2(X20,l(X14,X15,t(X16,i2(X17,X21))))) ).

fof(ax16,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : r(X14,X15,i2(X16,j2(X17,r(X18,X19,t(X20,X21))))) = r(X18,X19,t(X20,r(X14,X15,i2(X16,j2(X17,X21))))) ).

fof(ax17,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : r(X14,X15,j2(X16,i1(X17,l(X18,X19,i1(X20,X21))))) = l(X18,X19,i1(X20,r(X14,X15,j2(X16,i1(X17,X21))))) ).

fof(ax18,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : l(X14,X15,i1(X16,i1(X17,r(X18,X19,i2(X20,X21))))) = r(X18,X19,i2(X20,l(X14,X15,i1(X16,i1(X17,X21))))) ).

fof(ax19,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : r(X14,X15,j2(X16,i2(X17,l(X18,X19,i2(X20,X21))))) = l(X18,X19,i2(X20,r(X14,X15,j2(X16,i2(X17,X21))))) ).

fof(ax20,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : r(X14,X15,t(X16,j2(X17,l(X18,X19,i2(X20,X21))))) = l(X18,X19,i2(X20,r(X14,X15,t(X16,j2(X17,X21))))) ).

fof(ax21,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : l(X14,X15,i2(X16,i2(X17,l(X18,X19,t(X20,X21))))) = l(X18,X19,t(X20,l(X14,X15,i2(X16,i2(X17,X21))))) ).

fof(ax22,axiom,
    ! [X14,X15,X16,X17,X18,X19,X20,X21] : l(X14,X15,i2(X16,i1(X17,r(X18,X19,i1(X20,X21))))) = r(X18,X19,i1(X20,l(X14,X15,i2(X16,i1(X17,X21))))) ).

fof(conj,conjecture,
    ! [U,X,Y,W] : k(m(b(l(X,Y,U),e),U),W) = e ).

%------------------------------------------------------------------------------
