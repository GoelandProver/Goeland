include('Axioms/GEO011+0.ax').
fof(aSatz6_11b,axiom,
    ! [Xr,Xa,Xb,Xc,Xp,Xq] :
      ( ~ s_e(Xa,Xq,Xb,Xc)
      | Xp = Xq
      | ~ sameside(Xq,Xa,Xr)
      | ~ s_e(Xa,Xp,Xb,Xc)
      | ~ sameside(Xp,Xa,Xr)
      | Xc = Xb
      | Xa = Xr ) ).

fof(aSatz7_15a,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( ~ s_t(Xp,Xq,Xr)
      | s_t(s(Xa,Xp),s(Xa,Xq),s(Xa,Xr)) ) ).

fof(aSatz9_4a,axiom,
    ! [Xa,Xp,Xq,Xc,Xcs,Xr,Xm,U] :
      ( ~ opposite(Xa,Xp,Xq,Xc)
      | Xp = Xq
      | ~ s_col(Xp,Xq,Xr)
      | Xcs = Xr
      | sameside(s(Xm,U),Xcs,Xc)
      | ~ le(Xcs,Xc,Xr,Xa)
      | ~ sameside(U,Xr,Xa)
      | ~ s_m(Xr,Xm,Xcs)
      | ~ perp(Xp,Xq,Xc,Xcs)
      | ~ perp(Xp,Xq,Xa,Xr)
      | ~ s_col(Xp,Xq,Xcs) ) ).

fof(d_Defn8_11b,axiom,
    ! [Xp,Xq,Xp1,Xq1,X] :
      ( ( perpAt(Xp,Xq,il(Xp,Xq,Xp1,Xq1),Xp1,Xq1)
        | ~ perp(Xp,Xq,Xp1,Xq1) )
      & ( ~ perpAt(Xp,Xq,X,Xp1,Xq1)
        | perp(Xp,Xq,Xp1,Xq1) ) ) ).

fof(aSatz5_12a1,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | le(Xa,Xb,Xa,Xc)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz7_10a,axiom,
    ! [Xa,Xp] :
      ( Xa = Xp
      | s(Xa,Xp) != Xp ) ).

fof(aSatz6_25,axiom,
    ! [Xa,Xb] :
      ( Xa = Xb
      | ~ s_col(Xa,Xb,pointOffLine(Xa,Xb)) ) ).

fof(aSatz4_3,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_t(Xa1,Xb1,Xc1)
      | ~ s_e(Xa,Xc,Xa1,Xc1)
      | ~ s_e(Xb,Xc,Xb1,Xc1)
      | s_e(Xa,Xb,Xa1,Xb1)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz3_13c,axiom,
    alpha != gamma ).

fof(aSatz8_2,axiom,
    ! [Xa,Xb,Xc] :
      ( s_r(Xc,Xb,Xa)
      | ~ s_r(Xa,Xb,Xc) ) ).

fof(aSatz7_22a,axiom,
    ! [Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2] :
      ( ~ le(Xc,Xa1,Xc,Xa2)
      | s_t(Xm1,Xc,Xm2)
      | ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2) ) ).

fof(aSatz3_14a,axiom,
    ! [Xa,Xb] : s_t(Xa,Xb,ext(Xa,Xb,alpha,gamma)) ).

fof(aSatz3_6b,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xc,Xd)
      | s_t(Xa,Xb,Xd)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz3_17,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xp] :
      ( ( ~ s_t(Xa,Xp,Xa1)
        | s_t(Xb,crossbar(Xa,Xb,Xc,Xa1,Xb1,Xp),Xb1)
        | ~ s_t(Xa1,Xb1,Xc)
        | ~ s_t(Xa,Xb,Xc) )
      & ( ~ s_t(Xa,Xb,Xc)
        | ~ s_t(Xa1,Xb1,Xc)
        | s_t(Xp,crossbar(Xa,Xb,Xc,Xa1,Xb1,Xp),Xc)
        | ~ s_t(Xa,Xp,Xa1) ) ) ).

fof(aSatz6_4a,axiom,
    ! [Xa,Xp,Xb] :
      ( ( ~ sameside(Xa,Xp,Xb)
        | ~ s_t(Xa,Xp,Xb) )
      & ( ~ sameside(Xa,Xp,Xb)
        | s_col(Xa,Xp,Xb) ) ) ).

fof(aSatz6_5,axiom,
    ! [Xa,Xp] :
      ( sameside(Xa,Xp,Xa)
      | Xa = Xp ) ).

fof(aSatz5_6,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ~ s_e(Xa,Xb,Xa1,Xb1)
      | ~ s_e(Xc,Xd,Xc1,Xd1)
      | le(Xa1,Xb1,Xc1,Xd1)
      | ~ le(Xa,Xb,Xc,Xd) ) ).

fof(aSatz5_3,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( ~ s_t(Xa,Xb,Xd)
      | ~ s_t(Xa,Xc,Xd)
      | s_t(Xa,Xc,Xb)
      | s_t(Xa,Xb,Xc) ) ).

fof(aSatz7_13,axiom,
    ! [Xp,Xq,Xa] : s_e(Xp,Xq,s(Xa,Xp),s(Xa,Xq)) ).

fof(aSatz5_5b,axiom,
    ! [Xa,Xb,Xc,Xd,Xe] :
      ( ~ s_e(Xa,Xe,Xc,Xd)
      | ~ s_t(Xa,Xb,Xe)
      | le(Xa,Xb,Xc,Xd) ) ).

fof(aSatz7_22,axiom,
    ! [Xa1,Xc,Xa2,Xb1,Xb2,Xm1,Xm2] :
      ( ~ s_e(Xc,Xa1,Xc,Xb1)
      | ~ s_m(Xa2,Xm2,Xb2)
      | s_t(Xm1,Xc,Xm2)
      | ~ s_m(Xa1,Xm1,Xb1)
      | ~ s_e(Xc,Xa2,Xc,Xb2)
      | ~ s_t(Xb1,Xc,Xb2)
      | ~ s_t(Xa1,Xc,Xa2) ) ).

fof(aSatz2_14,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | s_e(Xb,Xa,Xd,Xc) ) ).

fof(aSatz8_12b,axiom,
    ! [Xa,Xb,Xp,Xq] :
      ( ~ perp(Xa,Xb,Xp,Xq)
      | perp(Xp,Xq,Xa,Xb) ) ).

fof(aSatz8_20a,axiom,
    ! [Xa,Xb,Xc,Xp] :
      ( ~ s_r(Xa,Xb,Xc)
      | s_r(Xb,Xa,Xp)
      | ~ s_m(s(Xa,Xc),Xp,s(Xb,Xc)) ) ).

fof(d_Defn2_10,axiom,
    ! [Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd] :
      ( ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Za,Zb,Zc) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xa,Xb,Za,Zb) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xa,Xd,Za,Zd) )
      & ( ~ s_t(Xa,Xb,Xc)
        | ~ s_t(Za,Zb,Zc)
        | ~ s_e(Xb,Xc,Zb,Zc)
        | s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | ~ s_e(Xb,Xd,Zb,Zd)
        | ~ s_e(Xa,Xd,Za,Zd)
        | ~ s_e(Xa,Xb,Za,Zb) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xb,Xd,Zb,Zd) )
      & ( s_e(Xb,Xc,Zb,Zc)
        | ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( s_t(Xa,Xb,Xc)
        | ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) ) ) ).

fof(aSatz6_15a,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( ~ s_t(Xq,Xp,Xr)
      | ~ s_col(Xa,Xp,Xq)
      | Xa = Xp
      | sameside(Xa,Xp,Xr)
      | sameside(Xa,Xp,Xq)
      | Xr = Xp
      | Xq = Xp ) ).

