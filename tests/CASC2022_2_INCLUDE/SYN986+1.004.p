%------------------------------------------------------------------------------
% File     : SYN986+1.004 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Syntactic
% Problem  : Orevkov formula - size 4
% Version  : [TS00] axioms : Especial.
% English  : hyp(2,k,1) is defined. Each Ck has a non-normal natural deduction
%            of size linear in k, and each normal deduction of Ck has at least
%            hyp(2,k,1)=2_k nodes.

% Refs     : [TS00]  Troelstra & Schwichtenberg (2000), Basic Proof Theory
%          : [Rat08] Raths (2008), Email to G. Sutcliffe
% Source   : [Rat08]
% Names    :

% Status   : Theorem
% Rating   : 0.73 v8.1.0, 0.64 v7.5.0, 0.62 v7.4.0, 0.50 v7.3.0, 0.57 v7.2.0, 0.50 v7.0.0, 0.57 v6.4.0, 0.79 v6.3.0, 0.77 v6.2.0, 0.64 v6.1.0, 0.80 v6.0.0, 0.75 v5.5.0, 0.79 v5.4.0, 0.83 v5.2.0, 0.71 v5.1.0, 0.64 v5.0.0, 0.70 v4.1.0, 0.72 v4.0.1, 0.74 v4.0.0
% Syntax   : Number of formulae    :    3 (   1 unt;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    5 (   3 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   4   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 3-3 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :   10 (   5   !;   5   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : Inspiration by Wolfgang Bibel, Helmut Schwichtenberg.
%          : The complexity of proof seach is hyper-exponential with the size
%            of the formulae: 2^0=1, 2^1=2, 2^2=4, 2^4=16, 2^16=65536,
%            2^65536 = mmmh... ?
%------------------------------------------------------------------------------
%----Include Orevkov formula
%------------------------------------------------------------------------------
% File     : SYN002+0 : TPTP v8.1.0. Released v3.6.0.
% Domain   : Syntactic
% Axioms   : Orevkov formula
% Version  : [TS00] axioms : Especial.
% English  : r(x,y,z)=y+2^x=z

% Refs     : [TS00]  Troelska & Schwichtenberg (2000), Basic Proof Theory
%          : [Rat08] Raths (2008), Email to G. Sutcliffe
% Source   : [Rat08]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    2 (   1 unt;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    2 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 3-3 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :    5 (   5   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
fof(hyp1,axiom,
    ! [Y] : r(Y,zero,succ(Y)) ).

fof(hyp2,axiom,
    ! [Y,X,Z,Z1] :
      ( r(Y,X,Z)
     => ( r(Z,X,Z1)
       => r(Y,succ(X),Z1) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(ck,conjecture,
    ? [Z4,Z3,Z2,Z1,Z0] :
      ( r(zero,zero,Z4)
      & r(zero,Z4,Z3)
      & r(zero,Z3,Z2)
      & r(zero,Z2,Z1)
      & r(zero,Z1,Z0) ) ).

%------------------------------------------------------------------------------
