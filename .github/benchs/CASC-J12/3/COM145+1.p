include('Axioms/COM001+0.ax').
fof('T-Preservation-T-app',conjecture,
    ! [VC,Veout,VT] :
      ( vtcheck(VC,Veout,VT)
     <= ( vtcheck(VC,vapp(ve1,ve2),VT)
        & vreduce(vapp(ve1,ve2)) = vsomeExp(Veout) ) ) ).

fof('T-Weak-FreeVar',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(vbind(Vx,VS,VC),Ve,VT)
     <= ( vtcheck(VC,Ve,VT)
        & ~ visFreeVar(Vx,Ve) ) ) ).

fof('T-subst',axiom,
    ! [VT,VC,Vx,Ve,Ve2,VT2] :
      ( ( vtcheck(vbind(Vx,VT,VC),Ve2,VT2)
        & vtcheck(VC,Ve,VT) )
     => vtcheck(VC,vsubst(Vx,Ve,Ve2),VT2) ) ).

fof('T-Preservation-T-app-IH2',axiom,
    ! [VC,Veout,VT] :
      ( ( vtcheck(VC,ve2,VT)
        & vreduce(ve2) = vsomeExp(Veout) )
     => vtcheck(VC,Veout,VT) ) ).

fof('T-Strong',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(VC,Ve,VT)
     <= ( vtcheck(vbind(Vx,VS,VC),Ve,VT)
        & ~ visFreeVar(Vx,Ve) ) ) ).

fof('T-Preservation-T-app-IH1',axiom,
    ! [VC,Veout,VT] :
      ( ( vtcheck(VC,ve1,VT)
        & vreduce(ve1) = vsomeExp(Veout) )
     => vtcheck(VC,Veout,VT) ) ).

fof('T-Weak',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( ( vnoType = vlookup(Vx,VC)
        & vtcheck(VC,Ve,VT) )
     => vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ).

