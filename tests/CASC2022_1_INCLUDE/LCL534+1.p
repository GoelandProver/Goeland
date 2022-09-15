%------------------------------------------------------------------------------
% File     : LCL534+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Problem  : Prove axiom s3 from KM5 axiomatization of S5
% Version  : [HC96] axioms.
% English  :

% Refs     : [HC96]  Hughes & Cresswell (1996), A New Introduction to Modal
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.92 v8.1.0, 0.94 v7.4.0, 0.93 v7.2.0, 0.97 v7.1.0, 0.96 v7.0.0, 0.97 v6.4.0, 0.96 v6.1.0, 1.00 v3.3.0
% Syntax   : Number of formulae    :   88 (  30 unt;   0 def)
%            Number of atoms       :  155 (  11 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   67 (   0   ~;   0   |;   3   &)
%                                         (  49 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   61 (  60 usr;  59 prp; 0-2 aty)
%            Number of functors    :    9 (   9 usr;   0 con; 1-2 aty)
%            Number of variables   :  110 ( 110   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include Hilbert's axiomatization of propositional logic
%------------------------------------------------------------------------------
% File     : LCL006+0 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional)
% Axioms   : Propositional logic rules and axioms
% Version  : [She06] axioms.
% English  :

% Refs     : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [She06]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   26 (   0 unt;   0 def)
%            Number of atoms       :   55 (   1 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   29 (   0   ~;   0   |;   1   &)
%                                         (  26 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   28 (  27 usr;  26 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   0 con; 1-2 aty)
%            Number of variables   :   55 (  55   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----The only explicit rule of PC. Uniform substitution is implemented by
%----universal quantification
fof(modus_ponens,axiom,
    ( modus_ponens
  <=> ! [X,Y] :
        ( ( is_a_theorem(X)
          & is_a_theorem(implies(X,Y)) )
       => is_a_theorem(Y) ) ) ).

%----Meta-rule of PC, which Ted says is not necessary
fof(substitution_of_equivalents,axiom,
    ( substitution_of_equivalents
  <=> ! [X,Y] :
        ( is_a_theorem(equiv(X,Y))
       => X = Y ) ) ).

%----The axioms of Hilbert PC
fof(modus_tollens,axiom,
    ( modus_tollens
  <=> ! [X,Y] : is_a_theorem(implies(implies(not(Y),not(X)),implies(X,Y))) ) ).

fof(implies_1,axiom,
    ( implies_1
  <=> ! [X,Y] : is_a_theorem(implies(X,implies(Y,X))) ) ).

fof(implies_2,axiom,
    ( implies_2
  <=> ! [X,Y] : is_a_theorem(implies(implies(X,implies(X,Y)),implies(X,Y))) ) ).

fof(implies_3,axiom,
    ( implies_3
  <=> ! [X,Y,Z] : is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z)))) ) ).

fof(and_1,axiom,
    ( and_1
  <=> ! [X,Y] : is_a_theorem(implies(and(X,Y),X)) ) ).

fof(and_2,axiom,
    ( and_2
  <=> ! [X,Y] : is_a_theorem(implies(and(X,Y),Y)) ) ).

fof(and_3,axiom,
    ( and_3
  <=> ! [X,Y] : is_a_theorem(implies(X,implies(Y,and(X,Y)))) ) ).

fof(or_1,axiom,
    ( or_1
  <=> ! [X,Y] : is_a_theorem(implies(X,or(X,Y))) ) ).

fof(or_2,axiom,
    ( or_2
  <=> ! [X,Y] : is_a_theorem(implies(Y,or(X,Y))) ) ).

fof(or_3,axiom,
    ( or_3
  <=> ! [X,Y,Z] : is_a_theorem(implies(implies(X,Z),implies(implies(Y,Z),implies(or(X,Y),Z)))) ) ).

fof(equivalence_1,axiom,
    ( equivalence_1
  <=> ! [X,Y] : is_a_theorem(implies(equiv(X,Y),implies(X,Y))) ) ).

fof(equivalence_2,axiom,
    ( equivalence_2
  <=> ! [X,Y] : is_a_theorem(implies(equiv(X,Y),implies(Y,X))) ) ).

fof(equivalence_3,axiom,
    ( equivalence_3
  <=> ! [X,Y] : is_a_theorem(implies(implies(X,Y),implies(implies(Y,X),equiv(X,Y)))) ) ).

%----Axioms for Rosser
fof(kn1,axiom,
    ( kn1
  <=> ! [P] : is_a_theorem(implies(P,and(P,P))) ) ).

fof(kn2,axiom,
    ( kn2
  <=> ! [P,Q] : is_a_theorem(implies(and(P,Q),P)) ) ).

fof(kn3,axiom,
    ( kn3
  <=> ! [P,Q,R] : is_a_theorem(implies(implies(P,Q),implies(not(and(Q,R)),not(and(R,P))))) ) ).

%----Axioms for Luka
fof(cn1,axiom,
    ( cn1
  <=> ! [P,Q,R] : is_a_theorem(implies(implies(P,Q),implies(implies(Q,R),implies(P,R)))) ) ).

fof(cn2,axiom,
    ( cn2
  <=> ! [P,Q] : is_a_theorem(implies(P,implies(not(P),Q))) ) ).

fof(cn3,axiom,
    ( cn3
  <=> ! [P] : is_a_theorem(implies(implies(not(P),P),P)) ) ).

%----Axioms for Principia
fof(r1,axiom,
    ( r1
  <=> ! [P] : is_a_theorem(implies(or(P,P),P)) ) ).

fof(r2,axiom,
    ( r2
  <=> ! [P,Q] : is_a_theorem(implies(Q,or(P,Q))) ) ).

fof(r3,axiom,
    ( r3
  <=> ! [P,Q] : is_a_theorem(implies(or(P,Q),or(Q,P))) ) ).

%----This is the dependent one
fof(r4,axiom,
    ( r4
  <=> ! [P,Q,R] : is_a_theorem(implies(or(P,or(Q,R)),or(Q,or(P,R)))) ) ).

fof(r5,axiom,
    ( r5
  <=> ! [P,Q,R] : is_a_theorem(implies(implies(Q,R),implies(or(P,Q),or(P,R)))) ) ).

%------------------------------------------------------------------------------

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

%------------------------------------------------------------------------------
% File     : LCL006+2 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional)
% Axioms   : Hilbert's axiomatization of propositional logic
% Version  : [HB34] axioms.
% English  :

