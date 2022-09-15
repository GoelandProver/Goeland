%------------------------------------------------------------------------------
% File     : LCL568+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Problem  : Prove axiom 4 from the S1-0M6S3M9B axiomatization of S5
% Version  : [Zem73] axioms.
% English  :

% Refs     : [Zem73] Zeman (1973), Modal Logic, the Lewis-Modal systems
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.75 v7.5.0, 0.81 v7.4.0, 0.83 v7.3.0, 0.79 v7.1.0, 0.83 v7.0.0, 0.90 v6.4.0, 0.88 v6.3.0, 0.83 v6.2.0, 0.88 v6.1.0, 0.90 v6.0.0, 0.91 v5.5.0, 0.93 v5.2.0, 0.85 v5.1.0, 0.86 v5.0.0, 0.88 v4.1.0, 0.83 v3.7.0, 0.85 v3.5.0, 0.84 v3.3.0
% Syntax   : Number of formulae    :   55 (  23 unt;   0 def)
%            Number of atoms       :   93 (  10 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   38 (   0   ~;   0   |;   2   &)
%                                         (  23 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   37 (  36 usr;  35 prp; 0-2 aty)
%            Number of functors    :    9 (   9 usr;   0 con; 1-2 aty)
%            Number of variables   :   55 (  55   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms of propositional logic
%------------------------------------------------------------------------------
% File     : LCL006+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional)
% Axioms   : Propositional logic definitions
% Version  : [She06] axioms.
% English  :

% Refs     : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [She06]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    5 (   0 unt;   0 def)
%            Number of atoms       :   10 (   5 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    6 (   5 usr;   5 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   0 con; 1-2 aty)
%            Number of variables   :   10 (  10   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----Definitions
fof(op_or,axiom,
    ( op_or
   => ! [X,Y] : or(X,Y) = not(and(not(X),not(Y))) ) ).

fof(op_and,axiom,
    ( op_and
   => ! [X,Y] : and(X,Y) = not(or(not(X),not(Y))) ) ).

fof(op_implies_and,axiom,
    ( op_implies_and
   => ! [X,Y] : implies(X,Y) = not(and(X,not(Y))) ) ).

fof(op_implies_or,axiom,
    ( op_implies_or
   => ! [X,Y] : implies(X,Y) = or(not(X),Y) ) ).

fof(op_equiv,axiom,
    ( op_equiv
   => ! [X,Y] : equiv(X,Y) = and(implies(X,Y),implies(Y,X)) ) ).

%------------------------------------------------------------------------------

%----Include axioms of modal logic
%------------------------------------------------------------------------------
% File     : LCL007+0 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Axioms   : Propositional modal logic rules and axioms
% Version  : [She06] axioms.
% English  :

% Refs     : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [She06]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   23 (   0 unt;   0 def)
%            Number of atoms       :   52 (   1 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   29 (   0   ~;   0   |;   2   &)
%                                         (  23 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   25 (  24 usr;  23 prp; 0-2 aty)
%            Number of functors    :    7 (   7 usr;   0 con; 1-2 aty)
%            Number of variables   :   39 (  39   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----Rules
fof(necessitation,axiom,
    ( necessitation
  <=> ! [X] :
        ( is_a_theorem(X)
       => is_a_theorem(necessarily(X)) ) ) ).

fof(modus_ponens_strict_implies,axiom,
    ( modus_ponens_strict_implies
  <=> ! [X,Y] :
        ( ( is_a_theorem(X)
          & is_a_theorem(strict_implies(X,Y)) )
       => is_a_theorem(Y) ) ) ).

fof(adjunction,axiom,
    ( adjunction
  <=> ! [X,Y] :
        ( ( is_a_theorem(X)
          & is_a_theorem(Y) )
       => is_a_theorem(and(X,Y)) ) ) ).

fof(substitution_strict_equiv,axiom,
    ( substitution_strict_equiv
  <=> ! [X,Y] :
        ( is_a_theorem(strict_equiv(X,Y))
       => X = Y ) ) ).

%----"Standard" modal axioms
fof(axiom_K,axiom,
    ( axiom_K
  <=> ! [X,Y] : is_a_theorem(implies(necessarily(implies(X,Y)),implies(necessarily(X),necessarily(Y)))) ) ).

fof(axiom_M,axiom,
    ( axiom_M
  <=> ! [X] : is_a_theorem(implies(necessarily(X),X)) ) ).

fof(axiom_4,axiom,
    ( axiom_4
  <=> ! [X] : is_a_theorem(implies(necessarily(X),necessarily(necessarily(X)))) ) ).

fof(axiom_B,axiom,
    ( axiom_B
  <=> ! [X] : is_a_theorem(implies(X,necessarily(possibly(X)))) ) ).

fof(axiom_5,axiom,
    ( axiom_5
  <=> ! [X] : is_a_theorem(implies(possibly(X),necessarily(possibly(X)))) ) ).

%----Axioms for Lewis systems
fof(axiom_s1,axiom,
    ( axiom_s1
  <=> ! [X,Y,Z] : is_a_theorem(implies(and(necessarily(implies(X,Y)),necessarily(implies(Y,Z))),necessarily(implies(X,Z)))) ) ).

fof(axiom_s2,axiom,
    ( axiom_s2
  <=> ! [P,Q] : is_a_theorem(strict_implies(possibly(and(P,Q)),and(possibly(P),possibly(Q)))) ) ).

fof(axiom_s3,axiom,
    ( axiom_s3
  <=> ! [X,Y] : is_a_theorem(strict_implies(strict_implies(X,Y),strict_implies(not(possibly(Y)),not(possibly(X))))) ) ).

fof(axiom_s4,axiom,
    ( axiom_s4
  <=> ! [X] : is_a_theorem(strict_implies(necessarily(X),necessarily(necessarily(X)))) ) ).

%----Axioms for S1-0
fof(axiom_m1,axiom,
    ( axiom_m1
  <=> ! [X,Y] : is_a_theorem(strict_implies(and(X,Y),and(Y,X))) ) ).

fof(axiom_m2,axiom,
    ( axiom_m2
  <=> ! [X,Y] : is_a_theorem(strict_implies(and(X,Y),X)) ) ).

fof(axiom_m3,axiom,
    ( axiom_m3
  <=> ! [X,Y,Z] : is_a_theorem(strict_implies(and(and(X,Y),Z),and(X,and(Y,Z)))) ) ).

fof(axiom_m4,axiom,
    ( axiom_m4
  <=> ! [X] : is_a_theorem(strict_implies(X,and(X,X))) ) ).

fof(axiom_m5,axiom,
    ( axiom_m5
  <=> ! [X,Y,Z] : is_a_theorem(strict_implies(and(strict_implies(X,Y),strict_implies(Y,Z)),strict_implies(X,Z))) ) ).

%----Axioms for building from S1-0
fof(axiom_m6,axiom,
    ( axiom_m6
  <=> ! [X] : is_a_theorem(strict_implies(X,possibly(X))) ) ).

fof(axiom_m7,axiom,
    ( axiom_m7
  <=> ! [P,Q] : is_a_theorem(strict_implies(possibly(and(P,Q)),P)) ) ).

fof(axiom_m8,axiom,
    ( axiom_m8
  <=> ! [P,Q] : is_a_theorem(strict_implies(strict_implies(P,Q),strict_implies(possibly(P),possibly(Q)))) ) ).

fof(axiom_m9,axiom,
    ( axiom_m9
  <=> ! [X] : is_a_theorem(strict_implies(possibly(possibly(X)),possibly(X))) ) ).

fof(axiom_m10,axiom,
    ( axiom_m10
  <=> ! [X] : is_a_theorem(strict_implies(possibly(X),necessarily(possibly(X)))) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : LCL007+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Axioms   : Propositional modal logic definitions
% Version  : [She06] axioms.
% English  :

% Refs     : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [She06]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    4 (   0 unt;   0 def)
%            Number of atoms       :    8 (   4 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    5 (   4 usr;   4 prp; 0-2 aty)
%            Number of functors    :    7 (   7 usr;   0 con; 1-2 aty)
%            Number of variables   :    6 (   6   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----Definitions
fof(op_possibly,axiom,
    ( op_possibly
   => ! [X] : possibly(X) = not(necessarily(not(X))) ) ).

fof(op_necessarily,axiom,
    ( op_necessarily
   => ! [X] : necessarily(X) = not(possibly(not(X))) ) ).

fof(op_strict_implies,axiom,
    ( op_strict_implies
   => ! [X,Y] : strict_implies(X,Y) = necessarily(implies(X,Y)) ) ).

fof(op_strict_equiv,axiom,
    ( op_strict_equiv
   => ! [X,Y] : strict_equiv(X,Y) = and(strict_implies(X,Y),strict_implies(Y,X)) ) ).

%------------------------------------------------------------------------------

%----Include axioms for S1-0
%------------------------------------------------------------------------------
% File     : LCL007+4 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Axioms   : Axiomatization of S1-0
% Version  : [Fey50] axioms.
% English  :

% Refs     : [Fey50] Feys (1950), Les systemes formalises de modalites aris
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [Hal]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   14 (  14 unt;   0 def)
%            Number of atoms       :   14 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of predicates  :   14 (  14 usr;  14 prp; 0-0 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments : Requires LCL006+1, LCL007+0, LCL007+1
%------------------------------------------------------------------------------
%----Modal definitions
fof(s1_0_op_possibly,axiom,
    op_possibly ).

fof(s1_0_op_or,axiom,
    op_or ).

fof(s1_0_op_implies,axiom,
    op_implies ).

fof(s1_0_op_strict_implies,axiom,
    op_strict_implies ).

fof(s1_0_op_equiv,axiom,
    op_equiv ).

fof(s1_0_op_strict_equiv,axiom,
    op_strict_equiv ).

%----Modal rules
fof(s1_0_modus_ponens_strict_implies,axiom,
    modus_ponens_strict_implies ).

fof(s1_0_substitution_strict_equiv,axiom,
    substitution_strict_equiv ).

fof(s1_0_adjunction,axiom,
    adjunction ).

%----Modal axioms
fof(s1_0_axiom_m1,axiom,
    axiom_m1 ).

fof(s1_0_axiom_m2,axiom,
    axiom_m2 ).

fof(s1_0_axiom_m3,axiom,
    axiom_m3 ).

fof(s1_0_axiom_m4,axiom,
    axiom_m4 ).

fof(s1_0_axiom_m5,axiom,
    axiom_m5 ).

%------------------------------------------------------------------------------

%----Include axioms for M6S3M9B
%------------------------------------------------------------------------------
% File     : LCL007+5 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Axioms   : M6S3M9B axiomatization of S5 based on S1-0
% Version  : [Zem73] axioms.
% English  :

% Refs     : [Zem73] Zeman (1973), Modal Logic, the Lewis-Modal systems
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [Hal]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    4 (   4 unt;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of predicates  :    4 (   4 usr;   4 prp; 0-0 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments : Requires LCL006+1, LCL007+0, LCL007+1, LCL007+4.ax
%------------------------------------------------------------------------------
%----Modal axioms
fof(s1_0_m6s3m9b_axiom_m6,axiom,
    axiom_m6 ).

fof(s1_0_m6s3m9b_axiom_s3,axiom,
    axiom_s3 ).

fof(s1_0_m6s3m9b_axiom_m9,axiom,
    axiom_m9 ).

fof(s1_0_m6s3m9b_axiom_b,axiom,
    axiom_b ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
%----Operator definitions to reduce everything to and & not
fof(hilbert_op_or,axiom,
    op_or ).

fof(hilbert_op_implies_and,axiom,
    op_implies_and ).

fof(hilbert_op_equiv,axiom,
    op_equiv ).

%----Admissible but not required for completeness. With it much more can
%----be done.
fof(substitution_of_equivalents,axiom,
    substitution_of_equivalents ).

%----Conjecture
fof(km4b_axiom_4,conjecture,
    axiom_4 ).

%------------------------------------------------------------------------------
