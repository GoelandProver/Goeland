%------------------------------------------------------------------------------
% File     : NUM841+1 : TPTP v8.1.0. Released v4.1.0.
% Domain   : Number Theory
% Problem  : holds(214,352,0)
% Version  : Especial.
% English  :

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [Kue09] Kuehlwein (2009), Email to Geoff Sutcliffe
%          : [KC+10] Kuehlwein et al. (2010), Premise Selection in the Napr
% Source   : [Kue09]
% Names    :

% Status   : Theorem
% Rating   : 0.28 v8.1.0, 0.25 v7.5.0, 0.22 v7.4.0, 0.20 v7.3.0, 0.21 v7.1.0, 0.26 v7.0.0, 0.27 v6.4.0, 0.35 v6.3.0, 0.29 v6.2.0, 0.32 v6.1.0, 0.43 v6.0.0, 0.35 v5.5.0, 0.41 v5.4.0, 0.39 v5.3.0, 0.56 v5.2.0, 0.35 v5.1.0, 0.33 v5.0.0, 0.42 v4.1.0
% Syntax   : Number of formulae    :   45 (  15 unt;   0 def)
%            Number of atoms       :   84 (  39 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   59 (  20   ~;  13   |;   5   &)
%                                         (   4 <=>;  17  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   5 con; 0-2 aty)
%            Number of variables   :   91 (  83   !;   8   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : From the Landau in Naproche 0.45 collection.
%------------------------------------------------------------------------------
fof('holds(214, 352, 0)',conjecture,
    greater(vplus(vd344,vd347),vplus(vd345,vd348)) ).

fof('holds(213, 351, 2)',axiom,
    vplus(vd348,vd345) = vplus(vd345,vd348) ).

fof('holds(213, 351, 1)',axiom,
    greater(vplus(vd347,vd345),vplus(vd348,vd345)) ).

fof('holds(213, 351, 0)',axiom,
    vplus(vd345,vd347) = vplus(vd347,vd345) ).

fof('holds(212, 350, 0)',axiom,
    greater(vplus(vd344,vd347),vplus(vd345,vd347)) ).

fof('holds(conjunct2(211), 349, 0)',axiom,
    greater(vd347,vd348) ).

fof('holds(conjunct1(211), 346, 0)',axiom,
    greater(vd344,vd345) ).

fof('ass(cond(goal(202), 0), 0)',axiom,
    ! [Vd328,Vd329,Vd330] :
      ( less(vplus(Vd328,Vd330),vplus(Vd329,Vd330))
     => less(Vd328,Vd329) ) ).

fof('ass(cond(goal(202), 0), 1)',axiom,
    ! [Vd328,Vd329,Vd330] :
      ( vplus(Vd328,Vd330) = vplus(Vd329,Vd330)
     => Vd328 = Vd329 ) ).

fof('ass(cond(goal(202), 0), 2)',axiom,
    ! [Vd328,Vd329,Vd330] :
      ( greater(vplus(Vd328,Vd330),vplus(Vd329,Vd330))
     => greater(Vd328,Vd329) ) ).

fof('ass(cond(goal(193), 0), 0)',axiom,
    ! [Vd301,Vd302,Vd303] :
      ( less(Vd301,Vd302)
     => less(vplus(Vd301,Vd303),vplus(Vd302,Vd303)) ) ).

fof('ass(cond(goal(193), 0), 1)',axiom,
    ! [Vd301,Vd302,Vd303] :
      ( Vd301 = Vd302
     => vplus(Vd301,Vd303) = vplus(Vd302,Vd303) ) ).

fof('ass(cond(goal(193), 0), 2)',axiom,
    ! [Vd301,Vd302,Vd303] :
      ( greater(Vd301,Vd302)
     => greater(vplus(Vd301,Vd303),vplus(Vd302,Vd303)) ) ).

fof('ass(cond(189, 0), 0)',axiom,
    ! [Vd295,Vd296] : greater(vplus(Vd295,Vd296),Vd295) ).

fof('ass(cond(184, 0), 0)',axiom,
    ! [Vd289,Vd290,Vd292] :
      ( ( leq(Vd290,Vd292)
        & leq(Vd289,Vd290) )
     => leq(Vd289,Vd292) ) ).

fof('ass(cond(goal(177), 0), 0)',axiom,
    ! [Vd281,Vd282,Vd283] :
      ( ( ( less(Vd282,Vd283)
          & leq(Vd281,Vd282) )
        | ( leq(Vd282,Vd283)
          & less(Vd281,Vd282) ) )
     => less(Vd281,Vd283) ) ).

fof('ass(cond(168, 0), 0)',axiom,
    ! [Vd262,Vd263,Vd265] :
      ( ( less(Vd263,Vd265)
        & less(Vd262,Vd263) )
     => less(Vd262,Vd265) ) ).

fof('ass(cond(163, 0), 0)',axiom,
    ! [Vd258,Vd259] :
      ( leq(Vd258,Vd259)
     => geq(Vd259,Vd258) ) ).

fof('ass(cond(158, 0), 0)',axiom,
    ! [Vd254,Vd255] :
      ( geq(Vd254,Vd255)
     => leq(Vd255,Vd254) ) ).

fof('def(cond(conseq(axiom(3)), 17), 1)',axiom,
    ! [Vd249,Vd250] :
      ( leq(Vd250,Vd249)
    <=> ( less(Vd250,Vd249)
        | Vd250 = Vd249 ) ) ).

fof('def(cond(conseq(axiom(3)), 16), 1)',axiom,
    ! [Vd244,Vd245] :
      ( geq(Vd245,Vd244)
    <=> ( greater(Vd245,Vd244)
        | Vd245 = Vd244 ) ) ).

fof('ass(cond(147, 0), 0)',axiom,
    ! [Vd226,Vd227] :
      ( less(Vd226,Vd227)
     => greater(Vd227,Vd226) ) ).

fof('ass(cond(140, 0), 0)',axiom,
    ! [Vd208,Vd209] :
      ( greater(Vd208,Vd209)
     => less(Vd209,Vd208) ) ).

fof('ass(cond(goal(130), 0), 0)',axiom,
    ! [Vd203,Vd204] :
      ( Vd203 = Vd204
      | greater(Vd203,Vd204)
      | less(Vd203,Vd204) ) ).

fof('ass(cond(goal(130), 0), 1)',axiom,
    ! [Vd203,Vd204] :
      ( Vd203 != Vd204
      | ~ less(Vd203,Vd204) ) ).

fof('ass(cond(goal(130), 0), 2)',axiom,
    ! [Vd203,Vd204] :
      ( ~ greater(Vd203,Vd204)
      | ~ less(Vd203,Vd204) ) ).

fof('ass(cond(goal(130), 0), 3)',axiom,
    ! [Vd203,Vd204] :
      ( Vd203 != Vd204
      | ~ greater(Vd203,Vd204) ) ).

fof('def(cond(conseq(axiom(3)), 12), 1)',axiom,
    ! [Vd198,Vd199] :
      ( less(Vd199,Vd198)
    <=> ? [Vd201] : Vd198 = vplus(Vd199,Vd201) ) ).

fof('def(cond(conseq(axiom(3)), 11), 1)',axiom,
    ! [Vd193,Vd194] :
      ( greater(Vd194,Vd193)
    <=> ? [Vd196] : Vd194 = vplus(Vd193,Vd196) ) ).

fof('ass(cond(goal(88), 0), 0)',axiom,
    ! [Vd120,Vd121] :
      ( Vd120 = Vd121
      | ? [Vd123] : Vd120 = vplus(Vd121,Vd123)
      | ? [Vd125] : Vd121 = vplus(Vd120,Vd125) ) ).

fof('ass(cond(goal(88), 0), 1)',axiom,
    ! [Vd120,Vd121] :
      ( Vd120 != Vd121
      | ~ ? [Vd125] : Vd121 = vplus(Vd120,Vd125) ) ).

fof('ass(cond(goal(88), 0), 2)',axiom,
    ! [Vd120,Vd121] :
      ( ~ ? [Vd123] : Vd120 = vplus(Vd121,Vd123)
      | ~ ? [Vd125] : Vd121 = vplus(Vd120,Vd125) ) ).

fof('ass(cond(goal(88), 0), 3)',axiom,
    ! [Vd120,Vd121] :
      ( Vd120 != Vd121
      | ~ ? [Vd123] : Vd120 = vplus(Vd121,Vd123) ) ).

fof('ass(cond(81, 0), 0)',axiom,
    ! [Vd104,Vd105] :
      ( Vd104 != Vd105
     => ! [Vd107] : vplus(Vd107,Vd104) != vplus(Vd107,Vd105) ) ).

fof('ass(cond(73, 0), 0)',axiom,
    ! [Vd92,Vd93] : Vd93 != vplus(Vd92,Vd93) ).

fof('ass(cond(61, 0), 0)',axiom,
    ! [Vd78,Vd79] : vplus(Vd79,Vd78) = vplus(Vd78,Vd79) ).

fof('ass(cond(52, 0), 0)',axiom,
    ! [Vd68,Vd69] : vplus(vsucc(Vd68),Vd69) = vsucc(vplus(Vd68,Vd69)) ).

fof('ass(cond(43, 0), 0)',axiom,
    ! [Vd59] : vplus(v1,Vd59) = vsucc(Vd59) ).

fof('ass(cond(33, 0), 0)',axiom,
    ! [Vd46,Vd47,Vd48] : vplus(vplus(Vd46,Vd47),Vd48) = vplus(Vd46,vplus(Vd47,Vd48)) ).

fof('qu(cond(conseq(axiom(3)), 3), and(holds(definiens(29), 45, 0), holds(definiens(29), 44, 0)))',axiom,
    ! [Vd42,Vd43] :
      ( vplus(Vd42,vsucc(Vd43)) = vsucc(vplus(Vd42,Vd43))
      & vplus(Vd42,v1) = vsucc(Vd42) ) ).

fof('ass(cond(20, 0), 0)',axiom,
    ! [Vd24] :
      ( Vd24 != v1
     => Vd24 = vsucc(vskolem2(Vd24)) ) ).

fof('ass(cond(12, 0), 0)',axiom,
    ! [Vd16] : vsucc(Vd16) != Vd16 ).

fof('ass(cond(6, 0), 0)',axiom,
    ! [Vd7,Vd8] :
      ( Vd7 != Vd8
     => vsucc(Vd7) != vsucc(Vd8) ) ).

fof('qu(antec(axiom(3)), imp(antec(axiom(3))))',axiom,
    ! [Vd3,Vd4] :
      ( vsucc(Vd3) = vsucc(Vd4)
     => Vd3 = Vd4 ) ).

fof('qu(restrictor(axiom(1)), holds(scope(axiom(1)), 2, 0))',axiom,
    ! [Vd1] : vsucc(Vd1) != v1 ).

%------------------------------------------------------------------------------
