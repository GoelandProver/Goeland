include('Axioms/ITP001/ITP001+2.ax').
include('Axioms/ITP001/ITP002+5.ax').
include('Axioms/ITP001/ITP003+5.ax').
include('Axioms/ITP001/ITP004+5.ax').
include('Axioms/ITP001/ITP007+5.ax').
include('Axioms/ITP001/ITP006+5.ax').
include('Axioms/ITP001/ITP005+5.ax').
include('Axioms/ITP001/ITP008+5.ax').
include('Axioms/ITP001/ITP009+5.ax').
include('Axioms/ITP001/ITP010+5.ax').
include('Axioms/ITP001/ITP012+5.ax').
include('Axioms/ITP001/ITP011+5.ax').
include('Axioms/ITP001/ITP013+5.ax').
include('Axioms/ITP001/ITP014+5.ax').
include('Axioms/ITP001/ITP015+5.ax').
include('Axioms/ITP001/ITP017+5.ax').
include('Axioms/ITP001/ITP016+5.ax').
include('Axioms/ITP001/ITP019+5.ax').
include('Axioms/ITP001/ITP018+5.ax').
include('Axioms/ITP001/ITP021+5.ax').
include('Axioms/ITP001/ITP022+5.ax').
include('Axioms/ITP001/ITP020+5.ax').
include('Axioms/ITP001/ITP024+5.ax').
include('Axioms/ITP001/ITP023+5.ax').
include('Axioms/ITP001/ITP025+5.ax').
include('Axioms/ITP001/ITP026+5.ax').
fof(mem_c_2Epred__set_2EPROD__IMAGE,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EPROD__IMAGE(A_27a),arr(arr(A_27a,ty_2Enum_2Enum),arr(arr(A_27a,bool),ty_2Enum_2Enum)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ENOT__EMPTY__INSERT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => c_2Epred__set_2EEMPTY(A_27a) != ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s) ) ) ) ).

fof(conj_thm_2Epred__set_2EINSERT__INTER,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ! [V2t] :
                  ( mem(V2t,arr(A_27a,bool))
                 => ap(ap(ap(c_2Ebool_2ECOND(arr(A_27a,bool)),ap(ap(c_2Ebool_2EIN(A_27a),V0x),V2t)),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),ap(ap(c_2Epred__set_2EINTER(A_27a),V1s),V2t))),ap(ap(c_2Epred__set_2EINTER(A_27a),V1s),V2t)) = ap(ap(c_2Epred__set_2EINTER(A_27a),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)),V2t) ) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EFORALL__IN__INSERT,axiom,
    ! [A_27a] :
      ( ! [V0P] :
          ( mem(V0P,arr(A_27a,bool))
         => ! [V1a] :
              ( mem(V1a,A_27a)
             => ! [V2s] :
                  ( ( ( ! [V4x] :
                          ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V4x),V2s))
                           => p(ap(V0P,V4x)) )
                         <= mem(V4x,A_27a) )
                      & p(ap(V0P,V1a)) )
                  <=> ! [V3x] :
                        ( mem(V3x,A_27a)
                       => ( p(ap(V0P,V3x))
                         <= p(ap(ap(c_2Ebool_2EIN(A_27a),V3x),ap(ap(c_2Epred__set_2EINSERT(A_27a),V1a),V2s))) ) ) )
                 <= mem(V2s,arr(A_27a,bool)) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EPSUBSET__TRANS,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( ! [V2u] :
                  ( ( ( p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V1t),V2u))
                      & p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V0s),V1t)) )
                   => p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V0s),V2u)) )
                 <= mem(V2u,arr(A_27a,bool)) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(ax_thm_2Epred__set_2EDELETE__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1x] :
              ( mem(V1x,A_27a)
             => ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),ap(ap(c_2Epred__set_2EINSERT(A_27a),V1x),c_2Epred__set_2EEMPTY(A_27a))) = ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V1x) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EEQ__UNIV,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ( V0s = c_2Epred__set_2EUNIV(A_27a)
          <=> ! [V1x] :
                ( mem(V1x,A_27a)
               => p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0s)) ) ) ) ) ).

fof(conj_thm_2Epred__set_2EREST__applied,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1s] :
              ( ( p(ap(ap(c_2Epred__set_2EREST(A_27a),V1s),V0x))
              <=> ( ap(c_2Epred__set_2ECHOICE(A_27a),V1s) != V0x
                  & p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1s)) ) )
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__REFL,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V0s))
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(lameq_f253,axiom,
    ! [A_27a,V0P] :
      ( mem(V0P,arr(A_27a,bool))
     => ! [V1x] : ap(ap(c_2Epair_2E_2C(A_27a,bool),V1x),ap(V0P,V1x)) = ap(f253(A_27a,V0P),V1x) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__THM,axiom,
    ! [A_27a] :
      ( ! [V0P] :
          ( ! [V1Q] :
              ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0P),V1Q))
               => ! [V2x] :
                    ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1Q))
                     <= p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0P)) )
                   <= mem(V2x,A_27a) ) )
             <= mem(V1Q,arr(A_27a,bool)) )
         <= mem(V0P,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ENOT__INSERT__EMPTY,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s) != c_2Epred__set_2EEMPTY(A_27a)
             <= mem(V1s,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDELETE__INTER,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( ! [V2x] :
                  ( ap(ap(c_2Epred__set_2EINTER(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V2x)),V1t) = ap(ap(c_2Epred__set_2EDELETE(A_27a),ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t)),V2x)
                 <= mem(V2x,A_27a) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(mem_c_2Epred__set_2ERINV,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( mem(c_2Epred__set_2ERINV(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27a,bool),arr(A_27b,A_27a))))
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ENOT__EQUAL__SETS,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( V0s != V1t
              <=> ? [V2x] :
                    ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t))
                    <=> ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s)) )
                    & mem(V2x,A_27a) ) ) ) ) ) ).

fof(mem_c_2Epred__set_2ESING,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2ESING(A_27a),arr(arr(A_27a,bool),bool))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EPSUBSET__UNIV,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ( p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V0s),c_2Epred__set_2EUNIV(A_27a)))
          <=> ? [V1x] :
                ( ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0s))
                & mem(V1x,A_27a) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDIFF__INTER,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2g] :
                  ( ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V2g)),V1t) = ap(ap(c_2Epred__set_2EINTER(A_27a),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)),V2g)
                 <= mem(V2g,arr(A_27a,bool)) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__UNION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ( ! [V2s] :
            ( mem(V2s,arr(A_27a,bool))
           => ! [V3t] :
                ( mem(V3t,arr(A_27a,bool))
               => p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V2s),ap(ap(c_2Epred__set_2EUNION(A_27a),V3t),V2s))) ) )
        & ! [V0s] :
            ( mem(V0s,arr(A_27a,bool))
           => ! [V1t] :
                ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t)))
               <= mem(V1t,arr(A_27a,bool)) ) ) ) ) ).

fof(conj_thm_2Epred__set_2EINSERT__UNION,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( ! [V2t] :
                  ( mem(V2t,arr(A_27a,bool))
                 => ap(ap(ap(c_2Ebool_2ECOND(arr(A_27a,bool)),ap(ap(c_2Ebool_2EIN(A_27a),V0x),V2t)),ap(ap(c_2Epred__set_2EUNION(A_27a),V1s),V2t)),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),ap(ap(c_2Epred__set_2EUNION(A_27a),V1s),V2t))) = ap(ap(c_2Epred__set_2EUNION(A_27a),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)),V2t) )
             <= mem(V1s,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EPREIMAGE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( mem(c_2Epred__set_2EPREIMAGE(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27b,bool),arr(A_27a,bool))))
         <= ne(A_27b) ) ) ).

