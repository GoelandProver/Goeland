include('Axioms/COM001+0.ax').
fof('T-Strong',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(VC,Ve,VT)
     <= ( ~ visFreeVar(Vx,Ve)
        & vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ) ).

fof('T-Progress-T-app-IH2',axiom,
    ! [VT] :
      ( ? [Veout] : vsomeExp(Veout) = vreduce(ve2)
     <= ( ~ visValue(ve2)
        & vtcheck(vempty,ve2,VT) ) ) ).

fof('T-Weak',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(vbind(Vx,VS,VC),Ve,VT)
     <= ( vtcheck(VC,Ve,VT)
        & vlookup(Vx,VC) = vnoType ) ) ).

fof('T-Progress-T-app-IH1',axiom,
    ! [VT] :
      ( ? [Veout] : vreduce(ve1) = vsomeExp(Veout)
     <= ( ~ visValue(ve1)
        & vtcheck(vempty,ve1,VT) ) ) ).

fof('T-Progress-T-app',conjecture,
    ! [VT] :
      ( ( ~ visValue(vapp(ve1,ve2))
        & vtcheck(vempty,vapp(ve1,ve2),VT) )
     => ? [Veout] : vsomeExp(Veout) = vreduce(vapp(ve1,ve2)) ) ).

