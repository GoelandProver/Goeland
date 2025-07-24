include('Axioms/KLE001+0.ax').
include('Axioms/KLE001+1.ax').
fof(goals,conjecture,
    ! [X0,X1] :
      ( multiplication(X0,X1) = multiplication(X1,X0)
     <= ( test(X0)
        & test(X1) ) ) ).

