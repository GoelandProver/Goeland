include('Axioms/REL001+0.ax').
include('Axioms/REL001+1.ax').
fof(goals,conjecture,
    ! [X0,X1] :
      ( meet(composition(X0,top),X1) = composition(X0,X1)
     <= join(X0,one) = one ) ).

