%--------------------------------------------------------------------------
% File     : NLP095+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Every customer in a restaurant, problem 2
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Every customer in a restaurant saw a person who drank a
%            coffee."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris072 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.07 v5.3.0, 0.08 v5.2.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.7.0, 0.17 v2.6.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   72 (   0 equ)
%            Maximal formula atoms :   72 (  72 avg)
%            Number of connectives :   73 (   2   ~;   0   |;  65   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (  27 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   13 (  13 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   28 (   8   !;  20   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V] :
                  ( coffee(U,V)
                  & ! [W,X] :
                      ( ( customer(U,W)
                        & restaurant(U,X)
                        & in(U,W,X) )
                     => ? [Y,Z,X1] :
                          ( human_person(U,Y)
                          & event(U,Z)
                          & agent(U,Z,Y)
                          & patient(U,Z,V)
                          & past(U,Z)
                          & nonreflexive(U,Z)
                          & drink(U,Z)
                          & event(U,X1)
                          & agent(U,X1,W)
                          & patient(U,X1,Y)
                          & past(U,X1)
                          & nonreflexive(U,X1)
                          & see(U,X1) ) ) ) )
         => ? [X2] :
              ( actual_world(X2)
              & ! [X3,X4] :
                  ( ( customer(X2,X3)
                    & restaurant(X2,X4)
                    & in(X2,X3,X4) )
                 => ? [X5,X6,X7,X8] :
                      ( coffee(X2,X5)
                      & human_person(X2,X6)
                      & event(X2,X7)
                      & agent(X2,X7,X6)
                      & patient(X2,X7,X5)
                      & past(X2,X7)
                      & nonreflexive(X2,X7)
                      & drink(X2,X7)
                      & event(X2,X8)
                      & agent(X2,X8,X3)
                      & patient(X2,X8,X6)
                      & past(X2,X8)
                      & nonreflexive(X2,X8)
                      & see(X2,X8) ) ) ) )
        & ( ? [X2] :
              ( actual_world(X2)
              & ! [X3,X4] :
                  ( ( customer(X2,X3)
                    & restaurant(X2,X4)
                    & in(X2,X3,X4) )
                 => ? [X5,X6,X7,X8] :
                      ( coffee(X2,X5)
                      & human_person(X2,X6)
                      & event(X2,X7)
                      & agent(X2,X7,X6)
                      & patient(X2,X7,X5)
                      & past(X2,X7)
                      & nonreflexive(X2,X7)
                      & drink(X2,X7)
                      & event(X2,X8)
                      & agent(X2,X8,X3)
                      & patient(X2,X8,X6)
                      & past(X2,X8)
                      & nonreflexive(X2,X8)
                      & see(X2,X8) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V] :
                  ( coffee(U,V)
                  & ! [W,X] :
                      ( ( customer(U,W)
                        & restaurant(U,X)
                        & in(U,W,X) )
                     => ? [Y,Z,X1] :
                          ( human_person(U,Y)
                          & event(U,Z)
                          & agent(U,Z,Y)
                          & patient(U,Z,V)
                          & past(U,Z)
                          & nonreflexive(U,Z)
                          & drink(U,Z)
                          & event(U,X1)
                          & agent(U,X1,W)
                          & patient(U,X1,Y)
                          & past(U,X1)
                          & nonreflexive(U,X1)
                          & see(U,X1) ) ) ) ) ) ) ).

%--------------------------------------------------------------------------
