%------------------------------------------------------------------------------
% File     : PHI029+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Philosophy
% Problem  : Independence of Axiom IV from the rest of DAPI plus AAs
% Version  : [Hor19] axioms.
% English  :

% Refs     : [Hor19] Horner (2019), A Computationally Assisted Reconstructi
%            [Hor20] Horner (2020), Email to Geoff Sutcliffe
% Source   : [Hor20]
% Names    : APPENDIX 15 [Hor19]

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
include('Axioms/PHI002+0.ax').
%------------------------------------------------------------------------------
%----Axiom I. Everything which exists, exists either in itself or in something
%----else.
fof(exists,axiom,
    ! [X,Y] :
      ( exists(X)
    <=> ( existsIn(X,X)
        | ( existsIn(X,Y)
          & X != Y ) ) ) ).

%----Axiom II. That which cannot be conceived through itself must be conceived
%----through something else.
fof(conceived_through,axiom,
    ! [X,Y] :
      ( ~ conceivedThru(X,X)
     => ( conceivedThru(X,Y)
        & X != Y ) ) ).

%----Axiom III. From a given definite cause an effect necessarily follows;
%----and, on the other hand, if no definite cause be granted, it is impossible
%----that an effect can follow.
fof(definite_cause,axiom,
    ! [X,Y] :
      ( definiteCause(X)
     => ( effectNecessarilyFollowsFrom(Y,X)
        & ( ~ definiteCause(X)
         => ~ effectNecessarilyFollowsFrom(Y,X) ) ) ) ).

%----Axiom IV. The knowledge of an effect depends on and involves the knowledge
%----of a cause.
fof(knowledge_of_effect,conjecture,
    ! [X,Y] :
      ( knowledgeOfEffect(X,Y)
    <=> knowledgeOfACause(X) ) ).

%----Axiom V. Things which have nothing in common cannot be understood, the
%----one by the means of the other the one by means of the other; the
%----conception of one does not involve the conception of the other.
fof(have_nothing_in_common,axiom,
    ! [X,Y] :
      ( haveNothingInCommon(X,Y)
     => ( ~ canBeUnderstoodInTermsOf(X,Y)
        & ~ canBeUnderstoodInTermsOf(Y,X)
        & ~ conceptionInvolves(X,Y)
        & ~ conceptionInvolves(Y,X) ) ) ).

%----Axiom VI. A true idea must correspond with its ideate or object.
fof(true_idea,axiom,
    ! [X,Y] :
      ( trueIdea(X)
     => ( correspondWith(X,Y)
        & ( ideateOf(Y,X)
          | objectOf(Y,X) ) ) ) ).

%----Axiom VII. If a thing can be conceived as non-existing, its essence does
%----not involve its existence.
fof(can_be_conceived_as_non_existing,axiom,
    ! [X] :
      ( canBeConceivedAsNonExisting(X)
     => ~ essenceInvExistence(X) ) ).

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
