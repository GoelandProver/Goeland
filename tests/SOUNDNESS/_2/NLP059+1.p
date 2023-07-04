%--------------------------------------------------------------------------
% File     : NLP059+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : A man comes out of the bathroom, problem 1
% Version  : [Bos00b] axioms.
% English  : Eliminating inconsistent interpretations in the statement
%            "A man comes out of the bathroom with a magnum in his hand.
%            The man fires six shots from his canon."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris036 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.4.0, 0.13 v5.3.0, 0.08 v5.2.0, 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.4.0, 0.17 v3.3.0, 0.00 v2.7.0, 0.33 v2.6.0, 0.00 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   68 (   0 equ)
%            Maximal formula atoms :   68 (  68 avg)
%            Number of connectives :   69 (   2   ~;   0   |;  57   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   22 (  22 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   16 (  16 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   28 (  10   !;  18   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W] :
                  ( male(U,V)
                  & ! [X] :
                      ( ( of(U,X,V)
                        & cannon(U,X)
                        & member(U,X,W) )
                     => ? [Y,Z] :
                          ( man(U,Y)
                          & event(U,Z)
                          & agent(U,Z,Y)
                          & patient(U,Z,X)
                          & present(U,Z)
                          & nonreflexive(U,Z)
                          & fire(U,Z)
                          & from_loc(U,Z,X) ) )
                  & six(U,W)
                  & group(U,W)
                  & ! [X1] :
                      ( member(U,X1,W)
                     => shot(U,X1) ) ) )
         => ? [X2] :
              ( actual_world(X2)
              & ? [X3,X4] :
                  ( male(X2,X3)
                  & ! [X5,X6] :
                      ( ( man(X2,X5)
                        & of(X2,X6,X3)
                        & cannon(X2,X6)
                        & member(X2,X6,X4) )
                     => ? [X7] :
                          ( event(X2,X7)
                          & agent(X2,X7,X5)
                          & patient(X2,X7,X6)
                          & present(X2,X7)
                          & nonreflexive(X2,X7)
                          & fire(X2,X7)
                          & from_loc(X2,X7,X6) ) )
                  & six(X2,X4)
                  & group(X2,X4)
                  & ! [X8] :
                      ( member(X2,X8,X4)
                     => shot(X2,X8) ) ) ) )
        & ( ? [X2] :
              ( actual_world(X2)
              & ? [X3,X4] :
                  ( male(X2,X3)
                  & ! [X5,X6] :
                      ( ( man(X2,X5)
                        & of(X2,X6,X3)
                        & cannon(X2,X6)
                        & member(X2,X6,X4) )
                     => ? [X7] :
                          ( event(X2,X7)
                          & agent(X2,X7,X5)
                          & patient(X2,X7,X6)
                          & present(X2,X7)
                          & nonreflexive(X2,X7)
                          & fire(X2,X7)
                          & from_loc(X2,X7,X6) ) )
                  & six(X2,X4)
                  & group(X2,X4)
                  & ! [X8] :
                      ( member(X2,X8,X4)
                     => shot(X2,X8) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W] :
                  ( male(U,V)
                  & ! [X] :
                      ( ( of(U,X,V)
                        & cannon(U,X)
                        & member(U,X,W) )
                     => ? [Y,Z] :
                          ( man(U,Y)
                          & event(U,Z)
                          & agent(U,Z,Y)
                          & patient(U,Z,X)
                          & present(U,Z)
                          & nonreflexive(U,Z)
                          & fire(U,Z)
                          & from_loc(U,Z,X) ) )
                  & six(U,W)
                  & group(U,W)
                  & ! [X1] :
                      ( member(U,X1,W)
                     => shot(U,X1) ) ) ) ) ) ).

%--------------------------------------------------------------------------
