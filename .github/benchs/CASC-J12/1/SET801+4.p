include('Axioms/SET006+0.ax').
include('Axioms/SET006+3.ax').
fof(thIV13,conjecture,
    ! [R,E] :
      ( order(R,E)
     => ! [X] :
          ( ! [M] :
              ( ( least_upper_bound(M,X,R,E)
                & member(M,X) )
            <=> greatest(M,R,X) )
         <= subset(X,E) ) ) ).

