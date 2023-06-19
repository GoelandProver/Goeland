%--------------------------------------------------------------------------
% File     : NLP190+1 : TPTP v8.1.2. Released v2.4.0.
% Domain   : Natural Language Processing
% Problem  : An old dirty white Chevy, problem 77
% Version  : [Bos00b] axioms.
% English  : Eliminating logically equivalent interpretations in the statement
%            "An old dirty white chevy barrels down a lonely street in
%            hollywood. Two young fellas are in the front seat. They are
%            wearing cheap black coats. Jules is behind the wheel."

% Refs     : [Bos00a] Bos (2000), DORIS: Discourse Oriented Representation a
%            [Bos00b] Bos (2000), Applied Theorem Proving - Natural Language
% Source   : [Bos00b]
% Names    : doris167 [Bos00b]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v6.2.0, 0.22 v6.1.0, 0.30 v6.0.0, 0.43 v5.5.0, 0.29 v5.4.0, 0.27 v5.3.0, 0.31 v5.2.0, 0.25 v5.0.0, 0.33 v4.0.1, 0.00 v3.4.0, 0.17 v3.2.0, 0.50 v3.1.0, 1.00 v2.4.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  192 (   0 equ)
%            Maximal formula atoms :  192 ( 192 avg)
%            Number of connectives :  193 (   2   ~;   0   |; 169   &)
%                                         (   0 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   56 (  56 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   36 (  36 usr;   0 prp; 1-4 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   82 (  20   !;  62   ?)
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
                  & wheel(U,X1)
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
                  & behind(U,X6,X1) ) )
         => ? [X15] :
              ( actual_world(X15)
              & ? [X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27] :
                  ( of(X15,X17,X16)
                  & man(X15,X16)
                  & jules_forename(X15,X17)
                  & forename(X15,X17)
                  & wheel(X15,X18)
                  & frontseat(X15,X19)
                  & chevy(X15,X20)
                  & white(X15,X20)
                  & dirty(X15,X20)
                  & old(X15,X20)
                  & of(X15,X21,X22)
                  & city(X15,X22)
                  & hollywood_placename(X15,X21)
                  & placename(X15,X21)
                  & street(X15,X22)
                  & lonely(X15,X22)
                  & event(X15,X23)
                  & agent(X15,X23,X20)
                  & present(X15,X23)
                  & barrel(X15,X23)
                  & down(X15,X23,X22)
                  & in(X15,X23,X22)
                  & ! [X28] :
                      ( member(X15,X28,X24)
                     => ? [X29,X30] :
                          ( state(X15,X29)
                          & be(X15,X29,X28,X30)
                          & in(X15,X30,X19) ) )
                  & two(X15,X24)
                  & group(X15,X24)
                  & ! [X31] :
                      ( member(X15,X31,X24)
                     => ( fellow(X15,X31)
                        & young(X15,X31) ) )
                  & ! [X32] :
                      ( member(X15,X32,X25)
                     => ! [X33] :
                          ( member(X15,X33,X24)
                         => ? [X34] :
                              ( event(X15,X34)
                              & agent(X15,X34,X33)
                              & patient(X15,X34,X32)
                              & present(X15,X34)
                              & nonreflexive(X15,X34)
                              & wear(X15,X34) ) ) )
                  & group(X15,X25)
                  & ! [X35] :
                      ( member(X15,X35,X25)
                     => ( coat(X15,X35)
                        & black(X15,X35)
                        & cheap(X15,X35) ) )
                  & state(X15,X26)
                  & be(X15,X26,X16,X27)
                  & behind(X15,X27,X18) ) ) )
        & ( ? [X15] :
              ( actual_world(X15)
              & ? [X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27] :
                  ( of(X15,X17,X16)
                  & man(X15,X16)
                  & jules_forename(X15,X17)
                  & forename(X15,X17)
                  & wheel(X15,X18)
                  & frontseat(X15,X19)
                  & chevy(X15,X20)
                  & white(X15,X20)
                  & dirty(X15,X20)
                  & old(X15,X20)
                  & of(X15,X21,X22)
                  & city(X15,X22)
                  & hollywood_placename(X15,X21)
                  & placename(X15,X21)
                  & street(X15,X22)
                  & lonely(X15,X22)
                  & event(X15,X23)
                  & agent(X15,X23,X20)
                  & present(X15,X23)
                  & barrel(X15,X23)
                  & down(X15,X23,X22)
                  & in(X15,X23,X22)
                  & ! [X28] :
                      ( member(X15,X28,X24)
                     => ? [X29,X30] :
                          ( state(X15,X29)
                          & be(X15,X29,X28,X30)
                          & in(X15,X30,X19) ) )
                  & two(X15,X24)
                  & group(X15,X24)
                  & ! [X31] :
                      ( member(X15,X31,X24)
                     => ( fellow(X15,X31)
                        & young(X15,X31) ) )
                  & ! [X32] :
                      ( member(X15,X32,X25)
                     => ! [X33] :
                          ( member(X15,X33,X24)
                         => ? [X34] :
                              ( event(X15,X34)
                              & agent(X15,X34,X33)
                              & patient(X15,X34,X32)
                              & present(X15,X34)
                              & nonreflexive(X15,X34)
                              & wear(X15,X34) ) ) )
                  & group(X15,X25)
                  & ! [X35] :
                      ( member(X15,X35,X25)
                     => ( coat(X15,X35)
                        & black(X15,X35)
                        & cheap(X15,X35) ) )
                  & state(X15,X26)
                  & be(X15,X26,X16,X27)
                  & behind(X15,X27,X18) ) )
         => ? [U] :
              ( actual_world(U)
              & ? [V,W,X,Y,Z,X1,X2,X3,X4,X5,X6] :
                  ( of(U,W,V)
                  & man(U,V)
                  & jules_forename(U,W)
                  & forename(U,W)
                  & wheel(U,X1)
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
                  & behind(U,X6,X1) ) ) ) ) ).

%--------------------------------------------------------------------------
