%--------------------------------------------------------------------------
% File     : NLP130+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 17
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris107 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.11 v6.1.0, 0.10 v6.0.0, 0.14 v5.5.0, 0.00 v5.2.0, 0.12 v5.0.0, 0.11 v4.1.0, 0.33 v4.0.1, 0.00 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  108 (   0 equ)
%            Maximal formula atoms :  108 ( 108 avg)
%            Number of connectives :  109 (   2   ~;   0   |;  97   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   36 (  36 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   25 (  25 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   40 (   8   !;  32   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z] :
                  ( chevy(U,V)
                  & white(U,V)
                  & dirty(U,V)
                  & old(U,V)
                  & of(U,W,X)
                  & city(U,X)
                  & hollywood_placename(U,W)
                  & placename(U,W)
                  & street(U,X)
                  & lonely(U,X)
                  & event(U,Y)
                  & agent(U,Y,V)
                  & present(U,Y)
                  & barrel(U,Y)
                  & down(U,Y,X)
                  & in(U,Y,X)
                  & ! [X1] :
                      ( member(U,X1,Z)
                     => ? [X2,X3] :
                          ( frontseat(U,X3)
                          & state(U,X2)
                          & be(U,X2,X1,X3)
                          & in(U,X3,X3) ) )
                  & two(U,Z)
                  & group(U,Z)
                  & ! [X4] :
                      ( member(U,X4,Z)
                     => ( fellow(U,X4)
                        & young(U,X4) ) ) ) )
         => ? [X5] :
              ( actual_world(X5)
              & ? [X6,X7,X8,X9,X10] :
                  ( chevy(X5,X6)
                  & white(X5,X6)
                  & dirty(X5,X6)
                  & old(X5,X6)
                  & of(X5,X7,X8)
                  & city(X5,X8)
                  & hollywood_placename(X5,X7)
                  & placename(X5,X7)
                  & street(X5,X8)
                  & lonely(X5,X8)
                  & event(X5,X9)
                  & agent(X5,X9,X6)
                  & present(X5,X9)
                  & barrel(X5,X9)
                  & down(X5,X9,X8)
                  & in(X5,X9,X8)
                  & ! [X11] :
                      ( ( frontseat(X5,X11)
                        & member(X5,X11,X10) )
                     => ? [X12,X13] :
                          ( state(X5,X12)
                          & be(X5,X12,X11,X13)
                          & in(X5,X13,X11) ) )
                  & two(X5,X10)
                  & group(X5,X10)
                  & ! [X14] :
                      ( member(X5,X14,X10)
                     => ( fellow(X5,X14)
                        & young(X5,X14) ) ) ) ) )
        & ( ? [X5] :
              ( actual_world(X5)
              & ? [X6,X7,X8,X9,X10] :
                  ( chevy(X5,X6)
                  & white(X5,X6)
                  & dirty(X5,X6)
                  & old(X5,X6)
                  & of(X5,X7,X8)
                  & city(X5,X8)
                  & hollywood_placename(X5,X7)
                  & placename(X5,X7)
                  & street(X5,X8)
                  & lonely(X5,X8)
                  & event(X5,X9)
                  & agent(X5,X9,X6)
                  & present(X5,X9)
                  & barrel(X5,X9)
                  & down(X5,X9,X8)
                  & in(X5,X9,X8)
                  & ! [X11] :
                      ( ( frontseat(X5,X11)
                        & member(X5,X11,X10) )
                     => ? [X12,X13] :
                          ( state(X5,X12)
                          & be(X5,X12,X11,X13)
                          & in(X5,X13,X11) ) )
                  & two(X5,X10)
                  & group(X5,X10)
                  & ! [X14] :
                      ( member(X5,X14,X10)
                     => ( fellow(X5,X14)
                        & young(X5,X14) ) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z] :
                  ( chevy(U,V)
                  & white(U,V)
                  & dirty(U,V)
                  & old(U,V)
                  & of(U,W,X)
                  & city(U,X)
                  & hollywood_placename(U,W)
                  & placename(U,W)
                  & street(U,X)
                  & lonely(U,X)
                  & event(U,Y)
                  & agent(U,Y,V)
                  & present(U,Y)
                  & barrel(U,Y)
                  & down(U,Y,X)
                  & in(U,Y,X)
                  & ! [X1] :
                      ( member(U,X1,Z)
                     => ? [X2,X3] :
                          ( frontseat(U,X3)
                          & state(U,X2)
                          & be(U,X2,X1,X3)
                          & in(U,X3,X3) ) )
                  & two(U,Z)
                  & group(U,Z)
                  & ! [X4] :
                      ( member(U,X4,Z)
                     => ( fellow(U,X4)
                        & young(U,X4) ) ) ) ) ) ) ).

%--------------------------------------------------------------------------
