%--------------------------------------------------------------------------
% File     : NLP160+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 47
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat. They are
%            wearing cheap black coats."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris137 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.22 v6.1.0, 0.20 v6.0.0, 0.29 v5.5.0, 0.00 v5.3.0, 0.23 v5.2.0, 0.12 v5.0.0, 0.22 v4.1.0, 0.33 v4.0.1, 0.00 v3.4.0, 0.17 v3.2.0, 0.50 v3.1.0, 1.00 v2.6.0, 0.75 v2.5.0, 0.67 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  164 (   0 equ)
%            Maximal formula atoms :  164 ( 164 avg)
%            Number of connectives :  165 (   2   ~;   0   |; 141   &)
%                                         (   0 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   48 (  48 avg)
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
              & ? [V,W,X,Y,Z,X1,X2,X3] :
                  ( group(U,V)
                  & frontseat(U,Y)
                  & of(U,X,W)
                  & city(U,W)
                  & hollywood_placename(U,X)
                  & placename(U,X)
                  & chevy(U,Y)
                  & white(U,Y)
                  & dirty(U,Y)
                  & old(U,Y)
                  & street(U,Z)
                  & lonely(U,Z)
                  & event(U,X1)
                  & agent(U,X1,Y)
                  & present(U,X1)
                  & barrel(U,X1)
                  & down(U,X1,Z)
                  & in(U,X1,W)
                  & ! [X4] :
                      ( member(U,X4,X2)
                     => ? [X5,X6] :
                          ( state(U,X5)
                          & be(U,X5,X4,X6)
                          & in(U,X6,Y) ) )
                  & two(U,X2)
                  & group(U,X2)
                  & ! [X7] :
                      ( member(U,X7,X2)
                     => ( fellow(U,X7)
                        & young(U,X7) ) )
                  & ! [X8] :
                      ( member(U,X8,X3)
                     => ! [X9] :
                          ( member(U,X9,V)
                         => ? [X10] :
                              ( event(U,X10)
                              & agent(U,X10,X9)
                              & patient(U,X10,X8)
                              & present(U,X10)
                              & nonreflexive(U,X10)
                              & wear(U,X10) ) ) )
                  & group(U,X3)
                  & ! [X11] :
                      ( member(U,X11,X3)
                     => ( coat(U,X11)
                        & black(U,X11)
                        & cheap(U,X11) ) ) ) )
         => ? [X12] :
              ( actual_world(X12)
              & ? [X13,X14,X15,X16,X17,X18,X19,X20] :
                  ( group(X12,X13)
                  & frontseat(X12,X14)
                  & of(X12,X15,X14)
                  & city(X12,X14)
                  & hollywood_placename(X12,X15)
                  & placename(X12,X15)
                  & chevy(X12,X16)
                  & white(X12,X16)
                  & dirty(X12,X16)
                  & old(X12,X16)
                  & street(X12,X17)
                  & lonely(X12,X17)
                  & event(X12,X18)
                  & agent(X12,X18,X16)
                  & present(X12,X18)
                  & barrel(X12,X18)
                  & down(X12,X18,X17)
                  & in(X12,X18,X14)
                  & ! [X21] :
                      ( member(X12,X21,X19)
                     => ? [X22,X23] :
                          ( state(X12,X22)
                          & be(X12,X22,X21,X23)
                          & in(X12,X23,X14) ) )
                  & two(X12,X19)
                  & group(X12,X19)
                  & ! [X24] :
                      ( member(X12,X24,X19)
                     => ( fellow(X12,X24)
                        & young(X12,X24) ) )
                  & ! [X25] :
                      ( member(X12,X25,X20)
                     => ! [X26] :
                          ( member(X12,X26,X13)
                         => ? [X27] :
                              ( event(X12,X27)
                              & agent(X12,X27,X26)
                              & patient(X12,X27,X25)
                              & present(X12,X27)
                              & nonreflexive(X12,X27)
                              & wear(X12,X27) ) ) )
                  & group(X12,X20)
                  & ! [X28] :
                      ( member(X12,X28,X20)
                     => ( coat(X12,X28)
                        & black(X12,X28)
                        & cheap(X12,X28) ) ) ) ) )
        & ( ? [X12] :
              ( actual_world(X12)
              & ? [X13,X14,X15,X16,X17,X18,X19,X20] :
                  ( group(X12,X13)
                  & frontseat(X12,X14)
                  & of(X12,X15,X14)
                  & city(X12,X14)
                  & hollywood_placename(X12,X15)
                  & placename(X12,X15)
                  & chevy(X12,X16)
                  & white(X12,X16)
                  & dirty(X12,X16)
                  & old(X12,X16)
                  & street(X12,X17)
                  & lonely(X12,X17)
                  & event(X12,X18)
                  & agent(X12,X18,X16)
                  & present(X12,X18)
                  & barrel(X12,X18)
                  & down(X12,X18,X17)
                  & in(X12,X18,X14)
                  & ! [X21] :
                      ( member(X12,X21,X19)
                     => ? [X22,X23] :
                          ( state(X12,X22)
                          & be(X12,X22,X21,X23)
                          & in(X12,X23,X14) ) )
                  & two(X12,X19)
                  & group(X12,X19)
                  & ! [X24] :
                      ( member(X12,X24,X19)
                     => ( fellow(X12,X24)
                        & young(X12,X24) ) )
                  & ! [X25] :
                      ( member(X12,X25,X20)
                     => ! [X26] :
                          ( member(X12,X26,X13)
                         => ? [X27] :
                              ( event(X12,X27)
                              & agent(X12,X27,X26)
                              & patient(X12,X27,X25)
                              & present(X12,X27)
                              & nonreflexive(X12,X27)
                              & wear(X12,X27) ) ) )
                  & group(X12,X20)
                  & ! [X28] :
                      ( member(X12,X28,X20)
                     => ( coat(X12,X28)
                        & black(X12,X28)
                        & cheap(X12,X28) ) ) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3] :
                  ( group(U,V)
                  & frontseat(U,Y)
                  & of(U,X,W)
                  & city(U,W)
                  & hollywood_placename(U,X)
                  & placename(U,X)
                  & chevy(U,Y)
                  & white(U,Y)
                  & dirty(U,Y)
                  & old(U,Y)
                  & street(U,Z)
                  & lonely(U,Z)
                  & event(U,X1)
                  & agent(U,X1,Y)
                  & present(U,X1)
                  & barrel(U,X1)
                  & down(U,X1,Z)
                  & in(U,X1,W)
                  & ! [X4] :
                      ( member(U,X4,X2)
                     => ? [X5,X6] :
                          ( state(U,X5)
                          & be(U,X5,X4,X6)
                          & in(U,X6,Y) ) )
                  & two(U,X2)
                  & group(U,X2)
                  & ! [X7] :
                      ( member(U,X7,X2)
                     => ( fellow(U,X7)
                        & young(U,X7) ) )
                  & ! [X8] :
                      ( member(U,X8,X3)
                     => ! [X9] :
                          ( member(U,X9,V)
                         => ? [X10] :
                              ( event(U,X10)
                              & agent(U,X10,X9)
                              & patient(U,X10,X8)
                              & present(U,X10)
                              & nonreflexive(U,X10)
                              & wear(U,X10) ) ) )
                  & group(U,X3)
                  & ! [X11] :
                      ( member(U,X11,X3)
                     => ( coat(U,X11)
                        & black(U,X11)
                        & cheap(U,X11) ) ) ) ) ) ) ).

%--------------------------------------------------------------------------
