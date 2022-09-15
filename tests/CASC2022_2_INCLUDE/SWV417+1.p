%--------------------------------------------------------------------------
% File     : SWV417+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Software Verification
% Problem  : Priority queue checker: Formula (9)
% Version  : [dNP05] axioms.
% English  :

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [Pis06]
% Names    : cpq004 [Pis06]

% Status   : Theorem
% Rating   : 0.25 v8.1.0, 0.28 v7.5.0, 0.31 v7.4.0, 0.23 v7.3.0, 0.21 v7.1.0, 0.26 v7.0.0, 0.30 v6.4.0, 0.35 v6.3.0, 0.38 v6.2.0, 0.40 v6.0.0, 0.35 v5.5.0, 0.37 v5.4.0, 0.43 v5.3.0, 0.52 v5.2.0, 0.40 v5.1.0, 0.38 v5.0.0, 0.33 v4.1.0, 0.35 v4.0.0, 0.38 v3.7.0, 0.35 v3.5.0, 0.37 v3.4.0, 0.42 v3.3.0
% Syntax   : Number of formulae    :   64 (  23 unt;   0 def)
%            Number of atoms       :  134 (  41 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   86 (  16   ~;   4   |;  22   &)
%                                         (  16 <=>;  28  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   5 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :   21 (  19 usr;   1 prp; 0-3 aty)
%            Number of functors    :   26 (  26 usr;   4 con; 0-3 aty)
%            Number of variables   :  170 ( 166   !;   4   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include the axioms about priority queues and checked priority queues
%------------------------------------------------------------------------------
% File     : SWV007+0 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Software Verification
% Axioms   : Priority queue checker: quasi-order set with bottom element
% Version  : [dNP05] axioms.
% English  :

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [Pis06]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    5 (   2 unt;   0 def)
%            Number of atoms       :   10 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    6 (   1   ~;   1   |;   2   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    9 (   9   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
fof(transitivity,axiom,
    ! [U,V,W] :
      ( ( less_than(U,V)
        & less_than(V,W) )
     => less_than(U,W) ) ).

fof(totality,axiom,
    ! [U,V] :
      ( less_than(U,V)
      | less_than(V,U) ) ).

fof(reflexivity,axiom,
    ! [U] : less_than(U,U) ).

fof(stricly_smaller_definition,axiom,
    ! [U,V] :
      ( strictly_less_than(U,V)
    <=> ( less_than(U,V)
        & ~ less_than(V,U) ) ) ).

fof(bottom_smallest,axiom,
    ! [U] : less_than(bottom,U) ).

%------------------------------------------------------------------------------


%------------------------------------------------------------------------------
% File     : SWV007+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Software Verification
% Axioms   : Priority queue checker: priority queues
% Version  : [dNP05] axioms.
% English  : Priority queues are inductively defined.

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [Pis06]
% Names    :

% Status   : Satisfiable
% Rating   : <Don't worry about this one - we'll do it automatically>
% Syntax   : Number of formulae    :   12 (   5 unt;   0 def)
%            Number of atoms       :   26 (   9 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   17 (   3   ~;   1   |;   5   &)
%                                         (   2 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    7 (   7 usr;   1 con; 0-2 aty)
%            Number of variables   :   25 (  25   !;   0   ?)
% SPC      : 

% Comments : Requires SWV007+0
%------------------------------------------------------------------------------
fof(ax6,axiom,
    ~ isnonempty_pq(create_pq) ).

fof(ax7,axiom,
    ! [U,V] : isnonempty_pq(insert_pq(U,V)) ).

fof(ax8,axiom,
    ! [U] : ~ contains_pq(create_pq,U) ).

fof(ax9,axiom,
    ! [U,V,W] :
      ( contains_pq(insert_pq(U,V),W)
    <=> ( contains_pq(U,W)
        | V = W ) ) ).

fof(ax10,axiom,
    ! [U,V] :
      ( issmallestelement_pq(U,V)
    <=> ! [W] :
          ( contains_pq(U,W)
         => less_than(V,W) ) ) ).

fof(ax11,axiom,
    ! [U,V] : remove_pq(insert_pq(U,V),V) = U ).

fof(ax12,axiom,
    ! [U,V,W] :
      ( ( contains_pq(U,W)
        & V != W )
     => remove_pq(insert_pq(U,V),W) = insert_pq(remove_pq(U,W),V) ) ).

fof(ax13,axiom,
    ! [U,V] :
      ( ( contains_pq(U,V)
        & issmallestelement_pq(U,V) )
     => findmin_pq_eff(U,V) = U ) ).

fof(ax14,axiom,
    ! [U,V] :
      ( ( contains_pq(U,V)
        & issmallestelement_pq(U,V) )
     => findmin_pq_res(U,V) = V ) ).

fof(ax15,axiom,
    ! [U,V] :
      ( ( contains_pq(U,V)
        & issmallestelement_pq(U,V) )
     => removemin_pq_eff(U,V) = remove_pq(U,V) ) ).

fof(ax16,axiom,
    ! [U,V] :
      ( ( contains_pq(U,V)
        & issmallestelement_pq(U,V) )
     => removemin_pq_res(U,V) = V ) ).

fof(ax17,axiom,
    ! [U,V,W] : insert_pq(insert_pq(U,V),W) = insert_pq(insert_pq(U,W),V) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SWV007+2 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Software Verification
% Axioms   : Priority queue checker: system of lower bounds
% Version  : [dNP05] axioms.
% English  :

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [Pis06]
% Names    :

% Status   : Satisfiable
% Rating   : <Don't worry about this one - we'll do it automatically>
% Syntax   : Number of formulae    :   13 (   7 unt;   0 def)
%            Number of atoms       :   24 (  12 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   16 (   5   ~;   2   |;   3   &)
%                                         (   2 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-3 aty)
%            Number of functors    :    6 (   6 usr;   1 con; 0-2 aty)
%            Number of variables   :   38 (  38   !;   0   ?)
% SPC      : 

% Comments : Requires SWV007+0
%------------------------------------------------------------------------------
fof(ax18,axiom,
    ~ isnonempty_slb(create_slb) ).

fof(ax19,axiom,
    ! [U,V,W] : isnonempty_slb(insert_slb(U,pair(V,W))) ).

fof(ax20,axiom,
    ! [U] : ~ contains_slb(create_slb,U) ).

fof(ax21,axiom,
    ! [U,V,W,X] :
      ( contains_slb(insert_slb(U,pair(V,X)),W)
    <=> ( contains_slb(U,W)
        | V = W ) ) ).

fof(ax22,axiom,
    ! [U,V] : ~ pair_in_list(create_slb,U,V) ).

fof(ax23,axiom,
    ! [U,V,W,X,Y] :
      ( pair_in_list(insert_slb(U,pair(V,X)),W,Y)
    <=> ( pair_in_list(U,W,Y)
        | ( V = W
          & X = Y ) ) ) ).

fof(ax24,axiom,
    ! [U,V,W] : remove_slb(insert_slb(U,pair(V,W)),V) = U ).

fof(ax25,axiom,
    ! [U,V,W,X] :
      ( ( V != W
        & contains_slb(U,W) )
     => remove_slb(insert_slb(U,pair(V,X)),W) = insert_slb(remove_slb(U,W),pair(V,X)) ) ).

fof(ax26,axiom,
    ! [U,V,W] : lookup_slb(insert_slb(U,pair(V,W)),V) = W ).

fof(ax27,axiom,
    ! [U,V,W,X] :
      ( ( V != W
        & contains_slb(U,W) )
     => lookup_slb(insert_slb(U,pair(V,X)),W) = lookup_slb(U,W) ) ).

fof(ax28,axiom,
    ! [U] : update_slb(create_slb,U) = create_slb ).

fof(ax29,axiom,
    ! [U,V,W,X] :
      ( strictly_less_than(X,W)
     => update_slb(insert_slb(U,pair(V,X)),W) = insert_slb(update_slb(U,W),pair(V,W)) ) ).

fof(ax30,axiom,
    ! [U,V,W,X] :
      ( less_than(W,X)
     => update_slb(insert_slb(U,pair(V,X)),W) = insert_slb(update_slb(U,W),pair(V,X)) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SWV007+3 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Software Verification
% Axioms   : Priority queue checker: checked priority queues
% Version  : [dNP05] axioms.
% English  : This axiom set fully describes checked priority queues. Checked
%            priority queues are defined as triples of a "priority queue
%            pretender", a system of lower bounds and Boolean value that keep
%            track of errors.

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [Pis06]
% Names    :

% Status   : Satisfiable
% Rating   : <Don't worry about this one - we'll do it automatically>
% Syntax   : Number of formulae    :   23 (   7 unt;   0 def)
%            Number of atoms       :   48 (  17 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   32 (   7   ~;   0   |;   7   &)
%                                         (   4 <=>;  14  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    9 (   7 usr;   1 prp; 0-2 aty)
%            Number of functors    :   18 (  18 usr;   3 con; 0-3 aty)
%            Number of variables   :   70 (  70   !;   0   ?)
% SPC      : 

% Comments : Requires SWV007+0 SWV007+2
%------------------------------------------------------------------------------
fof(ax31,axiom,
    ! [U] : succ_cpq(U,U) ).

fof(ax32,axiom,
    ! [U,V,W] :
      ( succ_cpq(U,V)
     => succ_cpq(U,insert_cpq(V,W)) ) ).

fof(ax33,axiom,
    ! [U,V,W] :
      ( succ_cpq(U,V)
     => succ_cpq(U,remove_cpq(V,W)) ) ).

fof(ax34,axiom,
    ! [U,V] :
      ( succ_cpq(U,V)
     => succ_cpq(U,findmin_cpq_eff(V)) ) ).

fof(ax35,axiom,
    ! [U,V] :
      ( succ_cpq(U,V)
     => succ_cpq(U,removemin_cpq_eff(V)) ) ).

fof(ax36,axiom,
    ! [U,V] : check_cpq(triple(U,create_slb,V)) ).

fof(ax37,axiom,
    ! [U,V,W,X,Y] :
      ( less_than(Y,X)
     => ( check_cpq(triple(U,insert_slb(V,pair(X,Y)),W))
      <=> check_cpq(triple(U,V,W)) ) ) ).

fof(ax38,axiom,
    ! [U,V,W,X,Y] :
      ( strictly_less_than(X,Y)
     => ( check_cpq(triple(U,insert_slb(V,pair(X,Y)),W))
      <=> $false ) ) ).

fof(ax39,axiom,
    ! [U,V,W,X] :
      ( contains_cpq(triple(U,V,W),X)
    <=> contains_slb(V,X) ) ).

fof(ax40,axiom,
    ! [U,V] :
      ( ok(triple(U,V,bad))
    <=> $false ) ).

fof(ax41,axiom,
    ! [U,V,W] :
      ( ~ ok(triple(U,V,W))
     => W = bad ) ).

fof(ax42,axiom,
    ! [U,V,W,X] : insert_cpq(triple(U,V,W),X) = triple(insert_pqp(U,X),insert_slb(V,pair(X,bottom)),W) ).

fof(ax43,axiom,
    ! [U,V,W,X] :
      ( ~ contains_slb(V,X)
     => remove_cpq(triple(U,V,W),X) = triple(U,V,bad) ) ).

fof(ax44,axiom,
    ! [U,V,W,X] :
      ( ( contains_slb(V,X)
        & less_than(lookup_slb(V,X),X) )
     => remove_cpq(triple(U,V,W),X) = triple(remove_pqp(U,X),remove_slb(V,X),W) ) ).

fof(ax45,axiom,
    ! [U,V,W,X] :
      ( ( contains_slb(V,X)
        & strictly_less_than(X,lookup_slb(V,X)) )
     => remove_cpq(triple(U,V,W),X) = triple(remove_pqp(U,X),remove_slb(V,X),bad) ) ).

fof(ax46,axiom,
    ! [U,V] : findmin_cpq_eff(triple(U,create_slb,V)) = triple(U,create_slb,bad) ).

fof(ax47,axiom,
    ! [U,V,W,X] :
      ( ( V != create_slb
        & ~ contains_slb(V,findmin_pqp_res(U)) )
     => findmin_cpq_eff(triple(U,V,W)) = triple(U,update_slb(V,findmin_pqp_res(U)),bad) ) ).

fof(ax48,axiom,
    ! [U,V,W,X] :
      ( ( V != create_slb
        & contains_slb(V,findmin_pqp_res(U))
        & strictly_less_than(findmin_pqp_res(U),lookup_slb(V,findmin_pqp_res(U))) )
     => findmin_cpq_eff(triple(U,V,W)) = triple(U,update_slb(V,findmin_pqp_res(U)),bad) ) ).

fof(ax49,axiom,
    ! [U,V,W,X] :
      ( ( V != create_slb
        & contains_slb(V,findmin_pqp_res(U))
        & less_than(lookup_slb(V,findmin_pqp_res(U)),findmin_pqp_res(U)) )
     => findmin_cpq_eff(triple(U,V,W)) = triple(U,update_slb(V,findmin_pqp_res(U)),W) ) ).

fof(ax50,axiom,
    ! [U,V] : findmin_cpq_res(triple(U,create_slb,V)) = bottom ).

fof(ax51,axiom,
    ! [U,V,W,X] :
      ( V != create_slb
     => findmin_cpq_res(triple(U,V,W)) = findmin_pqp_res(U) ) ).

fof(ax52,axiom,
    ! [U] : removemin_cpq_eff(U) = remove_cpq(findmin_cpq_eff(U),findmin_cpq_res(U)) ).

fof(ax53,axiom,
    ! [U] : removemin_cpq_res(U) = findmin_cpq_res(U) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : SWV007+4 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Software Verification
% Axioms   : Priority queue checker: implementation function, Pi, Pi#
% Version  : [dNP05] axioms.
% English  :

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [Pis06]
% Names    :

% Status   : Satisfiable
% Rating   : <Don't worry about this one - we'll do it automatically>
% Syntax   : Number of formulae    :    9 (   2 unt;   0 def)
%            Number of atoms       :   20 (   2 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   11 (   0   ~;   0   |;   4   &)
%                                         (   7 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :   13 (  12 usr;   0 prp; 1-2 aty)
%            Number of functors    :    7 (   7 usr;   2 con; 0-3 aty)
%            Number of variables   :   21 (  18   !;   3   ?)
% SPC      : 

% Comments : Requires SWV007+0 SWV007+1 SWV007+2 SWV007+3
%------------------------------------------------------------------------------
fof(ax54,axiom,
    ! [U,V] : i(triple(U,create_slb,V)) = create_pq ).

fof(ax55,axiom,
    ! [U,V,W,X,Y] : i(triple(U,insert_slb(V,pair(X,Y)),W)) = insert_pq(i(triple(U,V,W)),X) ).

%----All below here are definitions
fof(ax56,axiom,
    ! [U,V] :
      ( pi_sharp_remove(U,V)
    <=> contains_pq(U,V) ) ).

fof(ax57,axiom,
    ! [U,V] :
      ( pi_remove(U,V)
    <=> pi_sharp_remove(i(U),V) ) ).

fof(ax58,axiom,
    ! [U,V] :
      ( pi_sharp_find_min(U,V)
    <=> ( contains_pq(U,V)
        & issmallestelement_pq(U,V) ) ) ).

fof(ax59,axiom,
    ! [U] :
      ( pi_find_min(U)
    <=> ? [V] : pi_sharp_find_min(i(U),V) ) ).

fof(ax60,axiom,
    ! [U,V] :
      ( pi_sharp_removemin(U,V)
    <=> ( contains_pq(U,V)
        & issmallestelement_pq(U,V) ) ) ).

fof(ax61,axiom,
    ! [U] :
      ( pi_removemin(U)
    <=> ? [V] : pi_sharp_find_min(i(U),V) ) ).

fof(ax62,axiom,
    ! [U] :
      ( phi(U)
    <=> ? [V] :
          ( succ_cpq(U,V)
          & ok(V)
          & check_cpq(V) ) ) ).

%------------------------------------------------------------------------------

%--------------------------------------------------------------------------
%----lemma_pi_min_elem (cpq_l007.p)
fof(main4_l7,lemma,
    ! [U,V,W] :
      ( phi(findmin_cpq_eff(triple(U,V,W)))
     => pi_sharp_find_min(i(triple(U,V,W)),findmin_cpq_res(triple(U,V,W))) ) ).

fof(co4,conjecture,
    ! [U,V,W] :
      ( pi_find_min(triple(U,V,W))
     => ( phi(findmin_cpq_eff(triple(U,V,W)))
       => ? [X] :
            ( pi_sharp_find_min(i(triple(U,V,W)),X)
            & findmin_cpq_res(triple(U,V,W)) = findmin_pq_res(i(triple(U,V,W)),X) ) ) ) ).

%--------------------------------------------------------------------------
