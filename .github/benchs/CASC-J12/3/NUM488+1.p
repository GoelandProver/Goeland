fof(mDefLE,definition,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( sdtlseqdt0(W0,W1)
      <=> ? [W2] :
            ( aNaturalNumber0(W2)
            & sdtpldt0(W0,W2) = W1 ) ) ) ).

fof(mDefDiff,definition,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( sdtlseqdt0(W0,W1)
       => ! [W2] :
            ( W2 = sdtmndt0(W1,W0)
          <=> ( aNaturalNumber0(W2)
              & sdtpldt0(W0,W2) = W1 ) ) ) ) ).

fof(mDefDiv,definition,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( doDivides0(W0,W1)
      <=> ? [W2] :
            ( aNaturalNumber0(W2)
            & W1 = sdtasdt0(W0,W2) ) ) ) ).

fof(mDefQuot,definition,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( ( W0 != sz00
          & doDivides0(W0,W1) )
       => ! [W2] :
            ( W2 = sdtsldt0(W1,W0)
          <=> ( aNaturalNumber0(W2)
              & W1 = sdtasdt0(W0,W2) ) ) ) ) ).

fof(mDefPrime,definition,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( isPrime0(W0)
      <=> ( W0 != sz00
          & W0 != sz10
          & ! [W1] :
              ( ( aNaturalNumber0(W1)
                & doDivides0(W1,W0) )
             => ( W1 = sz10
                | W1 = W0 ) ) ) ) ) ).

fof(m_MulZero,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( sdtasdt0(sz00,W0) = sz00
        & sdtasdt0(W0,sz00) = sz00 ) ) ).

fof(mAMDistr,axiom,
    ! [W0,W1,W2] :
      ( ( sdtpldt0(sdtasdt0(W1,W0),sdtasdt0(W2,W0)) = sdtasdt0(sdtpldt0(W1,W2),W0)
        & sdtpldt0(sdtasdt0(W0,W1),sdtasdt0(W0,W2)) = sdtasdt0(W0,sdtpldt0(W1,W2)) )
     <= ( aNaturalNumber0(W2)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mDivMin,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) )
     => ( ( doDivides0(W0,sdtpldt0(W1,W2))
          & doDivides0(W0,W1) )
       => doDivides0(W0,W2) ) ) ).

fof(m_AddZero,axiom,
    ! [W0] :
      ( ( sdtpldt0(sz00,W0) = W0
        & sdtpldt0(W0,sz00) = W0 )
     <= aNaturalNumber0(W0) ) ).

fof(mLENTr,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( ( sz10 != W0
          & sdtlseqdt0(sz10,W0) )
        | sz10 = W0
        | W0 = sz00 ) ) ).

fof(m__1860,hypothesis,
    ( doDivides0(xp,sdtasdt0(xn,xm))
    & isPrime0(xp) ) ).

fof(mDivTrans,axiom,
    ! [W0,W1,W2] :
      ( ( ( doDivides0(W0,W1)
          & doDivides0(W1,W2) )
       => doDivides0(W0,W2) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) ) ) ).

fof(mZeroMul,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( ( sz00 = W0
          | W1 = sz00 )
       <= sz00 = sdtasdt0(W0,W1) ) ) ).

fof(mDivLE,axiom,
    ! [W0,W1] :
      ( ( sdtlseqdt0(W0,W1)
       <= ( W1 != sz00
          & doDivides0(W0,W1) ) )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mAddAsso,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W2)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => sdtpldt0(sdtpldt0(W0,W1),W2) = sdtpldt0(W0,sdtpldt0(W1,W2)) ) ).

fof(mIH_03,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( iLess0(W0,W1)
       <= ( sdtlseqdt0(W0,W1)
          & W1 != W0 ) ) ) ).

fof(mDivSum,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) )
     => ( ( doDivides0(W0,W2)
          & doDivides0(W0,W1) )
       => doDivides0(W0,sdtpldt0(W1,W2)) ) ) ).

fof(mMonMul2,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( W0 != sz00
       => sdtlseqdt0(W1,sdtasdt0(W1,W0)) ) ) ).

fof(m__1870,hypothesis,
    sdtlseqdt0(xp,xn) ).

fof(mIH,axiom,
    ! [W0,W1] :
      ( ( iLess0(W0,W1)
       => $true )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(m__1799,hypothesis,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) )
     => ( ( doDivides0(W2,sdtasdt0(W0,W1))
          & isPrime0(W2) )
       => ( iLess0(sdtpldt0(sdtpldt0(W0,W1),W2),sdtpldt0(sdtpldt0(xn,xm),xp))
         => ( doDivides0(W2,W0)
            | doDivides0(W2,W1) ) ) ) ) ).

