%------------------------------------------------------------------------------
% File     : LCL502+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Prove Hilbert's modus_tollens axiom from Rosser's system
% Version  : [Zem73] axioms.
% English  :

% Refs     : [Zem73] Zeman (1973), Modal Logic, the Lewis-Modal systems
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.75 v7.5.0, 0.78 v7.4.0, 0.77 v7.3.0, 0.79 v7.2.0, 0.83 v7.1.0, 0.87 v7.0.0, 0.83 v6.4.0, 0.85 v6.3.0, 0.83 v6.2.0, 0.88 v6.1.0, 0.90 v6.0.0, 0.87 v5.5.0, 0.89 v5.3.0, 0.93 v5.2.0, 0.85 v5.1.0, 0.90 v5.0.0, 0.88 v4.1.0, 0.87 v4.0.0, 0.88 v3.7.0, 0.90 v3.5.0, 0.84 v3.3.0
% Syntax   : Number of formulae    :   43 (  12 unt;   0 def)
%            Number of atoms       :   77 (   6 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   34 (   0   ~;   0   |;   1   &)
%                                         (  26 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   33 (  32 usr;  31 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   0 con; 1-2 aty)
%            Number of variables   :   65 (  65   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms of propositional logic
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

%----Include Rosser's axiomatization of propositional logic
%------------------------------------------------------------------------------
% File     : LCL006+5 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Logic Calculi (Propositional)
% Axioms   : Rosser's axiomatization of propositional logic
% Version  : [Zem73] axioms.
% English  :

% Refs     : [Zem73] Zeman (1973), Modal Logic, the Lewis-Modal systems
%          : [Hal]   Halleck (URL), John Halleck's Logic Systems
%          : [She06] Shen (2006), Automated Proofs of Equivalence of Modal
% Source   : [Hal]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :    8 (   8 unt;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of predicates  :    8 (   8 usr;   8 prp; 0-0 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments : Requires LCL006+0, LCL006+1
%------------------------------------------------------------------------------
%----Operator definitions to reduce everything to and & not
fof(rosser_op_or,axiom,
    op_or ).

fof(rosser_op_implies_and,axiom,
    op_implies_and ).

fof(rosser_op_equiv,axiom,
    op_equiv ).

%----The one explicit rule
fof(rosser_modus_ponens,axiom,
    modus_ponens ).

%----The axioms
fof(rosser_kn1,axiom,
    kn1 ).

fof(rosser_kn2,axiom,
    kn2 ).

fof(rosser_kn3,axiom,
    kn3 ).

%----Admissible but not required for completeness. With it much more can
%----be done.
fof(substitution_of_equivalents,axiom,
    substitution_of_equivalents ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
%----Operator definitions to reduce everything to and & not
fof(hilbert_op_or,axiom,
    op_or ).

fof(hilbert_op_implies_and,axiom,
    op_implies_and ).

fof(hilbert_op_equiv,axiom,
    op_equiv ).

fof(hilbert_modus_tollens,conjecture,
    modus_tollens ).

%------------------------------------------------------------------------------
