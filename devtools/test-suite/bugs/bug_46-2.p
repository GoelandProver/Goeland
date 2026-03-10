% args: -inner
% result: VALID

fof(church_46_15_5,conjecture,
    ? [X] :
    ! [Y] :
    ? [Z1,Z2] :
      ( big_f(X,Y,Z1,Z2,Z1)
     => big_f(Z1,X,Y,Z1,Z2) ) ).
