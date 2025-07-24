include('Axioms/ITP001/ITP001+2.ax').
fof(conj_thm_2Ebool_2ERIGHT__AND__FORALL__THM,axiom,
    ! [A_27a] :
      ( ! [V0P] :
          ( mem(V0P,bool)
         => ! [V1Q] :
              ( mem(V1Q,arr(A_27a,bool))
             => ( ! [V3x] :
                    ( ( p(V0P)
                      & p(ap(V1Q,V3x)) )
                   <= mem(V3x,A_27a) )
              <=> ( p(V0P)
                  & ! [V2x] :
                      ( p(ap(V1Q,V2x))
                     <= mem(V2x,A_27a) ) ) ) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Ebool_2E_5C_2F,axiom,
    mem(c_2Ebool_2E_5C_2F,arr(bool,arr(bool,bool))) ).

fof(conj_thm_2Ebool_2ENOT__EXISTS__THM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0P] :
          ( mem(V0P,arr(A_27a,bool))
         => ( ! [V2x] :
                ( mem(V2x,A_27a)
               => ~ p(ap(V0P,V2x)) )
          <=> ~ ? [V1x] :
                  ( p(ap(V0P,V1x))
                  & mem(V1x,A_27a) ) ) ) ) ).

fof(conj_thm_2Esat_2EAND__INV2,axiom,
    ! [V0A] :
      ( ( ( $false
         <= ( $false
           <= p(V0A) ) )
       <= ( $false
         <= ~ p(V0A) ) )
     <= mem(V0A,bool) ) ).

fof(ax_true_p,axiom,
    p(c_2Ebool_2ET) ).

fof(conj_thm_2Esat_2Edc__conj,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( ! [V2r] :
              ( mem(V2r,bool)
             => ( ( ( p(V2r)
                    | ~ p(V0p) )
                  & ( p(V1q)
                    | ~ p(V0p) )
                  & ( p(V0p)
                    | ~ p(V2r)
                    | ~ p(V1q) ) )
              <=> ( ( p(V1q)
                    & p(V2r) )
                <=> p(V0p) ) ) )
         <= mem(V1q,bool) ) ) ).

fof(mem_c_2Ebool_2E_3F,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ebool_2E_3F(A_27a),arr(arr(A_27a,bool),bool)) ) ).

fof(mem_c_2Epred__set_2ECROSS,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Epred__set_2ECROSS(A_27a,A_27b),arr(arr(A_27a,bool),arr(arr(A_27b,bool),arr(ty_2Epair_2Eprod(A_27a,A_27b),bool)))) ) ) ).

