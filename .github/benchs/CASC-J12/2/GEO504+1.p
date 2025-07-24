include('Axioms/GEO011+0.ax').
fof(d_Defn4_10,axiom,
    ! [Xa,Xb,Xc] :
      ( ( ~ s_col(Xa,Xb,Xc)
        | s_t(Xa,Xb,Xc)
        | s_t(Xb,Xc,Xa)
        | s_t(Xc,Xa,Xb) )
      & ( ~ s_t(Xc,Xa,Xb)
        | s_col(Xa,Xb,Xc) )
      & ( ~ s_t(Xb,Xc,Xa)
        | s_col(Xa,Xb,Xc) )
      & ( ~ s_t(Xa,Xb,Xc)
        | s_col(Xa,Xb,Xc) ) ) ).

fof(aSatz6_6,axiom,
    ! [Xa,Xp,Xb] :
      ( sameside(Xb,Xp,Xa)
      | ~ sameside(Xa,Xp,Xb) ) ).

fof(aSatz5_12b,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ le(Xa,Xb,Xa,Xc)
      | ~ le(Xb,Xc,Xa,Xc)
      | s_t(Xa,Xb,Xc)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz6_21,axiom,
    ! [Xa,Xb,Xp,Xq,Xc,Xd,Xe] :
      ( Xa = Xb
      | Xq = Xp
      | ~ s_col(Xp,Xq,Xc)
      | ~ s_col(Xp,Xq,Xd)
      | Xc = Xd
      | s_col(Xp,Xq,Xe)
      | ~ s_col(Xa,Xb,Xe)
      | ~ s_col(Xa,Xb,Xd)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz3_3,axiom,
    ! [Xa1,Xb1] : s_t(Xa1,Xa1,Xb1) ).

fof(aSatz2_14,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_e(Xb,Xa,Xd,Xc)
      | ~ s_e(Xa,Xb,Xc,Xd) ) ).

fof(aSatz5_11,axiom,
    ! [Xa,Xc,Xd] : le(Xa,Xa,Xc,Xd) ).

fof(aSatz5_10,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( le(Xc,Xd,Xa,Xb)
      | le(Xa,Xb,Xc,Xd) ) ).

fof(aSatz6_3a,axiom,
    ! [Xa,Xp,Xb] :
      ( ( s_t(Xa,Xp,c63(Xa,Xp,Xb))
        | ~ sameside(Xa,Xp,Xb) )
      & ( ~ sameside(Xa,Xp,Xb)
        | s_t(Xb,Xp,c63(Xa,Xp,Xb)) )
      & ( ~ sameside(Xa,Xp,Xb)
        | c63(Xa,Xp,Xb) != Xp )
      & ( Xb != Xp
        | ~ sameside(Xa,Xp,Xb) )
      & ( Xa != Xp
        | ~ sameside(Xa,Xp,Xb) ) ) ).

fof(aSatz7_18,axiom,
    ! [Xa,Xp,Xb] :
      ( s(Xa,Xp) != s(Xb,Xp)
      | Xb = Xa ) ).

fof(aSatz7_15b,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( s_t(Xp,Xq,Xr)
      | ~ s_t(s(Xa,Xp),s(Xa,Xq),s(Xa,Xr)) ) ).

fof(aSatz4_13,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( s_col(Xa1,Xb1,Xc1)
      | ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz7_4b,axiom,
    ! [Xp,Xa,Xr,Xq] :
      ( ~ s_m(Xp,Xa,Xr)
      | ~ s_m(Xp,Xa,Xq)
      | Xq = Xr ) ).

fof(aSatz4_2,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ~ s_ifs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
      | s_e(Xb,Xd,Xb1,Xd1) ) ).

fof(aSatz7_15a,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( ~ s_t(Xp,Xq,Xr)
      | s_t(s(Xa,Xp),s(Xa,Xq),s(Xa,Xr)) ) ).

fof(d_Defn4_4,axiom,
    ! [Xa1,Xa2,Xa3,Xb1,Xb2,Xb3] :
      ( ( ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | s_e(Xa1,Xa3,Xb1,Xb3) )
      & ( ~ s_e(Xa1,Xa2,Xb1,Xb2)
        | ~ s_e(Xa1,Xa3,Xb1,Xb3)
        | ~ s_e(Xa2,Xa3,Xb2,Xb3)
        | s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3) )
      & ( ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | s_e(Xa2,Xa3,Xb2,Xb3) )
      & ( ~ s_e3(Xa1,Xa2,Xa3,Xb1,Xb2,Xb3)
        | s_e(Xa1,Xa2,Xb1,Xb2) ) ) ).

