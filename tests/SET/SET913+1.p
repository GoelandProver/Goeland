%------------------------------------------------------------------------------
% File     : SET913+1 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : ~ ( disjoint(singleton(A),B) & in(A,B) )
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t54_zfmisc_1 [Urb06]

% Status   : Theorem
% Rating   : 0.00 v5.5.0, 0.04 v5.3.0, 0.13 v5.2.0, 0.00 v5.0.0, 0.05 v4.1.0, 0.06 v4.0.1, 0.00 v3.2.0
% Syntax   : Number of formulae    :    6 (   2 unit)
%            Number of atoms       :   10 (   0 equality)
%            Maximal formula depth :    5 (   4 average)
%            Number of connectives :    8 (   4 ~  ;   0  |;   2  &)
%                                         (   0 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    1 (   0 constant; 1-1 arity)
%            Number of variables   :   10 (   0 singleton;   8 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(symmetry_r1_xboole_0,axiom,(
    ! [A,B] :
      ( disjoint(A,B)
     => disjoint(B,A) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t54_zfmisc_1,conjecture,(
    ! [A,B] :
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) )).

fof(l25_zfmisc_1,axiom,(
    ! [A,B] :
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) )).
%------------------------------------------------------------------------------