fof(conj_thm_2Ebool_2ELEFT__FORALL__OR__THM,axiom,
    ! [A_27a] :
      ( ! [V0Q] :
          ( mem(V0Q,bool)
         => ! [V1P] :
              ( ( ( p(V0Q)
                  | ! [V3x] :
                      ( mem(V3x,A_27a)
                     => p(ap(V1P,V3x)) ) )
              <=> ! [V2x] :
                    ( ( p(ap(V1P,V2x))
                      | p(V0Q) )
                   <= mem(V2x,A_27a) ) )
             <= mem(V1P,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(ax_and_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( mem(R,bool)
         => ( p(ap(ap(c_2Ebool_2E_2F_5C,Q),R))
          <=> ( p(R)
              & p(Q) ) ) ) ) ).

fof(conj_thm_2Esat_2Edc__imp,axiom,
    ! [V0p] :
      ( ! [V1q] :
          ( mem(V1q,bool)
         => ! [V2r] :
              ( ( ( ( p(V2r)
                   <= p(V1q) )
                <=> p(V0p) )
              <=> ( ( p(V0p)
                    | p(V1q) )
                  & ( ~ p(V2r)
                    | p(V0p) )
                  & ( p(V2r)
                    | ~ p(V0p)
                    | ~ p(V1q) ) ) )
             <= mem(V2r,bool) ) )
     <= mem(V0p,bool) ) ).

fof(ax_false_p,axiom,
    ~ p(c_2Ebool_2EF) ).

fof(conj_thm_2Ebool_2ETRUTH,axiom,
    $true ).

fof(mem_c_2Ebool_2E_7E,axiom,
    mem(c_2Ebool_2E_7E,arr(bool,bool)) ).

fof(conj_thm_2Ebool_2EDISJ__SYM,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ! [V1B] :
          ( mem(V1B,bool)
         => ( ( p(V0A)
              | p(V1B) )
          <=> ( p(V1B)
              | p(V0A) ) ) ) ) ).

fof(conj_thm_2Esat_2ENOT__NOT,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ~ ~ p(V0t)
      <=> p(V0t) ) ) ).

fof(ne_ty_2Epair_2Eprod,axiom,
    ! [A0] :
      ( ne(A0)
     => ! [A1] :
          ( ne(ty_2Epair_2Eprod(A0,A1))
         <= ne(A1) ) ) ).

fof(conj_thm_2Epred__set_2EBIJ__SYM,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ! [V0s] :
              ( mem(V0s,arr(A_27a,bool))
             => ! [V1t] :
                  ( mem(V1t,arr(A_27b,bool))
                 => ( ? [V3g] :
                        ( mem(V3g,arr(A_27b,A_27a))
                        & p(ap(ap(ap(c_2Epred__set_2EBIJ(A_27b,A_27a),V3g),V1t),V0s)) )
                  <=> ? [V2f] :
                        ( mem(V2f,arr(A_27a,A_27b))
                        & p(ap(ap(ap(c_2Epred__set_2EBIJ(A_27a,A_27b),V2f),V0s),V1t)) ) ) ) )
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(mem_c_2Ebool_2E_21,axiom,
    ! [A_27a] :
      ( mem(c_2Ebool_2E_21(A_27a),arr(arr(A_27a,bool),bool))
     <= ne(A_27a) ) ).

fof(conj_thm_2Eutil__prob_2ENUM__2D__BIJ__INV,conjecture,
    ? [V0f] :
      ( p(ap(ap(ap(c_2Epred__set_2EBIJ(ty_2Enum_2Enum,ty_2Epair_2Eprod(ty_2Enum_2Enum,ty_2Enum_2Enum)),V0f),c_2Epred__set_2EUNIV(ty_2Enum_2Enum)),ap(ap(c_2Epred__set_2ECROSS(ty_2Enum_2Enum,ty_2Enum_2Enum),c_2Epred__set_2EUNIV(ty_2Enum_2Enum)),c_2Epred__set_2EUNIV(ty_2Enum_2Enum))))
      & mem(V0f,arr(ty_2Enum_2Enum,ty_2Epair_2Eprod(ty_2Enum_2Enum,ty_2Enum_2Enum))) ) ).

fof(ax_all_p,axiom,
    ! [A] :
      ( ! [Q] :
          ( mem(Q,arr(A,bool))
         => ( p(ap(c_2Ebool_2E_21(A),Q))
          <=> ! [X] :
                ( p(ap(Q,X))
               <= mem(X,A) ) ) )
     <= ne(A) ) ).

fof(ax_eq_p,axiom,
    ! [A] :
      ( ! [X] :
          ( mem(X,A)
         => ! [Y] :
              ( ( p(ap(ap(c_2Emin_2E_3D(A),X),Y))
              <=> Y = X )
             <= mem(Y,A) ) )
     <= ne(A) ) ).

fof(ax_ex_p,axiom,
    ! [A] :
      ( ne(A)
     => ! [Q] :
          ( ( ? [X] :
                ( p(ap(Q,X))
                & mem(X,A) )
          <=> p(ap(c_2Ebool_2E_3F(A),Q)) )
         <= mem(Q,arr(A,bool)) ) ) ).

fof(conj_thm_2Ebool_2ENOT__CLAUSES,axiom,
    ( ( $true
    <=> ~ $false )
    & ( $false
    <=> ~ $true )
    & ! [V0t] :
        ( ( p(V0t)
        <=> ~ ~ p(V0t) )
       <= mem(V0t,bool) ) ) ).

fof(mem_c_2Emin_2E_3D_3D_3E,axiom,
    mem(c_2Emin_2E_3D_3D_3E,arr(bool,arr(bool,bool))) ).

fof(conj_thm_2Esat_2Edc__eq,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ! [V2r] :
              ( ( ( p(V0p)
                <=> ( p(V2r)
                  <=> p(V1q) ) )
              <=> ( ( p(V0p)
                    | p(V2r)
                    | p(V1q) )
                  & ( ~ p(V2r)
                    | ~ p(V0p)
                    | p(V1q) )
                  & ( ~ p(V1q)
                    | ~ p(V0p)
                    | p(V2r) )
                  & ( ~ p(V2r)
                    | ~ p(V1q)
                    | p(V0p) ) ) )
             <= mem(V2r,bool) ) ) ) ).

fof(ax_neg_p,axiom,
    ! [Q] :
      ( ( p(ap(c_2Ebool_2E_7E,Q))
      <=> ~ p(Q) )
     <= mem(Q,bool) ) ).

fof(conj_thm_2Ebool_2EIMP__CLAUSES,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( $true
        <=> ( p(V0t)
           => $true ) )
        & ( $true
        <=> ( p(V0t)
           => p(V0t) ) )
        & ( ~ p(V0t)
        <=> ( $false
           <= p(V0t) ) )
        & ( ( $false
           => p(V0t) )
        <=> $true )
        & ( p(V0t)
        <=> ( $true
           => p(V0t) ) ) ) ) ).