fof(aSatz4_11a,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xb,Xc,Xa) ) ).

fof(aSatz3_13b,axiom,
    beta != gamma ).

fof(aSatz3_13a,axiom,
    alpha != beta ).

fof(aSatz7_6,axiom,
    ! [Xp,Xa,Xq] :
      ( ~ s_m(Xp,Xa,Xq)
      | Xq = s(Xa,Xp) ) ).

fof(aSatz4_3,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa1,Xb1,Xc1)
      | ~ s_e(Xa,Xc,Xa1,Xc1)
      | s_e(Xa,Xb,Xa1,Xb1)
      | ~ s_e(Xb,Xc,Xb1,Xc1) ) ).

fof(aSatz3_13c,axiom,
    alpha != gamma ).

fof(aSatz4_11d,axiom,
    ! [Xa,Xb,Xc] :
      ( s_col(Xb,Xa,Xc)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz4_12b,axiom,
    ! [Xa,Xb] : s_col(Xa,Xb,Xa) ).

fof(aSatz2_12,axiom,
    ! [Xq,Xa,Xd,Xb,Xc] :
      ( Xq = Xa
      | ~ s_e(Xa,Xd,Xb,Xc)
      | ext(Xq,Xa,Xb,Xc) = Xd
      | ~ s_t(Xq,Xa,Xd) ) ).

fof(aSatz6_17a,axiom,
    ! [Xp,Xq] :
      ( Xq = Xp
      | s_col(Xp,Xq,Xp) ) ).

fof(aSatz5_12a1,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | le(Xa,Xb,Xa,Xc)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz2_15,axiom,
    ! [Xa,Xb,Xc,XA,XB,XC] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(XA,XB,XC)
      | ~ s_e(Xa,Xb,XB,XC)
      | ~ s_e(Xb,Xc,XA,XB)
      | s_e(Xa,Xc,XA,XC) ) ).

fof(aSatz2_3,axiom,
    ! [Xa,Xb,Xc,Xd,Xe,Xf] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | ~ s_e(Xc,Xd,Xe,Xf)
      | s_e(Xa,Xb,Xe,Xf) ) ).

fof(d_Defn7_1,axiom,
    ! [Xa,Xm,Xb] :
      ( ( s_e(Xm,Xa,Xm,Xb)
        | ~ s_m(Xa,Xm,Xb) )
      & ( s_m(Xa,Xm,Xb)
        | ~ s_e(Xm,Xa,Xm,Xb)
        | ~ s_t(Xa,Xm,Xb) )
      & ( s_t(Xa,Xm,Xb)
        | ~ s_m(Xa,Xm,Xb) ) ) ).

fof(aSatz5_7,axiom,
    ! [Xa,Xb] : le(Xa,Xb,Xa,Xb) ).

fof(aSatz6_15b,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( Xq = Xp
      | ~ sameside(Xa,Xp,Xq)
      | s_col(Xa,Xp,Xq)
      | ~ s_t(Xq,Xp,Xr)
      | Xp = Xr ) ).

fof(aSatz7_4a,axiom,
    ! [Xp,Xa] : s_m(Xp,Xa,s(Xa,Xp)) ).

fof(aSatz2_4,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | s_e(Xb,Xa,Xc,Xd) ) ).

fof(aSatz4_5,axiom,
    ! [Xa,Xb,Xc,Xa1,Xc1] :
      ( ( ~ s_t(Xa,Xb,Xc)
        | ~ s_e(Xa,Xc,Xa1,Xc1)
        | s_t(Xa1,insert(Xa,Xb,Xa1,Xc1),Xc1) )
      & ( ~ s_t(Xa,Xb,Xc)
        | s_e3(Xa,Xb,Xc,Xa1,insert(Xa,Xb,Xa1,Xc1),Xc1)
        | ~ s_e(Xa,Xc,Xa1,Xc1) ) ) ).

fof(aSatz5_9,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_e(Xa,Xb,Xc,Xd)
      | ~ le(Xc,Xd,Xa,Xb)
      | ~ le(Xa,Xb,Xc,Xd) ) ).

