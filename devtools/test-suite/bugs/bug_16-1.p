% args: -inner
% timeout: 10
% result: VALID

fof(problem,conjecture,
    ~( ! [X,Y] : (
        (~p(Y) & ? [Z] : p(Z)) |
        (~q(X) & ? [Z2] : q(Z2))
       ))).