fof(mem_c_2Emin_2E_3D,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Emin_2E_3D(A_27a),arr(A_27a,arr(A_27a,bool))) ) ).

fof(conj_thm_2Esat_2Edc__disj,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ! [V2r] :
              ( ( ( ( p(V2r)
                    | p(V1q) )
                <=> p(V0p) )
              <=> ( ( p(V0p)
                    | ~ p(V1q) )
                  & ( p(V0p)
                    | ~ p(V2r) )
                  & ( ~ p(V0p)
                    | p(V2r)
                    | p(V1q) ) ) )
             <= mem(V2r,bool) ) ) ) ).

fof(mem_c_2Ebool_2E_2F_5C,axiom,
    mem(c_2Ebool_2E_2F_5C,arr(bool,arr(bool,bool))) ).

fof(conj_thm_2Ebool_2EEQ__SYM__EQ,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1y] :
              ( ( V1y = V0x
              <=> V1y = V0x )
             <= mem(V1y,A_27a) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Ebool_2ELEFT__EXISTS__AND__THM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0P] :
          ( ! [V1Q] :
              ( ( ? [V2x] :
                    ( p(ap(V0P,V2x))
                    & p(V1Q)
                    & mem(V2x,A_27a) )
              <=> ( ? [V3x] :
                      ( p(ap(V0P,V3x))
                      & mem(V3x,A_27a) )
                  & p(V1Q) ) )
             <= mem(V1Q,bool) )
         <= mem(V0P,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Ebool_2ERIGHT__FORALL__OR__THM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0P] :
          ( mem(V0P,bool)
         => ! [V1Q] :
              ( ( ! [V2x] :
                    ( ( p(V0P)
                      | p(ap(V1Q,V2x)) )
                   <= mem(V2x,A_27a) )
              <=> ( p(V0P)
                  | ! [V3x] :
                      ( p(ap(V1Q,V3x))
                     <= mem(V3x,A_27a) ) ) )
             <= mem(V1Q,arr(A_27a,bool)) ) ) ) ).

fof(mem_c_2Ebool_2ET,axiom,
    mem(c_2Ebool_2ET,bool) ).

fof(ne_ty_2Enum_2Enum,axiom,
    ne(ty_2Enum_2Enum) ).

fof(conj_thm_2Ebool_2ELEFT__OR__EXISTS__THM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0P] :
          ( ! [V1Q] :
              ( mem(V1Q,bool)
             => ( ( p(V1Q)
                  | ? [V2x] :
                      ( p(ap(V0P,V2x))
                      & mem(V2x,A_27a) ) )
              <=> ? [V3x] :
                    ( mem(V3x,A_27a)
                    & ( p(ap(V0P,V3x))
                      | p(V1Q) ) ) ) )
         <= mem(V0P,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Ebool_2ERIGHT__EXISTS__AND__THM,axiom,
    ! [A_27a] :
      ( ! [V0P] :
          ( mem(V0P,bool)
         => ! [V1Q] :
              ( ( ( ? [V3x] :
                      ( mem(V3x,A_27a)
                      & p(ap(V1Q,V3x)) )
                  & p(V0P) )
              <=> ? [V2x] :
                    ( mem(V2x,A_27a)
                    & p(V0P)
                    & p(ap(V1Q,V2x)) ) )
             <= mem(V1Q,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Esat_2Edc__neg,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ( ( p(V0p)
            <=> ~ p(V1q) )
          <=> ( ( p(V1q)
                | p(V0p) )
              & ( ~ p(V0p)
                | ~ p(V1q) ) ) ) ) ) ).

fof(conj_thm_2Ebool_2EF__IMP,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( p(V0t)
         => $false )
       <= ~ p(V0t) ) ) ).

fof(conj_thm_2Esat_2EOR__DUAL2,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ! [V1B] :
          ( mem(V1B,bool)
         => ( ( $false
             <= ~ ( p(V1B)
                  | p(V0A) ) )
          <=> ( ( $false
               <= p(V0A) )
             => ( $false
               <= ~ p(V1B) ) ) ) ) ) ).

fof(mem_c_2Ebool_2EF,axiom,
    mem(c_2Ebool_2EF,bool) ).

fof(mem_c_2Epred__set_2EBIJ,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Epred__set_2EBIJ(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27a,bool),arr(arr(A_27b,bool),bool)))) ) ) ).

fof(conj_thm_2Ebool_2ERIGHT__OR__EXISTS__THM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0P] :
          ( ! [V1Q] :
              ( mem(V1Q,arr(A_27a,bool))
             => ( ? [V3x] :
                    ( mem(V3x,A_27a)
                    & ( p(V0P)
                      | p(ap(V1Q,V3x)) ) )
              <=> ( ? [V2x] :
                      ( mem(V2x,A_27a)
                      & p(ap(V1Q,V2x)) )
                  | p(V0P) ) ) )
         <= mem(V0P,bool) ) ) ).

