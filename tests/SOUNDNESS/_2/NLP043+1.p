%--------------------------------------------------------------------------
% File     : NLP043+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Mia ordered a shake, problem 2
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Mia ordered a shake. It cost five dollars."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris020 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.11 v6.1.0, 0.10 v6.0.0, 0.14 v5.5.0, 0.00 v5.4.0, 0.07 v5.3.0, 0.08 v5.2.0, 0.12 v5.0.0, 0.11 v4.1.0, 0.33 v4.0.1, 0.00 v3.1.0, 0.50 v2.7.0, 0.67 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   96 (   0 equ)
%            Maximal formula atoms :   96 (  96 avg)
%            Number of connectives :   97 (   2   ~;   0   |;  85   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   33 (  33 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   19 (  19 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   36 (   8   !;  28   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z] :
                  ( nonhuman(U,X)
                  & of(U,W,V)
                  & woman(U,V)
                  & mia_forename(U,W)
                  & forename(U,W)
                  & shake_beverage(U,X)
                  & event(U,Y)
                  & agent(U,Y,V)
                  & patient(U,Y,X)
                  & past(U,Y)
                  & nonreflexive(U,Y)
                  & order(U,Y)
                  & ! [X1] :
                      ( member(U,X1,Z)
                     => ? [X2] :
                          ( event(U,X2)
                          & agent(U,X2,X)
                          & patient(U,X2,X1)
                          & present(U,X2)
                          & nonreflexive(U,X2)
                          & cost(U,X2) ) )
                  & five(U,Z)
                  & group(U,Z)
                  & ! [X3] :
                      ( member(U,X3,Z)
                     => dollar(U,X3) ) ) )
         => ? [X4] :
              ( actual_world(X4)
              & ? [X5,X6,X7,X8,X9] :
                  ( nonhuman(X4,X8)
                  & of(X4,X6,X5)
                  & woman(X4,X5)
                  & mia_forename(X4,X6)
                  & forename(X4,X6)
                  & shake_beverage(X4,X7)
                  & event(X4,X8)
                  & agent(X4,X8,X5)
                  & patient(X4,X8,X7)
                  & past(X4,X8)
                  & nonreflexive(X4,X8)
                  & order(X4,X8)
                  & ! [X10] :
                      ( member(X4,X10,X9)
                     => ? [X11] :
                          ( event(X4,X11)
                          & agent(X4,X11,X8)
                          & patient(X4,X11,X10)
                          & present(X4,X11)
                          & nonreflexive(X4,X11)
                          & cost(X4,X11) ) )
                  & five(X4,X9)
                  & group(X4,X9)
                  & ! [X12] :
                      ( member(X4,X12,X9)
                     => dollar(X4,X12) ) ) ) )
        & ( ? [X4] :
              ( actual_world(X4)
              & ? [X5,X6,X7,X8,X9] :
                  ( nonhuman(X4,X8)
                  & of(X4,X6,X5)
                  & woman(X4,X5)
                  & mia_forename(X4,X6)
                  & forename(X4,X6)
                  & shake_beverage(X4,X7)
                  & event(X4,X8)
                  & agent(X4,X8,X5)
                  & patient(X4,X8,X7)
                  & past(X4,X8)
                  & nonreflexive(X4,X8)
                  & order(X4,X8)
                  & ! [X10] :
                      ( member(X4,X10,X9)
                     => ? [X11] :
                          ( event(X4,X11)
                          & agent(X4,X11,X8)
                          & patient(X4,X11,X10)
                          & present(X4,X11)
                          & nonreflexive(X4,X11)
                          & cost(X4,X11) ) )
                  & five(X4,X9)
                  & group(X4,X9)
                  & ! [X12] :
                      ( member(X4,X12,X9)
                     => dollar(X4,X12) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z] :
                  ( nonhuman(U,X)
                  & of(U,W,V)
                  & woman(U,V)
                  & mia_forename(U,W)
                  & forename(U,W)
                  & shake_beverage(U,X)
                  & event(U,Y)
                  & agent(U,Y,V)
                  & patient(U,Y,X)
                  & past(U,Y)
                  & nonreflexive(U,Y)
                  & order(U,Y)
                  & ! [X1] :
                      ( member(U,X1,Z)
                     => ? [X2] :
                          ( event(U,X2)
                          & agent(U,X2,X)
                          & patient(U,X2,X1)
                          & present(U,X2)
                          & nonreflexive(U,X2)
                          & cost(U,X2) ) )
                  & five(U,Z)
                  & group(U,Z)
                  & ! [X3] :
                      ( member(U,X3,Z)
                     => dollar(U,X3) ) ) ) ) ) ).

%--------------------------------------------------------------------------
