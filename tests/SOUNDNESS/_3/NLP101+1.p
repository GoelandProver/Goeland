%--------------------------------------------------------------------------
% File     : NLP101+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Every customer in a restaurant, problem 8
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Every customer in a restaurant saw a person who drank a
%            coffee."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris078 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.07 v5.3.0, 0.08 v5.2.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.2.0, 0.25 v3.1.0, 0.00 v2.7.0, 0.33 v2.6.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   72 (   0 equ)
%            Maximal formula atoms :   72 (  72 avg)
%            Number of connectives :   73 (   2   ~;   0   |;  65   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   28 (  28 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   13 (  13 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   28 (   6   !;  22   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y] :
                  ( coffee(U,V)
                  & restaurant(U,W)
                  & human_person(U,X)
                  & event(U,Y)
                  & agent(U,Y,X)
                  & patient(U,Y,V)
                  & past(U,Y)
                  & nonreflexive(U,Y)
                  & drink(U,Y)
                  & ! [Z] :
                      ( ( customer(U,Z)
                        & in(U,Z,W) )
                     => ? [X1] :
                          ( event(U,X1)
                          & agent(U,X1,Z)
                          & patient(U,X1,X)
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
                      ( human_person(X2,X5)
                      & coffee(X2,X6)
                      & event(X2,X7)
                      & agent(X2,X7,X5)
                      & patient(X2,X7,X6)
                      & past(X2,X7)
                      & nonreflexive(X2,X7)
                      & drink(X2,X7)
                      & event(X2,X8)
                      & agent(X2,X8,X3)
                      & patient(X2,X8,X5)
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
                      ( human_person(X2,X5)
                      & coffee(X2,X6)
                      & event(X2,X7)
                      & agent(X2,X7,X5)
                      & patient(X2,X7,X6)
                      & past(X2,X7)
                      & nonreflexive(X2,X7)
                      & drink(X2,X7)
                      & event(X2,X8)
                      & agent(X2,X8,X3)
                      & patient(X2,X8,X5)
                      & past(X2,X8)
                      & nonreflexive(X2,X8)
                      & see(X2,X8) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y] :
                  ( coffee(U,V)
                  & restaurant(U,W)
                  & human_person(U,X)
                  & event(U,Y)
                  & agent(U,Y,X)
                  & patient(U,Y,V)
                  & past(U,Y)
                  & nonreflexive(U,Y)
                  & drink(U,Y)
                  & ! [Z] :
                      ( ( customer(U,Z)
                        & in(U,Z,W) )
                     => ? [X1] :
                          ( event(U,X1)
                          & agent(U,X1,Z)
                          & patient(U,X1,X)
                          & past(U,X1)
                          & nonreflexive(U,X1)
                          & see(U,X1) ) ) ) ) ) ) ).

%--------------------------------------------------------------------------
