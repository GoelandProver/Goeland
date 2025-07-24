include('Axioms/ITP001/ITP001+2.ax').
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
                    | ~ p(V2r)
                    | ~ p(V1q) )
                  & ( ~ p(V0p)
                    | ~ p(V2r)
                    | p(V1q) )
                  & ( ~ p(V1q)
                    | ~ p(V0p)
                    | p(V2r) )
                  & ( p(V0p)
                    | p(V2r)
                    | p(V1q) ) ) )
             <= mem(V2r,bool) ) ) ) ).

fof(mem_c_2Emin_2E_3D,axiom,
    ! [A_27a] :
      ( mem(c_2Emin_2E_3D(A_27a),arr(A_27a,arr(A_27a,bool)))
     <= ne(A_27a) ) ).

fof(mem_c_2Emin_2E_3D_3D_3E,axiom,
    mem(c_2Emin_2E_3D_3D_3E,arr(bool,arr(bool,bool))) ).

fof(ax_all_p,axiom,
    ! [A] :
      ( ne(A)
     => ! [Q] :
          ( ( p(ap(c_2Ebool_2E_21(A),Q))
          <=> ! [X] :
                ( p(ap(Q,X))
               <= mem(X,A) ) )
         <= mem(Q,arr(A,bool)) ) ) ).

fof(conj_thm_2EquantHeuristics_2EGUESS__RULES__WEAKEN__FORALL__POINT,conjecture,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ! [V0i] :
              ( mem(V0i,arr(A_27b,A_27a))
             => ! [V1P] :
                  ( ! [V2Q] :
                      ( ( ! [V3x] :
                            ( mem(V3x,A_27a)
                           => ( p(ap(V2Q,V3x))
                             => p(ap(V1P,V3x)) ) )
                       => ( p(ap(ap(c_2EquantHeuristics_2EGUESS__FORALL__POINT(A_27b,A_27a),V0i),V1P))
                         => p(ap(ap(c_2EquantHeuristics_2EGUESS__FORALL__POINT(A_27b,A_27a),V0i),V2Q)) ) )
                     <= mem(V2Q,arr(A_27a,bool)) )
                 <= mem(V1P,arr(A_27a,bool)) ) )
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(ax_false_p,axiom,
    ~ p(c_2Ebool_2EF) ).

fof(mem_c_2Ebool_2EF,axiom,
    mem(c_2Ebool_2EF,bool) ).

fof(conj_thm_2Esat_2Edc__disj,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( ! [V2r] :
              ( ( ( ( p(V1q)
                    | p(V2r) )
                <=> p(V0p) )
              <=> ( ( p(V1q)
                    | p(V2r)
                    | ~ p(V0p) )
                  & ( p(V0p)
                    | ~ p(V2r) )
                  & ( p(V0p)
                    | ~ p(V1q) ) ) )
             <= mem(V2r,bool) )
         <= mem(V1q,bool) ) ) ).

fof(mem_c_2EquantHeuristics_2EGUESS__EXISTS__GAP,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2EquantHeuristics_2EGUESS__EXISTS__GAP(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27b,bool),bool))) ) ) ).

fof(conj_thm_2Esat_2Edc__neg,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( mem(V1q,bool)
         => ( ( ( p(V0p)
                | p(V1q) )
              & ( ~ p(V1q)
                | ~ p(V0p) ) )
          <=> ( ~ p(V1q)
            <=> p(V0p) ) ) ) ) ).

fof(ax_imp_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( mem(R,bool)
         => ( p(ap(ap(c_2Emin_2E_3D_3D_3E,Q),R))
          <=> ( p(Q)
             => p(R) ) ) ) ) ).

fof(ax_ex_p,axiom,
    ! [A] :
      ( ! [Q] :
          ( ( ? [X] :
                ( mem(X,A)
                & p(ap(Q,X)) )
          <=> p(ap(c_2Ebool_2E_3F(A),Q)) )
         <= mem(Q,arr(A,bool)) )
     <= ne(A) ) ).

