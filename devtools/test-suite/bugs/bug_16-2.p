% args: -preinner
% timeout: 10
% result: VALID

fof(problem,conjecture,
	~( ! [X] :
	   ( ( p(X) &
	       ( (? [Y] : ~(p(Y))) |
	         (? [Y] : ~(p(Y))) ) ) ) |
	   ( ! [Y] :
         ( ( q(Y) &
	         ( (? [Z] : ~(q(Z))) |
	           (? [Z] : ~(q(Z))) ) ) ) ) )).
