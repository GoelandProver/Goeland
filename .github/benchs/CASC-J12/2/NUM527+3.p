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

fof(mSortsB_02,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => aNaturalNumber0(sdtasdt0(W0,W1)) ) ).

fof(m__3082,hypothesis,
    sdtasdt0(xm,xm) = sdtasdt0(xp,sdtasdt0(xq,xq)) ).

fof(m__2987,hypothesis,
    ( xn != sz00
    & xp != sz00
    & sz00 != xm
    & aNaturalNumber0(xp)
    & aNaturalNumber0(xm)
    & aNaturalNumber0(xn) ) ).

fof(mLENTr,axiom,
    ! [W0] :
      ( ( W0 = sz00
        | sz10 = W0
        | ( W0 != sz10
          & sdtlseqdt0(sz10,W0) ) )
     <= aNaturalNumber0(W0) ) ).

fof(mAMDistr,axiom,
    ! [W0,W1,W2] :
      ( ( sdtasdt0(sdtpldt0(W1,W2),W0) = sdtpldt0(sdtasdt0(W1,W0),sdtasdt0(W2,W0))
        & sdtpldt0(sdtasdt0(W0,W1),sdtasdt0(W0,W2)) = sdtasdt0(W0,sdtpldt0(W1,W2)) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W2) ) ) ).

fof(mDivSum,axiom,
    ! [W0,W1,W2] :
      ( ( doDivides0(W0,sdtpldt0(W1,W2))
       <= ( doDivides0(W0,W2)
          & doDivides0(W0,W1) ) )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W0) ) ) ).

fof(mAddComm,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => sdtpldt0(W0,W1) = sdtpldt0(W1,W0) ) ).

fof(m__3014,hypothesis,
    sdtasdt0(xp,sdtasdt0(xm,xm)) = sdtasdt0(xn,xn) ).

fof(m__,conjecture,
    ( ( ? [W0] :
          ( sdtpldt0(sdtasdt0(xn,xn),W0) = sdtasdt0(xm,xm)
          & aNaturalNumber0(W0) )
      | sdtlseqdt0(sdtasdt0(xn,xn),sdtasdt0(xm,xm)) )
   <= ( ? [W0] :
          ( aNaturalNumber0(W0)
          & sdtpldt0(xn,W0) = xm )
      & sdtlseqdt0(xn,xm) ) ) ).

fof(mAddCanc,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W2)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( ( sdtpldt0(W0,W2) = sdtpldt0(W0,W1)
          | sdtpldt0(W1,W0) = sdtpldt0(W2,W0) )
       => W2 = W1 ) ) ).

fof(mMonAdd,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( ( W0 != W1
          & sdtlseqdt0(W0,W1) )
       => ! [W2] :
            ( ( sdtpldt0(W0,W2) != sdtpldt0(W1,W2)
              & sdtlseqdt0(sdtpldt0(W0,W2),sdtpldt0(W1,W2))
              & sdtlseqdt0(sdtpldt0(W2,W0),sdtpldt0(W2,W1))
              & sdtpldt0(W2,W0) != sdtpldt0(W2,W1) )
           <= aNaturalNumber0(W2) ) ) ) ).

fof(mMulAsso,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W2) )
     => sdtasdt0(sdtasdt0(W0,W1),W2) = sdtasdt0(W0,sdtasdt0(W1,W2)) ) ).

fof(m__2963,hypothesis,
    ! [W0,W1,W2] :
      ( ( ( ~ ( ( ! [W3] :
                    ( ( W3 = sz10
                      | W3 = W2 )
                   <= ( aNaturalNumber0(W3)
                      & ? [W4] :
                          ( aNaturalNumber0(W4)
                          & W2 = sdtasdt0(W3,W4) )
                      & doDivides0(W3,W2) ) )
                & sz10 != W2 )
              | isPrime0(W2) )
         <= iLess0(W0,xn) )
       <= sdtasdt0(W2,sdtasdt0(W1,W1)) = sdtasdt0(W0,W0) )
     <= ( aNaturalNumber0(W1)
        & W0 != sz00
        & W1 != sz00
        & W2 != sz00
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W0) ) ) ).

fof(mSortsB,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => aNaturalNumber0(sdtpldt0(W0,W1)) ) ).

fof(m__3025,hypothesis,
    ( sz10 != xp
    & ! [W0] :
        ( ( ( doDivides0(W0,xp)
            | ? [W1] :
                ( aNaturalNumber0(W1)
                & sdtasdt0(W0,W1) = xp ) )
          & aNaturalNumber0(W0) )
       => ( W0 = sz10
          | W0 = xp ) )
    & isPrime0(xp) ) ).

fof(mMonMul2,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( sz00 != W0
       => sdtlseqdt0(W1,sdtasdt0(W1,W0)) ) ) ).

fof(m__3046,hypothesis,
    ( ? [W0] :
        ( aNaturalNumber0(W0)
        & xn = sdtasdt0(xp,W0) )
    & doDivides0(xp,xn)
    & doDivides0(xp,sdtasdt0(xn,xn))
    & ? [W0] :
        ( aNaturalNumber0(W0)
        & sdtasdt0(xn,xn) = sdtasdt0(xp,W0) ) ) ).

