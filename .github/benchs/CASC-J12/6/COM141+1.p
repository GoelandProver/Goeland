include('Axioms/COM001+0.ax').
fof('T-Weak-abs-2',axiom,
    ! [Vx,VS,VC,Vy,VS1,VT] :
      ( ( vtcheck(VC,vabs(Vy,VS1,veabs),VT)
        & vnoType = vlookup(Vx,VC)
        & Vy = Vx )
     => vtcheck(vbind(Vx,VS,VC),vabs(Vy,VS1,veabs),VT) ) ).

fof('T-Weak-abs-IH',axiom,
    ! [Vx,VS,VC,VT] :
      ( ( vtcheck(VC,veabs,VT)
        & vnoType = vlookup(Vx,VC) )
     => vtcheck(vbind(Vx,VS,VC),veabs,VT) ) ).

fof('T-Weak-abs',conjecture,
    ! [Vx,VS,VC,Vy,VS1,VT] :
      ( ( vlookup(Vx,VC) = vnoType
        & vtcheck(VC,vabs(Vy,VS1,veabs),VT) )
     => vtcheck(vbind(Vx,VS,VC),vabs(Vy,VS1,veabs),VT) ) ).

fof('T-Weak-abs-1',axiom,
    ! [Vx,VS,VC,Vy,VS1,VT] :
      ( ( vtcheck(VC,vabs(Vy,VS1,veabs),VT)
        & vnoType = vlookup(Vx,VC)
        & Vx != Vy )
     => vtcheck(vbind(Vx,VS,VC),vabs(Vy,VS1,veabs),VT) ) ).