fof(aSatz7_3a,axiom,
    ! [Xa,Xm] :
      ( Xm = Xa
      | ~ s_m(Xa,Xm,Xa) ) ).

fof(aSatz8_24b,axiom,
    ! [Xp,Xa,Xb,Xq,Xt,Xr,Xcx] :
      ( ~ perp(Xp,Xa,Xa,Xb)
      | ~ perp(Xq,Xb,Xa,Xb)
      | ~ s_col(Xa,Xb,Xt)
      | ~ s_t(Xp,Xt,Xq)
      | ~ s_t(Xb,Xr,Xq)
      | ~ s_e(Xa,Xp,Xb,Xr)
      | Xcx != ip(Xp,Xt,Xq,Xb,Xr)
      | s_m(Xp,Xcx,Xr) ) ).

fof(d_Defn9_7,axiom,
    ! [Xa,Xb,Xp,Xq,Xu,Xc,Xv] :
      ( ( s_col(Xp,Xq,ss1(Xa,Xb,Xp,Xq))
        | ~ samesideline(Xa,Xb,Xp,Xq) )
      & ( s_col(Xp,Xq,ss2(Xa,Xb,Xp,Xq))
        | ~ samesideline(Xa,Xb,Xp,Xq) )
      & ( ~ samesideline(Xa,Xb,Xp,Xq)
        | s_t(Xa,ss1(Xa,Xb,Xp,Xq),ss3(Xa,Xb,Xp,Xq)) )
      & ( ss1(Xa,Xb,Xp,Xq) != Xa
        | ~ samesideline(Xa,Xb,Xp,Xq) )
      & ( ~ samesideline(Xa,Xb,Xp,Xq)
        | ss2(Xa,Xb,Xp,Xq) != Xb )
      & ( ss3(Xa,Xb,Xp,Xq) != ss2(Xa,Xb,Xp,Xq)
        | ~ samesideline(Xa,Xb,Xp,Xq) )
      & ( Xq != Xp
        | ~ samesideline(Xa,Xb,Xp,Xq) )
      & ( ~ samesideline(Xa,Xb,Xp,Xq)
        | ~ s_col(Xp,Xq,Xa) )
      & ( ~ samesideline(Xa,Xb,Xp,Xq)
        | ~ s_col(Xp,Xq,Xb) )
      & ( ~ s_t(Xa,Xu,Xc)
        | Xc = Xu
        | Xu = Xa
        | Xv = Xb
        | s_col(Xp,Xq,Xa)
        | s_col(Xp,Xq,Xb)
        | samesideline(Xa,Xb,Xp,Xq)
        | Xc = Xv
        | Xq = Xp
        | ~ s_col(Xp,Xq,Xv)
        | ~ s_col(Xp,Xq,Xu)
        | ~ s_t(Xb,Xv,Xc) )
      & ( ~ samesideline(Xa,Xb,Xp,Xq)
        | ss3(Xa,Xb,Xp,Xq) != ss1(Xa,Xb,Xp,Xq) )
      & ( ~ samesideline(Xa,Xb,Xp,Xq)
        | s_t(Xb,ss2(Xa,Xb,Xp,Xq),ss3(Xa,Xb,Xp,Xq)) ) ) ).

fof(aExtPerp4,axiom,
    ! [Xa,Xb,Xp,Xq] :
      ( perp(Xa,Xb,Xq,Xp)
      | ~ perp(Xa,Xb,Xp,Xq) ) ).

fof(aLemma9_13a,axiom,
    ! [Xp,Xq,Xa,Xb] :
      ( samesideline(Xp,Xq,Xb,Xa)
      | ~ samesideline(Xp,Xq,Xa,Xb) ) ).

fof(aSatz8_13b,axiom,
    ! [Xa,Xb,Xp,Xq,Xcx,U,V] :
      ( Xa = Xb
      | ~ s_col(Xa,Xb,Xcx)
      | ~ s_col(Xa,Xb,U)
      | ~ s_col(Xp,Xq,V)
      | Xcx = U
      | ~ s_r(U,Xcx,V)
      | perpAt(Xa,Xb,Xcx,Xp,Xq)
      | Xcx = V
      | ~ s_col(Xp,Xq,Xcx)
      | Xq = Xp ) ).

fof(aSatz7_4a,axiom,
    ! [Xp,Xa] : s_m(Xp,Xa,s(Xa,Xp)) ).

fof(d_Defn4_4,axiom,
    ! [Xa1,Xa2,Xa3,Xb1,Xb2,Xb3] :
      ( ( ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | s_e(Xa1,Xa2,Xb1,Xb2) )
      & ( ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | s_e(Xa1,Xa3,Xb1,Xb3) )
      & ( ~ s_e(Xa1,Xa2,Xb1,Xb2)
        | ~ s_e(Xa1,Xa3,Xb1,Xb3)
        | s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | ~ s_e(Xa2,Xa3,Xb2,Xb3) )
      & ( s_e(Xa2,Xa3,Xb2,Xb3)
        | ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3) ) ) ).

fof(aSatz3_14b,axiom,
    ! [Xb,Xa] : Xb != ext(Xa,Xb,alpha,gamma) ).

fof(aSatz7_2,axiom,
    ! [Xa,Xm,Xb] :
      ( ~ s_m(Xa,Xm,Xb)
      | s_m(Xb,Xm,Xa) ) ).

fof(aA9,axiom,
    ! [Xp,Xq,Xa,Xz,Xb,Xc] :
      ( ~ s_e(Xb,Xp,Xb,Xq)
      | ~ s_e(Xc,Xp,Xc,Xq)
      | s_t(Xa,Xb,Xc)
      | s_t(Xc,Xa,Xb)
      | s_t(Xb,Xc,Xa)
      | ~ s_e(Xa,Xp,Xz,Xq)
      | Xp = Xq ) ).

fof(aSatz4_12,axiom,
    ! [Xa,Xb] : s_col(Xa,Xa,Xb) ).

fof(aSatz4_12b,axiom,
    ! [Xa,Xb] : s_col(Xa,Xb,Xa) ).

fof(aSatz3_1,axiom,
    ! [Xa,Xb] : s_t(Xa,Xb,Xb) ).

fof(d_Defn4_1,axiom,
    ! [Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd] :
      ( ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Xa,Xb,Xc) )
      & ( s_t(Za,Zb,Zc)
        | ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( s_e(Xb,Xc,Zb,Zc)
        | ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( s_e(Xa,Xd,Za,Zd)
        | ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( ~ s_t(Xa,Xb,Xc)
        | ~ s_t(Za,Zb,Zc)
        | s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | ~ s_e(Xc,Xd,Zc,Zd)
        | ~ s_e(Xa,Xd,Za,Zd)
        | ~ s_e(Xb,Xc,Zb,Zc)
        | ~ s_e(Xa,Xc,Za,Zc) )
      & ( s_e(Xc,Xd,Zc,Zd)
        | ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( s_e(Xa,Xc,Za,Zc)
        | ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) ) ) ).

fof(aSatz6_2a,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( ~ s_t(Xa,Xp,Xc)
      | sameside(Xa,Xp,Xb)
      | ~ s_t(Xb,Xp,Xc)
      | Xc = Xp
      | Xp = Xb
      | Xp = Xa ) ).

fof(aSatz6_17a,axiom,
    ! [Xp,Xq] :
      ( s_col(Xp,Xq,Xp)
      | Xq = Xp ) ).

fof(aSatz2_15,axiom,
    ! [Xa,Xb,Xc,XA,XB,XC] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(XA,XB,XC)
      | s_e(Xa,Xc,XA,XC)
      | ~ s_e(Xb,Xc,XA,XB)
      | ~ s_e(Xa,Xb,XB,XC) ) ).