fof(conj_thm_2Epred__set_2EUNIV__SUBSET,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ( V0s = c_2Epred__set_2EUNIV(A_27a)
          <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),c_2Epred__set_2EUNIV(A_27a)),V0s)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__ANTISYM,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ( V0s = V1t
               <= ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1t),V0s))
                  & p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t)) ) )
             <= mem(V1t,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2Eequiv__on,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2Eequiv__on(A_27a),arr(arr(A_27a,arr(A_27a,bool)),arr(arr(A_27a,bool),bool)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EIN__APP,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1P] :
              ( mem(V1P,arr(A_27a,bool))
             => ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1P))
              <=> p(ap(V1P,V0x)) ) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EFORALL__IN__UNION,axiom,
    ! [A_27a] :
      ( ! [V0P] :
          ( ! [V1s] :
              ( ! [V2t] :
                  ( mem(V2t,arr(A_27a,bool))
                 => ( ( ! [V5x] :
                          ( mem(V5x,A_27a)
                         => ( p(ap(V0P,V5x))
                           <= p(ap(ap(c_2Ebool_2EIN(A_27a),V5x),V2t)) ) )
                      & ! [V4x] :
                          ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V4x),V1s))
                           => p(ap(V0P,V4x)) )
                         <= mem(V4x,A_27a) ) )
                  <=> ! [V3x] :
                        ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V3x),ap(ap(c_2Epred__set_2EUNION(A_27a),V1s),V2t)))
                         => p(ap(V0P,V3x)) )
                       <= mem(V3x,A_27a) ) ) )
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0P,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ECHOICE__NOT__IN__REST,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ~ p(ap(ap(c_2Ebool_2EIN(A_27a),ap(c_2Epred__set_2ECHOICE(A_27a),V0s)),ap(c_2Epred__set_2EREST(A_27a),V0s)))
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(mem_c_2Epred__set_2EGSPEC,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Epred__set_2EGSPEC(A_27a,A_27b),arr(arr(A_27b,ty_2Epair_2Eprod(A_27a,bool)),arr(A_27a,bool))) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EEMPTY__UNION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t) = c_2Epred__set_2EEMPTY(A_27a)
              <=> ( V1t = c_2Epred__set_2EEMPTY(A_27a)
                  & c_2Epred__set_2EEMPTY(A_27a) = V0s ) ) ) ) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__INTER__ABSORPTION,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( ( ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t) = V0s
              <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t)) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__SUBSET__EQ,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( V0s = V1t
              <=> ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t))
                  & p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1t),V0s)) ) ) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EIN__EQ__UNIV__IMP,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ( c_2Epred__set_2EUNIV(A_27a) = V0s
           => ! [V1v] :
                ( p(ap(ap(c_2Ebool_2EIN(A_27a),V1v),V0s))
               <= mem(V1v,A_27a) ) ) ) ) ).

fof(conj_thm_2Epred__set_2EEMPTY__DIFF,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( c_2Epred__set_2EEMPTY(A_27a) = ap(ap(c_2Epred__set_2EDIFF(A_27a),c_2Epred__set_2EEMPTY(A_27a)),V0s)
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(lameq_f265,axiom,
    ! [A_27a,V1t] :
      ( mem(V1t,arr(A_27a,bool))
     => ! [V0s] :
          ( ! [V2x] : ap(ap(c_2Epair_2E_2C(A_27a,bool),V2x),ap(ap(c_2Ebool_2E_2F_5C,ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s)),ap(c_2Ebool_2E_7E,ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)))) = ap(f265(A_27a,V1t,V0s),V2x)
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EUNION__IDEMPOT,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V0s) = V0s
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(lameq_f252,axiom,
    ! [A_27a,V1P] :
      ( mem(V1P,arr(A_27a,bool))
     => ! [V2x] : ap(f252(A_27a,V1P),V2x) = ap(V1P,V2x) ) ).

fof(lameq_f262,axiom,
    ! [A_27a,V2P] :
      ( ! [V3x] : ap(f262(A_27a,V2P),V3x) = ap(ap(c_2Epair_2E_2C(ty_2Epair_2Eprod(A_27a,A_27a),bool),ap(ap(c_2Epair_2E_2C(A_27a,A_27a),V3x),V3x)),ap(V2P,V3x))
     <= mem(V2P,arr(A_27a,bool)) ) ).

fof(conj_thm_2Epred__set_2EDECOMPOSITION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1x] :
              ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0s))
              <=> ? [V2t] :
                    ( ap(ap(c_2Epred__set_2EINSERT(A_27a),V1x),V2t) = V0s
                    & ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V2t))
                    & mem(V2t,arr(A_27a,bool)) ) )
             <= mem(V1x,A_27a) ) ) ) ).

fof(mem_c_2Epred__set_2EMIN__SET,axiom,
    mem(c_2Epred__set_2EMIN__SET,arr(arr(ty_2Enum_2Enum,bool),ty_2Enum_2Enum)) ).

fof(conj_thm_2Epred__set_2EDIFF__INTER2,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),ap(ap(c_2Epred__set_2EINTER(A_27a),V1t),V0s)) = ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__TRANS,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( ! [V2u] :
                  ( ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t))
                      & p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1t),V2u)) )
                   => p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V2u)) )
                 <= mem(V2u,arr(A_27a,bool)) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(mem_c_2Epred__set_2ESUM__SET,axiom,
    mem(c_2Epred__set_2ESUM__SET,arr(arr(ty_2Enum_2Enum,bool),ty_2Enum_2Enum)) ).

fof(conj_thm_2Epred__set_2EDIFF__DIFF__SUBSET,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1t),V0s))
               => V1t = ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(ax_thm_2Epred__set_2EEMPTY__DEF,axiom,
    ! [A_27a] :
      ( k(A_27a,c_2Ebool_2EF) = c_2Epred__set_2EEMPTY(A_27a)
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EIN__REST,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),ap(c_2Epred__set_2EREST(A_27a),V1s)))
              <=> ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1s))
                  & V0x != ap(c_2Epred__set_2ECHOICE(A_27a),V1s) ) ) )
         <= mem(V0x,A_27a) ) ) ).

fof(mem_c_2Epred__set_2EUNION,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EUNION(A_27a),arr(arr(A_27a,bool),arr(arr(A_27a,bool),arr(A_27a,bool))))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__INSERT_27,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ! [V2t] :
                  ( ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V2t),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)))
                  <=> ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V2t),V1s))
                      & ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V2t)) ) )
                 <= mem(V2t,arr(A_27a,bool)) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDELETE__INSERT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1y] :
              ( mem(V1y,A_27a)
             => ! [V2s] :
                  ( mem(V2s,arr(A_27a,bool))
                 => ap(ap(c_2Epred__set_2EDELETE(A_27a),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V2s)),V1y) = ap(ap(ap(c_2Ebool_2ECOND(arr(A_27a,bool)),ap(ap(c_2Emin_2E_3D(A_27a),V0x),V1y)),ap(ap(c_2Epred__set_2EDELETE(A_27a),V2s),V1y)),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),ap(ap(c_2Epred__set_2EDELETE(A_27a),V2s),V1y))) ) ) ) ) ).

fof(conj_thm_2Epred__set_2EIN__ABS,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1P] :
              ( mem(V1P,arr(A_27a,bool))
             => ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),f252(A_27a,V1P)))
              <=> p(ap(V1P,V0x)) ) )
         <= mem(V0x,A_27a) ) ) ).

fof(lameq_f263,axiom,
    ! [A_27a,V1t] :
      ( ! [V0s] :
          ( ! [V2x] : ap(ap(c_2Epair_2E_2C(A_27a,bool),V2x),ap(ap(c_2Ebool_2E_5C_2F,ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s)),ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t))) = ap(f263(A_27a,V1t,V0s),V2x)
         <= mem(V0s,arr(A_27a,bool)) )
     <= mem(V1t,arr(A_27a,bool)) ) ).

fof(mem_c_2Epred__set_2EUNIV,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2EUNIV(A_27a),arr(A_27a,bool)) ) ).

