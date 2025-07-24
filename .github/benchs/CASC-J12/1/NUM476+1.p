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

fof(mMonAdd,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( ! [W2] :
            ( ( sdtpldt0(W2,W1) != sdtpldt0(W2,W0)
              & sdtlseqdt0(sdtpldt0(W2,W0),sdtpldt0(W2,W1))
              & sdtlseqdt0(sdtpldt0(W0,W2),sdtpldt0(W1,W2))
              & sdtpldt0(W0,W2) != sdtpldt0(W1,W2) )
           <= aNaturalNumber0(W2) )
       <= ( sdtlseqdt0(W0,W1)
          & W0 != W1 ) ) ) ).

fof(mIH,axiom,
    ! [W0,W1] :
      ( ( iLess0(W0,W1)
       => $true )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mSortsC,axiom,
    aNaturalNumber0(sz00) ).

fof(mDivTrans,axiom,
    ! [W0,W1,W2] :
      ( ( doDivides0(W0,W2)
       <= ( doDivides0(W0,W1)
          & doDivides0(W1,W2) ) )
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W0) ) ) ).

fof(mSortsC_01,axiom,
    ( sz00 != sz10
    & aNaturalNumber0(sz10) ) ).

fof(mMulComm,axiom,
    ! [W0,W1] :
      ( sdtasdt0(W1,W0) = sdtasdt0(W0,W1)
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(mAddAsso,axiom,
    ! [W0,W1,W2] :
      ( sdtpldt0(W0,sdtpldt0(W1,W2)) = sdtpldt0(sdtpldt0(W0,W1),W2)
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W0) ) ) ).

fof(mDivSum,axiom,
    ! [W0,W1,W2] :
      ( ( doDivides0(W0,sdtpldt0(W1,W2))
       <= ( doDivides0(W0,W2)
          & doDivides0(W0,W1) ) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W2) ) ) ).

fof(m_MulZero,axiom,
    ! [W0] :
      ( ( sz00 = sdtasdt0(sz00,W0)
        & sdtasdt0(W0,sz00) = sz00 )
     <= aNaturalNumber0(W0) ) ).

fof(m__1324_04,hypothesis,
    ( doDivides0(xl,sdtpldt0(xm,xn))
    & doDivides0(xl,xm) ) ).

fof(mAddCanc,axiom,
    ! [W0,W1,W2] :
      ( ( W1 = W2
       <= ( sdtpldt0(W0,W1) = sdtpldt0(W0,W2)
          | sdtpldt0(W2,W0) = sdtpldt0(W1,W0) ) )
     <= ( aNaturalNumber0(W2)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mLETotal,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( sdtlseqdt0(W0,W1)
        | ( W0 != W1
          & sdtlseqdt0(W1,W0) ) ) ) ).

fof(mMonMul2,axiom,
    ! [W0,W1] :
      ( ( sdtlseqdt0(W1,sdtasdt0(W1,W0))
       <= sz00 != W0 )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(mSortsB,axiom,
    ! [W0,W1] :
      ( aNaturalNumber0(sdtpldt0(W0,W1))
     <= ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) ) ) ).

fof(mAddComm,axiom,
    ! [W0,W1] :
      ( sdtpldt0(W0,W1) = sdtpldt0(W1,W0)
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(mZeroMul,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( ( sz00 = W1
          | sz00 = W0 )
       <= sz00 = sdtasdt0(W0,W1) ) ) ).

fof(mZeroAdd,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) )
     => ( ( W0 = sz00
          & sz00 = W1 )
       <= sdtpldt0(W0,W1) = sz00 ) ) ).

fof(mLETran,axiom,
    ! [W0,W1,W2] :
      ( ( sdtlseqdt0(W0,W2)
       <= ( sdtlseqdt0(W1,W2)
          & sdtlseqdt0(W0,W1) ) )
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W2) ) ) ).

fof(mLERefl,axiom,
    ! [W0] :
      ( sdtlseqdt0(W0,W0)
     <= aNaturalNumber0(W0) ) ).

