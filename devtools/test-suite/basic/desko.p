% result: VALID

fof(desko,conjecture,
    ~( ! [X,Y] : (
        (~p(Y) & ? [Z] : p(Z))        
        | 
        (~q(X) & ? [Z2] : q(Z2))
        )
    )
).
        