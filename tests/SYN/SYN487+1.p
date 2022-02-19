

%--------------------------------------------------------------------------
% File     : SYN487+1 : TPTP v7.4.0. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=76, K=3, D=1, P=0, Index=085
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-76-3-1-085.dfg [Wei97]

% Status   : Theorem
% Rating   : 0.00 v6.1.0, 0.33 v6.0.0, 0.00 v5.5.0, 0.33 v5.3.0, 0.27 v5.2.0, 0.00 v4.1.0, 0.44 v4.0.1, 0.42 v4.0.0, 0.45 v3.7.0, 0.67 v3.5.0, 0.38 v3.4.0, 0.25 v3.3.0, 0.22 v3.2.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.33 v2.6.0, 0.00 v2.5.0, 0.33 v2.4.0, 0.33 v2.2.1, 0.50 v2.2.0, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  674 (   0 equality)
%            Maximal formula depth :  110 ( 110 average)
%            Number of connectives :  906 ( 233 ~  ; 374  |; 202  &)
%                                         (   0 <=>;  97 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   37 (  33 propositional; 0-1 arity)
%            Number of functors    :   32 (  32 constant; 0-0 arity)
%            Number of variables   :   97 (   0 singleton;  97 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_EPR_NEQ

% Comments : These ALC problems have been translated from propositional
%            multi-modal K logic formulae generated according to the scheme
%            described in [HS97], using the optimized functional translation
%            described in [OS95]. The finite model property holds, the
%            Herbrand Universe is finite, they are decidable (the complexity
%            is PSPACE-complete), resolution + subsumption + condensing is a
%            decision procedure, and the translated formulae belong to the
%            (CNF-translation of the) Bernays-Schoenfinkel class [Wei97].
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ~ ( ( ~ hskp0
          | ( ndr1_0
            & c1_1(a2276)
            & c3_1(a2276)
            & ~ c0_1(a2276) ) )
        & ( ~ hskp1
          | ( ndr1_0
            & c0_1(a2277)
            & c1_1(a2277)
            & ~ c2_1(a2277) ) )
        & ( ~ hskp2
          | ( ndr1_0
            & c0_1(a2279)
            & ~ c2_1(a2279)
            & ~ c3_1(a2279) ) )
        & ( ~ hskp3
          | ( ndr1_0
            & c1_1(a2280)
            & c3_1(a2280)
            & ~ c2_1(a2280) ) )
        & ( ~ hskp4
          | ( ndr1_0
            & c2_1(a2282)
            & ~ c0_1(a2282)
            & ~ c3_1(a2282) ) )
        & ( ~ hskp5
          | ( ndr1_0
            & ~ c0_1(a2284)
            & ~ c1_1(a2284)
            & ~ c3_1(a2284) ) )
        & ( ~ hskp6
          | ( ndr1_0
            & c0_1(a2285)
            & c1_1(a2285)
            & ~ c3_1(a2285) ) )
        & ( ~ hskp7
          | ( ndr1_0
            & c1_1(a2286)
            & ~ c0_1(a2286)
            & ~ c2_1(a2286) ) )
        & ( ~ hskp8
          | ( ndr1_0
            & c0_1(a2287)
            & c2_1(a2287)
            & ~ c1_1(a2287) ) )
        & ( ~ hskp9
          | ( ndr1_0
            & ~ c0_1(a2291)
            & ~ c1_1(a2291)
            & ~ c2_1(a2291) ) )
        & ( ~ hskp10
          | ( ndr1_0
            & c0_1(a2293)
            & c2_1(a2293)
            & ~ c3_1(a2293) ) )
        & ( ~ hskp11
          | ( ndr1_0
            & c0_1(a2294)
            & ~ c1_1(a2294)
            & ~ c2_1(a2294) ) )
        & ( ~ hskp12
          | ( ndr1_0
            & c0_1(a2295)
            & ~ c1_1(a2295)
            & ~ c3_1(a2295) ) )
        & ( ~ hskp13
          | ( ndr1_0
            & c2_1(a2299)
            & ~ c1_1(a2299)
            & ~ c3_1(a2299) ) )
        & ( ~ hskp14
          | ( ndr1_0
            & c2_1(a2302)
            & c3_1(a2302)
            & ~ c0_1(a2302) ) )
        & ( ~ hskp15
          | ( ndr1_0
            & c1_1(a2303)
            & c2_1(a2303)
            & ~ c3_1(a2303) ) )
        & ( ~ hskp16
          | ( ndr1_0
            & ~ c0_1(a2304)
            & ~ c2_1(a2304)
            & ~ c3_1(a2304) ) )
        & ( ~ hskp17
          | ( ndr1_0
            & ~ c1_1(a2306)
            & ~ c2_1(a2306)
            & ~ c3_1(a2306) ) )
        & ( ~ hskp18
          | ( ndr1_0
            & c3_1(a2308)
            & ~ c1_1(a2308)
            & ~ c2_1(a2308) ) )
        & ( ~ hskp19
          | ( ndr1_0
            & c1_1(a2316)
            & ~ c2_1(a2316)
            & ~ c3_1(a2316) ) )
        & ( ~ hskp20
          | ( ndr1_0
            & c2_1(a2323)
            & c3_1(a2323)
            & ~ c1_1(a2323) ) )
        & ( ~ hskp21
          | ( ndr1_0
            & c1_1(a2324)
            & ~ c0_1(a2324)
            & ~ c3_1(a2324) ) )
        & ( ~ hskp22
          | ( ndr1_0
            & c2_1(a2325)
            & ~ c0_1(a2325)
            & ~ c1_1(a2325) ) )
        & ( ~ hskp23
          | ( ndr1_0
            & c3_1(a2327)
            & ~ c0_1(a2327)
            & ~ c2_1(a2327) ) )
        & ( ~ hskp24
          | ( ndr1_0
            & c0_1(a2337)
            & c3_1(a2337)
            & ~ c1_1(a2337) ) )
        & ( ~ hskp25
          | ( ndr1_0
            & c0_1(a2342)
            & c3_1(a2342)
            & ~ c2_1(a2342) ) )
        & ( ~ hskp26
          | ( ndr1_0
            & c3_1(a2345)
            & ~ c0_1(a2345)
            & ~ c1_1(a2345) ) )
        & ( ~ hskp27
          | ( ndr1_0
            & c1_1(a2367)
            & c2_1(a2367)
            & ~ c0_1(a2367) ) )
        & ( ~ hskp28
          | ( ndr1_0
            & c0_1(a2278)
            & c1_1(a2278)
            & c3_1(a2278) ) )
        & ( ~ hskp29
          | ( ndr1_0
            & c0_1(a2309)
            & c1_1(a2309)
            & c2_1(a2309) ) )
        & ( ~ hskp30
          | ( ndr1_0
            & c1_1(a2315)
            & c2_1(a2315)
            & c3_1(a2315) ) )
        & ( ~ hskp31
          | ( ndr1_0
            & c0_1(a2387)
            & c2_1(a2387)
            & c3_1(a2387) ) )
        & ( ! [U] :
              ( ndr1_0
             => ( c0_1(U)
                | c1_1(U)
                | c2_1(U) ) )
          | ! [V] :
              ( ndr1_0
             => ( c0_1(V)
                | c1_1(V)
                | ~ c3_1(V) ) )
          | hskp0 )
        & ( ! [W] :
              ( ndr1_0
             => ( c0_1(W)
                | c1_1(W)
                | c2_1(W) ) )
          | ! [X] :
              ( ndr1_0
             => ( c1_1(X)
                | c3_1(X)
                | ~ c2_1(X) ) )
          | hskp1 )
        & ( ! [Y] :
              ( ndr1_0
             => ( c0_1(Y)
                | c1_1(Y)
                | c2_1(Y) ) )
          | ! [Z] :
              ( ndr1_0
             => ( c2_1(Z)
                | ~ c1_1(Z)
                | ~ c3_1(Z) ) )
          | hskp28 )
        & ( ! [X1] :
              ( ndr1_0
             => ( c0_1(X1)
                | c1_1(X1)
                | c2_1(X1) ) )
          | hskp2
          | hskp3 )
        & ( ! [X2] :
              ( ndr1_0
             => ( c0_1(X2)
                | c1_1(X2)
                | c2_1(X2) ) )
          | hskp0
          | hskp4 )
        & ( ! [X3] :
              ( ndr1_0
             => ( c0_1(X3)
                | c1_1(X3)
                | ~ c2_1(X3) ) )
          | ! [X4] :
              ( ndr1_0
             => ( c1_1(X4)
                | ~ c2_1(X4)
                | ~ c3_1(X4) ) )
          | ! [X5] :
              ( ndr1_0
             => ( c2_1(X5)
                | ~ c1_1(X5)
                | ~ c3_1(X5) ) ) )
        & ( ! [X6] :
              ( ndr1_0
             => ( c0_1(X6)
                | c1_1(X6)
                | ~ c2_1(X6) ) )
          | ! [X7] :
              ( ndr1_0
             => ( c2_1(X7)
                | ~ c1_1(X7)
                | ~ c3_1(X7) ) )
          | hskp1 )
        & ( ! [X8] :
              ( ndr1_0
             => ( c0_1(X8)
                | c1_1(X8)
                | ~ c3_1(X8) ) )
          | ! [X9] :
              ( ndr1_0
             => ( c3_1(X9)
                | ~ c0_1(X9)
                | ~ c2_1(X9) ) )
          | hskp5 )
        & ( ! [X10] :
              ( ndr1_0
             => ( c0_1(X10)
                | c1_1(X10)
                | ~ c3_1(X10) ) )
          | hskp6
          | hskp7 )
        & ( ! [X11] :
              ( ndr1_0
             => ( c0_1(X11)
                | c1_1(X11)
                | ~ c3_1(X11) ) )
          | hskp8
          | hskp7 )
        & ( ! [X12] :
              ( ndr1_0
             => ( c0_1(X12)
                | c2_1(X12)
                | c3_1(X12) ) )
          | ! [X13] :
              ( ndr1_0
             => ( c0_1(X13)
                | c2_1(X13)
                | ~ c3_1(X13) ) )
          | ! [X14] :
              ( ndr1_0
             => ( c0_1(X14)
                | ~ c1_1(X14)
                | ~ c2_1(X14) ) ) )
        & ( ! [X15] :
              ( ndr1_0
             => ( c0_1(X15)
                | c2_1(X15)
                | c3_1(X15) ) )
          | ! [X16] :
              ( ndr1_0
             => ( c1_1(X16)
                | c3_1(X16)
                | ~ c0_1(X16) ) )
          | hskp5 )
        & ( ! [X17] :
              ( ndr1_0
             => ( c0_1(X17)
                | c2_1(X17)
                | c3_1(X17) ) )
          | hskp28
          | hskp9 )
        & ( ! [X18] :
              ( ndr1_0
             => ( c0_1(X18)
                | c2_1(X18)
                | c3_1(X18) ) )
          | hskp6
          | hskp10 )
        & ( ! [X19] :
              ( ndr1_0
             => ( c0_1(X19)
                | c2_1(X19)
                | c3_1(X19) ) )
          | hskp11
          | hskp12 )
        & ( ! [X20] :
              ( ndr1_0
             => ( c0_1(X20)
                | c2_1(X20)
                | ~ c1_1(X20) ) )
          | hskp28
          | hskp8 )
        & ( ! [X21] :
              ( ndr1_0
             => ( c0_1(X21)
                | c2_1(X21)
                | ~ c3_1(X21) ) )
          | hskp4
          | hskp13 )
        & ( ! [X22] :
              ( ndr1_0
             => ( c0_1(X22)
                | c3_1(X22)
                | ~ c1_1(X22) ) )
          | ! [X23] :
              ( ndr1_0
             => ( c2_1(X23)
                | c3_1(X23)
                | ~ c0_1(X23) ) )
          | hskp11 )
        & ( ! [X24] :
              ( ndr1_0
             => ( c0_1(X24)
                | c3_1(X24)
                | ~ c1_1(X24) ) )
          | hskp1
          | hskp14 )
        & ( ! [X25] :
              ( ndr1_0
             => ( c0_1(X25)
                | c3_1(X25)
                | ~ c1_1(X25) ) )
          | hskp15
          | hskp16 )
        & ( ! [X26] :
              ( ndr1_0
             => ( c0_1(X26)
                | c3_1(X26)
                | ~ c2_1(X26) ) )
          | hskp14
          | hskp17 )
        & ( ! [X27] :
              ( ndr1_0
             => ( c0_1(X27)
                | ~ c1_1(X27)
                | ~ c2_1(X27) ) )
          | ! [X28] :
              ( ndr1_0
             => ( c2_1(X28)
                | c3_1(X28)
                | ~ c1_1(X28) ) )
          | hskp17 )
        & ( ! [X29] :
              ( ndr1_0
             => ( c0_1(X29)
                | ~ c1_1(X29)
                | ~ c2_1(X29) ) )
          | ! [X30] :
              ( ndr1_0
             => ( c3_1(X30)
                | ~ c0_1(X30)
                | ~ c2_1(X30) ) )
          | ! [X31] :
              ( ndr1_0
             => ( c3_1(X31)
                | ~ c1_1(X31)
                | ~ c2_1(X31) ) ) )
        & ( ! [X32] :
              ( ndr1_0
             => ( c0_1(X32)
                | ~ c1_1(X32)
                | ~ c2_1(X32) ) )
          | ! [X33] :
              ( ndr1_0
             => ( ~ c0_1(X33)
                | ~ c2_1(X33)
                | ~ c3_1(X33) ) )
          | hskp18 )
        & ( ! [X34] :
              ( ndr1_0
             => ( c0_1(X34)
                | ~ c1_1(X34)
                | ~ c2_1(X34) ) )
          | hskp29
          | hskp8 )
        & ( ! [X35] :
              ( ndr1_0
             => ( c0_1(X35)
                | ~ c1_1(X35)
                | ~ c3_1(X35) ) )
          | ! [X36] :
              ( ndr1_0
             => ( c0_1(X36)
                | ~ c2_1(X36)
                | ~ c3_1(X36) ) )
          | hskp0 )
        & ( ! [X37] :
              ( ndr1_0
             => ( c0_1(X37)
                | ~ c1_1(X37)
                | ~ c3_1(X37) ) )
          | hskp14
          | hskp17 )
        & ( ! [X38] :
              ( ndr1_0
             => ( c0_1(X38)
                | ~ c2_1(X38)
                | ~ c3_1(X38) ) )
          | ! [X39] :
              ( ndr1_0
             => ( c1_1(X39)
                | c3_1(X39)
                | ~ c0_1(X39) ) )
          | hskp8 )
        & ( ! [X40] :
              ( ndr1_0
             => ( c0_1(X40)
                | ~ c2_1(X40)
                | ~ c3_1(X40) ) )
          | ! [X41] :
              ( ndr1_0
             => ( c1_1(X41)
                | c3_1(X41)
                | ~ c2_1(X41) ) )
          | hskp30 )
        & ( ! [X42] :
              ( ndr1_0
             => ( c0_1(X42)
                | ~ c2_1(X42)
                | ~ c3_1(X42) ) )
          | ! [X43] :
              ( ndr1_0
             => ( c2_1(X43)
                | c3_1(X43)
                | ~ c1_1(X43) ) )
          | hskp19 )
        & ( ! [X44] :
              ( ndr1_0
             => ( c0_1(X44)
                | ~ c2_1(X44)
                | ~ c3_1(X44) ) )
          | hskp29
          | hskp8 )
        & ( ! [X45] :
              ( ndr1_0
             => ( c0_1(X45)
                | ~ c2_1(X45)
                | ~ c3_1(X45) ) )
          | hskp12
          | hskp13 )
        & ( ! [X46] :
              ( ndr1_0
             => ( c0_1(X46)
                | ~ c2_1(X46)
                | ~ c3_1(X46) ) )
          | hskp30
          | hskp19 )
        & ( ! [X47] :
              ( ndr1_0
             => ( c0_1(X47)
                | ~ c2_1(X47)
                | ~ c3_1(X47) ) )
          | hskp20 )
        & ( ! [X48] :
              ( ndr1_0
             => ( c1_1(X48)
                | c2_1(X48)
                | c3_1(X48) ) )
          | ! [X49] :
              ( ndr1_0
             => ( c2_1(X49)
                | ~ c0_1(X49)
                | ~ c3_1(X49) ) )
          | ! [X50] :
              ( ndr1_0
             => ( ~ c0_1(X50)
                | ~ c1_1(X50)
                | ~ c2_1(X50) ) ) )
        & ( ! [X51] :
              ( ndr1_0
             => ( c1_1(X51)
                | c2_1(X51)
                | c3_1(X51) ) )
          | hskp21
          | hskp22 )
        & ( ! [X52] :
              ( ndr1_0
             => ( c1_1(X52)
                | c2_1(X52)
                | ~ c0_1(X52) ) )
          | ! [X53] :
              ( ndr1_0
             => ( ~ c0_1(X53)
                | ~ c2_1(X53)
                | ~ c3_1(X53) ) )
          | hskp0 )
        & ( ! [X54] :
              ( ndr1_0
             => ( c1_1(X54)
                | c3_1(X54)
                | ~ c0_1(X54) ) )
          | ! [X55] :
              ( ndr1_0
             => ( c2_1(X55)
                | c3_1(X55)
                | ~ c0_1(X55) ) )
          | hskp23 )
        & ( ! [X56] :
              ( ndr1_0
             => ( c1_1(X56)
                | c3_1(X56)
                | ~ c0_1(X56) ) )
          | ! [X57] :
              ( ndr1_0
             => ( ~ c0_1(X57)
                | ~ c1_1(X57)
                | ~ c2_1(X57) ) )
          | hskp1 )
        & ( ! [X58] :
              ( ndr1_0
             => ( c1_1(X58)
                | c3_1(X58)
                | ~ c0_1(X58) ) )
          | hskp12 )
        & ( ! [X59] :
              ( ndr1_0
             => ( c1_1(X59)
                | c3_1(X59)
                | ~ c2_1(X59) ) )
          | ! [X60] :
              ( ndr1_0
             => ( c3_1(X60)
                | ~ c0_1(X60)
                | ~ c1_1(X60) ) )
          | hskp23 )
        & ( ! [X61] :
              ( ndr1_0
             => ( c1_1(X61)
                | c3_1(X61)
                | ~ c2_1(X61) ) )
          | ! [X62] :
              ( ndr1_0
             => ( ~ c0_1(X62)
                | ~ c1_1(X62)
                | ~ c3_1(X62) ) )
          | hskp0 )
        & ( ! [X63] :
              ( ndr1_0
             => ( c1_1(X63)
                | ~ c0_1(X63)
                | ~ c2_1(X63) ) )
          | ! [X64] :
              ( ndr1_0
             => ( c3_1(X64)
                | ~ c0_1(X64)
                | ~ c2_1(X64) ) )
          | hskp12 )
        & ( ! [X65] :
              ( ndr1_0
             => ( c1_1(X65)
                | ~ c0_1(X65)
                | ~ c3_1(X65) ) )
          | ! [X66] :
              ( ndr1_0
             => ( c2_1(X66)
                | ~ c0_1(X66)
                | ~ c1_1(X66) ) )
          | ! [X67] :
              ( ndr1_0
             => ( ~ c0_1(X67)
                | ~ c1_1(X67)
                | ~ c3_1(X67) ) ) )
        & ( ! [X68] :
              ( ndr1_0
             => ( c1_1(X68)
                | ~ c0_1(X68)
                | ~ c3_1(X68) ) )
          | hskp19
          | hskp4 )
        & ( ! [X69] :
              ( ndr1_0
             => ( c1_1(X69)
                | ~ c2_1(X69)
                | ~ c3_1(X69) ) )
          | hskp1
          | hskp4 )
        & ( ! [X70] :
              ( ndr1_0
             => ( c1_1(X70)
                | ~ c2_1(X70)
                | ~ c3_1(X70) ) )
          | hskp24
          | hskp21 )
        & ( ! [X71] :
              ( ndr1_0
             => ( c1_1(X71)
                | ~ c2_1(X71)
                | ~ c3_1(X71) ) )
          | hskp3
          | hskp4 )
        & ( ! [X72] :
              ( ndr1_0
             => ( c2_1(X72)
                | c3_1(X72)
                | ~ c0_1(X72) ) )
          | ! [X73] :
              ( ndr1_0
             => ( c2_1(X73)
                | ~ c0_1(X73)
                | ~ c1_1(X73) ) )
          | hskp14 )
        & ( ! [X74] :
              ( ndr1_0
             => ( c2_1(X74)
                | c3_1(X74)
                | ~ c0_1(X74) ) )
          | ! [X75] :
              ( ndr1_0
             => ( c3_1(X75)
                | ~ c0_1(X75)
                | ~ c2_1(X75) ) )
          | hskp25 )
        & ( ! [X76] :
              ( ndr1_0
             => ( c2_1(X76)
                | c3_1(X76)
                | ~ c0_1(X76) ) )
          | hskp24
          | hskp25 )
        & ( ! [X77] :
              ( ndr1_0
             => ( c2_1(X77)
                | c3_1(X77)
                | ~ c1_1(X77) ) )
          | ! [X78] :
              ( ndr1_0
             => ( ~ c0_1(X78)
                | ~ c1_1(X78)
                | ~ c3_1(X78) ) )
          | hskp26 )
        & ( ! [X79] :
              ( ndr1_0
             => ( c2_1(X79)
                | ~ c0_1(X79)
                | ~ c3_1(X79) ) )
          | hskp12
          | hskp19 )
        & ( ! [X80] :
              ( ndr1_0
             => ( c2_1(X80)
                | ~ c1_1(X80)
                | ~ c3_1(X80) ) )
          | hskp30
          | hskp21 )
        & ( ! [X81] :
              ( ndr1_0
             => ( c3_1(X81)
                | ~ c0_1(X81)
                | ~ c1_1(X81) ) )
          | ! [X82] :
              ( ndr1_0
             => ( ~ c0_1(X82)
                | ~ c2_1(X82)
                | ~ c3_1(X82) ) )
          | hskp3 )
        & ( ! [X83] :
              ( ndr1_0
             => ( c3_1(X83)
                | ~ c0_1(X83)
                | ~ c1_1(X83) ) )
          | hskp21
          | hskp16 )
        & ( ! [X84] :
              ( ndr1_0
             => ( c3_1(X84)
                | ~ c0_1(X84)
                | ~ c2_1(X84) ) )
          | hskp2
          | hskp4 )
        & ( ! [X85] :
              ( ndr1_0
             => ( c3_1(X85)
                | ~ c0_1(X85)
                | ~ c2_1(X85) ) )
          | hskp30
          | hskp16 )
        & ( ! [X86] :
              ( ndr1_0
             => ( c3_1(X86)
                | ~ c1_1(X86)
                | ~ c2_1(X86) ) )
          | hskp7
          | hskp19 )
        & ( ! [X87] :
              ( ndr1_0
             => ( ~ c0_1(X87)
                | ~ c1_1(X87)
                | ~ c2_1(X87) ) )
          | hskp2
          | hskp18 )
        & ( ! [X88] :
              ( ndr1_0
             => ( ~ c0_1(X88)
                | ~ c1_1(X88)
                | ~ c2_1(X88) ) )
          | hskp13
          | hskp18 )
        & ( ! [X89] :
              ( ndr1_0
             => ( ~ c1_1(X89)
                | ~ c2_1(X89)
                | ~ c3_1(X89) ) )
          | hskp8
          | hskp5 )
        & ( ! [X90] :
              ( ndr1_0
             => ( ~ c1_1(X90)
                | ~ c2_1(X90)
                | ~ c3_1(X90) ) )
          | hskp25
          | hskp23 )
        & ( ! [X91] :
              ( ndr1_0
             => ( ~ c1_1(X91)
                | ~ c2_1(X91)
                | ~ c3_1(X91) ) )
          | hskp27
          | hskp9 )
        & ( hskp29
          | hskp27
          | hskp3 )
        & ( hskp28
          | hskp0
          | hskp13 )
        & ( hskp28
          | hskp26
          | hskp16 )
        & ( hskp1
          | hskp14
          | hskp20 )
        & ( hskp6
          | hskp11
          | hskp30 )
        & ( hskp6
          | hskp12
          | hskp0 )
        & ( hskp31
          | hskp7
          | hskp14 )
        & ( hskp31
          | hskp22
          | hskp18 )
        & ( hskp8
          | hskp10
          | hskp19 )
        & ( hskp24
          | hskp22
          | hskp13 )
        & ( hskp3
          | hskp14
          | hskp22 ) ) )).

%--------------------------------------------------------------------------