fof(mSortsB_02,axiom,
    ! [W0,W1] :
      ( aNaturalNumber0(sdtasdt0(W0,W1))
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mSortsC_01,axiom,
    ( sz10 != sz00
    & aNaturalNumber0(sz10) ) ).

fof(mDivAsso,axiom,
    ! [W0,W1] :
      ( ( ( doDivides0(W0,W1)
          & W0 != sz00 )
       => ! [W2] :
            ( sdtasdt0(W2,sdtsldt0(W1,W0)) = sdtsldt0(sdtasdt0(W2,W1),W0)
           <= aNaturalNumber0(W2) ) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(mNatSort,axiom,
    ! [W0] :
      ( $true
     <= aNaturalNumber0(W0) ) ).

fof(mSortsC,axiom,
    aNaturalNumber0(sz00) ).

fof(mAddComm,axiom,
    ! [W0,W1] :
      ( sdtpldt0(W0,W1) = sdtpldt0(W1,W0)
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(m_MulUnit,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( W0 = sdtasdt0(sz10,W0)
        & sdtasdt0(W0,sz10) = W0 ) ) ).

fof(mMonAdd,axiom,
    ! [W0,W1] :
      ( ( ! [W2] :
            ( ( sdtlseqdt0(sdtpldt0(W0,W2),sdtpldt0(W1,W2))
              & sdtpldt0(W1,W2) != sdtpldt0(W0,W2)
              & sdtlseqdt0(sdtpldt0(W2,W0),sdtpldt0(W2,W1))
              & sdtpldt0(W2,W0) != sdtpldt0(W2,W1) )
           <= aNaturalNumber0(W2) )
       <= ( W0 != W1
          & sdtlseqdt0(W0,W1) ) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(mPrimDiv,axiom,
    ! [W0] :
      ( ? [W1] :
          ( doDivides0(W1,W0)
          & isPrime0(W1)
          & aNaturalNumber0(W1) )
     <= ( sz10 != W0
        & sz00 != W0
        & aNaturalNumber0(W0) ) ) ).

fof(m__1837,hypothesis,
    ( aNaturalNumber0(xn)
    & aNaturalNumber0(xp)
    & aNaturalNumber0(xm) ) ).

fof(mMulAsso,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) )
     => sdtasdt0(W0,sdtasdt0(W1,W2)) = sdtasdt0(sdtasdt0(W0,W1),W2) ) ).

fof(mLERefl,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => sdtlseqdt0(W0,W0) ) ).

fof(mLETotal,axiom,
    ! [W0,W1] :
      ( ( ( W0 != W1
          & sdtlseqdt0(W1,W0) )
        | sdtlseqdt0(W0,W1) )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(m__1883,hypothesis,
    xr = sdtmndt0(xn,xp) ).

fof(mSortsB,axiom,
    ! [W0,W1] :
      ( aNaturalNumber0(sdtpldt0(W0,W1))
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(m__1894,hypothesis,
    ( xr != xn
    & sdtlseqdt0(xr,xn) ) ).

fof(mMulComm,axiom,
    ! [W0,W1] :
      ( sdtasdt0(W1,W0) = sdtasdt0(W0,W1)
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(mZeroAdd,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( sdtpldt0(W0,W1) = sz00
       => ( sz00 = W0
          & sz00 = W1 ) ) ) ).

fof(mMonMul,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) )
     => ( ( sdtlseqdt0(W1,W2)
          & W2 != W1
          & sz00 != W0 )
       => ( sdtlseqdt0(sdtasdt0(W0,W1),sdtasdt0(W0,W2))
          & sdtlseqdt0(sdtasdt0(W1,W0),sdtasdt0(W2,W0))
          & sdtasdt0(W2,W0) != sdtasdt0(W1,W0)
          & sdtasdt0(W0,W1) != sdtasdt0(W0,W2) ) ) ) ).

fof(m__,conjecture,
    doDivides0(xp,sdtasdt0(xr,xm)) ).

fof(mLETran,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) )
     => ( ( sdtlseqdt0(W1,W2)
          & sdtlseqdt0(W0,W1) )
       => sdtlseqdt0(W0,W2) ) ) ).

fof(mAddCanc,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W2) )
     => ( ( sdtpldt0(W0,W1) = sdtpldt0(W0,W2)
          | sdtpldt0(W1,W0) = sdtpldt0(W2,W0) )
       => W1 = W2 ) ) ).

fof(mMulCanc,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( ! [W1,W2] :
            ( ( aNaturalNumber0(W2)
              & aNaturalNumber0(W1) )
           => ( W1 = W2
             <= ( sdtasdt0(W2,W0) = sdtasdt0(W1,W0)
                | sdtasdt0(W0,W1) = sdtasdt0(W0,W2) ) ) )
       <= sz00 != W0 ) ) ).

fof(mLEAsym,axiom,
    ! [W0,W1] :
      ( ( W0 = W1
       <= ( sdtlseqdt0(W1,W0)
          & sdtlseqdt0(W0,W1) ) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

