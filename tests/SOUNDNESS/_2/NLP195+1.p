%--------------------------------------------------------------------------
% File     : NLP195+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 82
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat. They are
%            wearing cheap black coats. Jules is behind the wheel."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris172 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v6.2.0, 0.22 v6.1.0, 0.30 v6.0.0, 0.43 v5.5.0, 0.14 v5.4.0, 0.13 v5.3.0, 0.23 v5.2.0, 0.12 v5.0.0, 0.22 v4.1.0, 0.33 v4.0.1, 0.00 v3.4.0, 0.17 v3.2.0, 0.50 v3.1.0, 1.00 v2.6.0, 0.75 v2.5.0, 0.67 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  192 (   0 equ)
%            Maximal formula atoms :  192 ( 192 avg)
%            Number of connectives :  193 (   2   ~;   0   |; 169   &)
%                                         (   0 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   55 (  55 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   36 (  36 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   80 (  20   !;  60   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ~ ~ ( ( ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6] :
                  ( of(U,W,V)
                  & man(U,V)
                  & jules_forename(U,W)
                  & forename(U,W)
                  & wheel(U,X)
                  & frontseat(U,X)
                  & chevy(U,Y)
                  & white(U,Y)
                  & dirty(U,Y)
                  & old(U,Y)
                  & of(U,Z,X1)
                  & city(U,X1)
                  & hollywood_placename(U,Z)
                  & placename(U,Z)
                  & street(U,X1)
                  & lonely(U,X1)
                  & event(U,X2)
                  & agent(U,X2,Y)
                  & present(U,X2)
                  & barrel(U,X2)
                  & down(U,X2,X1)
                  & in(U,X2,X1)
                  & ! [X7] :
                      ( member(U,X7,X3)
                     => ? [X8,X9] :
                          ( state(U,X8)
                          & be(U,X8,X7,X9)
                          & in(U,X9,X) ) )
                  & two(U,X3)
                  & group(U,X3)
                  & ! [X10] :
                      ( member(U,X10,X3)
                     => ( fellow(U,X10)
                        & young(U,X10) ) )
                  & ! [X11] :
                      ( member(U,X11,X4)
                     => ! [X12] :
                          ( member(U,X12,X3)
                         => ? [X13] :
                              ( event(U,X13)
                              & agent(U,X13,X12)
                              & patient(U,X13,X11)
                              & present(U,X13)
                              & nonreflexive(U,X13)
                              & wear(U,X13) ) ) )
                  & group(U,X4)
                  & ! [X14] :
                      ( member(U,X14,X4)
                     => ( coat(U,X14)
                        & black(U,X14)
                        & cheap(U,X14) ) )
                  & state(U,X5)
                  & be(U,X5,V,X6)
                  & behind(U,X6,X) ) )
         => ? [X15] :
              ( actual_world(X15)
              & ? [X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26] :
                  ( of(X15,X17,X16)
                  & man(X15,X16)
                  & jules_forename(X15,X17)
                  & forename(X15,X17)
                  & wheel(X15,X19)
                  & frontseat(X15,X18)
                  & chevy(X15,X19)
                  & white(X15,X19)
                  & dirty(X15,X19)
                  & old(X15,X19)
                  & of(X15,X20,X21)
                  & city(X15,X21)
                  & hollywood_placename(X15,X20)
                  & placename(X15,X20)
                  & street(X15,X21)
                  & lonely(X15,X21)
                  & event(X15,X22)
                  & agent(X15,X22,X19)
                  & present(X15,X22)
                  & barrel(X15,X22)
                  & down(X15,X22,X21)
                  & in(X15,X22,X21)
                  & ! [X27] :
                      ( member(X15,X27,X23)
                     => ? [X28,X29] :
                          ( state(X15,X28)
                          & be(X15,X28,X27,X29)
                          & in(X15,X29,X18) ) )
                  & two(X15,X23)
                  & group(X15,X23)
                  & ! [X30] :
                      ( member(X15,X30,X23)
                     => ( fellow(X15,X30)
                        & young(X15,X30) ) )
                  & ! [X31] :
                      ( member(X15,X31,X24)
                     => ! [X32] :
                          ( member(X15,X32,X23)
                         => ? [X33] :
                              ( event(X15,X33)
                              & agent(X15,X33,X32)
                              & patient(X15,X33,X31)
                              & present(X15,X33)
                              & nonreflexive(X15,X33)
                              & wear(X15,X33) ) ) )
                  & group(X15,X24)
                  & ! [X34] :
                      ( member(X15,X34,X24)
                     => ( coat(X15,X34)
                        & black(X15,X34)
                        & cheap(X15,X34) ) )
                  & state(X15,X25)
                  & be(X15,X25,X16,X26)
                  & behind(X15,X26,X19) ) ) )
        & ( ? [X15] :
              ( actual_world(X15)
              & ? [X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26] :
                  ( of(X15,X17,X16)
                  & man(X15,X16)
                  & jules_forename(X15,X17)
                  & forename(X15,X17)
                  & wheel(X15,X19)
                  & frontseat(X15,X18)
                  & chevy(X15,X19)
                  & white(X15,X19)
                  & dirty(X15,X19)
                  & old(X15,X19)
                  & of(X15,X20,X21)
                  & city(X15,X21)
                  & hollywood_placename(X15,X20)
                  & placename(X15,X20)
                  & street(X15,X21)
                  & lonely(X15,X21)
                  & event(X15,X22)
                  & agent(X15,X22,X19)
                  & present(X15,X22)
                  & barrel(X15,X22)
                  & down(X15,X22,X21)
                  & in(X15,X22,X21)
                  & ! [X27] :
                      ( member(X15,X27,X23)
                     => ? [X28,X29] :
                          ( state(X15,X28)
                          & be(X15,X28,X27,X29)
                          & in(X15,X29,X18) ) )
                  & two(X15,X23)
                  & group(X15,X23)
                  & ! [X30] :
                      ( member(X15,X30,X23)
                     => ( fellow(X15,X30)
                        & young(X15,X30) ) )
                  & ! [X31] :
                      ( member(X15,X31,X24)
                     => ! [X32] :
                          ( member(X15,X32,X23)
                         => ? [X33] :
                              ( event(X15,X33)
                              & agent(X15,X33,X32)
                              & patient(X15,X33,X31)
                              & present(X15,X33)
                              & nonreflexive(X15,X33)
                              & wear(X15,X33) ) ) )
                  & group(X15,X24)
                  & ! [X34] :
                      ( member(X15,X34,X24)
                     => ( coat(X15,X34)
                        & black(X15,X34)
                        & cheap(X15,X34) ) )
                  & state(X15,X25)
                  & be(X15,X25,X16,X26)
                  & behind(X15,X26,X19) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6] :
                  ( of(U,W,V)
                  & man(U,V)
                  & jules_forename(U,W)
                  & forename(U,W)
                  & wheel(U,X)
                  & frontseat(U,X)
                  & chevy(U,Y)
                  & white(U,Y)
                  & dirty(U,Y)
                  & old(U,Y)
                  & of(U,Z,X1)
                  & city(U,X1)
                  & hollywood_placename(U,Z)
                  & placename(U,Z)
                  & street(U,X1)
                  & lonely(U,X1)
                  & event(U,X2)
                  & agent(U,X2,Y)
                  & present(U,X2)
                  & barrel(U,X2)
                  & down(U,X2,X1)
                  & in(U,X2,X1)
                  & ! [X7] :
                      ( member(U,X7,X3)
                     => ? [X8,X9] :
                          ( state(U,X8)
                          & be(U,X8,X7,X9)
                          & in(U,X9,X) ) )
                  & two(U,X3)
                  & group(U,X3)
                  & ! [X10] :
                      ( member(U,X10,X3)
                     => ( fellow(U,X10)
                        & young(U,X10) ) )
                  & ! [X11] :
                      ( member(U,X11,X4)
                     => ! [X12] :
                          ( member(U,X12,X3)
                         => ? [X13] :
                              ( event(U,X13)
                              & agent(U,X13,X12)
                              & patient(U,X13,X11)
                              & present(U,X13)
                              & nonreflexive(U,X13)
                              & wear(U,X13) ) ) )
                  & group(U,X4)
                  & ! [X14] :
                      ( member(U,X14,X4)
                     => ( coat(U,X14)
                        & black(U,X14)
                        & cheap(U,X14) ) )
                  & state(U,X5)
                  & be(U,X5,V,X6)
                  & behind(U,X6,X) ) ) ) ) ).

%--------------------------------------------------------------------------