fof(aSatz4_11c,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xc,Xb,Xa) ) ).

fof(aSatz7_16a,axiom,
    ! [Xp,Xq,Xr,Xcs,Xa] :
      ( s_e(s(Xa,Xp),s(Xa,Xq),s(Xa,Xr),s(Xa,Xcs))
      | ~ s_e(Xp,Xq,Xr,Xcs) ) ).

fof(aSatz2_3,axiom,
    ! [Xa,Xb,Xc,Xd,Xe,Xf] :
      ( s_e(Xa,Xb,Xe,Xf)
      | ~ s_e(Xc,Xd,Xe,Xf)
      | ~ s_e(Xa,Xb,Xc,Xd) ) ).

fof(aSatz2_1,axiom,
    ! [Xa,Xb] : s_e(Xa,Xb,Xa,Xb) ).

fof(aSatz8_14c,axiom,
    ! [Xa,Xb,Xc,Xp,Xq] :
      ( ~ perpAt(Xa,Xb,Xc,Xp,Xq)
      | Xc = il(Xa,Xb,Xp,Xq) ) ).

fof(aSatz8_24a,axiom,
    ! [Xp,Xa,Xb,Xq,Xt,Xr,Xcx] :
      ( ~ s_col(Xa,Xb,Xt)
      | s_m(Xa,Xcx,Xb)
      | Xcx != ip(Xp,Xt,Xq,Xb,Xr)
      | ~ s_e(Xa,Xp,Xb,Xr)
      | ~ s_t(Xb,Xr,Xq)
      | ~ s_t(Xp,Xt,Xq)
      | ~ perp(Xq,Xb,Xa,Xb)
      | ~ perp(Xp,Xa,Xa,Xb) ) ).

fof(aSatz8_22b,axiom,
    ! [Xa,Xp,Xb,Xq,Xt] :
      ( ~ perp(Xa,Xb,Xa,Xp)
      | s_m(Xa,midpointAux(Xa,Xb,Xp,Xq,Xt),Xb)
      | ~ s_col(Xa,Xb,Xt)
      | ~ s_t(Xp,Xt,Xq)
      | ~ perp(Xa,Xb,Xb,Xq)
      | ~ le(Xa,Xp,Xb,Xq) ) ).

fof(aSatz8_3,axiom,
    ! [Xa,Xb,Xc,Xa1] :
      ( s_r(Xa1,Xb,Xc)
      | ~ s_col(Xb,Xa,Xa1)
      | Xa = Xb
      | ~ s_r(Xa,Xb,Xc) ) ).

fof(aSatz4_11e,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xa,Xc,Xb) ) ).

fof(aSatz7_4b,axiom,
    ! [Xp,Xa,Xr,Xq] :
      ( ~ s_m(Xp,Xa,Xq)
      | Xr = Xq
      | ~ s_m(Xp,Xa,Xr) ) ).

fof(d_Defn7_1,axiom,
    ! [Xa,Xm,Xb] :
      ( ( ~ s_t(Xa,Xm,Xb)
        | s_m(Xa,Xm,Xb)
        | ~ s_e(Xm,Xa,Xm,Xb) )
      & ( s_e(Xm,Xa,Xm,Xb)
        | ~ s_m(Xa,Xm,Xb) )
      & ( ~ s_m(Xa,Xm,Xb)
        | s_t(Xa,Xm,Xb) ) ) ).

fof(aSatz6_11a,axiom,
    ! [Xr,Xa,Xb,Xc] :
      ( ( sameside(insert(Xb,Xc,Xa,Xr),Xa,Xr)
        | Xb = Xc
        | Xa = Xr )
      & ( Xa = Xr
        | Xc = Xb
        | s_e(Xa,insert(Xb,Xc,Xa,Xr),Xb,Xc) ) ) ).

fof(aLemma9_13d,axiom,
    ! [Xa,Xb,Xp,Xq] :
      ( Xa = Xb
      | samesideline(Xq,Xp,Xa,Xb)
      | ~ samesideline(Xp,Xq,Xa,Xb) ) ).

fof(aSatz4_6,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
      | s_t(Xa1,Xb1,Xc1)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz8_20b,axiom,
    ! [Xa,Xb,Xc,Xp] :
      ( ~ s_r(Xa,Xb,Xc)
      | Xc = Xb
      | Xa != Xp
      | ~ s_m(s(Xa,Xc),Xp,s(Xb,Xc)) ) ).

fof(aSatz8_18a,axiom,
    ! [Xa,Xb,Xc,Xp,Xq] :
      ( s_col(Xa,Xb,Xc)
      | ~ perp(Xa,Xb,Xc,Xp)
      | ~ perp(Xa,Xb,Xc,Xq)
      | Xq = Xp
      | ~ s_col(Xa,Xb,Xq)
      | ~ s_col(Xa,Xb,Xp) ) ).

fof(d_Defn4_15,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ( s_e(Xb,Xd,Xb1,Xd1)
        | ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1) )
      & ( ~ s_col(Xa,Xb,Xc)
        | ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
        | ~ s_e(Xa,Xd,Xa1,Xd1)
        | ~ s_e(Xb,Xd,Xb1,Xd1)
        | s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1) )
      & ( s_e(Xa,Xd,Xa1,Xd1)
        | ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1) )
      & ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1) )
      & ( s_col(Xa,Xb,Xc)
        | ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1) ) ) ).

fof(aSatz9_4b,axiom,
    ! [Xa,Xp,Xq,Xc,Xcs,Xr,Xm,U] :
      ( ~ opposite(Xa,Xp,Xq,Xc)
      | Xq = Xp
      | ~ s_col(Xp,Xq,Xr)
      | ~ perp(Xp,Xq,Xa,Xr)
      | ~ sameside(U,Xr,Xa)
      | sameside(s(Xm,U),Xcs,Xc)
      | Xcs != Xr
      | ~ s_m(Xr,Xm,Xcs)
      | ~ perp(Xp,Xq,Xc,Xcs)
      | ~ s_col(Xp,Xq,Xcs) ) ).

fof(aSatz6_4b,axiom,
    ! [Xa,Xp,Xb] :
      ( sameside(Xa,Xp,Xb)
      | ~ s_col(Xa,Xp,Xb)
      | s_t(Xa,Xp,Xb) ) ).

fof(aSatz6_3a,axiom,
    ! [Xa,Xp,Xb] :
      ( ( ~ sameside(Xa,Xp,Xb)
        | Xp != Xb )
      & ( ~ sameside(Xa,Xp,Xb)
        | s_t(Xa,Xp,c63(Xa,Xp,Xb)) )
      & ( ~ sameside(Xa,Xp,Xb)
        | s_t(Xb,Xp,c63(Xa,Xp,Xb)) )
      & ( c63(Xa,Xp,Xb) != Xp
        | ~ sameside(Xa,Xp,Xb) )
      & ( Xp != Xa
        | ~ sameside(Xa,Xp,Xb) ) ) ).

fof(aSatz5_7,axiom,
    ! [Xa,Xb] : le(Xa,Xb,Xa,Xb) ).

fof(aSatz5_1,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xa = Xb
      | s_t(Xa,Xd,Xc)
      | s_t(Xa,Xc,Xd)
      | ~ s_t(Xa,Xb,Xd)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz7_20,axiom,
    ! [Xa,Xm,Xb] :
      ( ~ s_e(Xm,Xa,Xm,Xb)
      | s_m(Xa,Xm,Xb)
      | Xa = Xb
      | ~ s_col(Xa,Xm,Xb) ) ).

