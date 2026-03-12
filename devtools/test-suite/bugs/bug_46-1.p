% args: -inner
% result: VALID

fof(church_46_9_2,conjecture,
    ? [X] :
    ! [Y] :
      ( ( ( big_f(X,X)
         => big_f(Y,Y) )
       => ( big_f(X,Y)
          & big_g(X) ) )
     => big_g(Y) ) ).
