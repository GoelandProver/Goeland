%--------------------------------------------------------------------------
% File     : NLP062+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : A man comes out of the bathroom, problem 4
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "A man comes out of the bathroom with a magnum in his hand.
%            The man fires six shots from his canon."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris039 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.07 v5.3.0, 0.15 v5.2.0, 0.00 v5.0.0, 0.11 v4.1.0, 0.17 v4.0.1, 0.00 v3.4.0, 0.17 v3.2.0, 0.25 v3.1.0, 0.17 v2.7.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   68 (   0 equ)
%            Maximal formula atoms :   68 (  68 avg)
%            Number of connectives :   69 (   2   ~;   0   |;  57   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   24 (  24 avg)
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
                  & ! [X,Y] :
                      ( ( of(U,X,V)
                        & cannon(U,X)
                        & member(U,Y,W) )
                     => ? [Z,X1] :
                          ( man(U,Z)
                          & event(U,X1)
                          & agent(U,X1,Z)
                          & patient(U,X1,Y)
                          & present(U,X1)
                          & nonreflexive(U,X1)
                          & fire(U,X1)
                          & from_loc(U,X1,X) ) )
                  & six(U,W)
                  & group(U,W)
                  & ! [X2] :
                      ( member(U,X2,W)
                     => shot(U,X2) ) ) )
         => ? [X3] :
              ( actual_world(X3)
              & ? [X4,X5] :
                  ( male(X3,X4)
                  & ! [X6,X7] :
                      ( ( man(X3,X6)
                        & member(X3,X7,X5) )
                     => ? [X8,X9] :
                          ( of(X3,X8,X4)
                          & cannon(X3,X8)
                          & event(X3,X9)
                          & agent(X3,X9,X6)
                          & patient(X3,X9,X7)
                          & present(X3,X9)
                          & nonreflexive(X3,X9)
                          & fire(X3,X9)
                          & from_loc(X3,X9,X8) ) )
                  & six(X3,X5)
                  & group(X3,X5)
                  & ! [X10] :
                      ( member(X3,X10,X5)
                     => shot(X3,X10) ) ) ) )
        & ( ? [X3] :
              ( actual_world(X3)
              & ? [X4,X5] :
                  ( male(X3,X4)
                  & ! [X6,X7] :
                      ( ( man(X3,X6)
                        & member(X3,X7,X5) )
                     => ? [X8,X9] :
                          ( of(X3,X8,X4)
                          & cannon(X3,X8)
                          & event(X3,X9)
                          & agent(X3,X9,X6)
                          & patient(X3,X9,X7)
                          & present(X3,X9)
                          & nonreflexive(X3,X9)
                          & fire(X3,X9)
                          & from_loc(X3,X9,X8) ) )
                  & six(X3,X5)
                  & group(X3,X5)
                  & ! [X10] :
                      ( member(X3,X10,X5)
                     => shot(X3,X10) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W] :
                  ( male(U,V)
                  & ! [X,Y] :
                      ( ( of(U,X,V)
                        & cannon(U,X)
                        & member(U,Y,W) )
                     => ? [Z,X1] :
                          ( man(U,Z)
                          & event(U,X1)
                          & agent(U,X1,Z)
                          & patient(U,X1,Y)
                          & present(U,X1)
                          & nonreflexive(U,X1)
                          & fire(U,X1)
                          & from_loc(U,X1,X) ) )
                  & six(U,W)
                  & group(U,W)
                  & ! [X2] :
                      ( member(U,X2,W)
                     => shot(U,X2) ) ) ) ) ) ).

%--------------------------------------------------------------------------
