%------------------------------------------------------------------------------
% File     : SWV398+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Software Verification
% Problem  : Priority queue checker: tmp_not_check_03
% Version  : [dNP05] axioms.
% English  :

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [Pis06]
% Names    : cpq_l034 [Pis06]

% Status   : Theorem
% Rating   : 0.58 v8.1.0, 0.50 v7.5.0, 0.53 v7.3.0, 0.59 v7.1.0, 0.52 v7.0.0, 0.57 v6.4.0, 0.62 v6.2.0, 0.72 v6.1.0, 0.77 v6.0.0, 0.74 v5.5.0, 0.81 v5.4.0, 0.79 v5.3.0, 0.85 v5.2.0, 0.80 v5.1.0, 0.81 v5.0.0, 0.79 v4.1.0, 0.78 v4.0.1, 0.83 v4.0.0, 0.88 v3.7.0, 0.85 v3.5.0, 0.89 v3.4.0, 0.84 v3.3.0
% Syntax   : Number of formulae    :   44 (  16 unt;   0 def)
%            Number of atoms       :   91 (  29 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   62 (  15   ~;   3   |;  14   &)
%                                         (   8 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    9 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   11 (   9 usr;   1 prp; 0-3 aty)
%            Number of functors    :   18 (  18 usr;   3 con; 0-3 aty)
%            Number of variables   :  131 ( 127   !;   4   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
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
%----lemma_check_characterization (cpq_l041.p, cpq_l042.p)
fof(l26_li4142,lemma,
    ! [U,V,W] :
      ( check_cpq(triple(U,V,W))
    <=> ! [X,Y] :
          ( pair_in_list(V,X,Y)
         => less_than(Y,X) ) ) ).

%----tmp_not_check_03_1 (cpq_l035.p)
fof(l34_l35,lemma,
    ! [U] :
      ( ? [V,W] :
          ( pair_in_list(U,V,W)
          & strictly_less_than(V,W) )
     => ! [X] :
        ? [Y,Z] :
          ( pair_in_list(update_slb(U,X),Y,Z)
          & strictly_less_than(Y,Z) ) ) ).

%----tmp_not_check_03 (conjecture)
fof(l24_co,conjecture,
    ! [U,V,W] :
      ( ~ check_cpq(triple(U,V,W))
     => ~ check_cpq(findmin_cpq_eff(triple(U,V,W))) ) ).

%------------------------------------------------------------------------------
