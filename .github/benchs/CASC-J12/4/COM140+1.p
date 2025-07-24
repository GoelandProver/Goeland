include('Axioms/COM001+0.ax').
include('Axioms/COM001+1.ax').
fof('T-Weak-abs-1-gen',axiom,
    ! [Vx,VS,VC,Vy,VS1,Ve1,VT] :
      ( ( vnoType = vlookup(Vx,VC)
        & vtcheck(VC,vabs(Vy,VS1,Ve1),VT)
        & Vx != Vy )
     => vtcheck(vbind(Vx,VS,VC),vabs(Vy,VS1,Ve1),VT) ) ).

fof('T-Weak-abs-2',conjecture,
    ! [Vx,VS,VC,Vy,VS1,VT] :
      ( ( Vy = Vx
        & vtcheck(VC,vabs(Vy,VS1,veabs),VT)
        & vnoType = vlookup(Vx,VC) )
     => vtcheck(vbind(Vx,VS,VC),vabs(Vy,VS1,veabs),VT) ) ).

