include('Axioms/SET005+0.ax').
fof(equality1,conjecture,
    ! [X,Y] :
      ( Y = X
      | ? [U] :
          ( ~ member(U,Y)
          & member(U,X) )
      | ? [W] :
          ( member(W,Y)
          & ~ member(W,X) ) ) ).

