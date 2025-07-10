% result: VALID

 fof(test_quant_1,conjecture,
   ~((! [ZZZ] : (f(a) & ~f(a))) | ((! [X] : p(X)) & (! [Y] : ~q(Y)) & (! [Z] : (~p(a) | (~p(b) & (! [ZZ] : q(c)))))
    ))).
