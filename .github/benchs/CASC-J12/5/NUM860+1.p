fof(max_1,axiom,
    ! [X,Y] :
      ( ~ lesseq(Y,X)
      | max(X,Y) = X ) ).

fof(lesseq_antisymmetric,axiom,
    ! [X,Y] :
      ( X = Y
     <= ( lesseq(Y,X)
        & lesseq(X,Y) ) ) ).

fof(max_is_ub_1,conjecture,
    ! [X,Y,Z] :
      ( minsol_model_max(X,Y,Z)
    <=> minsol_model_ub(X,Y,Z) ) ).

fof(lesseq_ref,axiom,
    ! [X] : lesseq(X,X) ).

fof(minsol_model_max,axiom,
    ! [X,Y,N] :
      ( minsol_model_max(X,Y,N)
    <=> ( ! [Z] :
            ( model_max(X,Y,Z)
           => lesseq(N,Z) )
        & model_max(X,Y,N) ) ) ).

fof(max_2,axiom,
    ! [X,Y] :
      ( max(X,Y) = Y
      | ~ lesseq(X,Y) ) ).

fof(ub,axiom,
    ! [X,Y,Z] :
      ( ub(X,Y,Z)
    <=> ( lesseq(X,Z)
        & lesseq(Y,Z) ) ) ).

fof(lesseq_total,axiom,
    ! [X,Y] :
      ( lesseq(X,Y)
      | lesseq(Y,X) ) ).

fof(model_ub_3,axiom,
    ! [X,Y,N] :
      ( model_ub(X,Y,N)
    <=> ? [Z] :
          ( lesseq(summation(Z),N)
          & ub(X,Y,Z) ) ) ).

fof(summation_monotone,axiom,
    ! [X,Y] :
      ( lesseq(summation(X),summation(Y))
    <=> lesseq(X,Y) ) ).

fof(minsol_model_ub,axiom,
    ! [X,Y,N] :
      ( minsol_model_ub(X,Y,N)
    <=> ( model_ub(X,Y,N)
        & ! [Z] :
            ( lesseq(N,Z)
           <= model_ub(X,Y,Z) ) ) ) ).

fof(lesseq_trans,axiom,
    ! [X,Y,Z] :
      ( ( lesseq(Y,Z)
        & lesseq(X,Y) )
     => lesseq(X,Z) ) ).

fof(model_max_3,axiom,
    ! [X,Y,N] :
      ( model_max(X,Y,N)
    <=> lesseq(summation(max(X,Y)),N) ) ).

fof(sum_monotone_1,axiom,
    ! [X,Y,Z] :
      ( lesseq(sum(Z,X),sum(Z,Y))
    <=> lesseq(X,Y) ) ).

