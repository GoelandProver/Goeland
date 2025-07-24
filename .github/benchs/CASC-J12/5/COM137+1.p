include('Axioms/COM001+0.ax').
fof('T-Weak',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(vbind(Vx,VS,VC),Ve,VT)
     <= ( vtcheck(VC,Ve,VT)
        & vlookup(Vx,VC) = vnoType ) ) ).

fof('T-Strong-app-IH2',axiom,
    ! [Vx,VS,VC,VT] :
      ( vtcheck(VC,ve2app,VT)
     <= ( vtcheck(vbind(Vx,VS,VC),ve2app,VT)
        & ~ visFreeVar(Vx,ve2app) ) ) ).

fof('T-Strong-app',conjecture,
    ! [Vx,VS,VC,VT] :
      ( ( ~ visFreeVar(Vx,vapp(ve1app,ve2app))
        & vtcheck(vbind(Vx,VS,VC),vapp(ve1app,ve2app),VT) )
     => vtcheck(VC,vapp(ve1app,ve2app),VT) ) ).

fof('T-Strong-app-IH1',axiom,
    ! [Vx,VS,VC,VT] :
      ( ( ~ visFreeVar(Vx,ve1app)
        & vtcheck(vbind(Vx,VS,VC),ve1app,VT) )
     => vtcheck(VC,ve1app,VT) ) ).

