include('Axioms/REL001+0.ax').
fof(goals,conjecture,
    ! [X0] :
      ( one = join(X0,one)
     => X0 = converse(X0) ) ).