fof(conj_thm_2Ebool_2EEQ__CLAUSES,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( ( $true
          <=> p(V0t) )
        <=> p(V0t) )
        & ( p(V0t)
        <=> ( $true
          <=> p(V0t) ) )
        & ( ( $false
          <=> p(V0t) )
        <=> ~ p(V0t) )
        & ( ~ p(V0t)
        <=> ( $false
          <=> p(V0t) ) ) ) ) ).

fof(mem_c_2Ebool_2E_7E,axiom,
    mem(c_2Ebool_2E_7E,arr(bool,bool)) ).

fof(mem_c_2Ebool_2E_3F,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ebool_2E_3F(A_27a),arr(arr(A_27a,bool),bool)) ) ).

fof(conj_thm_2Ebool_2EIMP__CLAUSES,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( ( $true
           => p(V0t) )
        <=> p(V0t) )
        & ( $true
        <=> ( p(V0t)
           => $true ) )
        & ( ( p(V0t)
           => p(V0t) )
        <=> $true )
        & ( ( $false
           <= p(V0t) )
        <=> ~ p(V0t) )
        & ( ( $false
           => p(V0t) )
        <=> $true ) ) ) ).

fof(conj_thm_2EquantHeuristics_2EGUESS__REWRITES,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ne(A_27b)
         => ! [V0i] :
              ( mem(V0i,arr(A_27a,A_27b))
             => ! [V1P] :
                  ( mem(V1P,arr(A_27b,bool))
                 => ( ( ! [V2v] :
                          ( ( p(ap(V1P,V2v))
                           => ? [V3fv] :
                                ( p(ap(V1P,ap(V0i,V3fv)))
                                & mem(V3fv,A_27a) ) )
                         <= mem(V2v,A_27b) )
                    <=> p(ap(ap(c_2EquantHeuristics_2EGUESS__EXISTS(A_27a,A_27b),V0i),V1P)) )
                    & ( ! [V4v] :
                          ( mem(V4v,A_27b)
                         => ( ~ p(ap(V1P,V4v))
                           => ? [V5fv] :
                                ( mem(V5fv,A_27a)
                                & ~ p(ap(V1P,ap(V0i,V5fv))) ) ) )
                    <=> p(ap(ap(c_2EquantHeuristics_2EGUESS__FORALL(A_27a,A_27b),V0i),V1P)) )
                    & ! [V16i] :
                        ( ! [V17P] :
                            ( mem(V17P,arr(A_27b,bool))
                           => ( ! [V18v] :
                                  ( ( ~ p(ap(V17P,V18v))
                                   => ? [V19fv] :
                                        ( mem(V19fv,A_27a)
                                        & ap(V16i,V19fv) = V18v ) )
                                 <= mem(V18v,A_27b) )
                            <=> p(ap(ap(c_2EquantHeuristics_2EGUESS__FORALL__GAP(A_27a,A_27b),V16i),V17P)) ) )
                       <= mem(V16i,arr(A_27a,A_27b)) )
                    & ! [V12i] :
                        ( mem(V12i,arr(A_27a,A_27b))
                       => ! [V13P] :
                            ( ( ! [V14v] :
                                  ( mem(V14v,A_27b)
                                 => ( p(ap(V13P,V14v))
                                   => ? [V15fv] :
                                        ( mem(V15fv,A_27a)
                                        & V14v = ap(V12i,V15fv) ) ) )
                            <=> p(ap(ap(c_2EquantHeuristics_2EGUESS__EXISTS__GAP(A_27a,A_27b),V12i),V13P)) )
                           <= mem(V13P,arr(A_27b,bool)) ) )
                    & ! [V9i] :
                        ( mem(V9i,arr(A_27a,A_27b))
                       => ! [V10P] :
                            ( mem(V10P,arr(A_27b,bool))
                           => ( p(ap(ap(c_2EquantHeuristics_2EGUESS__FORALL__POINT(A_27a,A_27b),V9i),V10P))
                            <=> ! [V11fv] :
                                  ( mem(V11fv,A_27a)
                                 => ~ p(ap(V10P,ap(V9i,V11fv))) ) ) ) )
                    & ! [V6i] :
                        ( mem(V6i,arr(A_27a,A_27b))
                       => ! [V7P] :
                            ( ( p(ap(ap(c_2EquantHeuristics_2EGUESS__EXISTS__POINT(A_27a,A_27b),V6i),V7P))
                            <=> ! [V8fv] :
                                  ( p(ap(V7P,ap(V6i,V8fv)))
                                 <= mem(V8fv,A_27a) ) )
                           <= mem(V7P,arr(A_27b,bool)) ) ) ) ) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Ebool_2E_5C_2F,axiom,
    mem(c_2Ebool_2E_5C_2F,arr(bool,arr(bool,bool))) ).

fof(conj_thm_2Esat_2EOR__DUAL2,axiom,
    ! [V0A] :
      ( ! [V1B] :
          ( ( ( ~ ( p(V0A)
                  | p(V1B) )
             => $false )
          <=> ( ( ~ p(V1B)
               => $false )
             <= ( p(V0A)
               => $false ) ) )
         <= mem(V1B,bool) )
     <= mem(V0A,bool) ) ).

fof(conj_thm_2Esat_2Epth__ni1,axiom,
    ! [V0p] :
      ( ! [V1q] :
          ( mem(V1q,bool)
         => ( p(V0p)
           <= ~ ( p(V1q)
               <= p(V0p) ) ) )
     <= mem(V0p,bool) ) ).

fof(conj_thm_2Esat_2Epth__ni2,axiom,
    ! [V0p] :
      ( ! [V1q] :
          ( ( ~ p(V1q)
           <= ~ ( p(V0p)
               => p(V1q) ) )
         <= mem(V1q,bool) )
     <= mem(V0p,bool) ) ).

fof(conj_thm_2Esat_2EAND__INV__IMP,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ( ( $false
         <= ~ p(V0A) )
       <= p(V0A) ) ) ).

