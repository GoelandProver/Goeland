% args: -proof -no_id
% result: VALID

tff(list_type,type,
	list: $tType > $tType ).

tff(maybe_type,type,
	maybe: $tType > $tType ).

%----Polymorphic symbols
tff(nil_type,type,
	nil:
	  !>[A: $tType] : list(A) ).

tff(cons_type,type,
	cons:
	  !>[A: $tType] : ( ( A * list(A) ) > list(A) ) ).

tff(none_type,type,
	none:
	  !>[A: $tType] : maybe(A) ).

tff(some_type,type,
	some:
	  !>[A: $tType] : ( A > maybe(A) ) ).

tff(head_type,type,
	head:
	  !>[A: $tType] : ( list(A) > maybe(A) ) ).

%----Use of polymorphic symbols
tff(head_nil,axiom,
	! [A: $tType] : ( head(A,nil(A)) = none(A) )).

tff(head_cons,axiom,
	! [A: $tType,X : A,XS : list(A)] : ( head(A,cons(A,X,XS)) = some(A,X) ) ).

%----With integers
tff(solve_this,conjecture,
	! [A: $tType,X : A,Y : A,Z : A] : ( head(A,cons(A,X,cons(A,Y,cons(A,Z,nil(A))))) = some(A,X) ) ).
