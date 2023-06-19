%--------------------------------------------------------------------------
% File     : NLP114+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 1
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris091 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
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
              & ? [V,W,X,Y] :
                  ( of(U,V,W)
                  & city(U,W)
                  & hollywood_placename(U,V)
                  & placename(U,V)
                  & street(U,W)
                  & lonely(U,W)
                  & chevy(U,X)
                  & white(U,X)
                  & dirty(U,X)
                  & old(U,X)
                  & event(U,Y)
                  & agent(U,Y,X)
                  & present(U,Y)
                  & barrel(U,Y)
                  & down(U,Y,W)
                  & in(U,Y,W) ) )
         => ? [Z] :
              ( actual_world(Z)
              & ? [X1,X2,X3,X4,X5] :
                  ( of(Z,X2,X1)
                  & city(Z,X1)
                  & hollywood_placename(Z,X2)
                  & placename(Z,X2)
                  & street(Z,X3)
                  & lonely(Z,X3)
                  & chevy(Z,X4)
                  & white(Z,X4)
                  & dirty(Z,X4)
                  & old(Z,X4)
                  & event(Z,X5)
                  & agent(Z,X5,X4)
                  & present(Z,X5)
                  & barrel(Z,X5)
                  & down(Z,X5,X3)
                  & in(Z,X5,X1) ) ) )
        & ( ? [Z] :
              ( actual_world(Z)
              & ? [X1,X2,X3,X4,X5] :
                  ( of(Z,X2,X1)
                  & city(Z,X1)
                  & hollywood_placename(Z,X2)
                  & placename(Z,X2)
                  & street(Z,X3)
                  & lonely(Z,X3)
                  & chevy(Z,X4)
                  & white(Z,X4)
                  & dirty(Z,X4)
                  & old(Z,X4)
                  & event(Z,X5)
                  & agent(Z,X5,X4)
                  & present(Z,X5)
                  & barrel(Z,X5)
                  & down(Z,X5,X3)
                  & in(Z,X5,X1) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y] :
                  ( of(U,V,W)
                  & city(U,W)
                  & hollywood_placename(U,V)
                  & placename(U,V)
                  & street(U,W)
                  & lonely(U,W)
                  & chevy(U,X)
                  & white(U,X)
                  & dirty(U,X)
                  & old(U,X)
                  & event(U,Y)
                  & agent(U,Y,X)
                  & present(U,Y)
                  & barrel(U,Y)
                  & down(U,Y,W)
                  & in(U,Y,W) ) ) ) ) ).

%--------------------------------------------------------------------------