fof(conj_thm_2Ebool_2ETRUTH,axiom,
    $true ).

fof(conj_thm_2Esat_2EOR__DUAL3,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ! [V1B] :
          ( ( ( $false
             <= ~ ( ~ p(V0A)
                  | p(V1B) ) )
          <=> ( p(V0A)
             => ( ~ p(V1B)
               => $false ) ) )
         <= mem(V1B,bool) ) ) ).

fof(ax_neg_p,axiom,
    ! [Q] :
      ( ( p(ap(c_2Ebool_2E_7E,Q))
      <=> ~ p(Q) )
     <= mem(Q,bool) ) ).

fof(conj_thm_2Esat_2Edc__imp,axiom,
    ! [V0p] :
      ( mem(V0p,bool)
     => ! [V1q] :
          ( ! [V2r] :
              ( mem(V2r,bool)
             => ( ( ( p(V0p)
                    | p(V1q) )
                  & ( ~ p(V0p)
                    | p(V2r)
                    | ~ p(V1q) )
                  & ( ~ p(V2r)
                    | p(V0p) ) )
              <=> ( p(V0p)
                <=> ( p(V2r)
                   <= p(V1q) ) ) ) )
         <= mem(V1q,bool) ) ) ).

fof(ax_and_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( ( ( p(Q)
              & p(R) )
          <=> p(ap(ap(c_2Ebool_2E_2F_5C,Q),R)) )
         <= mem(R,bool) ) ) ).

fof(mem_c_2EquantHeuristics_2EGUESS__EXISTS,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2EquantHeuristics_2EGUESS__EXISTS(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27b,bool),bool))) ) ) ).

fof(mem_c_2Ebool_2E_2F_5C,axiom,
    mem(c_2Ebool_2E_2F_5C,arr(bool,arr(bool,bool))) ).