fof(d_Defn8_1,axiom,
    ! [Xa,Xb,Xc] :
      ( ( ~ s_e(Xa,Xc,Xa,s(Xb,Xc))
        | s_r(Xa,Xb,Xc) )
      & ( ~ s_r(Xa,Xb,Xc)
        | s_e(Xa,Xc,Xa,s(Xb,Xc)) ) ) ).

fof(d_Defn6_1,axiom,
    ! [Xa,Xp,Xb] :
      ( ( Xb != Xp
        | ~ sameside(Xa,Xp,Xb) )
      & ( sameside(Xa,Xp,Xb)
        | Xp = Xb
        | Xa = Xp
        | ~ s_t(Xp,Xb,Xa) )
      & ( sameside(Xa,Xp,Xb)
        | xb = Xp
        | Xa = Xp
        | ~ s_t(Xp,Xa,Xb) )
      & ( ~ sameside(Xa,Xp,Xb)
        | s_t(Xp,Xa,Xb)
        | s_t(Xp,Xb,Xa) )
      & ( ~ sameside(Xa,Xp,Xb)
        | Xp != Xa ) ) ).

fof(aSatz6_5,axiom,
    ! [Xa,Xp] :
      ( Xp = Xa
      | sameside(Xa,Xp,Xa) ) ).

fof(d_Defn7_23,axiom,
    ! [Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2] :
      ( ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | s_t(Xa1,Xc,Xa2) )
      & ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | s_t(Xb1,Xc,Xb2) )
      & ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | s_e(Xc,Xa2,Xc,Xb2) )
      & ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | s_m(Xa1,Xm1,Xb1) )
      & ( ~ s_t(Xa1,Xc,Xa2)
        | ~ s_e(Xc,Xa2,Xc,Xb2)
        | ~ s_m(Xa2,Xm2,Xb2)
        | s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | ~ s_m(Xa1,Xm1,Xb1)
        | ~ s_e(Xc,Xa1,Xc,Xb1)
        | ~ s_t(Xb1,Xc,Xb2) )
      & ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
        | s_m(Xa2,Xm2,Xb2) )
      & ( s_e(Xc,Xa1,Xc,Xb1)
        | ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2) ) ) ).

fof(aSatz3_7b,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xb,Xc,Xd)
      | Xb = Xc
      | s_t(Xa,Xb,Xd)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz6_2a,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( Xp = Xa
      | Xc = Xp
      | ~ s_t(Xb,Xp,Xc)
      | sameside(Xa,Xp,Xb)
      | ~ s_t(Xa,Xp,Xc)
      | Xb = Xp ) ).

fof(aSatz7_22b,axiom,
    ! [Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2] :
      ( s_t(Xm1,Xc,Xm2)
      | ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2) ) ).

fof(aSatz7_22,axiom,
    ! [Xa1,Xc,Xa2,Xb1,Xb2,Xm1,Xm2] :
      ( ~ s_t(Xa1,Xc,Xa2)
      | ~ s_t(Xb1,Xc,Xb2)
      | ~ s_e(Xc,Xa2,Xc,Xb2)
      | ~ s_m(Xa1,Xm1,Xb1)
      | s_t(Xm1,Xc,Xm2)
      | ~ s_m(Xa2,Xm2,Xb2)
      | ~ s_e(Xc,Xa1,Xc,Xb1) ) ).

fof(aSatz7_25,axiom,
    ! [Xc,Xa,Xb] :
      ( ~ s_e(Xc,Xa,Xc,Xb)
      | s_m(Xa,isomidpoint(Xa,Xb,Xc),Xb) ) ).

fof(aSatz4_19,axiom,
    ! [Xa,Xc,Xb,Xc1] :
      ( ~ s_e(Xb,Xc,Xb,Xc1)
      | Xc1 = Xc
      | ~ s_e(Xa,Xc,Xa,Xc1)
      | ~ s_t(Xa,Xc,Xb) ) ).

fof(aSatz7_20,axiom,
    ! [Xa,Xm,Xb] :
      ( Xa = Xb
      | s_m(Xa,Xm,Xb)
      | ~ s_e(Xm,Xa,Xm,Xb)
      | ~ s_col(Xa,Xm,Xb) ) ).

fof(aSatz8_2,conjecture,
    ! [Xa,Xb,Xc] :
      ( s_r(Xc,Xb,Xa)
      | ~ s_r(Xa,Xb,Xc) ) ).