fof(mem_c_2Epred__set_2EINTER,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EINTER(A_27a),arr(arr(A_27a,bool),arr(arr(A_27a,bool),arr(A_27a,bool))))
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2Eis__measure__maximal,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2Eis__measure__maximal(A_27a),arr(arr(A_27a,ty_2Enum_2Enum),arr(arr(A_27a,bool),arr(A_27a,bool)))) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__EMPTY__REFL,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ( c_2Epred__set_2EEMPTY(A_27a) = V0s
          <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V0s)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDIFF__UNION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1y] :
              ( mem(V1y,arr(A_27a,bool))
             => ! [V2z] :
                  ( mem(V2z,arr(A_27a,bool))
                 => ap(ap(c_2Epred__set_2EDIFF(A_27a),V0x),ap(ap(c_2Epred__set_2EUNION(A_27a),V1y),V2z)) = ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0x),V1y)),V2z) ) )
         <= mem(V0x,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EIN__DELETE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1x] :
              ( mem(V1x,A_27a)
             => ! [V2y] :
                  ( mem(V2y,A_27a)
                 => ( ( V2y != V1x
                      & p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0s)) )
                  <=> p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V2y))) ) ) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(lameq_f266,axiom,
    ! [A_27a,V1s] :
      ( mem(V1s,arr(A_27a,bool))
     => ! [V0x] :
          ( ! [V2y] : ap(f266(A_27a,V1s,V0x),V2y) = ap(ap(c_2Epair_2E_2C(A_27a,bool),V2y),ap(ap(c_2Ebool_2E_5C_2F,ap(ap(c_2Emin_2E_3D(A_27a),V2y),V0x)),ap(ap(c_2Ebool_2EIN(A_27a),V2y),V1s)))
         <= mem(V0x,A_27a) ) ) ).

fof(lameq_f259,axiom,
    ! [A_27b,A_27a,V0f] :
      ( ! [V3P] :
          ( ! [V4x] : ap(f259(A_27b,A_27a,V0f,V3P),V4x) = ap(ap(c_2Epair_2E_2C(A_27b,bool),ap(V0f,V4x)),ap(V3P,V4x))
         <= mem(V3P,arr(A_27a,bool)) )
     <= mem(V0f,arr(A_27a,A_27b)) ) ).

fof(ax_thm_2Epred__set_2EREST__DEF,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),ap(c_2Epred__set_2ECHOICE(A_27a),V0s)) = ap(c_2Epred__set_2EREST(A_27a),V0s) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2Eschroeder__close,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2Eschroeder__close(A_27a),arr(arr(A_27a,A_27a),arr(arr(A_27a,bool),arr(A_27a,bool)))) ) ).

fof(mem_c_2Epred__set_2EBIGUNION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2EBIGUNION(A_27a),arr(arr(arr(A_27a,bool),bool),arr(A_27a,bool))) ) ).

fof(mem_c_2Epred__set_2ELINV__OPT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Epred__set_2ELINV__OPT(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27a,bool),arr(A_27b,ty_2Eoption_2Eoption(A_27a))))) ) ) ).

fof(conj_thm_2Epred__set_2EINSERT__DELETE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ( V1s = ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),ap(ap(c_2Epred__set_2EDELETE(A_27a),V1s),V0x))
               <= p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1s)) ) )
         <= mem(V0x,A_27a) ) ) ).

fof(mem_c_2Epred__set_2EREL__RESTRICT,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EREL__RESTRICT(A_27a),arr(arr(A_27a,arr(A_27a,bool)),arr(arr(A_27a,bool),arr(A_27a,arr(A_27a,bool)))))
     <= ne(A_27a) ) ).

fof(lameq_f264,axiom,
    ! [A_27a,V1t] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V2x] : ap(ap(c_2Epair_2E_2C(A_27a,bool),V2x),ap(ap(c_2Ebool_2E_2F_5C,ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s)),ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t))) = ap(f264(A_27a,V1t,V0s),V2x) )
     <= mem(V1t,arr(A_27a,bool)) ) ).

fof(mem_c_2Epred__set_2ECHOICE,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2ECHOICE(A_27a),arr(arr(A_27a,bool),A_27a))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDELETE__COMM,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1y] :
              ( mem(V1y,A_27a)
             => ! [V2s] :
                  ( ap(ap(c_2Epred__set_2EDELETE(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V2s),V1y)),V0x) = ap(ap(c_2Epred__set_2EDELETE(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V2s),V0x)),V1y)
                 <= mem(V2s,arr(A_27a,bool)) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__UNIV,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),c_2Epred__set_2EUNIV(A_27a))) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2ESURJ,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( mem(c_2Epred__set_2ESURJ(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27a,bool),arr(arr(A_27b,bool),bool))))
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EGSPEC__ETA,axiom,
    ! [A_27a] :
      ( ! [V0P] :
          ( mem(V0P,arr(A_27a,bool))
         => ap(c_2Epred__set_2EGSPEC(A_27a,A_27a),f253(A_27a,V0P)) = V0P )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EMEMBER__NOT__EMPTY,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ( ? [V1x] :
                ( p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0s))
                & mem(V1x,A_27a) )
          <=> c_2Epred__set_2EEMPTY(A_27a) != V0s )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2ESET__MINIMUM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1M] :
              ( ( ? [V3x] :
                    ( mem(V3x,A_27a)
                    & ! [V4y] :
                        ( mem(V4y,A_27a)
                       => ( p(ap(ap(c_2Earithmetic_2E_3C_3D,ap(V1M,V3x)),ap(V1M,V4y)))
                         <= p(ap(ap(c_2Ebool_2EIN(A_27a),V4y),V0s)) ) )
                    & p(ap(ap(c_2Ebool_2EIN(A_27a),V3x),V0s)) )
              <=> ? [V2x] :
                    ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                    & mem(V2x,A_27a) ) )
             <= mem(V1M,arr(A_27a,ty_2Enum_2Enum)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EIN__DISJOINT,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V1t))
              <=> ~ ? [V2x] :
                      ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t))
                      & p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                      & mem(V2x,A_27a) ) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__DELETE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1s] :
              ( ! [V2t] :
                  ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1s),ap(ap(c_2Epred__set_2EDELETE(A_27a),V2t),V0x)))
                  <=> ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1s),V2t))
                      & ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1s)) ) )
                 <= mem(V2t,arr(A_27a,bool)) )
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0x,A_27a) ) ) ).

fof(mem_c_2Epred__set_2EFINITE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2EFINITE(A_27a),arr(arr(A_27a,bool),bool)) ) ).

fof(lameq_f261,axiom,
    ! [A_27a,A_27b,V2x] :
      ( mem(V2x,A_27a)
     => ! [V3P] :
          ( mem(V3P,arr(A_27b,bool))
         => ! [V4y] : ap(f261(A_27a,A_27b,V2x,V3P),V4y) = ap(ap(c_2Epair_2E_2C(ty_2Epair_2Eprod(A_27a,A_27b),bool),ap(ap(c_2Epair_2E_2C(A_27a,A_27b),V2x),V4y)),ap(V3P,V4y)) ) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__INTER,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2u] :
                  ( ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V2u))
                      & p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t)) )
                  <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),ap(ap(c_2Epred__set_2EINTER(A_27a),V1t),V2u))) )
                 <= mem(V2u,arr(A_27a,bool)) ) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EPSUBSET__INSERT__SUBSET,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V0s),V1t))
              <=> ? [V2x] :
                    ( mem(V2x,A_27a)
                    & p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(ap(c_2Epred__set_2EINSERT(A_27a),V2x),V0s)),V1t))
                    & ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s)) ) ) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDELETE__NON__ELEMENT__RWT,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1x] :
              ( ( ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0s))
               => ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V1x) = V0s )
             <= mem(V1x,A_27a) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(lameq_f256,axiom,
    ! [A_27a,V1P] :
      ( ! [V2x] : ap(f256(A_27a,V1P),V2x) = ap(ap(c_2Epair_2E_2C(A_27a,bool),V2x),ap(V1P,V2x))
     <= mem(V1P,arr(A_27a,bool)) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__INSERT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ! [V2t] :
                  ( ( ( ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V2t))
                      & p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V1s),V2t)) )
                  <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)),V2t)) )
                 <= mem(V2t,arr(A_27a,bool)) ) )
         <= mem(V0x,A_27a) ) ) ).

fof(conj_thm_2Epred__set_2EPAIR__IN__GSPEC__same,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0a] :
          ( ! [V1b] :
              ( mem(V1b,A_27a)
             => ! [V2P] :
                  ( ( p(ap(ap(c_2Ebool_2EIN(ty_2Epair_2Eprod(A_27a,A_27a)),ap(ap(c_2Epair_2E_2C(A_27a,A_27a),V0a),V1b)),ap(c_2Epred__set_2EGSPEC(ty_2Epair_2Eprod(A_27a,A_27a),A_27a),f262(A_27a,V2P))))
                  <=> ( V1b = V0a
                      & p(ap(V2P,V0a)) ) )
                 <= mem(V2P,arr(A_27a,bool)) ) )
         <= mem(V0a,A_27a) ) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__DIFF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)),V1t))
                & p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V1t),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t))) ) ) ) ) ).

