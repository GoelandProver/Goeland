%------------------------------------------------------------------------------
% File     : NUM859+1 : TPTP v8.1.0. Released v4.1.0.
% Domain   : Number Theory
% Problem  : Basic upper bound replace maximum with less-or-equal
% Version  : Especial.
% English  : This is an abstraction of a problem to show equivalence of two 
%            given constraint models. More precisely, the task is to prove that
%            the minimal solutions of a certain constraint model are preserved
%            if the applications of the "maximum" function in it are replaced
%            by "upper bounds" only.

% Refs     : [Bau10] Baumgartner (2010), Email to G. Sutcliffe
%          : [BS09]  Baumgartner & Slaney (2009), Constraint Modelling: A C
% Source   : [Bau10]
% Names    :

% Status   : Theorem
% Rating   : 0.69 v8.1.0, 0.64 v7.5.0, 0.69 v7.4.0, 0.57 v7.3.0, 0.59 v7.2.0, 0.55 v7.1.0, 0.57 v6.4.0, 0.58 v6.3.0, 0.46 v6.2.0, 0.52 v6.1.0, 0.53 v6.0.0, 0.57 v5.5.0, 0.70 v5.4.0, 0.79 v5.3.0, 0.78 v5.2.0, 0.70 v5.1.0, 0.71 v5.0.0, 0.75 v4.1.0
% Syntax   : Number of formulae    :   14 (   1 unt;   0 def)
%            Number of atoms       :   35 (   3 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   23 (   2   ~;   3   |;   6   &)
%                                         (   8 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    7 (   6 usr;   0 prp; 2-3 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 1-2 aty)
%            Number of variables   :   38 (  37   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
%----Axioms about integers
fof(lesseq_ref,axiom,
    ! [X] : lesseq(X,X) ).

fof(lesseq_trans,axiom,
    ! [X,Y,Z] :
      ( ( lesseq(X,Y)
        & lesseq(Y,Z) )
     => lesseq(X,Z) ) ).

fof(lesseq_antisymmetric,axiom,
    ! [X,Y] :
      ( ( lesseq(X,Y)
        & lesseq(Y,X) )
     => X = Y ) ).

%----Total order:
fof(lesseq_total,axiom,
    ! [X,Y] :
      ( lesseq(X,Y)
      | lesseq(Y,X) ) ).

%----sum is monotone
fof(sum_monotone_1,axiom,
    ! [X,Y,Z] :
      ( lesseq(X,Y)
    <=> lesseq(sum(Z,X),sum(Z,Y)) ) ).

%----summation(X) is meant as an abstraction of a certain summation term in 
%----the original constraint problem 
fof(summation_monotone,axiom,
    ! [X,Y] :
      ( lesseq(X,Y)
    <=> lesseq(summation(X),summation(Y)) ) ).

%----Maximum function
fof(max_1,axiom,
    ! [X,Y] :
      ( max(X,Y) = X
      | ~ lesseq(Y,X) ) ).

fof(max_2,axiom,
    ! [X,Y] :
      ( max(X,Y) = Y
      | ~ lesseq(X,Y) ) ).

%----Z is an upper bound of Y and Z
fof(ub,axiom,
    ! [X,Y,Z] :
      ( ub(X,Y,Z)
    <=> ( lesseq(X,Z)
        & lesseq(Y,Z) ) ) ).

%----The model - version with max
fof(model_max_2,axiom,
    ! [X,Y,N] :
      ( model_max(X,Y,N)
    <=> lesseq(max(X,Y),N) ) ).

%----The model - version with ub
fof(model_ub_2,axiom,
    ! [X,Y,N] :
      ( model_ub(X,Y,N)
    <=> ? [Z] :
          ( ub(X,Y,Z)
          & lesseq(Z,N) ) ) ).

%----minimal solution, model_max
fof(minsol_model_max,axiom,
    ! [X,Y,N] :
      ( minsol_model_max(X,Y,N)
    <=> ( model_max(X,Y,N)
        & ! [Z] :
            ( model_max(X,Y,Z)
           => lesseq(N,Z) ) ) ) ).

%----minimal solution, model_ub
fof(minsol_model_ub,axiom,
    ! [X,Y,N] :
      ( minsol_model_ub(X,Y,N)
    <=> ( model_ub(X,Y,N)
        & ! [Z] :
            ( model_ub(X,Y,Z)
           => lesseq(N,Z) ) ) ) ).

%----Conjecture: minimal solutions of model_max and model_ub are the same:
fof(max_is_ub_1,conjecture,
    ! [X,Y,Z] :
      ( minsol_model_ub(X,Y,Z)
    <=> minsol_model_max(X,Y,Z) ) ).

%------------------------------------------------------------------------------
