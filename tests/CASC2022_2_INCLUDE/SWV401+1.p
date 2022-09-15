%------------------------------------------------------------------------------
% File     : SWV401+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Software Verification
% Problem  : Priority queue checker: tmp_not_check_03_2 step
% Version  : [dNP05] axioms.
% English  :

% Refs     : [Pis06] Piskac (2006), Email to Geoff Sutcliffe
%          : [dNP05] de Nivelle & Piskac (2005), Verification of an Off-Lin
% Source   : [Pis06]
% Names    : cpq_l037 [Pis06]

% Status   : Theorem
% Rating   : 0.31 v8.1.0, 0.36 v7.5.0, 0.44 v7.4.0, 0.30 v7.3.0, 0.41 v7.1.0, 0.30 v7.0.0, 0.33 v6.4.0, 0.38 v6.3.0, 0.33 v6.2.0, 0.44 v6.1.0, 0.43 v6.0.0, 0.35 v5.5.0, 0.41 v5.4.0, 0.46 v5.3.0, 0.52 v5.2.0, 0.50 v5.1.0, 0.48 v5.0.0, 0.50 v4.1.0, 0.52 v4.0.1, 0.48 v4.0.0, 0.50 v3.5.0, 0.53 v3.4.0, 0.58 v3.3.0
% Syntax   : Number of formulae    :   19 (   9 unt;   0 def)
%            Number of atoms       :   40 (  12 equ)
%            Maximal formula atoms :    6 (   2 avg)
%            Number of connectives :   27 (   6   ~;   3   |;   7   &)
%                                         (   3 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-3 aty)
%            Number of functors    :    7 (   7 usr;   2 con; 0-2 aty)
%            Number of variables   :   56 (  56   !;   0   ?)
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
%----goal: fof(l35_li3637, lemma, (! [U,V,W,X] : ((pair_in_list(U,V,W) &
%----        less_than(X,W)) => pair_in_list(update_slb(U,X),V,W)))).

%----tmp_not_check_03_2::step (conjecture)
fof(l37_co,conjecture,
    ! [U] :
      ( ! [V,W,X] :
          ( ( pair_in_list(U,V,W)
            & less_than(X,W) )
         => pair_in_list(update_slb(U,X),V,W) )
     => ! [Y,Z,X1,X2,X3] :
          ( ( pair_in_list(insert_slb(U,pair(X2,X3)),Y,Z)
            & less_than(X1,Z) )
         => pair_in_list(update_slb(insert_slb(U,pair(X2,X3)),X1),Y,Z) ) ) ).

%------------------------------------------------------------------------------
