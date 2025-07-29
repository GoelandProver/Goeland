% result: VALID

fof(propositional,axiom,
    ( ( p0
      & ~ q0 )
   => ( r0
      | ~ s0 ) ) ).

%----First-order
fof(first_order,axiom,
    ! [X] :
      ( ( p(X)
        | ~ q(X,a) )
     => ? [Y,Z] :
          ( r(X,f(Y),g(X,f(Y),Z))
          & ~ s(f(f(f(b)))) ) ) ).

%----Equality
fof(equality,axiom,
    ? [Y] :
    ! [X,Z] :
      ( f(Y) = g(X,f(Y),Z)
      | f(f(f(b))) != a
      | X = f(Y) ) ).

%----True and false
fof(true_false,axiom,
    ( $true
    | $false ) ).

%----Quoted symbols
fof(single_quoted,axiom,
    ( 'A proposition'
    | 'A predicate'(a)
    | p('A constant')
    | p('A function'(a))
    | p('A \'quoted \\ escape\'') ) ).

%----Connectives - seen |, &, =>, ~ already
fof(useful_connectives,axiom,
    ! [X] :
      ( ( p(X)
       <= ~ q(X,a) )
    <=> ? [Y,Z] :
          ( r(X,f(Y),g(X,f(Y),Z))
        <~> ~ s(f(f(f(b)))) ) ) ).

%----Annotated formula names
fof(123,axiom,
    ! [X] :
      ( ( p(X)
        | ~ q(X,a) )
     => ? [Y,Z] :
          ( r(X,f(Y),g(X,f(Y),Z))
          & ~ s(f(f(f(b)))) ) ) ).

%----Roles
fof(role_hypothesis,hypothesis,
    p(h) ).

fof(role_conjecture,conjecture,
    ? [X] : p(X) ).

%----Include directive
include('Axioms/SYN000+0.ax').

%----Comments
/* This
   is a block
   comment.
*/

%------------------------------------------------------------------------------