fof(conj_thm_2Ebool_2EEQ__CLAUSES,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( p(V0t)
        <=> ( $true
          <=> p(V0t) ) )
        & ( ( $false
          <=> p(V0t) )
        <=> ~ p(V0t) )
        & ( ~ p(V0t)
        <=> ( $false
          <=> p(V0t) ) )
        & ( p(V0t)
        <=> ( p(V0t)
          <=> $true ) ) ) ) ).

fof(conj_thm_2Esat_2EOR__DUAL3,axiom,
    ! [V0A] :
      ( ! [V1B] :
          ( ( ( ( $false
               <= ~ p(V1B) )
             <= p(V0A) )
          <=> ( ~ ( ~ p(V0A)
                  | p(V1B) )
             => $false ) )
         <= mem(V1B,bool) )
     <= mem(V0A,bool) ) ).

fof(conj_thm_2Ebool_2EIMP__ANTISYM__AX,axiom,
    ! [V0t1] :
      ( ! [V1t2] :
          ( ( ( ( p(V0t1)
               <= p(V1t2) )
             => ( p(V0t1)
              <=> p(V1t2) ) )
           <= ( p(V0t1)
             => p(V1t2) ) )
         <= mem(V1t2,bool) )
     <= mem(V0t1,bool) ) ).

fof(ax_imp_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( ( ( p(R)
             <= p(Q) )
          <=> p(ap(ap(c_2Emin_2E_3D_3D_3E,Q),R)) )
         <= mem(R,bool) ) ) ).

fof(conj_thm_2Ebool_2ESKOLEM__THM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ! [V0P] :
              ( mem(V0P,arr(A_27a,arr(A_27b,bool)))
             => ( ! [V1x] :
                    ( ? [V2y] :
                        ( p(ap(ap(V0P,V1x),V2y))
                        & mem(V2y,A_27b) )
                   <= mem(V1x,A_27a) )
              <=> ? [V3f] :
                    ( ! [V4x] :
                        ( p(ap(ap(V0P,V4x),ap(V3f,V4x)))
                       <= mem(V4x,A_27a) )
                    & mem(V3f,arr(A_27a,A_27b)) ) ) )
         <= ne(A_27b) ) ) ).

fof(ax_or_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( mem(R,bool)
         => ( p(ap(ap(c_2Ebool_2E_5C_2F,Q),R))
          <=> ( p(R)
              | p(Q) ) ) ) ) ).

fof(conj_thm_2Ebool_2EIMP__F,axiom,
    ! [V0t] :
      ( ( ( p(V0t)
         => $false )
       => ~ p(V0t) )
     <= mem(V0t,bool) ) ).

fof(mem_c_2Epred__set_2EUNIV,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EUNIV(A_27a),arr(A_27a,bool))
     <= ne(A_27a) ) ).

fof(conj_thm_2Eutil__prob_2ENUM__2D__BIJ,axiom,
    ? [V0f] :
      ( p(ap(ap(ap(c_2Epred__set_2EBIJ(ty_2Epair_2Eprod(ty_2Enum_2Enum,ty_2Enum_2Enum),ty_2Enum_2Enum),V0f),ap(ap(c_2Epred__set_2ECROSS(ty_2Enum_2Enum,ty_2Enum_2Enum),c_2Epred__set_2EUNIV(ty_2Enum_2Enum)),c_2Epred__set_2EUNIV(ty_2Enum_2Enum))),c_2Epred__set_2EUNIV(ty_2Enum_2Enum)))
      & mem(V0f,arr(ty_2Epair_2Eprod(ty_2Enum_2Enum,ty_2Enum_2Enum),ty_2Enum_2Enum)) ) ).

fof(conj_thm_2Esat_2EAND__INV__IMP,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ( ( ~ p(V0A)
         => $false )
       <= p(V0A) ) ) ).

fof(conj_thm_2Ebool_2ELEFT__AND__FORALL__THM,axiom,
    ! [A_27a] :
      ( ! [V0P] :
          ( mem(V0P,arr(A_27a,bool))
         => ! [V1Q] :
              ( mem(V1Q,bool)
             => ( ( ! [V2x] :
                      ( mem(V2x,A_27a)
                     => p(ap(V0P,V2x)) )
                  & p(V1Q) )
              <=> ! [V3x] :
                    ( ( p(ap(V0P,V3x))
                      & p(V1Q) )
                   <= mem(V3x,A_27a) ) ) ) )
     <= ne(A_27a) ) ).

