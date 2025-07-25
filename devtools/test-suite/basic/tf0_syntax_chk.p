% result: VALID

tff(p0_type,type,
    p0: $o ).

tff(q0_type,type,
    q0: $o ).

tff(r0_type,type,
    r0: $o ).

tff(s0_type,type,
    s0: $o ).

tff(propositional,axiom,
    ( ( p0
      & ~ q0 )
   => ( r0
      | ~ s0 ) ) ).

%----First-order
tff(a_type,type,
    a: $i ).

tff(b_type,type,
    b: $i ).

tff(h_type,type,
    h: $i ).

tff(f_type,type,
    f: $i > $i ).

tff(g_type,type,
    g: ( $i * $i * $i ) > $i ).

tff(p_type,type,
    p: $i > $o ).

tff(q_type,type,
    q: ( $i * $i ) > $o ).

tff(r_type,type,
    r: ( $i * $i * $i ) > $o ).

tff(s_type,type,
    s: $i > $o ).

tff(first_order,axiom,
    ! [X: $i] :
      ( ( p(X)
        | ~ q(X,a) )
     => ? [Y: $i,Z: $i] :
          ( r(X,f(Y),g(X,f(Y),Z))
          & ~ s(f(f(f(b)))) ) ) ).

%----Equality
tff(equality,axiom,
    ? [Y: $i] :
    ! [X: $i,Z: $i] :
      ( ( f(Y) = g(X,f(Y),Z) )
      | ( f(f(f(b))) != a )
      | ( X = f(Y) ) ) ).

%----True and false
tff(true_false,axiom,
    ( $true
    | $false ) ).

tff(quoted_proposition_type,type,
    'A proposition': $o ).

tff(quoted_predicate_type,type,
    'A predicate': $i > $o ).

tff(quoted_constant_type,type,
    'A constant': $i ).

tff(quoted_function_type,type,
    'A function': $i > $i ).

tff(quoted_escape_type,type,
    'A \'quoted \\ escape\'': $i ).

%----Quoted symbols
tff(single_quoted,axiom,
    ( 'A proposition'
    | 'A predicate'(a)
    | p('A constant')
    | p('A function'(a))
    | p('A \'quoted \\ escape\'') ) ).

%----Connectives - seen |, &, =>, ~ already
tff(useful_connectives,axiom,
    ! [X: $i] :
      ( ( p(X)
       <= ~ q(X,a) )
    <=> ? [Y: $i,Z: $i] :
          ( r(X,f(Y),g(X,f(Y),Z))
        <~> ~ s(f(f(f(b)))) ) ) ).

%----New types
tff(new_type,type,
    new: $tType ).

tff(newc_type,type,
    newc: new ).

tff(newf_type,type,
    newf: ( new * $i ) > new ).

tff(newp_type,type,
    newp: ( new * $i ) > $o ).

tff(new_axiom,axiom,
    ! [X: new] : newp(newf(newc,a),a) ).

%----Annotated formula names
tff(123,axiom,
    ! [X: $i] :
      ( ( p(X)
        | ~ q(X,a) )
     => ? [Y: $i,Z: $i] :
          ( r(X,f(Y),g(X,f(Y),Z))
          & ~ s(f(f(f(b)))) ) ) ).

%----Roles
tff(role_hypothesis,hypothesis,
    p(h) ).

tff(role_conjecture,conjecture,
    ? [X: $i] : p(X) ).

%----Include directive
include('Axioms/SYN000_0.ax').

%----Comments
/* This
   is a block
   comment.
*/
