include('Axioms/COM001+0.ax').
fof('T-Strong',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( ( ~ visFreeVar(Vx,Ve)
        & vtcheck(vbind(Vx,VS,VC),Ve,VT) )
     => vtcheck(VC,Ve,VT) ) ).

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

fof('T-subst-app',conjecture,
    ! [VT,VC,Vx,Ve,VT2] :
      ( ( vtcheck(vbind(Vx,VT,VC),vapp(ve1,ve2),VT2)
        & vtcheck(VC,Ve,VT) )
     => vtcheck(VC,vsubst(Vx,Ve,vapp(ve1,ve2)),VT2) ) ).

fof('T-subst-IH-app2',axiom,
    ! [VT,VC,Vx,Ve,VT2] :
      ( ( vtcheck(VC,Ve,VT)
        & vtcheck(vbind(Vx,VT,VC),ve2,VT2) )
     => vtcheck(VC,vsubst(Vx,Ve,ve2),VT2) ) ).

fof('T-subst-IH-app1',axiom,
    ! [VT,VC,Vx,Ve,VT2] :
      ( vtcheck(VC,vsubst(Vx,Ve,ve1),VT2)
     <= ( vtcheck(vbind(Vx,VT,VC),ve1,VT2)
        & vtcheck(VC,Ve,VT) ) ) ).