fof(mDivMin,axiom,
    ! [W0,W1,W2] :
      ( ( doDivides0(W0,W2)
       <= ( doDivides0(W0,W1)
          & doDivides0(W0,sdtpldt0(W1,W2)) ) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) ) ) ).

fof(mSortsC_01,axiom,
    ( sz00 != sz10
    & aNaturalNumber0(sz10) ) ).

fof(mDivLE,axiom,
    ! [W0,W1] :
      ( ( sdtlseqdt0(W0,W1)
       <= ( doDivides0(W0,W1)
          & sz00 != W1 ) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(mLERefl,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => sdtlseqdt0(W0,W0) ) ).

fof(m_MulUnit,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( sdtasdt0(W0,sz10) = W0
        & sdtasdt0(sz10,W0) = W0 ) ) ).

fof(mDivTrans,axiom,
    ! [W0,W1,W2] :
      ( ( ( doDivides0(W1,W2)
          & doDivides0(W0,W1) )
       => doDivides0(W0,W2) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) ) ) ).

fof(mMulCanc,axiom,
    ! [W0] :
      ( ( ! [W1,W2] :
            ( ( aNaturalNumber0(W1)
              & aNaturalNumber0(W2) )
           => ( ( sdtasdt0(W2,W0) = sdtasdt0(W1,W0)
                | sdtasdt0(W0,W1) = sdtasdt0(W0,W2) )
             => W1 = W2 ) )
       <= sz00 != W0 )
     <= aNaturalNumber0(W0) ) ).

fof(mIH,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( $true
       <= iLess0(W0,W1) ) ) ).

fof(mLETotal,axiom,
    ! [W0,W1] :
      ( ( ( sdtlseqdt0(W1,W0)
          & W1 != W0 )
        | sdtlseqdt0(W0,W1) )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mPrimDiv,axiom,
    ! [W0] :
      ( ( aNaturalNumber0(W0)
        & W0 != sz00
        & W0 != sz10 )
     => ? [W1] :
          ( isPrime0(W1)
          & doDivides0(W1,W0)
          & aNaturalNumber0(W1) ) ) ).

fof(mDivAsso,axiom,
    ! [W0,W1] :
      ( ( ( W0 != sz00
          & doDivides0(W0,W1) )
       => ! [W2] :
            ( sdtasdt0(W2,sdtsldt0(W1,W0)) = sdtsldt0(sdtasdt0(W2,W1),W0)
           <= aNaturalNumber0(W2) ) )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mIH_03,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( ( sdtlseqdt0(W0,W1)
          & W0 != W1 )
       => iLess0(W0,W1) ) ) ).

fof(mMonMul,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) )
     => ( ( sdtlseqdt0(sdtasdt0(W0,W1),sdtasdt0(W0,W2))
          & sdtasdt0(W1,W0) != sdtasdt0(W2,W0)
          & sdtlseqdt0(sdtasdt0(W1,W0),sdtasdt0(W2,W0))
          & sdtasdt0(W0,W1) != sdtasdt0(W0,W2) )
       <= ( W1 != W2
          & sdtlseqdt0(W1,W2)
          & W0 != sz00 ) ) ) ).

fof(mAddAsso,axiom,
    ! [W0,W1,W2] :
      ( sdtpldt0(sdtpldt0(W0,W1),W2) = sdtpldt0(W0,sdtpldt0(W1,W2))
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W2) ) ) ).

fof(mNatSort,axiom,
    ! [W0] :
      ( $true
     <= aNaturalNumber0(W0) ) ).

fof(m_AddZero,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( sdtpldt0(W0,sz00) = W0
        & W0 = sdtpldt0(sz00,W0) ) ) ).

fof(mZeroMul,axiom,
    ! [W0,W1] :
      ( ( sz00 = sdtasdt0(W0,W1)
       => ( W0 = sz00
          | W1 = sz00 ) )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(m_MulZero,axiom,
    ! [W0] :
      ( ( sz00 = sdtasdt0(W0,sz00)
        & sdtasdt0(sz00,W0) = sz00 )
     <= aNaturalNumber0(W0) ) ).

fof(mPDP,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W1) )
     => ( ( doDivides0(W2,W0)
          | doDivides0(W2,W1) )
       <= ( isPrime0(W2)
          & doDivides0(W2,sdtasdt0(W0,W1)) ) ) ) ).

fof(mLETran,axiom,
    ! [W0,W1,W2] :
      ( ( ( sdtlseqdt0(W1,W2)
          & sdtlseqdt0(W0,W1) )
       => sdtlseqdt0(W0,W2) )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W0) ) ) ).

fof(mSortsC,axiom,
    aNaturalNumber0(sz00) ).

fof(mLEAsym,axiom,
    ! [W0,W1] :
      ( ( ( sdtlseqdt0(W0,W1)
          & sdtlseqdt0(W1,W0) )
       => W1 = W0 )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mMulComm,axiom,
    ! [W0,W1] :
      ( sdtasdt0(W1,W0) = sdtasdt0(W0,W1)
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mZeroAdd,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( ( W0 = sz00
          & W1 = sz00 )
       <= sdtpldt0(W0,W1) = sz00 ) ) ).

fof(m__3059,hypothesis,
    ( aNaturalNumber0(xq)
    & xq = sdtsldt0(xn,xp)
    & xn = sdtasdt0(xp,xq) ) ).