% Refs     : [HB34]  Hilbert & Bernays (1934), Grundlagen der Mathematick
%          : [Hac66] Hackstaff (1966), Systems of Formal Logic
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [Hal]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   18 (  18 unt;   0 def)
%            Number of atoms       :   18 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of predicates  :   18 (  18 usr;  18 prp; 0-0 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments : Requires LCL006+0, LCL006+1
%------------------------------------------------------------------------------
%----Operator definitions to reduce everything to and & not
fof(hilbert_op_or,axiom,
    op_or ).

fof(hilbert_op_implies_and,axiom,
    op_implies_and ).

fof(hilbert_op_equiv,axiom,
    op_equiv ).

%----The one explicit rule
fof(hilbert_modus_ponens,axiom,
    modus_ponens ).

%----The axioms
fof(hilbert_modus_tollens,axiom,
    modus_tollens ).

fof(hilbert_implies_1,axiom,
    implies_1 ).

fof(hilbert_implies_2,axiom,
    implies_2 ).

fof(hilbert_implies_3,axiom,
    implies_3 ).

fof(hilbert_and_1,axiom,
    and_1 ).

fof(hilbert_and_2,axiom,
    and_2 ).

fof(hilbert_and_3,axiom,
    and_3 ).

fof(hilbert_or_1,axiom,
    or_1 ).

fof(hilbert_or_2,axiom,
    or_2 ).

fof(hilbert_or_3,axiom,
    or_3 ).

fof(hilbert_equivalence_1,axiom,
    equivalence_1 ).

fof(hilbert_equivalence_2,axiom,
    equivalence_2 ).

fof(hilbert_equivalence_3,axiom,
    equivalence_3 ).

%----Admissible but not required for completeness. With it much more can
%----be done.
fof(substitution_of_equivalents,axiom,
    substitution_of_equivalents ).

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

%----Include axioms for KM5
%------------------------------------------------------------------------------
% File     : LCL007+2 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional modal)
% Axioms   : KM5 axiomatization of S5 based on Hilbert's PC
% Version  : [HC96] axioms.
% English  :

% Refs     : [HC96]  Hughes & Cresswell (1996), A New Introduction to Modal
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [Hal]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    5 (   5 unt;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of predicates  :    5 (   5 usr;   5 prp; 0-0 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments : Requires LCL006+0, LCL006+1, LCL006+2 LCL007+0 LCL007+1
%------------------------------------------------------------------------------
%----Modal definitions
fof(km5_op_possibly,axiom,
    op_possibly ).

%----Modal rules
fof(km5_necessitation,axiom,
    necessitation ).

%----Modal axioms
fof(km5_axiom_K,axiom,
    axiom_K ).

fof(km5_axiom_M,axiom,
    axiom_M ).

fof(km5_axiom_5,axiom,
    axiom_5 ).

%------------------------------------------------------------------------------

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

%----Conjecture
fof(s1_0_m6s3m9b_axiom_s3,conjecture,
    axiom_s3 ).

%------------------------------------------------------------------------------
