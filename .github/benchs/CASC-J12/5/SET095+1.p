include('Axioms/SET005+0.ax').
fof(property_of_singletons2,conjecture,
    ! [X,Y] :
      ( member(X,Y)
     => subclass(singleton(X),Y) ) ).

