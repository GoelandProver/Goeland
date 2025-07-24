fof('ass(cond(223, 0), 0)',axiom,
    ! [Vd362,Vd363,Vd365,Vd366] :
      ( geq(vplus(Vd362,Vd365),vplus(Vd363,Vd366))
     <= ( geq(Vd362,Vd363)
        & geq(Vd365,Vd366) ) ) ).

fof('def(cond(conseq(axiom(3)), 12), 1)',axiom,
    ! [Vd198,Vd199] :
      ( less(Vd199,Vd198)
    <=> ? [Vd201] : vplus(Vd199,Vd201) = Vd198 ) ).

fof('ass(cond(81, 0), 0)',axiom,
    ! [Vd104,Vd105] :
      ( ! [Vd107] : vplus(Vd107,Vd105) != vplus(Vd107,Vd104)
     <= Vd105 != Vd104 ) ).

fof('ass(cond(conjunct1(307), 0), 0)',axiom,
    ! [Vd486,Vd487,Vd488] :
      ( greater(vmul(Vd486,Vd487),vmul(Vd488,Vd487))
     => greater(Vd486,Vd488) ) ).

fof('ass(cond(12, 0), 0)',axiom,
    ! [Vd16] : Vd16 != vsucc(Vd16) ).

fof('ass(cond(goal(216), 0), 0)',axiom,
    ! [Vd353,Vd354,Vd355,Vd356] :
      ( greater(vplus(Vd353,Vd355),vplus(Vd354,Vd356))
     <= ( ( greater(Vd353,Vd354)
          & geq(Vd355,Vd356) )
        | ( greater(Vd355,Vd356)
          & geq(Vd353,Vd354) ) ) ) ).

fof('ass(cond(61, 0), 0)',axiom,
    ! [Vd78,Vd79] : vplus(Vd78,Vd79) = vplus(Vd79,Vd78) ).

fof('ass(cond(299, 0), 2)',axiom,
    ! [Vd456,Vd457,Vd458] :
      ( greater(vmul(Vd457,Vd456),vmul(Vd458,Vd456))
     <= greater(Vd457,Vd458) ) ).

fof('ass(cond(209, 0), 0)',axiom,
    ! [Vd337,Vd338,Vd340,Vd341] :
      ( greater(vplus(Vd337,Vd340),vplus(Vd338,Vd341))
     <= ( greater(Vd340,Vd341)
        & greater(Vd337,Vd338) ) ) ).

fof('ass(cond(goal(88), 0), 3)',axiom,
    ! [Vd120,Vd121] :
      ( ~ ? [Vd123] : vplus(Vd121,Vd123) = Vd120
      | Vd120 != Vd121 ) ).

fof('ass(cond(goal(202), 0), 1)',axiom,
    ! [Vd328,Vd329,Vd330] :
      ( vplus(Vd328,Vd330) = vplus(Vd329,Vd330)
     => Vd329 = Vd328 ) ).

fof('ass(cond(goal(130), 0), 1)',axiom,
    ! [Vd203,Vd204] :
      ( ~ less(Vd203,Vd204)
      | Vd203 != Vd204 ) ).

fof('ass(cond(43, 0), 0)',axiom,
    ! [Vd59] : vsucc(Vd59) = vplus(v1,Vd59) ).

fof('ass(cond(goal(88), 0), 2)',axiom,
    ! [Vd120,Vd121] :
      ( ~ ? [Vd123] : Vd120 = vplus(Vd121,Vd123)
      | ~ ? [Vd125] : Vd121 = vplus(Vd120,Vd125) ) ).

fof('ass(cond(290, 0), 0)',axiom,
    ! [Vd444,Vd445,Vd446] : vmul(vmul(Vd444,Vd445),Vd446) = vmul(Vd444,vmul(Vd445,Vd446)) ).

fof('ass(cond(299, 0), 1)',axiom,
    ! [Vd456,Vd461,Vd462] :
      ( vmul(Vd462,Vd456) = vmul(Vd461,Vd456)
     <= Vd462 = Vd461 ) ).

fof('holds(conseq(323), 532, 0)',conjecture,
    geq(vmul(vd526,vd529),vmul(vd527,vd530)) ).

fof('def(cond(conseq(axiom(3)), 17), 1)',axiom,
    ! [Vd249,Vd250] :
      ( leq(Vd250,Vd249)
    <=> ( Vd249 = Vd250
        | less(Vd250,Vd249) ) ) ).

fof('qu(antec(axiom(3)), imp(antec(axiom(3))))',axiom,
    ! [Vd3,Vd4] :
      ( vsucc(Vd3) = vsucc(Vd4)
     => Vd3 = Vd4 ) ).

fof('ass(cond(73, 0), 0)',axiom,
    ! [Vd92,Vd93] : vplus(Vd92,Vd93) != Vd93 ).

