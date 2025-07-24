include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
fof(diff_n5_n3_only_n2,conjecture,
    ! [X] :
      ( difference(n5,n3,X)
     => X = n2 ) ).

