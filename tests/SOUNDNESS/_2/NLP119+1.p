%--------------------------------------------------------------------------
% File     : NLP119+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 6
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris096 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.33 v4.0.1, 0.00 v3.1.0, 0.50 v2.7.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   68 (   0 equ)
%            Maximal formula atoms :   68 (  68 avg)
%            Number of connectives :   69 (   2   ~;   0   |;  65   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   27 (  27 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   22 (   0   !;  22   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z] :
                  ( of(U,W,V)
                  & city(U,V)
                  & hollywood_placename(U,W)
                  & placename(U,W)
                  & chevy(U,X)
                  & white(U,X)
                  & dirty(U,X)
                  & old(U,X)
                  & street(U,Y)
                  & lonely(U,Y)
                  & event(U,Z)
                  & agent(U,Z,X)
                  & present(U,Z)
                  & barrel(U,Z)
                  & down(U,Z,Y)
                  & in(U,Z,V) ) )
         => ? [X1] :
              ( actual_world(X1)
              & ? [X2,X3,X4,X5] :
                  ( street(X1,X2)
                  & lonely(X1,X2)
                  & of(X1,X3,X4)
                  & city(X1,X4)
                  & hollywood_placename(X1,X3)
                  & placename(X1,X3)
                  & chevy(X1,X4)
                  & white(X1,X4)
                  & dirty(X1,X4)
                  & old(X1,X4)
                  & event(X1,X5)
                  & agent(X1,X5,X4)
                  & present(X1,X5)
                  & barrel(X1,X5)
                  & down(X1,X5,X2)
                  & in(X1,X5,X4) ) ) )
        & ( ? [X1] :
              ( actual_world(X1)
              & ? [X2,X3,X4,X5] :
                  ( street(X1,X2)
                  & lonely(X1,X2)
                  & of(X1,X3,X4)
                  & city(X1,X4)
                  & hollywood_placename(X1,X3)
                  & placename(X1,X3)
                  & chevy(X1,X4)
                  & white(X1,X4)
                  & dirty(X1,X4)
                  & old(X1,X4)
                  & event(X1,X5)
                  & agent(X1,X5,X4)
                  & present(X1,X5)
                  & barrel(X1,X5)
                  & down(X1,X5,X2)
                  & in(X1,X5,X4) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z] :
                  ( of(U,W,V)
                  & city(U,V)
                  & hollywood_placename(U,W)
                  & placename(U,W)
                  & chevy(U,X)
                  & white(U,X)
                  & dirty(U,X)
                  & old(U,X)
                  & street(U,Y)
                  & lonely(U,Y)
                  & event(U,Z)
                  & agent(U,Z,X)
                  & present(U,Z)
                  & barrel(U,Z)
                  & down(U,Z,Y)
                  & in(U,Z,V) ) ) ) ) ).

%--------------------------------------------------------------------------