fof(conj_thm_2Epred__set_2EINSERT__DIFF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ! [V2x] :
                  ( ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EINSERT(A_27a),V2x),V0s)),V1t) = ap(ap(ap(c_2Ebool_2ECOND(arr(A_27a,bool)),ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)),ap(ap(c_2Epred__set_2EINSERT(A_27a),V2x),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)))
                 <= mem(V2x,A_27a) )
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2EUNION__applied,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2x] :
                  ( mem(V2x,A_27a)
                 => ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                      | p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)) )
                  <=> p(ap(ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t),V2x)) ) ) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDELETE__DELETE,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( ap(ap(c_2Epred__set_2EDELETE(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V1s),V0x)),V0x) = ap(ap(c_2Epred__set_2EDELETE(A_27a),V1s),V0x)
             <= mem(V1s,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EINTER__applied,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( ! [V2x] :
                  ( ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                      & p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)) )
                  <=> p(ap(ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t),V2x)) )
                 <= mem(V2x,A_27a) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(mem_c_2Epred__set_2EDFUNSET,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( mem(c_2Epred__set_2EDFUNSET(A_27a,A_27b),arr(arr(A_27a,bool),arr(arr(A_27a,arr(A_27b,bool)),arr(arr(A_27a,A_27b),bool))))
         <= ne(A_27b) ) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__UNION__ABSORPTION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ( V1t = ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t)
              <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t)) )
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(mem_c_2Epred__set_2ESUM__IMAGE,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2ESUM__IMAGE(A_27a),arr(arr(A_27a,ty_2Enum_2Enum),arr(arr(A_27a,bool),ty_2Enum_2Enum)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EINSERT__UNIV,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),c_2Epred__set_2EUNIV(A_27a)) = c_2Epred__set_2EUNIV(A_27a)
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__INSERT,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ( ! [V2t] :
                    ( mem(V2t,arr(A_27a,bool))
                   => ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1s),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V2t)))
                    <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1s),V2t)) ) )
               <= ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1s)) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EUNIV__BOOL,axiom,
    c_2Epred__set_2EUNIV(bool) = ap(ap(c_2Epred__set_2EINSERT(bool),c_2Ebool_2ET),ap(ap(c_2Epred__set_2EINSERT(bool),c_2Ebool_2EF),c_2Epred__set_2EEMPTY(bool))) ).

fof(conj_thm_2Epred__set_2EUNION__EMPTY,axiom,
    ! [A_27a] :
      ( ( ! [V1s] :
            ( mem(V1s,arr(A_27a,bool))
           => V1s = ap(ap(c_2Epred__set_2EUNION(A_27a),V1s),c_2Epred__set_2EEMPTY(A_27a)) )
        & ! [V0s] :
            ( mem(V0s,arr(A_27a,bool))
           => ap(ap(c_2Epred__set_2EUNION(A_27a),c_2Epred__set_2EEMPTY(A_27a)),V0s) = V0s ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EUNION__COMM,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t) = ap(ap(c_2Epred__set_2EUNION(A_27a),V1t),V0s)
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EDIFF,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EDIFF(A_27a),arr(arr(A_27a,bool),arr(arr(A_27a,bool),arr(A_27a,bool))))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EPAIR__IN__GSPEC__2,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ! [V0a] :
              ( ! [V1b] :
                  ( ! [V2x] :
                      ( ! [V3P] :
                          ( mem(V3P,arr(A_27b,bool))
                         => ( p(ap(ap(c_2Ebool_2EIN(ty_2Epair_2Eprod(A_27a,A_27b)),ap(ap(c_2Epair_2E_2C(A_27a,A_27b),V0a),V1b)),ap(c_2Epred__set_2EGSPEC(ty_2Epair_2Eprod(A_27a,A_27b),A_27b),f261(A_27a,A_27b,V2x,V3P))))
                          <=> ( p(ap(V3P,V1b))
                              & V0a = V2x ) ) )
                     <= mem(V2x,A_27a) )
                 <= mem(V1b,A_27b) )
             <= mem(V0a,A_27a) )
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EEXTENSION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( V1t = V0s
              <=> ! [V2x] :
                    ( mem(V2x,A_27a)
                   => ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                    <=> p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)) ) ) ) ) ) ) ).

fof(conj_thm_2Epred__set_2EDIFF__applied,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2x] :
                  ( ( p(ap(ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t),V2x))
                  <=> ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                      & ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)) ) )
                 <= mem(V2x,A_27a) ) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(ax_thm_2Epred__set_2EGSPECIFICATION,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ! [V0f] :
              ( ! [V1v] :
                  ( mem(V1v,A_27a)
                 => ( p(ap(ap(c_2Ebool_2EIN(A_27a),V1v),ap(c_2Epred__set_2EGSPEC(A_27a,A_27b),V0f)))
                  <=> ? [V2x] :
                        ( ap(V0f,V2x) = ap(ap(c_2Epair_2E_2C(A_27a,bool),V1v),c_2Ebool_2ET)
                        & mem(V2x,A_27b) ) ) )
             <= mem(V0f,arr(A_27b,ty_2Epair_2Eprod(A_27a,bool))) )
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__DELETE__SYM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2x] :
                  ( mem(V2x,A_27a)
                 => ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V1t),V2x)),V0s))
                  <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V2x)),V1t)) ) ) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__INTER2,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t))
               => ap(ap(c_2Epred__set_2EINTER(A_27a),V1t),V0s) = V0s )
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2EDIFF__EQ__EMPTY,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( c_2Epred__set_2EEMPTY(A_27a) = ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V0s)
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EINTER__IDEMPOT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( V0s = ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V0s)
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(ax_thm_2Epred__set_2EPSUBSET__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V0s),V1t))
              <=> ( V0s != V1t
                  & p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t)) ) ) ) ) ) ).

fof(conj_thm_2Epred__set_2ENOT__UNIV__PSUBSET,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ~ p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),c_2Epred__set_2EUNIV(A_27a)),V0s))
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__ALT,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ( ! [V2x] :
                    ( ( ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t))
                     <= p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s)) )
                   <= mem(V2x,A_27a) )
              <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V1t)) )
             <= mem(V1t,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EUNION__UNIV,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ( ! [V0s] :
            ( c_2Epred__set_2EUNIV(A_27a) = ap(ap(c_2Epred__set_2EUNION(A_27a),c_2Epred__set_2EUNIV(A_27a)),V0s)
           <= mem(V0s,arr(A_27a,bool)) )
        & ! [V1s] :
            ( c_2Epred__set_2EUNIV(A_27a) = ap(ap(c_2Epred__set_2EUNION(A_27a),V1s),c_2Epred__set_2EUNIV(A_27a))
           <= mem(V1s,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2EELT__IN__DELETE,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1s] :
              ( ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),ap(ap(c_2Epred__set_2EDELETE(A_27a),V1s),V0x)))
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EPSUBSET__MEMBER,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ( p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V0s),V1t))
              <=> ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t))
                  & ? [V2y] :
                      ( ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V2y),V0s))
                      & p(ap(ap(c_2Ebool_2EIN(A_27a),V2y),V1t))
                      & mem(V2y,A_27a) ) ) )
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(mem_c_2Epred__set_2Ecount,axiom,
    mem(c_2Epred__set_2Ecount,arr(ty_2Enum_2Enum,arr(ty_2Enum_2Enum,bool))) ).

