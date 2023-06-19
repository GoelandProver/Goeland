%--------------------------------------------------------------------------
% File     : NLP169+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 56
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat. They are
%            wearing cheap black coats."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris146 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.22 v6.1.0, 0.30 v6.0.0, 0.43 v5.5.0, 0.29 v5.4.0, 0.27 v5.3.0, 0.38 v5.0.0, 0.44 v4.1.0, 0.50 v4.0.1, 0.00 v3.4.0, 0.33 v3.2.0, 0.50 v3.1.0, 1.00 v2.6.0, 0.75 v2.5.0, 0.67 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  164 (   0 equ)
%            Maximal formula atoms :  164 ( 164 avg)
%            Number of connectives :  165 (   2   ~;   0   |; 141   &)
%                                         (   0 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   49 (  49 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   31 (  31 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   68 (  20   !;  48   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2] :
                  ( group(U,V)
                  & frontseat(U,X)
                  & of(U,W,X)
                  & city(U,X)
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
                  & in(U,Z,X)
                  & ! [X3] :
                      ( member(U,X3,X1)
                     => ? [X4,X5] :
                          ( state(U,X4)
                          & be(U,X4,X3,X5)
                          & in(U,X5,X) ) )
                  & two(U,X1)
                  & group(U,X1)
                  & ! [X6] :
                      ( member(U,X6,X1)
                     => ( fellow(U,X6)
                        & young(U,X6) ) )
                  & ! [X7] :
                      ( member(U,X7,X2)
                     => ! [X8] :
                          ( member(U,X8,V)
                         => ? [X9] :
                              ( event(U,X9)
                              & agent(U,X9,X8)
                              & patient(U,X9,X7)
                              & present(U,X9)
                              & nonreflexive(U,X9)
                              & wear(U,X9) ) ) )
                  & group(U,X2)
                  & ! [X10] :
                      ( member(U,X10,X2)
                     => ( coat(U,X10)
                        & black(U,X10)
                        & cheap(U,X10) ) ) ) )
         => ? [X11] :
              ( actual_world(X11)
              & ? [X12,X13,X14,X15,X16,X17,X18,X19,X20] :
                  ( group(X11,X12)
                  & frontseat(X11,X13)
                  & of(X11,X15,X14)
                  & city(X11,X14)
                  & hollywood_placename(X11,X15)
                  & placename(X11,X15)
                  & chevy(X11,X16)
                  & white(X11,X16)
                  & dirty(X11,X16)
                  & old(X11,X16)
                  & street(X11,X17)
                  & lonely(X11,X17)
                  & event(X11,X18)
                  & agent(X11,X18,X16)
                  & present(X11,X18)
                  & barrel(X11,X18)
                  & down(X11,X18,X17)
                  & in(X11,X18,X14)
                  & ! [X21] :
                      ( member(X11,X21,X19)
                     => ? [X22,X23] :
                          ( state(X11,X22)
                          & be(X11,X22,X21,X23)
                          & in(X11,X23,X13) ) )
                  & two(X11,X19)
                  & group(X11,X19)
                  & ! [X24] :
                      ( member(X11,X24,X19)
                     => ( fellow(X11,X24)
                        & young(X11,X24) ) )
                  & ! [X25] :
                      ( member(X11,X25,X20)
                     => ! [X26] :
                          ( member(X11,X26,X12)
                         => ? [X27] :
                              ( event(X11,X27)
                              & agent(X11,X27,X26)
                              & patient(X11,X27,X25)
                              & present(X11,X27)
                              & nonreflexive(X11,X27)
                              & wear(X11,X27) ) ) )
                  & group(X11,X20)
                  & ! [X28] :
                      ( member(X11,X28,X20)
                     => ( coat(X11,X28)
                        & black(X11,X28)
                        & cheap(X11,X28) ) ) ) ) )
        & ( ? [X11] :
              ( actual_world(X11)
              & ? [X12,X13,X14,X15,X16,X17,X18,X19,X20] :
                  ( group(X11,X12)
                  & frontseat(X11,X13)
                  & of(X11,X15,X14)
                  & city(X11,X14)
                  & hollywood_placename(X11,X15)
                  & placename(X11,X15)
                  & chevy(X11,X16)
                  & white(X11,X16)
                  & dirty(X11,X16)
                  & old(X11,X16)
                  & street(X11,X17)
                  & lonely(X11,X17)
                  & event(X11,X18)
                  & agent(X11,X18,X16)
                  & present(X11,X18)
                  & barrel(X11,X18)
                  & down(X11,X18,X17)
                  & in(X11,X18,X14)
                  & ! [X21] :
                      ( member(X11,X21,X19)
                     => ? [X22,X23] :
                          ( state(X11,X22)
                          & be(X11,X22,X21,X23)
                          & in(X11,X23,X13) ) )
                  & two(X11,X19)
                  & group(X11,X19)
                  & ! [X24] :
                      ( member(X11,X24,X19)
                     => ( fellow(X11,X24)
                        & young(X11,X24) ) )
                  & ! [X25] :
                      ( member(X11,X25,X20)
                     => ! [X26] :
                          ( member(X11,X26,X12)
                         => ? [X27] :
                              ( event(X11,X27)
                              & agent(X11,X27,X26)
                              & patient(X11,X27,X25)
                              & present(X11,X27)
                              & nonreflexive(X11,X27)
                              & wear(X11,X27) ) ) )
                  & group(X11,X20)
                  & ! [X28] :
                      ( member(X11,X28,X20)
                     => ( coat(X11,X28)
                        & black(X11,X28)
                        & cheap(X11,X28) ) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2] :
                  ( group(U,V)
                  & frontseat(U,X)
                  & of(U,W,X)
                  & city(U,X)
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
                  & in(U,Z,X)
                  & ! [X3] :
                      ( member(U,X3,X1)
                     => ? [X4,X5] :
                          ( state(U,X4)
                          & be(U,X4,X3,X5)
                          & in(U,X5,X) ) )
                  & two(U,X1)
                  & group(U,X1)
                  & ! [X6] :
                      ( member(U,X6,X1)
                     => ( fellow(U,X6)
                        & young(U,X6) ) )
                  & ! [X7] :
                      ( member(U,X7,X2)
                     => ! [X8] :
                          ( member(U,X8,V)
                         => ? [X9] :
                              ( event(U,X9)
                              & agent(U,X9,X8)
                              & patient(U,X9,X7)
                              & present(U,X9)
                              & nonreflexive(U,X9)
                              & wear(U,X9) ) ) )
                  & group(U,X2)
                  & ! [X10] :
                      ( member(U,X10,X2)
                     => ( coat(U,X10)
                        & black(U,X10)
                        & cheap(U,X10) ) ) ) ) ) ) ).

%--------------------------------------------------------------------------