fof(aExtPerp5,axiom,
    ! [Xa,Xb,Xp,Xq,Xc,Xd] :
      ( ~ s_col(Xa,Xb,Xq)
      | ~ perp(Xa,Xb,Xc,Xd)
      | perp(Xp,Xq,Xc,Xd)
      | Xb = Xa
      | Xq = Xp
      | ~ s_col(Xa,Xb,Xp) ) ).

fof(aSatz3_4,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xb,Xa,Xc)
      | Xb = Xa ) ).

fof(aSatz9_4a2,axiom,
    ! [Xa,Xp,Xq,Xc,Xcs,Xr,Xm,U] :
      ( Xp = Xq
      | ~ s_col(Xp,Xq,Xcs)
      | ~ s_col(Xp,Xq,Xr)
      | ~ perp(Xp,Xq,Xa,Xr)
      | ~ perp(Xp,Xq,Xc,Xcs)
      | ~ s_m(Xr,Xm,Xcs)
      | ~ le(Xcs,Xc,Xr,Xa)
      | ~ sameside(s(Xm,U),Xcs,Xc)
      | Xcs = Xr
      | sameside(U,Xr,Xa)
      | ~ opposite(Xa,Xp,Xq,Xc) ) ).

fof(aSatz8_14b,axiom,
    ! [Xa,Xb,Xp,Xq,Xc] :
      ( ~ perp(Xa,Xb,Xp,Xq)
      | ~ s_col(Xp,Xq,Xc)
      | perpAt(Xa,Xb,Xc,Xp,Xq)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aExtCol2,axiom,
    ! [Xa,Xb,Xc,Xd,Xp] :
      ( Xc = Xd
      | ~ s_col(Xa,Xb,Xc)
      | ~ s_col(Xa,Xb,Xd)
      | ~ s_col(Xc,Xd,Xp)
      | s_col(Xa,Xb,Xp)
      | Xb = Xa ) ).

fof(aSatz3_3,axiom,
    ! [Xa1,Xb1] : s_t(Xa1,Xa1,Xb1) ).

fof(aSatz5_12a2,axiom,
    ! [Xa,Xb,Xc] :
      ( le(Xb,Xc,Xa,Xc)
      | ~ s_t(Xa,Xb,Xc)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz7_15b,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( s_t(Xp,Xq,Xr)
      | ~ s_t(s(Xa,Xp),s(Xa,Xq),s(Xa,Xr)) ) ).

fof(aSatz4_18,axiom,
    ! [Xa,Xb,Xc,Xc1] :
      ( Xa = Xb
      | ~ s_e(Xb,Xc,Xb,Xc1)
      | Xc1 = Xc
      | ~ s_e(Xa,Xc,Xa,Xc1)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz6_15c,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( Xr = Xp
      | s_col(Xa,Xp,Xq)
      | ~ sameside(Xa,Xp,Xr)
      | ~ s_t(Xq,Xp,Xr)
      | Xq = Xp ) ).

fof(aSatz4_11a,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xb,Xc,Xa) ) ).

fof(aSatz9_8,axiom,
    ! [Xa,Xp,Xq,Xc,Xb] :
      ( opposite(Xb,Xp,Xq,Xc)
      | ~ samesideline(Xa,Xb,Xp,Xq)
      | ~ opposite(Xa,Xp,Xq,Xc) ) ).

fof(aSatz8_6,axiom,
    ! [Xa,Xb,Xc,Xa1] :
      ( ~ s_r(Xa,Xb,Xc)
      | Xb = Xc
      | ~ s_t(Xa,Xc,Xa1)
      | ~ s_r(Xa1,Xb,Xc) ) ).

fof(aSatz8_8,axiom,
    ! [Xa,Xb] :
      ( Xa = Xb
      | ~ s_r(Xa,Xb,Xa) ) ).

fof(aLemma9_13e,axiom,
    ! [Xa,Xp,Xq,Xb,Xc] :
      ( ~ opposite(Xa,Xp,Xq,Xb)
      | opposite(Xa,Xp,Xq,Xc)
      | ~ samesideline(Xb,Xc,Xp,Xq) ) ).

fof(aSatz4_14,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1] :
      ( ~ s_col(Xa,Xb,Xc)
      | ~ s_e(Xa,Xb,Xa1,Xb1)
      | s_e3(Xa,Xb,Xc,Xa1,Xb1,insert5(Xa,Xb,Xc,Xa1,Xb1)) ) ).

fof(aLemma9_13g,conjecture,
    ! [Xp,Xq,Xc,Xa,Xb] :
      ( Xp = Xq
      | s_col(Xc,Xa,Xb)
      | Xa = Xc
      | ~ perpAt(Xp,Xq,Xc,Xb,Xc)
      | ~ perpAt(Xp,Xq,Xc,Xa,Xc) ) ).

fof(aext1,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_col(Xa,Xb,Xc)
      | ~ s_col(Xa,Xb,Xd)
      | Xb = Xa
      | s_col(Xa,Xc,Xd) ) ).

fof(aSatz2_4,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_e(Xb,Xa,Xc,Xd)
      | ~ s_e(Xa,Xb,Xc,Xd) ) ).

fof(d_Defn6_1,axiom,
    ! [Xa,Xp,Xb] :
      ( ( Xa != Xp
        | ~ sameside(Xa,Xp,Xb) )
      & ( Xb != Xp
        | ~ sameside(Xa,Xp,Xb) )
      & ( sameside(Xa,Xp,Xb)
        | Xp = xb
        | Xa = Xp
        | ~ s_t(Xp,Xa,Xb) )
      & ( ~ s_t(Xp,Xb,Xa)
        | sameside(Xa,Xp,Xb)
        | Xb = Xp
        | Xa = Xp )
      & ( s_t(Xp,Xb,Xa)
        | s_t(Xp,Xa,Xb)
        | ~ sameside(Xa,Xp,Xb) ) ) ).

fof(aSatz7_8,axiom,
    ! [Xa,Xp,Xr,Xq] :
      ( Xp = Xq
      | s(Xa,Xq) != Xr
      | s(Xa,Xp) != Xr ) ).

fof(aSatz6_17b,axiom,
    ! [Xp,Xq,Xr] :
      ( s_col(Xq,Xp,Xr)
      | ~ s_col(Xp,Xq,Xr)
      | Xp = Xq ) ).

fof(d_Defn7_23,axiom,
    ! [Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2] :
      ( ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | s_e(Xc,Xa2,Xc,Xb2) )
      & ( s_m(Xa1,Xm1,Xb1)
        | ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2) )
      & ( s_m(Xa2,Xm2,Xb2)
        | ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2) )
      & ( ~ s_e(Xc,Xa2,Xc,Xb2)
        | ~ s_m(Xa1,Xm1,Xb1)
        | s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | ~ s_m(Xa2,Xm2,Xb2)
        | ~ s_e(Xc,Xa1,Xc,Xb1)
        | ~ s_t(Xb1,Xc,Xb2)
        | ~ s_t(Xa1,Xc,Xa2) )
      & ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | s_e(Xc,Xa1,Xc,Xb1) )
      & ( s_t(Xb1,Xc,Xb2)
        | ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2) )
      & ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | s_t(Xa1,Xc,Xa2) ) ) ).

fof(aSatz7_19,axiom,
    ! [Xa,Xb,Xp] :
      ( s(Xb,s(Xa,Xp)) != s(Xa,s(Xb,Xp))
      | Xb = Xa ) ).

