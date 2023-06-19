%--------------------------------------------------------------------------
% File     : NLP163+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 50
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat. They are
%            wearing cheap black coats."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris140 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.22 v6.1.0, 0.20 v6.0.0, 0.29 v5.5.0, 0.00 v5.3.0, 0.23 v5.2.0, 0.12 v5.0.0, 0.22 v4.1.0, 0.33 v4.0.1, 0.00 v3.4.0, 0.33 v3.3.0, 0.17 v3.2.0, 0.50 v3.1.0, 1.00 v2.6.0, 0.75 v2.5.0, 0.67 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  164 (   0 equ)
%            Maximal formula atoms :  164 ( 164 avg)
%            Number of connectives :  165 (   2   ~;   0   |; 141   &)
%                                         (   0 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   49 (  49 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   31 (  31 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   70 (  20   !;  50   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3,X4] :
                  ( group(U,V)
                  & frontseat(U,W)
                  & of(U,Y,X)
                  & city(U,X)
                  & hollywood_placename(U,Y)
                  & placename(U,Y)
                  & chevy(U,Z)
                  & white(U,Z)
                  & dirty(U,Z)
                  & old(U,Z)
                  & street(U,X1)
                  & lonely(U,X1)
                  & event(U,X2)
                  & agent(U,X2,Z)
                  & present(U,X2)
                  & barrel(U,X2)
                  & down(U,X2,X1)
                  & in(U,X2,X)
                  & ! [X5] :
                      ( member(U,X5,X3)
                     => ? [X6,X7] :
                          ( state(U,X6)
                          & be(U,X6,X5,X7)
                          & in(U,X7,W) ) )
                  & two(U,X3)
                  & group(U,X3)
                  & ! [X8] :
                      ( member(U,X8,X3)
                     => ( fellow(U,X8)
                        & young(U,X8) ) )
                  & ! [X9] :
                      ( member(U,X9,X4)
                     => ! [X10] :
                          ( member(U,X10,V)
                         => ? [X11] :
                              ( event(U,X11)
                              & agent(U,X11,X10)
                              & patient(U,X11,X9)
                              & present(U,X11)
                              & nonreflexive(U,X11)
                              & wear(U,X11) ) ) )
                  & group(U,X4)
                  & ! [X12] :
                      ( member(U,X12,X4)
                     => ( coat(U,X12)
                        & black(U,X12)
                        & cheap(U,X12) ) ) ) )
         => ? [X13] :
              ( actual_world(X13)
              & ? [X14,X15,X16,X17,X18,X19,X20,X21] :
                  ( group(X13,X14)
                  & frontseat(X13,X15)
                  & of(X13,X16,X15)
                  & city(X13,X15)
                  & hollywood_placename(X13,X16)
                  & placename(X13,X16)
                  & chevy(X13,X17)
                  & white(X13,X17)
                  & dirty(X13,X17)
                  & old(X13,X17)
                  & street(X13,X18)
                  & lonely(X13,X18)
                  & event(X13,X19)
                  & agent(X13,X19,X17)
                  & present(X13,X19)
                  & barrel(X13,X19)
                  & down(X13,X19,X18)
                  & in(X13,X19,X15)
                  & ! [X22] :
                      ( member(X13,X22,X20)
                     => ? [X23,X24] :
                          ( state(X13,X23)
                          & be(X13,X23,X22,X24)
                          & in(X13,X24,X15) ) )
                  & two(X13,X20)
                  & group(X13,X20)
                  & ! [X25] :
                      ( member(X13,X25,X20)
                     => ( fellow(X13,X25)
                        & young(X13,X25) ) )
                  & ! [X26] :
                      ( member(X13,X26,X21)
                     => ! [X27] :
                          ( member(X13,X27,X14)
                         => ? [X28] :
                              ( event(X13,X28)
                              & agent(X13,X28,X27)
                              & patient(X13,X28,X26)
                              & present(X13,X28)
                              & nonreflexive(X13,X28)
                              & wear(X13,X28) ) ) )
                  & group(X13,X21)
                  & ! [X29] :
                      ( member(X13,X29,X21)
                     => ( coat(X13,X29)
                        & black(X13,X29)
                        & cheap(X13,X29) ) ) ) ) )
        & ( ? [X13] :
              ( actual_world(X13)
              & ? [X14,X15,X16,X17,X18,X19,X20,X21] :
                  ( group(X13,X14)
                  & frontseat(X13,X15)
                  & of(X13,X16,X15)
                  & city(X13,X15)
                  & hollywood_placename(X13,X16)
                  & placename(X13,X16)
                  & chevy(X13,X17)
                  & white(X13,X17)
                  & dirty(X13,X17)
                  & old(X13,X17)
                  & street(X13,X18)
                  & lonely(X13,X18)
                  & event(X13,X19)
                  & agent(X13,X19,X17)
                  & present(X13,X19)
                  & barrel(X13,X19)
                  & down(X13,X19,X18)
                  & in(X13,X19,X15)
                  & ! [X22] :
                      ( member(X13,X22,X20)
                     => ? [X23,X24] :
                          ( state(X13,X23)
                          & be(X13,X23,X22,X24)
                          & in(X13,X24,X15) ) )
                  & two(X13,X20)
                  & group(X13,X20)
                  & ! [X25] :
                      ( member(X13,X25,X20)
                     => ( fellow(X13,X25)
                        & young(X13,X25) ) )
                  & ! [X26] :
                      ( member(X13,X26,X21)
                     => ! [X27] :
                          ( member(X13,X27,X14)
                         => ? [X28] :
                              ( event(X13,X28)
                              & agent(X13,X28,X27)
                              & patient(X13,X28,X26)
                              & present(X13,X28)
                              & nonreflexive(X13,X28)
                              & wear(X13,X28) ) ) )
                  & group(X13,X21)
                  & ! [X29] :
                      ( member(X13,X29,X21)
                     => ( coat(X13,X29)
                        & black(X13,X29)
                        & cheap(X13,X29) ) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3,X4] :
                  ( group(U,V)
                  & frontseat(U,W)
                  & of(U,Y,X)
                  & city(U,X)
                  & hollywood_placename(U,Y)
                  & placename(U,Y)
                  & chevy(U,Z)
                  & white(U,Z)
                  & dirty(U,Z)
                  & old(U,Z)
                  & street(U,X1)
                  & lonely(U,X1)
                  & event(U,X2)
                  & agent(U,X2,Z)
                  & present(U,X2)
                  & barrel(U,X2)
                  & down(U,X2,X1)
                  & in(U,X2,X)
                  & ! [X5] :
                      ( member(U,X5,X3)
                     => ? [X6,X7] :
                          ( state(U,X6)
                          & be(U,X6,X5,X7)
                          & in(U,X7,W) ) )
                  & two(U,X3)
                  & group(U,X3)
                  & ! [X8] :
                      ( member(U,X8,X3)
                     => ( fellow(U,X8)
                        & young(U,X8) ) )
                  & ! [X9] :
                      ( member(U,X9,X4)
                     => ! [X10] :
                          ( member(U,X10,V)
                         => ? [X11] :
                              ( event(U,X11)
                              & agent(U,X11,X10)
                              & patient(U,X11,X9)
                              & present(U,X11)
                              & nonreflexive(U,X11)
                              & wear(U,X11) ) ) )
                  & group(U,X4)
                  & ! [X12] :
                      ( member(U,X12,X4)
                     => ( coat(U,X12)
                        & black(U,X12)
                        & cheap(U,X12) ) ) ) ) ) ) ).

%--------------------------------------------------------------------------
