%------------------------------------------------------------------------------
% File     : PHI037+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Philosophy
% Problem  : Independence of Definition V from the rest of DAPI plus AAs
% Version  : [Hor19] axioms.
% English  :

% Refs     : [Hor19] Horner (2019), A Computationally Assisted Reconstructi
%            [Hor20] Horner (2020), Email to Geoff Sutcliffe
% Source   : [Hor20]
% Names    : APPENDIX 23 [Hor19]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.20 v7.4.0
% Syntax   : Number of formulae    :   21 (   0 unt;   0 def)
%            Number of atoms       :   70 (   2 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :   59 (  10   ~;   4   |;  21   &)
%                                         (  12 <=>;  12  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   49 (  48 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   33 (  33   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : 
%------------------------------------------------------------------------------
include('Axioms/PHI002+1.ax').
%------------------------------------------------------------------------------
%----Definition I. Self-caused. By that which is self-caused, I mean that of
%----which the essence involves existence, or that of which the nature
%----conceivable as existent. Note that "or" in the "... or that of which the
%----nature ..." must be rendered as "&" to capture what Spinoza means.
fof(self_caused,axiom,
    ! [X] :
      ( selfCaused(X)
    <=> ( essenceInvExistence(X)
        & natureConcOnlyByExistence(X) ) ) ).

%----Definition II. Finite after its kind. A thing finite after its kind, when
%----it can be limited by another thing of the same nature.
fof(finite_after_its_kind,axiom,
    ! [X,Y] :
      ( finiteAfterItsKind(X)
    <=> ( canBeLimitedBy(X,Y)
        & sameKind(X,Y) ) ) ).

%----Definition III. Substance. By substance, I mean that which is in itself,
%----and is conceived through itself.
fof(substance,axiom,
    ! [X] :
      ( substance(X)
    <=> ( inItself(X)
        & conceivedThruItself(X) ) ) ).

%----Definition IV. Attribute. By attribute, I mean that which the intellect
%----perceives as constituting the essence of substance.
fof(attribute,axiom,
    ! [X] :
      ( attribute(X)
    <=> intPercAsConstEssSub(X) ) ).

%----Definition V. Mode. By mode, I mean the modifications of substance, or
%----that which exists in, and is conceived through, something other than
%----itself.
fof(mode,conjecture,
    ! [X,Y,Z] :
      ( mode(X)
    <=> ( ( modification(X,Y)
          & substance(Y) )
        | ( existsIn(X,Z)
          & conceivedThru(X,Z) ) ) ) ).

%----Definition VI. God. By God, I mean a being absolutely infinite.
fof(god,axiom,
    ! [X] :
      ( god(X)
    <=> ( being(X)
        & absolutelyInfinite(X) ) ) ).

%----Definition VI. Absolutely infinite. ... that is, a substance consisting 
%----in infinite attributes, of which each expresses eternal and infinite 
%----essentiality. 
fof(absolutely_infinite,axiom,
    ! [X,Y] :
      ( absolutelyInfinite(X)
    <=> ( substance(X)
        & constInInfAttributes(X)
        & ( attributeOf(Y,X)
         => ( expressesEternalEssentiality(Y)
            & expressesInfiniteEssentiality(Y) ) ) ) ) ).

%----Definition VII. Free. That thing is called free, which exists solely by 
%----the necessity of its own nature, and of which the action is determined 
%----by itself alone.
fof(free,axiom,
    ! [X,Y] :
      ( free(X)
    <=> ( existsOnlyByNecessityOfOwnNature(X)
        & ( actionOf(Y,X)
         => determinedByItselfAlone(Y,X) ) ) ) ).

%----Definition VII. Necessary. ... that thing is necessary, or rather 
%----constrained, which is by something external to itself to a fixed and 
%----definite method of existence or action.
fof(necessary,axiom,
    ! [X,Y] :
      ( necessary(X)
    <=> ( externalTo(Y,X)
        & determinedByFixedMethod(X,Y)
        & determinedByDefiniteMethod(X,Y)
        & ( isMethodAction(Y)
          | isMethodExistence(Y) ) ) ) ).

%----Definition VIII. Eternity. By eternity, I mean existence itself, in so 
%----far as it is conceived necessarily to follow solely from the definition 
%----of that which is eternal.
fof(eternity,axiom,
    ! [X] :
      ( eternity(X)
    <=> existConcFollowFromDefEternal(X) ) ).

fof(has_substance_being,axiom,
    ! [X] :
      ( substance(X)
     => being(X) ) ).

fof(is_in_itself_is_self_caused,axiom,
    ! [X] :
      ( inItself(X)
     => selfCaused(X) ) ).

fof(being_has_essense,axiom,
    ! [X] :
      ( being(X)
     => hasEssence(X) ) ).

fof(essence_involves_existence_exists,axiom,
    ! [X] :
      ( ( essenceInvExistence(X)
        & hasEssence(X) )
     => exists(X) ) ).

%------------------------------------------------------------------------------