fof(aSatz8_24,axiom,
    ! [Xp,Xa,Xb,Xq,Xt,Xr] :
      ( ~ perp(Xp,Xa,Xa,Xb)
      | ~ perp(Xq,Xb,Xa,Xb)
      | ~ s_t(Xp,Xt,Xq)
      | ~ s_t(Xb,Xr,Xq)
      | s_m(Xp,midpoint(Xa,Xb),Xr)
      | ~ s_e(Xa,Xp,Xb,Xr)
      | ~ s_col(Xa,Xb,Xt) ) ).

fof(d_Defn5_4,axiom,
    ! [Xa,Xb,Xc,Xd,Y] :
      ( ( ~ le(Xa,Xb,Xc,Xd)
        | s_t(Xc,insert(Xa,Xb,Xc,Xd),Xd) )
      & ( ~ le(Xa,Xb,Xc,Xd)
        | s_e(Xa,Xb,Xc,insert(Xa,Xb,Xc,Xd)) )
      & ( le(Xa,Xb,Xc,Xd)
        | ~ s_e(Xa,Xb,Xc,Y)
        | ~ s_t(Xc,Y,Xd) ) ) ).

fof(aSideReflect,axiom,
    ! [Xa,Xb,Xc,Xm] :
      ( sameside(s(Xm,Xa),s(Xm,Xb),s(Xm,Xc))
      | ~ sameside(Xa,Xb,Xc) ) ).

fof(aSatz9_5,axiom,
    ! [Xa,Xp,Xq,Xc,Xr,Xb] :
      ( ~ opposite(Xa,Xp,Xq,Xc)
      | ~ sameside(Xa,Xr,Xb)
      | opposite(Xb,Xp,Xq,Xc)
      | ~ s_col(Xp,Xq,Xr) ) ).

fof(aSatz5_9,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_e(Xa,Xb,Xc,Xd)
      | ~ le(Xc,Xd,Xa,Xb)
      | ~ le(Xa,Xb,Xc,Xd) ) ).

fof(aLemma9_13c,axiom,
    ! [Xd,Xe,Xd1,Xa,Xb] :
      ( Xd = Xe
      | ~ s_t(Xe,Xd,Xd1)
      | ~ samesideline(Xa,Xb,Xd1,Xe)
      | samesideline(Xa,Xb,Xd,Xe) ) ).

fof(aSatz8_7,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_r(Xa,Xb,Xc)
      | ~ s_r(Xa,Xc,Xb)
      | Xb = Xc ) ).

fof(aLemma9_13b,axiom,
    ! [Xa,Xb,U,V,W] :
      ( ~ s_m(U,V,W)
      | s_col(Xa,Xb,V)
      | ~ s_col(Xa,Xb,W)
      | ~ s_col(Xa,Xb,U)
      | Xb = Xa ) ).

fof(aSatz5_2,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xb = Xa
      | ~ s_t(Xa,Xb,Xc)
      | s_t(Xb,Xd,Xc)
      | s_t(Xb,Xc,Xd)
      | ~ s_t(Xa,Xb,Xd) ) ).

fof(aSatz6_15b,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( ~ sameside(Xa,Xp,Xq)
      | s_col(Xa,Xp,Xq)
      | ~ s_t(Xq,Xp,Xr)
      | Xp = Xr
      | Xq = Xp ) ).

fof(aSatz7_22b,axiom,
    ! [Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2] :
      ( s_t(Xm1,Xc,Xm2)
      | ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2) ) ).

fof(aExtPerp,axiom,
    ! [Xa,Xb,Xp,Xq,Xr,Xc,Xd] :
      ( ~ s_col(Xa,Xb,Xp)
      | ~ s_col(Xa,Xb,Xq)
      | perpAt(Xa,Xb,Xr,Xc,Xd)
      | ~ perpAt(Xp,Xq,Xr,Xc,Xd)
      | Xb = Xa
      | Xq = Xp ) ).

fof(aSatz8_16b,axiom,
    ! [Xa,Xb,Xp,Xq,Xc] :
      ( Xa = Xb
      | ~ s_col(Xa,Xb,Xp)
      | Xq = Xp
      | perp(Xa,Xb,Xc,Xp)
      | ~ s_r(Xc,Xp,Xq)
      | s_col(Xa,Xb,Xc)
      | ~ s_col(Xa,Xb,Xq) ) ).

fof(aSatz6_21,axiom,
    ! [Xa,Xb,Xp,Xq,Xc,Xd,Xe] :
      ( Xb = Xa
      | Xq = Xp
      | ~ s_col(Xa,Xb,Xc)
      | ~ s_col(Xp,Xq,Xc)
      | ~ s_col(Xp,Xq,Xd)
      | Xc = Xd
      | ~ s_col(Xa,Xb,Xe)
      | s_col(Xp,Xq,Xe)
      | ~ s_col(Xa,Xb,Xd) ) ).

fof(aExtPerp3,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xb = Xa
      | Xd = Xc
      | perp(Xb,Xa,Xa,Xd)
      | ~ s_col(Xa,Xc,Xd)
      | ~ perp(Xb,Xa,Xa,Xc)
      | Xa = Xd
      | Xc = Xb
      | Xc = Xa ) ).

fof(aSatz9_6,axiom,
    ! [Xa,Xc,Xp,Xb,Xq] :
      ( ( s_t(Xp,Xq,op(Xq,Xb,Xp,Xc,Xa))
        | ~ s_t(Xb,Xq,Xc)
        | ~ s_t(Xa,Xc,Xp) )
      & ( s_t(Xa,op(Xq,Xb,Xp,Xc,Xa),Xb)
        | ~ s_t(Xb,Xq,Xc)
        | ~ s_t(Xa,Xc,Xp) ) ) ).

fof(aNarbouxLemma1,axiom,
    ! [Xa,Xb,Xc] :
      ( Xb = Xc
      | ~ s_e(Xa,Xc,Xa,Xb)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz9_3a,axiom,
    ! [Xa,Xp,Xq,Xc,Xm,Xr,Xb] :
      ( ~ opposite(Xa,Xp,Xq,Xc)
      | ~ s_col(Xp,Xq,Xm)
      | ~ s_m(Xa,Xm,Xc)
      | ~ s_col(Xp,Xq,Xr)
      | ~ sameside(Xa,Xr,Xb)
      | opposite(Xb,Xp,Xq,Xc)
      | ~ s_t(Xr,Xb,Xa) ) ).

fof(aSatz6_3b,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( Xp = Xa
      | ~ s_t(Xb,Xp,Xc)
      | ~ s_t(Xa,Xp,Xc)
      | Xc = Xp
      | Xp = Xb
      | sameside(Xa,Xp,Xb) ) ).

fof(aSatz6_28,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ sameside(Xa1,Xb1,Xc1)
      | ~ s_e(Xb,Xa,Xb1,Xa1)
      | ~ s_e(Xb,Xc,Xb1,Xc1)
      | s_e(Xa,Xc,Xa1,Xc1)
      | ~ sameside(Xa,Xb,Xc) ) ).

fof(d_Defn9_1,axiom,
    ! [Xp,Xq,Xa,Xb,Xt] :
      ( ( ~ s_col(Xp,Xq,Xa)
        | ~ opposite(Xa,Xp,Xq,Xb) )
      & ( ~ opposite(Xa,Xp,Xq,Xb)
        | s_col(Xp,Xq,il(Xa,Xb,Xp,Xq)) )
      & ( ~ opposite(Xa,Xp,Xq,Xb)
        | s_t(Xa,il(Xa,Xb,Xp,Xq),Xb) )
      & ( ~ opposite(Xa,Xp,Xq,Xb)
        | ~ s_col(Xp,Xq,Xb) )
      & ( s_col(Xp,Xq,Xa)
        | s_col(Xp,Xq,Xb)
        | ~ s_t(Xa,Xt,Xb)
        | ~ s_col(Xp,Xq,Xt)
        | opposite(Xa,Xp,Xq,Xb)
        | Xq = Xp ) ) ).