fof('ass(cond(184, 0), 0)',axiom,
    ! [Vd289,Vd290,Vd292] :
      ( ( leq(Vd290,Vd292)
        & leq(Vd289,Vd290) )
     => leq(Vd289,Vd292) ) ).

fof('ass(cond(6, 0), 0)',axiom,
    ! [Vd7,Vd8] :
      ( vsucc(Vd7) != vsucc(Vd8)
     <= Vd8 != Vd7 ) ).

fof('ass(cond(158, 0), 0)',axiom,
    ! [Vd254,Vd255] :
      ( geq(Vd254,Vd255)
     => leq(Vd255,Vd254) ) ).

fof('ass(cond(goal(193), 0), 2)',axiom,
    ! [Vd301,Vd302,Vd303] :
      ( greater(Vd301,Vd302)
     => greater(vplus(Vd301,Vd303),vplus(Vd302,Vd303)) ) ).

fof('ass(cond(140, 0), 0)',axiom,
    ! [Vd208,Vd209] :
      ( less(Vd209,Vd208)
     <= greater(Vd208,Vd209) ) ).

fof('ass(cond(163, 0), 0)',axiom,
    ! [Vd258,Vd259] :
      ( leq(Vd258,Vd259)
     => geq(Vd259,Vd258) ) ).

fof('ass(cond(20, 0), 0)',axiom,
    ! [Vd24] :
      ( v1 != Vd24
     => Vd24 = vsucc(vskolem2(Vd24)) ) ).

fof('ass(cond(281, 0), 0)',axiom,
    ! [Vd432,Vd433,Vd434] : vmul(Vd432,vplus(Vd433,Vd434)) = vplus(vmul(Vd432,Vd433),vmul(Vd432,Vd434)) ).

fof('ass(cond(253, 0), 0)',axiom,
    ! [Vd400] : Vd400 = vmul(v1,Vd400) ).

fof('ass(cond(goal(202), 0), 0)',axiom,
    ! [Vd328,Vd329,Vd330] :
      ( less(Vd328,Vd329)
     <= less(vplus(Vd328,Vd330),vplus(Vd329,Vd330)) ) ).

fof('ass(cond(168, 0), 0)',axiom,
    ! [Vd262,Vd263,Vd265] :
      ( ( less(Vd262,Vd263)
        & less(Vd263,Vd265) )
     => less(Vd262,Vd265) ) ).

fof('ass(cond(goal(130), 0), 0)',axiom,
    ! [Vd203,Vd204] :
      ( less(Vd203,Vd204)
      | greater(Vd203,Vd204)
      | Vd204 = Vd203 ) ).

fof('ass(cond(goal(130), 0), 3)',axiom,
    ! [Vd203,Vd204] :
      ( ~ greater(Vd203,Vd204)
      | Vd204 != Vd203 ) ).

fof('ass(cond(goal(130), 0), 2)',axiom,
    ! [Vd203,Vd204] :
      ( ~ greater(Vd203,Vd204)
      | ~ less(Vd203,Vd204) ) ).

fof('ass(cond(goal(88), 0), 1)',axiom,
    ! [Vd120,Vd121] :
      ( Vd120 != Vd121
      | ~ ? [Vd125] : Vd121 = vplus(Vd120,Vd125) ) ).

fof('qu(cond(conseq(axiom(3)), 3), and(holds(definiens(29), 45, 0), holds(definiens(29), 44, 0)))',axiom,
    ! [Vd42,Vd43] :
      ( vplus(Vd42,vsucc(Vd43)) = vsucc(vplus(Vd42,Vd43))
      & vplus(Vd42,v1) = vsucc(Vd42) ) ).

fof('ass(cond(299, 0), 0)',axiom,
    ! [Vd456,Vd465,Vd466] :
      ( less(vmul(Vd465,Vd456),vmul(Vd466,Vd456))
     <= less(Vd465,Vd466) ) ).

fof('ass(cond(147, 0), 0)',axiom,
    ! [Vd226,Vd227] :
      ( greater(Vd227,Vd226)
     <= less(Vd226,Vd227) ) ).

fof('ass(cond(318, 0), 0)',axiom,
    ! [Vd517,Vd518,Vd519,Vd520] :
      ( greater(vmul(Vd517,Vd519),vmul(Vd518,Vd520))
     <= ( ( geq(Vd517,Vd518)
          & greater(Vd519,Vd520) )
        | ( greater(Vd517,Vd518)
          & geq(Vd519,Vd520) ) ) ) ).

fof('ass(cond(goal(202), 0), 2)',axiom,
    ! [Vd328,Vd329,Vd330] :
      ( greater(vplus(Vd328,Vd330),vplus(Vd329,Vd330))
     => greater(Vd328,Vd329) ) ).