fof(aSatz6_4b,axiom,
    ! [Xa,Xp,Xb] :
      ( s_t(Xa,Xp,Xb)
      | ~ s_col(Xa,Xp,Xb)
      | sameside(Xa,Xp,Xb) ) ).

fof(aSatz6_11b,axiom,
    ! [Xr,Xa,Xb,Xc,Xp,Xq] :
      ( Xa = Xr
      | Xc = Xb
      | ~ sameside(Xp,Xa,Xr)
      | ~ sameside(Xq,Xa,Xr)
      | ~ s_e(Xa,Xq,Xb,Xc)
      | Xq = Xp
      | ~ s_e(Xa,Xp,Xb,Xc) ) ).

fof(aSatz4_6,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_t(Xa,Xb,Xc)
      | s_t(Xa1,Xb1,Xc1)
      | ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1) ) ).

fof(aSatz7_21,axiom,
    ! [Xa,Xb,Xc,Xd,Xp] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | ~ s_col(Xb,Xp,Xd)
      | s_m(Xa,Xp,Xc)
      | ~ s_col(Xa,Xp,Xc)
      | ~ s_e(Xb,Xc,Xd,Xa)
      | Xb = Xd
      | s_col(Xa,Xb,Xc) ) ).

fof(aSatz7_8,axiom,
    ! [Xa,Xp,Xr,Xq] :
      ( s(Xa,Xp) != Xr
      | Xq = Xp
      | Xr != s(Xa,Xq) ) ).

fof(aSatz2_8,axiom,
    ! [Xa,Xb] : s_e(Xa,Xa,Xb,Xb) ).

fof(aSatz6_3b,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( Xa = Xp
      | Xp = Xb
      | Xp = Xc
      | ~ s_t(Xb,Xp,Xc)
      | ~ s_t(Xa,Xp,Xc)
      | sameside(Xa,Xp,Xb) ) ).

fof(aSatz6_18,axiom,
    ! [Xa,Xb,Xp,Xq,Xr] :
      ( Xp = Xq
      | ~ s_col(Xp,Xq,Xa)
      | ~ s_col(Xp,Xq,Xb)
      | s_col(Xa,Xb,Xr)
      | ~ s_col(Xp,Xq,Xr)
      | Xa = Xb ) ).

fof(aSatz4_18,axiom,
    ! [Xa,Xb,Xc,Xc1] :
      ( Xb = Xa
      | ~ s_e(Xb,Xc,Xb,Xc1)
      | Xc1 = Xc
      | ~ s_e(Xa,Xc,Xa,Xc1)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz3_14a,axiom,
    ! [Xa,Xb] : s_t(Xa,Xb,ext(Xa,Xb,alpha,gamma)) ).

fof(aSatz4_16,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
      | Xa = Xb
      | s_e(Xc,Xd,Xc1,Xd1) ) ).

fof(aSatz3_5b,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( ~ s_t(Xa,Xb,Xd)
      | s_t(Xa,Xc,Xd)
      | ~ s_t(Xb,Xc,Xd) ) ).

fof(aSatz6_16a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_t(Xd,Xc,Xb)
      | s_t(Xc,Xd,Xb)
      | ~ s_t(Xd,Xa,Xb)
      | ~ s_t(Xc,Xa,Xb)
      | Xa = Xb ) ).

fof(aSatz5_8,axiom,
    ! [Xa,Xb,Xc,Xd,Xe,Xf] :
      ( le(Xa,Xb,Xe,Xf)
      | ~ le(Xc,Xd,Xe,Xf)
      | ~ le(Xa,Xb,Xc,Xd) ) ).

fof(aSatz7_2,axiom,
    ! [Xa,Xm,Xb] :
      ( ~ s_m(Xa,Xm,Xb)
      | s_m(Xb,Xm,Xa) ) ).

fof(aSatz5_5b,axiom,
    ! [Xa,Xb,Xc,Xd,Xe] :
      ( ~ s_t(Xa,Xb,Xe)
      | ~ s_e(Xa,Xe,Xc,Xd)
      | le(Xa,Xb,Xc,Xd) ) ).

fof(aSatz7_10b,axiom,
    ! [Xa,Xp] :
      ( Xp != Xa
      | s(Xa,Xp) = Xp ) ).