fof(aSatz3_5a,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( ~ s_t(Xa,Xb,Xd)
      | s_t(Xa,Xb,Xc)
      | ~ s_t(Xb,Xc,Xd) ) ).

fof(aSatz6_15d,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( Xp = Xr
      | Xa != Xp
      | s_col(Xa,Xp,Xq)
      | ~ s_t(Xq,Xp,Xr)
      | Xq = Xp ) ).

fof(aSatz9_4,axiom,
    ! [Xa,Xp,Xq,Xc,Xcs,Xr,Xm,U] :
      ( ~ opposite(Xa,Xp,Xq,Xc)
      | ~ perp(Xp,Xq,Xa,Xr)
      | ~ sameside(U,Xr,Xa)
      | sameside(s(Xm,U),Xcs,Xc)
      | ~ s_m(Xr,Xm,Xcs)
      | ~ perp(Xp,Xq,Xc,Xcs)
      | ~ s_col(Xp,Xq,Xr)
      | ~ s_col(Xp,Xq,Xcs)
      | Xp = Xq ) ).

fof(aSatz9_3,axiom,
    ! [Xa,Xp,Xq,Xc,Xm,Xr,Xb] :
      ( ~ s_col(Xp,Xq,Xm)
      | ~ s_m(Xa,Xm,Xc)
      | ~ s_col(Xp,Xq,Xr)
      | opposite(Xb,Xp,Xq,Xc)
      | ~ sameside(Xa,Xr,Xb)
      | ~ opposite(Xa,Xp,Xq,Xc) ) ).

fof(d_Defn8_11a,axiom,
    ! [Y,Z,X,Y1,Z1,U,V] :
      ( ( s_col(Y,Z,X)
        | ~ perpAt(Y,Z,X,Y1,Z1) )
      & ( ~ perpAt(Y,Z,X,Y1,Z1)
        | s_col(Y1,Z1,X) )
      & ( Y != Z
        | ~ perpAt(Y,Z,X,Y1,Z1) )
      & ( Z = Y
        | ~ s_col(Y1,Z1,X)
        | ~ s_r(f811(Y,Z,Y1,Z1,X),X,g811(Y,Z,Y1,Z1,X))
        | ~ s_col(Y,Z,X)
        | Z1 = Y1
        | perpAt(Y,Z,X,Y1,Z1) )
      & ( perpAt(Y,Z,X,Y1,Z1)
        | Y = Z
        | Y1 = Z1
        | ~ s_col(Y1,Z1,X)
        | s_col(Y1,Z1,g811(Y,Z,Y1,Z1,X))
        | ~ s_col(Y,Z,X) )
      & ( perpAt(Y,Z,X,Y1,Z1)
        | Z = Y
        | s_col(Y,Z,f811(Y,Z,Y1,Z1,X))
        | ~ s_col(Y1,Z1,X)
        | ~ s_col(Y,Z,X)
        | Z1 = Y1 )
      & ( ~ s_col(Y,Z,U)
        | s_r(U,X,V)
        | ~ s_col(Y1,Z1,V)
        | ~ perpAt(Y,Z,X,Y1,Z1) )
      & ( Z1 != Y1
        | ~ perpAt(Y,Z,X,Y1,Z1) ) ) ).

fof(aSatz7_6,axiom,
    ! [Xp,Xa,Xq] :
      ( ~ s_m(Xp,Xa,Xq)
      | Xq = s(Xa,Xp) ) ).

fof(aSatz3_2,axiom,
    ! [Xa,Xb,Xc] :
      ( s_t(Xc,Xb,Xa)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz6_13a,axiom,
    ! [Xa,Xp,Xb] :
      ( s_t(Xp,Xa,Xb)
      | ~ le(Xp,Xa,Xp,Xb)
      | ~ sameside(Xa,Xp,Xb) ) ).

fof(aSatz5_11,axiom,
    ! [Xa,Xc,Xd] : le(Xa,Xa,Xc,Xd) ).

fof(aSatz8_10,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
      | s_r(Xa1,Xb1,Xc1)
      | ~ s_r(Xa,Xb,Xc) ) ).

fof(d_Defn4_10,axiom,
    ! [Xa,Xb,Xc] :
      ( ( ~ s_t(Xc,Xa,Xb)
        | s_col(Xa,Xb,Xc) )
      & ( ~ s_t(Xb,Xc,Xa)
        | s_col(Xa,Xb,Xc) )
      & ( s_col(Xa,Xb,Xc)
        | ~ s_t(Xa,Xb,Xc) )
      & ( s_t(Xa,Xb,Xc)
        | s_t(Xb,Xc,Xa)
        | s_t(Xc,Xa,Xb)
        | ~ s_col(Xa,Xb,Xc) ) ) ).

fof(aExtPerp6,axiom,
    ( ~ s_col(xa,xb,xq)
    | perp(xc,xd,xp,xq)
    | ~ perp(xc,xd,xa,xb)
    | xa = xb
    | xq = xp
    | ~ s_col(xa,xb,xp) ) ).

fof(aSatz8_21a,axiom,
    ! [Xa,Xb,Xc] :
      ( ( Xa = Xb
        | s_col(Xa,Xb,Xc)
        | perp(Xa,Xb,erect21a(Xa,Xb,Xc),Xa) )
      & ( Xb = Xa
        | s_t(Xc,erectAux21a(Xa,Xb,Xc),erect21a(Xa,Xb,Xc))
        | s_col(Xa,Xb,Xc) )
      & ( Xb = Xa
        | s_col(Xa,Xb,erectAux21a(Xa,Xb,Xc))
        | s_col(Xa,Xb,Xc) ) ) ).

fof(aSatz6_13b,axiom,
    ! [Xa,Xp,Xb] :
      ( ~ sameside(Xa,Xp,Xb)
      | le(Xp,Xa,Xp,Xb)
      | ~ s_t(Xp,Xa,Xb) ) ).

fof(aExtSameSide1,axiom,
    ! [Xa,Xb,Xc,Xp,Xq] :
      ( ~ s_col(Xa,Xb,Xc)
      | Xa = Xb
      | ~ samesideline(Xp,Xq,Xa,Xb)
      | samesideline(Xp,Xq,Xa,Xc)
      | Xc = Xa ) ).

fof(aSatz8_5,axiom,
    ! [Xa,Xb] : s_r(Xa,Xb,Xb) ).

fof(aSatz5_8,axiom,
    ! [Xa,Xb,Xc,Xd,Xe,Xf] :
      ( ~ le(Xc,Xd,Xe,Xf)
      | le(Xa,Xb,Xe,Xf)
      | ~ le(Xa,Xb,Xc,Xd) ) ).

fof(aSatz5_10,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( le(Xc,Xd,Xa,Xb)
      | le(Xa,Xb,Xc,Xd) ) ).

fof(aSatz4_16,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
      | Xb = Xa
      | s_e(Xc,Xd,Xc1,Xd1) ) ).

