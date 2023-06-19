%--------------------------------------------------------------------------
% File     : NLP063+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : A man comes out of the bathroom, problem 5
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "A man comes out of the bathroom with a magnum in his hand.
%            The man fires six shots from his canon."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris040 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.14 v5.4.0, 0.07 v5.3.0, 0.08 v5.2.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v2.7.0, 0.33 v2.6.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   68 (   0 equ)
%            Maximal formula atoms :   68 (  68 avg)
%            Number of connectives :   69 (   2   ~;   0   |;  57   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (  25 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   16 (  16 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   32 (  12   !;  20   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W] :
                  ( male(U,V)
                  & ! [X] :
                      ( member(U,X,W)
                     => ? [Y,Z,X1] :
                          ( man(U,Y)
                          & of(U,Z,V)
                          & cannon(U,Z)
                          & event(U,X1)
                          & agent(U,X1,Y)
                          & patient(U,X1,X)
                          & present(U,X1)
                          & nonreflexive(U,X1)
                          & fire(U,X1)
                          & from_loc(U,X1,Z) ) )
                  & six(U,W)
                  & group(U,W)
                  & ! [X2] :
                      ( member(U,X2,W)
                     => shot(U,X2) ) ) )
         => ? [X3] :
              ( actual_world(X3)
              & ? [X4,X5] :
                  ( male(X3,X4)
                  & ! [X6,X7,X8] :
                      ( ( man(X3,X6)
                        & of(X3,X7,X4)
                        & cannon(X3,X7)
                        & member(X3,X8,X5) )
                     => ? [X9] :
                          ( event(X3,X9)
                          & agent(X3,X9,X6)
                          & patient(X3,X9,X8)
                          & present(X3,X9)
                          & nonreflexive(X3,X9)
                          & fire(X3,X9)
                          & from_loc(X3,X9,X7) ) )
                  & six(X3,X5)
                  & group(X3,X5)
                  & ! [X10] :
                      ( member(X3,X10,X5)
                     => shot(X3,X10) ) ) ) )
        & ( ? [X3] :
              ( actual_world(X3)
              & ? [X4,X5] :
                  ( male(X3,X4)
                  & ! [X6,X7,X8] :
                      ( ( man(X3,X6)
                        & of(X3,X7,X4)
                        & cannon(X3,X7)
                        & member(X3,X8,X5) )
                     => ? [X9] :
                          ( event(X3,X9)
                          & agent(X3,X9,X6)
                          & patient(X3,X9,X8)
                          & present(X3,X9)
                          & nonreflexive(X3,X9)
                          & fire(X3,X9)
                          & from_loc(X3,X9,X7) ) )
                  & six(X3,X5)
                  & group(X3,X5)
                  & ! [X10] :
                      ( member(X3,X10,X5)
                     => shot(X3,X10) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W] :
                  ( male(U,V)
                  & ! [X] :
                      ( member(U,X,W)
                     => ? [Y,Z,X1] :
                          ( man(U,Y)
                          & of(U,Z,V)
                          & cannon(U,Z)
                          & event(U,X1)
                          & agent(U,X1,Y)
                          & patient(U,X1,X)
                          & present(U,X1)
                          & nonreflexive(U,X1)
                          & fire(U,X1)
                          & from_loc(U,X1,Z) ) )
                  & six(U,W)
                  & group(U,W)
                  & ! [X2] :
                      ( member(U,X2,W)
                     => shot(U,X2) ) ) ) ) ) ).

%--------------------------------------------------------------------------
