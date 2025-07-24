include('Axioms/ITP001/ITP001+2.ax').
fof(mem_c_2Eoption_2ETHE,axiom,
    ! [A_27a] :
      ( mem(c_2Eoption_2ETHE(A_27a),arr(ty_2Eoption_2Eoption(A_27a),A_27a))
     <= ne(A_27a) ) ).

fof(mem_c_2Eoption_2EOPTION__MAP2,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ! [A_27c] :
              ( ne(A_27c)
             => mem(c_2Eoption_2EOPTION__MAP2(A_27a,A_27b,A_27c),arr(arr(A_27b,arr(A_27c,A_27a)),arr(ty_2Eoption_2Eoption(A_27b),arr(ty_2Eoption_2Eoption(A_27c),ty_2Eoption_2Eoption(A_27a))))) )
         <= ne(A_27b) ) ) ).

fof(mem_c_2Ebool_2ECOND,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ebool_2ECOND(A_27a),arr(bool,arr(A_27a,arr(A_27a,A_27a)))) ) ).

fof(ax_eq_p,axiom,
    ! [A] :
      ( ! [X] :
          ( ! [Y] :
              ( ( X = Y
              <=> p(ap(ap(c_2Emin_2E_3D(A),X),Y)) )
             <= mem(Y,A) )
         <= mem(X,A) )
     <= ne(A) ) ).

fof(conj_thm_2Ebool_2EREFL__CLAUSE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ( V0x = V0x
          <=> $true )
         <= mem(V0x,A_27a) ) ) ).

fof(mem_c_2Ebool_2E_21,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Ebool_2E_21(A_27a),arr(arr(A_27a,bool),bool)) ) ).

fof(conj_thm_2Ebool_2ECOND__CLAUSES,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0t1] :
          ( ! [V1t2] :
              ( ( V0t1 = ap(ap(ap(c_2Ebool_2ECOND(A_27a),c_2Ebool_2ET),V0t1),V1t2)
                & ap(ap(ap(c_2Ebool_2ECOND(A_27a),c_2Ebool_2EF),V0t1),V1t2) = V1t2 )
             <= mem(V1t2,A_27a) )
         <= mem(V0t1,A_27a) ) ) ).

fof(ax_true_p,axiom,
    p(c_2Ebool_2ET) ).

fof(mem_c_2Eoption_2EIS__SOME,axiom,
    ! [A_27a] :
      ( mem(c_2Eoption_2EIS__SOME(A_27a),arr(ty_2Eoption_2Eoption(A_27a),bool))
     <= ne(A_27a) ) ).

fof(conj_thm_2Eoption_2ESOME__11,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ! [V1y] :
              ( mem(V1y,A_27a)
             => ( V0x = V1y
              <=> ap(c_2Eoption_2ESOME(A_27a),V0x) = ap(c_2Eoption_2ESOME(A_27a),V1y) ) )
         <= mem(V0x,A_27a) ) ) ).

fof(ax_thm_2Eoption_2EIS__SOME__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ( ( $false
        <=> p(ap(c_2Eoption_2EIS__SOME(A_27a),c_2Eoption_2ENONE(A_27a))) )
        & ! [V0x] :
            ( ( p(ap(c_2Eoption_2EIS__SOME(A_27a),ap(c_2Eoption_2ESOME(A_27a),V0x)))
            <=> $true )
           <= mem(V0x,A_27a) ) ) ) ).

fof(ne_ty_2Eoption_2Eoption,axiom,
    ! [A0] :
      ( ne(ty_2Eoption_2Eoption(A0))
     <= ne(A0) ) ).

fof(ax_false_p,axiom,
    ~ p(c_2Ebool_2EF) ).

fof(conj_thm_2Ebool_2EAND__CLAUSES,axiom,
    ! [V0t] :
      ( mem(V0t,bool)
     => ( ( $false
        <=> ( p(V0t)
            & $false ) )
        & ( p(V0t)
        <=> ( p(V0t)
            & p(V0t) ) )
        & ( ( p(V0t)
            & $false )
        <=> $false )
        & ( p(V0t)
        <=> ( $true
            & p(V0t) ) )
        & ( ( $true
            & p(V0t) )
        <=> p(V0t) ) ) ) ).

fof(ax_thm_2Eoption_2ETHE__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [V0x] :
          ( ap(c_2Eoption_2ETHE(A_27a),ap(c_2Eoption_2ESOME(A_27a),V0x)) = V0x
         <= mem(V0x,A_27a) ) ) ).

fof(mem_c_2Ebool_2ET,axiom,
    mem(c_2Ebool_2ET,bool) ).

fof(mem_c_2Ebool_2E_2F_5C,axiom,
    mem(c_2Ebool_2E_2F_5C,arr(bool,arr(bool,bool))) ).