fof(mem_c_2Epred__set_2EEMPTY,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EEMPTY(A_27a),arr(A_27a,bool))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EIN__DIFF,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2x] :
                  ( ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                      & ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)) )
                  <=> p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t))) )
                 <= mem(V2x,A_27a) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EIN__DELETE__EQ,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1x] :
              ( ! [V2x_27] :
                  ( ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0s))
                    <=> p(ap(ap(c_2Ebool_2EIN(A_27a),V2x_27),V0s)) )
                  <=> ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x_27),ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V1x)))
                    <=> p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V2x_27))) ) )
                 <= mem(V2x_27,A_27a) )
             <= mem(V1x,A_27a) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EIN__UNION,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( ! [V2x] :
                  ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t)))
                  <=> ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                      | p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)) ) )
                 <= mem(V2x,A_27a) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2Eenumerate,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2Eenumerate(A_27a),arr(arr(A_27a,bool),arr(ty_2Enum_2Enum,A_27a)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__ADD,axiom,
    ! [A_27a] :
      ( ! [V0f] :
          ( ! [V1n] :
              ( mem(V1n,ty_2Enum_2Enum)
             => ! [V2d] :
                  ( ( ! [V3n] :
                        ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(V0f,V3n)),ap(V0f,ap(c_2Enum_2ESUC,V3n))))
                       <= mem(V3n,ty_2Enum_2Enum) )
                   => p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(V0f,V1n)),ap(V0f,ap(ap(c_2Earithmetic_2E_2B,V1n),V2d)))) )
                 <= mem(V2d,ty_2Enum_2Enum) ) )
         <= mem(V0f,arr(ty_2Enum_2Enum,arr(A_27a,bool))) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EDISJOINT,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EDISJOINT(A_27a),arr(arr(A_27a,bool),arr(arr(A_27a,bool),bool)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ENUM__SET__WOP,axiom,
    ! [V0s] :
      ( mem(V0s,arr(ty_2Enum_2Enum,bool))
     => ( ? [V1n] :
            ( mem(V1n,ty_2Enum_2Enum)
            & p(ap(ap(c_2Ebool_2EIN(ty_2Enum_2Enum),V1n),V0s)) )
      <=> ? [V2n] :
            ( ! [V3m] :
                ( ( p(ap(ap(c_2Earithmetic_2E_3C_3D,V2n),V3m))
                 <= p(ap(ap(c_2Ebool_2EIN(ty_2Enum_2Enum),V3m),V0s)) )
               <= mem(V3m,ty_2Enum_2Enum) )
            & p(ap(ap(c_2Ebool_2EIN(ty_2Enum_2Enum),V2n),V0s))
            & mem(V2n,ty_2Enum_2Enum) ) ) ) ).

fof(conj_thm_2Epred__set_2ENOT__IN__EMPTY,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),c_2Epred__set_2EEMPTY(A_27a))) ) ) ).

fof(conj_thm_2Epred__set_2EINSERT__UNION__EQ,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ! [V2t] :
                  ( mem(V2t,arr(A_27a,bool))
                 => ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),ap(ap(c_2Epred__set_2EUNION(A_27a),V1s),V2t)) = ap(ap(c_2Epred__set_2EUNION(A_27a),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)),V2t) ) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(ax_thm_2Epred__set_2EUNIV__DEF,axiom,
    ! [A_27a] :
      ( k(A_27a,c_2Ebool_2ET) = c_2Epred__set_2EUNIV(A_27a)
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__EMPTY,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ( V0s = c_2Epred__set_2EEMPTY(A_27a)
          <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),c_2Epred__set_2EEMPTY(A_27a))) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(ax_thm_2Epred__set_2ECHOICE__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),ap(c_2Epred__set_2ECHOICE(A_27a),V0s)),V0s))
           <= V0s != c_2Epred__set_2EEMPTY(A_27a) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EK__SUBSET,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,bool)
         => ! [V1y] :
              ( ( ( ~ p(V0x)
                  | p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),c_2Epred__set_2EUNIV(A_27a)),V1y)) )
              <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(c_2Ecombin_2EK(bool,A_27a),V0x)),V1y)) )
             <= mem(V1y,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EUNION__SUBSET,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2u] :
                  ( ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V2u))
                      & p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1t),V2u)) )
                  <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t)),V2u)) )
                 <= mem(V2u,arr(A_27a,bool)) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDELETE__NON__ELEMENT,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1s] :
              ( ( V1s = ap(ap(c_2Epred__set_2EDELETE(A_27a),V1s),V0x)
              <=> ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1s)) )
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ECHOICE__INSERT__REST,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ( V0s = ap(ap(c_2Epred__set_2EINSERT(A_27a),ap(c_2Epred__set_2ECHOICE(A_27a),V0s)),ap(c_2Epred__set_2EREST(A_27a),V0s))
           <= c_2Epred__set_2EEMPTY(A_27a) != V0s ) ) ) ).

fof(conj_thm_2Epred__set_2EINTER__SUBSET,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ( ! [V2s] :
            ( ! [V3t] :
                ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(ap(c_2Epred__set_2EINTER(A_27a),V3t),V2s)),V2s))
               <= mem(V3t,arr(A_27a,bool)) )
           <= mem(V2s,arr(A_27a,bool)) )
        & ! [V0s] :
            ( ! [V1t] :
                ( mem(V1t,arr(A_27a,bool))
               => p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t)),V0s)) )
           <= mem(V0s,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2EGSPEC__PAIR__ETA,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ! [V0P] :
              ( mem(V0P,arr(A_27a,arr(A_27b,bool)))
             => ap(c_2Epred__set_2EGSPEC(ty_2Epair_2Eprod(A_27a,A_27b),ty_2Epair_2Eprod(A_27a,A_27b)),ap(c_2Epair_2EUNCURRY(A_27a,A_27b,ty_2Epair_2Eprod(ty_2Epair_2Eprod(A_27a,A_27b),bool)),f255(A_27b,A_27a,V0P))) = ap(c_2Epair_2EUNCURRY(A_27a,A_27b,bool),V0P) )
         <= ne(A_27b) ) ) ).

fof(mem_c_2Epred__set_2EITSET,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Epred__set_2EITSET(A_27a,A_27b),arr(arr(A_27a,arr(A_27b,A_27b)),arr(arr(A_27a,bool),arr(A_27b,A_27b)))) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__UNION__BOTH,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ! [V2u] :
                  ( ( ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t)),V2u))
                    <=> ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V1t),V2u))
                        & p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V2u)) ) )
                    & ( ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V2u))
                        & p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V1t),V2u)) )
                    <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V2u),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t))) ) )
                 <= mem(V2u,arr(A_27a,bool)) )
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2EDELETE__SUBSET,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1s] :
              ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V1s),V0x)),V1s))
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0x,A_27a) ) ) ).

fof(conj_thm_2Epred__set_2EIN__UNIV,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,A_27a)
         => p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),c_2Epred__set_2EUNIV(A_27a))) )
     <= ne(A_27a) ) ).

fof(ax_thm_2Epred__set_2EUNION__DEF,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ap(c_2Epred__set_2EGSPEC(A_27a,A_27a),f263(A_27a,V1t,V0s)) = ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t) ) )
     <= ne(A_27a) ) ).

fof(ax_thm_2Epred__set_2EINTER__DEF,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t) = ap(c_2Epred__set_2EGSPEC(A_27a,A_27a),f264(A_27a,V1t,V0s))
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(lameq_f254,axiom,
    ! [A_27a,A_27b,V0P] :
      ( mem(V0P,arr(A_27a,arr(A_27b,bool)))
     => ! [V1x] :
          ( mem(V1x,A_27a)
         => ! [V2y] : ap(f254(A_27a,A_27b,V0P,V1x),V2y) = ap(ap(c_2Epair_2E_2C(ty_2Epair_2Eprod(A_27a,A_27b),bool),ap(ap(c_2Epair_2E_2C(A_27a,A_27b),V1x),V2y)),ap(ap(V0P,V1x),V2y)) ) ) ).

fof(mem_c_2Epred__set_2ECOMPL,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2ECOMPL(A_27a),arr(arr(A_27a,bool),arr(A_27a,bool))) ) ).

fof(mem_c_2Epred__set_2EPOW,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2EPOW(A_27a),arr(arr(A_27a,bool),arr(arr(A_27a,bool),bool))) ) ).

fof(conj_thm_2Epred__set_2EINTER__ASSOC,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2u] :
                  ( mem(V2u,arr(A_27a,bool))
                 => ap(ap(c_2Epred__set_2EINTER(A_27a),ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t)),V2u) = ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),ap(ap(c_2Epred__set_2EINTER(A_27a),V1t),V2u)) ) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EMAX__SET,axiom,
    mem(c_2Epred__set_2EMAX__SET,arr(arr(ty_2Enum_2Enum,bool),ty_2Enum_2Enum)) ).

fof(mem_c_2Epred__set_2EINSERT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2EINSERT(A_27a),arr(A_27a,arr(arr(A_27a,bool),arr(A_27a,bool)))) ) ).