fof(aSatz6_11a,axiom,
    ! [Xr,Xa,Xb,Xc] :
      ( ( Xa = Xr
        | Xb = Xc
        | s_e(Xa,insert(Xb,Xc,Xa,Xr),Xb,Xc) )
      & ( Xb = Xc
        | sameside(insert(Xb,Xc,Xa,Xr),Xa,Xr)
        | Xr = Xa ) ) ).

fof(aSatz5_3,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( s_t(Xa,Xb,Xc)
      | s_t(Xa,Xc,Xb)
      | ~ s_t(Xa,Xc,Xd)
      | ~ s_t(Xa,Xb,Xd) ) ).

fof(aSatz3_4,axiom,
    ! [Xa,Xb,Xc] :
      ( Xa = Xb
      | ~ s_t(Xb,Xa,Xc)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz7_17,axiom,
    ! [Xp,Xa,Xq,Xb] :
      ( Xa = Xb
      | ~ s_m(Xp,Xb,Xq)
      | ~ s_m(Xp,Xa,Xq) ) ).

fof(aSatz7_3a,axiom,
    ! [Xa,Xm] :
      ( Xm = Xa
      | ~ s_m(Xa,Xm,Xa) ) ).

fof(d_Defn5_4,axiom,
    ! [Xa,Xb,Xc,Xd,Y] :
      ( ( ~ le(Xa,Xb,Xc,Xd)
        | s_t(Xc,insert(Xa,Xb,Xc,Xd),Xd) )
      & ( ~ s_e(Xa,Xb,Xc,Y)
        | le(Xa,Xb,Xc,Xd)
        | ~ s_t(Xc,Y,Xd) )
      & ( ~ le(Xa,Xb,Xc,Xd)
        | s_e(Xa,Xb,Xc,insert(Xa,Xb,Xc,Xd)) ) ) ).

fof(aSatz7_7,axiom,
    ! [Xa,Xp] : Xp = s(Xa,s(Xa,Xp)) ).

fof(d_Defn8_11a,axiom,
    ! [Y,Z,X,Y1,Z1,U,V] :
      ( ( s_col(Y1,Z1,X)
        | ~ perpAt(Y,Z,X,Y1,Z1) )
      & ( Y != Z
        | ~ perpAt(Y,Z,X,Y1,Z1) )
      & ( ~ s_col(Y,Z,U)
        | s_r(U,X,V)
        | ~ s_col(Y1,Z1,V)
        | ~ perpAt(Y,Z,X,Y1,Z1) )
      & ( perpAt(Y,Z,X,Y1,Z1)
        | Y = Z
        | Y1 = Z1
        | s_col(Y,Z,f811(Y,Z,Y1,Z1,X))
        | ~ s_col(Y1,Z1,X)
        | ~ s_col(Y,Z,X) )
      & ( Y = Z
        | ~ s_r(f811(Y,Z,Y1,Z1,X),X,g811(Y,Z,Y1,Z1,X))
        | ~ s_col(Y1,Z1,X)
        | ~ s_col(Y,Z,X)
        | Y1 = Z1
        | perpAt(Y,Z,X,Y1,Z1) )
      & ( ~ s_col(Y,Z,X)
        | ~ s_col(Y1,Z1,X)
        | s_col(Y1,Z1,g811(Y,Z,Y1,Z1,X))
        | Y1 = Z1
        | Y = Z
        | perpAt(Y,Z,X,Y1,Z1) )
      & ( ~ perpAt(Y,Z,X,Y1,Z1)
        | Z1 != Y1 )
      & ( ~ perpAt(Y,Z,X,Y1,Z1)
        | s_col(Y,Z,X) ) ) ).

fof(aSatz6_28,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( ~ s_e(Xb,Xa,Xb1,Xa1)
      | s_e(Xa,Xc,Xa1,Xc1)
      | ~ s_e(Xb,Xc,Xb1,Xc1)
      | ~ sameside(Xa1,Xb1,Xc1)
      | ~ sameside(Xa,Xb,Xc) ) ).

fof(aSatz7_3b,axiom,
    ! [Xa,Xm] :
      ( s_m(Xa,Xm,Xa)
      | Xa != Xm ) ).

fof(aSatz2_11,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xc1] :
      ( s_e(Xa,Xc,Xa1,Xc1)
      | ~ s_e(Xb,Xc,Xb1,Xc1)
      | ~ s_e(Xa,Xb,Xa1,Xb1)
      | ~ s_t(Xa1,Xb1,Xc1)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz6_13a,axiom,
    ! [Xa,Xp,Xb] :
      ( ~ le(Xp,Xa,Xp,Xb)
      | s_t(Xp,Xa,Xb)
      | ~ sameside(Xa,Xp,Xb) ) ).

fof(aNarbouxLemma1,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_e(Xa,Xc,Xa,Xb)
      | Xb = Xc ) ).

