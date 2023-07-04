%------------------------------------------------------------------------------
% File     : PHI024+1 : TPTP v8.1.2. Released v7.4.0.
% Domain   : Philosophy
% Problem  : Independence of SE from the DAPI conjoined with AA4, AA7, and AA8
% Version  : [Hor19] axioms.
% English  :

% Refs     : [Hor19] Horner (2019), A Computationally Assisted Reconstructi
%            [Hor20] Horner (2020), Email to Geoff Sutcliffe
% Source   : [Hor20]
% Names    : APPENDIX 9 [Hor19]

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
include('Axioms/PHI002+1.ax').
%------------------------------------------------------------------------------
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

fof(has_substance_exists,conjecture,
    ! [X] :
      ( substance(X)
     => exists(X) ) ).

%------------------------------------------------------------------------------