fof(conj_thm_2Epred__set_2EEMPTY__NOT__UNIV,axiom,
    ! [A_27a] :
      ( c_2Epred__set_2EEMPTY(A_27a) != c_2Epred__set_2EUNIV(A_27a)
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__OF__INSERT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1s),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s))) ) ) ) ).

fof(mem_c_2Epred__set_2EFUNSET,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( mem(c_2Epred__set_2EFUNSET(A_27a,A_27b),arr(arr(A_27a,bool),arr(arr(A_27b,bool),arr(arr(A_27a,A_27b),bool))))
         <= ne(A_27b) ) ) ).

fof(mem_c_2Epred__set_2ESUBSET,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2ESUBSET(A_27a),arr(arr(A_27a,bool),arr(arr(A_27a,bool),bool)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDIFF__UNIV,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),c_2Epred__set_2EUNIV(A_27a)) = c_2Epred__set_2EEMPTY(A_27a) ) ) ).

fof(conj_thm_2Epred__set_2ESET__CASES,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ( c_2Epred__set_2EEMPTY(A_27a) = V0s
            | ? [V1x] :
                ( ? [V2t] :
                    ( mem(V2t,arr(A_27a,bool))
                    & ap(ap(c_2Epred__set_2EINSERT(A_27a),V1x),V2t) = V0s
                    & ~ p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V2t)) )
                & mem(V1x,A_27a) ) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EEMPTY__SUBSET,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),c_2Epred__set_2EEMPTY(A_27a)),V0s)) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2ELINV,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Epred__set_2ELINV(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27a,bool),arr(A_27b,A_27a)))) ) ) ).

fof(conj_thm_2Epred__set_2EABSORPTION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1s))
              <=> ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s) = V1s )
             <= mem(V1s,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2ESPECIFICATION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0P] :
          ( mem(V0P,arr(A_27a,bool))
         => ! [V1x] :
              ( mem(V1x,A_27a)
             => ( p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0P))
              <=> p(ap(V0P,V1x)) ) ) ) ) ).

fof(lameq_f255,axiom,
    ! [A_27b,A_27a,V0P] :
      ( ! [V1x] : f254(A_27a,A_27b,V0P,V1x) = ap(f255(A_27b,A_27a,V0P),V1x)
     <= mem(V0P,arr(A_27a,arr(A_27b,bool))) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__applied,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t))
              <=> ! [V2x] :
                    ( ( p(ap(V0s,V2x))
                     => p(ap(V1t,V2x)) )
                   <= mem(V2x,A_27a) ) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(lameq_f258,axiom,
    ! [A_27b,A_27a,V2P] :
      ( ! [V3x] : f257(A_27a,A_27b,V2P,V3x) = ap(f258(A_27b,A_27a,V2P),V3x)
     <= mem(V2P,arr(A_27a,arr(A_27b,bool))) ) ).

fof(mem_c_2Epred__set_2EPROD__SET,axiom,
    mem(c_2Epred__set_2EPROD__SET,arr(arr(ty_2Enum_2Enum,bool),ty_2Enum_2Enum)) ).

fof(conj_thm_2Epred__set_2EINSERT__INSERT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1s] :
              ( ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)) = ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0x,A_27a) ) ) ).

fof(conj_thm_2Epred__set_2EPAIR__IN__GSPEC__1,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ! [V0a] :
              ( mem(V0a,A_27a)
             => ! [V1b] :
                  ( mem(V1b,A_27b)
                 => ! [V2x] :
                      ( ! [V3P] :
                          ( mem(V3P,arr(A_27a,bool))
                         => ( ( V1b = V2x
                              & p(ap(V3P,V0a)) )
                          <=> p(ap(ap(c_2Ebool_2EIN(ty_2Epair_2Eprod(A_27a,A_27b)),ap(ap(c_2Epair_2E_2C(A_27a,A_27b),V0a),V1b)),ap(c_2Epred__set_2EGSPEC(ty_2Epair_2Eprod(A_27a,A_27b),A_27a),f260(A_27b,A_27a,V2x,V3P)))) ) )
                     <= mem(V2x,A_27b) ) ) )
         <= ne(A_27b) ) ) ).

fof(conj_thm_2Epred__set_2EIN__GSPEC__IFF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0y] :
          ( ! [V1P] :
              ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0y),ap(c_2Epred__set_2EGSPEC(A_27a,A_27a),f256(A_27a,V1P))))
              <=> p(ap(V1P,V0y)) )
             <= mem(V1P,arr(A_27a,bool)) )
         <= mem(V0y,A_27a) ) ) ).

fof(conj_thm_2Epred__set_2EEMPTY__applied,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ( $false
          <=> p(ap(c_2Epred__set_2EEMPTY(A_27a),V0x)) )
         <= mem(V0x,A_27a) ) ) ).

fof(ax_thm_2Epred__set_2EINSERT__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ap(c_2Epred__set_2EGSPEC(A_27a,A_27a),f266(A_27a,V1s,V0x)) = ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s) )
         <= mem(V0x,A_27a) ) ) ).

fof(mem_c_2Epred__set_2ECARD,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2ECARD(A_27a),arr(arr(A_27a,bool),ty_2Enum_2Enum))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EUNION__DIFF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t))
               => ( V1t = ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),ap(ap(c_2Epred__set_2EDIFF(A_27a),V1t),V0s))
                  & V1t = ap(ap(c_2Epred__set_2EUNION(A_27a),ap(ap(c_2Epred__set_2EDIFF(A_27a),V1t),V0s)),V0s) ) ) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EDIFF__SUBSET,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)),V0s))
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(mem_c_2Epred__set_2Epairwise,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2Epairwise(A_27a),arr(arr(A_27a,arr(A_27a,bool)),arr(arr(A_27a,bool),bool)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EEXISTS__IN__INSERT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0P] :
          ( ! [V1a] :
              ( mem(V1a,A_27a)
             => ! [V2s] :
                  ( ( ( ? [V4x] :
                          ( p(ap(V0P,V4x))
                          & p(ap(ap(c_2Ebool_2EIN(A_27a),V4x),V2s))
                          & mem(V4x,A_27a) )
                      | p(ap(V0P,V1a)) )
                  <=> ? [V3x] :
                        ( p(ap(ap(c_2Ebool_2EIN(A_27a),V3x),ap(ap(c_2Epred__set_2EINSERT(A_27a),V1a),V2s)))
                        & p(ap(V0P,V3x))
                        & mem(V3x,A_27a) ) )
                 <= mem(V2s,arr(A_27a,bool)) ) )
         <= mem(V0P,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EUNION__ASSOC,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ! [V2u] :
                  ( ap(ap(c_2Epred__set_2EUNION(A_27a),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t)),V2u) = ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),ap(ap(c_2Epred__set_2EUNION(A_27a),V1t),V2u))
                 <= mem(V2u,arr(A_27a,bool)) )
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2EUNION__OVER__INTER,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ! [V2u] :
                  ( mem(V2u,arr(A_27a,bool))
                 => ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),ap(ap(c_2Epred__set_2EUNION(A_27a),V1t),V2u)) = ap(ap(c_2Epred__set_2EUNION(A_27a),ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t)),ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V2u)) )
             <= mem(V1t,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EIMAGE,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( mem(c_2Epred__set_2EIMAGE(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27a,bool),arr(A_27b,bool))))
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__UNION,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( ! [V2u] :
                  ( mem(V2u,arr(A_27a,bool))
                 => ( ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V2u))
                      & p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V1t),V2u)) )
                  <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t)),V2u)) ) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(ax_thm_2Epred__set_2EDISJOINT__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ( ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t) = c_2Epred__set_2EEMPTY(A_27a)
              <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V1t)) )
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(mem_c_2Epred__set_2Epair__to__num,axiom,
    mem(c_2Epred__set_2Epair__to__num,arr(ty_2Epair_2Eprod(ty_2Enum_2Enum,ty_2Enum_2Enum),ty_2Enum_2Enum)) ).

