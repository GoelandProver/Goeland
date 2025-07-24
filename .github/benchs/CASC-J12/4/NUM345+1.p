include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
fof(sum_n2_n3_less_n6,conjecture,
    ! [X] :
      ( sum(n2,n3,X)
     => less(X,n6) ) ).

