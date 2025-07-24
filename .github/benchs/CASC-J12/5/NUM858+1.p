fof(ub,axiom,
    ! [X,Y,Z] :
      ( ub(X,Y,Z)
    <=> ( lesseq(Y,Z)
        & lesseq(X,Z) ) ) ).

fof(lesseq_total,axiom,
    ! [X,Y] :
      ( lesseq(Y,X)
      | lesseq(X,Y) ) ).

fof(max_is_ub_1,conjecture,
    ! [X,Y,Z] :
      ( minsol_model_max(X,Y,Z)
    <=> minsol_model_ub(X,Y,Z) ) ).

fof(model_max_1,axiom,
    ! [X,Y,N] :
      ( max(X,Y) = N
    <=> model_max(X,Y,N) ) ).

fof(sum_monotone_1,axiom,
    ! [X,Y,Z] :
      ( lesseq(sum(Z,X),sum(Z,Y))
    <=> lesseq(X,Y) ) ).

fof(lesseq_trans,axiom,
    ! [X,Y,Z] :
      ( lesseq(X,Z)
     <= ( lesseq(Y,Z)
        & lesseq(X,Y) ) ) ).

fof(max_1,axiom,
    ! [X,Y] :
      ( ~ lesseq(Y,X)
      | X = max(X,Y) ) ).

fof(lesseq_antisymmetric,axiom,
    ! [X,Y] :
      ( ( lesseq(Y,X)
        & lesseq(X,Y) )
     => Y = X ) ).

fof(minsol_model_max,axiom,
    ! [X,Y,N] :
      ( ( ! [Z] :
            ( lesseq(N,Z)
           <= model_max(X,Y,Z) )
        & model_max(X,Y,N) )
    <=> minsol_model_max(X,Y,N) ) ).

fof(max_2,axiom,
    ! [X,Y] :
      ( max(X,Y) = Y
      | ~ lesseq(X,Y) ) ).

fof(summation_monotone,axiom,
    ! [X,Y] :
      ( lesseq(summation(X),summation(Y))
    <=> lesseq(X,Y) ) ).

fof(minsol_model_ub,axiom,
    ! [X,Y,N] :
      ( ( ! [Z] :
            ( lesseq(N,Z)
           <= model_ub(X,Y,Z) )
        & model_ub(X,Y,N) )
    <=> minsol_model_ub(X,Y,N) ) ).

fof(model_ub_1,axiom,
    ! [X,Y,N] :
      ( model_ub(X,Y,N)
    <=> ub(X,Y,N) ) ).

fof(lesseq_ref,axiom,
    ! [X] : lesseq(X,X) ).

