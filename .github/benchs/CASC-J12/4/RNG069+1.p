fof(mDefInit,definition,
    ! [W0] :
      ( aVector0(W0)
     => ( aDimensionOf0(W0) != sz00
       => ! [W1] :
            ( W1 = sziznziztdt0(W0)
          <=> ( aVector0(W1)
              & szszuzczcdt0(aDimensionOf0(W1)) = aDimensionOf0(W0)
              & ! [W2] :
                  ( aNaturalNumber0(W2)
                 => sdtlbdtrb0(W1,W2) = sdtlbdtrb0(W0,W2) ) ) ) ) ) ).

fof(mScPr,axiom,
    ! [W0,W1] :
      ( ( aScalar0(sdtasasdt0(W0,W1))
       <= aDimensionOf0(W0) = aDimensionOf0(W1) )
     <= ( aVector0(W0)
        & aVector0(W1) ) ) ).

fof(mLETot,axiom,
    ! [W0,W1] :
      ( ( sdtlseqdt0(W1,W0)
        | sdtlseqdt0(W0,W1) )
     <= ( aScalar0(W0)
        & aScalar0(W1) ) ) ).

fof(m__2510,hypothesis,
    sdtpldt0(sdtpldt0(sdtpldt0(sdtasdt0(xR,xR),xN),sdtasdt0(xS,xS)),xN) = sdtpldt0(sdtpldt0(sdtasdt0(xR,xR),xN),sdtpldt0(sdtasdt0(xS,xS),xN)) ).

fof(m__1746,hypothesis,
    ( aScalar0(xA)
    & sdtlbdtrb0(xs,aDimensionOf0(xs)) = xA ) ).

fof(mDefSPZ,axiom,
    ! [W0,W1] :
      ( ( ( aDimensionOf0(W1) = aDimensionOf0(W0)
          & aDimensionOf0(W1) = sz00 )
       => sz0z00 = sdtasasdt0(W0,W1) )
     <= ( aVector0(W0)
        & aVector0(W1) ) ) ).

fof(mScZero,axiom,
    ! [W0] :
      ( ( W0 = sdtpldt0(W0,sz0z00)
        & sdtasdt0(W0,sz0z00) = sz0z00
        & sz0z00 = sdtasdt0(sz0z00,W0)
        & sz0z00 = sdtpldt0(smndt0(W0),W0)
        & W0 = smndt0(smndt0(W0))
        & sz0z00 = smndt0(sz0z00)
        & sdtpldt0(W0,smndt0(W0)) = sz0z00
        & sdtpldt0(sz0z00,W0) = W0 )
     <= aScalar0(W0) ) ).

fof(m__2004,hypothesis,
    sdtlseqdt0(sdtasdt0(xP,xP),xN) ).

fof(m__1652,hypothesis,
    ! [W0,W1] :
      ( ( aVector0(W0)
        & aVector0(W1) )
     => ( ( sdtlseqdt0(sdtasdt0(sdtasasdt0(W0,W1),sdtasasdt0(W0,W1)),sdtasdt0(sdtasasdt0(W0,W0),sdtasasdt0(W1,W1)))
         <= iLess0(aDimensionOf0(W0),aDimensionOf0(xs)) )
       <= aDimensionOf0(W1) = aDimensionOf0(W0) ) ) ).

fof(m__,conjecture,
    sdtlseqdt0(sdtasdt0(sdtpldt0(xP,xP),sdtpldt0(xP,xP)),sdtasdt0(sdtpldt0(xR,xS),sdtpldt0(xR,xS))) ).

fof(m__1873,hypothesis,
    ( xH = sdtasdt0(xA,xB)
    & aScalar0(xH) ) ).

fof(m__1726,hypothesis,
    ( aVector0(xq)
    & xq = sziznziztdt0(xt) ) ).

fof(m__1783,hypothesis,
    ( aScalar0(xC)
    & xC = sdtasasdt0(xp,xp) ) ).

