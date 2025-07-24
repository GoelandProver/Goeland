include('Axioms/COM001+0.ax').
fof('T-Weak',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( ( vtcheck(VC,Ve,VT)
        & vlookup(Vx,VC) = vnoType )
     => vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ).

fof('T-Weak-FreeVar',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(vbind(Vx,VS,VC),Ve,VT)
     <= ( vtcheck(VC,Ve,VT)
        & ~ visFreeVar(Vx,Ve) ) ) ).

fof('T-subst-var',conjecture,
    ! [VT,VC,Vx,Ve,Vy,VT2] :
      ( ( vtcheck(VC,Ve,VT)
        & vtcheck(vbind(Vx,VT,VC),vvar(Vy),VT2) )
     => vtcheck(VC,vsubst(Vx,Ve,vvar(Vy)),VT2) ) ).

fof('T-Strong',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(VC,Ve,VT)
     <= ( vtcheck(vbind(Vx,VS,VC),Ve,VT)
        & ~ visFreeVar(Vx,Ve) ) ) ).