fof(ax_thm_2Eoption_2EOPTION__MAP2__DEF,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => ! [A_27b] :
          ( ne(A_27b)
         => ! [A_27c] :
              ( ! [V0f] :
                  ( ! [V1x] :
                      ( ! [V2y] :
                          ( ap(ap(ap(c_2Eoption_2EOPTION__MAP2(A_27a,A_27b,A_27c),V0f),V1x),V2y) = ap(ap(ap(c_2Ebool_2ECOND(ty_2Eoption_2Eoption(A_27a)),ap(ap(c_2Ebool_2E_2F_5C,ap(c_2Eoption_2EIS__SOME(A_27b),V1x)),ap(c_2Eoption_2EIS__SOME(A_27c),V2y))),ap(c_2Eoption_2ESOME(A_27a),ap(ap(V0f,ap(c_2Eoption_2ETHE(A_27b),V1x)),ap(c_2Eoption_2ETHE(A_27c),V2y)))),c_2Eoption_2ENONE(A_27a))
                         <= mem(V2y,ty_2Eoption_2Eoption(A_27c)) )
                     <= mem(V1x,ty_2Eoption_2Eoption(A_27b)) )
                 <= mem(V0f,arr(A_27b,arr(A_27c,A_27a))) )
             <= ne(A_27c) ) ) ) ).

fof(mem_c_2Eoption_2ESOME,axiom,
    ! [A_27a] :
      ( mem(c_2Eoption_2ESOME(A_27a),arr(A_27a,ty_2Eoption_2Eoption(A_27a)))
     <= ne(A_27a) ) ).

fof(conj_thm_2Eoption_2EOPTION__MAP2__THM,conjecture,
    ! [A_27a] :
      ( ! [A_27b] :
          ( ne(A_27b)
         => ! [A_27c] :
              ( ! [V0f] :
                  ( ! [V1x] :
                      ( ! [V2y] :
                          ( mem(V2y,A_27c)
                         => ( ap(ap(ap(c_2Eoption_2EOPTION__MAP2(A_27a,A_27b,A_27c),V0f),ap(c_2Eoption_2ESOME(A_27b),V1x)),ap(c_2Eoption_2ESOME(A_27c),V2y)) = ap(c_2Eoption_2ESOME(A_27a),ap(ap(V0f,V1x),V2y))
                            & c_2Eoption_2ENONE(A_27a) = ap(ap(ap(c_2Eoption_2EOPTION__MAP2(A_27a,A_27b,A_27c),V0f),ap(c_2Eoption_2ESOME(A_27b),V1x)),c_2Eoption_2ENONE(A_27c))
                            & ap(ap(ap(c_2Eoption_2EOPTION__MAP2(A_27a,A_27b,A_27c),V0f),c_2Eoption_2ENONE(A_27b)),ap(c_2Eoption_2ESOME(A_27c),V2y)) = c_2Eoption_2ENONE(A_27a)
                            & ap(ap(ap(c_2Eoption_2EOPTION__MAP2(A_27a,A_27b,A_27c),V0f),c_2Eoption_2ENONE(A_27b)),c_2Eoption_2ENONE(A_27c)) = c_2Eoption_2ENONE(A_27a) ) )
                     <= mem(V1x,A_27b) )
                 <= mem(V0f,arr(A_27b,arr(A_27c,A_27a))) )
             <= ne(A_27c) ) )
     <= ne(A_27a) ) ).

fof(mem_c_2Emin_2E_3D,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Emin_2E_3D(A_27a),arr(A_27a,arr(A_27a,bool))) ) ).

fof(ax_and_p,axiom,
    ! [Q] :
      ( mem(Q,bool)
     => ! [R] :
          ( mem(R,bool)
         => ( p(ap(ap(c_2Ebool_2E_2F_5C,Q),R))
          <=> ( p(R)
              & p(Q) ) ) ) ) ).

fof(mem_c_2Eoption_2ENONE,axiom,
    ! [A_27a] :
      ( ne(A_27a)
     => mem(c_2Eoption_2ENONE(A_27a),ty_2Eoption_2Eoption(A_27a)) ) ).

fof(ax_all_p,axiom,
    ! [A] :
      ( ! [Q] :
          ( ( ! [X] :
                ( mem(X,A)
               => p(ap(Q,X)) )
          <=> p(ap(c_2Ebool_2E_21(A),Q)) )
         <= mem(Q,arr(A,bool)) )
     <= ne(A) ) ).

fof(mem_c_2Ebool_2EF,axiom,
    mem(c_2Ebool_2EF,bool) ).

fof(conj_thm_2Ebool_2ETRUTH,axiom,
    $true ).

