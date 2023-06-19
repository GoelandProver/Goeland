%--------------------------------------------------------------------------
% File     : NLP232+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Vincent believes that every man smokes, problem 13
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Vincent believes that every man smokes. Jules is a man.
%            Vincent believes that jules smokes."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris209 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.22 v6.1.0, 0.30 v6.0.0, 0.43 v5.5.0, 0.29 v5.4.0, 0.33 v5.3.0, 0.23 v5.2.0, 0.38 v5.0.0, 0.22 v4.1.0, 0.33 v4.0.1, 0.00 v3.2.0, 0.25 v3.1.0, 0.83 v2.6.0, 0.50 v2.5.0, 0.33 v2.4.0
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
              & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6,X7] :
                  ( of(U,W,V)
                  & man(U,V)
                  & vincent_forename(U,W)
                  & forename(U,W)
                  & of(U,X,X4)
                  & jules_forename(U,X)
                  & forename(U,X)
                  & of(U,Z,Y)
                  & man(U,Y)
                  & vincent_forename(U,Z)
                  & forename(U,Z)
                  & proposition(U,X2)
                  & agent(U,X1,Y)
                  & theme(U,X1,X2)
                  & event(U,X1)
                  & present(U,X1)
                  & think_believe_consider(U,X1)
                  & accessible_world(U,X2)
                  & ! [X8] :
                      ( man(X2,X8)
                     => ? [X9] :
                          ( event(X2,X9)
                          & agent(X2,X9,X8)
                          & present(X2,X9)
                          & smoke(X2,X9) ) )
                  & of(U,X3,X4)
                  & man(U,X4)
                  & jules_forename(U,X3)
                  & forename(U,X3)
                  & man(U,X4)
                  & state(U,X5)
                  & be(U,X5,X4,X4)
                  & proposition(U,X7)
                  & agent(U,X6,V)
                  & theme(U,X6,X7)
                  & event(U,X6)
                  & present(U,X6)
                  & think_believe_consider(U,X6)
                  & accessible_world(U,X7)
                  & ? [X10] :
                      ( event(X7,X10)
                      & agent(X7,X10,X4)
                      & present(X7,X10)
                      & smoke(X7,X10) ) ) )
         => ? [X11] :
              ( actual_world(X11)
              & ? [X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24] :
                  ( of(X11,X13,X12)
                  & man(X11,X12)
                  & vincent_forename(X11,X13)
                  & forename(X11,X13)
                  & of(X11,X15,X14)
                  & man(X11,X14)
                  & jules_forename(X11,X15)
                  & forename(X11,X15)
                  & of(X11,X17,X16)
                  & man(X11,X16)
                  & vincent_forename(X11,X17)
                  & forename(X11,X17)
                  & proposition(X11,X19)
                  & agent(X11,X18,X16)
                  & theme(X11,X18,X19)
                  & event(X11,X18)
                  & present(X11,X18)
                  & think_believe_consider(X11,X18)
                  & accessible_world(X11,X19)
                  & ! [X25] :
                      ( man(X19,X25)
                     => ? [X26] :
                          ( event(X19,X26)
                          & agent(X19,X26,X25)
                          & present(X19,X26)
                          & smoke(X19,X26) ) )
                  & of(X11,X20,X21)
                  & man(X11,X21)
                  & jules_forename(X11,X20)
                  & forename(X11,X20)
                  & man(X11,X21)
                  & state(X11,X22)
                  & be(X11,X22,X21,X21)
                  & proposition(X11,X24)
                  & agent(X11,X23,X12)
                  & theme(X11,X23,X24)
                  & event(X11,X23)
                  & present(X11,X23)
                  & think_believe_consider(X11,X23)
                  & accessible_world(X11,X24)
                  & ? [X27] :
                      ( event(X24,X27)
                      & agent(X24,X27,X14)
                      & present(X24,X27)
                      & smoke(X24,X27) ) ) ) )
        & ( ? [X11] :
              ( actual_world(X11)
              & ? [X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24] :
                  ( of(X11,X13,X12)
                  & man(X11,X12)
                  & vincent_forename(X11,X13)
                  & forename(X11,X13)
                  & of(X11,X15,X14)
                  & man(X11,X14)
                  & jules_forename(X11,X15)
                  & forename(X11,X15)
                  & of(X11,X17,X16)
                  & man(X11,X16)
                  & vincent_forename(X11,X17)
                  & forename(X11,X17)
                  & proposition(X11,X19)
                  & agent(X11,X18,X16)
                  & theme(X11,X18,X19)
                  & event(X11,X18)
                  & present(X11,X18)
                  & think_believe_consider(X11,X18)
                  & accessible_world(X11,X19)
                  & ! [X25] :
                      ( man(X19,X25)
                     => ? [X26] :
                          ( event(X19,X26)
                          & agent(X19,X26,X25)
                          & present(X19,X26)
                          & smoke(X19,X26) ) )
                  & of(X11,X20,X21)
                  & man(X11,X21)
                  & jules_forename(X11,X20)
                  & forename(X11,X20)
                  & man(X11,X21)
                  & state(X11,X22)
                  & be(X11,X22,X21,X21)
                  & proposition(X11,X24)
                  & agent(X11,X23,X12)
                  & theme(X11,X23,X24)
                  & event(X11,X23)
                  & present(X11,X23)
                  & think_believe_consider(X11,X23)
                  & accessible_world(X11,X24)
                  & ? [X27] :
                      ( event(X24,X27)
                      & agent(X24,X27,X14)
                      & present(X24,X27)
                      & smoke(X24,X27) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6,X7] :
                  ( of(U,W,V)
                  & man(U,V)
                  & vincent_forename(U,W)
                  & forename(U,W)
                  & of(U,X,X4)
                  & jules_forename(U,X)
                  & forename(U,X)
                  & of(U,Z,Y)
                  & man(U,Y)
                  & vincent_forename(U,Z)
                  & forename(U,Z)
                  & proposition(U,X2)
                  & agent(U,X1,Y)
                  & theme(U,X1,X2)
                  & event(U,X1)
                  & present(U,X1)
                  & think_believe_consider(U,X1)
                  & accessible_world(U,X2)
                  & ! [X8] :
                      ( man(X2,X8)
                     => ? [X9] :
                          ( event(X2,X9)
                          & agent(X2,X9,X8)
                          & present(X2,X9)
                          & smoke(X2,X9) ) )
                  & of(U,X3,X4)
                  & man(U,X4)
                  & jules_forename(U,X3)
                  & forename(U,X3)
                  & man(U,X4)
                  & state(U,X5)
                  & be(U,X5,X4,X4)
                  & proposition(U,X7)
                  & agent(U,X6,V)
                  & theme(U,X6,X7)
                  & event(U,X6)
                  & present(U,X6)
                  & think_believe_consider(U,X6)
                  & accessible_world(U,X7)
                  & ? [X10] :
                      ( event(X7,X10)
                      & agent(X7,X10,X4)
                      & present(X7,X10)
                      & smoke(X7,X10) ) ) ) ) ) ).

%--------------------------------------------------------------------------
