include('Axioms/COM001+0.ax').
include('Axioms/COM001+1.ax').
fof('T-Strong',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( vtcheck(VC,Ve,VT)
     <= ( ~ visFreeVar(Vx,Ve)
        & vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ) ).

fof('fresh-unequal-var-3',axiom,
    ! [Ve,Ve1,Vx,Vfresh] :
      ( Vx != Vfresh
     <= Vfresh = vgensym(vapp(vapp(Ve,Ve1),vvar(Vx))) ) ).

fof('T-subst-abs-2-gen',axiom,
    ! [VT,VC,Vx,Ve,Vy,VS,Ve1,VT2] :
      ( ( vtcheck(VC,Ve,VT)
        & vtcheck(vbind(Vx,VT,VC),vabs(Vy,VS,Ve1),VT2)
        & ~ visFreeVar(Vy,Ve)
        & Vy != Vx )
     => vtcheck(VC,vsubst(Vx,Ve,vabs(Vy,VS,Ve1)),VT2) ) ).

fof('T-Weak',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( ( vtcheck(VC,Ve,VT)
        & vlookup(Vx,VC) = vnoType )
     => vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ).

fof('fresh-free-2',conjecture,
    ! [Ve,Vx,Vfresh,Ve1] :
      ( ~ visFreeVar(Vfresh,Ve1)
     <= vgensym(vapp(vapp(Ve,Ve1),vvar(Vx))) = Vfresh ) ).

fof('T-Weak-FreeVar',axiom,
    ! [Vx,VS,VC,Ve,VT] :
      ( ( ~ visFreeVar(Vx,Ve)
        & vtcheck(VC,Ve,VT) )
     => vtcheck(vbind(Vx,VS,VC),Ve,VT) ) ).

