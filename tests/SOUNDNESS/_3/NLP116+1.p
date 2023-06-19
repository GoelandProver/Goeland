%--------------------------------------------------------------------------
% File     : NLP116+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 3
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris093 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v4.1.0, 0.17 v4.0.1, 0.00 v3.1.0, 0.33 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :   68 (   0 equ)
%            Maximal formula atoms :   68 (  68 avg)
%            Number of connectives :   69 (   2   ~;   0   |;  65   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   26 (  26 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   17 (  17 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   20 (   0   !;  20   ?)
% SPC      : FOF_CSA_EPR_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y] :
                  ( street(U,V)
                  & lonely(U,V)
                  & of(U,W,X)
                  & city(U,X)
                  & hollywood_placename(U,W)
                  & placename(U,W)
                  & chevy(U,X)
                  & white(U,X)
                  & dirty(U,X)
                  & old(U,X)
                  & event(U,Y)
                  & agent(U,Y,X)
                  & present(U,Y)
                  & barrel(U,Y)
                  & down(U,Y,V)
                  & in(U,Y,X) ) )
         => ? [Z] :
              ( actual_world(Z)
              & ? [X1,X2,X3,X4] :
                  ( of(Z,X1,X2)
                  & city(Z,X2)
                  & hollywood_placename(Z,X1)
                  & placename(Z,X1)
                  & street(Z,X2)
                  & lonely(Z,X2)
                  & chevy(Z,X3)
                  & white(Z,X3)
                  & dirty(Z,X3)
                  & old(Z,X3)
                  & event(Z,X4)
                  & agent(Z,X4,X3)
                  & present(Z,X4)
                  & barrel(Z,X4)
                  & down(Z,X4,X2)
                  & in(Z,X4,X2) ) ) )
        & ( ? [Z] :
              ( actual_world(Z)
              & ? [X1,X2,X3,X4] :
                  ( of(Z,X1,X2)
                  & city(Z,X2)
                  & hollywood_placename(Z,X1)
                  & placename(Z,X1)
                  & street(Z,X2)
                  & lonely(Z,X2)
                  & chevy(Z,X3)
                  & white(Z,X3)
                  & dirty(Z,X3)
                  & old(Z,X3)
                  & event(Z,X4)
                  & agent(Z,X4,X3)
                  & present(Z,X4)
                  & barrel(Z,X4)
                  & down(Z,X4,X2)
                  & in(Z,X4,X2) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y] :
                  ( street(U,V)
                  & lonely(U,V)
                  & of(U,W,X)
                  & city(U,X)
                  & hollywood_placename(U,W)
                  & placename(U,W)
                  & chevy(U,X)
                  & white(U,X)
                  & dirty(U,X)
                  & old(U,X)
                  & event(U,Y)
                  & agent(U,Y,X)
                  & present(U,Y)
                  & barrel(U,Y)
                  & down(U,Y,V)
                  & in(U,Y,X) ) ) ) ) ).

%--------------------------------------------------------------------------
