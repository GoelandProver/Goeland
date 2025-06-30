% args: -inner -one_step
% result: NOT VALID

fof(sat,conjecture,
	? [X] : ( ! [Y] : ( p(X,Y) | ~p(Y,X) ) ) ).
