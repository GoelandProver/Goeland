%--------------------------------------------------------------------------
% File     : SYN434+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=40, K=3, D=1, P=0, Index=037
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-40-3-1-037.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.40 v5.3.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.50 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.33 v3.3.0, 0.17 v3.2.0, 0.25 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  564 (   0 equ)
%            Maximal formula atoms :  564 ( 564 avg)
%            Number of connectives :  782 ( 219   ~; 252   |; 251   &)
%                                         (   0 <=>;  60  =>;   0  <=;   0 <~>)
%            Maximal formula depth :  101 ( 101 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   58 (  58 usr;  54 prp; 0-1 aty)
%            Number of functors    :   53 (  53 usr;  53 con; 0-0 aty)
%            Number of variables   :   60 (  60   !;   0   ?)
% SPC      : FOF_CSA_EPR_NEQ

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
    ~ ( ( ~ hskp0
        | ( ndr1_0
          & ~ c1_1(a223)
          & ~ c2_1(a223)
          & ~ c3_1(a223) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & c1_1(a226)
          & c3_1(a226)
          & ~ c2_1(a226) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & ~ c3_1(a227)
          & c1_1(a227)
          & ~ c0_1(a227) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c1_1(a228)
          & ~ c3_1(a228)
          & ~ c0_1(a228) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c0_1(a229)
          & c2_1(a229)
          & ~ c1_1(a229) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c1_1(a230)
          & c3_1(a230)
          & ~ c0_1(a230) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & c2_1(a233)
          & ~ c1_1(a233)
          & ~ c0_1(a233) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & ~ c3_1(a234)
          & c0_1(a234)
          & ~ c1_1(a234) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c2_1(a238)
          & c0_1(a238)
          & ~ c3_1(a238) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & ~ c2_1(a239)
          & ~ c1_1(a239)
          & ~ c3_1(a239) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & c1_1(a240)
          & c0_1(a240)
          & ~ c3_1(a240) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c0_1(a243)
          & c1_1(a243)
          & ~ c2_1(a243) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c0_1(a245)
          & c3_1(a245)
          & ~ c1_1(a245) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c1_1(a246)
          & ~ c3_1(a246)
          & ~ c2_1(a246) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & c2_1(a249)
          & c0_1(a249)
          & ~ c1_1(a249) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & ~ c3_1(a252)
          & c0_1(a252)
          & ~ c2_1(a252) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c3_1(a253)
          & ~ c2_1(a253)
          & ~ c1_1(a253) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c2_1(a255)
          & c3_1(a255)
          & ~ c1_1(a255) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & c2_1(a263)
          & c1_1(a263)
          & ~ c3_1(a263) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & c0_1(a264)
          & ~ c2_1(a264)
          & ~ c1_1(a264) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & ~ c1_1(a268)
          & ~ c3_1(a268)
          & ~ c2_1(a268) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & ~ c0_1(a271)
          & ~ c1_1(a271)
          & ~ c2_1(a271) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & ~ c3_1(a277)
          & c1_1(a277)
          & ~ c2_1(a277) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & ~ c1_1(a278)
          & c2_1(a278)
          & ~ c0_1(a278) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & ~ c2_1(a281)
          & c0_1(a281)
          & ~ c1_1(a281) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & ~ c2_1(a224)
          & ~ c1_1(a224)
          & c0_1(a224) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & ~ c0_1(a225)
          & c3_1(a225)
          & c2_1(a225) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c1_1(a231)
          & c2_1(a231)
          & c0_1(a231) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & ~ c3_1(a232)
          & c0_1(a232)
          & c2_1(a232) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & ~ c2_1(a235)
          & ~ c3_1(a235)
          & c0_1(a235) ) )
      & ( ~ hskp30
        | ( ndr1_0
          & ~ c2_1(a236)
          & c0_1(a236)
          & c1_1(a236) ) )
      & ( ~ hskp31
        | ( ndr1_0
          & ~ c0_1(a237)
          & c2_1(a237)
          & c3_1(a237) ) )
      & ( ~ hskp32
        | ( ndr1_0
          & ~ c0_1(a242)
          & ~ c2_1(a242)
          & c1_1(a242) ) )
      & ( ~ hskp33
        | ( ndr1_0
          & ~ c3_1(a244)
          & ~ c1_1(a244)
          & c0_1(a244) ) )
      & ( ~ hskp34
        | ( ndr1_0
          & c3_1(a247)
          & c0_1(a247)
          & c1_1(a247) ) )
      & ( ~ hskp35
        | ( ndr1_0
          & ~ c1_1(a248)
          & ~ c3_1(a248)
          & c0_1(a248) ) )
      & ( ~ hskp36
        | ( ndr1_0
          & ~ c3_1(a250)
          & ~ c2_1(a250)
          & c1_1(a250) ) )
      & ( ~ hskp37
        | ( ndr1_0
          & ~ c1_1(a251)
          & ~ c0_1(a251)
          & c3_1(a251) ) )
      & ( ~ hskp38
        | ( ndr1_0
          & c2_1(a254)
          & ~ c0_1(a254)
          & c3_1(a254) ) )
      & ( ~ hskp39
        | ( ndr1_0
          & c3_1(a256)
          & c2_1(a256)
          & c1_1(a256) ) )
      & ( ~ hskp40
        | ( ndr1_0
          & ~ c3_1(a257)
          & ~ c1_1(a257)
          & c2_1(a257) ) )
      & ( ~ hskp41
        | ( ndr1_0
          & c2_1(a258)
          & c0_1(a258)
          & c1_1(a258) ) )
      & ( ~ hskp42
        | ( ndr1_0
          & ~ c2_1(a260)
          & ~ c0_1(a260)
          & c3_1(a260) ) )
      & ( ~ hskp43
        | ( ndr1_0
          & c2_1(a261)
          & c1_1(a261)
          & c0_1(a261) ) )
      & ( ~ hskp44
        | ( ndr1_0
          & ~ c0_1(a262)
          & ~ c1_1(a262)
          & c3_1(a262) ) )
      & ( ~ hskp45
        | ( ndr1_0
          & c0_1(a265)
          & ~ c3_1(a265)
          & c1_1(a265) ) )
      & ( ~ hskp46
        | ( ndr1_0
          & c0_1(a266)
          & c1_1(a266)
          & c3_1(a266) ) )
      & ( ~ hskp47
        | ( ndr1_0
          & c1_1(a269)
          & c3_1(a269)
          & c0_1(a269) ) )
      & ( ~ hskp48
        | ( ndr1_0
          & ~ c0_1(a270)
          & ~ c3_1(a270)
          & c1_1(a270) ) )
      & ( ~ hskp49
        | ( ndr1_0
          & ~ c2_1(a272)
          & ~ c1_1(a272)
          & c3_1(a272) ) )
      & ( ~ hskp50
        | ( ndr1_0
          & c3_1(a273)
          & c1_1(a273)
          & c2_1(a273) ) )
      & ( ~ hskp51
        | ( ndr1_0
          & ~ c1_1(a276)
          & ~ c2_1(a276)
          & c3_1(a276) ) )
      & ( ~ hskp52
        | ( ndr1_0
          & c0_1(a279)
          & c3_1(a279)
          & c2_1(a279) ) )
      & ( hskp0
        | hskp25
        | hskp26 )
      & ( ! [U] :
            ( ndr1_0
           => ( c1_1(U)
              | c0_1(U)
              | ~ c2_1(U) ) )
        | ! [V] :
            ( ndr1_0
           => ( c0_1(V)
              | c3_1(V)
              | ~ c2_1(V) ) )
        | hskp1 )
      & ( hskp2
        | hskp3
        | hskp4 )
      & ( ! [W] :
            ( ndr1_0
           => ( ~ c0_1(W)
              | ~ c1_1(W)
              | c2_1(W) ) )
        | hskp5
        | ! [X] :
            ( ndr1_0
           => ( ~ c2_1(X)
              | c3_1(X)
              | ~ c1_1(X) ) ) )
      & ( ! [Y] :
            ( ndr1_0
           => ( ~ c0_1(Y)
              | c3_1(Y)
              | ~ c2_1(Y) ) )
        | hskp27
        | hskp28 )
      & ( ! [Z] :
            ( ndr1_0
           => ( ~ c2_1(Z)
              | c3_1(Z)
              | c1_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( ~ c3_1(X1)
              | c0_1(X1)
              | c2_1(X1) ) )
        | ! [X2] :
            ( ndr1_0
           => ( c3_1(X2)
              | c0_1(X2)
              | c2_1(X2) ) ) )
      & ( ! [X3] :
            ( ndr1_0
           => ( c0_1(X3)
              | ~ c2_1(X3)
              | c1_1(X3) ) )
        | hskp6
        | ! [X4] :
            ( ndr1_0
           => ( c3_1(X4)
              | ~ c2_1(X4)
              | ~ c1_1(X4) ) ) )
      & ( ! [X5] :
            ( ndr1_0
           => ( c1_1(X5)
              | c3_1(X5)
              | c2_1(X5) ) )
        | ! [X6] :
            ( ndr1_0
           => ( c3_1(X6)
              | ~ c0_1(X6)
              | ~ c2_1(X6) ) )
        | ! [X7] :
            ( ndr1_0
           => ( c0_1(X7)
              | c2_1(X7)
              | ~ c1_1(X7) ) ) )
      & ( ! [X8] :
            ( ndr1_0
           => ( ~ c1_1(X8)
              | ~ c0_1(X8)
              | ~ c2_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( c0_1(X9)
              | c1_1(X9)
              | ~ c3_1(X9) ) )
        | hskp7 )
      & ( ! [X10] :
            ( ndr1_0
           => ( c1_1(X10)
              | c2_1(X10)
              | c0_1(X10) ) )
        | ! [X11] :
            ( ndr1_0
           => ( ~ c1_1(X11)
              | ~ c3_1(X11)
              | c2_1(X11) ) )
        | hskp29 )
      & ( hskp30
        | ! [X12] :
            ( ndr1_0
           => ( ~ c1_1(X12)
              | ~ c2_1(X12)
              | c3_1(X12) ) ) )
      & ( hskp31
        | ! [X13] :
            ( ndr1_0
           => ( c1_1(X13)
              | c0_1(X13)
              | ~ c2_1(X13) ) )
        | hskp8 )
      & ( ! [X14] :
            ( ndr1_0
           => ( ~ c2_1(X14)
              | c3_1(X14)
              | ~ c0_1(X14) ) )
        | ! [X15] :
            ( ndr1_0
           => ( c1_1(X15)
              | ~ c0_1(X15)
              | c2_1(X15) ) )
        | hskp9 )
      & ( hskp10
        | ! [X16] :
            ( ndr1_0
           => ( c3_1(X16)
              | c1_1(X16)
              | c2_1(X16) ) )
        | hskp8 )
      & ( hskp32
        | ! [X17] :
            ( ndr1_0
           => ( ~ c3_1(X17)
              | ~ c1_1(X17)
              | ~ c2_1(X17) ) )
        | hskp11 )
      & ( ! [X18] :
            ( ndr1_0
           => ( ~ c1_1(X18)
              | ~ c0_1(X18)
              | ~ c2_1(X18) ) )
        | ! [X19] :
            ( ndr1_0
           => ( c0_1(X19)
              | ~ c1_1(X19)
              | ~ c2_1(X19) ) )
        | ! [X20] :
            ( ndr1_0
           => ( ~ c3_1(X20)
              | c0_1(X20)
              | c1_1(X20) ) ) )
      & ( hskp33
        | ! [X21] :
            ( ndr1_0
           => ( c3_1(X21)
              | ~ c2_1(X21)
              | c1_1(X21) ) )
        | hskp12 )
      & ( ! [X22] :
            ( ndr1_0
           => ( c1_1(X22)
              | ~ c2_1(X22)
              | ~ c3_1(X22) ) )
        | hskp13
        | hskp34 )
      & ( ! [X23] :
            ( ndr1_0
           => ( ~ c2_1(X23)
              | c3_1(X23)
              | c1_1(X23) ) )
        | ! [X24] :
            ( ndr1_0
           => ( c0_1(X24)
              | c1_1(X24)
              | ~ c3_1(X24) ) )
        | hskp35 )
      & ( ! [X25] :
            ( ndr1_0
           => ( ~ c0_1(X25)
              | c2_1(X25)
              | ~ c1_1(X25) ) )
        | ! [X26] :
            ( ndr1_0
           => ( c1_1(X26)
              | c0_1(X26)
              | ~ c3_1(X26) ) )
        | hskp14 )
      & ( ! [X27] :
            ( ndr1_0
           => ( c3_1(X27)
              | ~ c0_1(X27)
              | ~ c2_1(X27) ) )
        | hskp36
        | hskp37 )
      & ( hskp15
        | ! [X28] :
            ( ndr1_0
           => ( c1_1(X28)
              | c3_1(X28)
              | c2_1(X28) ) )
        | hskp16 )
      & ( hskp38
        | ! [X29] :
            ( ndr1_0
           => ( ~ c3_1(X29)
              | ~ c2_1(X29)
              | ~ c1_1(X29) ) )
        | ! [X30] :
            ( ndr1_0
           => ( ~ c0_1(X30)
              | ~ c3_1(X30)
              | ~ c1_1(X30) ) ) )
      & ( ! [X31] :
            ( ndr1_0
           => ( c2_1(X31)
              | c0_1(X31)
              | ~ c1_1(X31) ) )
        | ! [X32] :
            ( ndr1_0
           => ( c2_1(X32)
              | ~ c3_1(X32)
              | ~ c0_1(X32) ) )
        | ! [X33] :
            ( ndr1_0
           => ( c3_1(X33)
              | ~ c1_1(X33)
              | c0_1(X33) ) ) )
      & ( hskp17
        | hskp39
        | hskp40 )
      & ( hskp41
        | hskp2
        | hskp42 )
      & ( hskp43
        | hskp44
        | ! [X34] :
            ( ndr1_0
           => ( c0_1(X34)
              | c1_1(X34)
              | ~ c3_1(X34) ) ) )
      & ( hskp18
        | ! [X35] :
            ( ndr1_0
           => ( c2_1(X35)
              | c3_1(X35)
              | ~ c1_1(X35) ) )
        | ! [X36] :
            ( ndr1_0
           => ( ~ c3_1(X36)
              | c0_1(X36)
              | c2_1(X36) ) ) )
      & ( ! [X37] :
            ( ndr1_0
           => ( c3_1(X37)
              | ~ c1_1(X37)
              | ~ c0_1(X37) ) )
        | ! [X38] :
            ( ndr1_0
           => ( ~ c3_1(X38)
              | ~ c1_1(X38)
              | ~ c2_1(X38) ) )
        | ! [X39] :
            ( ndr1_0
           => ( ~ c0_1(X39)
              | ~ c3_1(X39)
              | c1_1(X39) ) ) )
      & ( hskp19
        | hskp45
        | hskp46 )
      & ( ! [X40] :
            ( ndr1_0
           => ( c3_1(X40)
              | ~ c1_1(X40)
              | c2_1(X40) ) )
        | hskp16
        | ! [X41] :
            ( ndr1_0
           => ( ~ c0_1(X41)
              | ~ c1_1(X41)
              | c3_1(X41) ) ) )
      & ( ! [X42] :
            ( ndr1_0
           => ( c0_1(X42)
              | ~ c1_1(X42)
              | c2_1(X42) ) )
        | ! [X43] :
            ( ndr1_0
           => ( ~ c2_1(X43)
              | c1_1(X43)
              | c0_1(X43) ) )
        | ! [X44] :
            ( ndr1_0
           => ( c3_1(X44)
              | c0_1(X44)
              | c2_1(X44) ) ) )
      & ( hskp20
        | hskp47
        | hskp48 )
      & ( hskp21
        | ! [X45] :
            ( ndr1_0
           => ( c1_1(X45)
              | ~ c2_1(X45)
              | ~ c0_1(X45) ) )
        | ! [X46] :
            ( ndr1_0
           => ( c3_1(X46)
              | c2_1(X46)
              | c1_1(X46) ) ) )
      & ( hskp49
        | hskp50
        | hskp13 )
      & ( hskp40
        | ! [X47] :
            ( ndr1_0
           => ( c1_1(X47)
              | c3_1(X47)
              | ~ c0_1(X47) ) )
        | ! [X48] :
            ( ndr1_0
           => ( ~ c3_1(X48)
              | c2_1(X48)
              | ~ c0_1(X48) ) ) )
      & ( ! [X49] :
            ( ndr1_0
           => ( ~ c1_1(X49)
              | ~ c3_1(X49)
              | c2_1(X49) ) )
        | hskp51
        | ! [X50] :
            ( ndr1_0
           => ( c1_1(X50)
              | c0_1(X50)
              | ~ c3_1(X50) ) ) )
      & ( ! [X51] :
            ( ndr1_0
           => ( ~ c2_1(X51)
              | c1_1(X51)
              | ~ c0_1(X51) ) )
        | ! [X52] :
            ( ndr1_0
           => ( c3_1(X52)
              | ~ c2_1(X52)
              | ~ c0_1(X52) ) )
        | hskp22 )
      & ( hskp23
        | hskp52
        | hskp30 )
      & ( ! [X53] :
            ( ndr1_0
           => ( ~ c2_1(X53)
              | ~ c3_1(X53)
              | c0_1(X53) ) )
        | hskp24
        | ! [X54] :
            ( ndr1_0
           => ( c2_1(X54)
              | ~ c0_1(X54)
              | c1_1(X54) ) ) ) ) ).

%--------------------------------------------------------------------------
