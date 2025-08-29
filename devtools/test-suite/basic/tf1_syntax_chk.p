% args: -one_step
% result: NOT VALID

tff(beverage_type,type,
    beverage: $tType ).

tff(syrup_type,type,
    syrup: $tType ).

%----Type constructor
tff(cup_of_type,type,
    cup_of: $tType > $tType ).

tff(full_cup_type,type,
    full_cup: beverage > cup_of(beverage) ).

tff(coffee_type,type,
    coffee: beverage ).

tff(help_stay_awake_type,type,
    help_stay_awake: cup_of(beverage) > $o ).

%----Polymorphic symbol
tff(mixture_type,type,
    mixture: 
      !>[BeverageOrSyrup: $tType] : ( ( BeverageOrSyrup * syrup ) > BeverageOrSyrup ) ).

%----Use of polymorphic symbol
tff(mixture_of_coffee_help_stay_awake,axiom,
    ! [S: syrup] : help_stay_awake(full_cup(mixture(beverage,coffee,S))) ).

%----Type constructor
tff(map,type,
    map: ( $tType * $tType ) > $tType ).

%----Polymorphic symbols
tff(lookup,type,
    lookup: 
      !>[A: $tType,B: $tType] : ( ( map(A,B) * A ) > B ) ).

tff(update,type,
    update: 
      !>[A: $tType,B: $tType] : ( ( map(A,B) * A * B ) > map(A,B) ) ).

%----Use of polymorphic symbols
tff(lookup_update_same,axiom,
    ! [A: $tType,B: $tType,M: map(A,B),K: A,V: B] : ( lookup(A,B,update(A,B,M,K,V),K) = V ) ).

tff(lookup_update_diff,axiom,
    ! [A: $tType,B: $tType,M: map(A,B),V: B,K: A,L: A] :
      ( ( K != L )
     => ( lookup(A,B,update(A,B,M,K,V),L) = lookup(A,B,M,L) ) ) ).

tff(map_ext,axiom,
    ! [A: $tType,B: $tType,M: map(A,B),N: map(A,B)] :
      ( ! [K: A] : ( lookup(A,B,M,K) = lookup(A,B,N,K) )
     => ( M = N ) ) ).