fof(aSatz3_7b,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xc = Xb
      | s_t(Xa,Xb,Xd)
      | ~ s_t(Xb,Xc,Xd)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz4_19,axiom,
    ! [Xa,Xc,Xb,Xc1] :
      ( ~ s_e(Xb,Xc,Xb,Xc1)
      | Xc = Xc1
      | ~ s_e(Xa,Xc,Xa,Xc1)
      | ~ s_t(Xa,Xc,Xb) ) ).

fof(aSatz8_22,axiom,
    ! [Xa,Xb] : s_m(Xa,midpoint(Xa,Xb),Xb) ).

fof(aSatz6_16a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xa = Xb
      | s_t(Xc,Xd,Xb)
      | s_t(Xd,Xc,Xb)
      | ~ s_t(Xd,Xa,Xb)
      | ~ s_t(Xc,Xa,Xb) ) ).

fof(aSatz4_11b,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xc,Xa,Xb) ) ).

fof(aSatz7_25,axiom,
    ! [Xc,Xa,Xb] :
      ( s_m(Xa,isomidpoint(Xa,Xb,Xc),Xb)
      | ~ s_e(Xc,Xa,Xc,Xb) ) ).

fof(aSatz8_18,axiom,
    ! [Xa,Xb,Xc] :
      ( ( s_col(Xa,Xb,Xc)
        | perp(Xa,Xb,Xc,foot(Xa,Xb,Xc)) )
      & ( s_col(Xa,Xb,Xc)
        | s_col(Xa,Xb,foot(Xa,Xb,Xc)) ) ) ).

fof(aSatz6_18,axiom,
    ! [Xa,Xb,Xp,Xq,Xr] :
      ( Xp = Xq
      | ~ s_col(Xp,Xq,Xr)
      | s_col(Xa,Xb,Xr)
      | ~ s_col(Xp,Xq,Xb)
      | ~ s_col(Xp,Xq,Xa)
      | Xa = Xb ) ).

fof(aperp1,axiom,
    ! [Xa,Xb,Xp,Xq] :
      ( perp(Xb,Xa,Xp,Xq)
      | ~ perp(Xa,Xb,Xp,Xq) ) ).

fof(aSatz2_5,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_e(Xa,Xb,Xd,Xc)
      | ~ s_e(Xa,Xb,Xc,Xd) ) ).

fof(aSatz8_15,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( ~ perp(Xa,Xb,Xc,Xd)
      | perpAt(Xa,Xb,Xd,Xc,Xd)
      | ~ s_col(Xa,Xb,Xd)
      | Xb = Xa ) ).

fof(aSatz7_17,axiom,
    ! [Xp,Xa,Xq,Xb] :
      ( ~ s_m(Xp,Xb,Xq)
      | Xa = Xb
      | ~ s_m(Xp,Xa,Xq) ) ).

fof(aSatz7_10b,axiom,
    ! [Xa,Xp] :
      ( Xp != Xa
      | Xp = s(Xa,Xp) ) ).

fof(aSatz7_3b,axiom,
    ! [Xa,Xm] :
      ( s_m(Xa,Xm,Xa)
      | Xm != Xa ) ).

fof(aSatz2_8,axiom,
    ! [Xa,Xb] : s_e(Xa,Xa,Xb,Xb) ).

fof(aSatz6_6,axiom,
    ! [Xa,Xp,Xb] :
      ( ~ sameside(Xa,Xp,Xb)
      | sameside(Xb,Xp,Xa) ) ).

fof(aSatz3_13a,axiom,
    beta != alpha ).

fof(aSatz4_11d,axiom,
    ! [Xa,Xb,Xc] :
      ( s_col(Xb,Xa,Xc)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz4_2,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( s_e(Xb,Xd,Xb1,Xd1)
      | ~ s_ifs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1) ) ).

fof(aSatz8_9,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | Xa = Xb
      | Xb = Xc
      | ~ s_r(Xa,Xb,Xc) ) ).

fof(aExtPerp2,axiom,
    ! [Xa,Xb,Xp,Xq,Xc,Xd] :
      ( Xa = Xb
      | ~ perp(Xp,Xq,Xc,Xd)
      | perp(Xa,Xb,Xc,Xd)
      | Xp = Xq
      | ~ s_col(Xa,Xb,Xq)
      | ~ s_col(Xa,Xb,Xp) ) ).

fof(aSatz8_21,axiom,
    ! [Xa,Xb,Xc] :
      ( ( Xb = Xa
        | s_t(Xc,erectAux(Xa,Xb,Xc),erect(Xa,Xb,Xc)) )
      & ( Xa = Xb
        | s_col(Xa,Xb,erectAux(Xa,Xb,Xc)) )
      & ( perp(Xa,Xb,erect(Xa,Xb,Xc),Xa)
        | Xb = Xa ) ) ).

fof(aSatz6_16b,axiom,
    ! [Xp,Xq,Xcs,Xr] :
      ( Xcs = Xp
      | ~ s_col(Xp,Xq,Xcs)
      | ~ s_col(Xp,Xq,Xr)
      | s_col(Xp,Xcs,Xr)
      | Xp = Xq ) ).

fof(aSatz3_13b,axiom,
    beta != gamma ).

fof(d_Defn8_1,axiom,
    ! [Xa,Xb,Xc] :
      ( ( ~ s_r(Xa,Xb,Xc)
        | s_e(Xa,Xc,Xa,s(Xb,Xc)) )
      & ( s_r(Xa,Xb,Xc)
        | ~ s_e(Xa,Xc,Xa,s(Xb,Xc)) ) ) ).

fof(aSatz4_5,axiom,
    ! [Xa,Xb,Xc,Xa1,Xc1] :
      ( ( ~ s_t(Xa,Xb,Xc)
        | s_t(Xa1,insert(Xa,Xb,Xa1,Xc1),Xc1)
        | ~ s_e(Xa,Xc,Xa1,Xc1) )
      & ( s_e3(Xa,Xb,Xc,Xa1,insert(Xa,Xb,Xa1,Xc1),Xc1)
        | ~ s_e(Xa,Xc,Xa1,Xc1)
        | ~ s_t(Xa,Xb,Xc) ) ) ).

fof(aSatz3_5b,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( s_t(Xa,Xc,Xd)
      | ~ s_t(Xb,Xc,Xd)
      | ~ s_t(Xa,Xb,Xd) ) ).

fof(aExtSameSide2,axiom,
    ! [Xa,Xb,Xp,Xq] :
      ( Xb = Xa
      | samesideline(Xp,Xq,Xb,Xa)
      | ~ samesideline(Xp,Xq,Xa,Xb) ) ).

fof(aSatz7_21,axiom,
    ! [Xa,Xb,Xc,Xd,Xp] :
      ( ~ s_col(Xb,Xp,Xd)
      | s_m(Xa,Xp,Xc)
      | ~ s_col(Xa,Xp,Xc)
      | ~ s_e(Xb,Xc,Xd,Xa)
      | ~ s_e(Xa,Xb,Xc,Xd)
      | Xb = Xd
      | s_col(Xa,Xb,Xc) ) ).

fof(aSatz8_16a,axiom,
    ! [Xa,Xb,Xp,Xq,Xc] :
      ( ( Xp = Xq
        | ~ perp(Xa,Xb,Xc,Xp)
        | ~ s_col(Xa,Xb,Xc)
        | ~ s_col(Xa,Xb,Xq)
        | ~ s_col(Xa,Xb,Xp)
        | Xb = Xa )
      & ( Xa = Xb
        | ~ s_col(Xa,Xb,Xp)
        | Xp = Xq
        | s_r(Xc,Xp,Xq)
        | ~ perp(Xa,Xb,Xc,Xp)
        | ~ s_col(Xa,Xb,Xq) ) ) ).