fof('ass(cond(241, 0), 0)',axiom,
    ! [Vd386,Vd387] :
      ( less(Vd386,vplus(Vd387,v1))
     => leq(Vd386,Vd387) ) ).

fof('holds(conjunct1(antec(323)), 528, 0)',axiom,
    geq(vd526,vd527) ).

fof('holds(conjunct2(antec(323)), 531, 0)',axiom,
    geq(vd529,vd530) ).

fof('ass(cond(228, 0), 0)',axiom,
    ! [Vd369] : geq(Vd369,v1) ).

fof('ass(cond(312, 0), 0)',axiom,
    ! [Vd501,Vd502,Vd504,Vd505] :
      ( greater(vmul(Vd501,Vd504),vmul(Vd502,Vd505))
     <= ( greater(Vd501,Vd502)
        & greater(Vd504,Vd505) ) ) ).

fof('ass(cond(goal(193), 0), 0)',axiom,
    ! [Vd301,Vd302,Vd303] :
      ( less(vplus(Vd301,Vd303),vplus(Vd302,Vd303))
     <= less(Vd301,Vd302) ) ).

fof('ass(cond(goal(88), 0), 0)',axiom,
    ! [Vd120,Vd121] :
      ( ? [Vd125] : vplus(Vd120,Vd125) = Vd121
      | ? [Vd123] : Vd120 = vplus(Vd121,Vd123)
      | Vd121 = Vd120 ) ).

fof('ass(cond(33, 0), 0)',axiom,
    ! [Vd46,Vd47,Vd48] : vplus(vplus(Vd46,Vd47),Vd48) = vplus(Vd46,vplus(Vd47,Vd48)) ).

fof('qu(restrictor(axiom(1)), holds(scope(axiom(1)), 2, 0))',axiom,
    ! [Vd1] : v1 != vsucc(Vd1) ).

fof('ass(cond(conjunct1(conjunct2(307)), 0), 0)',axiom,
    ! [Vd491,Vd492,Vd493] :
      ( vmul(Vd493,Vd492) = vmul(Vd491,Vd492)
     => Vd493 = Vd491 ) ).

fof('ass(cond(189, 0), 0)',axiom,
    ! [Vd295,Vd296] : greater(vplus(Vd295,Vd296),Vd295) ).

fof('ass(cond(270, 0), 0)',axiom,
    ! [Vd418,Vd419] : vmul(Vd418,Vd419) = vmul(Vd419,Vd418) ).

fof('def(cond(conseq(axiom(3)), 16), 1)',axiom,
    ! [Vd244,Vd245] :
      ( ( Vd245 = Vd244
        | greater(Vd245,Vd244) )
    <=> geq(Vd245,Vd244) ) ).

fof('ass(cond(52, 0), 0)',axiom,
    ! [Vd68,Vd69] : vplus(vsucc(Vd68),Vd69) = vsucc(vplus(Vd68,Vd69)) ).

fof('ass(cond(goal(193), 0), 1)',axiom,
    ! [Vd301,Vd302,Vd303] :
      ( vplus(Vd302,Vd303) = vplus(Vd301,Vd303)
     <= Vd302 = Vd301 ) ).

fof('qu(cond(conseq(axiom(3)), 32), and(holds(definiens(249), 399, 0), holds(definiens(249), 398, 0)))',axiom,
    ! [Vd396,Vd397] :
      ( vplus(vmul(Vd396,Vd397),Vd396) = vmul(Vd396,vsucc(Vd397))
      & Vd396 = vmul(Vd396,v1) ) ).

fof('ass(cond(goal(177), 0), 0)',axiom,
    ! [Vd281,Vd282,Vd283] :
      ( less(Vd281,Vd283)
     <= ( ( leq(Vd282,Vd283)
          & less(Vd281,Vd282) )
        | ( leq(Vd281,Vd282)
          & less(Vd282,Vd283) ) ) ) ).

fof('ass(cond(234, 0), 0)',axiom,
    ! [Vd375,Vd376] :
      ( geq(Vd375,vplus(Vd376,v1))
     <= greater(Vd375,Vd376) ) ).

fof('ass(cond(261, 0), 0)',axiom,
    ! [Vd408,Vd409] : vplus(vmul(Vd408,Vd409),Vd409) = vmul(vsucc(Vd408),Vd409) ).

fof('def(cond(conseq(axiom(3)), 11), 1)',axiom,
    ! [Vd193,Vd194] :
      ( ? [Vd196] : Vd194 = vplus(Vd193,Vd196)
    <=> greater(Vd194,Vd193) ) ).

fof('ass(cond(conjunct2(conjunct2(307)), 0), 0)',axiom,
    ! [Vd496,Vd497,Vd498] :
      ( less(Vd496,Vd498)
     <= less(vmul(Vd496,Vd497),vmul(Vd498,Vd497)) ) ).

