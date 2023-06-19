%------------------------------------------------------------------------------
% File     : CSR141_8 : TPTP v8.1.2. Released v8.0.0.
% Domain   : Commonsense Reasoning
% Problem  : Reiner and MariaPaola are not connected at the CADE meeting
% Version  : Especial * Reduced > Especial.
% English  : CADE_BM is a Meeting. One agent of this meeting is MariaPaola and 
%            one is Reiner. It holds that both agents are not connected during 
%            the meeting.

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0
% Syntax   : Number of formulae    :   15 (   5 unt;  10 typ;   0 def)
%            Number of atoms       :    7 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    1 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :    9 (   5   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   1 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   4 con; 0-1 aty)
%            Number of variables   :    0 (   0   !;   0   ?;   0   :)
% SPC      : TX0_CSA_NEQ_NAR

% Comments : Translated to TXF from the THF version.
%------------------------------------------------------------------------------
%----The extracted signature
tff(numbers,type,
    num: $tType ).

tff(agent_THFTYPE_IiioI,type,
    agent_THFTYPE_IiioI: ( $i * $i ) > $o ).

tff(connected_THFTYPE_IiioI,type,
    connected_THFTYPE_IiioI: ( $i * $i ) > $o ).

tff(holdsDuring_THFTYPE_IiooI,type,
    holdsDuring_THFTYPE_IiooI: ( $i * $o ) > $o ).

tff(instance_THFTYPE_IiioI,type,
    instance_THFTYPE_IiioI: ( $i * $i ) > $o ).

tff(lCADE_BM_THFTYPE_i,type,
    lCADE_BM_THFTYPE_i: $i ).

tff(lMariaPaola_THFTYPE_i,type,
    lMariaPaola_THFTYPE_i: $i ).

tff(lMeeting_THFTYPE_i,type,
    lMeeting_THFTYPE_i: $i ).

tff(lReiner_THFTYPE_i,type,
    lReiner_THFTYPE_i: $i ).

tff(lWhenFn_THFTYPE_IiiI,type,
    lWhenFn_THFTYPE_IiiI: $i > $i ).

%----The translated axioms
tff(ax,axiom,
    agent_THFTYPE_IiioI(lCADE_BM_THFTYPE_i,lReiner_THFTYPE_i) ).

tff(ax_001,axiom,
    agent_THFTYPE_IiioI(lCADE_BM_THFTYPE_i,lMariaPaola_THFTYPE_i) ).

tff(ax_002,axiom,
    instance_THFTYPE_IiioI(lCADE_BM_THFTYPE_i,lMeeting_THFTYPE_i) ).

tff(ax_003,axiom,
    holdsDuring_THFTYPE_IiooI(lWhenFn_THFTYPE_IiiI(lCADE_BM_THFTYPE_i),$true) ).

%----The translated conjectures
tff(con,conjecture,
    holdsDuring_THFTYPE_IiooI(lWhenFn_THFTYPE_IiiI(lCADE_BM_THFTYPE_i),~ connected_THFTYPE_IiioI(lMariaPaola_THFTYPE_i,lReiner_THFTYPE_i)) ).

%------------------------------------------------------------------------------