fof(aSatz2_2,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_e(Xc,Xd,Xa,Xb)
      | ~ s_e(Xa,Xb,Xc,Xd) ) ).

fof(aSatz9_9,axiom,
    ! [Xa,Xp,Xq,Xb] :
      ( ~ opposite(Xa,Xp,Xq,Xb)
      | ~ samesideline(Xa,Xb,Xp,Xq) ) ).

fof(aSatz3_6a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xc,Xd)
      | s_t(Xb,Xc,Xd)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz9_2,axiom,
    ! [Xa,Xp,Xq,Xb] :
      ( opposite(Xb,Xp,Xq,Xa)
      | ~ opposite(Xa,Xp,Xq,Xb) ) ).

fof(aSatz5_5a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ( s_t(Xa,Xb,ins(Xc,Xd,Xa,Xb))
        | ~ le(Xa,Xb,Xc,Xd) )
      & ( ins(Xc,Xd,Xa,Xb) = ext(Xa,Xb,insert(Xa,Xb,Xc,Xd),Xd)
        | ~ le(Xa,Xb,Xc,Xd) )
      & ( ~ le(Xa,Xb,Xc,Xd)
        | s_e(Xa,ins(Xc,Xd,Xa,Xb),Xc,Xd) ) ) ).

fof(aSatz6_7,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( ~ sameside(Xa,Xp,Xb)
      | ~ sameside(Xb,Xp,Xc)
      | sameside(Xa,Xp,Xc) ) ).

fof(aSatz8_13a,axiom,
    ! [Xa,Xb,Xc,Xp,Xq] :
      ( ( ~ perpAt(Xa,Xb,Xc,Xp,Xq)
        | Xa != Xb )
      & ( Xp != Xq
        | ~ perpAt(Xa,Xb,Xc,Xp,Xq) )
      & ( s_col(Xp,Xq,Xc)
        | ~ perpAt(Xa,Xb,Xc,Xp,Xq) )
      & ( s_col(Xa,Xb,Xc)
        | ~ perpAt(Xa,Xb,Xc,Xp,Xq) )
      & ( s_col(Xa,Xb,f813(Xa,Xb,Xp,Xq,Xc))
        | ~ perpAt(Xa,Xb,Xc,Xp,Xq) )
      & ( ~ perpAt(Xa,Xb,Xc,Xp,Xq)
        | s_r(f813(Xa,Xb,Xp,Xq,Xc),Xc,g813(Xa,Xb,Xp,Xq,Xc)) )
      & ( ~ perpAt(Xa,Xb,Xc,Xp,Xq)
        | g813(Xa,Xb,Xp,Xq,Xc) != Xc )
      & ( ~ perpAt(Xa,Xb,Xc,Xp,Xq)
        | Xc != f813(Xa,Xb,Xp,Xq,Xc) )
      & ( s_col(Xp,Xq,g813(Xa,Xb,Xp,Xq,Xc))
        | ~ perpAt(Xa,Xb,Xc,Xp,Xq) ) ) ).

fof(aSatz4_17,axiom,
    ! [Xa,Xb,Xc,Xp,Xq] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_e(Xc,Xp,Xc,Xq)
      | ~ s_e(Xb,Xp,Xb,Xq)
      | ~ s_e(Xa,Xp,Xa,Xq)
      | Xb = Xa ) ).

fof(aSatz8_12a,axiom,
    ! [Xa,Xb,Xc,Xp,Xq] :
      ( perpAt(Xp,Xq,Xc,Xa,Xb)
      | ~ perpAt(Xa,Xb,Xc,Xp,Xq) ) ).

fof(aSatz7_9,axiom,
    ! [Xa,Xp,Xq] :
      ( Xq = Xp
      | s(Xa,Xq) != s(Xa,Xp) ) ).

fof(aSatz7_18,axiom,
    ! [Xa,Xp,Xb] :
      ( Xb = Xa
      | s(Xb,Xp) != s(Xa,Xp) ) ).

fof(aSatz8_14a,axiom,
    ! [Xa,Xb,Xp,Xq] :
      ( ~ perp(Xa,Xb,Xp,Xq)
      | ~ s_col(Xa,Xb,Xq)
      | ~ s_col(Xa,Xb,Xp) ) ).

fof(aSatz7_7,axiom,
    ! [Xa,Xp] : Xp = s(Xa,s(Xa,Xp)) ).

fof(aSatz9_13,axiom,
    ! [Xp,Xq,Xa,Xb,Xc] :
      ( ~ samesideline(Xa,Xb,Xp,Xq)
      | ~ samesideline(Xb,Xc,Xp,Xq)
      | samesideline(Xa,Xc,Xp,Xq)
      | Xp = Xq ) ).

fof(d_insert,axiom,
    ! [Xa,Xb,Xa1,Xc1] : insert(Xa,Xb,Xa1,Xc1) = ext(ext(Xc1,Xa1,alpha,gamma),Xa1,Xa,Xb) ).

fof(aSatz7_16b,axiom,
    ! [Xp,Xq,Xr,Xcs,Xa] :
      ( ~ s_e(s(Xa,Xp),s(Xa,Xq),s(Xa,Xr),s(Xa,Xcs))
      | s_e(Xp,Xq,Xr,Xcs) ) ).

fof(aSatz2_13,axiom,
    ! [Xb,Xc,Xa] :
      ( Xc = Xb
      | ~ s_e(Xb,Xc,Xa,Xa) ) ).

fof(aSatz9_4c,axiom,
    ! [Xa,Xp,Xq,Xc,Xcs,Xr,Xm,U,V] :
      ( ~ s_col(Xp,Xq,Xcs)
      | ~ s_col(Xp,Xq,Xr)
      | ~ perp(Xp,Xq,Xa,Xr)
      | ~ perp(Xp,Xq,Xc,Xcs)
      | ~ s_m(Xr,Xm,Xcs)
      | ~ sameside(U,Xr,Xa)
      | ~ sameside(V,Xcs,Xc)
      | opposite(U,Xp,Xq,V)
      | Xp = Xq
      | ~ opposite(Xa,Xp,Xq,Xc) ) ).

fof(aSatz4_13,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
      | s_col(Xa1,Xb1,Xc1)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz2_11,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa1,Xb1,Xc1)
      | ~ s_e(Xb,Xc,Xb1,Xc1)
      | s_e(Xa,Xc,Xa1,Xc1)
      | ~ s_e(Xa,Xb,Xa1,Xb1) ) ).

fof(aSatz5_12b,axiom,
    ! [Xa,Xb,Xc] :
      ( s_t(Xa,Xb,Xc)
      | ~ le(Xa,Xb,Xa,Xc)
      | ~ le(Xb,Xc,Xa,Xc)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz8_4,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_r(Xa,Xb,Xc)
      | s_r(Xa,Xb,s(Xb,Xc)) ) ).

fof(aSatz3_7a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xb,Xc)
      | Xc = Xb
      | s_t(Xa,Xc,Xd)
      | ~ s_t(Xb,Xc,Xd) ) ).

fof(aSatz6_2b,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( Xa = Xp
      | Xp = Xc
      | ~ s_t(Xa,Xp,Xc)
      | s_t(Xb,Xp,Xc)
      | ~ sameside(Xa,Xp,Xb)
      | Xp = Xb ) ).

fof(aSatz2_12,axiom,
    ! [Xq,Xa,Xd,Xb,Xc] :
      ( ext(Xq,Xa,Xb,Xc) = Xd
      | ~ s_e(Xa,Xd,Xb,Xc)
      | ~ s_t(Xq,Xa,Xd)
      | Xq = Xa ) ).