fof(conj_thm_2Epred__set_2EUNIV__NOT__EMPTY,axiom,
    ! [A_27a] :
      ( c_2Epred__set_2EUNIV(A_27a) != c_2Epred__set_2EEMPTY(A_27a)
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ENOT__PSUBSET__EMPTY,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ~ p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V0s),c_2Epred__set_2EEMPTY(A_27a)))
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(lameq_f257,axiom,
    ! [A_27a,A_27b,V2P] :
      ( ! [V3x] :
          ( ! [V4y] : ap(f257(A_27a,A_27b,V2P,V3x),V4y) = ap(ap(c_2Epair_2E_2C(ty_2Epair_2Eprod(A_27a,A_27b),bool),ap(ap(c_2Epair_2E_2C(A_27a,A_27b),V3x),V4y)),ap(ap(V2P,V3x),V4y))
         <= mem(V3x,A_27a) )
     <= mem(V2P,arr(A_27a,arr(A_27b,bool))) ) ).

fof(mem_c_2Epred__set_2EBIJ,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => mem(c_2Epred__set_2EBIJ(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27a,bool),arr(arr(A_27b,bool),bool)))) ) ) ).

fof(conj_thm_2Epred__set_2EDIFF__INSERT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2x] :
                  ( ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V2x)),V1t) = ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),ap(ap(c_2Epred__set_2EINSERT(A_27a),V2x),V1t))
                 <= mem(V2x,A_27a) ) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EGSPECIFICATION__applied,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [V0f] :
              ( ! [V1v] :
                  ( mem(V1v,A_27a)
                 => ( p(ap(ap(c_2Epred__set_2EGSPEC(A_27a,A_27b),V0f),V1v))
                  <=> ? [V2x] :
                        ( mem(V2x,A_27b)
                        & ap(ap(c_2Epair_2E_2C(A_27a,bool),V1v),c_2Ebool_2ET) = ap(V0f,V2x) ) ) )
             <= mem(V0f,arr(A_27b,ty_2Epair_2Eprod(A_27a,bool))) ) ) ) ).

fof(conj_thm_2Epred__set_2EREST__SUBSET,conjecture,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(c_2Epred__set_2EREST(A_27a),V0s)),V0s)) ) ) ).

fof(conj_thm_2Epred__set_2EINSERT__SUBSET,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1s] :
              ( ! [V2t] :
                  ( ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1s),V2t))
                      & p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V2t)) )
                  <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)),V2t)) )
                 <= mem(V2t,arr(A_27a,bool)) )
             <= mem(V1s,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__EMPTY,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),c_2Epred__set_2EEMPTY(A_27a)))
            & p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),c_2Epred__set_2EEMPTY(A_27a)),V0s)) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EINJ,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( mem(c_2Epred__set_2EINJ(A_27a,A_27b),arr(arr(A_27a,A_27b),arr(arr(A_27a,bool),arr(arr(A_27b,bool),bool))))
         <= ne(A_27b) ) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__SYM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V1t),V0s))
              <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V1t)) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EIN__INSERT,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1y] :
              ( mem(V1y,A_27a)
             => ! [V2s] :
                  ( ( ( V0x = V1y
                      | p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V2s)) )
                  <=> p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),ap(ap(c_2Epred__set_2EINSERT(A_27a),V1y),V2s))) )
                 <= mem(V2s,arr(A_27a,bool)) ) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EINTER__OVER__UNION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ! [V2u] :
                  ( ap(ap(c_2Epred__set_2EINTER(A_27a),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V1t)),ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),V2u)) = ap(ap(c_2Epred__set_2EUNION(A_27a),V0s),ap(ap(c_2Epred__set_2EINTER(A_27a),V1t),V2u))
                 <= mem(V2u,arr(A_27a,bool)) ) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(mem_c_2Epred__set_2Ecountable,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2Ecountable(A_27a),arr(arr(A_27a,bool),bool)) ) ).

fof(conj_thm_2Epred__set_2EEMPTY__DELETE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( c_2Epred__set_2EEMPTY(A_27a) = ap(ap(c_2Epred__set_2EDELETE(A_27a),c_2Epred__set_2EEMPTY(A_27a)),V0x)
         <= mem(V0x,A_27a) ) ) ).

fof(ax_thm_2Epred__set_2EDIFF__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t) = ap(c_2Epred__set_2EGSPEC(A_27a,A_27a),f265(A_27a,V1t,V0s)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__K,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1y] :
              ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0x),ap(c_2Ecombin_2EK(bool,A_27a),V1y)))
              <=> ( p(V1y)
                  | p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0x),c_2Epred__set_2EEMPTY(A_27a))) ) )
             <= mem(V1y,bool) )
         <= mem(V0x,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDELETE__applied,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1x] :
              ( ! [V2y] :
                  ( mem(V2y,A_27a)
                 => ( p(ap(ap(ap(c_2Epred__set_2EDELETE(A_27a),V0s),V2y),V1x))
                  <=> ( V1x != V2y
                      & p(ap(ap(c_2Ebool_2EIN(A_27a),V1x),V0s)) ) ) )
             <= mem(V1x,A_27a) ) ) ) ).

fof(mem_c_2Epred__set_2Enum__to__pair,axiom,
    mem(c_2Epred__set_2Enum__to__pair,arr(ty_2Enum_2Enum,ty_2Epair_2Eprod(ty_2Enum_2Enum,ty_2Enum_2Enum))) ).

fof(conj_thm_2Epred__set_2EABSORPTION__RWT,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1s] :
              ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V1s))
               => V1s = ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s) )
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0x,A_27a) ) ) ).

fof(conj_thm_2Epred__set_2EDIFF__SAME__UNION,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1y] :
              ( ( ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EUNION(A_27a),V0x),V1y)),V1y) = ap(ap(c_2Epred__set_2EDIFF(A_27a),V0x),V1y)
                & ap(ap(c_2Epred__set_2EDIFF(A_27a),V1y),V0x) = ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EUNION(A_27a),V0x),V1y)),V0x) )
             <= mem(V1y,arr(A_27a,bool)) )
         <= mem(V0x,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EIN__INTER,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( ! [V2x] :
                  ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t)))
                  <=> ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t))
                      & p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s)) ) )
                 <= mem(V2x,A_27a) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2Epartition,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2Epartition(A_27a),arr(arr(A_27a,arr(A_27a,bool)),arr(arr(A_27a,bool),arr(arr(A_27a,bool),bool)))) ) ).

fof(conj_thm_2Epred__set_2EIN__GSPEC,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ! [V0f] :
              ( ! [V1y] :
                  ( ! [V2x] :
                      ( mem(V2x,A_27b)
                     => ! [V3P] :
                          ( mem(V3P,arr(A_27a,bool))
                         => ( ( p(ap(V3P,V1y))
                              & ap(V0f,V1y) = V2x )
                           => p(ap(ap(c_2Ebool_2EIN(A_27b),V2x),ap(c_2Epred__set_2EGSPEC(A_27b,A_27a),f259(A_27b,A_27a,V0f,V3P)))) ) ) )
                 <= mem(V1y,A_27a) )
             <= mem(V0f,arr(A_27a,A_27b)) )
         <= ne(A_27b) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EEQ__SUBSET__SUBSET,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( ! [V1t] :
              ( ( V1t = V0s
               => ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t))
                  & p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1t),V0s)) ) )
             <= mem(V1t,arr(A_27a,bool)) )
         <= mem(V0s,arr(A_27a,bool)) ) ) ).

fof(conj_thm_2Epred__set_2EINTER__EMPTY,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ( ! [V1s] :
            ( ap(ap(c_2Epred__set_2EINTER(A_27a),V1s),c_2Epred__set_2EEMPTY(A_27a)) = c_2Epred__set_2EEMPTY(A_27a)
           <= mem(V1s,arr(A_27a,bool)) )
        & ! [V0s] :
            ( ap(ap(c_2Epred__set_2EINTER(A_27a),c_2Epred__set_2EEMPTY(A_27a)),V0s) = c_2Epred__set_2EEMPTY(A_27a)
           <= mem(V0s,arr(A_27a,bool)) ) ) ) ).

fof(mem_c_2Epred__set_2Echooser,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2Echooser(A_27a),arr(arr(A_27a,bool),arr(ty_2Enum_2Enum,A_27a))) ) ).

fof(conj_thm_2Epred__set_2EINSERT__COMM,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1y] :
              ( ! [V2s] :
                  ( mem(V2s,arr(A_27a,bool))
                 => ap(ap(c_2Epred__set_2EINSERT(A_27a),V1y),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V2s)) = ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),ap(ap(c_2Epred__set_2EINSERT(A_27a),V1y),V2s)) )
             <= mem(V1y,A_27a) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EUNIV__applied,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => p(ap(c_2Epred__set_2EUNIV(A_27a),V0x)) ) ) ).