fof(aSatz7_16b,axiom,
    ! [Xp,Xq,Xr,Xcs,Xa] :
      ( ~ s_e(s(Xa,Xp),s(Xa,Xq),s(Xa,Xr),s(Xa,Xcs))
      | s_e(Xp,Xq,Xr,Xcs) ) ).

fof(aSatz7_19,axiom,
    ! [Xa,Xb,Xp] :
      ( Xa = Xb
      | s(Xb,s(Xa,Xp)) != s(Xa,s(Xb,Xp)) ) ).

fof(aSatz4_11e,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xa,Xc,Xb) ) ).

fof(aSatz7_9,axiom,
    ! [Xa,Xp,Xq] :
      ( s(Xa,Xq) != s(Xa,Xp)
      | Xp = Xq ) ).

fof(aSatz3_14b,axiom,
    ! [Xb,Xa] : ext(Xa,Xb,alpha,gamma) != Xb ).

fof(aSatz3_17,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1,Xp] :
      ( ( s_t(Xp,crossbar(Xa,Xb,Xc,Xa1,Xb1,Xp),Xc)
        | ~ s_t(Xa,Xp,Xa1)
        | ~ s_t(Xa1,Xb1,Xc)
        | ~ s_t(Xa,Xb,Xc) )
      & ( ~ s_t(Xa,Xp,Xa1)
        | s_t(Xb,crossbar(Xa,Xb,Xc,Xa1,Xb1,Xp),Xb1)
        | ~ s_t(Xa1,Xb1,Xc)
        | ~ s_t(Xa,Xb,Xc) ) ) ).

fof(aSatz5_5a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ( ~ le(Xa,Xb,Xc,Xd)
        | ext(Xa,Xb,insert(Xa,Xb,Xc,Xd),Xd) = ins(Xc,Xd,Xa,Xb) )
      & ( ~ le(Xa,Xb,Xc,Xd)
        | s_e(Xa,ins(Xc,Xd,Xa,Xb),Xc,Xd) )
      & ( ~ le(Xa,Xb,Xc,Xd)
        | s_t(Xa,Xb,ins(Xc,Xd,Xa,Xb)) ) ) ).

fof(aSatz4_11c,axiom,
    ! [Xa,Xb,Xc] :
      ( s_col(Xc,Xb,Xa)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz3_1,axiom,
    ! [Xa,Xb] : s_t(Xa,Xb,Xb) ).

fof(d_Defn4_15,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_col(Xa,Xb,Xc) )
      & ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1) )
      & ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_e(Xa,Xd,Xa1,Xd1) )
      & ( ~ s_e(Xa,Xd,Xa1,Xd1)
        | s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | ~ s_e(Xb,Xd,Xb1,Xd1)
        | ~ s_e3(Xa,Xb,Xc,Xa1,Xb1,Xc1)
        | ~ s_col(Xa,Xb,Xc) )
      & ( ~ s_fs(Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1)
        | s_e(Xb,Xd,Xb1,Xd1) ) ) ).

fof(aSatz6_25,axiom,
    ! [Xa,Xb] :
      ( ~ s_col(Xa,Xb,pointOffLine(Xa,Xb))
      | Xb = Xa ) ).

fof(aSatz5_6,axiom,
    ! [Xa,Xb,Xc,Xd,Xa1,Xb1,Xc1,Xd1] :
      ( ~ le(Xa,Xb,Xc,Xd)
      | ~ s_e(Xc,Xd,Xc1,Xd1)
      | le(Xa1,Xb1,Xc1,Xd1)
      | ~ s_e(Xa,Xb,Xa1,Xb1) ) ).

fof(aSatz7_13,axiom,
    ! [Xp,Xq,Xa] : s_e(Xp,Xq,s(Xa,Xp),s(Xa,Xq)) ).

fof(aSatz6_7,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( ~ sameside(Xa,Xp,Xb)
      | ~ sameside(Xb,Xp,Xc)
      | sameside(Xa,Xp,Xc) ) ).

