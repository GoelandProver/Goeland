%------------------------------------------------------------------------------
% File     : NUM841+2 : TPTP v8.1.0. Released v4.1.0.
% Domain   : Number Theory
% Problem  : holds(214,352,0)
% Version  : Especial: Reduced > Especial.
% English  :

% Refs     : [Lan30] Landau (1930), Grundlagen der Analysis
%          : [Kue09] Kuehlwein (2009), Email to Geoff Sutcliffe
%          : [KC+10] Kuehlwein et al. (2010), Premise Selection in the Napr
% Source   : [Kue09]
% Names    :

% Status   : Theorem
% Rating   : 0.44 v7.5.0, 0.47 v7.4.0, 0.43 v7.3.0, 0.45 v7.2.0, 0.41 v7.1.0, 0.43 v7.0.0, 0.50 v6.4.0, 0.58 v6.3.0, 0.46 v6.2.0, 0.52 v6.1.0, 0.50 v6.0.0, 0.52 v5.4.0, 0.54 v5.3.0, 0.63 v5.2.0, 0.45 v5.1.0, 0.48 v5.0.0, 0.62 v4.1.0
% Syntax   : Number of formulae    :   26 (  12 unt;   0 def)
%            Number of atoms       :   41 (  18 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :   20 (   5   ~;   4   |;   1   &)
%                                         (   1 <=>;   9  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   5 con; 0-2 aty)
%            Number of variables   :   45 (  43   !;   2   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : From the Landau in Naproche 0.45 collection.
%          : This version uses a filtered set of axioms.
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

fof('ass(cond(goal(130), 0), 2)',axiom,
    ! [Vd203,Vd204] :
      ( ~ greater(Vd203,Vd204)
      | ~ less(Vd203,Vd204) ) ).

fof('def(cond(conseq(axiom(3)), 11), 1)',axiom,
    ! [Vd193,Vd194] :
      ( greater(Vd194,Vd193)
    <=> ? [Vd196] : Vd194 = vplus(Vd193,Vd196) ) ).

fof('ass(cond(goal(88), 0), 3)',axiom,
    ! [Vd120,Vd121] :
      ( Vd120 != Vd121
      | ~ ? [Vd123] : Vd120 = vplus(Vd121,Vd123) ) ).

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

%------------------------------------------------------------------------------
