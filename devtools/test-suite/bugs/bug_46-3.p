% args: -inner
% result: VALID

fof(church_46_15_6,conjecture,
    ? [X1] :
    ! [X2] :
    ? [X3] :
    ! [X4] :
      ( big_f(X1,X2,X3)
     => big_f(X2,X3,X4) ) ).
