include('Axioms/REL001+0.ax').
fof(goals,conjecture,
    ! [X0,X1] :
      ( meet(X0,X1) = join(composition(meet(X0,one),X1),meet(X0,X1))
     <= X0 = composition(X0,top) ) ).

