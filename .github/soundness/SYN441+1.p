%--------------------------------------------------------------------------
% File     : SYN441+1 : TPTP v8.1.2. Released v2.1.0.
% Domain   : Syntactic (Translated)
% Problem  : ALC, N=4, R=1, L=60, K=3, D=1, P=0, Index=010
% Version  : Especial.
% English  :

% Refs     : [OS95]  Ohlbach & Schmidt (1995), Functional Translation and S
%          : [HS97]  Hustadt & Schmidt (1997), On Evaluating Decision Proce
%          : [Wei97] Weidenbach (1997), Email to G. Sutcliffe
% Source   : [Wei97]
% Names    : alc-4-1-60-3-1-010.dfg [Wei97]

% Status   : CounterSatisfiable
% Rating   : 0.00 v5.5.0, 0.40 v5.3.0, 0.50 v5.0.0, 0.33 v4.1.0, 0.67 v4.0.1, 0.33 v3.7.0, 0.00 v3.5.0, 0.25 v3.4.0, 0.33 v3.2.0, 0.25 v3.1.0, 0.50 v2.6.0, 0.25 v2.5.0, 0.33 v2.2.1, 0.00 v2.1.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 def)
%            Number of atoms       :  845 (   0 equ)
%            Maximal formula atoms :  845 ( 845 avg)
%            Number of connectives : 1178 ( 334   ~; 386   |; 363   &)
%                                         (   0 <=>;  95  =>;   0  <=;   0 <~>)
%            Maximal formula depth :  144 ( 144 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   81 (  81 usr;  77 prp; 0-1 aty)
%            Number of functors    :   76 (  76 usr;  76 con; 0-0 aty)
%            Number of variables   :   95 (  95   !;   0   ?)
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
          & ~ c1_1(a1818)
          & ~ c2_1(a1818)
          & ~ c3_1(a1818) ) )
      & ( ~ hskp1
        | ( ndr1_0
          & ~ c0_1(a1824)
          & ~ c3_1(a1824)
          & ~ c1_1(a1824) ) )
      & ( ~ hskp2
        | ( ndr1_0
          & c3_1(a1826)
          & c0_1(a1826)
          & ~ c1_1(a1826) ) )
      & ( ~ hskp3
        | ( ndr1_0
          & c3_1(a1828)
          & ~ c1_1(a1828)
          & ~ c0_1(a1828) ) )
      & ( ~ hskp4
        | ( ndr1_0
          & ~ c3_1(a1829)
          & ~ c1_1(a1829)
          & ~ c2_1(a1829) ) )
      & ( ~ hskp5
        | ( ndr1_0
          & c1_1(a1831)
          & ~ c0_1(a1831)
          & ~ c2_1(a1831) ) )
      & ( ~ hskp6
        | ( ndr1_0
          & ~ c3_1(a1832)
          & ~ c1_1(a1832)
          & ~ c0_1(a1832) ) )
      & ( ~ hskp7
        | ( ndr1_0
          & c3_1(a1833)
          & ~ c2_1(a1833)
          & ~ c1_1(a1833) ) )
      & ( ~ hskp8
        | ( ndr1_0
          & c1_1(a1837)
          & c0_1(a1837)
          & ~ c3_1(a1837) ) )
      & ( ~ hskp9
        | ( ndr1_0
          & c2_1(a1840)
          & c0_1(a1840)
          & ~ c3_1(a1840) ) )
      & ( ~ hskp10
        | ( ndr1_0
          & ~ c0_1(a1841)
          & c2_1(a1841)
          & ~ c1_1(a1841) ) )
      & ( ~ hskp11
        | ( ndr1_0
          & c3_1(a1843)
          & ~ c2_1(a1843)
          & ~ c0_1(a1843) ) )
      & ( ~ hskp12
        | ( ndr1_0
          & ~ c3_1(a1844)
          & ~ c0_1(a1844)
          & ~ c2_1(a1844) ) )
      & ( ~ hskp13
        | ( ndr1_0
          & c1_1(a1846)
          & c3_1(a1846)
          & ~ c2_1(a1846) ) )
      & ( ~ hskp14
        | ( ndr1_0
          & ~ c2_1(a1847)
          & c3_1(a1847)
          & ~ c0_1(a1847) ) )
      & ( ~ hskp15
        | ( ndr1_0
          & ~ c1_1(a1850)
          & c3_1(a1850)
          & ~ c0_1(a1850) ) )
      & ( ~ hskp16
        | ( ndr1_0
          & c1_1(a1851)
          & ~ c2_1(a1851)
          & ~ c3_1(a1851) ) )
      & ( ~ hskp17
        | ( ndr1_0
          & c0_1(a1853)
          & c2_1(a1853)
          & ~ c1_1(a1853) ) )
      & ( ~ hskp18
        | ( ndr1_0
          & ~ c1_1(a1854)
          & c0_1(a1854)
          & ~ c3_1(a1854) ) )
      & ( ~ hskp19
        | ( ndr1_0
          & ~ c0_1(a1855)
          & c1_1(a1855)
          & ~ c2_1(a1855) ) )
      & ( ~ hskp20
        | ( ndr1_0
          & ~ c0_1(a1856)
          & ~ c1_1(a1856)
          & ~ c2_1(a1856) ) )
      & ( ~ hskp21
        | ( ndr1_0
          & c3_1(a1857)
          & c2_1(a1857)
          & ~ c0_1(a1857) ) )
      & ( ~ hskp22
        | ( ndr1_0
          & ~ c2_1(a1858)
          & c0_1(a1858)
          & ~ c3_1(a1858) ) )
      & ( ~ hskp23
        | ( ndr1_0
          & ~ c2_1(a1859)
          & ~ c3_1(a1859)
          & ~ c1_1(a1859) ) )
      & ( ~ hskp24
        | ( ndr1_0
          & c3_1(a1862)
          & c0_1(a1862)
          & ~ c2_1(a1862) ) )
      & ( ~ hskp25
        | ( ndr1_0
          & c2_1(a1864)
          & ~ c0_1(a1864)
          & ~ c3_1(a1864) ) )
      & ( ~ hskp26
        | ( ndr1_0
          & ~ c0_1(a1866)
          & ~ c2_1(a1866)
          & ~ c1_1(a1866) ) )
      & ( ~ hskp27
        | ( ndr1_0
          & c0_1(a1869)
          & c3_1(a1869)
          & ~ c2_1(a1869) ) )
      & ( ~ hskp28
        | ( ndr1_0
          & ~ c1_1(a1870)
          & ~ c2_1(a1870)
          & ~ c0_1(a1870) ) )
      & ( ~ hskp29
        | ( ndr1_0
          & c0_1(a1872)
          & ~ c3_1(a1872)
          & ~ c1_1(a1872) ) )
      & ( ~ hskp30
        | ( ndr1_0
          & c2_1(a1873)
          & c1_1(a1873)
          & ~ c0_1(a1873) ) )
      & ( ~ hskp31
        | ( ndr1_0
          & c3_1(a1875)
          & c2_1(a1875)
          & ~ c1_1(a1875) ) )
      & ( ~ hskp32
        | ( ndr1_0
          & ~ c1_1(a1876)
          & c2_1(a1876)
          & ~ c3_1(a1876) ) )
      & ( ~ hskp33
        | ( ndr1_0
          & ~ c1_1(a1881)
          & ~ c0_1(a1881)
          & ~ c3_1(a1881) ) )
      & ( ~ hskp34
        | ( ndr1_0
          & c3_1(a1882)
          & c1_1(a1882)
          & ~ c0_1(a1882) ) )
      & ( ~ hskp35
        | ( ndr1_0
          & ~ c3_1(a1890)
          & c1_1(a1890)
          & ~ c0_1(a1890) ) )
      & ( ~ hskp36
        | ( ndr1_0
          & c3_1(a1891)
          & c1_1(a1891)
          & ~ c2_1(a1891) ) )
      & ( ~ hskp37
        | ( ndr1_0
          & c0_1(a1892)
          & ~ c1_1(a1892)
          & ~ c3_1(a1892) ) )
      & ( ~ hskp38
        | ( ndr1_0
          & c1_1(a1895)
          & ~ c2_1(a1895)
          & ~ c0_1(a1895) ) )
      & ( ~ hskp39
        | ( ndr1_0
          & ~ c0_1(a1896)
          & ~ c1_1(a1896)
          & ~ c3_1(a1896) ) )
      & ( ~ hskp40
        | ( ndr1_0
          & c1_1(a1900)
          & ~ c3_1(a1900)
          & ~ c0_1(a1900) ) )
      & ( ~ hskp41
        | ( ndr1_0
          & ~ c1_1(a1901)
          & ~ c3_1(a1901)
          & ~ c2_1(a1901) ) )
      & ( ~ hskp42
        | ( ndr1_0
          & c2_1(a1819)
          & c0_1(a1819)
          & c3_1(a1819) ) )
      & ( ~ hskp43
        | ( ndr1_0
          & ~ c1_1(a1820)
          & ~ c0_1(a1820)
          & c2_1(a1820) ) )
      & ( ~ hskp44
        | ( ndr1_0
          & c3_1(a1821)
          & ~ c2_1(a1821)
          & c0_1(a1821) ) )
      & ( ~ hskp45
        | ( ndr1_0
          & c0_1(a1822)
          & c2_1(a1822)
          & c3_1(a1822) ) )
      & ( ~ hskp46
        | ( ndr1_0
          & ~ c0_1(a1823)
          & c2_1(a1823)
          & c3_1(a1823) ) )
      & ( ~ hskp47
        | ( ndr1_0
          & c2_1(a1825)
          & ~ c0_1(a1825)
          & c3_1(a1825) ) )
      & ( ~ hskp48
        | ( ndr1_0
          & ~ c3_1(a1827)
          & ~ c1_1(a1827)
          & c2_1(a1827) ) )
      & ( ~ hskp49
        | ( ndr1_0
          & c3_1(a1830)
          & c0_1(a1830)
          & c2_1(a1830) ) )
      & ( ~ hskp50
        | ( ndr1_0
          & c0_1(a1834)
          & ~ c1_1(a1834)
          & c2_1(a1834) ) )
      & ( ~ hskp51
        | ( ndr1_0
          & c0_1(a1835)
          & c3_1(a1835)
          & c2_1(a1835) ) )
      & ( ~ hskp52
        | ( ndr1_0
          & c0_1(a1836)
          & ~ c3_1(a1836)
          & c2_1(a1836) ) )
      & ( ~ hskp53
        | ( ndr1_0
          & ~ c2_1(a1838)
          & ~ c1_1(a1838)
          & c0_1(a1838) ) )
      & ( ~ hskp54
        | ( ndr1_0
          & ~ c2_1(a1839)
          & ~ c0_1(a1839)
          & c1_1(a1839) ) )
      & ( ~ hskp55
        | ( ndr1_0
          & ~ c2_1(a1842)
          & c0_1(a1842)
          & c3_1(a1842) ) )
      & ( ~ hskp56
        | ( ndr1_0
          & ~ c2_1(a1845)
          & ~ c3_1(a1845)
          & c0_1(a1845) ) )
      & ( ~ hskp57
        | ( ndr1_0
          & ~ c0_1(a1848)
          & ~ c1_1(a1848)
          & c3_1(a1848) ) )
      & ( ~ hskp58
        | ( ndr1_0
          & c2_1(a1849)
          & c3_1(a1849)
          & c1_1(a1849) ) )
      & ( ~ hskp59
        | ( ndr1_0
          & c1_1(a1852)
          & c0_1(a1852)
          & c2_1(a1852) ) )
      & ( ~ hskp60
        | ( ndr1_0
          & c1_1(a1860)
          & c0_1(a1860)
          & c3_1(a1860) ) )
      & ( ~ hskp61
        | ( ndr1_0
          & ~ c3_1(a1863)
          & ~ c0_1(a1863)
          & c1_1(a1863) ) )
      & ( ~ hskp62
        | ( ndr1_0
          & c2_1(a1867)
          & c3_1(a1867)
          & c0_1(a1867) ) )
      & ( ~ hskp63
        | ( ndr1_0
          & c1_1(a1868)
          & ~ c0_1(a1868)
          & c3_1(a1868) ) )
      & ( ~ hskp64
        | ( ndr1_0
          & c3_1(a1874)
          & c1_1(a1874)
          & c2_1(a1874) ) )
      & ( ~ hskp65
        | ( ndr1_0
          & ~ c0_1(a1878)
          & c3_1(a1878)
          & c1_1(a1878) ) )
      & ( ~ hskp66
        | ( ndr1_0
          & ~ c0_1(a1879)
          & ~ c2_1(a1879)
          & c1_1(a1879) ) )
      & ( ~ hskp67
        | ( ndr1_0
          & c3_1(a1885)
          & ~ c1_1(a1885)
          & c2_1(a1885) ) )
      & ( ~ hskp68
        | ( ndr1_0
          & c3_1(a1886)
          & c0_1(a1886)
          & c1_1(a1886) ) )
      & ( ~ hskp69
        | ( ndr1_0
          & ~ c3_1(a1887)
          & c0_1(a1887)
          & c1_1(a1887) ) )
      & ( ~ hskp70
        | ( ndr1_0
          & c1_1(a1889)
          & c2_1(a1889)
          & c3_1(a1889) ) )
      & ( ~ hskp71
        | ( ndr1_0
          & ~ c1_1(a1894)
          & c3_1(a1894)
          & c0_1(a1894) ) )
      & ( ~ hskp72
        | ( ndr1_0
          & ~ c0_1(a1897)
          & ~ c1_1(a1897)
          & c2_1(a1897) ) )
      & ( ~ hskp73
        | ( ndr1_0
          & c3_1(a1898)
          & c1_1(a1898)
          & c0_1(a1898) ) )
      & ( ~ hskp74
        | ( ndr1_0
          & c0_1(a1899)
          & ~ c3_1(a1899)
          & c1_1(a1899) ) )
      & ( ~ hskp75
        | ( ndr1_0
          & ~ c3_1(a1902)
          & c2_1(a1902)
          & c1_1(a1902) ) )
      & ( ! [U] :
            ( ndr1_0
           => ( ~ c1_1(U)
              | c0_1(U)
              | ~ c2_1(U) ) )
        | ! [V] :
            ( ndr1_0
           => ( c1_1(V)
              | c2_1(V)
              | c0_1(V) ) )
        | ! [W] :
            ( ndr1_0
           => ( c0_1(W)
              | c2_1(W)
              | ~ c3_1(W) ) ) )
      & ( ! [X] :
            ( ndr1_0
           => ( ~ c0_1(X)
              | ~ c3_1(X)
              | ~ c2_1(X) ) )
        | ! [Y] :
            ( ndr1_0
           => ( c1_1(Y)
              | ~ c2_1(Y)
              | ~ c0_1(Y) ) )
        | hskp0 )
      & ( ! [Z] :
            ( ndr1_0
           => ( ~ c3_1(Z)
              | c2_1(Z)
              | ~ c1_1(Z) ) )
        | ! [X1] :
            ( ndr1_0
           => ( ~ c0_1(X1)
              | ~ c1_1(X1)
              | ~ c3_1(X1) ) )
        | hskp42 )
      & ( ! [X2] :
            ( ndr1_0
           => ( c2_1(X2)
              | c0_1(X2)
              | c1_1(X2) ) )
        | hskp43
        | ! [X3] :
            ( ndr1_0
           => ( c1_1(X3)
              | c2_1(X3)
              | ~ c3_1(X3) ) ) )
      & ( ! [X4] :
            ( ndr1_0
           => ( c2_1(X4)
              | ~ c3_1(X4)
              | c1_1(X4) ) )
        | ! [X5] :
            ( ndr1_0
           => ( c0_1(X5)
              | c3_1(X5)
              | c2_1(X5) ) )
        | hskp44 )
      & ( hskp45
        | ! [X6] :
            ( ndr1_0
           => ( c2_1(X6)
              | c0_1(X6)
              | ~ c3_1(X6) ) )
        | hskp46 )
      & ( ! [X7] :
            ( ndr1_0
           => ( ~ c2_1(X7)
              | c0_1(X7)
              | ~ c1_1(X7) ) )
        | hskp1
        | hskp47 )
      & ( ! [X8] :
            ( ndr1_0
           => ( c2_1(X8)
              | c3_1(X8)
              | c0_1(X8) ) )
        | ! [X9] :
            ( ndr1_0
           => ( ~ c2_1(X9)
              | ~ c1_1(X9)
              | ~ c0_1(X9) ) )
        | ! [X10] :
            ( ndr1_0
           => ( ~ c3_1(X10)
              | c2_1(X10)
              | c1_1(X10) ) ) )
      & ( ! [X11] :
            ( ndr1_0
           => ( c0_1(X11)
              | ~ c3_1(X11)
              | c1_1(X11) ) )
        | ! [X12] :
            ( ndr1_0
           => ( ~ c0_1(X12)
              | ~ c2_1(X12)
              | c3_1(X12) ) )
        | ! [X13] :
            ( ndr1_0
           => ( ~ c2_1(X13)
              | ~ c3_1(X13)
              | c1_1(X13) ) ) )
      & ( ! [X14] :
            ( ndr1_0
           => ( c1_1(X14)
              | c0_1(X14)
              | c3_1(X14) ) )
        | ! [X15] :
            ( ndr1_0
           => ( ~ c3_1(X15)
              | ~ c1_1(X15)
              | ~ c2_1(X15) ) )
        | hskp2 )
      & ( ! [X16] :
            ( ndr1_0
           => ( ~ c3_1(X16)
              | ~ c1_1(X16)
              | ~ c2_1(X16) ) )
        | hskp48
        | hskp3 )
      & ( ! [X17] :
            ( ndr1_0
           => ( ~ c1_1(X17)
              | c0_1(X17)
              | c2_1(X17) ) )
        | ! [X18] :
            ( ndr1_0
           => ( c0_1(X18)
              | c2_1(X18)
              | c3_1(X18) ) )
        | hskp4 )
      & ( hskp49
        | hskp5
        | ! [X19] :
            ( ndr1_0
           => ( ~ c2_1(X19)
              | ~ c0_1(X19)
              | ~ c3_1(X19) ) ) )
      & ( ! [X20] :
            ( ndr1_0
           => ( c3_1(X20)
              | c1_1(X20)
              | c2_1(X20) ) )
        | hskp6
        | hskp7 )
      & ( hskp50
        | ! [X21] :
            ( ndr1_0
           => ( ~ c3_1(X21)
              | c0_1(X21)
              | ~ c2_1(X21) ) )
        | ! [X22] :
            ( ndr1_0
           => ( c0_1(X22)
              | ~ c1_1(X22)
              | c3_1(X22) ) ) )
      & ( ! [X23] :
            ( ndr1_0
           => ( ~ c2_1(X23)
              | c0_1(X23)
              | c3_1(X23) ) )
        | ! [X24] :
            ( ndr1_0
           => ( ~ c2_1(X24)
              | c3_1(X24)
              | c0_1(X24) ) )
        | ! [X25] :
            ( ndr1_0
           => ( c1_1(X25)
              | c2_1(X25)
              | c3_1(X25) ) ) )
      & ( ! [X26] :
            ( ndr1_0
           => ( ~ c0_1(X26)
              | ~ c1_1(X26)
              | c3_1(X26) ) )
        | ! [X27] :
            ( ndr1_0
           => ( ~ c1_1(X27)
              | ~ c2_1(X27)
              | ~ c3_1(X27) ) )
        | ! [X28] :
            ( ndr1_0
           => ( c3_1(X28)
              | c2_1(X28)
              | ~ c1_1(X28) ) ) )
      & ( ! [X29] :
            ( ndr1_0
           => ( ~ c1_1(X29)
              | ~ c3_1(X29)
              | c0_1(X29) ) )
        | hskp51
        | ! [X30] :
            ( ndr1_0
           => ( c2_1(X30)
              | ~ c0_1(X30)
              | ~ c1_1(X30) ) ) )
      & ( ! [X31] :
            ( ndr1_0
           => ( ~ c0_1(X31)
              | c1_1(X31)
              | c3_1(X31) ) )
        | ! [X32] :
            ( ndr1_0
           => ( ~ c3_1(X32)
              | ~ c1_1(X32)
              | ~ c0_1(X32) ) )
        | hskp52 )
      & ( ! [X33] :
            ( ndr1_0
           => ( c3_1(X33)
              | ~ c1_1(X33)
              | c2_1(X33) ) )
        | hskp8
        | ! [X34] :
            ( ndr1_0
           => ( ~ c0_1(X34)
              | ~ c3_1(X34)
              | ~ c2_1(X34) ) ) )
      & ( ! [X35] :
            ( ndr1_0
           => ( ~ c2_1(X35)
              | ~ c1_1(X35)
              | ~ c0_1(X35) ) )
        | hskp53
        | hskp54 )
      & ( ! [X36] :
            ( ndr1_0
           => ( c2_1(X36)
              | c3_1(X36)
              | ~ c1_1(X36) ) )
        | ! [X37] :
            ( ndr1_0
           => ( ~ c3_1(X37)
              | ~ c1_1(X37)
              | c2_1(X37) ) )
        | hskp9 )
      & ( hskp10
        | ! [X38] :
            ( ndr1_0
           => ( c3_1(X38)
              | ~ c2_1(X38)
              | c1_1(X38) ) )
        | ! [X39] :
            ( ndr1_0
           => ( c0_1(X39)
              | ~ c3_1(X39)
              | c2_1(X39) ) ) )
      & ( ! [X40] :
            ( ndr1_0
           => ( ~ c1_1(X40)
              | c3_1(X40)
              | ~ c2_1(X40) ) )
        | ! [X41] :
            ( ndr1_0
           => ( c0_1(X41)
              | ~ c2_1(X41)
              | ~ c1_1(X41) ) )
        | ! [X42] :
            ( ndr1_0
           => ( ~ c1_1(X42)
              | c0_1(X42)
              | c2_1(X42) ) ) )
      & ( ! [X43] :
            ( ndr1_0
           => ( c1_1(X43)
              | c0_1(X43)
              | ~ c2_1(X43) ) )
        | ! [X44] :
            ( ndr1_0
           => ( c1_1(X44)
              | c0_1(X44)
              | c2_1(X44) ) )
        | hskp55 )
      & ( hskp11
        | hskp12
        | hskp56 )
      & ( ! [X45] :
            ( ndr1_0
           => ( c0_1(X45)
              | ~ c3_1(X45)
              | c1_1(X45) ) )
        | ! [X46] :
            ( ndr1_0
           => ( ~ c2_1(X46)
              | c3_1(X46)
              | ~ c1_1(X46) ) )
        | ! [X47] :
            ( ndr1_0
           => ( ~ c1_1(X47)
              | c0_1(X47)
              | c3_1(X47) ) ) )
      & ( hskp13
        | hskp14
        | hskp57 )
      & ( hskp58
        | ! [X48] :
            ( ndr1_0
           => ( c3_1(X48)
              | c0_1(X48)
              | ~ c1_1(X48) ) )
        | hskp15 )
      & ( hskp16
        | ! [X49] :
            ( ndr1_0
           => ( c0_1(X49)
              | c3_1(X49)
              | c1_1(X49) ) )
        | ! [X50] :
            ( ndr1_0
           => ( ~ c3_1(X50)
              | ~ c2_1(X50)
              | ~ c1_1(X50) ) ) )
      & ( ! [X51] :
            ( ndr1_0
           => ( ~ c2_1(X51)
              | ~ c0_1(X51)
              | ~ c3_1(X51) ) )
        | hskp59
        | hskp17 )
      & ( hskp18
        | hskp19
        | ! [X52] :
            ( ndr1_0
           => ( c0_1(X52)
              | c2_1(X52)
              | c1_1(X52) ) ) )
      & ( hskp20
        | hskp21
        | hskp22 )
      & ( hskp23
        | ! [X53] :
            ( ndr1_0
           => ( ~ c3_1(X53)
              | c0_1(X53)
              | ~ c2_1(X53) ) )
        | hskp60 )
      & ( ! [X54] :
            ( ndr1_0
           => ( c2_1(X54)
              | c0_1(X54)
              | c3_1(X54) ) )
        | hskp49
        | ! [X55] :
            ( ndr1_0
           => ( c0_1(X55)
              | ~ c3_1(X55)
              | ~ c1_1(X55) ) ) )
      & ( hskp24
        | hskp61
        | ! [X56] :
            ( ndr1_0
           => ( c0_1(X56)
              | ~ c1_1(X56)
              | ~ c3_1(X56) ) ) )
      & ( hskp25
        | hskp11
        | hskp26 )
      & ( ! [X57] :
            ( ndr1_0
           => ( ~ c2_1(X57)
              | ~ c3_1(X57)
              | c1_1(X57) ) )
        | hskp62
        | hskp63 )
      & ( hskp27
        | hskp28
        | hskp42 )
      & ( hskp29
        | hskp30
        | ! [X58] :
            ( ndr1_0
           => ( c1_1(X58)
              | c2_1(X58)
              | c0_1(X58) ) ) )
      & ( ! [X59] :
            ( ndr1_0
           => ( c3_1(X59)
              | ~ c2_1(X59)
              | c0_1(X59) ) )
        | hskp64
        | ! [X60] :
            ( ndr1_0
           => ( c3_1(X60)
              | ~ c0_1(X60)
              | c2_1(X60) ) ) )
      & ( ! [X61] :
            ( ndr1_0
           => ( c0_1(X61)
              | c3_1(X61)
              | c1_1(X61) ) )
        | hskp31
        | hskp32 )
      & ( ! [X62] :
            ( ndr1_0
           => ( c0_1(X62)
              | ~ c2_1(X62)
              | ~ c1_1(X62) ) )
        | ! [X63] :
            ( ndr1_0
           => ( ~ c2_1(X63)
              | ~ c1_1(X63)
              | ~ c3_1(X63) ) )
        | ! [X64] :
            ( ndr1_0
           => ( c3_1(X64)
              | c2_1(X64)
              | c1_1(X64) ) ) )
      & ( ! [X65] :
            ( ndr1_0
           => ( ~ c2_1(X65)
              | c3_1(X65)
              | c0_1(X65) ) )
        | ! [X66] :
            ( ndr1_0
           => ( c1_1(X66)
              | ~ c0_1(X66)
              | ~ c2_1(X66) ) )
        | hskp63 )
      & ( hskp65
        | ! [X67] :
            ( ndr1_0
           => ( c0_1(X67)
              | ~ c3_1(X67)
              | c2_1(X67) ) )
        | hskp66 )
      & ( ! [X68] :
            ( ndr1_0
           => ( c1_1(X68)
              | ~ c2_1(X68)
              | c3_1(X68) ) )
        | hskp32
        | hskp33 )
      & ( ! [X69] :
            ( ndr1_0
           => ( c0_1(X69)
              | c1_1(X69)
              | c3_1(X69) ) )
        | hskp34
        | ! [X70] :
            ( ndr1_0
           => ( ~ c0_1(X70)
              | c3_1(X70)
              | ~ c1_1(X70) ) ) )
      & ( hskp47
        | ! [X71] :
            ( ndr1_0
           => ( ~ c1_1(X71)
              | c3_1(X71)
              | ~ c2_1(X71) ) )
        | hskp22 )
      & ( hskp67
        | hskp68
        | hskp69 )
      & ( ! [X72] :
            ( ndr1_0
           => ( ~ c3_1(X72)
              | ~ c0_1(X72)
              | c1_1(X72) ) )
        | ! [X73] :
            ( ndr1_0
           => ( ~ c1_1(X73)
              | ~ c2_1(X73)
              | ~ c3_1(X73) ) )
        | ! [X74] :
            ( ndr1_0
           => ( c0_1(X74)
              | c2_1(X74)
              | ~ c3_1(X74) ) ) )
      & ( hskp61
        | hskp70
        | ! [X75] :
            ( ndr1_0
           => ( ~ c3_1(X75)
              | ~ c2_1(X75)
              | ~ c0_1(X75) ) ) )
      & ( hskp35
        | ! [X76] :
            ( ndr1_0
           => ( ~ c2_1(X76)
              | ~ c0_1(X76)
              | ~ c1_1(X76) ) )
        | ! [X77] :
            ( ndr1_0
           => ( c1_1(X77)
              | ~ c0_1(X77)
              | c3_1(X77) ) ) )
      & ( ! [X78] :
            ( ndr1_0
           => ( c2_1(X78)
              | c1_1(X78)
              | c0_1(X78) ) )
        | ! [X79] :
            ( ndr1_0
           => ( ~ c2_1(X79)
              | c3_1(X79)
              | ~ c1_1(X79) ) )
        | hskp36 )
      & ( hskp37
        | ! [X80] :
            ( ndr1_0
           => ( ~ c0_1(X80)
              | ~ c3_1(X80)
              | ~ c1_1(X80) ) )
        | hskp28 )
      & ( ! [X81] :
            ( ndr1_0
           => ( c2_1(X81)
              | c1_1(X81)
              | c3_1(X81) ) )
        | hskp71
        | hskp38 )
      & ( ! [X82] :
            ( ndr1_0
           => ( ~ c0_1(X82)
              | ~ c1_1(X82)
              | ~ c3_1(X82) ) )
        | hskp39
        | hskp72 )
      & ( ! [X83] :
            ( ndr1_0
           => ( c2_1(X83)
              | c3_1(X83)
              | c0_1(X83) ) )
        | ! [X84] :
            ( ndr1_0
           => ( ~ c1_1(X84)
              | ~ c0_1(X84)
              | c3_1(X84) ) )
        | ! [X85] :
            ( ndr1_0
           => ( ~ c3_1(X85)
              | ~ c1_1(X85)
              | ~ c0_1(X85) ) ) )
      & ( hskp73
        | ! [X86] :
            ( ndr1_0
           => ( ~ c0_1(X86)
              | c3_1(X86)
              | ~ c1_1(X86) ) )
        | hskp74 )
      & ( ! [X87] :
            ( ndr1_0
           => ( c2_1(X87)
              | c1_1(X87)
              | ~ c0_1(X87) ) )
        | hskp40
        | hskp41 )
      & ( ! [X88] :
            ( ndr1_0
           => ( c0_1(X88)
              | ~ c2_1(X88)
              | c3_1(X88) ) )
        | hskp75
        | ! [X89] :
            ( ndr1_0
           => ( ~ c0_1(X89)
              | ~ c2_1(X89)
              | ~ c1_1(X89) ) ) ) ) ).

%--------------------------------------------------------------------------