fof(mMDNeg,axiom,
    ! [W0,W1] :
      ( ( aScalar0(W0)
        & aScalar0(W1) )
     => sdtasdt0(W0,W1) = sdtasdt0(smndt0(W0),smndt0(W1)) ) ).

fof(mSuccNat,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( szszuzczcdt0(W0) != sz00
        & aNaturalNumber0(szszuzczcdt0(W0)) ) ) ).

fof(mNegSc,axiom,
    ! [W0] :
      ( aScalar0(W0)
     => aScalar0(smndt0(W0)) ) ).

fof(mLERef,axiom,
    ! [W0] :
      ( aScalar0(W0)
     => sdtlseqdt0(W0,W0) ) ).

fof(mLEMon,axiom,
    ! [W0,W1,W2,W3] :
      ( ( aScalar0(W2)
        & aScalar0(W3)
        & aScalar0(W1)
        & aScalar0(W0) )
     => ( sdtlseqdt0(sdtpldt0(W0,W2),sdtpldt0(W1,W3))
       <= ( sdtlseqdt0(W0,W1)
          & sdtlseqdt0(W2,W3) ) ) ) ).

fof(mEqInit,axiom,
    ! [W0,W1] :
      ( ( aVector0(W1)
        & aVector0(W0) )
     => ( aDimensionOf0(sziznziztdt0(W0)) = aDimensionOf0(sziznziztdt0(W1))
       <= ( aDimensionOf0(W1) = aDimensionOf0(W0)
          & aDimensionOf0(W1) != sz00 ) ) ) ).

fof(mPosMon,axiom,
    ! [W0,W1] :
      ( ( ( sdtlseqdt0(sz0z00,W1)
          & sdtlseqdt0(sz0z00,W0) )
       => ( sdtlseqdt0(sz0z00,sdtasdt0(W0,W1))
          & sdtlseqdt0(sz0z00,sdtpldt0(W0,W1)) ) )
     <= ( aScalar0(W1)
        & aScalar0(W0) ) ) ).

fof(mArith,axiom,
    ! [W0,W1,W2] :
      ( ( sdtpldt0(W0,sdtpldt0(W1,W2)) = sdtpldt0(sdtpldt0(W0,W1),W2)
        & sdtasdt0(W0,sdtasdt0(W1,W2)) = sdtasdt0(sdtasdt0(W0,W1),W2)
        & sdtasdt0(W0,W1) = sdtasdt0(W1,W0)
        & sdtpldt0(W0,W1) = sdtpldt0(W1,W0) )
     <= ( aScalar0(W0)
        & aScalar0(W1)
        & aScalar0(W2) ) ) ).

fof(m__1930,hypothesis,
    ( aScalar0(xS)
    & xS = sdtasdt0(xF,xD) ) ).

fof(m__1837,hypothesis,
    ( aScalar0(xF)
    & sdtasdt0(xA,xA) = xF ) ).

fof(mNatExtr,axiom,
    ! [W0] :
      ( ( aNaturalNumber0(W0)
        & sz00 != W0 )
     => ? [W1] :
          ( aNaturalNumber0(W1)
          & W0 = szszuzczcdt0(W1) ) ) ).

fof(mMNeg,axiom,
    ! [W0,W1] :
      ( ( aScalar0(W1)
        & aScalar0(W0) )
     => ( smndt0(sdtasdt0(W0,W1)) = sdtasdt0(smndt0(W0),W1)
        & sdtasdt0(W0,smndt0(W1)) = smndt0(sdtasdt0(W0,W1)) ) ) ).

fof(mLEASm,axiom,
    ! [W0,W1] :
      ( ( W1 = W0
       <= ( sdtlseqdt0(W1,W0)
          & sdtlseqdt0(W0,W1) ) )
     <= ( aScalar0(W0)
        & aScalar0(W1) ) ) ).