fof(ax_or_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( ( ( p(Q)
              | p(R) )
          <=> p(ap(ap(c_2Ebool_2E_5C_2F,Q),R)) )
         <= mem(R,bool) ) ) ).

fof(conj_thm_2Ebool_2EIMP__CONG,axiom,
    ! [V0x] :
      ( mem(V0x,bool)
     => ! [V1x_27] :
          ( ! [V2y] :
              ( ! [V3y_27] :
                  ( ( ( ( p(V0x)
                      <=> p(V1x_27) )
                      & ( p(V1x_27)
                       => ( p(V2y)
                        <=> p(V3y_27) ) ) )
                   => ( ( p(V0x)
                       => p(V2y) )
                    <=> ( p(V1x_27)
                       => p(V3y_27) ) ) )
                 <= mem(V3y_27,bool) )
             <= mem(V2y,bool) )
         <= mem(V1x_27,bool) ) ) ).

fof(mem_c_2EquantHeuristics_2EGUESS__FORALL__GAP,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2EquantHeuristics_2EGUESS__FORALL__GAP(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27b,bool),bool))) ) ) ).

fof(conj_thm_2Ebool_2EAND__IMP__INTRO,axiom,
    ! [V0t1] :
      ( mem(V0t1,bool)
     => ! [V1t2] :
          ( ! [V2t3] :
              ( ( ( p(V0t1)
                 => ( p(V2t3)
                   <= p(V1t2) ) )
              <=> ( ( p(V0t1)
                    & p(V1t2) )
                 => p(V2t3) ) )
             <= mem(V2t3,bool) )
         <= mem(V1t2,bool) ) ) ).

fof(conj_thm_2Esat_2ENOT__NOT,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( p(V0t)
      <=> ~ ~ p(V0t) ) ) ).

fof(ax_eq_p,axiom,
    ! [A] :
      ( ! [X] :
          ( ! [Y] :
              ( ( Y = X
              <=> p(ap(ap(c_2Emin_2E_3D(A),X),Y)) )
             <= mem(Y,A) )
         <= mem(X,A) )
     <= ne(A) ) ).

fof(conj_thm_2Esat_2EAND__INV2,axiom,
    ! [V0A] :
      ( mem(V0A,bool)
     => ( ( $false
         <= ( $false
           <= p(V0A) ) )
       <= ( ~ p(V0A)
         => $false ) ) ) ).

fof(conj_thm_2Ebool_2ENOT__CLAUSES,axiom,
    ( ( ~ $true
    <=> $false )
    & ( $true
    <=> ~ $false )
    & ! [V0t] :
        ( ( p(V0t)
        <=> ~ ~ p(V0t) )
       <= mem(V0t,bool) ) ) ).

fof(mem_c_2EquantHeuristics_2EGUESS__EXISTS__POINT,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( mem(c_2EquantHeuristics_2EGUESS__EXISTS__POINT(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27b,bool),bool)))
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(ax_true_p,axiom,
    p(c_2Ebool_2ET) ).

fof(mem_c_2EquantHeuristics_2EGUESS__FORALL__POINT,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( mem(c_2EquantHeuristics_2EGUESS__FORALL__POINT(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27b,bool),bool)))
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(mem_c_2EquantHeuristics_2EGUESS__FORALL,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( mem(c_2EquantHeuristics_2EGUESS__FORALL(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27b,bool),bool)))
         <= ne(A_27b) ) ) ).

fof(mem_c_2Ebool_2ET,axiom,
    mem(c_2Ebool_2ET,bool) ).

fof(conj_thm_2Ebool_2EEQ__SYM__EQ,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1y] :
              ( mem(V1y,A_27a)
             => ( V0x = V1y
              <=> V1y = V0x ) ) ) ) ).

fof(mem_c_2Ebool_2E_21,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ebool_2E_21(A_27a),arr(arr(A_27a,bool),bool)) ) ).

