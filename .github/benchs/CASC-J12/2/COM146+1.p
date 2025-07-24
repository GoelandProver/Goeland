include('Axioms/COM001+0.ax').
fof('T-Weak-FreeVar',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( ( vtcheck(VC,Ve,VT)
        & ~ visFreeVar(Vx,Ve) )
     => vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ).

fof('T-Preservation-T-var',conjecture,
    ! [Vx,VC,Veout,VT] :
      ( ( vtcheck(VC,vvar(Vx),VT)
        & vreduce(vvar(Vx)) = vsomeExp(Veout) )
     => vtcheck(VC,Veout,VT) ) ).

fof('T-Weak',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( ( vtcheck(VC,Ve,VT)
        & vnoType = vlookup(Vx,VC) )
     => vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ).

fof('T-subst',axiom,
    ! [VT,VC,Vx,Ve,Ve2,VT2] :
      ( vtcheck(VC,vsubst(Vx,Ve,Ve2),VT2)
     <= ( vtcheck(VC,Ve,VT)
        & vtcheck(vbind(Vx,VT,VC),Ve2,VT2) ) ) ).

fof('T-Strong',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(VC,Ve,VT)
     <= ( ~ visFreeVar(Vx,Ve)
        & vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ) ).