fof(m__1678,hypothesis,
    ( aVector0(xt)
    & aVector0(xs) ) ).

fof(m__1911,hypothesis,
    ( xP = sdtasdt0(xE,xH)
    & aScalar0(xP) ) ).

fof(mSumSc,axiom,
    ! [W0,W1] :
      ( ( aScalar0(W0)
        & aScalar0(W1) )
     => aScalar0(sdtpldt0(W0,W1)) ) ).

fof(mVcSort,axiom,
    ! [W0] :
      ( aVector0(W0)
     => $true ) ).

fof(m__1800,hypothesis,
    ( aScalar0(xD)
    & sdtasasdt0(xq,xq) = xD ) ).

fof(mSZeroSc,axiom,
    aScalar0(sz0z00) ).

fof(m__1766,hypothesis,
    ( aScalar0(xB)
    & xB = sdtlbdtrb0(xt,aDimensionOf0(xt)) ) ).

fof(mDistr2,axiom,
    ! [W0,W1,W2,W3] :
      ( ( aScalar0(W0)
        & aScalar0(W2)
        & aScalar0(W3)
        & aScalar0(W1) )
     => sdtasdt0(sdtpldt0(W0,W1),sdtpldt0(W2,W3)) = sdtpldt0(sdtpldt0(sdtasdt0(W0,W2),sdtasdt0(W0,W3)),sdtpldt0(sdtasdt0(W1,W2),sdtasdt0(W1,W3))) ) ).

fof(mDimNat,axiom,
    ! [W0] :
      ( aNaturalNumber0(aDimensionOf0(W0))
     <= aVector0(W0) ) ).

fof(m__2580,hypothesis,
    sdtlseqdt0(sdtpldt0(sdtpldt0(sdtasdt0(xP,xP),sdtasdt0(xP,xP)),sdtpldt0(sdtasdt0(xP,xP),sdtasdt0(xP,xP))),sdtpldt0(sdtpldt0(sdtasdt0(xR,xR),sdtasdt0(xR,xS)),sdtpldt0(sdtasdt0(xS,xR),sdtasdt0(xS,xS)))) ).

fof(mMulSc,axiom,
    ! [W0,W1] :
      ( ( aScalar0(W1)
        & aScalar0(W0) )
     => aScalar0(sdtasdt0(W0,W1)) ) ).

fof(m__1949,hypothesis,
    ( sdtasdt0(xR,xS) = xN
    & aScalar0(xN) ) ).

fof(mLETrn,axiom,
    ! [W0,W1,W2] :
      ( ( aScalar0(W2)
        & aScalar0(W1)
        & aScalar0(W0) )
     => ( ( sdtlseqdt0(W1,W2)
          & sdtlseqdt0(W0,W1) )
       => sdtlseqdt0(W0,W2) ) ) ).

fof(mLess,axiom,
    ! [W0,W1] :
      ( ( aScalar0(W1)
        & aScalar0(W0) )
     => ( sdtlseqdt0(W0,W1)
       => $true ) ) ).

fof(m__2463,hypothesis,
    sdtlseqdt0(sdtpldt0(sdtpldt0(sdtpldt0(sdtasdt0(xP,xP),sdtasdt0(xP,xP)),sdtasdt0(xP,xP)),sdtasdt0(xP,xP)),sdtpldt0(sdtpldt0(sdtpldt0(sdtasdt0(xR,xR),sdtasdt0(xS,xS)),xN),xN)) ).

fof(m__1820,hypothesis,
    ( aScalar0(xE)
    & sdtasasdt0(xp,xq) = xE ) ).

fof(m__1854,hypothesis,
    ( aScalar0(xG)
    & sdtasdt0(xB,xB) = xG ) ).

