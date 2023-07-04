%--------------------------------------------------------------------------
% File     : NLP230+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Vincent believes that every man smokes, problem 11
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Vincent believes that every man smokes. Jules is a man.
%            Vincent believes that jules smokes."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris207 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.22 v6.1.0, 0.40 v6.0.0, 0.29 v5.5.0, 0.14 v5.4.0, 0.13 v5.3.0, 0.15 v5.2.0, 0.12 v5.0.0, 0.11 v4.1.0, 0.33 v4.0.1, 0.00 v3.2.0, 0.25 v3.1.0, 0.83 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  170 (   0 equ)
%            Maximal formula atoms :  170 ( 170 avg)
%            Number of connectives :  171 (   2   ~;   0   |; 163   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   58 (  58 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   16 (  16 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   66 (   4   !;  62   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6,X7,X8] :
                  ( of(U,W,V)
                  & man(U,V)
                  & vincent_forename(U,W)
                  & forename(U,W)
                  & of(U,Y,X)
                  & man(U,X)
                  & jules_forename(U,Y)
                  & forename(U,Y)
                  & of(U,X1,Z)
                  & man(U,Z)
                  & vincent_forename(U,X1)
                  & forename(U,X1)
                  & proposition(U,X3)
                  & agent(U,X2,Z)
                  & theme(U,X2,X3)
                  & event(U,X2)
                  & present(U,X2)
                  & think_believe_consider(U,X2)
                  & accessible_world(U,X3)
                  & ! [X9] :
                      ( man(X3,X9)
                     => ? [X10] :
                          ( event(X3,X10)
                          & agent(X3,X10,X9)
                          & present(X3,X10)
                          & smoke(X3,X10) ) )
                  & of(U,X4,X5)
                  & man(U,X5)
                  & jules_forename(U,X4)
                  & forename(U,X4)
                  & man(U,X5)
                  & state(U,X6)
                  & be(U,X6,X5,X5)
                  & proposition(U,X8)
                  & agent(U,X7,V)
                  & theme(U,X7,X8)
                  & event(U,X7)
                  & present(U,X7)
                  & think_believe_consider(U,X7)
                  & accessible_world(U,X8)
                  & ? [X11] :
                      ( event(X8,X11)
                      & agent(X8,X11,X)
                      & present(X8,X11)
                      & smoke(X8,X11) ) ) )
         => ? [X12] :
              ( actual_world(X12)
              & ? [X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24] :
                  ( of(X12,X13,X14)
                  & jules_forename(X12,X13)
                  & forename(X12,X13)
                  & of(X12,X15,X14)
                  & man(X12,X14)
                  & vincent_forename(X12,X15)
                  & forename(X12,X15)
                  & of(X12,X17,X16)
                  & man(X12,X16)
                  & vincent_forename(X12,X17)
                  & forename(X12,X17)
                  & proposition(X12,X19)
                  & agent(X12,X18,X16)
                  & theme(X12,X18,X19)
                  & event(X12,X18)
                  & present(X12,X18)
                  & think_believe_consider(X12,X18)
                  & accessible_world(X12,X19)
                  & ! [X25] :
                      ( man(X19,X25)
                     => ? [X26] :
                          ( event(X19,X26)
                          & agent(X19,X26,X25)
                          & present(X19,X26)
                          & smoke(X19,X26) ) )
                  & of(X12,X20,X21)
                  & man(X12,X21)
                  & jules_forename(X12,X20)
                  & forename(X12,X20)
                  & man(X12,X21)
                  & state(X12,X22)
                  & be(X12,X22,X21,X21)
                  & proposition(X12,X24)
                  & agent(X12,X23,X14)
                  & theme(X12,X23,X24)
                  & event(X12,X23)
                  & present(X12,X23)
                  & think_believe_consider(X12,X23)
                  & accessible_world(X12,X24)
                  & ? [X27] :
                      ( event(X24,X27)
                      & agent(X24,X27,X14)
                      & present(X24,X27)
                      & smoke(X24,X27) ) ) ) )
        & ( ? [X12] :
              ( actual_world(X12)
              & ? [X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24] :
                  ( of(X12,X13,X14)
                  & jules_forename(X12,X13)
                  & forename(X12,X13)
                  & of(X12,X15,X14)
                  & man(X12,X14)
                  & vincent_forename(X12,X15)
                  & forename(X12,X15)
                  & of(X12,X17,X16)
                  & man(X12,X16)
                  & vincent_forename(X12,X17)
                  & forename(X12,X17)
                  & proposition(X12,X19)
                  & agent(X12,X18,X16)
                  & theme(X12,X18,X19)
                  & event(X12,X18)
                  & present(X12,X18)
                  & think_believe_consider(X12,X18)
                  & accessible_world(X12,X19)
                  & ! [X25] :
                      ( man(X19,X25)
                     => ? [X26] :
                          ( event(X19,X26)
                          & agent(X19,X26,X25)
                          & present(X19,X26)
                          & smoke(X19,X26) ) )
                  & of(X12,X20,X21)
                  & man(X12,X21)
                  & jules_forename(X12,X20)
                  & forename(X12,X20)
                  & man(X12,X21)
                  & state(X12,X22)
                  & be(X12,X22,X21,X21)
                  & proposition(X12,X24)
                  & agent(X12,X23,X14)
                  & theme(X12,X23,X24)
                  & event(X12,X23)
                  & present(X12,X23)
                  & think_believe_consider(X12,X23)
                  & accessible_world(X12,X24)
                  & ? [X27] :
                      ( event(X24,X27)
                      & agent(X24,X27,X14)
                      & present(X24,X27)
                      & smoke(X24,X27) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6,X7,X8] :
                  ( of(U,W,V)
                  & man(U,V)
                  & vincent_forename(U,W)
                  & forename(U,W)
                  & of(U,Y,X)
                  & man(U,X)
                  & jules_forename(U,Y)
                  & forename(U,Y)
                  & of(U,X1,Z)
                  & man(U,Z)
                  & vincent_forename(U,X1)
                  & forename(U,X1)
                  & proposition(U,X3)
                  & agent(U,X2,Z)
                  & theme(U,X2,X3)
                  & event(U,X2)
                  & present(U,X2)
                  & think_believe_consider(U,X2)
                  & accessible_world(U,X3)
                  & ! [X9] :
                      ( man(X3,X9)
                     => ? [X10] :
                          ( event(X3,X10)
                          & agent(X3,X10,X9)
                          & present(X3,X10)
                          & smoke(X3,X10) ) )
                  & of(U,X4,X5)
                  & man(U,X5)
                  & jules_forename(U,X4)
                  & forename(U,X4)
                  & man(U,X5)
                  & state(U,X6)
                  & be(U,X6,X5,X5)
                  & proposition(U,X8)
                  & agent(U,X7,V)
                  & theme(U,X7,X8)
                  & event(U,X7)
                  & present(U,X7)
                  & think_believe_consider(U,X7)
                  & accessible_world(U,X8)
                  & ? [X11] :
                      ( event(X8,X11)
                      & agent(X8,X11,X)
                      & present(X8,X11)
                      & smoke(X8,X11) ) ) ) ) ) ).

%--------------------------------------------------------------------------