fof(mMulAsso,axiom,
    ! [W0,W1,W2] :
      ( sdtasdt0(W0,sdtasdt0(W1,W2)) = sdtasdt0(sdtasdt0(W0,W1),W2)
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W2) ) ) ).

fof(mLEAsym,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( ( sdtlseqdt0(W0,W1)
          & sdtlseqdt0(W1,W0) )
       => W0 = W1 ) ) ).

fof(mNatSort,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => $true ) ).

fof(mAMDistr,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W2)
        & aNaturalNumber0(W0) )
     => ( sdtpldt0(sdtasdt0(W0,W1),sdtasdt0(W0,W2)) = sdtasdt0(W0,sdtpldt0(W1,W2))
        & sdtpldt0(sdtasdt0(W1,W0),sdtasdt0(W2,W0)) = sdtasdt0(sdtpldt0(W1,W2),W0) ) ) ).

fof(mSortsB_02,axiom,
    ! [W0,W1] :
      ( aNaturalNumber0(sdtasdt0(W0,W1))
     <= ( aNaturalNumber0(W0)
        & aNaturalNumber0(W1) ) ) ).

fof(m_MulUnit,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( sdtasdt0(sz10,W0) = W0
        & sdtasdt0(W0,sz10) = W0 ) ) ).

fof(m_AddZero,axiom,
    ! [W0] :
      ( aNaturalNumber0(W0)
     => ( W0 = sdtpldt0(W0,sz00)
        & W0 = sdtpldt0(sz00,W0) ) ) ).

fof(mMonMul,axiom,
    ! [W0,W1,W2] :
      ( ( aNaturalNumber0(W2)
        & aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( ( W1 != W2
          & sdtlseqdt0(W1,W2)
          & sz00 != W0 )
       => ( sdtasdt0(W0,W1) != sdtasdt0(W0,W2)
          & sdtlseqdt0(sdtasdt0(W0,W1),sdtasdt0(W0,W2))
          & sdtasdt0(W1,W0) != sdtasdt0(W2,W0)
          & sdtlseqdt0(sdtasdt0(W1,W0),sdtasdt0(W2,W0)) ) ) ) ).

fof(m__,conjecture,
    ( ( ? [W0] :
          ( W0 = sdtsldt0(xm,xl)
          & ? [W1] :
              ( sdtlseqdt0(W0,W1)
              & ? [W2] :
                  ( sdtpldt0(sdtasdt0(xl,W0),xn) = sdtpldt0(sdtasdt0(xl,W0),sdtasdt0(xl,W2))
                  & sdtasdt0(xl,W2) = xn
                  & W2 = sdtmndt0(W1,W0) )
              & W1 = sdtsldt0(sdtpldt0(xm,xn),xl) ) )
     <= sz00 != xl )
   => doDivides0(xl,xn) ) ).

fof(mLENTr,axiom,
    ! [W0] :
      ( ( W0 = sz00
        | W0 = sz10
        | ( W0 != sz10
          & sdtlseqdt0(sz10,W0) ) )
     <= aNaturalNumber0(W0) ) ).

fof(m__1324,hypothesis,
    ( aNaturalNumber0(xl)
    & aNaturalNumber0(xm)
    & aNaturalNumber0(xn) ) ).

fof(mIH_03,axiom,
    ! [W0,W1] :
      ( ( aNaturalNumber0(W1)
        & aNaturalNumber0(W0) )
     => ( iLess0(W0,W1)
       <= ( sdtlseqdt0(W0,W1)
          & W1 != W0 ) ) ) ).

fof(mMulCanc,axiom,
    ! [W0] :
      ( ( sz00 != W0
       => ! [W1,W2] :
            ( ( ( sdtasdt0(W2,W0) = sdtasdt0(W1,W0)
                | sdtasdt0(W0,W1) = sdtasdt0(W0,W2) )
             => W2 = W1 )
           <= ( aNaturalNumber0(W1)
              & aNaturalNumber0(W2) ) ) )
     <= aNaturalNumber0(W0) ) ).

