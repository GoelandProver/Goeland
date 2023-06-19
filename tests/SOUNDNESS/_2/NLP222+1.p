%--------------------------------------------------------------------------
% File     : NLP222+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : Vincent believes that every man smokes, problem 3
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "Vincent believes that every man smokes. Jules is a man."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris199 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.22 v6.1.0, 0.20 v6.0.0, 0.29 v5.5.0, 0.00 v5.4.0, 0.07 v5.3.0, 0.08 v5.2.0, 0.12 v5.0.0, 0.11 v4.1.0, 0.33 v4.0.1, 0.00 v3.1.0, 0.50 v2.7.0, 0.67 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   96 (   0 equ)
%            Maximal formula atoms :   96 (  96 avg)
%            Number of connectives :   97 (   2   ~;   0   |;  89   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   37 (  37 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   16 (  16 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   42 (   4   !;  38   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2] :
                  ( of(U,W,V)
                  & man(U,V)
                  & vincent_forename(U,W)
                  & forename(U,W)
                  & proposition(U,Y)
                  & agent(U,X,V)
                  & theme(U,X,Y)
                  & event(U,X)
                  & present(U,X)
                  & think_believe_consider(U,X)
                  & accessible_world(U,Y)
                  & ! [X3] :
                      ( man(Y,X3)
                     => ? [X4] :
                          ( event(Y,X4)
                          & agent(Y,X4,X3)
                          & present(Y,X4)
                          & smoke(Y,X4) ) )
                  & of(U,Z,X1)
                  & man(U,X1)
                  & jules_forename(U,Z)
                  & forename(U,Z)
                  & man(U,X1)
                  & state(U,X2)
                  & be(U,X2,X1,X1) ) )
         => ? [X5] :
              ( actual_world(X5)
              & ? [X6,X7,X8,X9,X10,X11,X12,X13] :
                  ( of(X5,X7,X6)
                  & man(X5,X6)
                  & jules_forename(X5,X7)
                  & forename(X5,X7)
                  & of(X5,X9,X8)
                  & man(X5,X8)
                  & vincent_forename(X5,X9)
                  & forename(X5,X9)
                  & proposition(X5,X11)
                  & agent(X5,X10,X8)
                  & theme(X5,X10,X11)
                  & event(X5,X10)
                  & present(X5,X10)
                  & think_believe_consider(X5,X10)
                  & accessible_world(X5,X11)
                  & ! [X14] :
                      ( man(X11,X14)
                     => ? [X15] :
                          ( event(X11,X15)
                          & agent(X11,X15,X14)
                          & present(X11,X15)
                          & smoke(X11,X15) ) )
                  & man(X5,X12)
                  & state(X5,X13)
                  & be(X5,X13,X6,X12) ) ) )
        & ( ? [X5] :
              ( actual_world(X5)
              & ? [X6,X7,X8,X9,X10,X11,X12,X13] :
                  ( of(X5,X7,X6)
                  & man(X5,X6)
                  & jules_forename(X5,X7)
                  & forename(X5,X7)
                  & of(X5,X9,X8)
                  & man(X5,X8)
                  & vincent_forename(X5,X9)
                  & forename(X5,X9)
                  & proposition(X5,X11)
                  & agent(X5,X10,X8)
                  & theme(X5,X10,X11)
                  & event(X5,X10)
                  & present(X5,X10)
                  & think_believe_consider(X5,X10)
                  & accessible_world(X5,X11)
                  & ! [X14] :
                      ( man(X11,X14)
                     => ? [X15] :
                          ( event(X11,X15)
                          & agent(X11,X15,X14)
                          & present(X11,X15)
                          & smoke(X11,X15) ) )
                  & man(X5,X12)
                  & state(X5,X13)
                  & be(X5,X13,X6,X12) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2] :
                  ( of(U,W,V)
                  & man(U,V)
                  & vincent_forename(U,W)
                  & forename(U,W)
                  & proposition(U,Y)
                  & agent(U,X,V)
                  & theme(U,X,Y)
                  & event(U,X)
                  & present(U,X)
                  & think_believe_consider(U,X)
                  & accessible_world(U,Y)
                  & ! [X3] :
                      ( man(Y,X3)
                     => ? [X4] :
                          ( event(Y,X4)
                          & agent(Y,X4,X3)
                          & present(Y,X4)
                          & smoke(Y,X4) ) )
                  & of(U,Z,X1)
                  & man(U,X1)
                  & jules_forename(U,Z)
                  & forename(U,Z)
                  & man(U,X1)
                  & state(U,X2)
                  & be(U,X2,X1,X1) ) ) ) ) ).

%--------------------------------------------------------------------------