fof(conj_thm_2Epred__set_2EDIFF__COMM,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1y] :
              ( ! [V2z] :
                  ( ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0x),V1y)),V2z) = ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0x),V2z)),V1y)
                 <= mem(V2z,arr(A_27a,bool)) )
             <= mem(V1y,arr(A_27a,bool)) )
         <= mem(V0x,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EINSERT__applied,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( mem(V0x,A_27a)
         => ! [V1y] :
              ( mem(V1y,A_27a)
             => ! [V2s] :
                  ( ( ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),V2s))
                      | V0x = V1y )
                  <=> p(ap(ap(ap(c_2Epred__set_2EINSERT(A_27a),V1y),V2s),V0x)) )
                 <= mem(V2s,arr(A_27a,bool)) ) ) ) ) ).

fof(mem_c_2Epred__set_2ECROSS,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( mem(c_2Epred__set_2ECROSS(A_27a,A_27b),arr(arr(A_27a,bool),arr(arr(A_27b,bool),arr(ty_2Epair_2Eprod(A_27a,A_27b),bool))))
         <= ne(A_27b) ) ) ).

fof(lameq_f260,axiom,
    ! [A_27b,A_27a,V2x] :
      ( mem(V2x,A_27b)
     => ! [V3P] :
          ( mem(V3P,arr(A_27a,bool))
         => ! [V4y] : ap(ap(c_2Epair_2E_2C(ty_2Epair_2Eprod(A_27a,A_27b),bool),ap(ap(c_2Epair_2E_2C(A_27a,A_27b),V4y),V2x)),ap(V3P,V4y)) = ap(f260(A_27b,A_27a,V2x,V3P),V4y) ) ) ).

fof(mem_c_2Epred__set_2EBIGINTER,axiom,
    ! [A_27a] :
      ( mem(c_2Epred__set_2EBIGINTER(A_27a),arr(arr(arr(A_27a,bool),bool),arr(A_27a,bool)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ECOMPONENT,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1s] :
              ( p(ap(ap(c_2Ebool_2EIN(A_27a),V0x),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V1s)))
             <= mem(V1s,arr(A_27a,bool)) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__DIFFS,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0g] :
          ( mem(V0g,arr(ty_2Enum_2Enum,arr(A_27a,bool)))
         => ! [V1f] :
              ( mem(V1f,arr(ty_2Enum_2Enum,arr(A_27a,bool)))
             => ! [V2m] :
                  ( ! [V3n] :
                      ( mem(V3n,ty_2Enum_2Enum)
                     => ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),ap(V0g,V2m)),ap(V0g,V3n)))
                       <= ( V2m != V3n
                          & ! [V5n] :
                              ( ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(V1f,ap(c_2Enum_2ESUC,V5n))),ap(V1f,V5n)) = ap(V0g,V5n)
                             <= mem(V5n,ty_2Enum_2Enum) )
                          & ! [V4n] :
                              ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(V1f,V4n)),ap(V1f,ap(c_2Enum_2ESUC,V4n))))
                             <= mem(V4n,ty_2Enum_2Enum) ) ) ) )
                 <= mem(V2m,ty_2Enum_2Enum) ) ) ) ) ).

fof(conj_thm_2Epred__set_2EINTER__UNIV,axiom,
    ! [A_27a] :
      ( ( ! [V0s] :
            ( V0s = ap(ap(c_2Epred__set_2EINTER(A_27a),c_2Epred__set_2EUNIV(A_27a)),V0s)
           <= mem(V0s,arr(A_27a,bool)) )
        & ! [V1s] :
            ( ap(ap(c_2Epred__set_2EINTER(A_27a),V1s),c_2Epred__set_2EUNIV(A_27a)) = V1s
           <= mem(V1s,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EREST,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2EREST(A_27a),arr(arr(A_27a,bool),arr(A_27a,bool))) ) ).

fof(conj_thm_2Epred__set_2EPAIR__IN__GSPEC__IFF,axiom,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ne(A_27b)
         => ! [V0x] :
              ( mem(V0x,A_27a)
             => ! [V1y] :
                  ( mem(V1y,A_27b)
                 => ! [V2P] :
                      ( ( p(ap(ap(V2P,V0x),V1y))
                      <=> p(ap(ap(c_2Ebool_2EIN(ty_2Epair_2Eprod(A_27a,A_27b)),ap(ap(c_2Epair_2E_2C(A_27a,A_27b),V0x),V1y)),ap(c_2Epred__set_2EGSPEC(ty_2Epair_2Eprod(A_27a,A_27b),ty_2Epair_2Eprod(A_27a,A_27b)),ap(c_2Epair_2EUNCURRY(A_27a,A_27b,ty_2Epair_2Eprod(ty_2Epair_2Eprod(A_27a,A_27b),bool)),f258(A_27b,A_27a,V2P))))) )
                     <= mem(V2P,arr(A_27a,arr(A_27b,bool))) ) ) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EDELETE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2EDELETE(A_27a),arr(arr(A_27a,bool),arr(A_27a,arr(A_27a,bool)))) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__EMPTY__REFL__RWT,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ( V0s = c_2Epred__set_2EEMPTY(A_27a)
          <=> p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V0s)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDIFF__DIFF,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ap(ap(c_2Epred__set_2EDIFF(A_27a),ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)),V1t) = ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),V1t)
             <= mem(V1t,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EINTER__COMM,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ap(ap(c_2Epred__set_2EINTER(A_27a),V1t),V0s) = ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t)
             <= mem(V1t,arr(A_27a,bool)) ) ) ) ).

fof(conj_thm_2Epred__set_2EDIFF__EMPTY,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => V0s = ap(ap(c_2Epred__set_2EDIFF(A_27a),V0s),c_2Epred__set_2EEMPTY(A_27a)) ) ) ).

fof(ax_thm_2Epred__set_2ESUBSET__DEF,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t))
              <=> ! [V2x] :
                    ( mem(V2x,A_27a)
                   => ( p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V0s))
                     => p(ap(ap(c_2Ebool_2EIN(A_27a),V2x),V1t)) ) ) )
             <= mem(V1t,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__INSERT__DELETE,axiom,
    ! [A_27a] :
      ( ! [V0x] :
          ( ! [V1s] :
              ( mem(V1s,arr(A_27a,bool))
             => ! [V2t] :
                  ( ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V1s),ap(ap(c_2Epred__set_2EINSERT(A_27a),V0x),V2t)))
                  <=> p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),ap(ap(c_2Epred__set_2EDELETE(A_27a),V1s),V0x)),V2t)) )
                 <= mem(V2t,arr(A_27a,bool)) ) )
         <= mem(V0x,A_27a) )
     <= ne(A_27a) ) ).

fof(mem_c_2Epred__set_2EPSUBSET,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Epred__set_2EPSUBSET(A_27a),arr(arr(A_27a,bool),arr(arr(A_27a,bool),bool))) ) ).

fof(conj_thm_2Epred__set_2ESUBSET__INTER1,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ! [V1t] :
              ( mem(V1t,arr(A_27a,bool))
             => ( V0s = ap(ap(c_2Epred__set_2EINTER(A_27a),V0s),V1t)
               <= p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V0s),V1t)) ) )
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EPSUBSET__IRREFL,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( ~ p(ap(ap(c_2Epred__set_2EPSUBSET(A_27a),V0s),V0s))
         <= mem(V0s,arr(A_27a,bool)) )
     <= ne(A_27a) ) ).

fof(conj_thm_2Epred__set_2EDISJOINT__SUBSET,axiom,
    ! [A_27a] :
      ( ! [V0s] :
          ( mem(V0s,arr(A_27a,bool))
         => ! [V1t] :
              ( ! [V2u] :
                  ( mem(V2u,arr(A_27a,bool))
                 => ( p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V2u))
                   <= ( p(ap(ap(c_2Epred__set_2ESUBSET(A_27a),V2u),V1t))
                      & p(ap(ap(c_2Epred__set_2EDISJOINT(A_27a),V0s),V1t)) ) ) )
             <= mem(V1t,arr(A_27a,bool)) ) )
     <= ne(A_27a) ) ).