fof(d_Defn2_10,axiom,
    ! [Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd] :
      ( ( ~ s_e(Xa,Xb,Za,Zb)
        | ~ s_e(Xb,Xc,Zb,Zc)
        | s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | ~ s_e(Xb,Xd,Zb,Zd)
        | ~ s_e(Xa,Xd,Za,Zd)
        | ~ s_t(Za,Zb,Zc)
        | ~ s_t(Xa,Xb,Xc) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xb,Xd,Zb,Zd) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xa,Xd,Za,Zd) )
      & ( s_e(Xb,Xc,Zb,Zc)
        | ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( s_e(Xa,Xb,Za,Zb)
        | ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Za,Zb,Zc) )
      & ( ~ s_afs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Xa,Xb,Xc) ) ) ).

fof(aSatz3_6b,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xb,Xc)
      | ~ s_t(Xa,Xc,Xd)
      | s_t(Xa,Xb,Xd) ) ).

fof(aSatz3_2,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | s_t(Xc,Xb,Xa) ) ).

fof(d_Defn8_11b,axiom,
    ! [Xp,Xq,Xp1,Xq1,X] :
      ( ( perpAt(Xp,Xq,il(Xp,Xq,Xp1,Xq1),Xp1,Xq1)
        | ~ perp(Xp,Xq,Xp1,Xq1) )
      & ( perp(Xp,Xq,Xp1,Xq1)
        | ~ perpAt(Xp,Xq,X,Xp1,Xq1) ) ) ).

fof(aSatz2_13,axiom,
    ! [Xb,Xc,Xa] :
      ( ~ s_e(Xb,Xc,Xa,Xa)
      | Xb = Xc ) ).

fof(aSatz5_1,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xb = Xa
      | ~ s_t(Xa,Xb,Xd)
      | s_t(Xa,Xd,Xc)
      | s_t(Xa,Xc,Xd)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz3_6a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_t(Xa,Xc,Xd)
      | s_t(Xb,Xc,Xd)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz6_15c,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( ~ sameside(Xa,Xp,Xr)
      | s_col(Xa,Xp,Xq)
      | ~ s_t(Xq,Xp,Xr)
      | Xp = Xr
      | Xq = Xp ) ).

fof(aSatz2_2,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_e(Xc,Xd,Xa,Xb)
      | ~ s_e(Xa,Xb,Xc,Xd) ) ).

fof(aSatz3_5a,axiom,
    ! [Xa,Xb,Xd,Xc] :
      ( ~ s_t(Xa,Xb,Xd)
      | ~ s_t(Xb,Xc,Xd)
      | s_t(Xa,Xb,Xc) ) ).

fof(aSatz6_4a,axiom,
    ! [Xa,Xp,Xb] :
      ( ( ~ sameside(Xa,Xp,Xb)
        | s_col(Xa,Xp,Xb) )
      & ( ~ s_t(Xa,Xp,Xb)
        | ~ sameside(Xa,Xp,Xb) ) ) ).

fof(aSatz2_5,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( ~ s_e(Xa,Xb,Xc,Xd)
      | s_e(Xa,Xb,Xd,Xc) ) ).

fof(aSatz6_15d,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( Xp = Xq
      | Xr = Xp
      | s_col(Xa,Xp,Xq)
      | Xp != Xa
      | ~ s_t(Xq,Xp,Xr) ) ).

fof(aSatz7_16a,axiom,
    ! [Xp,Xq,Xr,Xcs,Xa] :
      ( ~ s_e(Xp,Xq,Xr,Xcs)
      | s_e(s(Xa,Xp),s(Xa,Xq),s(Xa,Xr),s(Xa,Xcs)) ) ).

fof(aSatz6_15a,axiom,
    ! [Xp,Xq,Xr,Xa] :
      ( ~ s_t(Xq,Xp,Xr)
      | ~ s_col(Xa,Xp,Xq)
      | sameside(Xa,Xp,Xr)
      | sameside(Xa,Xp,Xq)
      | Xa = Xp
      | Xp = Xr
      | Xp = Xq ) ).