fof(mDefSPN,axiom,
    ! [W0,W1] :
      ( ( aVector0(W0)
        & aVector0(W1) )
     => ( sdtasasdt0(W0,W1) = sdtpldt0(sdtasasdt0(sziznziztdt0(W0),sziznziztdt0(W1)),sdtasdt0(sdtlbdtrb0(W0,aDimensionOf0(W0)),sdtlbdtrb0(W1,aDimensionOf0(W1))))
       <= ( aDimensionOf0(W0) = aDimensionOf0(W1)
          & aDimensionOf0(W1) != sz00 ) ) ) ).

fof(mDistr,axiom,
    ! [W0,W1,W2] :
      ( ( aScalar0(W0)
        & aScalar0(W1)
        & aScalar0(W2) )
     => ( sdtasdt0(W0,sdtpldt0(W1,W2)) = sdtpldt0(sdtasdt0(W0,W1),sdtasdt0(W0,W2))
        & sdtpldt0(sdtasdt0(W0,W2),sdtasdt0(W1,W2)) = sdtasdt0(sdtpldt0(W0,W1),W2) ) ) ).

fof(mSqrt,axiom,
    ! [W0,W1] :
      ( ( W1 = W0
       <= ( sdtlseqdt0(sz0z00,W0)
          & sdtasdt0(W1,W1) = sdtasdt0(W0,W0)
          & sdtlseqdt0(sz0z00,W1) ) )
     <= ( aScalar0(W1)
        & aScalar0(W0) ) ) ).

fof(mScSqPos,axiom,
    ! [W0] :
      ( aVector0(W0)
     => sdtlseqdt0(sz0z00,sdtasasdt0(W0,W0)) ) ).

fof(m__1892,hypothesis,
    ( xR = sdtasdt0(xC,xG)
    & aScalar0(xR) ) ).

fof(mNatSort,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => $true ) ).

fof(mSuccEqu,axiom,
    ! [W0,W1] :
      ( ( W0 = W1
       <= szszuzczcdt0(W1) = szszuzczcdt0(W0) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(mLEMonM,axiom,
    ! [W0,W1,W2,W3] :
      ( ( aScalar0(W0)
        & aScalar0(W3)
        & aScalar0(W2)
        & aScalar0(W1) )
     => ( ( sdtlseqdt0(W0,W1)
          & sdtlseqdt0(sz0z00,W2)
          & sdtlseqdt0(W2,W3) )
       => sdtlseqdt0(sdtasdt0(W0,W2),sdtasdt0(W1,W3)) ) ) ).

fof(m__1678_01,hypothesis,
    aDimensionOf0(xt) = aDimensionOf0(xs) ).

fof(m__1967,hypothesis,
    sdtlseqdt0(sdtasdt0(xE,xE),sdtasdt0(xC,xD)) ).

fof(mIH,axiom,
    ! [W0] :
      ( iLess0(W0,szszuzczcdt0(W0))
     <= aNaturalNumber0(W0) ) ).

fof(m__1709,hypothesis,
    ( sziznziztdt0(xs) = xp
    & aVector0(xp) ) ).

fof(mScSort,axiom,
    ! [W0] :
      ( $true
     <= aScalar0(W0) ) ).

fof(mSqPos,axiom,
    ! [W0] :
      ( aScalar0(W0)
     => sdtlseqdt0(sz0z00,sdtasdt0(W0,W0)) ) ).

fof(mZeroNat,axiom,
    aNaturalNumber0(sz00) ).

fof(mIHOrd,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( iLess0(W0,W1)
       => $true ) ) ).

fof(m__1692,hypothesis,
    sz00 != aDimensionOf0(xs) ).

fof(mElmSc,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aVector0(W0) )
     => aScalar0(sdtlbdtrb0(W0,W1)) ) ).

fof(m__2104,hypothesis,
    sdtlseqdt0(sdtpldt0(sdtasdt0(xP,xP),sdtasdt0(xP,xP)),sdtpldt0(sdtasdt0(xR,xR),sdtasdt0(xS,xS))) ).