fof(d_Defn4_1,axiom,
    ! [Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd] :
      ( ( s_t(Za,Zb,Zc)
        | ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xb,Xc,Zb,Zc) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xa,Xd,Za,Zd) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_e(Xc,Xd,Zc,Zd) )
      & ( ~ s_t(Za,Zb,Zc)
        | ~ s_e(Xa,Xc,Za,Zc)
        | ~ s_e(Xb,Xc,Zb,Zc)
        | ~ s_e(Xa,Xd,Za,Zd)
        | s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | ~ s_e(Xc,Xd,Zc,Zd)
        | ~ s_t(Xa,Xb,Xc) )
      & ( s_e(Xa,Xc,Za,Zc)
        | ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd) )
      & ( ~ s_ifs(Xa,Xb,Xc,Xd,Za,Zb,Zc,Zd)
        | s_t(Xa,Xb,Xc) ) ) ).

fof(aSatz7_22a,axiom,
    ! [Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2] :
      ( ~ s_kf(Xa1,Xm1,Xb1,Xc,Xb2,Xm2,Xa2)
      | s_t(Xm1,Xc,Xm2)
      | ~ le(Xc,Xa1,Xc,Xa2) ) ).

fof(aSatz4_17,axiom,
    ! [Xa,Xb,Xc,Xp,Xq] :
      ( Xb = Xa
      | ~ s_e(Xa,Xp,Xa,Xq)
      | ~ s_e(Xb,Xp,Xb,Xq)
      | s_e(Xc,Xp,Xc,Xq)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(aSatz4_11b,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_col(Xc,Xa,Xb) ) ).

fof(aSatz6_13b,axiom,
    ! [Xa,Xp,Xb] :
      ( le(Xp,Xa,Xp,Xb)
      | ~ s_t(Xp,Xa,Xb)
      | ~ sameside(Xa,Xp,Xb) ) ).

fof(aSatz6_2b,axiom,
    ! [Xa,Xp,Xb,Xc] :
      ( Xb = Xp
      | s_t(Xb,Xp,Xc)
      | ~ sameside(Xa,Xp,Xb)
      | ~ s_t(Xa,Xp,Xc)
      | Xc = Xp
      | Xa = Xp ) ).

fof(aSatz7_10a,axiom,
    ! [Xa,Xp] :
      ( Xp = Xa
      | Xp != s(Xa,Xp) ) ).

fof(aSatz2_1,axiom,
    ! [Xa,Xb] : s_e(Xa,Xb,Xa,Xb) ).

fof(aSatz5_2,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( Xa = Xb
      | ~ s_t(Xa,Xb,Xd)
      | s_t(Xb,Xc,Xd)
      | s_t(Xb,Xd,Xc)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz6_16b,axiom,
    ! [Xp,Xq,Xcs,Xr] :
      ( Xp = Xcs
      | ~ s_col(Xp,Xq,Xcs)
      | s_col(Xp,Xcs,Xr)
      | ~ s_col(Xp,Xq,Xr)
      | Xp = Xq ) ).

fof(aSatz6_17b,axiom,
    ! [Xp,Xq,Xr] :
      ( Xp = Xq
      | s_col(Xq,Xp,Xr)
      | ~ s_col(Xp,Xq,Xr) ) ).

fof(aSatz4_14,axiom,
    ! [Xa,Xb,Xc,Xa1,Xb1] :
      ( ~ s_col(Xa,Xb,Xc)
      | s_e3(Xa,Xb,Xc,Xa1,Xb1,insert5(Xa,Xb,Xc,Xa1,Xb1))
      | ~ s_e(Xa,Xb,Xa1,Xb1) ) ).

fof(aSatz5_12a2,axiom,
    ! [Xa,Xb,Xc] :
      ( ~ s_t(Xa,Xb,Xc)
      | le(Xb,Xc,Xa,Xc)
      | ~ s_col(Xa,Xb,Xc) ) ).

fof(d_insert,axiom,
    ! [Xa,Xb,Xa1,Xc1] : ext(ext(Xc1,Xa1,alpha,gamma),Xa1,Xa,Xb) = insert(Xa,Xb,Xa1,Xc1) ).

fof(aSatz3_7a,axiom,
    ! [Xa,Xb,Xc,Xd] :
      ( s_t(Xa,Xc,Xd)
      | Xc = Xb
      | ~ s_t(Xb,Xc,Xd)
      | ~ s_t(Xa,Xb,Xc) ) ).

fof(aSatz4_12,axiom,
    ! [Xa,Xb] : s_col(Xa,Xa,Xb) ).

