include('Axioms/GEO010+0.ax').
fof(aREALu_RSQRTu_LE,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y)))) ) ).

fof(aMATRIXu_MULu_VSUM,axiom,
    ! [N,M,U_0] :
      ( ! [A5,X] : s(cart(real,M),i(s(fun(fun(num,cart(real,M)),cart(real,M)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,M)),cart(real,M))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,M))),i(s(fun(cart(real,N),fun(cart(cart(real,N),M),fun(num,cart(real,M)))),U_0),s(cart(real,N),X))),s(cart(cart(real,N),M),A5))))) = s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X)))
     <= ! [X,A5,I0] : s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(real,fun(cart(real,M),cart(real,M))),r_),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(cart(real,M),i(s(fun(cart(cart(real,N),M),cart(real,M)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,M))),column),s(num,I0))),s(cart(cart(real,N),M),A5))))) = s(cart(real,M),i(s(fun(num,cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,M))),i(s(fun(cart(real,N),fun(cart(cart(real,N),M),fun(num,cart(real,M)))),U_0),s(cart(real,N),X))),s(cart(cart(real,N),M),A5))),s(num,I0))) ) ).

fof(aVSUMu_PARTIALu_PRE,axiom,
    ! [N,U_1] :
      ( ! [U_0] :
          ( ! [F0,G0,M0,N0] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),i(s(fun(bool,fun(cart(real,N),fun(cart(real,N),cart(real,N)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,N0))))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,M0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,M0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))),s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_1),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_0),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0)))))
         <= ! [F0,G0,K0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_0),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,K0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) )
     <= ! [F0,G0,K0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_1),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),F0),s(num,K0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0))))) ) ).

fof(aMATRIXu_ADDu_RDISTRIB,axiom,
    ! [M,P,N,A5,B0,C0] : s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),M),cart(cart(real,P),M)),i(s(fun(cart(cart(real,P),M),fun(cart(cart(real,P),M),cart(cart(real,P),M))),matrixu_add),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),C0))))),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),B0))),s(cart(cart(real,P),N),C0))))) = s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))),s(cart(cart(real,P),N),C0))) ).

fof(acolumns,axiom,
    ! [N,M,U_0] :
      ( ! [A5] : s(fun(cart(real,M),bool),i(s(fun(fun(cart(real,M),bool),fun(cart(real,M),bool)),gspec),s(fun(cart(real,M),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,M),bool)),U_0),s(cart(cart(real,N),M),A5))))) = s(fun(cart(real,M),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,M),bool)),columns),s(cart(cart(real,N),M),A5)))
     <= ! [A5,GENR_PVARR_292] :
          ( p(s(bool,i(s(fun(cart(real,M),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,M),bool)),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,M),GENR_PVARR_292))))
        <=> ? [I0,V] :
              ( ( p(s(bool,V))
              <=> ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
                  & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) ) )
              & p(s(bool,i(s(fun(cart(real,M),bool),i(s(fun(bool,fun(cart(real,M),bool)),i(s(fun(cart(real,M),fun(bool,fun(cart(real,M),bool))),setspec),s(cart(real,M),GENR_PVARR_292))),s(bool,V))),s(cart(real,M),i(s(fun(cart(cart(real,N),M),cart(real,M)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,M))),column),s(num,I0))),s(cart(cart(real,N),M),A5)))))) ) ) ) ).

fof(aNORMu_1u_POS,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))))
     => s(real,i(s(fun(cart(real,n10),real),vectoru_norm),s(cart(real,n10),X))) = s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))) ) ).

fof(aONORMu_I,axiom,
    ! [N] : s(real,i(s(fun(fun(cart(real,N),cart(real,N)),real),onorm),s(fun(cart(real,N),cart(real,N)),i1))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aNORMu_EQu_1,axiom,
    ! [Q103338,X] :
      ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(cart(real,Q103338),real),vectoru_norm),s(cart(real,Q103338),X)))
    <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(cart(real,Q103338),real),i(s(fun(cart(real,Q103338),fun(cart(real,Q103338),real)),dot),s(cart(real,Q103338),X))),s(cart(real,Q103338),X))) ) ).

fof(aVSUMu_UNION,axiom,
    ! [Q105942,Q105967,F0,S0,T0] :
      ( ( p(s(bool,i(s(fun(fun(Q105942,bool),bool),finite),s(fun(Q105942,bool),T0))))
        & p(s(bool,i(s(fun(fun(Q105942,bool),bool),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,bool),bool)),disjoint),s(fun(Q105942,bool),S0))),s(fun(Q105942,bool),T0))))
        & p(s(bool,i(s(fun(fun(Q105942,bool),bool),finite),s(fun(Q105942,bool),S0)))) )
     => s(cart(real,Q105967),i(s(fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967)),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967))),vsum),s(fun(Q105942,bool),i(s(fun(fun(Q105942,bool),fun(Q105942,bool)),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,bool),fun(Q105942,bool))),union),s(fun(Q105942,bool),S0))),s(fun(Q105942,bool),T0))))),s(fun(Q105942,cart(real,Q105967)),F0))) = s(cart(real,Q105967),i(s(fun(cart(real,Q105967),cart(real,Q105967)),i(s(fun(cart(real,Q105967),fun(cart(real,Q105967),cart(real,Q105967))),vectoru_add),s(cart(real,Q105967),i(s(fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967)),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967))),vsum),s(fun(Q105942,bool),S0))),s(fun(Q105942,cart(real,Q105967)),F0))))),s(cart(real,Q105967),i(s(fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967)),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967))),vsum),s(fun(Q105942,bool),T0))),s(fun(Q105942,cart(real,Q105967)),F0))))) ) ).

fof(aVSUMu_SUB,axiom,
    ! [Q105761,Q105774,U_0] :
      ( ! [F0,G0,S0] :
          ( s(cart(real,Q105774),i(s(fun(cart(real,Q105774),cart(real,Q105774)),i(s(fun(cart(real,Q105774),fun(cart(real,Q105774),cart(real,Q105774))),vectoru_sub),s(cart(real,Q105774),i(s(fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774)),i(s(fun(fun(Q105761,bool),fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774))),vsum),s(fun(Q105761,bool),S0))),s(fun(Q105761,cart(real,Q105774)),F0))))),s(cart(real,Q105774),i(s(fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774)),i(s(fun(fun(Q105761,bool),fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774))),vsum),s(fun(Q105761,bool),S0))),s(fun(Q105761,cart(real,Q105774)),G0))))) = s(cart(real,Q105774),i(s(fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774)),i(s(fun(fun(Q105761,bool),fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774))),vsum),s(fun(Q105761,bool),S0))),s(fun(Q105761,cart(real,Q105774)),i(s(fun(fun(Q105761,cart(real,Q105774)),fun(Q105761,cart(real,Q105774))),i(s(fun(fun(Q105761,cart(real,Q105774)),fun(fun(Q105761,cart(real,Q105774)),fun(Q105761,cart(real,Q105774)))),U_0),s(fun(Q105761,cart(real,Q105774)),F0))),s(fun(Q105761,cart(real,Q105774)),G0)))))
         <= p(s(bool,i(s(fun(fun(Q105761,bool),bool),finite),s(fun(Q105761,bool),S0)))) )
     <= ! [F0,G0,X] : s(cart(real,Q105774),i(s(fun(Q105761,cart(real,Q105774)),i(s(fun(fun(Q105761,cart(real,Q105774)),fun(Q105761,cart(real,Q105774))),i(s(fun(fun(Q105761,cart(real,Q105774)),fun(fun(Q105761,cart(real,Q105774)),fun(Q105761,cart(real,Q105774)))),U_0),s(fun(Q105761,cart(real,Q105774)),F0))),s(fun(Q105761,cart(real,Q105774)),G0))),s(Q105761,X))) = s(cart(real,Q105774),i(s(fun(cart(real,Q105774),cart(real,Q105774)),i(s(fun(cart(real,Q105774),fun(cart(real,Q105774),cart(real,Q105774))),vectoru_sub),s(cart(real,Q105774),i(s(fun(Q105761,cart(real,Q105774)),F0),s(Q105761,X))))),s(cart(real,Q105774),i(s(fun(Q105761,cart(real,Q105774)),G0),s(Q105761,X))))) ) ).

fof(aONORMu_ID,axiom,
    ! [N,U_0] :
      ( ! [X] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),U_0),s(cart(real,N),X))) = s(cart(real,N),X)
     => s(real,i(s(fun(fun(cart(real,N),cart(real,N)),real),onorm),s(fun(cart(real,N),cart(real,N)),U_0))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ) ).

fof(aREALu_DIVu_SQRT,axiom,
    ! [X] :
      ( s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,X))))) = s(real,i(s(fun(real,real),sqrt),s(real,X)))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aMATRIXu_NEGu_MINUS1,axiom,
    ! [N,M,A5] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),A5))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(cart(real,N),M),A5))) ).

fof(aVSUMu_DIFF,axiom,
    ! [Q105987,Q106012,F0,S0,T0] :
      ( s(cart(real,Q106012),i(s(fun(cart(real,Q106012),cart(real,Q106012)),i(s(fun(cart(real,Q106012),fun(cart(real,Q106012),cart(real,Q106012))),vectoru_sub),s(cart(real,Q106012),i(s(fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012)),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012))),vsum),s(fun(Q105987,bool),S0))),s(fun(Q105987,cart(real,Q106012)),F0))))),s(cart(real,Q106012),i(s(fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012)),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012))),vsum),s(fun(Q105987,bool),T0))),s(fun(Q105987,cart(real,Q106012)),F0))))) = s(cart(real,Q106012),i(s(fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012)),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012))),vsum),s(fun(Q105987,bool),i(s(fun(fun(Q105987,bool),fun(Q105987,bool)),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,bool),fun(Q105987,bool))),diff),s(fun(Q105987,bool),S0))),s(fun(Q105987,bool),T0))))),s(fun(Q105987,cart(real,Q106012)),F0)))
     <= ( p(s(bool,i(s(fun(fun(Q105987,bool),bool),finite),s(fun(Q105987,bool),S0))))
        & p(s(bool,i(s(fun(fun(Q105987,bool),bool),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,bool),bool)),subset),s(fun(Q105987,bool),T0))),s(fun(Q105987,bool),S0)))) ) ) ).

fof(aDISTu_SYM,axiom,
    ! [Q104680,X,Y] : s(real,i(s(fun(prod(cart(real,Q104680),cart(real,Q104680)),real),distance),s(prod(cart(real,Q104680),cart(real,Q104680)),i(s(fun(cart(real,Q104680),prod(cart(real,Q104680),cart(real,Q104680))),i(s(fun(cart(real,Q104680),fun(cart(real,Q104680),prod(cart(real,Q104680),cart(real,Q104680)))),c_),s(cart(real,Q104680),X))),s(cart(real,Q104680),Y))))) = s(real,i(s(fun(prod(cart(real,Q104680),cart(real,Q104680)),real),distance),s(prod(cart(real,Q104680),cart(real,Q104680)),i(s(fun(cart(real,Q104680),prod(cart(real,Q104680),cart(real,Q104680))),i(s(fun(cart(real,Q104680),fun(cart(real,Q104680),prod(cart(real,Q104680),cart(real,Q104680)))),c_),s(cart(real,Q104680),Y))),s(cart(real,Q104680),X))))) ).

fof(aBILINEARu_RSUB,axiom,
    ! [Q112656,Q112637,Q112655,H0,X,Y,Z0] :
      ( s(cart(real,Q112656),i(s(fun(cart(real,Q112655),cart(real,Q112656)),i(s(fun(cart(real,Q112637),fun(cart(real,Q112655),cart(real,Q112656))),H0),s(cart(real,Q112637),X))),s(cart(real,Q112655),i(s(fun(cart(real,Q112655),cart(real,Q112655)),i(s(fun(cart(real,Q112655),fun(cart(real,Q112655),cart(real,Q112655))),vectoru_sub),s(cart(real,Q112655),Y))),s(cart(real,Q112655),Z0))))) = s(cart(real,Q112656),i(s(fun(cart(real,Q112656),cart(real,Q112656)),i(s(fun(cart(real,Q112656),fun(cart(real,Q112656),cart(real,Q112656))),vectoru_sub),s(cart(real,Q112656),i(s(fun(cart(real,Q112655),cart(real,Q112656)),i(s(fun(cart(real,Q112637),fun(cart(real,Q112655),cart(real,Q112656))),H0),s(cart(real,Q112637),X))),s(cart(real,Q112655),Y))))),s(cart(real,Q112656),i(s(fun(cart(real,Q112655),cart(real,Q112656)),i(s(fun(cart(real,Q112637),fun(cart(real,Q112655),cart(real,Q112656))),H0),s(cart(real,Q112637),X))),s(cart(real,Q112655),Z0)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q112637),fun(cart(real,Q112655),cart(real,Q112656))),bool),bilinear),s(fun(cart(real,Q112637),fun(cart(real,Q112655),cart(real,Q112656))),H0)))) ) ).

fof(aDOTu_LNEG,axiom,
    ! [Q100419,X,Y] : s(real,i(s(fun(cart(real,Q100419),real),i(s(fun(cart(real,Q100419),fun(cart(real,Q100419),real)),dot),s(cart(real,Q100419),i(s(fun(cart(real,Q100419),cart(real,Q100419)),vectoru_neg),s(cart(real,Q100419),X))))),s(cart(real,Q100419),Y))) = s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(cart(real,Q100419),real),i(s(fun(cart(real,Q100419),fun(cart(real,Q100419),real)),dot),s(cart(real,Q100419),X))),s(cart(real,Q100419),Y))))) ).

fof(aLINEARu_0,axiom,
    ! [Q111807,Q111809,F0] :
      ( s(cart(real,Q111809),i(s(fun(cart(real,Q111807),cart(real,Q111809)),F0),s(cart(real,Q111807),i(s(fun(num,cart(real,Q111807)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q111809),i(s(fun(num,cart(real,Q111809)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q111807),cart(real,Q111809)),bool),linear),s(fun(cart(real,Q111807),cart(real,Q111809)),F0)))) ) ).

fof(aTRANSPu_MATRIXu_CMUL,axiom,
    ! [M,N,A5,C0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,N),M)),transp),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(real,fun(cart(cart(real,M),N),cart(cart(real,M),N))),r_r_),s(real,C0))),s(cart(cart(real,M),N),A5))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,N),M)),transp),s(cart(cart(real,M),N),A5))))) ).

fof(aDISTu_MUL,axiom,
    ! [Q105190,X,Y,C0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),realu_abs),s(real,C0))))),s(real,i(s(fun(prod(cart(real,Q105190),cart(real,Q105190)),real),distance),s(prod(cart(real,Q105190),cart(real,Q105190)),i(s(fun(cart(real,Q105190),prod(cart(real,Q105190),cart(real,Q105190))),i(s(fun(cart(real,Q105190),fun(cart(real,Q105190),prod(cart(real,Q105190),cart(real,Q105190)))),c_),s(cart(real,Q105190),X))),s(cart(real,Q105190),Y))))))) = s(real,i(s(fun(prod(cart(real,Q105190),cart(real,Q105190)),real),distance),s(prod(cart(real,Q105190),cart(real,Q105190)),i(s(fun(cart(real,Q105190),prod(cart(real,Q105190),cart(real,Q105190))),i(s(fun(cart(real,Q105190),fun(cart(real,Q105190),prod(cart(real,Q105190),cart(real,Q105190)))),c_),s(cart(real,Q105190),i(s(fun(cart(real,Q105190),cart(real,Q105190)),i(s(fun(real,fun(cart(real,Q105190),cart(real,Q105190))),r_),s(real,C0))),s(cart(real,Q105190),X))))),s(cart(real,Q105190),i(s(fun(cart(real,Q105190),cart(real,Q105190)),i(s(fun(real,fun(cart(real,Q105190),cart(real,Q105190))),r_),s(real,C0))),s(cart(real,Q105190),Y))))))) ).

fof(aBILINEARu_LMUL,axiom,
    ! [Q112388,Q112385,Q112376,H0,C0,X,Y] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q112385),fun(cart(real,Q112376),cart(real,Q112388))),bool),bilinear),s(fun(cart(real,Q112385),fun(cart(real,Q112376),cart(real,Q112388))),H0))))
     => s(cart(real,Q112388),i(s(fun(cart(real,Q112376),cart(real,Q112388)),i(s(fun(cart(real,Q112385),fun(cart(real,Q112376),cart(real,Q112388))),H0),s(cart(real,Q112385),i(s(fun(cart(real,Q112385),cart(real,Q112385)),i(s(fun(real,fun(cart(real,Q112385),cart(real,Q112385))),r_),s(real,C0))),s(cart(real,Q112385),X))))),s(cart(real,Q112376),Y))) = s(cart(real,Q112388),i(s(fun(cart(real,Q112388),cart(real,Q112388)),i(s(fun(real,fun(cart(real,Q112388),cart(real,Q112388))),r_),s(real,C0))),s(cart(real,Q112388),i(s(fun(cart(real,Q112376),cart(real,Q112388)),i(s(fun(cart(real,Q112385),fun(cart(real,Q112376),cart(real,Q112388))),H0),s(cart(real,Q112385),X))),s(cart(real,Q112376),Y))))) ) ).

fof(aMATRIXu_CMULu_ADDu_RDISTRIB,axiom,
    ! [N,M,A5,B0,C0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,B0))),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),A5))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,B0))),s(real,C0))))),s(cart(cart(real,N),M),A5))) ).

fof(aMATRIXu_CMULu_SUBu_RDISTRIB,axiom,
    ! [N,M,A5,B0,C0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,B0))),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),A5))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,B0))),s(real,C0))))),s(cart(cart(real,N),M),A5))) ).

fof(aVSUMu_IMAGEu_GEN,axiom,
    ! [B,A,Q107061,U_1] :
      ( ! [S0,F0,Y,GENR_PVARR_281] :
          ( p(s(bool,i(s(fun(A,bool),i(s(fun(B,fun(A,bool)),i(s(fun(fun(A,B),fun(B,fun(A,bool))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(B,fun(A,bool)))),U_1),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(B,Y))),s(A,GENR_PVARR_281))))
        <=> ? [X,V] :
              ( p(s(bool,i(s(fun(A,bool),i(s(fun(bool,fun(A,bool)),i(s(fun(A,fun(bool,fun(A,bool))),setspec),s(A,GENR_PVARR_281))),s(bool,V))),s(A,X))))
              & ( p(s(bool,V))
              <=> ( s(B,Y) = s(B,i(s(fun(A,B),F0),s(A,X)))
                  & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) ) ) ) )
     => ! [U_0] :
          ( ! [F0,G0,S0] :
              ( s(cart(real,Q107061),i(s(fun(fun(B,cart(real,Q107061)),cart(real,Q107061)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,Q107061)),cart(real,Q107061))),vsum),s(fun(B,bool),i(s(fun(fun(A,bool),fun(B,bool)),i(s(fun(fun(A,B),fun(fun(A,bool),fun(B,bool))),image),s(fun(A,B),F0))),s(fun(A,bool),S0))))),s(fun(B,cart(real,Q107061)),i(s(fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061))),i(s(fun(fun(A,B),fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061)))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061))))),U_0),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(fun(A,cart(real,Q107061)),G0))))) = s(cart(real,Q107061),i(s(fun(fun(A,cart(real,Q107061)),cart(real,Q107061)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107061)),cart(real,Q107061))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107061)),G0)))
             <= p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) )
         <= ! [S0,F0,G0,Y] : s(cart(real,Q107061),i(s(fun(B,cart(real,Q107061)),i(s(fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061))),i(s(fun(fun(A,B),fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061)))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061))))),U_0),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(fun(A,cart(real,Q107061)),G0))),s(B,Y))) = s(cart(real,Q107061),i(s(fun(fun(A,cart(real,Q107061)),cart(real,Q107061)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107061)),cart(real,Q107061))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),gspec),s(fun(A,bool),i(s(fun(B,fun(A,bool)),i(s(fun(fun(A,B),fun(B,fun(A,bool))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(B,fun(A,bool)))),U_1),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(B,Y))))))),s(fun(A,cart(real,Q107061)),G0))) ) ) ).

fof(aLINEARu_FROMu_REALS,axiom,
    ! [N,F0] :
      ( ! [X] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))),s(cart(real,N),i(s(fun(cart(cart(real,n10),N),cart(real,N)),i(s(fun(num,fun(cart(cart(real,n10),N),cart(real,N))),column),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(cart(cart(real,n10),N),i(s(fun(fun(cart(real,n10),cart(real,N)),cart(cart(real,n10),N)),matrix),s(fun(cart(real,n10),cart(real,N)),F0))))))) = s(cart(real,N),i(s(fun(cart(real,n10),cart(real,N)),F0),s(cart(real,n10),X)))
     <= p(s(bool,i(s(fun(fun(cart(real,n10),cart(real,N)),bool),linear),s(fun(cart(real,n10),cart(real,N)),F0)))) ) ).

fof(avectoru_mul,axiom,
    ! [N,U_0] :
      ( ! [C0,X] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(real,fun(cart(real,N),fun(num,real))),U_0),s(real,C0))),s(cart(real,N),X))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,C0))),s(cart(real,N),X)))
     <= ! [C0,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(real,fun(cart(real,N),fun(num,real))),U_0),s(real,C0))),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) ) ).

fof(aLINEARu_VSUM,axiom,
    ! [Q111967,Q111971,Q111963,F0,G0,S0] :
      ( ( p(s(bool,i(s(fun(fun(Q111971,bool),bool),finite),s(fun(Q111971,bool),S0))))
        & p(s(bool,i(s(fun(fun(cart(real,Q111963),cart(real,Q111967)),bool),linear),s(fun(cart(real,Q111963),cart(real,Q111967)),F0)))) )
     => s(cart(real,Q111967),i(s(fun(cart(real,Q111963),cart(real,Q111967)),F0),s(cart(real,Q111963),i(s(fun(fun(Q111971,cart(real,Q111963)),cart(real,Q111963)),i(s(fun(fun(Q111971,bool),fun(fun(Q111971,cart(real,Q111963)),cart(real,Q111963))),vsum),s(fun(Q111971,bool),S0))),s(fun(Q111971,cart(real,Q111963)),G0))))) = s(cart(real,Q111967),i(s(fun(fun(Q111971,cart(real,Q111967)),cart(real,Q111967)),i(s(fun(fun(Q111971,bool),fun(fun(Q111971,cart(real,Q111967)),cart(real,Q111967))),vsum),s(fun(Q111971,bool),S0))),s(fun(Q111971,cart(real,Q111967)),i(s(fun(fun(Q111971,cart(real,Q111963)),fun(Q111971,cart(real,Q111967))),i(s(fun(fun(cart(real,Q111963),cart(real,Q111967)),fun(fun(Q111971,cart(real,Q111963)),fun(Q111971,cart(real,Q111967)))),o),s(fun(cart(real,Q111963),cart(real,Q111967)),F0))),s(fun(Q111971,cart(real,Q111963)),G0))))) ) ).

fof(aMATRIXu_MULu_RMUL,axiom,
    ! [M,P,N,A5,B0,C0] : s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),N)),i(s(fun(real,fun(cart(cart(real,P),N),cart(cart(real,P),N))),r_r_),s(real,C0))),s(cart(cart(real,P),N),B0))))) = s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),M),cart(cart(real,P),M)),i(s(fun(real,fun(cart(cart(real,P),M),cart(cart(real,P),M))),r_r_),s(real,C0))),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0))))) ).

fof(aBILINEARu_BOUNDED,axiom,
    ! [P,M,N,H0] :
      ( p(s(bool,i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),bool),bilinear),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))))
     => ? [B0] :
        ! [X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,P),real),vectoru_norm),s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),X))),s(cart(real,N),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,B0))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(cart(real,M),real),vectoru_norm),s(cart(real,M),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y)))))))))) ) ).

fof(aVSUMu_IMAGEu_NONZERO,axiom,
    ! [N,A,B,D0,I0,S0] :
      ( ( ! [X,Y] :
            ( ( s(A,X) != s(A,Y)
              & s(B,i(s(fun(A,B),I0),s(A,Y))) = s(B,i(s(fun(A,B),I0),s(A,X)))
              & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,Y))),s(fun(A,bool),S0))))
              & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
           => s(cart(real,N),i(s(fun(B,cart(real,N)),D0),s(B,i(s(fun(A,B),I0),s(A,X))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) )
     => s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),i(s(fun(fun(A,B),fun(A,cart(real,N))),i(s(fun(fun(B,cart(real,N)),fun(fun(A,B),fun(A,cart(real,N)))),o),s(fun(B,cart(real,N)),D0))),s(fun(A,B),I0))))) = s(cart(real,N),i(s(fun(fun(B,cart(real,N)),cart(real,N)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,N)),cart(real,N))),vsum),s(fun(B,bool),i(s(fun(fun(A,bool),fun(B,bool)),i(s(fun(fun(A,B),fun(fun(A,bool),fun(B,bool))),image),s(fun(A,B),I0))),s(fun(A,bool),S0))))),s(fun(B,cart(real,N)),D0))) ) ).

fof(aORTHOGONALu_RNEG,axiom,
    ! [Q110725,X,Y] : s(bool,i(s(fun(cart(real,Q110725),bool),i(s(fun(cart(real,Q110725),fun(cart(real,Q110725),bool)),orthogonal),s(cart(real,Q110725),X))),s(cart(real,Q110725),i(s(fun(cart(real,Q110725),cart(real,Q110725)),vectoru_neg),s(cart(real,Q110725),Y))))) = s(bool,i(s(fun(cart(real,Q110725),bool),i(s(fun(cart(real,Q110725),fun(cart(real,Q110725),bool)),orthogonal),s(cart(real,Q110725),X))),s(cart(real,Q110725),Y))) ).

fof(aDISTu_LEu_0,axiom,
    ! [Q105293,X,Y] :
      ( s(cart(real,Q105293),X) = s(cart(real,Q105293),Y)
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,Q105293),cart(real,Q105293)),real),distance),s(prod(cart(real,Q105293),cart(real,Q105293)),i(s(fun(cart(real,Q105293),prod(cart(real,Q105293),cart(real,Q105293))),i(s(fun(cart(real,Q105293),fun(cart(real,Q105293),prod(cart(real,Q105293),cart(real,Q105293)))),c_),s(cart(real,Q105293),X))),s(cart(real,Q105293),Y))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct3,axiom,
    ! [Q111054,A5,X,Y] :
      ( p(s(bool,i(s(fun(cart(real,Q111054),bool),i(s(fun(cart(real,Q111054),fun(cart(real,Q111054),bool)),orthogonal),s(cart(real,Q111054),A5))),s(cart(real,Q111054),i(s(fun(cart(real,Q111054),cart(real,Q111054)),i(s(fun(cart(real,Q111054),fun(cart(real,Q111054),cart(real,Q111054))),vectoru_add),s(cart(real,Q111054),X))),s(cart(real,Q111054),Y))))))
     <= ( p(s(bool,i(s(fun(cart(real,Q111054),bool),i(s(fun(cart(real,Q111054),fun(cart(real,Q111054),bool)),orthogonal),s(cart(real,Q111054),A5))),s(cart(real,Q111054),X))))
        & p(s(bool,i(s(fun(cart(real,Q111054),bool),i(s(fun(cart(real,Q111054),fun(cart(real,Q111054),bool)),orthogonal),s(cart(real,Q111054),A5))),s(cart(real,Q111054),Y)))) ) ) ).

fof(aBASISu_EXPANSIONu_UNIQUE,axiom,
    ! [N,U_0] :
      ( ! [F0,I0] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,I0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,real),fun(num,cart(real,N))),U_0),s(fun(num,real),F0))),s(num,I0)))
     => ! [F0,X] :
          ( ! [I0] :
              ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
                & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
             => s(real,i(s(fun(num,real),F0),s(num,I0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))) )
        <=> s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,real),fun(num,cart(real,N))),U_0),s(fun(num,real),F0))))) = s(cart(real,N),X) ) ) ).

fof(aDISTu_TRIANGLEu_HALFu_R,axiom,
    ! [Q105069,X1,X2,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105069),cart(real,Q105069)),real),distance),s(prod(cart(real,Q105069),cart(real,Q105069)),i(s(fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069))),i(s(fun(cart(real,Q105069),fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069)))),c_),s(cart(real,Q105069),Y))),s(cart(real,Q105069),X2))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105069),cart(real,Q105069)),real),distance),s(prod(cart(real,Q105069),cart(real,Q105069)),i(s(fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069))),i(s(fun(cart(real,Q105069),fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069)))),c_),s(cart(real,Q105069),Y))),s(cart(real,Q105069),X1))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105069),cart(real,Q105069)),real),distance),s(prod(cart(real,Q105069),cart(real,Q105069)),i(s(fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069))),i(s(fun(cart(real,Q105069),fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069)))),c_),s(cart(real,Q105069),X1))),s(cart(real,Q105069),X2))))))),s(real,e0)))) ) ).

fof(aVSUMu_SWAP,axiom,
    ! [Q109341,Q109340,Q109337,U_2] :
      ( ! [U_1] :
          ( ! [U_0] :
              ( ! [F0,S0,T0] :
                  ( s(cart(real,Q109337),i(s(fun(fun(Q109341,cart(real,Q109337)),cart(real,Q109337)),i(s(fun(fun(Q109341,bool),fun(fun(Q109341,cart(real,Q109337)),cart(real,Q109337))),vsum),s(fun(Q109341,bool),S0))),s(fun(Q109341,cart(real,Q109337)),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109341,cart(real,Q109337))),i(s(fun(fun(Q109340,bool),fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109341,cart(real,Q109337)))),U_0),s(fun(Q109340,bool),T0))),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))))) = s(cart(real,Q109337),i(s(fun(fun(Q109340,cart(real,Q109337)),cart(real,Q109337)),i(s(fun(fun(Q109340,bool),fun(fun(Q109340,cart(real,Q109337)),cart(real,Q109337))),vsum),s(fun(Q109340,bool),T0))),s(fun(Q109340,cart(real,Q109337)),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,cart(real,Q109337))),i(s(fun(fun(Q109341,bool),fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,cart(real,Q109337)))),U_1),s(fun(Q109341,bool),S0))),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0)))))
                 <= ( p(s(bool,i(s(fun(fun(Q109340,bool),bool),finite),s(fun(Q109340,bool),T0))))
                    & p(s(bool,i(s(fun(fun(Q109341,bool),bool),finite),s(fun(Q109341,bool),S0)))) ) )
             <= ! [T0,F0,I0] : s(cart(real,Q109337),i(s(fun(fun(Q109340,cart(real,Q109337)),cart(real,Q109337)),i(s(fun(fun(Q109340,bool),fun(fun(Q109340,cart(real,Q109337)),cart(real,Q109337))),vsum),s(fun(Q109340,bool),T0))),s(fun(Q109340,cart(real,Q109337)),i(s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0),s(Q109341,I0))))) = s(cart(real,Q109337),i(s(fun(Q109341,cart(real,Q109337)),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109341,cart(real,Q109337))),i(s(fun(fun(Q109340,bool),fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109341,cart(real,Q109337)))),U_0),s(fun(Q109340,bool),T0))),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))),s(Q109341,I0))) )
         <= ! [S0,F0,J0] : s(cart(real,Q109337),i(s(fun(Q109340,cart(real,Q109337)),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,cart(real,Q109337))),i(s(fun(fun(Q109341,bool),fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,cart(real,Q109337)))),U_1),s(fun(Q109341,bool),S0))),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))),s(Q109340,J0))) = s(cart(real,Q109337),i(s(fun(fun(Q109341,cart(real,Q109337)),cart(real,Q109337)),i(s(fun(fun(Q109341,bool),fun(fun(Q109341,cart(real,Q109337)),cart(real,Q109337))),vsum),s(fun(Q109341,bool),S0))),s(fun(Q109341,cart(real,Q109337)),i(s(fun(Q109340,fun(Q109341,cart(real,Q109337))),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,fun(Q109341,cart(real,Q109337)))),U_2),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))),s(Q109340,J0))))) )
     <= ! [F0,J0,I0] : s(cart(real,Q109337),i(s(fun(Q109340,cart(real,Q109337)),i(s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0),s(Q109341,I0))),s(Q109340,J0))) = s(cart(real,Q109337),i(s(fun(Q109341,cart(real,Q109337)),i(s(fun(Q109340,fun(Q109341,cart(real,Q109337))),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,fun(Q109341,cart(real,Q109337)))),U_2),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))),s(Q109340,J0))),s(Q109341,I0))) ) ).

fof(aVSUMu_NORMu_TRIANGLE,axiom,
    ! [Q106736,Q106745,U_0] :
      ( ! [F0,A5] : s(real,i(s(fun(Q106736,real),i(s(fun(fun(Q106736,cart(real,Q106745)),fun(Q106736,real)),U_0),s(fun(Q106736,cart(real,Q106745)),F0))),s(Q106736,A5))) = s(real,i(s(fun(cart(real,Q106745),real),vectoru_norm),s(cart(real,Q106745),i(s(fun(Q106736,cart(real,Q106745)),F0),s(Q106736,A5)))))
     => ! [S0,F0,B0] :
          ( ( p(s(bool,i(s(fun(fun(Q106736,bool),bool),finite),s(fun(Q106736,bool),S0))))
            & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(Q106736,real),real),i(s(fun(fun(Q106736,bool),fun(fun(Q106736,real),real)),sum),s(fun(Q106736,bool),S0))),s(fun(Q106736,real),i(s(fun(fun(Q106736,cart(real,Q106745)),fun(Q106736,real)),U_0),s(fun(Q106736,cart(real,Q106745)),F0))))))),s(real,B0)))) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q106745),real),vectoru_norm),s(cart(real,Q106745),i(s(fun(fun(Q106736,cart(real,Q106745)),cart(real,Q106745)),i(s(fun(fun(Q106736,bool),fun(fun(Q106736,cart(real,Q106745)),cart(real,Q106745))),vsum),s(fun(Q106736,bool),S0))),s(fun(Q106736,cart(real,Q106745)),F0))))))),s(real,B0)))) ) ) ).

fof(aMATRIXu_VECTORu_MUL,axiom,
    ! [N,M,F0] :
      ( ! [X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),i(s(fun(fun(cart(real,M),cart(real,N)),cart(cart(real,M),N)),matrix),s(fun(cart(real,M),cart(real,N)),F0))))),s(cart(real,M),X)))
     <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ).

fof(aMATRIXu_TRANSPu_MUL,axiom,
    ! [Q116425,Q116423,Q116424,A5,B0] : s(cart(cart(real,Q116424),Q116425),i(s(fun(cart(cart(real,Q116424),Q116423),cart(cart(real,Q116424),Q116425)),i(s(fun(cart(cart(real,Q116423),Q116425),fun(cart(cart(real,Q116424),Q116423),cart(cart(real,Q116424),Q116425))),matrixu_mul),s(cart(cart(real,Q116423),Q116425),i(s(fun(cart(cart(real,Q116425),Q116423),cart(cart(real,Q116423),Q116425)),transp),s(cart(cart(real,Q116425),Q116423),B0))))),s(cart(cart(real,Q116424),Q116423),i(s(fun(cart(cart(real,Q116423),Q116424),cart(cart(real,Q116424),Q116423)),transp),s(cart(cart(real,Q116423),Q116424),A5))))) = s(cart(cart(real,Q116424),Q116425),i(s(fun(cart(cart(real,Q116425),Q116424),cart(cart(real,Q116424),Q116425)),transp),s(cart(cart(real,Q116425),Q116424),i(s(fun(cart(cart(real,Q116425),Q116423),cart(cart(real,Q116425),Q116424)),i(s(fun(cart(cart(real,Q116423),Q116424),fun(cart(cart(real,Q116425),Q116423),cart(cart(real,Q116425),Q116424))),matrixu_mul),s(cart(cart(real,Q116423),Q116424),A5))),s(cart(cart(real,Q116425),Q116423),B0))))) ).

fof(aNORMu_BASIS,axiom,
    ! [N,K0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,K0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,K0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
     => s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,K0))))) ) ).

fof(aMATRIXu_ADJOINT,axiom,
    ! [Q117843,Q117844,F0] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q117843),cart(real,Q117844)),bool),linear),s(fun(cart(real,Q117843),cart(real,Q117844)),F0))))
     => s(cart(cart(real,Q117844),Q117843),i(s(fun(fun(cart(real,Q117844),cart(real,Q117843)),cart(cart(real,Q117844),Q117843)),matrix),s(fun(cart(real,Q117844),cart(real,Q117843)),i(s(fun(fun(cart(real,Q117843),cart(real,Q117844)),fun(cart(real,Q117844),cart(real,Q117843))),adjoint),s(fun(cart(real,Q117843),cart(real,Q117844)),F0))))) = s(cart(cart(real,Q117844),Q117843),i(s(fun(cart(cart(real,Q117843),Q117844),cart(cart(real,Q117844),Q117843)),transp),s(cart(cart(real,Q117843),Q117844),i(s(fun(fun(cart(real,Q117843),cart(real,Q117844)),cart(cart(real,Q117843),Q117844)),matrix),s(fun(cart(real,Q117843),cart(real,Q117844)),F0))))) ) ).

fof(aMATRIXu_VECTORu_COLUMN,axiom,
    ! [N,M,U_0] :
      ( ! [X,A5,I0] : s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(real,fun(cart(real,M),cart(real,M))),r_),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(cart(real,M),i(s(fun(num,cart(real,M)),i(s(fun(cart(cart(real,M),N),fun(num,cart(real,M))),d_),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))),s(num,I0))))) = s(cart(real,M),i(s(fun(num,cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,M))),i(s(fun(cart(real,N),fun(cart(cart(real,N),M),fun(num,cart(real,M)))),U_0),s(cart(real,N),X))),s(cart(cart(real,N),M),A5))),s(num,I0)))
     => ! [A5,X] : s(cart(real,M),i(s(fun(fun(num,cart(real,M)),cart(real,M)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,M)),cart(real,M))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,M))),i(s(fun(cart(real,N),fun(cart(cart(real,N),M),fun(num,cart(real,M)))),U_0),s(cart(real,N),X))),s(cart(cart(real,N),M),A5))))) = s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))) ) ).

fof(aSQRTu_INV,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),realu_inv),s(real,X))))) = s(real,i(s(fun(real,real),realu_inv),s(real,i(s(fun(real,real),sqrt),s(real,X))))) ) ).

fof(aSQRTu_MONOu_LEu_EQ,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y)))) )
     => s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,Y))) ) ).

fof(aMATRIXu_INV,axiom,
    ! [M,N,A5] :
      ( p(s(bool,i(s(fun(cart(cart(real,N),M),bool),invertible),s(cart(cart(real,N),M),A5))))
     => ( s(cart(cart(real,N),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),N)),i(s(fun(cart(cart(real,M),N),fun(cart(cart(real,N),M),cart(cart(real,N),N))),matrixu_mul),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),matrixu_inv),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,N),M),A5))) = s(cart(cart(real,N),N),i(s(fun(num,cart(cart(real,N),N)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))
        & s(cart(cart(real,M),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,M),N),cart(cart(real,M),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),matrixu_inv),s(cart(cart(real,N),M),A5))))) = s(cart(cart(real,M),M),i(s(fun(num,cart(cart(real,M),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ) ) ).

fof(aSQRTu_POSu_LT,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X))))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aLINEARu_NEGATION,axiom,
    ! [Q111705] : p(s(bool,i(s(fun(fun(cart(real,Q111705),cart(real,Q111705)),bool),linear),s(fun(cart(real,Q111705),cart(real,Q111705)),vectoru_neg)))) ).

fof(arows,axiom,
    ! [N,M,U_0] :
      ( ! [A5] : s(fun(cart(real,N),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),bool)),rows),s(cart(cart(real,N),M),A5))) = s(fun(cart(real,N),bool),i(s(fun(fun(cart(real,N),bool),fun(cart(real,N),bool)),gspec),s(fun(cart(real,N),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),bool)),U_0),s(cart(cart(real,N),M),A5)))))
     <= ! [A5,GENR_PVARR_291] :
          ( p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),bool)),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,N),GENR_PVARR_291))))
        <=> ? [I0,V] :
              ( ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(M,bool),num),dimindex),s(fun(M,bool),univ))))))
                  & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
              <=> p(s(bool,V)) )
              & p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(bool,fun(cart(real,N),bool)),i(s(fun(cart(real,N),fun(bool,fun(cart(real,N),bool))),setspec),s(cart(real,N),GENR_PVARR_291))),s(bool,V))),s(cart(real,N),i(s(fun(cart(cart(real,N),M),cart(real,N)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,N))),row),s(num,I0))),s(cart(cart(real,N),M),A5)))))) ) ) ) ).

fof(aSQRTu_WORKS,axiom,
    ! [X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X))))))
        & s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,X) )
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aSQRTu_MONOu_LT,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) ) ).

fof(aDROPu_NEG,axiom,
    ! [X] : s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),vectoru_neg),s(cart(real,n10),X))))) = s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))) ).

fof(aVSUMu_INJECTION,axiom,
    ! [Q109287,Q109292,F0,P0,S0] :
      ( ( p(s(bool,i(s(fun(fun(Q109287,bool),bool),finite),s(fun(Q109287,bool),S0))))
        & ! [X] :
            ( p(s(bool,i(s(fun(fun(Q109287,bool),bool),i(s(fun(Q109287,fun(fun(Q109287,bool),bool)),in),s(Q109287,X))),s(fun(Q109287,bool),S0))))
           => p(s(bool,i(s(fun(fun(Q109287,bool),bool),i(s(fun(Q109287,fun(fun(Q109287,bool),bool)),in),s(Q109287,i(s(fun(Q109287,Q109287),P0),s(Q109287,X))))),s(fun(Q109287,bool),S0)))) )
        & ! [X,Y] :
            ( ( p(s(bool,i(s(fun(fun(Q109287,bool),bool),i(s(fun(Q109287,fun(fun(Q109287,bool),bool)),in),s(Q109287,X))),s(fun(Q109287,bool),S0))))
              & p(s(bool,i(s(fun(fun(Q109287,bool),bool),i(s(fun(Q109287,fun(fun(Q109287,bool),bool)),in),s(Q109287,Y))),s(fun(Q109287,bool),S0))))
              & s(Q109287,i(s(fun(Q109287,Q109287),P0),s(Q109287,Y))) = s(Q109287,i(s(fun(Q109287,Q109287),P0),s(Q109287,X))) )
           => s(Q109287,Y) = s(Q109287,X) ) )
     => s(cart(real,Q109292),i(s(fun(fun(Q109287,cart(real,Q109292)),cart(real,Q109292)),i(s(fun(fun(Q109287,bool),fun(fun(Q109287,cart(real,Q109292)),cart(real,Q109292))),vsum),s(fun(Q109287,bool),S0))),s(fun(Q109287,cart(real,Q109292)),i(s(fun(fun(Q109287,Q109287),fun(Q109287,cart(real,Q109292))),i(s(fun(fun(Q109287,cart(real,Q109292)),fun(fun(Q109287,Q109287),fun(Q109287,cart(real,Q109292)))),o),s(fun(Q109287,cart(real,Q109292)),F0))),s(fun(Q109287,Q109287),P0))))) = s(cart(real,Q109292),i(s(fun(fun(Q109287,cart(real,Q109292)),cart(real,Q109292)),i(s(fun(fun(Q109287,bool),fun(fun(Q109287,cart(real,Q109292)),cart(real,Q109292))),vsum),s(fun(Q109287,bool),S0))),s(fun(Q109287,cart(real,Q109292)),F0))) ) ).

fof(aVECTORu_SUBu_RDISTRIB,axiom,
    ! [Q99877] : s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,a0))),s(real,b0))))),s(cart(real,Q99877),x))) = s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(cart(real,Q99877),fun(cart(real,Q99877),cart(real,Q99877))),vectoru_sub),s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,a0))),s(cart(real,Q99877),x))))),s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,b0))),s(cart(real,Q99877),x))))) ).

fof(aMATRIXu_VECTORu_MULu_LINEAR,axiom,
    ! [N,M,U_0] :
      ( ! [A5,X] : s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))) = s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,N),X)))
     => ! [A5] : p(s(bool,i(s(fun(fun(cart(real,N),cart(real,M)),bool),linear),s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),U_0),s(cart(cart(real,N),M),A5)))))) ) ).

fof(amatrix,axiom,
    ! [M,N,U_1] :
      ( ! [U_0] :
          ( ! [F0,I0] : s(cart(real,M),i(s(fun(fun(num,real),cart(real,M)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(num,fun(num,real))),U_1),s(fun(cart(real,M),cart(real,N)),F0))),s(num,I0))))) = s(cart(real,M),i(s(fun(num,cart(real,M)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(num,cart(real,M))),U_0),s(fun(cart(real,M),cart(real,N)),F0))),s(num,I0)))
         => ! [F0] : s(cart(cart(real,M),N),i(s(fun(fun(cart(real,M),cart(real,N)),cart(cart(real,M),N)),matrix),s(fun(cart(real,M),cart(real,N)),F0))) = s(cart(cart(real,M),N),i(s(fun(fun(num,cart(real,M)),cart(cart(real,M),N)),lambda),s(fun(num,cart(real,M)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(num,cart(real,M))),U_0),s(fun(cart(real,M),cart(real,N)),F0))))) )
     <= ! [F0,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(num,fun(num,real))),U_1),s(fun(cart(real,M),cart(real,N)),F0))),s(num,I0))),s(num,J0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),i(s(fun(num,cart(real,M)),basis),s(num,J0))))))),s(num,I0))) ) ).

fof(aDISTu_LIFT,axiom,
    ! [X,Y] : s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,X))),s(real,Y))))) = s(real,i(s(fun(prod(cart(real,n10),cart(real,n10)),real),distance),s(prod(cart(real,n10),cart(real,n10)),i(s(fun(cart(real,n10),prod(cart(real,n10),cart(real,n10))),i(s(fun(cart(real,n10),fun(cart(real,n10),prod(cart(real,n10),cart(real,n10)))),c_),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,Y))))))) ).

fof(avectoru_norm,axiom,
    ! [Q100593,X] : s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(cart(real,Q100593),real),i(s(fun(cart(real,Q100593),fun(cart(real,Q100593),real)),dot),s(cart(real,Q100593),X))),s(cart(real,Q100593),X))))) = s(real,i(s(fun(cart(real,Q100593),real),vectoru_norm),s(cart(real,Q100593),X))) ).

fof(aBASISu_COMPONENT,axiom,
    ! [N,K0,I0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
     => ? [V] :
          ( s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,K0))))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),i(s(fun(bool,fun(real,fun(real,real))),cond),s(bool,V))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
          & ( s(num,I0) = s(num,K0)
          <=> p(s(bool,V)) ) ) ) ).

fof(aBILINEARu_VSUMu_PARTIALu_PRE,axiom,
    ! [M,N,P,U_1] :
      ( ! [U_0] :
          ( ! [F0,G0,H0,M0,N0] :
              ( s(cart(real,P),i(s(fun(cart(real,P),cart(real,P)),i(s(fun(cart(real,P),fun(cart(real,P),cart(real,P))),i(s(fun(bool,fun(cart(real,P),fun(cart(real,P),cart(real,P)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,P),i(s(fun(cart(real,P),cart(real,P)),i(s(fun(cart(real,P),fun(cart(real,P),cart(real,P))),vectoru_sub),s(cart(real,P),i(s(fun(cart(real,P),cart(real,P)),i(s(fun(cart(real,P),fun(cart(real,P),cart(real,P))),vectoru_sub),s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,N0))))))),s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,M0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,M0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))),s(cart(real,P),i(s(fun(fun(num,cart(real,P)),cart(real,P)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,P)),cart(real,P))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,P)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,P))),i(s(fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P)))),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P))))),U_1),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(num,cart(real,M)),F0))),s(fun(num,cart(real,N)),G0))))))))),s(cart(real,P),i(s(fun(num,cart(real,P)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,P),i(s(fun(fun(num,cart(real,P)),cart(real,P)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,P)),cart(real,P))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,P)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,P))),i(s(fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P)))),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P))))),U_0),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(num,cart(real,M)),F0))),s(fun(num,cart(real,N)),G0)))))
             <= p(s(bool,i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),bool),bilinear),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0)))) )
         <= ! [H0,F0,G0,K0] : s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,K0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) = s(cart(real,P),i(s(fun(num,cart(real,P)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,P))),i(s(fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P)))),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P))))),U_0),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(num,cart(real,M)),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) )
     <= ! [H0,F0,G0,K0] : s(cart(real,P),i(s(fun(num,cart(real,P)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,P))),i(s(fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P)))),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P))))),U_1),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(num,cart(real,M)),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) = s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(cart(real,M),fun(cart(real,M),cart(real,M))),vectoru_sub),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,K0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0))))) ) ).

fof(aDOTu_RMUL,axiom,
    ! [Q100390,C0,X,Y] : s(real,i(s(fun(cart(real,Q100390),real),i(s(fun(cart(real,Q100390),fun(cart(real,Q100390),real)),dot),s(cart(real,Q100390),X))),s(cart(real,Q100390),i(s(fun(cart(real,Q100390),cart(real,Q100390)),i(s(fun(real,fun(cart(real,Q100390),cart(real,Q100390))),r_),s(real,C0))),s(cart(real,Q100390),Y))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(cart(real,Q100390),real),i(s(fun(cart(real,Q100390),fun(cart(real,Q100390),real)),dot),s(cart(real,Q100390),X))),s(cart(real,Q100390),Y))))) ).

fof(aSQRTu_POSu_LE,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X))))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aMATRIXu_NEGu_SUB,axiom,
    ! [N,M,A5,B0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),B0))),s(cart(cart(real,N),M),A5))) ).

fof(amatrixu_inv,axiom,
    ! [N,M,U_0] :
      ( ! [A5,AI_] :
          ( ( s(cart(cart(real,M),M),i(s(fun(num,cart(cart(real,M),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(cart(cart(real,M),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,M),N),cart(cart(real,M),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,M),N),AI_)))
            & s(cart(cart(real,N),N),i(s(fun(num,cart(cart(real,N),N)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(cart(cart(real,N),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),N)),i(s(fun(cart(cart(real,M),N),fun(cart(cart(real,N),M),cart(cart(real,N),N))),matrixu_mul),s(cart(cart(real,M),N),AI_))),s(cart(cart(real,N),M),A5))) )
        <=> p(s(bool,i(s(fun(cart(cart(real,M),N),bool),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,M),N),bool)),U_0),s(cart(cart(real,N),M),A5))),s(cart(cart(real,M),N),AI_)))) )
     => ! [A5] : s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),matrixu_inv),s(cart(cart(real,N),M),A5))) = s(cart(cart(real,M),N),i(s(fun(fun(cart(cart(real,M),N),bool),cart(cart(real,M),N)),h_),s(fun(cart(cart(real,M),N),bool),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,M),N),bool)),U_0),s(cart(cart(real,N),M),A5))))) ) ).

fof(aNORMu_EQu_0u_DOT,axiom,
    ! [Q102254,X] :
      ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102254),real),i(s(fun(cart(real,Q102254),fun(cart(real,Q102254),real)),dot),s(cart(real,Q102254),X))),s(cart(real,Q102254),X)))
    <=> s(real,i(s(fun(cart(real,Q102254),real),vectoru_norm),s(cart(real,Q102254),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aBASISu_EXPANSION,axiom,
    ! [N,U_0] :
      ( ! [X] : s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,cart(real,N)),i(s(fun(cart(real,N),fun(num,cart(real,N))),U_0),s(cart(real,N),X))))) = s(cart(real,N),X)
     <= ! [X,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(real,N),fun(num,cart(real,N))),U_0),s(cart(real,N),X))),s(num,I0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))) ) ).

fof(aMATRIXu_OFu_MATRIXu_VECTORu_MUL,axiom,
    ! [N,M,U_0] :
      ( ! [A5] : s(cart(cart(real,N),M),A5) = s(cart(cart(real,N),M),i(s(fun(fun(cart(real,N),cart(real,M)),cart(cart(real,N),M)),matrix),s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),U_0),s(cart(cart(real,N),M),A5)))))
     <= ! [A5,X] : s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))) = s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))) ) ).

fof(aMATRIXu_VECTORu_MULu_RZERO,axiom,
    ! [M,N,A5] : s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),i(s(fun(num,cart(real,M)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aLINEARu_I,axiom,
    ! [Q111690] : p(s(bool,i(s(fun(fun(cart(real,Q111690),cart(real,Q111690)),bool),linear),s(fun(cart(real,Q111690),cart(real,Q111690)),i1)))) ).

fof(aORTHOGONALu_LNEG,axiom,
    ! [Q110704,X,Y] : s(bool,i(s(fun(cart(real,Q110704),bool),i(s(fun(cart(real,Q110704),fun(cart(real,Q110704),bool)),orthogonal),s(cart(real,Q110704),i(s(fun(cart(real,Q110704),cart(real,Q110704)),vectoru_neg),s(cart(real,Q110704),X))))),s(cart(real,Q110704),Y))) = s(bool,i(s(fun(cart(real,Q110704),bool),i(s(fun(cart(real,Q110704),fun(cart(real,Q110704),bool)),orthogonal),s(cart(real,Q110704),X))),s(cart(real,Q110704),Y))) ).

fof(aBASISu_EQu_0,axiom,
    ! [N,I0] :
      ( ~ p(s(bool,i(s(fun(fun(num,bool),bool),i(s(fun(num,fun(fun(num,bool),bool)),in),s(num,I0))),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))))
    <=> s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))) ) ).

fof(aVECTORu_ADDu_SUB,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),x))) = s(cart(real,N),y) ).

fof(aEXISTSu_DROP,axiom,
    ( ? [X] : p(s(bool,i(s(fun(real,bool),p0),s(real,X))))
  <=> ? [X] : p(s(bool,i(s(fun(real,bool),p0),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X)))))) ) ).

fof(aDOTu_RSUB,axiom,
    ! [Q100339,X,Y,Z0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),Y))))),s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),Z0))))) = s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),i(s(fun(cart(real,Q100339),cart(real,Q100339)),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),cart(real,Q100339))),vectoru_sub),s(cart(real,Q100339),Y))),s(cart(real,Q100339),Z0))))) ).

fof(aCONDu_COMPONENT,axiom,
    ! [Q99503,Q99508] : s(Q99503,i(s(fun(Q99503,Q99503),i(s(fun(Q99503,fun(Q99503,Q99503)),i(s(fun(bool,fun(Q99503,fun(Q99503,Q99503))),cond),s(bool,b0))),s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),x))),s(num,i0))))),s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),y))),s(num,i0))))) = s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),i(s(fun(cart(Q99503,Q99508),cart(Q99503,Q99508)),i(s(fun(cart(Q99503,Q99508),fun(cart(Q99503,Q99508),cart(Q99503,Q99508))),i(s(fun(bool,fun(cart(Q99503,Q99508),fun(cart(Q99503,Q99508),cart(Q99503,Q99508)))),cond),s(bool,b0))),s(cart(Q99503,Q99508),x))),s(cart(Q99503,Q99508),y))))),s(num,i0))) ).

fof(aVSUMu_COMBINEu_R,axiom,
    ! [Q109210,F0,M0,N0,P0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,N0))),s(num,P0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) )
     => s(cart(real,Q109210),i(s(fun(cart(real,Q109210),cart(real,Q109210)),i(s(fun(cart(real,Q109210),fun(cart(real,Q109210),cart(real,Q109210))),vectoru_add),s(cart(real,Q109210),i(s(fun(fun(num,cart(real,Q109210)),cart(real,Q109210)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109210)),cart(real,Q109210))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q109210)),F0))))),s(cart(real,Q109210),i(s(fun(fun(num,cart(real,Q109210)),cart(real,Q109210)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109210)),cart(real,Q109210))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,P0))))),s(fun(num,cart(real,Q109210)),F0))))) = s(cart(real,Q109210),i(s(fun(fun(num,cart(real,Q109210)),cart(real,Q109210)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109210)),cart(real,Q109210))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,P0))))),s(fun(num,cart(real,Q109210)),F0))) ) ).

fof(aDOTu_LSUB,axiom,
    ! [Q100306,X,Y,Z0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),X))),s(cart(real,Q100306),Z0))))),s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),Y))),s(cart(real,Q100306),Z0))))) = s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),i(s(fun(cart(real,Q100306),cart(real,Q100306)),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),cart(real,Q100306))),vectoru_sub),s(cart(real,Q100306),X))),s(cart(real,Q100306),Y))))),s(cart(real,Q100306),Z0))) ).

fof(aVSUMu_RESTRICTu_SET,axiom,
    ! [Q106500,Q106502,U_1] :
      ( ! [P0,F0,X] : s(cart(real,Q106502),i(s(fun(cart(real,Q106502),cart(real,Q106502)),i(s(fun(cart(real,Q106502),fun(cart(real,Q106502),cart(real,Q106502))),i(s(fun(bool,fun(cart(real,Q106502),fun(cart(real,Q106502),cart(real,Q106502)))),cond),s(bool,i(s(fun(Q106500,bool),P0),s(Q106500,X))))),s(cart(real,Q106502),i(s(fun(Q106500,cart(real,Q106502)),F0),s(Q106500,X))))),s(cart(real,Q106502),i(s(fun(num,cart(real,Q106502)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q106502),i(s(fun(Q106500,cart(real,Q106502)),i(s(fun(fun(Q106500,cart(real,Q106502)),fun(Q106500,cart(real,Q106502))),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,cart(real,Q106502)),fun(Q106500,cart(real,Q106502)))),U_1),s(fun(Q106500,bool),P0))),s(fun(Q106500,cart(real,Q106502)),F0))),s(Q106500,X)))
     => ! [U_0] :
          ( ! [P0,S0,F0] : s(cart(real,Q106502),i(s(fun(fun(Q106500,cart(real,Q106502)),cart(real,Q106502)),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,cart(real,Q106502)),cart(real,Q106502))),vsum),s(fun(Q106500,bool),i(s(fun(fun(Q106500,bool),fun(Q106500,bool)),gspec),s(fun(Q106500,bool),i(s(fun(fun(Q106500,bool),fun(Q106500,bool)),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,bool),fun(Q106500,bool))),U_0),s(fun(Q106500,bool),S0))),s(fun(Q106500,bool),P0))))))),s(fun(Q106500,cart(real,Q106502)),F0))) = s(cart(real,Q106502),i(s(fun(fun(Q106500,cart(real,Q106502)),cart(real,Q106502)),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,cart(real,Q106502)),cart(real,Q106502))),vsum),s(fun(Q106500,bool),S0))),s(fun(Q106500,cart(real,Q106502)),i(s(fun(fun(Q106500,cart(real,Q106502)),fun(Q106500,cart(real,Q106502))),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,cart(real,Q106502)),fun(Q106500,cart(real,Q106502)))),U_1),s(fun(Q106500,bool),P0))),s(fun(Q106500,cart(real,Q106502)),F0)))))
         <= ! [S0,P0,GENR_PVARR_278] :
              ( ? [X,V] :
                  ( p(s(bool,i(s(fun(Q106500,bool),i(s(fun(bool,fun(Q106500,bool)),i(s(fun(Q106500,fun(bool,fun(Q106500,bool))),setspec),s(Q106500,GENR_PVARR_278))),s(bool,V))),s(Q106500,X))))
                  & ( p(s(bool,V))
                  <=> ( p(s(bool,i(s(fun(fun(Q106500,bool),bool),i(s(fun(Q106500,fun(fun(Q106500,bool),bool)),in),s(Q106500,X))),s(fun(Q106500,bool),S0))))
                      & p(s(bool,i(s(fun(Q106500,bool),P0),s(Q106500,X)))) ) ) )
            <=> p(s(bool,i(s(fun(Q106500,bool),i(s(fun(fun(Q106500,bool),fun(Q106500,bool)),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,bool),fun(Q106500,bool))),U_0),s(fun(Q106500,bool),S0))),s(fun(Q106500,bool),P0))),s(Q106500,GENR_PVARR_278)))) ) ) ) ).

fof(aORTHOGONALu_RVSUM,axiom,
    ! [A,N,F0,S0,X] :
      ( ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0))))
        & ! [Y] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,Y))),s(fun(A,bool),S0))))
           => p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(real,N),fun(cart(real,N),bool)),orthogonal),s(cart(real,N),X))),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,Y)))))) ) )
     => p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(real,N),fun(cart(real,N),bool)),orthogonal),s(cart(real,N),X))),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0)))))) ) ).

fof(aABSu_DROP,axiom,
    ! [X] : s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))) = s(real,i(s(fun(cart(real,n10),real),vectoru_norm),s(cart(real,n10),X))) ).

fof(aDROPu_SUB,axiom,
    ! [X,Y] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),Y))))) = s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),i(s(fun(cart(real,n10),fun(cart(real,n10),cart(real,n10))),vectoru_sub),s(cart(real,n10),X))),s(cart(real,n10),Y))))) ).

fof(aVSUMu_EQu_NUMSEG,axiom,
    ! [Q107021,F0,G0,M0,N0] :
      ( ! [X] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,X))),s(num,N0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,X)))) )
         => s(cart(real,Q107021),i(s(fun(num,cart(real,Q107021)),G0),s(num,X))) = s(cart(real,Q107021),i(s(fun(num,cart(real,Q107021)),F0),s(num,X))) )
     => s(cart(real,Q107021),i(s(fun(fun(num,cart(real,Q107021)),cart(real,Q107021)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107021)),cart(real,Q107021))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107021)),G0))) = s(cart(real,Q107021),i(s(fun(fun(num,cart(real,Q107021)),cart(real,Q107021)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107021)),cart(real,Q107021))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107021)),F0))) ) ).

fof(aVECTORu_ADDu_LDISTRIB,axiom,
    ! [Q99811] : s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(cart(real,Q99811),fun(cart(real,Q99811),cart(real,Q99811))),vectoru_add),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),x))))),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),y))))) = s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(cart(real,Q99811),fun(cart(real,Q99811),cart(real,Q99811))),vectoru_add),s(cart(real,Q99811),x))),s(cart(real,Q99811),y))))) ).

fof(aBASISu_NE,axiom,
    ! [N,I0,J0] :
      ( s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,J0))) != s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0)))
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & s(num,J0) != s(num,I0)
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) ) ) ).

fof(aLINEARu_ID,axiom,
    ! [Q111683,U_0] :
      ( ! [X] : s(cart(real,Q111683),i(s(fun(cart(real,Q111683),cart(real,Q111683)),U_0),s(cart(real,Q111683),X))) = s(cart(real,Q111683),X)
     => p(s(bool,i(s(fun(fun(cart(real,Q111683),cart(real,Q111683)),bool),linear),s(fun(cart(real,Q111683),cart(real,Q111683)),U_0)))) ) ).

fof(aNORMu_LEu_0,axiom,
    ! [Q102367,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q102367),real),vectoru_norm),s(cart(real,Q102367),X))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))))
    <=> s(cart(real,Q102367),i(s(fun(num,cart(real,Q102367)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q102367),X) ) ).

fof(aVSUMu_SINGu_NUMSEG,axiom,
    ! [Q109587] : s(cart(real,Q109587),i(s(fun(num,cart(real,Q109587)),f),s(num,n))) = s(cart(real,Q109587),i(s(fun(fun(num,cart(real,Q109587)),cart(real,Q109587)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109587)),cart(real,Q109587))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,n))),s(num,n))))),s(fun(num,cart(real,Q109587)),f))) ).

fof(aMATRIXu_ADDu_ACu_conjunct2,axiom,
    ! [N,M] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),a))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),b))),s(cart(cart(real,N),M),c0))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),b))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),a))),s(cart(cart(real,N),M),c0))))) ).

fof(aONORMu_TRIANGLEu_LE,axiom,
    ! [Q118562,Q118573,U_0] :
      ( ! [F0,G0,X] : s(cart(real,Q118573),i(s(fun(cart(real,Q118562),cart(real,Q118573)),i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),fun(cart(real,Q118562),cart(real,Q118573))),i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),fun(fun(cart(real,Q118562),cart(real,Q118573)),fun(cart(real,Q118562),cart(real,Q118573)))),U_0),s(fun(cart(real,Q118562),cart(real,Q118573)),F0))),s(fun(cart(real,Q118562),cart(real,Q118573)),G0))),s(cart(real,Q118562),X))) = s(cart(real,Q118573),i(s(fun(cart(real,Q118573),cart(real,Q118573)),i(s(fun(cart(real,Q118573),fun(cart(real,Q118573),cart(real,Q118573))),vectoru_add),s(cart(real,Q118573),i(s(fun(cart(real,Q118562),cart(real,Q118573)),F0),s(cart(real,Q118562),X))))),s(cart(real,Q118573),i(s(fun(cart(real,Q118562),cart(real,Q118573)),G0),s(cart(real,Q118562),X)))))
     => ! [F0,G0] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),real),onorm),s(fun(cart(real,Q118562),cart(real,Q118573)),i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),fun(cart(real,Q118562),cart(real,Q118573))),i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),fun(fun(cart(real,Q118562),cart(real,Q118573)),fun(cart(real,Q118562),cart(real,Q118573)))),U_0),s(fun(cart(real,Q118562),cart(real,Q118573)),F0))),s(fun(cart(real,Q118562),cart(real,Q118573)),G0))))))),s(real,e0))))
         <= ( p(s(bool,i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),bool),linear),s(fun(cart(real,Q118562),cart(real,Q118573)),F0))))
            & p(s(bool,i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),bool),linear),s(fun(cart(real,Q118562),cart(real,Q118573)),G0))))
            & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),real),onorm),s(fun(cart(real,Q118562),cart(real,Q118573)),F0))))),s(real,i(s(fun(fun(cart(real,Q118562),cart(real,Q118573)),real),onorm),s(fun(cart(real,Q118562),cart(real,Q118573)),G0))))))),s(real,e0)))) ) ) ) ).

fof(aVECTORu_SUBu_RZERO,axiom,
    ! [Q99936] : s(cart(real,Q99936),x) = s(cart(real,Q99936),i(s(fun(cart(real,Q99936),cart(real,Q99936)),i(s(fun(cart(real,Q99936),fun(cart(real,Q99936),cart(real,Q99936))),vectoru_sub),s(cart(real,Q99936),x))),s(cart(real,Q99936),i(s(fun(num,cart(real,Q99936)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aLINEARu_COMPOSEu_ADD,axiom,
    ! [Q111612,Q111621,U_0] :
      ( ! [F0,G0,X] : s(cart(real,Q111621),i(s(fun(cart(real,Q111621),cart(real,Q111621)),i(s(fun(cart(real,Q111621),fun(cart(real,Q111621),cart(real,Q111621))),vectoru_add),s(cart(real,Q111621),i(s(fun(cart(real,Q111612),cart(real,Q111621)),F0),s(cart(real,Q111612),X))))),s(cart(real,Q111621),i(s(fun(cart(real,Q111612),cart(real,Q111621)),G0),s(cart(real,Q111612),X))))) = s(cart(real,Q111621),i(s(fun(cart(real,Q111612),cart(real,Q111621)),i(s(fun(fun(cart(real,Q111612),cart(real,Q111621)),fun(cart(real,Q111612),cart(real,Q111621))),i(s(fun(fun(cart(real,Q111612),cart(real,Q111621)),fun(fun(cart(real,Q111612),cart(real,Q111621)),fun(cart(real,Q111612),cart(real,Q111621)))),U_0),s(fun(cart(real,Q111612),cart(real,Q111621)),F0))),s(fun(cart(real,Q111612),cart(real,Q111621)),G0))),s(cart(real,Q111612),X)))
     => ! [F0,G0] :
          ( p(s(bool,i(s(fun(fun(cart(real,Q111612),cart(real,Q111621)),bool),linear),s(fun(cart(real,Q111612),cart(real,Q111621)),i(s(fun(fun(cart(real,Q111612),cart(real,Q111621)),fun(cart(real,Q111612),cart(real,Q111621))),i(s(fun(fun(cart(real,Q111612),cart(real,Q111621)),fun(fun(cart(real,Q111612),cart(real,Q111621)),fun(cart(real,Q111612),cart(real,Q111621)))),U_0),s(fun(cart(real,Q111612),cart(real,Q111621)),F0))),s(fun(cart(real,Q111612),cart(real,Q111621)),G0))))))
         <= ( p(s(bool,i(s(fun(fun(cart(real,Q111612),cart(real,Q111621)),bool),linear),s(fun(cart(real,Q111612),cart(real,Q111621)),F0))))
            & p(s(bool,i(s(fun(fun(cart(real,Q111612),cart(real,Q111621)),bool),linear),s(fun(cart(real,Q111612),cart(real,Q111621)),G0)))) ) ) ) ).

fof(aVSUMu_GROUP,axiom,
    ! [B,A,Q107150,U_1] :
      ( ! [U_0] :
          ( ! [F0,G0,S0,T0] :
              ( s(cart(real,Q107150),i(s(fun(fun(B,cart(real,Q107150)),cart(real,Q107150)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,Q107150)),cart(real,Q107150))),vsum),s(fun(B,bool),T0))),s(fun(B,cart(real,Q107150)),i(s(fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150))),i(s(fun(fun(A,B),fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150)))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150))))),U_0),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(fun(A,cart(real,Q107150)),G0))))) = s(cart(real,Q107150),i(s(fun(fun(A,cart(real,Q107150)),cart(real,Q107150)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107150)),cart(real,Q107150))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107150)),G0)))
             <= ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0))))
                & p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(fun(B,bool),fun(fun(B,bool),bool)),subset),s(fun(B,bool),i(s(fun(fun(A,bool),fun(B,bool)),i(s(fun(fun(A,B),fun(fun(A,bool),fun(B,bool))),image),s(fun(A,B),F0))),s(fun(A,bool),S0))))),s(fun(B,bool),T0)))) ) )
         <= ! [S0,F0,G0,Y] : s(cart(real,Q107150),i(s(fun(B,cart(real,Q107150)),i(s(fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150))),i(s(fun(fun(A,B),fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150)))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150))))),U_0),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(fun(A,cart(real,Q107150)),G0))),s(B,Y))) = s(cart(real,Q107150),i(s(fun(fun(A,cart(real,Q107150)),cart(real,Q107150)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107150)),cart(real,Q107150))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),gspec),s(fun(A,bool),i(s(fun(B,fun(A,bool)),i(s(fun(fun(A,B),fun(B,fun(A,bool))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(B,fun(A,bool)))),U_1),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(B,Y))))))),s(fun(A,cart(real,Q107150)),G0))) )
     <= ! [S0,F0,Y,GENR_PVARR_282] :
          ( ? [X,V] :
              ( ( ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
                  & s(B,Y) = s(B,i(s(fun(A,B),F0),s(A,X))) )
              <=> p(s(bool,V)) )
              & p(s(bool,i(s(fun(A,bool),i(s(fun(bool,fun(A,bool)),i(s(fun(A,fun(bool,fun(A,bool))),setspec),s(A,GENR_PVARR_282))),s(bool,V))),s(A,X)))) )
        <=> p(s(bool,i(s(fun(A,bool),i(s(fun(B,fun(A,bool)),i(s(fun(fun(A,B),fun(B,fun(A,bool))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(B,fun(A,bool)))),U_1),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(B,Y))),s(A,GENR_PVARR_282)))) ) ) ).

fof(aDOTu_LMUL,axiom,
    ! [Q100362,C0,X,Y] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(cart(real,Q100362),real),i(s(fun(cart(real,Q100362),fun(cart(real,Q100362),real)),dot),s(cart(real,Q100362),X))),s(cart(real,Q100362),Y))))) = s(real,i(s(fun(cart(real,Q100362),real),i(s(fun(cart(real,Q100362),fun(cart(real,Q100362),real)),dot),s(cart(real,Q100362),i(s(fun(cart(real,Q100362),cart(real,Q100362)),i(s(fun(real,fun(cart(real,Q100362),cart(real,Q100362))),r_),s(real,C0))),s(cart(real,Q100362),X))))),s(cart(real,Q100362),Y))) ).

fof(aDISTu_TRIANGLEu_ADDu_HALF,axiom,
    ! [N,X,XI_,Y,YI_] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),X))),s(cart(real,N),XI_))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),Y))),s(cart(real,N),YI_))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),XI_))),s(cart(real,N),YI_))))))))),s(real,e0)))) ) ).

fof(aINu_IMAGEu_LIFTu_DROPu_conjunct1,axiom,
    ! [X,S0] : s(bool,i(s(fun(fun(real,bool),bool),i(s(fun(real,fun(fun(real,bool),bool)),in),s(real,X))),s(fun(real,bool),i(s(fun(fun(cart(real,n10),bool),fun(real,bool)),i(s(fun(fun(cart(real,n10),real),fun(fun(cart(real,n10),bool),fun(real,bool))),image),s(fun(cart(real,n10),real),drop))),s(fun(cart(real,n10),bool),S0))))) = s(bool,i(s(fun(fun(cart(real,n10),bool),bool),i(s(fun(cart(real,n10),fun(fun(cart(real,n10),bool),bool)),in),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))),s(fun(cart(real,n10),bool),S0))) ).

fof(aNORMu_TRIANGLE,axiom,
    ! [Q102822,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q102822),real),vectoru_norm),s(cart(real,Q102822),i(s(fun(cart(real,Q102822),cart(real,Q102822)),i(s(fun(cart(real,Q102822),fun(cart(real,Q102822),cart(real,Q102822))),vectoru_add),s(cart(real,Q102822),X))),s(cart(real,Q102822),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q102822),real),vectoru_norm),s(cart(real,Q102822),X))))),s(real,i(s(fun(cart(real,Q102822),real),vectoru_norm),s(cart(real,Q102822),Y)))))))) ).

fof(aBILINEARu_VSUMu_PARTIALu_SUC,axiom,
    ! [M,N,P,U_1] :
      ( ! [H0,F0,G0,K0] : s(cart(real,P),i(s(fun(num,cart(real,P)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,P))),i(s(fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P)))),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P))))),U_1),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(num,cart(real,M)),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) = s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(cart(real,M),fun(cart(real,M),cart(real,M))),vectoru_sub),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,K0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))
     => ! [U_0] :
          ( ! [H0,F0,G0,K0] : s(cart(real,P),i(s(fun(num,cart(real,P)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,P))),i(s(fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P)))),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P))))),U_0),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(num,cart(real,M)),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) = s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,K0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0)))))))
         => ! [F0,G0,H0,M0,N0] :
              ( p(s(bool,i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),bool),bilinear),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))))
             => s(cart(real,P),i(s(fun(cart(real,P),cart(real,P)),i(s(fun(cart(real,P),fun(cart(real,P),cart(real,P))),i(s(fun(bool,fun(cart(real,P),fun(cart(real,P),cart(real,P)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,P),i(s(fun(cart(real,P),cart(real,P)),i(s(fun(cart(real,P),fun(cart(real,P),cart(real,P))),vectoru_sub),s(cart(real,P),i(s(fun(cart(real,P),cart(real,P)),i(s(fun(cart(real,P),fun(cart(real,P),cart(real,P))),vectoru_sub),s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(num,cart(real,M)),F0),s(num,M0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,M0))))))))),s(cart(real,P),i(s(fun(fun(num,cart(real,P)),cart(real,P)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,P)),cart(real,P))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,P)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,P))),i(s(fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P)))),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P))))),U_1),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(num,cart(real,M)),F0))),s(fun(num,cart(real,N)),G0))))))))),s(cart(real,P),i(s(fun(num,cart(real,P)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,P),i(s(fun(fun(num,cart(real,P)),cart(real,P)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,P)),cart(real,P))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,P)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,P))),i(s(fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P)))),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(num,cart(real,M)),fun(fun(num,cart(real,N)),fun(num,cart(real,P))))),U_0),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(num,cart(real,M)),F0))),s(fun(num,cart(real,N)),G0))))) ) ) ) ).

fof(aVECTORu_SUBu_COMPONENT,axiom,
    ! [N,X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) ).

fof(aVECTORu_ADDu_LID,axiom,
    ! [Q99561,X] : s(cart(real,Q99561),i(s(fun(cart(real,Q99561),cart(real,Q99561)),i(s(fun(cart(real,Q99561),fun(cart(real,Q99561),cart(real,Q99561))),vectoru_add),s(cart(real,Q99561),i(s(fun(num,cart(real,Q99561)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q99561),X))) = s(cart(real,Q99561),X) ).

fof(aVECTORu_MULu_LZERO,axiom,
    ! [Q99762,X] : s(cart(real,Q99762),i(s(fun(cart(real,Q99762),cart(real,Q99762)),i(s(fun(real,fun(cart(real,Q99762),cart(real,Q99762))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q99762),X))) = s(cart(real,Q99762),i(s(fun(num,cart(real,Q99762)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aVSUMu_UNIONu_RZERO,axiom,
    ! [A,N,F0,U,V] :
      ( s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),union),s(fun(A,bool),U))),s(fun(A,bool),V))))),s(fun(A,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),U))),s(fun(A,cart(real,N)),F0)))
     <= ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),U))))
        & ! [X] :
            ( s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
           <= ( ~ p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),U))))
              & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),V)))) ) ) ) ) ).

fof(atransp,axiom,
    ! [N,M,U_1] :
      ( ! [U_0] :
          ( ! [A5] : s(cart(cart(real,M),N),i(s(fun(fun(num,cart(real,M)),cart(cart(real,M),N)),lambda),s(fun(num,cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,M))),U_0),s(cart(cart(real,N),M),A5))))) = s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5)))
         <= ! [A5,I0] : s(cart(real,M),i(s(fun(fun(num,real),cart(real,M)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),U_1),s(cart(cart(real,N),M),A5))),s(num,I0))))) = s(cart(real,M),i(s(fun(num,cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,M))),U_0),s(cart(cart(real,N),M),A5))),s(num,I0))) )
     <= ! [A5,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),U_1),s(cart(cart(real,N),M),A5))),s(num,I0))),s(num,J0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,J0))))),s(num,I0))) ) ).

fof(aLINEARu_COMPONENTWISE,axiom,
    ! [M,N,U_0] :
      ( ! [X,F0,J0,I0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(num,fun(num,real))),i(s(fun(cart(real,M),fun(fun(cart(real,M),cart(real,N)),fun(num,fun(num,real)))),U_0),s(cart(real,M),X))),s(fun(cart(real,M),cart(real,N)),F0))),s(num,J0))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,M),fun(num,real)),d_),s(cart(real,M),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),i(s(fun(num,cart(real,M)),basis),s(num,I0))))))),s(num,J0)))))
     => ! [F0] :
          ( ! [X,J0] :
              ( s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(M,bool),num),dimindex),s(fun(M,bool),univ))))))),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(num,fun(num,real))),i(s(fun(cart(real,M),fun(fun(cart(real,M),cart(real,N)),fun(num,fun(num,real)))),U_0),s(cart(real,M),X))),s(fun(cart(real,M),cart(real,N)),F0))),s(num,J0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))),s(num,J0)))
             <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0))))
                & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) )
         <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ) ).

fof(aSQRTu_POW2,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
    <=> s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,X) ) ).

fof(aFORALLu_2,axiom,
    ! [P0] :
      ( ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) )
         => p(s(bool,i(s(fun(num,bool),P0),s(num,I0)))) )
    <=> ( p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) ) ).

fof(aVECTORu_MULu_EQu_0,axiom,
    ! [Q102400,A5,X] :
      ( ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,A5)
        | s(cart(real,Q102400),X) = s(cart(real,Q102400),i(s(fun(num,cart(real,Q102400)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
    <=> s(cart(real,Q102400),i(s(fun(cart(real,Q102400),cart(real,Q102400)),i(s(fun(real,fun(cart(real,Q102400),cart(real,Q102400))),r_),s(real,A5))),s(cart(real,Q102400),X))) = s(cart(real,Q102400),i(s(fun(num,cart(real,Q102400)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(avectoru_sub,axiom,
    ! [N,U_0] :
      ( ! [X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y)))))
     <= ! [X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) ) ).

fof(aFINITEu_ROWS,axiom,
    ! [N,M,A5] : p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),finite),s(fun(cart(real,N),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),bool)),rows),s(cart(cart(real,N),M),A5)))))) ).

fof(aFORALLu_VECTORu_1,axiom,
    ! [A] :
      ( ! [X] : p(s(bool,i(s(fun(cart(A,n10),bool),p0),s(cart(A,n10),i(s(fun(list(A),cart(A,n10)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,X))),s(list(A),nil))))))))
    <=> ! [V] : p(s(bool,i(s(fun(cart(A,n10),bool),p0),s(cart(A,n10),V)))) ) ).

fof(aNORMu_BASISu_1,axiom,
    ! [Q110060] : s(real,i(s(fun(cart(real,Q110060),real),vectoru_norm),s(cart(real,Q110060),i(s(fun(num,cart(real,Q110060)),basis),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aonorm,axiom,
    ! [M,N,U_0] :
      ( ! [F0] : s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),F0))) = s(real,i(s(fun(fun(real,bool),real),sup),s(fun(real,bool),i(s(fun(fun(real,bool),fun(real,bool)),gspec),s(fun(real,bool),i(s(fun(fun(cart(real,M),cart(real,N)),fun(real,bool)),U_0),s(fun(cart(real,M),cart(real,N)),F0)))))))
     <= ! [F0,GENR_PVARR_293] :
          ( ? [X,V] :
              ( ( p(s(bool,V))
              <=> s(real,i(s(fun(cart(real,M),real),vectoru_norm),s(cart(real,M),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) )
              & p(s(bool,i(s(fun(real,bool),i(s(fun(bool,fun(real,bool)),i(s(fun(real,fun(bool,fun(real,bool))),setspec),s(real,GENR_PVARR_293))),s(bool,V))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X)))))))) )
        <=> p(s(bool,i(s(fun(real,bool),i(s(fun(fun(cart(real,M),cart(real,N)),fun(real,bool)),U_0),s(fun(cart(real,M),cart(real,N)),F0))),s(real,GENR_PVARR_293)))) ) ) ).

fof(aDISTu_POSu_LE,axiom,
    ! [Q104710,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(prod(cart(real,Q104710),cart(real,Q104710)),real),distance),s(prod(cart(real,Q104710),cart(real,Q104710)),i(s(fun(cart(real,Q104710),prod(cart(real,Q104710),cart(real,Q104710))),i(s(fun(cart(real,Q104710),fun(cart(real,Q104710),prod(cart(real,Q104710),cart(real,Q104710)))),c_),s(cart(real,Q104710),X))),s(cart(real,Q104710),Y)))))))) ).

fof(aVECTORu_CHOOSEu_SIZE,axiom,
    ! [N,C0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,C0))))
     => ? [X] : s(real,C0) = s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))) ) ).

fof(aDOTu_SYM,axiom,
    ! [Q100205,X,Y] : s(real,i(s(fun(cart(real,Q100205),real),i(s(fun(cart(real,Q100205),fun(cart(real,Q100205),real)),dot),s(cart(real,Q100205),X))),s(cart(real,Q100205),Y))) = s(real,i(s(fun(cart(real,Q100205),real),i(s(fun(cart(real,Q100205),fun(cart(real,Q100205),real)),dot),s(cart(real,Q100205),Y))),s(cart(real,Q100205),X))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct7,axiom,
    ! [Q111056,A5,X] :
      ( p(s(bool,i(s(fun(cart(real,Q111056),bool),i(s(fun(cart(real,Q111056),fun(cart(real,Q111056),bool)),orthogonal),s(cart(real,Q111056),i(s(fun(cart(real,Q111056),cart(real,Q111056)),vectoru_neg),s(cart(real,Q111056),X))))),s(cart(real,Q111056),A5))))
     <= p(s(bool,i(s(fun(cart(real,Q111056),bool),i(s(fun(cart(real,Q111056),fun(cart(real,Q111056),bool)),orthogonal),s(cart(real,Q111056),X))),s(cart(real,Q111056),A5)))) ) ).

fof(aMATRIXu_VECTORu_MULu_ADDu_LDISTRIB,axiom,
    ! [N,M,A5,X,Y] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(cart(real,M),fun(cart(real,M),cart(real,M))),vectoru_add),s(cart(real,M),X))),s(cart(real,M),Y))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),X))))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),Y))))) ).

fof(aFORALLu_VECTORu_2,axiom,
    ! [A] :
      ( ! [V] : p(s(bool,i(s(fun(cart(A,n20),bool),p0),s(cart(A,n20),V))))
    <=> ! [X,Y] : p(s(bool,i(s(fun(cart(A,n20),bool),p0),s(cart(A,n20),i(s(fun(list(A),cart(A,n20)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,X))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,Y))),s(list(A),nil)))))))))) ) ).

fof(aVSUMu_CONSTu_NUMSEG,axiom,
    ! [Q108721,U_0] :
      ( ! [C0,N0] : s(cart(real,Q108721),i(s(fun(num,cart(real,Q108721)),i(s(fun(cart(real,Q108721),fun(num,cart(real,Q108721))),U_0),s(cart(real,Q108721),C0))),s(num,N0))) = s(cart(real,Q108721),C0)
     => ! [C0,M0,N0] : s(cart(real,Q108721),i(s(fun(cart(real,Q108721),cart(real,Q108721)),i(s(fun(real,fun(cart(real,Q108721),cart(real,Q108721))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,M0))))))),s(cart(real,Q108721),C0))) = s(cart(real,Q108721),i(s(fun(fun(num,cart(real,Q108721)),cart(real,Q108721)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108721)),cart(real,Q108721))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q108721)),i(s(fun(cart(real,Q108721),fun(num,cart(real,Q108721))),U_0),s(cart(real,Q108721),C0))))) ) ).

fof(aDROPu_EQ,axiom,
    ! [X,Y] :
      ( s(cart(real,n10),X) = s(cart(real,n10),Y)
    <=> s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))) = s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),Y))) ) ).

fof(amatrixu_vectoru_mul,axiom,
    ! [M,N,U_1] :
      ( ! [U_0] :
          ( ! [A5,X] : s(cart(real,M),i(s(fun(fun(num,real),cart(real,M)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))))) = s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X)))
         <= ! [A5,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(num,fun(cart(real,N),fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(num,fun(cart(real,N),fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(num,I0))),s(cart(real,N),X))))) )
     <= ! [A5,I0,X,J0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(num,fun(cart(real,N),fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(num,fun(cart(real,N),fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(num,I0))),s(cart(real,N),X))),s(num,J0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,J0))))) ) ).

fof(aFORALLu_DIMINDEXu_1,axiom,
    ( ! [I0] :
        ( p(s(bool,i(s(fun(num,bool),p0),s(num,I0))))
       <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
          & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(n10,bool),num),dimindex),s(fun(n10,bool),univ)))))) ) )
  <=> p(s(bool,i(s(fun(num,bool),p0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) ).

fof(aEXISTSu_LIFT,axiom,
    ( ? [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),X))))
  <=> ? [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X)))))) ) ).

fof(aVECTORu_MULu_RNEG,axiom,
    ! [Q100046] : s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),i(s(fun(real,fun(cart(real,Q100046),cart(real,Q100046))),r_),s(real,c))),s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),vectoru_neg),s(cart(real,Q100046),x))))) = s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),vectoru_neg),s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),i(s(fun(real,fun(cart(real,Q100046),cart(real,Q100046))),r_),s(real,c))),s(cart(real,Q100046),x))))) ).

fof(aNORMu_LEu_COMPONENTWISE,axiom,
    ! [N,X,Y] :
      ( ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))))),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0)))))))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y)))))) ) ).

fof(aVSUMu_RESTRICT,axiom,
    ! [Q106444,Q106450,U_0] :
      ( ! [F0,S0] :
          ( s(cart(real,Q106450),i(s(fun(fun(Q106444,cart(real,Q106450)),cart(real,Q106450)),i(s(fun(fun(Q106444,bool),fun(fun(Q106444,cart(real,Q106450)),cart(real,Q106450))),vsum),s(fun(Q106444,bool),S0))),s(fun(Q106444,cart(real,Q106450)),i(s(fun(fun(Q106444,cart(real,Q106450)),fun(Q106444,cart(real,Q106450))),i(s(fun(fun(Q106444,bool),fun(fun(Q106444,cart(real,Q106450)),fun(Q106444,cart(real,Q106450)))),U_0),s(fun(Q106444,bool),S0))),s(fun(Q106444,cart(real,Q106450)),F0))))) = s(cart(real,Q106450),i(s(fun(fun(Q106444,cart(real,Q106450)),cart(real,Q106450)),i(s(fun(fun(Q106444,bool),fun(fun(Q106444,cart(real,Q106450)),cart(real,Q106450))),vsum),s(fun(Q106444,bool),S0))),s(fun(Q106444,cart(real,Q106450)),F0)))
         <= p(s(bool,i(s(fun(fun(Q106444,bool),bool),finite),s(fun(Q106444,bool),S0)))) )
     <= ! [S0,F0,X] : s(cart(real,Q106450),i(s(fun(cart(real,Q106450),cart(real,Q106450)),i(s(fun(cart(real,Q106450),fun(cart(real,Q106450),cart(real,Q106450))),i(s(fun(bool,fun(cart(real,Q106450),fun(cart(real,Q106450),cart(real,Q106450)))),cond),s(bool,i(s(fun(fun(Q106444,bool),bool),i(s(fun(Q106444,fun(fun(Q106444,bool),bool)),in),s(Q106444,X))),s(fun(Q106444,bool),S0))))),s(cart(real,Q106450),i(s(fun(Q106444,cart(real,Q106450)),F0),s(Q106444,X))))),s(cart(real,Q106450),i(s(fun(num,cart(real,Q106450)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q106450),i(s(fun(Q106444,cart(real,Q106450)),i(s(fun(fun(Q106444,cart(real,Q106450)),fun(Q106444,cart(real,Q106450))),i(s(fun(fun(Q106444,bool),fun(fun(Q106444,cart(real,Q106450)),fun(Q106444,cart(real,Q106450)))),U_0),s(fun(Q106444,bool),S0))),s(fun(Q106444,cart(real,Q106450)),F0))),s(Q106444,X))) ) ).

fof(aMATRIXu_EQUALu_ROWS,axiom,
    ! [N,M,A5,B0] :
      ( ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(M,bool),num),dimindex),s(fun(M,bool),univ)))))) )
         => s(cart(real,N),i(s(fun(cart(cart(real,N),M),cart(real,N)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,N))),row),s(num,I0))),s(cart(cart(real,N),M),A5))) = s(cart(real,N),i(s(fun(cart(cart(real,N),M),cart(real,N)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,N))),row),s(num,I0))),s(cart(cart(real,N),M),B0))) )
    <=> s(cart(cart(real,N),M),A5) = s(cart(cart(real,N),M),B0) ) ).

fof(aVSUMu_CASES,axiom,
    ! [A,N,U_2] :
      ( ! [P0,X] :
          ( ~ p(s(bool,i(s(fun(A,bool),P0),s(A,X))))
        <=> p(s(bool,i(s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),U_2),s(fun(A,bool),P0))),s(A,X)))) )
     => ! [U_1] :
          ( ! [U_0] :
              ( ! [P0,F0,G0,X] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),i(s(fun(bool,fun(cart(real,N),fun(cart(real,N),cart(real,N)))),cond),s(bool,i(s(fun(A,bool),P0),s(A,X))))),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))),s(cart(real,N),i(s(fun(A,cart(real,N)),G0),s(A,X))))) = s(cart(real,N),i(s(fun(A,cart(real,N)),i(s(fun(fun(A,cart(real,N)),fun(A,cart(real,N))),i(s(fun(fun(A,cart(real,N)),fun(fun(A,cart(real,N)),fun(A,cart(real,N)))),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),fun(fun(A,cart(real,N)),fun(A,cart(real,N))))),U_0),s(fun(A,bool),P0))),s(fun(A,cart(real,N)),F0))),s(fun(A,cart(real,N)),G0))),s(A,X)))
             => ! [S0,P0,F0,G0] :
                  ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0))))
                 => s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),i(s(fun(fun(A,cart(real,N)),fun(A,cart(real,N))),i(s(fun(fun(A,cart(real,N)),fun(fun(A,cart(real,N)),fun(A,cart(real,N)))),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),fun(fun(A,cart(real,N)),fun(A,cart(real,N))))),U_0),s(fun(A,bool),P0))),s(fun(A,cart(real,N)),F0))),s(fun(A,cart(real,N)),G0))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),gspec),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),U_1),s(fun(A,bool),S0))),s(fun(A,bool),P0))))))),s(fun(A,cart(real,N)),F0))))),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),gspec),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),U_1),s(fun(A,bool),S0))),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),U_2),s(fun(A,bool),P0))))))))),s(fun(A,cart(real,N)),G0))))) ) )
         <= ! [S0,P0,GENR_PVARR_279] :
              ( p(s(bool,i(s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),U_1),s(fun(A,bool),S0))),s(fun(A,bool),P0))),s(A,GENR_PVARR_279))))
            <=> ? [X,V] :
                  ( ( ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
                      & p(s(bool,i(s(fun(A,bool),P0),s(A,X)))) )
                  <=> p(s(bool,V)) )
                  & p(s(bool,i(s(fun(A,bool),i(s(fun(bool,fun(A,bool)),i(s(fun(A,fun(bool,fun(A,bool))),setspec),s(A,GENR_PVARR_279))),s(bool,V))),s(A,X)))) ) ) ) ) ).

fof(aMATRIXu_ID,axiom,
    ! [Q117856,U_0] :
      ( s(cart(cart(real,Q117856),Q117856),i(s(fun(fun(cart(real,Q117856),cart(real,Q117856)),cart(cart(real,Q117856),Q117856)),matrix),s(fun(cart(real,Q117856),cart(real,Q117856)),U_0))) = s(cart(cart(real,Q117856),Q117856),i(s(fun(num,cart(cart(real,Q117856),Q117856)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))
     <= ! [X] : s(cart(real,Q117856),i(s(fun(cart(real,Q117856),cart(real,Q117856)),U_0),s(cart(real,Q117856),X))) = s(cart(real,Q117856),X) ) ).

fof(aREALu_ABSu_NORM,axiom,
    ! [Q102710,X] : s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(cart(real,Q102710),real),vectoru_norm),s(cart(real,Q102710),X))))) = s(real,i(s(fun(cart(real,Q102710),real),vectoru_norm),s(cart(real,Q102710),X))) ).

fof(aSQRTu_EVENu_POW2,axiom,
    ! [N0] :
      ( s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),div),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(num,N0)))))
     <= p(s(bool,i(s(fun(num,bool),even),s(num,N0)))) ) ).

fof(aorthogonal,axiom,
    ! [Q110633,X,Y] :
      ( s(real,i(s(fun(cart(real,Q110633),real),i(s(fun(cart(real,Q110633),fun(cart(real,Q110633),real)),dot),s(cart(real,Q110633),X))),s(cart(real,Q110633),Y))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> p(s(bool,i(s(fun(cart(real,Q110633),bool),i(s(fun(cart(real,Q110633),fun(cart(real,Q110633),bool)),orthogonal),s(cart(real,Q110633),X))),s(cart(real,Q110633),Y)))) ) ).

fof(aVECTORu_ONE,axiom,
    ! [U_0] :
      ( ! [X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),U_0),s(cart(real,n10),X))),s(num,I0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))
     => ! [X] : s(cart(real,n10),X) = s(cart(real,n10),i(s(fun(fun(num,real),cart(real,n10)),lambda),s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),U_0),s(cart(real,n10),X))))) ) ).

fof(aVSUMu_DIFFS,axiom,
    ! [Q107857,U_0] :
      ( ! [M0,N0] : s(cart(real,Q107857),i(s(fun(fun(num,cart(real,Q107857)),cart(real,Q107857)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107857)),cart(real,Q107857))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107857)),U_0))) = s(cart(real,Q107857),i(s(fun(cart(real,Q107857),cart(real,Q107857)),i(s(fun(cart(real,Q107857),fun(cart(real,Q107857),cart(real,Q107857))),i(s(fun(bool,fun(cart(real,Q107857),fun(cart(real,Q107857),cart(real,Q107857)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,Q107857),i(s(fun(cart(real,Q107857),cart(real,Q107857)),i(s(fun(cart(real,Q107857),fun(cart(real,Q107857),cart(real,Q107857))),vectoru_sub),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),f),s(num,M0))))),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),f),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
     <= ! [K0] : s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),U_0),s(num,K0))) = s(cart(real,Q107857),i(s(fun(cart(real,Q107857),cart(real,Q107857)),i(s(fun(cart(real,Q107857),fun(cart(real,Q107857),cart(real,Q107857))),vectoru_sub),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),f),s(num,K0))))),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),f),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ) ).

fof(avectoru_neg,axiom,
    ! [N,U_0] :
      ( ! [X] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),X)))
     <= ! [X,I0] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))),s(num,I0))) ) ).

fof(aROWu_TRANSP,axiom,
    ! [N,M,A5,I0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
     => s(cart(real,M),i(s(fun(cart(cart(real,N),M),cart(real,M)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,M))),column),s(num,I0))),s(cart(cart(real,N),M),A5))) = s(cart(real,M),i(s(fun(cart(cart(real,M),N),cart(real,M)),i(s(fun(num,fun(cart(cart(real,M),N),cart(real,M))),row),s(num,I0))),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))) ) ).

fof(aBILINEARu_BOUNDEDu_POS,axiom,
    ! [Q112837,Q112835,Q112836,H0] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q112835),fun(cart(real,Q112836),cart(real,Q112837))),bool),bilinear),s(fun(cart(real,Q112835),fun(cart(real,Q112836),cart(real,Q112837))),H0))))
     => ? [B0] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,B0))))
          & ! [X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q112837),real),vectoru_norm),s(cart(real,Q112837),i(s(fun(cart(real,Q112836),cart(real,Q112837)),i(s(fun(cart(real,Q112835),fun(cart(real,Q112836),cart(real,Q112837))),H0),s(cart(real,Q112835),X))),s(cart(real,Q112836),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,B0))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(cart(real,Q112835),real),vectoru_norm),s(cart(real,Q112835),X))))),s(real,i(s(fun(cart(real,Q112836),real),vectoru_norm),s(cart(real,Q112836),Y)))))))))) ) ) ).

fof(aSQRTu_INJ,axiom,
    ! [X,Y] :
      ( ( s(real,X) = s(real,Y)
      <=> s(real,i(s(fun(real,real),sqrt),s(real,X))) = s(real,i(s(fun(real,real),sqrt),s(real,Y))) )
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ) ).

fof(aVSUMu_CLAUSESu_LEFT,axiom,
    ! [Q107795,F0,M0,N0] :
      ( s(cart(real,Q107795),i(s(fun(fun(num,cart(real,Q107795)),cart(real,Q107795)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107795)),cart(real,Q107795))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107795)),F0))) = s(cart(real,Q107795),i(s(fun(cart(real,Q107795),cart(real,Q107795)),i(s(fun(cart(real,Q107795),fun(cart(real,Q107795),cart(real,Q107795))),vectoru_add),s(cart(real,Q107795),i(s(fun(num,cart(real,Q107795)),F0),s(num,M0))))),s(cart(real,Q107795),i(s(fun(fun(num,cart(real,Q107795)),cart(real,Q107795)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107795)),cart(real,Q107795))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,M0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,N0))))),s(fun(num,cart(real,Q107795)),F0)))))
     <= p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0)))) ) ).

fof(aSUBSETu_DROPu_IMAGE,axiom,
    ! [S0,T0] : s(bool,i(s(fun(fun(real,bool),bool),i(s(fun(fun(real,bool),fun(fun(real,bool),bool)),subset),s(fun(real,bool),i(s(fun(fun(cart(real,n10),bool),fun(real,bool)),i(s(fun(fun(cart(real,n10),real),fun(fun(cart(real,n10),bool),fun(real,bool))),image),s(fun(cart(real,n10),real),drop))),s(fun(cart(real,n10),bool),S0))))),s(fun(real,bool),i(s(fun(fun(cart(real,n10),bool),fun(real,bool)),i(s(fun(fun(cart(real,n10),real),fun(fun(cart(real,n10),bool),fun(real,bool))),image),s(fun(cart(real,n10),real),drop))),s(fun(cart(real,n10),bool),T0))))) = s(bool,i(s(fun(fun(cart(real,n10),bool),bool),i(s(fun(fun(cart(real,n10),bool),fun(fun(cart(real,n10),bool),bool)),subset),s(fun(cart(real,n10),bool),S0))),s(fun(cart(real,n10),bool),T0))) ).

fof(aVECTORu_MULu_RCANCEL,axiom,
    ! [Q102468,A5,B0,X] :
      ( ( s(real,B0) = s(real,A5)
        | s(cart(real,Q102468),X) = s(cart(real,Q102468),i(s(fun(num,cart(real,Q102468)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
    <=> s(cart(real,Q102468),i(s(fun(cart(real,Q102468),cart(real,Q102468)),i(s(fun(real,fun(cart(real,Q102468),cart(real,Q102468))),r_),s(real,B0))),s(cart(real,Q102468),X))) = s(cart(real,Q102468),i(s(fun(cart(real,Q102468),cart(real,Q102468)),i(s(fun(real,fun(cart(real,Q102468),cart(real,Q102468))),r_),s(real,A5))),s(cart(real,Q102468),X))) ) ).

fof(aLINEARu_INJECTIVEu_0,axiom,
    ! [Q112067,Q112072,F0] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q112072),cart(real,Q112067)),bool),linear),s(fun(cart(real,Q112072),cart(real,Q112067)),F0))))
     => ( ! [X] :
            ( s(cart(real,Q112067),i(s(fun(num,cart(real,Q112067)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q112067),i(s(fun(cart(real,Q112072),cart(real,Q112067)),F0),s(cart(real,Q112072),X)))
           => s(cart(real,Q112072),X) = s(cart(real,Q112072),i(s(fun(num,cart(real,Q112072)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
      <=> ! [X,Y] :
            ( s(cart(real,Q112067),i(s(fun(cart(real,Q112072),cart(real,Q112067)),F0),s(cart(real,Q112072),Y))) = s(cart(real,Q112067),i(s(fun(cart(real,Q112072),cart(real,Q112067)),F0),s(cart(real,Q112072),X)))
           => s(cart(real,Q112072),X) = s(cart(real,Q112072),Y) ) ) ) ).

fof(aVSUMu_CMULu_NUMSEG,axiom,
    ! [Q106968,U_0] :
      ( ! [F0,C0,M0,N0] : s(cart(real,Q106968),i(s(fun(fun(num,cart(real,Q106968)),cart(real,Q106968)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106968)),cart(real,Q106968))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q106968)),i(s(fun(fun(num,cart(real,Q106968)),fun(num,cart(real,Q106968))),i(s(fun(real,fun(fun(num,cart(real,Q106968)),fun(num,cart(real,Q106968)))),U_0),s(real,C0))),s(fun(num,cart(real,Q106968)),F0))))) = s(cart(real,Q106968),i(s(fun(cart(real,Q106968),cart(real,Q106968)),i(s(fun(real,fun(cart(real,Q106968),cart(real,Q106968))),r_),s(real,C0))),s(cart(real,Q106968),i(s(fun(fun(num,cart(real,Q106968)),cart(real,Q106968)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106968)),cart(real,Q106968))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q106968)),F0)))))
     <= ! [C0,F0,X] : s(cart(real,Q106968),i(s(fun(cart(real,Q106968),cart(real,Q106968)),i(s(fun(real,fun(cart(real,Q106968),cart(real,Q106968))),r_),s(real,C0))),s(cart(real,Q106968),i(s(fun(num,cart(real,Q106968)),F0),s(num,X))))) = s(cart(real,Q106968),i(s(fun(num,cart(real,Q106968)),i(s(fun(fun(num,cart(real,Q106968)),fun(num,cart(real,Q106968))),i(s(fun(real,fun(fun(num,cart(real,Q106968)),fun(num,cart(real,Q106968)))),U_0),s(real,C0))),s(fun(num,cart(real,Q106968)),F0))),s(num,X))) ) ).

fof(aNORMu_EQ,axiom,
    ! [Q103311,Q103313,X,Y] :
      ( s(real,i(s(fun(cart(real,Q103311),real),vectoru_norm),s(cart(real,Q103311),X))) = s(real,i(s(fun(cart(real,Q103313),real),vectoru_norm),s(cart(real,Q103313),Y)))
    <=> s(real,i(s(fun(cart(real,Q103313),real),i(s(fun(cart(real,Q103313),fun(cart(real,Q103313),real)),dot),s(cart(real,Q103313),Y))),s(cart(real,Q103313),Y))) = s(real,i(s(fun(cart(real,Q103311),real),i(s(fun(cart(real,Q103311),fun(cart(real,Q103311),real)),dot),s(cart(real,Q103311),X))),s(cart(real,Q103311),X))) ) ).

fof(aMATRIXu_EQ,axiom,
    ! [M,N,A5,B0] :
      ( ! [X] : s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))) = s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),B0))),s(cart(real,N),X)))
    <=> s(cart(cart(real,N),M),B0) = s(cart(cart(real,N),M),A5) ) ).

fof(aNORMu_EQu_SQUARE,axiom,
    ! [N,X] :
      ( ( s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X)))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,a0)))) )
    <=> s(real,a0) = s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))) ) ).

fof(aMATRIXu_ADDu_ASSOC,axiom,
    ! [N,M,A5,B0,C0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),B0))),s(cart(cart(real,N),M),C0))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))),s(cart(cart(real,N),M),C0))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct8,axiom,
    ! [Q111057,A5,X,Y] :
      ( ( p(s(bool,i(s(fun(cart(real,Q111057),bool),i(s(fun(cart(real,Q111057),fun(cart(real,Q111057),bool)),orthogonal),s(cart(real,Q111057),X))),s(cart(real,Q111057),A5))))
        & p(s(bool,i(s(fun(cart(real,Q111057),bool),i(s(fun(cart(real,Q111057),fun(cart(real,Q111057),bool)),orthogonal),s(cart(real,Q111057),Y))),s(cart(real,Q111057),A5)))) )
     => p(s(bool,i(s(fun(cart(real,Q111057),bool),i(s(fun(cart(real,Q111057),fun(cart(real,Q111057),bool)),orthogonal),s(cart(real,Q111057),i(s(fun(cart(real,Q111057),cart(real,Q111057)),i(s(fun(cart(real,Q111057),fun(cart(real,Q111057),cart(real,Q111057))),vectoru_add),s(cart(real,Q111057),X))),s(cart(real,Q111057),Y))))),s(cart(real,Q111057),A5)))) ) ).

fof(aNORMu_CAUCHYu_SCHWARZ,axiom,
    ! [N,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y)))))))) ).

fof(aDOTu_LADD,axiom,
    ! [Q100240,X,Y,Z0] : s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),i(s(fun(cart(real,Q100240),cart(real,Q100240)),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),cart(real,Q100240))),vectoru_add),s(cart(real,Q100240),X))),s(cart(real,Q100240),Y))))),s(cart(real,Q100240),Z0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),X))),s(cart(real,Q100240),Z0))))),s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),Y))),s(cart(real,Q100240),Z0))))) ).

fof(aDROPu_VSUM,axiom,
    ! [Q119533,K0,X] :
      ( s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(fun(Q119533,cart(real,n10)),cart(real,n10)),i(s(fun(fun(Q119533,bool),fun(fun(Q119533,cart(real,n10)),cart(real,n10))),vsum),s(fun(Q119533,bool),K0))),s(fun(Q119533,cart(real,n10)),X))))) = s(real,i(s(fun(fun(Q119533,real),real),i(s(fun(fun(Q119533,bool),fun(fun(Q119533,real),real)),sum),s(fun(Q119533,bool),K0))),s(fun(Q119533,real),i(s(fun(fun(Q119533,cart(real,n10)),fun(Q119533,real)),i(s(fun(fun(cart(real,n10),real),fun(fun(Q119533,cart(real,n10)),fun(Q119533,real))),o),s(fun(cart(real,n10),real),drop))),s(fun(Q119533,cart(real,n10)),X)))))
     <= p(s(bool,i(s(fun(fun(Q119533,bool),bool),finite),s(fun(Q119533,bool),K0)))) ) ).

fof(aVSUMu_CONST,axiom,
    ! [Q105798,Q105801,U_0] :
      ( ! [C0,S0] :
          ( s(cart(real,Q105801),i(s(fun(fun(Q105798,cart(real,Q105801)),cart(real,Q105801)),i(s(fun(fun(Q105798,bool),fun(fun(Q105798,cart(real,Q105801)),cart(real,Q105801))),vsum),s(fun(Q105798,bool),S0))),s(fun(Q105798,cart(real,Q105801)),i(s(fun(cart(real,Q105801),fun(Q105798,cart(real,Q105801))),U_0),s(cart(real,Q105801),C0))))) = s(cart(real,Q105801),i(s(fun(cart(real,Q105801),cart(real,Q105801)),i(s(fun(real,fun(cart(real,Q105801),cart(real,Q105801))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(fun(Q105798,bool),num),card),s(fun(Q105798,bool),S0))))))),s(cart(real,Q105801),C0)))
         <= p(s(bool,i(s(fun(fun(Q105798,bool),bool),finite),s(fun(Q105798,bool),S0)))) )
     <= ! [C0,N0] : s(cart(real,Q105801),C0) = s(cart(real,Q105801),i(s(fun(Q105798,cart(real,Q105801)),i(s(fun(cart(real,Q105801),fun(Q105798,cart(real,Q105801))),U_0),s(cart(real,Q105801),C0))),s(Q105798,N0))) ) ).

fof(aDISTu_TRIANGLEu_ADD,axiom,
    ! [Q105155,X,XI_,Y,YI_] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,Q105155),cart(real,Q105155)),real),distance),s(prod(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155))),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155)))),c_),s(cart(real,Q105155),i(s(fun(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),cart(real,Q105155))),vectoru_add),s(cart(real,Q105155),X))),s(cart(real,Q105155),Y))))),s(cart(real,Q105155),i(s(fun(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),cart(real,Q105155))),vectoru_add),s(cart(real,Q105155),XI_))),s(cart(real,Q105155),YI_))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,Q105155),cart(real,Q105155)),real),distance),s(prod(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155))),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155)))),c_),s(cart(real,Q105155),X))),s(cart(real,Q105155),XI_))))))),s(real,i(s(fun(prod(cart(real,Q105155),cart(real,Q105155)),real),distance),s(prod(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155))),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155)))),c_),s(cart(real,Q105155),Y))),s(cart(real,Q105155),YI_)))))))))) ).

fof(aONORMu_NEG,axiom,
    ! [M,N,U_0] :
      ( ! [F0] :
          ( s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),F0))) = s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,M),cart(real,N))),U_0),s(fun(cart(real,M),cart(real,N)),F0)))))
         <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) )
     <= ! [F0,X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,M),cart(real,N))),U_0),s(fun(cart(real,M),cart(real,N)),F0))),s(cart(real,M),X))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))) ) ).

fof(aLIFTu_ADD,axiom,
    ! [X,Y] : s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,X))),s(real,Y))))) = s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),i(s(fun(cart(real,n10),fun(cart(real,n10),cart(real,n10))),vectoru_add),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,Y))))) ).

fof(aCOMPONENTu_LEu_NORM,axiom,
    ! [N,X,I0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X)))))) ) ).

fof(aLINEARu_CMUL,axiom,
    ! [Q111837,Q111834,F0,C0,X] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q111834),cart(real,Q111837)),bool),linear),s(fun(cart(real,Q111834),cart(real,Q111837)),F0))))
     => s(cart(real,Q111837),i(s(fun(cart(real,Q111834),cart(real,Q111837)),F0),s(cart(real,Q111834),i(s(fun(cart(real,Q111834),cart(real,Q111834)),i(s(fun(real,fun(cart(real,Q111834),cart(real,Q111834))),r_),s(real,C0))),s(cart(real,Q111834),X))))) = s(cart(real,Q111837),i(s(fun(cart(real,Q111837),cart(real,Q111837)),i(s(fun(real,fun(cart(real,Q111837),cart(real,Q111837))),r_),s(real,C0))),s(cart(real,Q111837),i(s(fun(cart(real,Q111834),cart(real,Q111837)),F0),s(cart(real,Q111834),X))))) ) ).

fof(alift,axiom,
    ! [U_0] :
      ( ! [X,I0] : s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),U_0),s(real,X))),s(num,I0))) = s(real,X)
     => ! [X] : s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))) = s(cart(real,n10),i(s(fun(fun(num,real),cart(real,n10)),lambda),s(fun(num,real),i(s(fun(real,fun(num,real)),U_0),s(real,X))))) ) ).

fof(aMATRIXu_ADDu_RNEG,axiom,
    ! [Q114667,Q114668,A5] : s(cart(cart(real,Q114667),Q114668),i(s(fun(num,cart(cart(real,Q114667),Q114668)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(cart(real,Q114667),Q114668),i(s(fun(cart(cart(real,Q114667),Q114668),cart(cart(real,Q114667),Q114668)),i(s(fun(cart(cart(real,Q114667),Q114668),fun(cart(cart(real,Q114667),Q114668),cart(cart(real,Q114667),Q114668))),matrixu_add),s(cart(cart(real,Q114667),Q114668),A5))),s(cart(cart(real,Q114667),Q114668),i(s(fun(cart(cart(real,Q114667),Q114668),cart(cart(real,Q114667),Q114668)),matrixu_neg),s(cart(cart(real,Q114667),Q114668),A5))))) ).

fof(aVSUMu_DIFFSu_ALT,axiom,
    ! [Q107910,U_0] :
      ( ! [M0,N0] : s(cart(real,Q107910),i(s(fun(fun(num,cart(real,Q107910)),cart(real,Q107910)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107910)),cart(real,Q107910))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107910)),U_0))) = s(cart(real,Q107910),i(s(fun(cart(real,Q107910),cart(real,Q107910)),i(s(fun(cart(real,Q107910),fun(cart(real,Q107910),cart(real,Q107910))),i(s(fun(bool,fun(cart(real,Q107910),fun(cart(real,Q107910),cart(real,Q107910)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,Q107910),i(s(fun(cart(real,Q107910),cart(real,Q107910)),i(s(fun(cart(real,Q107910),fun(cart(real,Q107910),cart(real,Q107910))),vectoru_sub),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),f),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),f),s(num,M0))))))),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
     <= ! [K0] : s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),U_0),s(num,K0))) = s(cart(real,Q107910),i(s(fun(cart(real,Q107910),cart(real,Q107910)),i(s(fun(cart(real,Q107910),fun(cart(real,Q107910),cart(real,Q107910))),vectoru_sub),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),f),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),f),s(num,K0))))) ) ).

fof(aDOTu_EQu_0,axiom,
    ! [N,X] :
      ( s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),X)
    <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))) ) ).

fof(aDOTu_BASIS,axiom,
    ! [N,X,I0] :
      ( ( s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0)))))
        & s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(cart(real,N),X))) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) ) ) ).

fof(aNORMu_BOUNDu_COMPONENTu_LE,axiom,
    ! [N,X,E0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,E0))))
     => ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))))),s(real,E0)))) ) ) ).

fof(aVSUMu_INCLu_EXCL,axiom,
    ! [A,N,S0,T0,F0] :
      ( s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),T0))),s(fun(A,cart(real,N)),F0))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),union),s(fun(A,bool),S0))),s(fun(A,bool),T0))))),s(fun(A,cart(real,N)),F0))))),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),inter),s(fun(A,bool),S0))),s(fun(A,bool),T0))))),s(fun(A,cart(real,N)),F0)))))
     <= ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),T0))))
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) ) ) ).

fof(aLINEARu_MATRIXu_EXISTS,axiom,
    ! [N,M,F0] :
      ( p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0))))
    <=> ? [A5] :
        ! [X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),X))) ) ).

fof(avec,axiom,
    ! [N,U_0] :
      ( ! [N0] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,N0))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,N0)))
     <= ! [N0,I0] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,N0))) = s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,N0))),s(num,I0))) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct6,axiom,
    ! [Q110968,A5,X,C0] :
      ( p(s(bool,i(s(fun(cart(real,Q110968),bool),i(s(fun(cart(real,Q110968),fun(cart(real,Q110968),bool)),orthogonal),s(cart(real,Q110968),i(s(fun(cart(real,Q110968),cart(real,Q110968)),i(s(fun(real,fun(cart(real,Q110968),cart(real,Q110968))),r_),s(real,C0))),s(cart(real,Q110968),X))))),s(cart(real,Q110968),A5))))
     <= p(s(bool,i(s(fun(cart(real,Q110968),bool),i(s(fun(cart(real,Q110968),fun(cart(real,Q110968),bool)),orthogonal),s(cart(real,Q110968),X))),s(cart(real,Q110968),A5)))) ) ).

fof(aTRANSPu_EQ,axiom,
    ! [M,N,A5,B0] :
      ( s(cart(cart(real,M),N),B0) = s(cart(cart(real,M),N),A5)
    <=> s(cart(cart(real,N),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,N),M)),transp),s(cart(cart(real,M),N),A5))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,N),M)),transp),s(cart(cart(real,M),N),B0))) ) ).

fof(aMATRIXu_COMPOSE,axiom,
    ! [Q117654,Q117653,Q117652,F0,G0] :
      ( s(cart(cart(real,Q117653),Q117654),i(s(fun(cart(cart(real,Q117653),Q117652),cart(cart(real,Q117653),Q117654)),i(s(fun(cart(cart(real,Q117652),Q117654),fun(cart(cart(real,Q117653),Q117652),cart(cart(real,Q117653),Q117654))),matrixu_mul),s(cart(cart(real,Q117652),Q117654),i(s(fun(fun(cart(real,Q117652),cart(real,Q117654)),cart(cart(real,Q117652),Q117654)),matrix),s(fun(cart(real,Q117652),cart(real,Q117654)),G0))))),s(cart(cart(real,Q117653),Q117652),i(s(fun(fun(cart(real,Q117653),cart(real,Q117652)),cart(cart(real,Q117653),Q117652)),matrix),s(fun(cart(real,Q117653),cart(real,Q117652)),F0))))) = s(cart(cart(real,Q117653),Q117654),i(s(fun(fun(cart(real,Q117653),cart(real,Q117654)),cart(cart(real,Q117653),Q117654)),matrix),s(fun(cart(real,Q117653),cart(real,Q117654)),i(s(fun(fun(cart(real,Q117653),cart(real,Q117652)),fun(cart(real,Q117653),cart(real,Q117654))),i(s(fun(fun(cart(real,Q117652),cart(real,Q117654)),fun(fun(cart(real,Q117653),cart(real,Q117652)),fun(cart(real,Q117653),cart(real,Q117654)))),o),s(fun(cart(real,Q117652),cart(real,Q117654)),G0))),s(fun(cart(real,Q117653),cart(real,Q117652)),F0)))))
     <= ( p(s(bool,i(s(fun(fun(cart(real,Q117652),cart(real,Q117654)),bool),linear),s(fun(cart(real,Q117652),cart(real,Q117654)),G0))))
        & p(s(bool,i(s(fun(fun(cart(real,Q117653),cart(real,Q117652)),bool),linear),s(fun(cart(real,Q117653),cart(real,Q117652)),F0)))) ) ) ).

fof(aFINITEu_COLUMNS,axiom,
    ! [N,M,A5] : p(s(bool,i(s(fun(fun(cart(real,M),bool),bool),finite),s(fun(cart(real,M),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,M),bool)),columns),s(cart(cart(real,N),M),A5)))))) ).

fof(aFORALLu_LIFT,axiom,
    ( ! [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))))
  <=> ! [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),X)))) ) ).

fof(aDROPu_INu_IMAGEu_DROP,axiom,
    ! [X,S0] : s(bool,i(s(fun(fun(cart(real,n10),bool),bool),i(s(fun(cart(real,n10),fun(fun(cart(real,n10),bool),bool)),in),s(cart(real,n10),X))),s(fun(cart(real,n10),bool),S0))) = s(bool,i(s(fun(fun(real,bool),bool),i(s(fun(real,fun(fun(real,bool),bool)),in),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))),s(fun(real,bool),i(s(fun(fun(cart(real,n10),bool),fun(real,bool)),i(s(fun(fun(cart(real,n10),real),fun(fun(cart(real,n10),bool),fun(real,bool))),image),s(fun(cart(real,n10),real),drop))),s(fun(cart(real,n10),bool),S0))))) ).

fof(aVSUMu_UNIONu_NONZERO,axiom,
    ! [Q107636,Q107660,F0,S0,T0] :
      ( s(cart(real,Q107660),i(s(fun(cart(real,Q107660),cart(real,Q107660)),i(s(fun(cart(real,Q107660),fun(cart(real,Q107660),cart(real,Q107660))),vectoru_add),s(cart(real,Q107660),i(s(fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660))),vsum),s(fun(Q107636,bool),S0))),s(fun(Q107636,cart(real,Q107660)),F0))))),s(cart(real,Q107660),i(s(fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660))),vsum),s(fun(Q107636,bool),T0))),s(fun(Q107636,cart(real,Q107660)),F0))))) = s(cart(real,Q107660),i(s(fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660))),vsum),s(fun(Q107636,bool),i(s(fun(fun(Q107636,bool),fun(Q107636,bool)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,bool),fun(Q107636,bool))),union),s(fun(Q107636,bool),S0))),s(fun(Q107636,bool),T0))))),s(fun(Q107636,cart(real,Q107660)),F0)))
     <= ( p(s(bool,i(s(fun(fun(Q107636,bool),bool),finite),s(fun(Q107636,bool),T0))))
        & ! [X] :
            ( s(cart(real,Q107660),i(s(fun(Q107636,cart(real,Q107660)),F0),s(Q107636,X))) = s(cart(real,Q107660),i(s(fun(num,cart(real,Q107660)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
           <= p(s(bool,i(s(fun(fun(Q107636,bool),bool),i(s(fun(Q107636,fun(fun(Q107636,bool),bool)),in),s(Q107636,X))),s(fun(Q107636,bool),i(s(fun(fun(Q107636,bool),fun(Q107636,bool)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,bool),fun(Q107636,bool))),inter),s(fun(Q107636,bool),S0))),s(fun(Q107636,bool),T0)))))) )
        & p(s(bool,i(s(fun(fun(Q107636,bool),bool),finite),s(fun(Q107636,bool),S0)))) ) ) ).

fof(aNORMu_LIFT,axiom,
    ! [X] : s(real,i(s(fun(cart(real,n10),real),vectoru_norm),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))) = s(real,i(s(fun(real,real),realu_abs),s(real,X))) ).

fof(aMATu_COMPONENT,axiom,
    ! [N,M,N0,I0,J0] :
      ( ? [V] :
          ( s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),i(s(fun(num,cart(cart(real,N),M)),mat),s(num,N0))))),s(num,I0))))),s(num,J0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),i(s(fun(bool,fun(real,fun(real,real))),cond),s(bool,V))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,N0))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
          & ( p(s(bool,V))
          <=> s(num,J0) = s(num,I0) ) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(M,bool),num),dimindex),s(fun(M,bool),univ)))))) ) ) ).

fof(aADJOINTu_WORKS,axiom,
    ! [M,N,F0] :
      ( p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0))))
     => ! [X,Y] : s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))),s(cart(real,N),Y))) = s(real,i(s(fun(cart(real,M),real),i(s(fun(cart(real,M),fun(cart(real,M),real)),dot),s(cart(real,M),X))),s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,N),cart(real,M))),adjoint),s(fun(cart(real,M),cart(real,N)),F0))),s(cart(real,N),Y))))) ) ).

fof(aLIFTu_NUM,axiom,
    ! [N0] : s(cart(real,n10),i(s(fun(num,cart(real,n10)),vec),s(num,N0))) = s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(num,real),realu_ofu_num),s(num,N0))))) ).

fof(aLIFTu_SUB,axiom,
    ! [X,Y] : s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),i(s(fun(cart(real,n10),fun(cart(real,n10),cart(real,n10))),vectoru_sub),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,Y))))) = s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,X))),s(real,Y))))) ).

fof(aDOTu_3,axiom,
    s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))) = s(real,i(s(fun(cart(real,n3),real),i(s(fun(cart(real,n3),fun(cart(real,n3),real)),dot),s(cart(real,n3),x))),s(cart(real,n3),y))) ).

fof(aVECTORu_MULu_COMPONENT,axiom,
    ! [N,C0,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,C0))),s(cart(real,N),X))))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) ).

fof(aLIFTu_CMUL,axiom,
    ! [X,C0] : s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,X))))) = s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),i(s(fun(real,fun(cart(real,n10),cart(real,n10))),r_),s(real,C0))),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))) ).

fof(aSUMu_1,axiom,
    s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(fun(num,real),f))) = s(real,i(s(fun(num,real),f),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aORTHOGONALu_BASISu_BASIS,axiom,
    ! [N,I0,J0] :
      ( ( s(num,I0) != s(num,J0)
      <=> p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(real,N),fun(cart(real,N),bool)),orthogonal),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,J0)))))) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0)))) ) ) ).

fof(aCONNECTEDu_REALu_LEMMA,axiom,
    ! [N,F0,A5,B0,E1,E2] :
      ( ? [X] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,B0))))
          & ~ p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E2))))
          & ~ p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E1))))
          & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,X)))) )
     <= ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,A5))))),s(fun(cart(real,N),bool),E1))))
        & p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,B0))))),s(fun(cart(real,N),bool),E2))))
        & ! [Y] :
            ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),Y))),s(fun(cart(real,N),bool),E1))))
           => ? [E0] :
                ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0))))
                & ! [YI_] :
                    ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),YI_))),s(fun(cart(real,N),bool),E1))))
                   <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),YI_))),s(cart(real,N),Y))))))),s(real,E0)))) ) ) )
        & ~ ? [X] :
              ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,X))))
              & p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E2))))
              & p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E1))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,B0)))) )
        & ! [Y] :
            ( ? [E0] :
                ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0))))
                & ! [YI_] :
                    ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),YI_))),s(fun(cart(real,N),bool),E2))))
                   <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),YI_))),s(cart(real,N),Y))))))),s(real,E0)))) ) )
           <= p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),Y))),s(fun(cart(real,N),bool),E2)))) )
        & ! [E0,X] :
            ( ? [D0] :
                ( ! [Y] :
                    ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,Y))))),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))))))),s(real,E0))))
                   <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,Y))),s(real,X))))))),s(real,D0)))) )
                & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,D0)))) )
           <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,X))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,B0)))) ) )
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,B0)))) ) ) ).

fof(aVECTORu_NEGu_MINUS1,axiom,
    ! [Q99962] : s(cart(real,Q99962),i(s(fun(cart(real,Q99962),cart(real,Q99962)),vectoru_neg),s(cart(real,Q99962),x))) = s(cart(real,Q99962),i(s(fun(cart(real,Q99962),cart(real,Q99962)),i(s(fun(real,fun(cart(real,Q99962),cart(real,Q99962))),r_),s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q99962),x))) ).

fof(aVSUMu_CLAUSESu_NUMSEGu_conjunct0,axiom,
    ! [Q106879,M0] :
    ? [V] :
      ( ( s(num,M0) = s(num,i(s(fun(num,num),numeral),s(num,u_0)))
      <=> p(s(bool,V)) )
      & s(cart(real,Q106879),i(s(fun(fun(num,cart(real,Q106879)),cart(real,Q106879)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106879)),cart(real,Q106879))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(fun(num,cart(real,Q106879)),f))) = s(cart(real,Q106879),i(s(fun(cart(real,Q106879),cart(real,Q106879)),i(s(fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879))),i(s(fun(bool,fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879)))),cond),s(bool,V))),s(cart(real,Q106879),i(s(fun(num,cart(real,Q106879)),f),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q106879),i(s(fun(num,cart(real,Q106879)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ) ).

fof(aNORMu_CAUCHYu_SCHWARZu_ABS,axiom,
    ! [N,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y)))))))) ).

fof(aREALu_LEu_LSQRT,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y)))) ) ).

fof(aFORALLu_LIFTu_IMAGE,axiom,
    ! [P0] :
      ( ! [S0] : p(s(bool,i(s(fun(fun(cart(real,n10),bool),bool),P0),s(fun(cart(real,n10),bool),i(s(fun(fun(real,bool),fun(cart(real,n10),bool)),i(s(fun(fun(real,cart(real,n10)),fun(fun(real,bool),fun(cart(real,n10),bool))),image),s(fun(real,cart(real,n10)),lift))),s(fun(real,bool),S0))))))
    <=> ! [S0] : p(s(bool,i(s(fun(fun(cart(real,n10),bool),bool),P0),s(fun(cart(real,n10),bool),S0)))) ) ).

fof(aEXISTSu_VECTORu_2,axiom,
    ! [A] :
      ( ? [X,Y] : p(s(bool,i(s(fun(cart(A,n20),bool),p0),s(cart(A,n20),i(s(fun(list(A),cart(A,n20)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,X))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,Y))),s(list(A),nil))))))))))
    <=> ? [V] : p(s(bool,i(s(fun(cart(A,n20),bool),p0),s(cart(A,n20),V)))) ) ).

fof(aVSUMu_TRIVu_NUMSEG,axiom,
    ! [Q108694,F0,M0,N0] :
      ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_),s(num,N0))),s(num,M0))))
     => s(cart(real,Q108694),i(s(fun(num,cart(real,Q108694)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q108694),i(s(fun(fun(num,cart(real,Q108694)),cart(real,Q108694)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108694)),cart(real,Q108694))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q108694)),F0))) ) ).

fof(aLINEARu_ADD,axiom,
    ! [Q111897,Q111896,F0,X,Y] :
      ( s(cart(real,Q111897),i(s(fun(cart(real,Q111896),cart(real,Q111897)),F0),s(cart(real,Q111896),i(s(fun(cart(real,Q111896),cart(real,Q111896)),i(s(fun(cart(real,Q111896),fun(cart(real,Q111896),cart(real,Q111896))),vectoru_add),s(cart(real,Q111896),X))),s(cart(real,Q111896),Y))))) = s(cart(real,Q111897),i(s(fun(cart(real,Q111897),cart(real,Q111897)),i(s(fun(cart(real,Q111897),fun(cart(real,Q111897),cart(real,Q111897))),vectoru_add),s(cart(real,Q111897),i(s(fun(cart(real,Q111896),cart(real,Q111897)),F0),s(cart(real,Q111896),X))))),s(cart(real,Q111897),i(s(fun(cart(real,Q111896),cart(real,Q111897)),F0),s(cart(real,Q111896),Y)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q111896),cart(real,Q111897)),bool),linear),s(fun(cart(real,Q111896),cart(real,Q111897)),F0)))) ) ).

fof(aNORMu_SUB,axiom,
    ! [Q102210,X,Y] : s(real,i(s(fun(cart(real,Q102210),real),vectoru_norm),s(cart(real,Q102210),i(s(fun(cart(real,Q102210),cart(real,Q102210)),i(s(fun(cart(real,Q102210),fun(cart(real,Q102210),cart(real,Q102210))),vectoru_sub),s(cart(real,Q102210),Y))),s(cart(real,Q102210),X))))) = s(real,i(s(fun(cart(real,Q102210),real),vectoru_norm),s(cart(real,Q102210),i(s(fun(cart(real,Q102210),cart(real,Q102210)),i(s(fun(cart(real,Q102210),fun(cart(real,Q102210),cart(real,Q102210))),vectoru_sub),s(cart(real,Q102210),X))),s(cart(real,Q102210),Y))))) ).

fof(aMONOIDALu_VECTORu_ADD,axiom,
    ! [N] : p(s(bool,i(s(fun(fun(cart(real,N),fun(cart(real,N),cart(real,N))),bool),monoidal),s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add)))) ).

fof(aIMAGEu_LIFTu_DROPu_conjunct0,axiom,
    ! [S0] : s(fun(cart(real,n10),bool),i(s(fun(fun(cart(real,n10),bool),fun(cart(real,n10),bool)),i(s(fun(fun(cart(real,n10),cart(real,n10)),fun(fun(cart(real,n10),bool),fun(cart(real,n10),bool))),image),s(fun(cart(real,n10),cart(real,n10)),i(s(fun(fun(cart(real,n10),real),fun(cart(real,n10),cart(real,n10))),i(s(fun(fun(real,cart(real,n10)),fun(fun(cart(real,n10),real),fun(cart(real,n10),cart(real,n10)))),o),s(fun(real,cart(real,n10)),lift))),s(fun(cart(real,n10),real),drop))))),s(fun(cart(real,n10),bool),S0))) = s(fun(cart(real,n10),bool),S0) ).

fof(aMATRIXu_SUBu_RZERO,axiom,
    ! [N,M,A5] : s(cart(cart(real,N),M),A5) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),i(s(fun(num,cart(cart(real,N),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aMATRIXu_VECTORu_MULu_LID,axiom,
    ! [N,X] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(cart(real,N),N),fun(cart(real,N),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,N),N),i(s(fun(num,cart(cart(real,N),N)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(real,N),X))) = s(cart(real,N),X) ).

fof(aONORMu_EQu_0,axiom,
    ! [M,N,F0] :
      ( ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),F0)))
      <=> ! [X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
     <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ).

fof(aMATRIXu_VECTORu_MULu_ASSOC,axiom,
    ! [M,N,P,A5,B0,X] : s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),i(s(fun(cart(real,P),cart(real,N)),i(s(fun(cart(cart(real,P),N),fun(cart(real,P),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,P),N),B0))),s(cart(real,P),X))))) = s(cart(real,M),i(s(fun(cart(real,P),cart(real,M)),i(s(fun(cart(cart(real,P),M),fun(cart(real,P),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0))))),s(cart(real,P),X))) ).

fof(aBILINEARu_LSUB,axiom,
    ! [Q112614,Q112613,Q112596,H0,X,Y,Z0] :
      ( s(cart(real,Q112614),i(s(fun(cart(real,Q112596),cart(real,Q112614)),i(s(fun(cart(real,Q112613),fun(cart(real,Q112596),cart(real,Q112614))),H0),s(cart(real,Q112613),i(s(fun(cart(real,Q112613),cart(real,Q112613)),i(s(fun(cart(real,Q112613),fun(cart(real,Q112613),cart(real,Q112613))),vectoru_sub),s(cart(real,Q112613),X))),s(cart(real,Q112613),Y))))),s(cart(real,Q112596),Z0))) = s(cart(real,Q112614),i(s(fun(cart(real,Q112614),cart(real,Q112614)),i(s(fun(cart(real,Q112614),fun(cart(real,Q112614),cart(real,Q112614))),vectoru_sub),s(cart(real,Q112614),i(s(fun(cart(real,Q112596),cart(real,Q112614)),i(s(fun(cart(real,Q112613),fun(cart(real,Q112596),cart(real,Q112614))),H0),s(cart(real,Q112613),X))),s(cart(real,Q112596),Z0))))),s(cart(real,Q112614),i(s(fun(cart(real,Q112596),cart(real,Q112614)),i(s(fun(cart(real,Q112613),fun(cart(real,Q112596),cart(real,Q112614))),H0),s(cart(real,Q112613),Y))),s(cart(real,Q112596),Z0)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q112613),fun(cart(real,Q112596),cart(real,Q112614))),bool),bilinear),s(fun(cart(real,Q112613),fun(cart(real,Q112596),cart(real,Q112614))),H0)))) ) ).

fof(aDROPu_CMUL,axiom,
    ! [X,C0] : s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),i(s(fun(real,fun(cart(real,n10),cart(real,n10))),r_),s(real,C0))),s(cart(real,n10),X))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))) ).

fof(aSQRTu_MONOu_LTu_EQ,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,Y))) ) ).

fof(aLINEARu_COMPOSEu_NEG,axiom,
    ! [Q111583,Q111590,U_0] :
      ( ! [F0] :
          ( p(s(bool,i(s(fun(fun(cart(real,Q111583),cart(real,Q111590)),bool),linear),s(fun(cart(real,Q111583),cart(real,Q111590)),i(s(fun(fun(cart(real,Q111583),cart(real,Q111590)),fun(cart(real,Q111583),cart(real,Q111590))),U_0),s(fun(cart(real,Q111583),cart(real,Q111590)),F0))))))
         <= p(s(bool,i(s(fun(fun(cart(real,Q111583),cart(real,Q111590)),bool),linear),s(fun(cart(real,Q111583),cart(real,Q111590)),F0)))) )
     <= ! [F0,X] : s(cart(real,Q111590),i(s(fun(cart(real,Q111583),cart(real,Q111590)),i(s(fun(fun(cart(real,Q111583),cart(real,Q111590)),fun(cart(real,Q111583),cart(real,Q111590))),U_0),s(fun(cart(real,Q111583),cart(real,Q111590)),F0))),s(cart(real,Q111583),X))) = s(cart(real,Q111590),i(s(fun(cart(real,Q111590),cart(real,Q111590)),vectoru_neg),s(cart(real,Q111590),i(s(fun(cart(real,Q111583),cart(real,Q111590)),F0),s(cart(real,Q111583),X))))) ) ).

fof(aVECTORu_ADDu_SYM,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),Y))),s(cart(real,N),X))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))) ).

fof(aDISTu_POSu_LT,axiom,
    ! [Q104851,X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(prod(cart(real,Q104851),cart(real,Q104851)),real),distance),s(prod(cart(real,Q104851),cart(real,Q104851)),i(s(fun(cart(real,Q104851),prod(cart(real,Q104851),cart(real,Q104851))),i(s(fun(cart(real,Q104851),fun(cart(real,Q104851),prod(cart(real,Q104851),cart(real,Q104851)))),c_),s(cart(real,Q104851),X))),s(cart(real,Q104851),Y))))))))
     <= s(cart(real,Q104851),Y) != s(cart(real,Q104851),X) ) ).

fof(aMATRIXu_NEGu_0,axiom,
    ! [Q115825,Q115826] : s(cart(cart(real,Q115825),Q115826),i(s(fun(num,cart(cart(real,Q115825),Q115826)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(cart(real,Q115825),Q115826),i(s(fun(cart(cart(real,Q115825),Q115826),cart(cart(real,Q115825),Q115826)),matrixu_neg),s(cart(cart(real,Q115825),Q115826),i(s(fun(num,cart(cart(real,Q115825),Q115826)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aMATRIXu_ADDu_LNEG,axiom,
    ! [Q114643,Q114644,A5] : s(cart(cart(real,Q114643),Q114644),i(s(fun(cart(cart(real,Q114643),Q114644),cart(cart(real,Q114643),Q114644)),i(s(fun(cart(cart(real,Q114643),Q114644),fun(cart(cart(real,Q114643),Q114644),cart(cart(real,Q114643),Q114644))),matrixu_add),s(cart(cart(real,Q114643),Q114644),i(s(fun(cart(cart(real,Q114643),Q114644),cart(cart(real,Q114643),Q114644)),matrixu_neg),s(cart(cart(real,Q114643),Q114644),A5))))),s(cart(cart(real,Q114643),Q114644),A5))) = s(cart(cart(real,Q114643),Q114644),i(s(fun(num,cart(cart(real,Q114643),Q114644)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aVSUMu_ADDu_SPLIT,axiom,
    ! [Q107387,F0,M0,N0,P0] :
      ( s(cart(real,Q107387),i(s(fun(cart(real,Q107387),cart(real,Q107387)),i(s(fun(cart(real,Q107387),fun(cart(real,Q107387),cart(real,Q107387))),vectoru_add),s(cart(real,Q107387),i(s(fun(fun(num,cart(real,Q107387)),cart(real,Q107387)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107387)),cart(real,Q107387))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107387)),F0))))),s(cart(real,Q107387),i(s(fun(fun(num,cart(real,Q107387)),cart(real,Q107387)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107387)),cart(real,Q107387))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,P0))))))),s(fun(num,cart(real,Q107387)),F0))))) = s(cart(real,Q107387),i(s(fun(fun(num,cart(real,Q107387)),cart(real,Q107387)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107387)),cart(real,Q107387))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,P0))))))),s(fun(num,cart(real,Q107387)),F0)))
     <= p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) ) ).

fof(aLINEARu_COMPOSEu_VSUM,axiom,
    ! [Q111747,Q111736,Q111733,U_1] :
      ( ! [U_0] :
          ( ! [F0,S0] :
              ( p(s(bool,i(s(fun(fun(cart(real,Q111736),cart(real,Q111733)),bool),linear),s(fun(cart(real,Q111736),cart(real,Q111733)),i(s(fun(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),fun(cart(real,Q111736),cart(real,Q111733))),i(s(fun(fun(Q111747,bool),fun(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),fun(cart(real,Q111736),cart(real,Q111733)))),U_0),s(fun(Q111747,bool),S0))),s(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),F0))))))
             <= ( p(s(bool,i(s(fun(fun(Q111747,bool),bool),finite),s(fun(Q111747,bool),S0))))
                & ! [A5] :
                    ( p(s(bool,i(s(fun(fun(Q111747,bool),bool),i(s(fun(Q111747,fun(fun(Q111747,bool),bool)),in),s(Q111747,A5))),s(fun(Q111747,bool),S0))))
                   => p(s(bool,i(s(fun(fun(cart(real,Q111736),cart(real,Q111733)),bool),linear),s(fun(cart(real,Q111736),cart(real,Q111733)),i(s(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),F0),s(Q111747,A5)))))) ) ) )
         <= ! [S0,F0,X] : s(cart(real,Q111733),i(s(fun(fun(Q111747,cart(real,Q111733)),cart(real,Q111733)),i(s(fun(fun(Q111747,bool),fun(fun(Q111747,cart(real,Q111733)),cart(real,Q111733))),vsum),s(fun(Q111747,bool),S0))),s(fun(Q111747,cart(real,Q111733)),i(s(fun(cart(real,Q111736),fun(Q111747,cart(real,Q111733))),i(s(fun(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),fun(cart(real,Q111736),fun(Q111747,cart(real,Q111733)))),U_1),s(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),F0))),s(cart(real,Q111736),X))))) = s(cart(real,Q111733),i(s(fun(cart(real,Q111736),cart(real,Q111733)),i(s(fun(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),fun(cart(real,Q111736),cart(real,Q111733))),i(s(fun(fun(Q111747,bool),fun(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),fun(cart(real,Q111736),cart(real,Q111733)))),U_0),s(fun(Q111747,bool),S0))),s(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),F0))),s(cart(real,Q111736),X))) )
     <= ! [F0,X,A5] : s(cart(real,Q111733),i(s(fun(cart(real,Q111736),cart(real,Q111733)),i(s(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),F0),s(Q111747,A5))),s(cart(real,Q111736),X))) = s(cart(real,Q111733),i(s(fun(Q111747,cart(real,Q111733)),i(s(fun(cart(real,Q111736),fun(Q111747,cart(real,Q111733))),i(s(fun(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),fun(cart(real,Q111736),fun(Q111747,cart(real,Q111733)))),U_1),s(fun(Q111747,fun(cart(real,Q111736),cart(real,Q111733))),F0))),s(cart(real,Q111736),X))),s(Q111747,A5))) ) ).

fof(adrop,axiom,
    ! [X] : s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))) ).

fof(aVSUMu_COMPONENT,axiom,
    ! [A,N,U_0] :
      ( ! [F0,I0,X] : s(real,i(s(fun(A,real),i(s(fun(num,fun(A,real)),i(s(fun(fun(A,cart(real,N)),fun(num,fun(A,real))),U_0),s(fun(A,cart(real,N)),F0))),s(num,I0))),s(A,X))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))),s(num,I0)))
     => ! [S0,F0,I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
         => s(real,i(s(fun(fun(A,real),real),i(s(fun(fun(A,bool),fun(fun(A,real),real)),sum),s(fun(A,bool),S0))),s(fun(A,real),i(s(fun(num,fun(A,real)),i(s(fun(fun(A,cart(real,N)),fun(num,fun(A,real))),U_0),s(fun(A,cart(real,N)),F0))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))),s(num,I0))) ) ) ).

fof(aVECTORu_ADDu_LINV,axiom,
    ! [Q99609,X] : s(cart(real,Q99609),i(s(fun(cart(real,Q99609),cart(real,Q99609)),i(s(fun(cart(real,Q99609),fun(cart(real,Q99609),cart(real,Q99609))),vectoru_add),s(cart(real,Q99609),i(s(fun(cart(real,Q99609),cart(real,Q99609)),vectoru_neg),s(cart(real,Q99609),X))))),s(cart(real,Q99609),X))) = s(cart(real,Q99609),i(s(fun(num,cart(real,Q99609)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aMATRIXu_EQUALu_COLUMNS,axiom,
    ! [N,M,A5,B0] :
      ( ! [I0] :
          ( s(cart(real,M),i(s(fun(cart(cart(real,N),M),cart(real,M)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,M))),column),s(num,I0))),s(cart(cart(real,N),M),B0))) = s(cart(real,M),i(s(fun(cart(cart(real,N),M),cart(real,M)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,M))),column),s(num,I0))),s(cart(cart(real,N),M),A5)))
         <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) )
    <=> s(cart(cart(real,N),M),A5) = s(cart(cart(real,N),M),B0) ) ).

fof(abilinear,axiom,
    ! [Q112265,Q112255,Q112254,U_1] :
      ( ! [F0,Y,X] : s(cart(real,Q112255),i(s(fun(cart(real,Q112254),cart(real,Q112255)),i(s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),F0),s(cart(real,Q112265),X))),s(cart(real,Q112254),Y))) = s(cart(real,Q112255),i(s(fun(cart(real,Q112265),cart(real,Q112255)),i(s(fun(cart(real,Q112254),fun(cart(real,Q112265),cart(real,Q112255))),i(s(fun(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),fun(cart(real,Q112254),fun(cart(real,Q112265),cart(real,Q112255)))),U_1),s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),F0))),s(cart(real,Q112254),Y))),s(cart(real,Q112265),X)))
     => ! [U_0] :
          ( ! [F0,X,Y] : s(cart(real,Q112255),i(s(fun(cart(real,Q112254),cart(real,Q112255)),i(s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),F0),s(cart(real,Q112265),X))),s(cart(real,Q112254),Y))) = s(cart(real,Q112255),i(s(fun(cart(real,Q112254),cart(real,Q112255)),i(s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),i(s(fun(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255)))),U_0),s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),F0))),s(cart(real,Q112265),X))),s(cart(real,Q112254),Y)))
         => ! [F0] :
              ( p(s(bool,i(s(fun(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),bool),bilinear),s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),F0))))
            <=> ( ! [Y] : p(s(bool,i(s(fun(fun(cart(real,Q112265),cart(real,Q112255)),bool),linear),s(fun(cart(real,Q112265),cart(real,Q112255)),i(s(fun(cart(real,Q112254),fun(cart(real,Q112265),cart(real,Q112255))),i(s(fun(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),fun(cart(real,Q112254),fun(cart(real,Q112265),cart(real,Q112255)))),U_1),s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),F0))),s(cart(real,Q112254),Y))))))
                & ! [X] : p(s(bool,i(s(fun(fun(cart(real,Q112254),cart(real,Q112255)),bool),linear),s(fun(cart(real,Q112254),cart(real,Q112255)),i(s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),i(s(fun(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255)))),U_0),s(fun(cart(real,Q112265),fun(cart(real,Q112254),cart(real,Q112255))),F0))),s(cart(real,Q112265),X)))))) ) ) ) ) ).

fof(aONORMu_TRIANGLE,axiom,
    ! [M,N,U_0] :
      ( ! [F0,G0] :
          ( ( p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0))))
            & p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),G0)))) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,M),cart(real,N))),i(s(fun(fun(cart(real,M),cart(real,N)),fun(fun(cart(real,M),cart(real,N)),fun(cart(real,M),cart(real,N)))),U_0),s(fun(cart(real,M),cart(real,N)),F0))),s(fun(cart(real,M),cart(real,N)),G0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),F0))))),s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),G0)))))))) )
     <= ! [F0,G0,X] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),G0),s(cart(real,M),X))))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,M),cart(real,N))),i(s(fun(fun(cart(real,M),cart(real,N)),fun(fun(cart(real,M),cart(real,N)),fun(cart(real,M),cart(real,N)))),U_0),s(fun(cart(real,M),cart(real,N)),F0))),s(fun(cart(real,M),cart(real,N)),G0))),s(cart(real,M),X))) ) ).

fof(aDISTu_REAL,axiom,
    ! [X,Y] : s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(real,i(s(fun(prod(cart(real,n10),cart(real,n10)),real),distance),s(prod(cart(real,n10),cart(real,n10)),i(s(fun(cart(real,n10),prod(cart(real,n10),cart(real,n10))),i(s(fun(cart(real,n10),fun(cart(real,n10),prod(cart(real,n10),cart(real,n10)))),c_),s(cart(real,n10),X))),s(cart(real,n10),Y))))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct0,axiom,
    ! [Q110833,A5] : p(s(bool,i(s(fun(cart(real,Q110833),bool),i(s(fun(cart(real,Q110833),fun(cart(real,Q110833),bool)),orthogonal),s(cart(real,Q110833),A5))),s(cart(real,Q110833),i(s(fun(num,cart(real,Q110833)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))) ).

fof(aONORMu_NEGu_LEMMA,axiom,
    ! [Q118409,Q118421,U_0] :
      ( ! [F0,X] : s(cart(real,Q118421),i(s(fun(cart(real,Q118421),cart(real,Q118421)),vectoru_neg),s(cart(real,Q118421),i(s(fun(cart(real,Q118409),cart(real,Q118421)),F0),s(cart(real,Q118409),X))))) = s(cart(real,Q118421),i(s(fun(cart(real,Q118409),cart(real,Q118421)),i(s(fun(fun(cart(real,Q118409),cart(real,Q118421)),fun(cart(real,Q118409),cart(real,Q118421))),U_0),s(fun(cart(real,Q118409),cart(real,Q118421)),F0))),s(cart(real,Q118409),X)))
     => ! [F0] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(cart(real,Q118409),cart(real,Q118421)),real),onorm),s(fun(cart(real,Q118409),cart(real,Q118421)),i(s(fun(fun(cart(real,Q118409),cart(real,Q118421)),fun(cart(real,Q118409),cart(real,Q118421))),U_0),s(fun(cart(real,Q118409),cart(real,Q118421)),F0))))))),s(real,i(s(fun(fun(cart(real,Q118409),cart(real,Q118421)),real),onorm),s(fun(cart(real,Q118409),cart(real,Q118421)),F0))))))
         <= p(s(bool,i(s(fun(fun(cart(real,Q118409),cart(real,Q118421)),bool),linear),s(fun(cart(real,Q118409),cart(real,Q118421)),F0)))) ) ) ).

fof(aBILINEARu_LZERO,axiom,
    ! [Q112532,Q112524,Q112534,H0,X] :
      ( s(cart(real,Q112534),i(s(fun(cart(real,Q112524),cart(real,Q112534)),i(s(fun(cart(real,Q112532),fun(cart(real,Q112524),cart(real,Q112534))),H0),s(cart(real,Q112532),i(s(fun(num,cart(real,Q112532)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q112524),X))) = s(cart(real,Q112534),i(s(fun(num,cart(real,Q112534)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q112532),fun(cart(real,Q112524),cart(real,Q112534))),bool),bilinear),s(fun(cart(real,Q112532),fun(cart(real,Q112524),cart(real,Q112534))),H0)))) ) ).

fof(aVSUMu_NEG,axiom,
    ! [Q106132,Q106140,U_0] :
      ( ! [F0,X] : s(cart(real,Q106140),i(s(fun(Q106132,cart(real,Q106140)),i(s(fun(fun(Q106132,cart(real,Q106140)),fun(Q106132,cart(real,Q106140))),U_0),s(fun(Q106132,cart(real,Q106140)),F0))),s(Q106132,X))) = s(cart(real,Q106140),i(s(fun(cart(real,Q106140),cart(real,Q106140)),vectoru_neg),s(cart(real,Q106140),i(s(fun(Q106132,cart(real,Q106140)),F0),s(Q106132,X)))))
     => ! [F0,S0] : s(cart(real,Q106140),i(s(fun(cart(real,Q106140),cart(real,Q106140)),vectoru_neg),s(cart(real,Q106140),i(s(fun(fun(Q106132,cart(real,Q106140)),cart(real,Q106140)),i(s(fun(fun(Q106132,bool),fun(fun(Q106132,cart(real,Q106140)),cart(real,Q106140))),vsum),s(fun(Q106132,bool),S0))),s(fun(Q106132,cart(real,Q106140)),F0))))) = s(cart(real,Q106140),i(s(fun(fun(Q106132,cart(real,Q106140)),cart(real,Q106140)),i(s(fun(fun(Q106132,bool),fun(fun(Q106132,cart(real,Q106140)),cart(real,Q106140))),vsum),s(fun(Q106132,bool),S0))),s(fun(Q106132,cart(real,Q106140)),i(s(fun(fun(Q106132,cart(real,Q106140)),fun(Q106132,cart(real,Q106140))),U_0),s(fun(Q106132,cart(real,Q106140)),F0))))) ) ).

fof(aVECTORu_MATRIXu_MULu_TRANSP,axiom,
    ! [M,N,A5,X] : s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,N),M)),transp),s(cart(cart(real,M),N),A5))))),s(cart(real,N),X))) = s(cart(real,M),i(s(fun(cart(cart(real,M),N),cart(real,M)),i(s(fun(cart(real,N),fun(cart(cart(real,M),N),cart(real,M))),vectoru_matrixu_mul),s(cart(real,N),X))),s(cart(cart(real,M),N),A5))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct9,axiom,
    ! [Q111058,A5,X,Y] :
      ( p(s(bool,i(s(fun(cart(real,Q111058),bool),i(s(fun(cart(real,Q111058),fun(cart(real,Q111058),bool)),orthogonal),s(cart(real,Q111058),i(s(fun(cart(real,Q111058),cart(real,Q111058)),i(s(fun(cart(real,Q111058),fun(cart(real,Q111058),cart(real,Q111058))),vectoru_sub),s(cart(real,Q111058),X))),s(cart(real,Q111058),Y))))),s(cart(real,Q111058),A5))))
     <= ( p(s(bool,i(s(fun(cart(real,Q111058),bool),i(s(fun(cart(real,Q111058),fun(cart(real,Q111058),bool)),orthogonal),s(cart(real,Q111058),X))),s(cart(real,Q111058),A5))))
        & p(s(bool,i(s(fun(cart(real,Q111058),bool),i(s(fun(cart(real,Q111058),fun(cart(real,Q111058),bool)),orthogonal),s(cart(real,Q111058),Y))),s(cart(real,Q111058),A5)))) ) ) ).

fof(aIMAGEu_LIFTu_DROPu_conjunct1,axiom,
    ! [S0] : s(fun(real,bool),i(s(fun(fun(real,bool),fun(real,bool)),i(s(fun(fun(real,real),fun(fun(real,bool),fun(real,bool))),image),s(fun(real,real),i(s(fun(fun(real,cart(real,n10)),fun(real,real)),i(s(fun(fun(cart(real,n10),real),fun(fun(real,cart(real,n10)),fun(real,real))),o),s(fun(cart(real,n10),real),drop))),s(fun(real,cart(real,n10)),lift))))),s(fun(real,bool),S0))) = s(fun(real,bool),S0) ).

fof(aORTHOGONALu_0,axiom,
    ! [Q110652,X] :
      ( p(s(bool,i(s(fun(cart(real,Q110652),bool),i(s(fun(cart(real,Q110652),fun(cart(real,Q110652),bool)),orthogonal),s(cart(real,Q110652),i(s(fun(num,cart(real,Q110652)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q110652),X))))
      & p(s(bool,i(s(fun(cart(real,Q110652),bool),i(s(fun(cart(real,Q110652),fun(cart(real,Q110652),bool)),orthogonal),s(cart(real,Q110652),X))),s(cart(real,Q110652),i(s(fun(num,cart(real,Q110652)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))) ) ).

fof(aMATRIXu_SUBu_LZERO,axiom,
    ! [N,M,A5] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),A5))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),i(s(fun(num,cart(cart(real,N),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(cart(real,N),M),A5))) ).

fof(aNORMu_EQu_0u_IMP,axiom,
    ! [Q102346,X] :
      ( s(cart(real,Q102346),i(s(fun(num,cart(real,Q102346)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q102346),X)
     <= s(real,i(s(fun(cart(real,Q102346),real),vectoru_norm),s(cart(real,Q102346),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aEUCLIDEANu_SPACEu_INFINITE,axiom,
    ! [N] : p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),infinite),s(fun(cart(real,N),bool),univ)))) ).

fof(aMATRIXu_NEGu_ADD,axiom,
    ! [N,M,A5,B0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),B0))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))) ).

fof(aDROPu_LAMBDA,axiom,
    ! [U_0] :
      ( ! [X,I0] : s(real,i(s(fun(num,real),i(s(fun(fun(num,real),fun(num,real)),U_0),s(fun(num,real),X))),s(num,I0))) = s(real,i(s(fun(num,real),X),s(num,I0)))
     => ! [X] : s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(fun(num,real),cart(real,n10)),lambda),s(fun(num,real),i(s(fun(fun(num,real),fun(num,real)),U_0),s(fun(num,real),X))))))) = s(real,i(s(fun(num,real),X),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ) ).

fof(aVSUMu_RMUL,axiom,
    ! [Q105678,Q105681,U_0] :
      ( ! [C0,S0,V] : s(cart(real,Q105681),i(s(fun(fun(Q105678,cart(real,Q105681)),cart(real,Q105681)),i(s(fun(fun(Q105678,bool),fun(fun(Q105678,cart(real,Q105681)),cart(real,Q105681))),vsum),s(fun(Q105678,bool),S0))),s(fun(Q105678,cart(real,Q105681)),i(s(fun(cart(real,Q105681),fun(Q105678,cart(real,Q105681))),i(s(fun(fun(Q105678,real),fun(cart(real,Q105681),fun(Q105678,cart(real,Q105681)))),U_0),s(fun(Q105678,real),C0))),s(cart(real,Q105681),V))))) = s(cart(real,Q105681),i(s(fun(cart(real,Q105681),cart(real,Q105681)),i(s(fun(real,fun(cart(real,Q105681),cart(real,Q105681))),r_),s(real,i(s(fun(fun(Q105678,real),real),i(s(fun(fun(Q105678,bool),fun(fun(Q105678,real),real)),sum),s(fun(Q105678,bool),S0))),s(fun(Q105678,real),C0))))),s(cart(real,Q105681),V)))
     <= ! [C0,V,X] : s(cart(real,Q105681),i(s(fun(cart(real,Q105681),cart(real,Q105681)),i(s(fun(real,fun(cart(real,Q105681),cart(real,Q105681))),r_),s(real,i(s(fun(Q105678,real),C0),s(Q105678,X))))),s(cart(real,Q105681),V))) = s(cart(real,Q105681),i(s(fun(Q105678,cart(real,Q105681)),i(s(fun(cart(real,Q105681),fun(Q105678,cart(real,Q105681))),i(s(fun(fun(Q105678,real),fun(cart(real,Q105681),fun(Q105678,cart(real,Q105681)))),U_0),s(fun(Q105678,real),C0))),s(cart(real,Q105681),V))),s(Q105678,X))) ) ).

fof(aNORMu_LT,axiom,
    ! [Q103280,Q103282,X,Y] : s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,Q103280),real),vectoru_norm),s(cart(real,Q103280),X))))),s(real,i(s(fun(cart(real,Q103282),real),vectoru_norm),s(cart(real,Q103282),Y))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,Q103280),real),i(s(fun(cart(real,Q103280),fun(cart(real,Q103280),real)),dot),s(cart(real,Q103280),X))),s(cart(real,Q103280),X))))),s(real,i(s(fun(cart(real,Q103282),real),i(s(fun(cart(real,Q103282),fun(cart(real,Q103282),real)),dot),s(cart(real,Q103282),Y))),s(cart(real,Q103282),Y))))) ).

fof(aNORMu_REAL,axiom,
    ! [X] : s(real,i(s(fun(cart(real,n10),real),vectoru_norm),s(cart(real,n10),X))) = s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ).

fof(aADJOINTu_UNIQUE,axiom,
    ! [Q113333,Q113332,F0,FI_] :
      ( ( p(s(bool,i(s(fun(fun(cart(real,Q113333),cart(real,Q113332)),bool),linear),s(fun(cart(real,Q113333),cart(real,Q113332)),F0))))
        & ! [X,Y] : s(real,i(s(fun(cart(real,Q113333),real),i(s(fun(cart(real,Q113333),fun(cart(real,Q113333),real)),dot),s(cart(real,Q113333),i(s(fun(cart(real,Q113332),cart(real,Q113333)),FI_),s(cart(real,Q113332),X))))),s(cart(real,Q113333),Y))) = s(real,i(s(fun(cart(real,Q113332),real),i(s(fun(cart(real,Q113332),fun(cart(real,Q113332),real)),dot),s(cart(real,Q113332),X))),s(cart(real,Q113332),i(s(fun(cart(real,Q113333),cart(real,Q113332)),F0),s(cart(real,Q113333),Y))))) )
     => s(fun(cart(real,Q113332),cart(real,Q113333)),FI_) = s(fun(cart(real,Q113332),cart(real,Q113333)),i(s(fun(fun(cart(real,Q113333),cart(real,Q113332)),fun(cart(real,Q113332),cart(real,Q113333))),adjoint),s(fun(cart(real,Q113333),cart(real,Q113332)),F0))) ) ).

fof(aLIFTu_COMPONENT,axiom,
    ! [X] : s(real,X) = s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aMATRIXu_CMULu_SUBu_LDISTRIB,axiom,
    ! [N,M,A5,B0,C0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),B0))))) ).

fof(aVSUMu_NORMu_ALLSUBSETSu_BOUND,axiom,
    ! [A,N,U_0] :
      ( ! [F0,X] : s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))) = s(real,i(s(fun(A,real),i(s(fun(fun(A,cart(real,N)),fun(A,real)),U_0),s(fun(A,cart(real,N)),F0))),s(A,X)))
     => ! [F0,P0,E0] :
          ( ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),P0))))
            & ! [Q0] :
                ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(fun(A,bool),fun(fun(A,bool),bool)),subset),s(fun(A,bool),Q0))),s(fun(A,bool),P0))))
               => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),Q0))),s(fun(A,cart(real,N)),F0))))))),s(real,E0)))) ) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(A,real),real),i(s(fun(fun(A,bool),fun(fun(A,real),real)),sum),s(fun(A,bool),P0))),s(fun(A,real),i(s(fun(fun(A,cart(real,N)),fun(A,real)),U_0),s(fun(A,cart(real,N)),F0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(real,E0)))))))) ) ) ).

fof(aVSUMu_BIJECTION,axiom,
    ! [N,A,F0,P0,S0] :
      ( ( ! [Y] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,Y))),s(fun(A,bool),S0))))
           => ( ? [X] :
                  ( s(A,i(s(fun(A,A),P0),s(A,X))) = s(A,Y)
                  & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
              & ! [X,XI_] :
                  ( s(A,X) = s(A,XI_)
                 <= ( s(A,Y) = s(A,i(s(fun(A,A),P0),s(A,X)))
                    & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,XI_))),s(fun(A,bool),S0))))
                    & s(A,Y) = s(A,i(s(fun(A,A),P0),s(A,XI_)))
                    & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) ) ) ) )
        & ! [X] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,i(s(fun(A,A),P0),s(A,X))))),s(fun(A,bool),S0))))
           <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) ) )
     => s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),i(s(fun(fun(A,A),fun(A,cart(real,N))),i(s(fun(fun(A,cart(real,N)),fun(fun(A,A),fun(A,cart(real,N)))),o),s(fun(A,cart(real,N)),F0))),s(fun(A,A),P0))))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))) ) ).

fof(aSUMu_2,axiom,
    ! [T0] : s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,real),T0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ).

fof(aVSUMu_SUPERSET,axiom,
    ! [A,N,F0,U,V] :
      ( ( ! [X] :
            ( ( ~ p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),U))))
              & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),V)))) )
           => s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(fun(A,bool),fun(fun(A,bool),bool)),subset),s(fun(A,bool),U))),s(fun(A,bool),V)))) )
     => s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),V))),s(fun(A,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),U))),s(fun(A,cart(real,N)),F0))) ) ).

fof(aREALu_LTu_RSQRT,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y))))
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) ) ).

fof(aVSUMu_CLAUSESu_NUMSEGu_conjunct1,axiom,
    ! [Q106879,M0,N0] : s(cart(real,Q106879),i(s(fun(fun(num,cart(real,Q106879)),cart(real,Q106879)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106879)),cart(real,Q106879))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),suc),s(num,N0))))))),s(fun(num,cart(real,Q106879)),f))) = s(cart(real,Q106879),i(s(fun(cart(real,Q106879),cart(real,Q106879)),i(s(fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879))),i(s(fun(bool,fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,i(s(fun(num,num),suc),s(num,N0))))))),s(cart(real,Q106879),i(s(fun(cart(real,Q106879),cart(real,Q106879)),i(s(fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879))),vectoru_add),s(cart(real,Q106879),i(s(fun(fun(num,cart(real,Q106879)),cart(real,Q106879)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106879)),cart(real,Q106879))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q106879)),f))))),s(cart(real,Q106879),i(s(fun(num,cart(real,Q106879)),f),s(num,i(s(fun(num,num),suc),s(num,N0))))))))),s(cart(real,Q106879),i(s(fun(fun(num,cart(real,Q106879)),cart(real,Q106879)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106879)),cart(real,Q106879))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q106879)),f))))) ).

fof(aDOTu_NORMu_NEG,axiom,
    ! [Q104559,X,Y] : s(real,i(s(fun(cart(real,Q104559),real),i(s(fun(cart(real,Q104559),fun(cart(real,Q104559),real)),dot),s(cart(real,Q104559),X))),s(cart(real,Q104559),Y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104559),real),vectoru_norm),s(cart(real,Q104559),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104559),real),vectoru_norm),s(cart(real,Q104559),Y))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104559),real),vectoru_norm),s(cart(real,Q104559),i(s(fun(cart(real,Q104559),cart(real,Q104559)),i(s(fun(cart(real,Q104559),fun(cart(real,Q104559),cart(real,Q104559))),vectoru_sub),s(cart(real,Q104559),X))),s(cart(real,Q104559),Y))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ).

fof(aORTHOGONALu_BASIS,axiom,
    ! [N,X,I0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
     => ( p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(real,N),fun(cart(real,N),bool)),orthogonal),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(cart(real,N),X))))
      <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))) ) ) ).

fof(aVSUMu_EQu_GENERALu_INVERSES,axiom,
    ! [A,B,N,S0,T0,F0,G0,H0,K0] :
      ( ( ! [X] :
            ( ( p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,i(s(fun(A,B),H0),s(A,X))))),s(fun(B,bool),T0))))
              & s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))) = s(cart(real,N),i(s(fun(B,cart(real,N)),G0),s(B,i(s(fun(A,B),H0),s(A,X)))))
              & s(A,X) = s(A,i(s(fun(B,A),K0),s(B,i(s(fun(A,B),H0),s(A,X))))) )
           <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
        & ! [Y] :
            ( ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,i(s(fun(B,A),K0),s(B,Y))))),s(fun(A,bool),S0))))
              & s(B,Y) = s(B,i(s(fun(A,B),H0),s(A,i(s(fun(B,A),K0),s(B,Y))))) )
           <= p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,Y))),s(fun(B,bool),T0)))) ) )
     => s(cart(real,N),i(s(fun(fun(B,cart(real,N)),cart(real,N)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,N)),cart(real,N))),vsum),s(fun(B,bool),T0))),s(fun(B,cart(real,N)),G0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))) ) ).

fof(aVSUMu_EQu_SUPERSET,axiom,
    ! [A,Q106306,F0,S0,T0] :
      ( ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),T0))))
        & ! [X] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),T0))))
           => s(cart(real,Q106306),i(s(fun(A,cart(real,Q106306)),F0),s(A,X))) = s(cart(real,Q106306),i(s(fun(A,cart(real,Q106306)),g),s(A,X))) )
        & ! [X] :
            ( s(cart(real,Q106306),i(s(fun(num,cart(real,Q106306)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q106306),i(s(fun(A,cart(real,Q106306)),F0),s(A,X)))
           <= ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
              & ~ p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),T0)))) ) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(fun(A,bool),fun(fun(A,bool),bool)),subset),s(fun(A,bool),T0))),s(fun(A,bool),S0)))) )
     => s(cart(real,Q106306),i(s(fun(fun(A,cart(real,Q106306)),cart(real,Q106306)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q106306)),cart(real,Q106306))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q106306)),F0))) = s(cart(real,Q106306),i(s(fun(fun(A,cart(real,Q106306)),cart(real,Q106306)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q106306)),cart(real,Q106306))),vsum),s(fun(A,bool),T0))),s(fun(A,cart(real,Q106306)),g))) ) ).

fof(aDOTu_RNEG,axiom,
    ! [Q100443,X,Y] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(cart(real,Q100443),real),i(s(fun(cart(real,Q100443),fun(cart(real,Q100443),real)),dot),s(cart(real,Q100443),X))),s(cart(real,Q100443),Y))))) = s(real,i(s(fun(cart(real,Q100443),real),i(s(fun(cart(real,Q100443),fun(cart(real,Q100443),real)),dot),s(cart(real,Q100443),X))),s(cart(real,Q100443),i(s(fun(cart(real,Q100443),cart(real,Q100443)),vectoru_neg),s(cart(real,Q100443),Y))))) ).

fof(aONORMu_POSu_LT,axiom,
    ! [Q118333,Q118355,F0] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(fun(cart(real,Q118333),cart(real,Q118355)),real),onorm),s(fun(cart(real,Q118333),cart(real,Q118355)),F0))))))
      <=> ~ ! [X] : s(cart(real,Q118355),i(s(fun(cart(real,Q118333),cart(real,Q118355)),F0),s(cart(real,Q118333),X))) = s(cart(real,Q118355),i(s(fun(num,cart(real,Q118355)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
     <= p(s(bool,i(s(fun(fun(cart(real,Q118333),cart(real,Q118355)),bool),linear),s(fun(cart(real,Q118333),cart(real,Q118355)),F0)))) ) ).

fof(aSQRTu_LTu_0,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))) ) ).

fof(aVSUMu_EQu_GENERAL,axiom,
    ! [A,B,N,S0,T0,F0,G0,H0] :
      ( s(cart(real,N),i(s(fun(fun(B,cart(real,N)),cart(real,N)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,N)),cart(real,N))),vsum),s(fun(B,bool),T0))),s(fun(B,cart(real,N)),G0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0)))
     <= ( ! [X] :
            ( ( s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))) = s(cart(real,N),i(s(fun(B,cart(real,N)),G0),s(B,i(s(fun(A,B),H0),s(A,X)))))
              & p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,i(s(fun(A,B),H0),s(A,X))))),s(fun(B,bool),T0)))) )
           <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
        & ! [Y] :
            ( ( ? [X] :
                  ( s(B,Y) = s(B,i(s(fun(A,B),H0),s(A,X)))
                  & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
              & ! [X,XI_] :
                  ( ( s(B,i(s(fun(A,B),H0),s(A,X))) = s(B,Y)
                    & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,XI_))),s(fun(A,bool),S0))))
                    & s(B,Y) = s(B,i(s(fun(A,B),H0),s(A,XI_)))
                    & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
                 => s(A,XI_) = s(A,X) ) )
           <= p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,Y))),s(fun(B,bool),T0)))) ) ) ) ).

fof(aORTHOGONALu_REFL,axiom,
    ! [Q110667,X] :
      ( p(s(bool,i(s(fun(cart(real,Q110667),bool),i(s(fun(cart(real,Q110667),fun(cart(real,Q110667),bool)),orthogonal),s(cart(real,Q110667),X))),s(cart(real,Q110667),X))))
    <=> s(cart(real,Q110667),i(s(fun(num,cart(real,Q110667)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q110667),X) ) ).

fof(aDOTu_NORM,axiom,
    ! [Q104506,X,Y] : s(real,i(s(fun(cart(real,Q104506),real),i(s(fun(cart(real,Q104506),fun(cart(real,Q104506),real)),dot),s(cart(real,Q104506),X))),s(cart(real,Q104506),Y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104506),real),vectoru_norm),s(cart(real,Q104506),i(s(fun(cart(real,Q104506),cart(real,Q104506)),i(s(fun(cart(real,Q104506),fun(cart(real,Q104506),cart(real,Q104506))),vectoru_add),s(cart(real,Q104506),X))),s(cart(real,Q104506),Y))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104506),real),vectoru_norm),s(cart(real,Q104506),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104506),real),vectoru_norm),s(cart(real,Q104506),Y))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ).

fof(aVSUMu_DELETE,axiom,
    ! [Q106054,Q106053,F0,S0,A5] :
      ( ( p(s(bool,i(s(fun(fun(Q106053,bool),bool),finite),s(fun(Q106053,bool),S0))))
        & p(s(bool,i(s(fun(fun(Q106053,bool),bool),i(s(fun(Q106053,fun(fun(Q106053,bool),bool)),in),s(Q106053,A5))),s(fun(Q106053,bool),S0)))) )
     => s(cart(real,Q106054),i(s(fun(cart(real,Q106054),cart(real,Q106054)),i(s(fun(cart(real,Q106054),fun(cart(real,Q106054),cart(real,Q106054))),vectoru_sub),s(cart(real,Q106054),i(s(fun(fun(Q106053,cart(real,Q106054)),cart(real,Q106054)),i(s(fun(fun(Q106053,bool),fun(fun(Q106053,cart(real,Q106054)),cart(real,Q106054))),vsum),s(fun(Q106053,bool),S0))),s(fun(Q106053,cart(real,Q106054)),F0))))),s(cart(real,Q106054),i(s(fun(Q106053,cart(real,Q106054)),F0),s(Q106053,A5))))) = s(cart(real,Q106054),i(s(fun(fun(Q106053,cart(real,Q106054)),cart(real,Q106054)),i(s(fun(fun(Q106053,bool),fun(fun(Q106053,cart(real,Q106054)),cart(real,Q106054))),vsum),s(fun(Q106053,bool),i(s(fun(Q106053,fun(Q106053,bool)),i(s(fun(fun(Q106053,bool),fun(Q106053,fun(Q106053,bool))),delete),s(fun(Q106053,bool),S0))),s(Q106053,A5))))),s(fun(Q106053,cart(real,Q106054)),F0))) ) ).

fof(aVECTORu_EQu_RDOT,axiom,
    ! [Q110616,X,Y] :
      ( s(cart(real,Q110616),Y) = s(cart(real,Q110616),X)
    <=> ! [Z0] : s(real,i(s(fun(cart(real,Q110616),real),i(s(fun(cart(real,Q110616),fun(cart(real,Q110616),real)),dot),s(cart(real,Q110616),X))),s(cart(real,Q110616),Z0))) = s(real,i(s(fun(cart(real,Q110616),real),i(s(fun(cart(real,Q110616),fun(cart(real,Q110616),real)),dot),s(cart(real,Q110616),Y))),s(cart(real,Q110616),Z0))) ) ).

fof(aMATRIXu_NEGu_EQu_0,axiom,
    ! [N,M,A5] :
      ( s(cart(cart(real,N),M),A5) = s(cart(cart(real,N),M),i(s(fun(num,cart(cart(real,N),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),A5))) = s(cart(cart(real,N),M),i(s(fun(num,cart(cart(real,N),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVSUM,axiom,
    ! [Q105555,Q105569,F0,S0] :
      ( p(s(bool,i(s(fun(fun(Q105555,bool),bool),finite),s(fun(Q105555,bool),S0))))
     => s(cart(real,Q105569),i(s(fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569)),i(s(fun(fun(Q105555,bool),fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569))),vsum),s(fun(Q105555,bool),S0))),s(fun(Q105555,cart(real,Q105569)),F0))) = s(cart(real,Q105569),i(s(fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569)),i(s(fun(fun(Q105555,bool),fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569))),i(s(fun(fun(cart(real,Q105569),fun(cart(real,Q105569),cart(real,Q105569))),fun(fun(Q105555,bool),fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569)))),iterate),s(fun(cart(real,Q105569),fun(cart(real,Q105569),cart(real,Q105569))),vectoru_add))),s(fun(Q105555,bool),S0))),s(fun(Q105555,cart(real,Q105569)),F0))) ) ).

fof(aBILINEARu_RZERO,axiom,
    ! [Q112563,Q112572,Q112574,H0,X] :
      ( s(cart(real,Q112574),i(s(fun(cart(real,Q112572),cart(real,Q112574)),i(s(fun(cart(real,Q112563),fun(cart(real,Q112572),cart(real,Q112574))),H0),s(cart(real,Q112563),X))),s(cart(real,Q112572),i(s(fun(num,cart(real,Q112572)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q112574),i(s(fun(num,cart(real,Q112574)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q112563),fun(cart(real,Q112572),cart(real,Q112574))),bool),bilinear),s(fun(cart(real,Q112563),fun(cart(real,Q112572),cart(real,Q112574))),H0)))) ) ).

fof(aMATRIXu_MULu_RZERO,axiom,
    ! [N,P,M,A5] : s(cart(cart(real,P),M),i(s(fun(num,cart(cart(real,P),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),i(s(fun(num,cart(cart(real,P),N)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aMATRIXu_ADDu_ACu_conjunct0,axiom,
    ! [N,M] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),a))),s(cart(cart(real,N),M),b))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),b))),s(cart(cart(real,N),M),a))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct1,axiom,
    ! [Q110858,A5,X,C0] :
      ( p(s(bool,i(s(fun(cart(real,Q110858),bool),i(s(fun(cart(real,Q110858),fun(cart(real,Q110858),bool)),orthogonal),s(cart(real,Q110858),A5))),s(cart(real,Q110858),i(s(fun(cart(real,Q110858),cart(real,Q110858)),i(s(fun(real,fun(cart(real,Q110858),cart(real,Q110858))),r_),s(real,C0))),s(cart(real,Q110858),X))))))
     <= p(s(bool,i(s(fun(cart(real,Q110858),bool),i(s(fun(cart(real,Q110858),fun(cart(real,Q110858),bool)),orthogonal),s(cart(real,Q110858),A5))),s(cart(real,Q110858),X)))) ) ).

fof(aDOTu_BASISu_BASISu_UNEQUAL,axiom,
    ! [Q110508,I0,J0] :
      ( s(num,J0) != s(num,I0)
     => s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q110508),real),i(s(fun(cart(real,Q110508),fun(cart(real,Q110508),real)),dot),s(cart(real,Q110508),i(s(fun(num,cart(real,Q110508)),basis),s(num,I0))))),s(cart(real,Q110508),i(s(fun(num,cart(real,Q110508)),basis),s(num,J0))))) ) ).

fof(aONORM,axiom,
    ! [M,N,F0] :
      ( ( ! [B0] :
            ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),F0))))),s(real,B0))))
           <= ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,B0))),s(real,i(s(fun(cart(real,M),real),vectoru_norm),s(cart(real,M),X)))))))) )
        & ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),F0))))),s(real,i(s(fun(cart(real,M),real),vectoru_norm),s(cart(real,M),X)))))))) )
     <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ).

fof(acolumn,axiom,
    ! [N,M,U_0] :
      ( ! [A5,J0,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))) = s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(num,J0))),s(num,I0)))
     => ! [A5,J0] : s(cart(real,M),i(s(fun(cart(cart(real,N),M),cart(real,M)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,M))),column),s(num,J0))),s(cart(cart(real,N),M),A5))) = s(cart(real,M),i(s(fun(fun(num,real),cart(real,M)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(num,J0))))) ) ).

fof(aDISTu_NZ,axiom,
    ! [Q104879,X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(prod(cart(real,Q104879),cart(real,Q104879)),real),distance),s(prod(cart(real,Q104879),cart(real,Q104879)),i(s(fun(cart(real,Q104879),prod(cart(real,Q104879),cart(real,Q104879))),i(s(fun(cart(real,Q104879),fun(cart(real,Q104879),prod(cart(real,Q104879),cart(real,Q104879)))),c_),s(cart(real,Q104879),X))),s(cart(real,Q104879),Y))))))))
    <=> s(cart(real,Q104879),X) != s(cart(real,Q104879),Y) ) ).

fof(aVECTORu_ADDu_COMPONENT,axiom,
    ! [N,X,Y,I0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))))),s(num,I0))) ).

fof(aBILINEARu_RMUL,axiom,
    ! [Q112424,Q112411,Q112421,H0,C0,X,Y] :
      ( s(cart(real,Q112424),i(s(fun(cart(real,Q112421),cart(real,Q112424)),i(s(fun(cart(real,Q112411),fun(cart(real,Q112421),cart(real,Q112424))),H0),s(cart(real,Q112411),X))),s(cart(real,Q112421),i(s(fun(cart(real,Q112421),cart(real,Q112421)),i(s(fun(real,fun(cart(real,Q112421),cart(real,Q112421))),r_),s(real,C0))),s(cart(real,Q112421),Y))))) = s(cart(real,Q112424),i(s(fun(cart(real,Q112424),cart(real,Q112424)),i(s(fun(real,fun(cart(real,Q112424),cart(real,Q112424))),r_),s(real,C0))),s(cart(real,Q112424),i(s(fun(cart(real,Q112421),cart(real,Q112424)),i(s(fun(cart(real,Q112411),fun(cart(real,Q112421),cart(real,Q112424))),H0),s(cart(real,Q112411),X))),s(cart(real,Q112421),Y)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q112411),fun(cart(real,Q112421),cart(real,Q112424))),bool),bilinear),s(fun(cart(real,Q112411),fun(cart(real,Q112421),cart(real,Q112424))),H0)))) ) ).

fof(aVSUMu_REAL,axiom,
    ! [Q119749,F0,S0] :
      ( p(s(bool,i(s(fun(fun(Q119749,bool),bool),finite),s(fun(Q119749,bool),S0))))
     => s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(fun(Q119749,real),real),i(s(fun(fun(Q119749,bool),fun(fun(Q119749,real),real)),sum),s(fun(Q119749,bool),S0))),s(fun(Q119749,real),i(s(fun(fun(Q119749,cart(real,n10)),fun(Q119749,real)),i(s(fun(fun(cart(real,n10),real),fun(fun(Q119749,cart(real,n10)),fun(Q119749,real))),o),s(fun(cart(real,n10),real),drop))),s(fun(Q119749,cart(real,n10)),F0))))))) = s(cart(real,n10),i(s(fun(fun(Q119749,cart(real,n10)),cart(real,n10)),i(s(fun(fun(Q119749,bool),fun(fun(Q119749,cart(real,n10)),cart(real,n10))),vsum),s(fun(Q119749,bool),S0))),s(fun(Q119749,cart(real,n10)),F0))) ) ).

fof(aDISTu_TRIANGLEu_ALT,axiom,
    ! [Q104777,X,Y,Z0] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,Q104777),cart(real,Q104777)),real),distance),s(prod(cart(real,Q104777),cart(real,Q104777)),i(s(fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777))),i(s(fun(cart(real,Q104777),fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777)))),c_),s(cart(real,Q104777),Y))),s(cart(real,Q104777),Z0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,Q104777),cart(real,Q104777)),real),distance),s(prod(cart(real,Q104777),cart(real,Q104777)),i(s(fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777))),i(s(fun(cart(real,Q104777),fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777)))),c_),s(cart(real,Q104777),X))),s(cart(real,Q104777),Y))))))),s(real,i(s(fun(prod(cart(real,Q104777),cart(real,Q104777)),real),distance),s(prod(cart(real,Q104777),cart(real,Q104777)),i(s(fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777))),i(s(fun(cart(real,Q104777),fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777)))),c_),s(cart(real,Q104777),X))),s(cart(real,Q104777),Z0)))))))))) ).

fof(aTRANSPu_MATRIXu_NEG,axiom,
    ! [N,M,A5] : s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),A5))))) = s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),matrixu_neg),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))) ).

fof(aDISTu_0,axiom,
    ! [Q105385,X] :
      ( s(real,i(s(fun(cart(real,Q105385),real),vectoru_norm),s(cart(real,Q105385),X))) = s(real,i(s(fun(prod(cart(real,Q105385),cart(real,Q105385)),real),distance),s(prod(cart(real,Q105385),cart(real,Q105385)),i(s(fun(cart(real,Q105385),prod(cart(real,Q105385),cart(real,Q105385))),i(s(fun(cart(real,Q105385),fun(cart(real,Q105385),prod(cart(real,Q105385),cart(real,Q105385)))),c_),s(cart(real,Q105385),X))),s(cart(real,Q105385),i(s(fun(num,cart(real,Q105385)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))))
      & s(real,i(s(fun(prod(cart(real,Q105385),cart(real,Q105385)),real),distance),s(prod(cart(real,Q105385),cart(real,Q105385)),i(s(fun(cart(real,Q105385),prod(cart(real,Q105385),cart(real,Q105385))),i(s(fun(cart(real,Q105385),fun(cart(real,Q105385),prod(cart(real,Q105385),cart(real,Q105385)))),c_),s(cart(real,Q105385),i(s(fun(num,cart(real,Q105385)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q105385),X))))) = s(real,i(s(fun(cart(real,Q105385),real),vectoru_norm),s(cart(real,Q105385),X))) ) ).

fof(aSQRTu_POWu_2,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => s(real,X) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ) ).

fof(aEXISTSu_VECTORu_1,axiom,
    ! [A] :
      ( ? [V] : p(s(bool,i(s(fun(cart(A,n10),bool),p0),s(cart(A,n10),V))))
    <=> ? [X] : p(s(bool,i(s(fun(cart(A,n10),bool),p0),s(cart(A,n10),i(s(fun(list(A),cart(A,n10)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,X))),s(list(A),nil)))))))) ) ).

fof(aVSUMu_CLAUSESu_RIGHT,axiom,
    ! [N,F0,M0,N0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,N0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0)))) )
     => s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,N)),F0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,N0))))) ) ).

fof(aNORMu_LTu_SQUAREu_ALT,axiom,
    ! [N,X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,a0))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) )
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0)))) ) ).

fof(aVECTORu_3u_conjunct0,axiom,
    ! [A] : s(A,x) = s(A,i(s(fun(num,A),i(s(fun(cart(A,n3),fun(num,A)),d_),s(cart(A,n3),i(s(fun(list(A),cart(A,n3)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,x))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,y))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,z))),s(list(A),nil))))))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aVSUMu_3,axiom,
    ! [Q109650,T0] : s(cart(real,Q109650),i(s(fun(fun(num,cart(real,Q109650)),cart(real,Q109650)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109650)),cart(real,Q109650))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,Q109650)),T0))) = s(cart(real,Q109650),i(s(fun(cart(real,Q109650),cart(real,Q109650)),i(s(fun(cart(real,Q109650),fun(cart(real,Q109650),cart(real,Q109650))),vectoru_add),s(cart(real,Q109650),i(s(fun(num,cart(real,Q109650)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(real,Q109650),i(s(fun(cart(real,Q109650),cart(real,Q109650)),i(s(fun(cart(real,Q109650),fun(cart(real,Q109650),cart(real,Q109650))),vectoru_add),s(cart(real,Q109650),i(s(fun(num,cart(real,Q109650)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q109650),i(s(fun(num,cart(real,Q109650)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) ).

fof(aVSUMu_EQ,axiom,
    ! [Q106171,Q106182,F0,G0,S0] :
      ( ! [X] :
          ( s(cart(real,Q106182),i(s(fun(Q106171,cart(real,Q106182)),F0),s(Q106171,X))) = s(cart(real,Q106182),i(s(fun(Q106171,cart(real,Q106182)),G0),s(Q106171,X)))
         <= p(s(bool,i(s(fun(fun(Q106171,bool),bool),i(s(fun(Q106171,fun(fun(Q106171,bool),bool)),in),s(Q106171,X))),s(fun(Q106171,bool),S0)))) )
     => s(cart(real,Q106182),i(s(fun(fun(Q106171,cart(real,Q106182)),cart(real,Q106182)),i(s(fun(fun(Q106171,bool),fun(fun(Q106171,cart(real,Q106182)),cart(real,Q106182))),vsum),s(fun(Q106171,bool),S0))),s(fun(Q106171,cart(real,Q106182)),G0))) = s(cart(real,Q106182),i(s(fun(fun(Q106171,cart(real,Q106182)),cart(real,Q106182)),i(s(fun(fun(Q106171,bool),fun(fun(Q106171,cart(real,Q106182)),cart(real,Q106182))),vsum),s(fun(Q106171,bool),S0))),s(fun(Q106171,cart(real,Q106182)),F0))) ) ).

fof(aVECTORu_NEGu_0,axiom,
    ! [Q100059] : s(cart(real,Q100059),i(s(fun(cart(real,Q100059),cart(real,Q100059)),vectoru_neg),s(cart(real,Q100059),i(s(fun(num,cart(real,Q100059)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q100059),i(s(fun(num,cart(real,Q100059)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aVSUMu_1,axiom,
    ! [Q109598] : s(cart(real,Q109598),i(s(fun(fun(num,cart(real,Q109598)),cart(real,Q109598)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109598)),cart(real,Q109598))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(fun(num,cart(real,Q109598)),f))) = s(cart(real,Q109598),i(s(fun(num,cart(real,Q109598)),f),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aSQRTu_EQu_0,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(real,real),sqrt),s(real,X)))
      <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,X) ) ) ).

fof(aNORMu_GTu_SQUARE,axiom,
    ! [N,X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,a0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))))
        | p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_gt),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) )
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_gt),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0)))) ) ).

fof(aNORMu_BOUNDu_GENERALIZE,axiom,
    ! [N,M,F0,B0] :
      ( ( ! [X] :
            ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(cart(real,M),real),vectoru_norm),s(cart(real,M),X)))
           => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))))),s(real,B0)))) )
      <=> ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,B0))),s(real,i(s(fun(cart(real,M),real),vectoru_norm),s(cart(real,M),X)))))))) )
     <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ).

fof(aVECTORu_ADDu_RINV,axiom,
    ! [Q99628,X] : s(cart(real,Q99628),i(s(fun(cart(real,Q99628),cart(real,Q99628)),i(s(fun(cart(real,Q99628),fun(cart(real,Q99628),cart(real,Q99628))),vectoru_add),s(cart(real,Q99628),X))),s(cart(real,Q99628),i(s(fun(cart(real,Q99628),cart(real,Q99628)),vectoru_neg),s(cart(real,Q99628),X))))) = s(cart(real,Q99628),i(s(fun(num,cart(real,Q99628)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(amatrixu_add,axiom,
    ! [N,M,U_1] :
      ( ! [U_0] :
          ( ! [A5,B0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))) = s(cart(cart(real,N),M),i(s(fun(fun(num,cart(real,N)),cart(cart(real,N),M)),lambda),s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),fun(num,cart(real,N)))),U_0),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0)))))
         <= ! [A5,B0,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),fun(num,cart(real,N)))),U_0),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))),s(num,I0))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),fun(num,fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))),s(num,I0))))) )
     <= ! [A5,B0,I0,J0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),B0))),s(num,I0))))),s(num,J0))))) = s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),fun(num,fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))),s(num,I0))),s(num,J0))) ) ).

fof(aLINEARu_ZERO,axiom,
    ! [Q111694,Q111699,U_0] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q111694),cart(real,Q111699)),bool),linear),s(fun(cart(real,Q111694),cart(real,Q111699)),U_0))))
     <= ! [X] : s(cart(real,Q111699),i(s(fun(cart(real,Q111694),cart(real,Q111699)),U_0),s(cart(real,Q111694),X))) = s(cart(real,Q111699),i(s(fun(num,cart(real,Q111699)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aMATRIXu_VECTORu_MULu_RMUL,axiom,
    ! [N,M,A5,X,C0] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,C0))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),X))))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(real,fun(cart(real,M),cart(real,M))),r_),s(real,C0))),s(cart(real,M),X))))) ).

fof(aNORMu_LE,axiom,
    ! [Q103249,Q103251,X,Y] : s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q103249),real),vectoru_norm),s(cart(real,Q103249),X))))),s(real,i(s(fun(cart(real,Q103251),real),vectoru_norm),s(cart(real,Q103251),Y))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q103249),real),i(s(fun(cart(real,Q103249),fun(cart(real,Q103249),real)),dot),s(cart(real,Q103249),X))),s(cart(real,Q103249),X))))),s(real,i(s(fun(cart(real,Q103251),real),i(s(fun(cart(real,Q103251),fun(cart(real,Q103251),real)),dot),s(cart(real,Q103251),Y))),s(cart(real,Q103251),Y))))) ).

fof(aMATRIXu_CMULu_LZERO,axiom,
    ! [Q115629,Q115630,A5] : s(cart(cart(real,Q115629),Q115630),i(s(fun(num,cart(cart(real,Q115629),Q115630)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(cart(real,Q115629),Q115630),i(s(fun(cart(cart(real,Q115629),Q115630),cart(cart(real,Q115629),Q115630)),i(s(fun(real,fun(cart(cart(real,Q115629),Q115630),cart(cart(real,Q115629),Q115630))),r_r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(cart(real,Q115629),Q115630),A5))) ).

fof(aMATRIXu_MULu_ASSOC,axiom,
    ! [M,N,Q,P,A5,B0,C0] : s(cart(cart(real,Q),M),i(s(fun(cart(cart(real,Q),N),cart(cart(real,Q),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,Q),N),cart(cart(real,Q),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,Q),N),i(s(fun(cart(cart(real,Q),P),cart(cart(real,Q),N)),i(s(fun(cart(cart(real,P),N),fun(cart(cart(real,Q),P),cart(cart(real,Q),N))),matrixu_mul),s(cart(cart(real,P),N),B0))),s(cart(cart(real,Q),P),C0))))) = s(cart(cart(real,Q),M),i(s(fun(cart(cart(real,Q),P),cart(cart(real,Q),M)),i(s(fun(cart(cart(real,P),M),fun(cart(cart(real,Q),P),cart(cart(real,Q),M))),matrixu_mul),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0))))),s(cart(cart(real,Q),P),C0))) ).

fof(aVECTORu_SUBu_EQ,axiom,
    ! [Q99705,X,Y] :
      ( s(cart(real,Q99705),i(s(fun(num,cart(real,Q99705)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q99705),i(s(fun(cart(real,Q99705),cart(real,Q99705)),i(s(fun(cart(real,Q99705),fun(cart(real,Q99705),cart(real,Q99705))),vectoru_sub),s(cart(real,Q99705),X))),s(cart(real,Q99705),Y)))
    <=> s(cart(real,Q99705),Y) = s(cart(real,Q99705),X) ) ).

fof(aTRANSPu_COMPONENT,axiom,
    ! [N,M,A5,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,J0))))),s(num,I0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,M),fun(num,real)),d_),s(cart(real,M),i(s(fun(num,cart(real,M)),i(s(fun(cart(cart(real,M),N),fun(num,cart(real,M))),d_),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))),s(num,I0))))),s(num,J0))) ).

fof(aMATRIXu_MULu_RID,axiom,
    ! [N,M,A5] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),N),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),N),cart(cart(real,N),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),N),i(s(fun(num,cart(cart(real,N),N)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(cart(cart(real,N),M),A5) ).

fof(aMATRIXu_ADDu_LID,axiom,
    ! [Q114603,Q114604,A5] : s(cart(cart(real,Q114603),Q114604),i(s(fun(cart(cart(real,Q114603),Q114604),cart(cart(real,Q114603),Q114604)),i(s(fun(cart(cart(real,Q114603),Q114604),fun(cart(cart(real,Q114603),Q114604),cart(cart(real,Q114603),Q114604))),matrixu_add),s(cart(cart(real,Q114603),Q114604),i(s(fun(num,cart(cart(real,Q114603),Q114604)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(cart(real,Q114603),Q114604),A5))) = s(cart(cart(real,Q114603),Q114604),A5) ).

fof(aVECTORu_MULu_RZERO,axiom,
    ! [Q99948] : s(cart(real,Q99948),i(s(fun(num,cart(real,Q99948)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q99948),i(s(fun(cart(real,Q99948),cart(real,Q99948)),i(s(fun(real,fun(cart(real,Q99948),cart(real,Q99948))),r_),s(real,c))),s(cart(real,Q99948),i(s(fun(num,cart(real,Q99948)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aVECTORu_ADDu_ASSOC,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),y))),s(cart(real,N),z))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),z))) ).

fof(aLINEARu_COMPOSE,axiom,
    ! [Q111672,Q111668,Q111669,F0,G0] :
      ( ( p(s(bool,i(s(fun(fun(cart(real,Q111668),cart(real,Q111669)),bool),linear),s(fun(cart(real,Q111668),cart(real,Q111669)),F0))))
        & p(s(bool,i(s(fun(fun(cart(real,Q111669),cart(real,Q111672)),bool),linear),s(fun(cart(real,Q111669),cart(real,Q111672)),G0)))) )
     => p(s(bool,i(s(fun(fun(cart(real,Q111668),cart(real,Q111672)),bool),linear),s(fun(cart(real,Q111668),cart(real,Q111672)),i(s(fun(fun(cart(real,Q111668),cart(real,Q111669)),fun(cart(real,Q111668),cart(real,Q111672))),i(s(fun(fun(cart(real,Q111669),cart(real,Q111672)),fun(fun(cart(real,Q111668),cart(real,Q111669)),fun(cart(real,Q111668),cart(real,Q111672)))),o),s(fun(cart(real,Q111669),cart(real,Q111672)),G0))),s(fun(cart(real,Q111668),cart(real,Q111669)),F0)))))) ) ).

fof(aVECTORu_ADDu_RDISTRIB,axiom,
    ! [Q99856] : s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,a0))),s(real,b0))))),s(cart(real,Q99856),x))) = s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(cart(real,Q99856),fun(cart(real,Q99856),cart(real,Q99856))),vectoru_add),s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,a0))),s(cart(real,Q99856),x))))),s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,b0))),s(cart(real,Q99856),x))))) ).

fof(aVSUMu_NORMu_LE,axiom,
    ! [N,A,S0,F0,G0] :
      ( ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0))))
        & ! [X] :
            ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))))),s(real,i(s(fun(A,real),G0),s(A,X))))))
           <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) ) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))))),s(real,i(s(fun(fun(A,real),real),i(s(fun(fun(A,bool),fun(fun(A,real),real)),sum),s(fun(A,bool),S0))),s(fun(A,real),G0)))))) ) ).

fof(aDOTu_NORMu_SUB,axiom,
    ! [Q104610,X,Y] : s(real,i(s(fun(cart(real,Q104610),real),i(s(fun(cart(real,Q104610),fun(cart(real,Q104610),real)),dot),s(cart(real,Q104610),X))),s(cart(real,Q104610),Y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104610),real),vectoru_norm),s(cart(real,Q104610),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104610),real),vectoru_norm),s(cart(real,Q104610),Y))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104610),real),vectoru_norm),s(cart(real,Q104610),i(s(fun(cart(real,Q104610),cart(real,Q104610)),i(s(fun(cart(real,Q104610),fun(cart(real,Q104610),cart(real,Q104610))),vectoru_sub),s(cart(real,Q104610),X))),s(cart(real,Q104610),Y))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ).

fof(aMATRIXu_SUBu_RDISTRIB,axiom,
    ! [M,P,N,A5,B0,C0] : s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))),s(cart(cart(real,P),N),C0))) = s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),M),cart(cart(real,P),M)),i(s(fun(cart(cart(real,P),M),fun(cart(cart(real,P),M),cart(cart(real,P),M))),matrixu_sub),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),C0))))),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),B0))),s(cart(cart(real,P),N),C0))))) ).

fof(aVECTORu_ADDu_RID,axiom,
    ! [Q99576,X] : s(cart(real,Q99576),i(s(fun(cart(real,Q99576),cart(real,Q99576)),i(s(fun(cart(real,Q99576),fun(cart(real,Q99576),cart(real,Q99576))),vectoru_add),s(cart(real,Q99576),X))),s(cart(real,Q99576),i(s(fun(num,cart(real,Q99576)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q99576),X) ).

fof(aFORALLu_3,axiom,
    ! [P0] :
      ( ( p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) )
    <=> ! [I0] :
          ( p(s(bool,i(s(fun(num,bool),P0),s(num,I0))))
         <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) ) ) ) ).

fof(aFORALLu_VECTORu_3,axiom,
    ! [A] :
      ( ! [V] : p(s(bool,i(s(fun(cart(A,n3),bool),p0),s(cart(A,n3),V))))
    <=> ! [X,Y,Z0] : p(s(bool,i(s(fun(cart(A,n3),bool),p0),s(cart(A,n3),i(s(fun(list(A),cart(A,n3)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,X))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,Y))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,Z0))),s(list(A),nil)))))))))))) ) ).

fof(aDISTu_TRIANGLEu_LT,axiom,
    ! [Q104964,X,Y,Z0,E0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q104964),cart(real,Q104964)),real),distance),s(prod(cart(real,Q104964),cart(real,Q104964)),i(s(fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964))),i(s(fun(cart(real,Q104964),fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964)))),c_),s(cart(real,Q104964),X))),s(cart(real,Q104964),Y))))))),s(real,E0))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,Q104964),cart(real,Q104964)),real),distance),s(prod(cart(real,Q104964),cart(real,Q104964)),i(s(fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964))),i(s(fun(cart(real,Q104964),fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964)))),c_),s(cart(real,Q104964),X))),s(cart(real,Q104964),Z0))))))),s(real,i(s(fun(prod(cart(real,Q104964),cart(real,Q104964)),real),distance),s(prod(cart(real,Q104964),cart(real,Q104964)),i(s(fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964))),i(s(fun(cart(real,Q104964),fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964)))),c_),s(cart(real,Q104964),Y))),s(cart(real,Q104964),Z0))))))))),s(real,E0)))) ) ).

fof(aDOTu_1,axiom,
    s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(cart(real,n10),real),i(s(fun(cart(real,n10),fun(cart(real,n10),real)),dot),s(cart(real,n10),x))),s(cart(real,n10),y))) ).

fof(aLINEARu_VMULu_COMPONENT,axiom,
    ! [M,N,Q111786,U_0] :
      ( ! [F0,V,K0] :
          ( ( p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,K0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,K0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
         => p(s(bool,i(s(fun(fun(cart(real,M),cart(real,Q111786)),bool),linear),s(fun(cart(real,M),cart(real,Q111786)),i(s(fun(cart(real,Q111786),fun(cart(real,M),cart(real,Q111786))),i(s(fun(num,fun(cart(real,Q111786),fun(cart(real,M),cart(real,Q111786)))),i(s(fun(fun(cart(real,M),cart(real,N)),fun(num,fun(cart(real,Q111786),fun(cart(real,M),cart(real,Q111786))))),U_0),s(fun(cart(real,M),cart(real,N)),F0))),s(num,K0))),s(cart(real,Q111786),V)))))) )
     <= ! [F0,K0,V,X] : s(cart(real,Q111786),i(s(fun(cart(real,M),cart(real,Q111786)),i(s(fun(cart(real,Q111786),fun(cart(real,M),cart(real,Q111786))),i(s(fun(num,fun(cart(real,Q111786),fun(cart(real,M),cart(real,Q111786)))),i(s(fun(fun(cart(real,M),cart(real,N)),fun(num,fun(cart(real,Q111786),fun(cart(real,M),cart(real,Q111786))))),U_0),s(fun(cart(real,M),cart(real,N)),F0))),s(num,K0))),s(cart(real,Q111786),V))),s(cart(real,M),X))) = s(cart(real,Q111786),i(s(fun(cart(real,Q111786),cart(real,Q111786)),i(s(fun(real,fun(cart(real,Q111786),cart(real,Q111786))),r_),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))),s(num,K0))))),s(cart(real,Q111786),V))) ) ).

fof(aBASISu_INJ,axiom,
    ! [N,I0,J0] :
      ( s(num,I0) = s(num,J0)
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0))))
        & s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))) = s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,J0)))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(aREALu_LTu_LSQRT,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ) ).

fof(aEXISTSu_LIFTu_FUN,axiom,
    ! [A,P0] :
      ( ? [F0] : p(s(bool,i(s(fun(fun(A,cart(real,n10)),bool),P0),s(fun(A,cart(real,n10)),i(s(fun(fun(A,real),fun(A,cart(real,n10))),i(s(fun(fun(real,cart(real,n10)),fun(fun(A,real),fun(A,cart(real,n10)))),o),s(fun(real,cart(real,n10)),lift))),s(fun(A,real),F0))))))
    <=> ? [F0] : p(s(bool,i(s(fun(fun(A,cart(real,n10)),bool),P0),s(fun(A,cart(real,n10)),F0)))) ) ).

fof(aNORMu_0,axiom,
    ! [Q102146] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102146),real),vectoru_norm),s(cart(real,Q102146),i(s(fun(num,cart(real,Q102146)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aVSUMu_0,axiom,
    ! [Q105615,Q105619,U_0] :
      ( s(cart(real,Q105619),i(s(fun(fun(Q105615,cart(real,Q105619)),cart(real,Q105619)),i(s(fun(fun(Q105615,bool),fun(fun(Q105615,cart(real,Q105619)),cart(real,Q105619))),vsum),s(fun(Q105615,bool),s0))),s(fun(Q105615,cart(real,Q105619)),U_0))) = s(cart(real,Q105619),i(s(fun(num,cart(real,Q105619)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
     <= ! [X] : s(cart(real,Q105619),i(s(fun(Q105615,cart(real,Q105619)),U_0),s(Q105615,X))) = s(cart(real,Q105619),i(s(fun(num,cart(real,Q105619)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVSUMu_2,axiom,
    ! [Q109622,T0] : s(cart(real,Q109622),i(s(fun(cart(real,Q109622),cart(real,Q109622)),i(s(fun(cart(real,Q109622),fun(cart(real,Q109622),cart(real,Q109622))),vectoru_add),s(cart(real,Q109622),i(s(fun(num,cart(real,Q109622)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(real,Q109622),i(s(fun(num,cart(real,Q109622)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(cart(real,Q109622),i(s(fun(fun(num,cart(real,Q109622)),cart(real,Q109622)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109622)),cart(real,Q109622))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,Q109622)),T0))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct4,axiom,
    ! [Q111055,A5,X,Y] :
      ( p(s(bool,i(s(fun(cart(real,Q111055),bool),i(s(fun(cart(real,Q111055),fun(cart(real,Q111055),bool)),orthogonal),s(cart(real,Q111055),A5))),s(cart(real,Q111055),i(s(fun(cart(real,Q111055),cart(real,Q111055)),i(s(fun(cart(real,Q111055),fun(cart(real,Q111055),cart(real,Q111055))),vectoru_sub),s(cart(real,Q111055),X))),s(cart(real,Q111055),Y))))))
     <= ( p(s(bool,i(s(fun(cart(real,Q111055),bool),i(s(fun(cart(real,Q111055),fun(cart(real,Q111055),bool)),orthogonal),s(cart(real,Q111055),A5))),s(cart(real,Q111055),X))))
        & p(s(bool,i(s(fun(cart(real,Q111055),bool),i(s(fun(cart(real,Q111055),fun(cart(real,Q111055),bool)),orthogonal),s(cart(real,Q111055),A5))),s(cart(real,Q111055),Y)))) ) ) ).

fof(aBASISu_NONZERO,axiom,
    ! [N,K0] :
      ( s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) != s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,K0)))
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,K0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,K0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(aVECTORu_SUBu_ADD2,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),y))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))))) = s(cart(real,N),x) ).

fof(aONORMu_COMPOSE,axiom,
    ! [Q118371,Q118373,Q118374,F0,G0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(cart(real,Q118373),cart(real,Q118371)),real),onorm),s(fun(cart(real,Q118373),cart(real,Q118371)),i(s(fun(fun(cart(real,Q118373),cart(real,Q118374)),fun(cart(real,Q118373),cart(real,Q118371))),i(s(fun(fun(cart(real,Q118374),cart(real,Q118371)),fun(fun(cart(real,Q118373),cart(real,Q118374)),fun(cart(real,Q118373),cart(real,Q118371)))),o),s(fun(cart(real,Q118374),cart(real,Q118371)),F0))),s(fun(cart(real,Q118373),cart(real,Q118374)),G0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(fun(cart(real,Q118374),cart(real,Q118371)),real),onorm),s(fun(cart(real,Q118374),cart(real,Q118371)),F0))))),s(real,i(s(fun(fun(cart(real,Q118373),cart(real,Q118374)),real),onorm),s(fun(cart(real,Q118373),cart(real,Q118374)),G0))))))))
     <= ( p(s(bool,i(s(fun(fun(cart(real,Q118374),cart(real,Q118371)),bool),linear),s(fun(cart(real,Q118374),cart(real,Q118371)),F0))))
        & p(s(bool,i(s(fun(fun(cart(real,Q118373),cart(real,Q118374)),bool),linear),s(fun(cart(real,Q118373),cart(real,Q118374)),G0)))) ) ) ).

fof(aSUBSETu_LIFTu_IMAGE,axiom,
    ! [S0,T0] : s(bool,i(s(fun(fun(real,bool),bool),i(s(fun(fun(real,bool),fun(fun(real,bool),bool)),subset),s(fun(real,bool),S0))),s(fun(real,bool),T0))) = s(bool,i(s(fun(fun(cart(real,n10),bool),bool),i(s(fun(fun(cart(real,n10),bool),fun(fun(cart(real,n10),bool),bool)),subset),s(fun(cart(real,n10),bool),i(s(fun(fun(real,bool),fun(cart(real,n10),bool)),i(s(fun(fun(real,cart(real,n10)),fun(fun(real,bool),fun(cart(real,n10),bool))),image),s(fun(real,cart(real,n10)),lift))),s(fun(real,bool),S0))))),s(fun(cart(real,n10),bool),i(s(fun(fun(real,bool),fun(cart(real,n10),bool)),i(s(fun(fun(real,cart(real,n10)),fun(fun(real,bool),fun(cart(real,n10),bool))),image),s(fun(real,cart(real,n10)),lift))),s(fun(real,bool),T0))))) ).

fof(aVECTORu_SUBu_ADD,axiom,
    ! [N] : s(cart(real,N),x) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),y))) ).

fof(aVSUMu_CLAUSESu_conjunct1,axiom,
    ! [Q105536,Q105541,X,F0,S0] :
      ( s(cart(real,Q105541),i(s(fun(cart(real,Q105541),cart(real,Q105541)),i(s(fun(cart(real,Q105541),fun(cart(real,Q105541),cart(real,Q105541))),i(s(fun(bool,fun(cart(real,Q105541),fun(cart(real,Q105541),cart(real,Q105541)))),cond),s(bool,i(s(fun(fun(Q105536,bool),bool),i(s(fun(Q105536,fun(fun(Q105536,bool),bool)),in),s(Q105536,X))),s(fun(Q105536,bool),S0))))),s(cart(real,Q105541),i(s(fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541)),i(s(fun(fun(Q105536,bool),fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541))),vsum),s(fun(Q105536,bool),S0))),s(fun(Q105536,cart(real,Q105541)),F0))))),s(cart(real,Q105541),i(s(fun(cart(real,Q105541),cart(real,Q105541)),i(s(fun(cart(real,Q105541),fun(cart(real,Q105541),cart(real,Q105541))),vectoru_add),s(cart(real,Q105541),i(s(fun(Q105536,cart(real,Q105541)),F0),s(Q105536,X))))),s(cart(real,Q105541),i(s(fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541)),i(s(fun(fun(Q105536,bool),fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541))),vsum),s(fun(Q105536,bool),S0))),s(fun(Q105536,cart(real,Q105541)),F0))))))) = s(cart(real,Q105541),i(s(fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541)),i(s(fun(fun(Q105536,bool),fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541))),vsum),s(fun(Q105536,bool),i(s(fun(fun(Q105536,bool),fun(Q105536,bool)),i(s(fun(Q105536,fun(fun(Q105536,bool),fun(Q105536,bool))),insert),s(Q105536,X))),s(fun(Q105536,bool),S0))))),s(fun(Q105536,cart(real,Q105541)),F0)))
     <= p(s(bool,i(s(fun(fun(Q105536,bool),bool),finite),s(fun(Q105536,bool),S0)))) ) ).

fof(aMATRIXu_VECTORu_MULu_TRANSP,axiom,
    ! [M,N,A5,X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),X))) = s(cart(real,N),i(s(fun(cart(cart(real,N),M),cart(real,N)),i(s(fun(cart(real,M),fun(cart(cart(real,N),M),cart(real,N))),vectoru_matrixu_mul),s(cart(real,M),X))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,N),M)),transp),s(cart(cart(real,M),N),A5))))) ).

fof(aHypermapo_THREE,axiom,
    s(num,i(s(fun(num,num),suc),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aADJOINTu_LINEAR,axiom,
    ! [M,N,F0] :
      ( p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0))))
     => p(s(bool,i(s(fun(fun(cart(real,N),cart(real,M)),bool),linear),s(fun(cart(real,N),cart(real,M)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,N),cart(real,M))),adjoint),s(fun(cart(real,M),cart(real,N)),F0)))))) ) ).

fof(aREALu_LEu_RSQRT,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y))))
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) ) ).

fof(aSQUAREu_BOUNDu_LEMMA,axiom,
    ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,X))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,X)))))))) ).

fof(aVECTORu_NEGu_SUB,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),Y))),s(cart(real,N),X))) ).

fof(aVECTORu_MULu_RCANCELu_IMP,axiom,
    ! [Q102535,A5,B0,X] :
      ( ( s(cart(real,Q102535),i(s(fun(num,cart(real,Q102535)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) != s(cart(real,Q102535),X)
        & s(cart(real,Q102535),i(s(fun(cart(real,Q102535),cart(real,Q102535)),i(s(fun(real,fun(cart(real,Q102535),cart(real,Q102535))),r_),s(real,B0))),s(cart(real,Q102535),X))) = s(cart(real,Q102535),i(s(fun(cart(real,Q102535),cart(real,Q102535)),i(s(fun(real,fun(cart(real,Q102535),cart(real,Q102535))),r_),s(real,A5))),s(cart(real,Q102535),X))) )
     => s(real,B0) = s(real,A5) ) ).

fof(aVECTORu_EQ,axiom,
    ! [Q104636,X,Y] :
      ( ( s(real,i(s(fun(cart(real,Q104636),real),i(s(fun(cart(real,Q104636),fun(cart(real,Q104636),real)),dot),s(cart(real,Q104636),X))),s(cart(real,Q104636),X))) = s(real,i(s(fun(cart(real,Q104636),real),i(s(fun(cart(real,Q104636),fun(cart(real,Q104636),real)),dot),s(cart(real,Q104636),X))),s(cart(real,Q104636),Y)))
        & s(real,i(s(fun(cart(real,Q104636),real),i(s(fun(cart(real,Q104636),fun(cart(real,Q104636),real)),dot),s(cart(real,Q104636),Y))),s(cart(real,Q104636),Y))) = s(real,i(s(fun(cart(real,Q104636),real),i(s(fun(cart(real,Q104636),fun(cart(real,Q104636),real)),dot),s(cart(real,Q104636),X))),s(cart(real,Q104636),X))) )
    <=> s(cart(real,Q104636),Y) = s(cart(real,Q104636),X) ) ).

fof(aVECu_EQ,axiom,
    ! [Q100159,M0,N0] :
      ( s(cart(real,Q100159),i(s(fun(num,cart(real,Q100159)),vec),s(num,M0))) = s(cart(real,Q100159),i(s(fun(num,cart(real,Q100159)),vec),s(num,N0)))
    <=> s(num,M0) = s(num,N0) ) ).

fof(aCOLUMNu_TRANSP,axiom,
    ! [N,M,A5,I0] :
      ( s(cart(real,N),i(s(fun(cart(cart(real,M),N),cart(real,N)),i(s(fun(num,fun(cart(cart(real,M),N),cart(real,N))),column),s(num,I0))),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))) = s(cart(real,N),i(s(fun(cart(cart(real,N),M),cart(real,N)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,N))),row),s(num,I0))),s(cart(cart(real,N),M),A5)))
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(M,bool),num),dimindex),s(fun(M,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) ) ) ).

fof(aDROPu_ADD,axiom,
    ! [X,Y] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),Y))))) = s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),i(s(fun(cart(real,n10),fun(cart(real,n10),cart(real,n10))),vectoru_add),s(cart(real,n10),X))),s(cart(real,n10),Y))))) ).

fof(alinear,axiom,
    ! [N,M,F0] :
      ( p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0))))
    <=> ( ! [C0,X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(real,fun(cart(real,M),cart(real,M))),r_),s(real,C0))),s(cart(real,M),X))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,C0))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X)))))
        & ! [X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),Y))))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(cart(real,M),fun(cart(real,M),cart(real,M))),vectoru_add),s(cart(real,M),X))),s(cart(real,M),Y))))) ) ) ).

fof(aVECTORu_SUBu_LZERO,axiom,
    ! [Q100000] : s(cart(real,Q100000),i(s(fun(cart(real,Q100000),cart(real,Q100000)),vectoru_neg),s(cart(real,Q100000),x))) = s(cart(real,Q100000),i(s(fun(cart(real,Q100000),cart(real,Q100000)),i(s(fun(cart(real,Q100000),fun(cart(real,Q100000),cart(real,Q100000))),vectoru_sub),s(cart(real,Q100000),i(s(fun(num,cart(real,Q100000)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q100000),x))) ).

fof(aVSUMu_OFFSET,axiom,
    ! [Q108605,U_0] :
      ( ! [F0,P0,I0] : s(cart(real,Q108605),i(s(fun(num,cart(real,Q108605)),i(s(fun(num,fun(num,cart(real,Q108605))),i(s(fun(fun(num,cart(real,Q108605)),fun(num,fun(num,cart(real,Q108605)))),U_0),s(fun(num,cart(real,Q108605)),F0))),s(num,P0))),s(num,I0))) = s(cart(real,Q108605),i(s(fun(num,cart(real,Q108605)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,I0))),s(num,P0)))))
     => ! [F0,M0,P0] : s(cart(real,Q108605),i(s(fun(fun(num,cart(real,Q108605)),cart(real,Q108605)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108605)),cart(real,Q108605))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,n))))),s(fun(num,cart(real,Q108605)),i(s(fun(num,fun(num,cart(real,Q108605))),i(s(fun(fun(num,cart(real,Q108605)),fun(num,fun(num,cart(real,Q108605)))),U_0),s(fun(num,cart(real,Q108605)),F0))),s(num,P0))))) = s(cart(real,Q108605),i(s(fun(fun(num,cart(real,Q108605)),cart(real,Q108605)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108605)),cart(real,Q108605))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,M0))),s(num,P0))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,n))),s(num,P0))))))),s(fun(num,cart(real,Q108605)),F0))) ) ).

fof(aadjoint,axiom,
    ! [M,N,U_0] :
      ( ! [F0,FI_] :
          ( ! [X,Y] : s(real,i(s(fun(cart(real,M),real),i(s(fun(cart(real,M),fun(cart(real,M),real)),dot),s(cart(real,M),X))),s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),FI_),s(cart(real,N),Y))))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))),s(cart(real,N),Y)))
        <=> p(s(bool,i(s(fun(fun(cart(real,N),cart(real,M)),bool),i(s(fun(fun(cart(real,M),cart(real,N)),fun(fun(cart(real,N),cart(real,M)),bool)),U_0),s(fun(cart(real,M),cart(real,N)),F0))),s(fun(cart(real,N),cart(real,M)),FI_)))) )
     => ! [F0] : s(fun(cart(real,N),cart(real,M)),i(s(fun(fun(fun(cart(real,N),cart(real,M)),bool),fun(cart(real,N),cart(real,M))),h_),s(fun(fun(cart(real,N),cart(real,M)),bool),i(s(fun(fun(cart(real,M),cart(real,N)),fun(fun(cart(real,N),cart(real,M)),bool)),U_0),s(fun(cart(real,M),cart(real,N)),F0))))) = s(fun(cart(real,N),cart(real,M)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,N),cart(real,M))),adjoint),s(fun(cart(real,M),cart(real,N)),F0))) ) ).

fof(aMATRIXu_MULu_COMPONENT,axiom,
    ! [N,I0] :
      ( s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(cart(real,N),N),fun(cart(real,N),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,N),N),i(s(fun(cart(cart(real,N),N),cart(cart(real,N),N)),transp),s(cart(cart(real,N),N),b))))),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),N),fun(num,cart(real,N))),d_),s(cart(cart(real,N),N),a))),s(num,I0))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),N),fun(num,cart(real,N))),d_),s(cart(cart(real,N),N),i(s(fun(cart(cart(real,N),N),cart(cart(real,N),N)),i(s(fun(cart(cart(real,N),N),fun(cart(cart(real,N),N),cart(cart(real,N),N))),matrixu_mul),s(cart(cart(real,N),N),a))),s(cart(cart(real,N),N),b))))),s(num,I0)))
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(aVSUMu_SUC,axiom,
    ! [Q108775,F0,M0,N0] : s(cart(real,Q108775),i(s(fun(fun(num,cart(real,Q108775)),cart(real,Q108775)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108775)),cart(real,Q108775))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,N0))),s(num,M0))))),s(fun(num,cart(real,Q108775)),i(s(fun(fun(num,num),fun(num,cart(real,Q108775))),i(s(fun(fun(num,cart(real,Q108775)),fun(fun(num,num),fun(num,cart(real,Q108775)))),o),s(fun(num,cart(real,Q108775)),F0))),s(fun(num,num),suc))))) = s(cart(real,Q108775),i(s(fun(fun(num,cart(real,Q108775)),cart(real,Q108775)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108775)),cart(real,Q108775))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),suc),s(num,N0))))),s(num,i(s(fun(num,num),suc),s(num,M0))))))),s(fun(num,cart(real,Q108775)),F0))) ).

fof(aDOTu_POSu_LT,axiom,
    ! [Q100537,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q100537),real),i(s(fun(cart(real,Q100537),fun(cart(real,Q100537),real)),dot),s(cart(real,Q100537),X))),s(cart(real,Q100537),X))))))
    <=> s(cart(real,Q100537),i(s(fun(num,cart(real,Q100537)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) != s(cart(real,Q100537),X) ) ).

fof(aMATRIXu_ADDu_RID,axiom,
    ! [Q114621,Q114622,A5] : s(cart(cart(real,Q114621),Q114622),i(s(fun(cart(cart(real,Q114621),Q114622),cart(cart(real,Q114621),Q114622)),i(s(fun(cart(cart(real,Q114621),Q114622),fun(cart(cart(real,Q114621),Q114622),cart(cart(real,Q114621),Q114622))),matrixu_add),s(cart(cart(real,Q114621),Q114622),A5))),s(cart(cart(real,Q114621),Q114622),i(s(fun(num,cart(cart(real,Q114621),Q114622)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(cart(real,Q114621),Q114622),A5) ).

fof(aNORMu_POSu_LT,axiom,
    ! [Q102307,X] :
      ( s(cart(real,Q102307),X) != s(cart(real,Q102307),i(s(fun(num,cart(real,Q102307)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q102307),real),vectoru_norm),s(cart(real,Q102307),X)))))) ) ).

fof(amatrixu_mul,axiom,
    ! [M,P,N,U_2] :
      ( ! [A5,I0,B0,J0,K0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,P),N),fun(num,fun(num,real))),i(s(fun(num,fun(cart(cart(real,P),N),fun(num,fun(num,real)))),i(s(fun(cart(cart(real,N),M),fun(num,fun(cart(cart(real,P),N),fun(num,fun(num,real))))),U_2),s(cart(cart(real,N),M),A5))),s(num,I0))),s(cart(cart(real,P),N),B0))),s(num,J0))),s(num,K0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,K0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,P),fun(num,real)),d_),s(cart(real,P),i(s(fun(num,cart(real,P)),i(s(fun(cart(cart(real,P),N),fun(num,cart(real,P))),d_),s(cart(cart(real,P),N),B0))),s(num,K0))))),s(num,J0)))))
     => ! [U_1] :
          ( ! [U_0] :
              ( ! [A5,B0] : s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0))) = s(cart(cart(real,P),M),i(s(fun(fun(num,cart(real,P)),cart(cart(real,P),M)),lambda),s(fun(num,cart(real,P)),i(s(fun(cart(cart(real,P),N),fun(num,cart(real,P))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),fun(num,cart(real,P)))),U_0),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0)))))
             <= ! [A5,B0,I0] : s(cart(real,P),i(s(fun(num,cart(real,P)),i(s(fun(cart(cart(real,P),N),fun(num,cart(real,P))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),fun(num,cart(real,P)))),U_0),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0))),s(num,I0))) = s(cart(real,P),i(s(fun(fun(num,real),cart(real,P)),lambda),s(fun(num,real),i(s(fun(cart(cart(real,P),N),fun(num,real)),i(s(fun(num,fun(cart(cart(real,P),N),fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(num,fun(cart(cart(real,P),N),fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(num,I0))),s(cart(cart(real,P),N),B0))))) )
         <= ! [A5,I0,B0,J0] : s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,P),N),fun(num,fun(num,real))),i(s(fun(num,fun(cart(cart(real,P),N),fun(num,fun(num,real)))),i(s(fun(cart(cart(real,N),M),fun(num,fun(cart(cart(real,P),N),fun(num,fun(num,real))))),U_2),s(cart(cart(real,N),M),A5))),s(num,I0))),s(cart(cart(real,P),N),B0))),s(num,J0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(cart(real,P),N),fun(num,real)),i(s(fun(num,fun(cart(cart(real,P),N),fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(num,fun(cart(cart(real,P),N),fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(num,I0))),s(cart(cart(real,P),N),B0))),s(num,J0))) ) ) ).

fof(aSYMMETRICu_LINEARu_IMAGE,axiom,
    ! [Q112240,Q112239,F0,S0] :
      ( ! [X] :
          ( p(s(bool,i(s(fun(fun(cart(real,Q112240),bool),bool),i(s(fun(cart(real,Q112240),fun(fun(cart(real,Q112240),bool),bool)),in),s(cart(real,Q112240),i(s(fun(cart(real,Q112240),cart(real,Q112240)),vectoru_neg),s(cart(real,Q112240),X))))),s(fun(cart(real,Q112240),bool),i(s(fun(fun(cart(real,Q112239),bool),fun(cart(real,Q112240),bool)),i(s(fun(fun(cart(real,Q112239),cart(real,Q112240)),fun(fun(cart(real,Q112239),bool),fun(cart(real,Q112240),bool))),image),s(fun(cart(real,Q112239),cart(real,Q112240)),F0))),s(fun(cart(real,Q112239),bool),S0))))))
         <= p(s(bool,i(s(fun(fun(cart(real,Q112240),bool),bool),i(s(fun(cart(real,Q112240),fun(fun(cart(real,Q112240),bool),bool)),in),s(cart(real,Q112240),X))),s(fun(cart(real,Q112240),bool),i(s(fun(fun(cart(real,Q112239),bool),fun(cart(real,Q112240),bool)),i(s(fun(fun(cart(real,Q112239),cart(real,Q112240)),fun(fun(cart(real,Q112239),bool),fun(cart(real,Q112240),bool))),image),s(fun(cart(real,Q112239),cart(real,Q112240)),F0))),s(fun(cart(real,Q112239),bool),S0)))))) )
     <= ( ! [X] :
            ( p(s(bool,i(s(fun(fun(cart(real,Q112239),bool),bool),i(s(fun(cart(real,Q112239),fun(fun(cart(real,Q112239),bool),bool)),in),s(cart(real,Q112239),X))),s(fun(cart(real,Q112239),bool),S0))))
           => p(s(bool,i(s(fun(fun(cart(real,Q112239),bool),bool),i(s(fun(cart(real,Q112239),fun(fun(cart(real,Q112239),bool),bool)),in),s(cart(real,Q112239),i(s(fun(cart(real,Q112239),cart(real,Q112239)),vectoru_neg),s(cart(real,Q112239),X))))),s(fun(cart(real,Q112239),bool),S0)))) )
        & p(s(bool,i(s(fun(fun(cart(real,Q112239),cart(real,Q112240)),bool),linear),s(fun(cart(real,Q112239),cart(real,Q112240)),F0)))) ) ) ).

fof(amatrixu_cmul,axiom,
    ! [N,M,U_1] :
      ( ! [U_0] :
          ( ! [C0,A5,I0] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),i(s(fun(real,fun(cart(cart(real,N),M),fun(num,fun(num,real)))),U_1),s(real,C0))),s(cart(cart(real,N),M),A5))),s(num,I0))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),i(s(fun(real,fun(cart(cart(real,N),M),fun(num,cart(real,N)))),U_0),s(real,C0))),s(cart(cart(real,N),M),A5))),s(num,I0)))
         => ! [C0,A5] : s(cart(cart(real,N),M),i(s(fun(fun(num,cart(real,N)),cart(cart(real,N),M)),lambda),s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),i(s(fun(real,fun(cart(cart(real,N),M),fun(num,cart(real,N)))),U_0),s(real,C0))),s(cart(cart(real,N),M),A5))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),A5))) )
     <= ! [C0,A5,I0,J0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))) = s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),i(s(fun(real,fun(cart(cart(real,N),M),fun(num,fun(num,real)))),U_1),s(real,C0))),s(cart(cart(real,N),M),A5))),s(num,I0))),s(num,J0))) ) ).

fof(aEXISTSu_VECTORu_3,axiom,
    ! [A] :
      ( ? [X,Y,Z0] : p(s(bool,i(s(fun(cart(A,n3),bool),p0),s(cart(A,n3),i(s(fun(list(A),cart(A,n3)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,X))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,Y))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,Z0))),s(list(A),nil))))))))))))
    <=> ? [V] : p(s(bool,i(s(fun(cart(A,n3),bool),p0),s(cart(A,n3),V)))) ) ).

fof(aMATRIXu_CMULu_ADDu_LDISTRIB,axiom,
    ! [N,M,A5,B0,C0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),B0))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))) ).

fof(aVSUMu_EQu_0,axiom,
    ! [A,Q105605,F0,S0] :
      ( s(cart(real,Q105605),i(s(fun(fun(A,cart(real,Q105605)),cart(real,Q105605)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q105605)),cart(real,Q105605))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q105605)),F0))) = s(cart(real,Q105605),i(s(fun(num,cart(real,Q105605)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
     <= ! [X] :
          ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
         => s(cart(real,Q105605),i(s(fun(num,cart(real,Q105605)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q105605),i(s(fun(A,cart(real,Q105605)),F0),s(A,X))) ) ) ).

fof(aVSUMu_COMBINEu_L,axiom,
    ! [Q109147,F0,M0,N0,P0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,N0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,N0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,P0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) )
     => s(cart(real,Q109147),i(s(fun(cart(real,Q109147),cart(real,Q109147)),i(s(fun(cart(real,Q109147),fun(cart(real,Q109147),cart(real,Q109147))),vectoru_add),s(cart(real,Q109147),i(s(fun(fun(num,cart(real,Q109147)),cart(real,Q109147)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109147)),cart(real,Q109147))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,Q109147)),F0))))),s(cart(real,Q109147),i(s(fun(fun(num,cart(real,Q109147)),cart(real,Q109147)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109147)),cart(real,Q109147))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,N0))),s(num,P0))))),s(fun(num,cart(real,Q109147)),F0))))) = s(cart(real,Q109147),i(s(fun(fun(num,cart(real,Q109147)),cart(real,Q109147)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109147)),cart(real,Q109147))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,P0))))),s(fun(num,cart(real,Q109147)),F0))) ) ).

fof(aMATRIXu_VECTORu_MULu_ADDu_RDISTRIB,axiom,
    ! [N,M,A5,B0,X] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),X))))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),B0))),s(cart(real,M),X))))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(cart(cart(real,M),N),fun(cart(cart(real,M),N),cart(cart(real,M),N))),matrixu_add),s(cart(cart(real,M),N),A5))),s(cart(cart(real,M),N),B0))))),s(cart(real,M),X))) ).

fof(aVECTORu_SUB,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),y))))) ).

fof(aLIFTu_SUM,axiom,
    ! [Q119381,K0,X] :
      ( p(s(bool,i(s(fun(fun(Q119381,bool),bool),finite),s(fun(Q119381,bool),K0))))
     => s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(fun(Q119381,real),real),i(s(fun(fun(Q119381,bool),fun(fun(Q119381,real),real)),sum),s(fun(Q119381,bool),K0))),s(fun(Q119381,real),X))))) = s(cart(real,n10),i(s(fun(fun(Q119381,cart(real,n10)),cart(real,n10)),i(s(fun(fun(Q119381,bool),fun(fun(Q119381,cart(real,n10)),cart(real,n10))),vsum),s(fun(Q119381,bool),K0))),s(fun(Q119381,cart(real,n10)),i(s(fun(fun(Q119381,real),fun(Q119381,cart(real,n10))),i(s(fun(fun(real,cart(real,n10)),fun(fun(Q119381,real),fun(Q119381,cart(real,n10)))),o),s(fun(real,cart(real,n10)),lift))),s(fun(Q119381,real),X))))) ) ).

fof(aVECTORu_EQu_LDOT,axiom,
    ! [Q110589,Y,Z0] :
      ( s(cart(real,Q110589),Y) = s(cart(real,Q110589),Z0)
    <=> ! [X] : s(real,i(s(fun(cart(real,Q110589),real),i(s(fun(cart(real,Q110589),fun(cart(real,Q110589),real)),dot),s(cart(real,Q110589),X))),s(cart(real,Q110589),Z0))) = s(real,i(s(fun(cart(real,Q110589),real),i(s(fun(cart(real,Q110589),fun(cart(real,Q110589),real)),dot),s(cart(real,Q110589),X))),s(cart(real,Q110589),Y))) ) ).

fof(aNORMu_LTu_SQUARE,axiom,
    ! [N,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0))))
    <=> ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,a0))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) ) ) ).

fof(avectoru_add,axiom,
    ! [N,U_0] :
      ( ! [X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0)))))
     => ! [X,Y] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))) ) ).

fof(aDISTu_EQu_0,axiom,
    ! [Q104818,X,Y] :
      ( s(real,i(s(fun(prod(cart(real,Q104818),cart(real,Q104818)),real),distance),s(prod(cart(real,Q104818),cart(real,Q104818)),i(s(fun(cart(real,Q104818),prod(cart(real,Q104818),cart(real,Q104818))),i(s(fun(cart(real,Q104818),fun(cart(real,Q104818),prod(cart(real,Q104818),cart(real,Q104818)))),c_),s(cart(real,Q104818),X))),s(cart(real,Q104818),Y))))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> s(cart(real,Q104818),Y) = s(cart(real,Q104818),X) ) ).

fof(aVECTORu_MULu_LID,axiom,
    ! [Q99745,X] : s(cart(real,Q99745),i(s(fun(cart(real,Q99745),cart(real,Q99745)),i(s(fun(real,fun(cart(real,Q99745),cart(real,Q99745))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(real,Q99745),X))) = s(cart(real,Q99745),X) ).

fof(avectoru_matrixu_mul,axiom,
    ! [N,M,U_1] :
      ( ! [A5,J0,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,M),fun(num,real)),i(s(fun(num,fun(cart(real,M),fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(num,fun(cart(real,M),fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(num,J0))),s(cart(real,M),X))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,M),fun(num,real)),d_),s(cart(real,M),X))),s(num,I0)))))
     => ! [U_0] :
          ( ! [A5,X] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,M),fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(cart(real,M),fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,M),X))))) = s(cart(real,N),i(s(fun(cart(cart(real,N),M),cart(real,N)),i(s(fun(cart(real,M),fun(cart(cart(real,N),M),cart(real,N))),vectoru_matrixu_mul),s(cart(real,M),X))),s(cart(cart(real,N),M),A5)))
         <= ! [A5,X,J0] : s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(M,bool),num),dimindex),s(fun(M,bool),univ))))))),s(fun(num,real),i(s(fun(cart(real,M),fun(num,real)),i(s(fun(num,fun(cart(real,M),fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(num,fun(cart(real,M),fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(num,J0))),s(cart(real,M),X))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,M),fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(cart(real,M),fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,M),X))),s(num,J0))) ) ) ).

fof(aLIFTu_INu_IMAGEu_LIFT,axiom,
    ! [X,S0] : s(bool,i(s(fun(fun(cart(real,n10),bool),bool),i(s(fun(cart(real,n10),fun(fun(cart(real,n10),bool),bool)),in),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))),s(fun(cart(real,n10),bool),i(s(fun(fun(real,bool),fun(cart(real,n10),bool)),i(s(fun(fun(real,cart(real,n10)),fun(fun(real,bool),fun(cart(real,n10),bool))),image),s(fun(real,cart(real,n10)),lift))),s(fun(real,bool),S0))))) = s(bool,i(s(fun(fun(real,bool),bool),i(s(fun(real,fun(fun(real,bool),bool)),in),s(real,X))),s(fun(real,bool),S0))) ).

fof(aDOTu_SQUAREu_NORM,axiom,
    ! [Q103415,X] : s(real,i(s(fun(cart(real,Q103415),real),i(s(fun(cart(real,Q103415),fun(cart(real,Q103415),real)),dot),s(cart(real,Q103415),X))),s(cart(real,Q103415),X))) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q103415),real),vectoru_norm),s(cart(real,Q103415),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ).

fof(aVECTORu_NEGu_EQu_0,axiom,
    ! [Q100076] :
      ( s(cart(real,Q100076),i(s(fun(num,cart(real,Q100076)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100076),i(s(fun(cart(real,Q100076),cart(real,Q100076)),vectoru_neg),s(cart(real,Q100076),x)))
    <=> s(cart(real,Q100076),i(s(fun(num,cart(real,Q100076)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100076),x) ) ).

fof(aDOTu_2,axiom,
    s(real,i(s(fun(cart(real,n20),real),i(s(fun(cart(real,n20),fun(cart(real,n20),real)),dot),s(cart(real,n20),x))),s(cart(real,n20),y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) ).

fof(aDOTu_LSUM,axiom,
    ! [Q108537,Q108528,U_0] :
      ( ! [S0,F0,Y] :
          ( p(s(bool,i(s(fun(fun(Q108537,bool),bool),finite),s(fun(Q108537,bool),S0))))
         => s(real,i(s(fun(cart(real,Q108528),real),i(s(fun(cart(real,Q108528),fun(cart(real,Q108528),real)),dot),s(cart(real,Q108528),i(s(fun(fun(Q108537,cart(real,Q108528)),cart(real,Q108528)),i(s(fun(fun(Q108537,bool),fun(fun(Q108537,cart(real,Q108528)),cart(real,Q108528))),vsum),s(fun(Q108537,bool),S0))),s(fun(Q108537,cart(real,Q108528)),F0))))),s(cart(real,Q108528),Y))) = s(real,i(s(fun(fun(Q108537,real),real),i(s(fun(fun(Q108537,bool),fun(fun(Q108537,real),real)),sum),s(fun(Q108537,bool),S0))),s(fun(Q108537,real),i(s(fun(cart(real,Q108528),fun(Q108537,real)),i(s(fun(fun(Q108537,cart(real,Q108528)),fun(cart(real,Q108528),fun(Q108537,real))),U_0),s(fun(Q108537,cart(real,Q108528)),F0))),s(cart(real,Q108528),Y))))) )
     <= ! [F0,Y,X] : s(real,i(s(fun(cart(real,Q108528),real),i(s(fun(cart(real,Q108528),fun(cart(real,Q108528),real)),dot),s(cart(real,Q108528),i(s(fun(Q108537,cart(real,Q108528)),F0),s(Q108537,X))))),s(cart(real,Q108528),Y))) = s(real,i(s(fun(Q108537,real),i(s(fun(cart(real,Q108528),fun(Q108537,real)),i(s(fun(fun(Q108537,cart(real,Q108528)),fun(cart(real,Q108528),fun(Q108537,real))),U_0),s(fun(Q108537,cart(real,Q108528)),F0))),s(cart(real,Q108528),Y))),s(Q108537,X))) ) ).

fof(aNORMu_TRIANGLEu_SUB,axiom,
    ! [N,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y)))))))))) ).

fof(aVSUMu_DELTA,axiom,
    ! [Q107219,Q107222,U_0] :
      ( ! [S0,A5] : s(cart(real,Q107222),i(s(fun(fun(Q107219,cart(real,Q107222)),cart(real,Q107222)),i(s(fun(fun(Q107219,bool),fun(fun(Q107219,cart(real,Q107222)),cart(real,Q107222))),vsum),s(fun(Q107219,bool),S0))),s(fun(Q107219,cart(real,Q107222)),i(s(fun(Q107219,fun(Q107219,cart(real,Q107222))),U_0),s(Q107219,A5))))) = s(cart(real,Q107222),i(s(fun(cart(real,Q107222),cart(real,Q107222)),i(s(fun(cart(real,Q107222),fun(cart(real,Q107222),cart(real,Q107222))),i(s(fun(bool,fun(cart(real,Q107222),fun(cart(real,Q107222),cart(real,Q107222)))),cond),s(bool,i(s(fun(fun(Q107219,bool),bool),i(s(fun(Q107219,fun(fun(Q107219,bool),bool)),in),s(Q107219,A5))),s(fun(Q107219,bool),S0))))),s(cart(real,Q107222),b0))),s(cart(real,Q107222),i(s(fun(num,cart(real,Q107222)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
     <= ! [A5,X] :
        ? [V] :
          ( ( s(Q107219,X) = s(Q107219,A5)
          <=> p(s(bool,V)) )
          & s(cart(real,Q107222),i(s(fun(cart(real,Q107222),cart(real,Q107222)),i(s(fun(cart(real,Q107222),fun(cart(real,Q107222),cart(real,Q107222))),i(s(fun(bool,fun(cart(real,Q107222),fun(cart(real,Q107222),cart(real,Q107222)))),cond),s(bool,V))),s(cart(real,Q107222),b0))),s(cart(real,Q107222),i(s(fun(num,cart(real,Q107222)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q107222),i(s(fun(Q107219,cart(real,Q107222)),i(s(fun(Q107219,fun(Q107219,cart(real,Q107222))),U_0),s(Q107219,A5))),s(Q107219,X))) ) ) ).

fof(aVECTORu_NEGu_COMPONENT,axiom,
    ! [N,X,I0] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),X))))),s(num,I0))) ).

fof(aLINEARu_COMPOSEu_SUB,axiom,
    ! [Q111643,Q111652,U_0] :
      ( ! [F0,G0] :
          ( p(s(bool,i(s(fun(fun(cart(real,Q111643),cart(real,Q111652)),bool),linear),s(fun(cart(real,Q111643),cart(real,Q111652)),i(s(fun(fun(cart(real,Q111643),cart(real,Q111652)),fun(cart(real,Q111643),cart(real,Q111652))),i(s(fun(fun(cart(real,Q111643),cart(real,Q111652)),fun(fun(cart(real,Q111643),cart(real,Q111652)),fun(cart(real,Q111643),cart(real,Q111652)))),U_0),s(fun(cart(real,Q111643),cart(real,Q111652)),F0))),s(fun(cart(real,Q111643),cart(real,Q111652)),G0))))))
         <= ( p(s(bool,i(s(fun(fun(cart(real,Q111643),cart(real,Q111652)),bool),linear),s(fun(cart(real,Q111643),cart(real,Q111652)),F0))))
            & p(s(bool,i(s(fun(fun(cart(real,Q111643),cart(real,Q111652)),bool),linear),s(fun(cart(real,Q111643),cart(real,Q111652)),G0)))) ) )
     <= ! [F0,G0,X] : s(cart(real,Q111652),i(s(fun(cart(real,Q111643),cart(real,Q111652)),i(s(fun(fun(cart(real,Q111643),cart(real,Q111652)),fun(cart(real,Q111643),cart(real,Q111652))),i(s(fun(fun(cart(real,Q111643),cart(real,Q111652)),fun(fun(cart(real,Q111643),cart(real,Q111652)),fun(cart(real,Q111643),cart(real,Q111652)))),U_0),s(fun(cart(real,Q111643),cart(real,Q111652)),F0))),s(fun(cart(real,Q111643),cart(real,Q111652)),G0))),s(cart(real,Q111643),X))) = s(cart(real,Q111652),i(s(fun(cart(real,Q111652),cart(real,Q111652)),i(s(fun(cart(real,Q111652),fun(cart(real,Q111652),cart(real,Q111652))),vectoru_sub),s(cart(real,Q111652),i(s(fun(cart(real,Q111643),cart(real,Q111652)),F0),s(cart(real,Q111643),X))))),s(cart(real,Q111652),i(s(fun(cart(real,Q111643),cart(real,Q111652)),G0),s(cart(real,Q111643),X))))) ) ).

fof(aVSUMu_OFFSETu_0,axiom,
    ! [Q108650,U_0] :
      ( ! [F0,M0,I0] : s(cart(real,Q108650),i(s(fun(num,cart(real,Q108650)),i(s(fun(num,fun(num,cart(real,Q108650))),i(s(fun(fun(num,cart(real,Q108650)),fun(num,fun(num,cart(real,Q108650)))),U_0),s(fun(num,cart(real,Q108650)),F0))),s(num,M0))),s(num,I0))) = s(cart(real,Q108650),i(s(fun(num,cart(real,Q108650)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,I0))),s(num,M0)))))
     => ! [F0,M0,N0] :
          ( s(cart(real,Q108650),i(s(fun(fun(num,cart(real,Q108650)),cart(real,Q108650)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108650)),cart(real,Q108650))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q108650)),F0))) = s(cart(real,Q108650),i(s(fun(fun(num,cart(real,Q108650)),cart(real,Q108650)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108650)),cart(real,Q108650))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,N0))),s(num,M0))))))),s(fun(num,cart(real,Q108650)),i(s(fun(num,fun(num,cart(real,Q108650))),i(s(fun(fun(num,cart(real,Q108650)),fun(num,fun(num,cart(real,Q108650)))),U_0),s(fun(num,cart(real,Q108650)),F0))),s(num,M0)))))
         <= p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0)))) ) ) ).

fof(aMATRIXu_CMULu_COMPONENT,axiom,
    ! [N,M,C0,A5,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),A5))))),s(num,I0))))),s(num,j))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,j))))) ).

fof(aLIFTu_DROPu_conjunct0,axiom,
    ! [X] : s(cart(real,n10),X) = s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))) ).

fof(aLINEARu_VSUMu_MUL,axiom,
    ! [Q112022,Q112025,Q112011,U_1] :
      ( ! [U_0] :
          ( ! [C0,V,I0] : s(cart(real,Q112011),i(s(fun(cart(real,Q112011),cart(real,Q112011)),i(s(fun(real,fun(cart(real,Q112011),cart(real,Q112011))),r_),s(real,i(s(fun(Q112025,real),C0),s(Q112025,I0))))),s(cart(real,Q112011),i(s(fun(Q112025,cart(real,Q112011)),V),s(Q112025,I0))))) = s(cart(real,Q112011),i(s(fun(Q112025,cart(real,Q112011)),i(s(fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112011))),i(s(fun(fun(Q112025,real),fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112011)))),U_0),s(fun(Q112025,real),C0))),s(fun(Q112025,cart(real,Q112011)),V))),s(Q112025,I0)))
         => ! [F0,S0,C0,V] :
              ( ( p(s(bool,i(s(fun(fun(cart(real,Q112011),cart(real,Q112022)),bool),linear),s(fun(cart(real,Q112011),cart(real,Q112022)),F0))))
                & p(s(bool,i(s(fun(fun(Q112025,bool),bool),finite),s(fun(Q112025,bool),S0)))) )
             => s(cart(real,Q112022),i(s(fun(cart(real,Q112011),cart(real,Q112022)),F0),s(cart(real,Q112011),i(s(fun(fun(Q112025,cart(real,Q112011)),cart(real,Q112011)),i(s(fun(fun(Q112025,bool),fun(fun(Q112025,cart(real,Q112011)),cart(real,Q112011))),vsum),s(fun(Q112025,bool),S0))),s(fun(Q112025,cart(real,Q112011)),i(s(fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112011))),i(s(fun(fun(Q112025,real),fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112011)))),U_0),s(fun(Q112025,real),C0))),s(fun(Q112025,cart(real,Q112011)),V))))))) = s(cart(real,Q112022),i(s(fun(fun(Q112025,cart(real,Q112022)),cart(real,Q112022)),i(s(fun(fun(Q112025,bool),fun(fun(Q112025,cart(real,Q112022)),cart(real,Q112022))),vsum),s(fun(Q112025,bool),S0))),s(fun(Q112025,cart(real,Q112022)),i(s(fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112022))),i(s(fun(fun(cart(real,Q112011),cart(real,Q112022)),fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112022)))),i(s(fun(fun(Q112025,real),fun(fun(cart(real,Q112011),cart(real,Q112022)),fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112022))))),U_1),s(fun(Q112025,real),C0))),s(fun(cart(real,Q112011),cart(real,Q112022)),F0))),s(fun(Q112025,cart(real,Q112011)),V))))) ) )
     <= ! [C0,F0,V,I0] : s(cart(real,Q112022),i(s(fun(cart(real,Q112022),cart(real,Q112022)),i(s(fun(real,fun(cart(real,Q112022),cart(real,Q112022))),r_),s(real,i(s(fun(Q112025,real),C0),s(Q112025,I0))))),s(cart(real,Q112022),i(s(fun(cart(real,Q112011),cart(real,Q112022)),F0),s(cart(real,Q112011),i(s(fun(Q112025,cart(real,Q112011)),V),s(Q112025,I0))))))) = s(cart(real,Q112022),i(s(fun(Q112025,cart(real,Q112022)),i(s(fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112022))),i(s(fun(fun(cart(real,Q112011),cart(real,Q112022)),fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112022)))),i(s(fun(fun(Q112025,real),fun(fun(cart(real,Q112011),cart(real,Q112022)),fun(fun(Q112025,cart(real,Q112011)),fun(Q112025,cart(real,Q112022))))),U_1),s(fun(Q112025,real),C0))),s(fun(cart(real,Q112011),cart(real,Q112022)),F0))),s(fun(Q112025,cart(real,Q112011)),V))),s(Q112025,I0))) ) ).

fof(aROWSu_TRANSP,axiom,
    ! [N,M,A5] : s(fun(cart(real,M),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,M),bool)),columns),s(cart(cart(real,N),M),A5))) = s(fun(cart(real,M),bool),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),bool)),rows),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))) ).

fof(aTRANSPu_TRANSP,axiom,
    ! [N,M,A5] : s(cart(cart(real,N),M),A5) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,N),M)),transp),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))) ).

fof(aVSUMu_VMUL,axiom,
    ! [Q107186,Q107185,U_0] :
      ( ! [F0,V,X] : s(cart(real,Q107185),i(s(fun(Q107186,cart(real,Q107185)),i(s(fun(cart(real,Q107185),fun(Q107186,cart(real,Q107185))),i(s(fun(fun(Q107186,real),fun(cart(real,Q107185),fun(Q107186,cart(real,Q107185)))),U_0),s(fun(Q107186,real),F0))),s(cart(real,Q107185),V))),s(Q107186,X))) = s(cart(real,Q107185),i(s(fun(cart(real,Q107185),cart(real,Q107185)),i(s(fun(real,fun(cart(real,Q107185),cart(real,Q107185))),r_),s(real,i(s(fun(Q107186,real),F0),s(Q107186,X))))),s(cart(real,Q107185),V)))
     => ! [F0,V,S0] :
          ( s(cart(real,Q107185),i(s(fun(cart(real,Q107185),cart(real,Q107185)),i(s(fun(real,fun(cart(real,Q107185),cart(real,Q107185))),r_),s(real,i(s(fun(fun(Q107186,real),real),i(s(fun(fun(Q107186,bool),fun(fun(Q107186,real),real)),sum),s(fun(Q107186,bool),S0))),s(fun(Q107186,real),F0))))),s(cart(real,Q107185),V))) = s(cart(real,Q107185),i(s(fun(fun(Q107186,cart(real,Q107185)),cart(real,Q107185)),i(s(fun(fun(Q107186,bool),fun(fun(Q107186,cart(real,Q107185)),cart(real,Q107185))),vsum),s(fun(Q107186,bool),S0))),s(fun(Q107186,cart(real,Q107185)),i(s(fun(cart(real,Q107185),fun(Q107186,cart(real,Q107185))),i(s(fun(fun(Q107186,real),fun(cart(real,Q107185),fun(Q107186,cart(real,Q107185)))),U_0),s(fun(Q107186,real),F0))),s(cart(real,Q107185),V)))))
         <= p(s(bool,i(s(fun(fun(Q107186,bool),bool),finite),s(fun(Q107186,bool),S0)))) ) ) ).

fof(aLINEARu_COMPOSEu_CMUL,axiom,
    ! [Q111564,Q111562,U_0] :
      ( ! [F0,C0] :
          ( p(s(bool,i(s(fun(fun(cart(real,Q111564),cart(real,Q111562)),bool),linear),s(fun(cart(real,Q111564),cart(real,Q111562)),i(s(fun(fun(cart(real,Q111564),cart(real,Q111562)),fun(cart(real,Q111564),cart(real,Q111562))),i(s(fun(real,fun(fun(cart(real,Q111564),cart(real,Q111562)),fun(cart(real,Q111564),cart(real,Q111562)))),U_0),s(real,C0))),s(fun(cart(real,Q111564),cart(real,Q111562)),F0))))))
         <= p(s(bool,i(s(fun(fun(cart(real,Q111564),cart(real,Q111562)),bool),linear),s(fun(cart(real,Q111564),cart(real,Q111562)),F0)))) )
     <= ! [C0,F0,X] : s(cart(real,Q111562),i(s(fun(cart(real,Q111564),cart(real,Q111562)),i(s(fun(fun(cart(real,Q111564),cart(real,Q111562)),fun(cart(real,Q111564),cart(real,Q111562))),i(s(fun(real,fun(fun(cart(real,Q111564),cart(real,Q111562)),fun(cart(real,Q111564),cart(real,Q111562)))),U_0),s(real,C0))),s(fun(cart(real,Q111564),cart(real,Q111562)),F0))),s(cart(real,Q111564),X))) = s(cart(real,Q111562),i(s(fun(cart(real,Q111562),cart(real,Q111562)),i(s(fun(real,fun(cart(real,Q111562),cart(real,Q111562))),r_),s(real,C0))),s(cart(real,Q111562),i(s(fun(cart(real,Q111564),cart(real,Q111562)),F0),s(cart(real,Q111564),X))))) ) ).

fof(aDOTu_RSUM,axiom,
    ! [Q108573,Q108564,U_0] :
      ( ! [S0,F0,X] :
          ( p(s(bool,i(s(fun(fun(Q108573,bool),bool),finite),s(fun(Q108573,bool),S0))))
         => s(real,i(s(fun(fun(Q108573,real),real),i(s(fun(fun(Q108573,bool),fun(fun(Q108573,real),real)),sum),s(fun(Q108573,bool),S0))),s(fun(Q108573,real),i(s(fun(fun(Q108573,cart(real,Q108564)),fun(Q108573,real)),i(s(fun(cart(real,Q108564),fun(fun(Q108573,cart(real,Q108564)),fun(Q108573,real))),U_0),s(cart(real,Q108564),X))),s(fun(Q108573,cart(real,Q108564)),F0))))) = s(real,i(s(fun(cart(real,Q108564),real),i(s(fun(cart(real,Q108564),fun(cart(real,Q108564),real)),dot),s(cart(real,Q108564),X))),s(cart(real,Q108564),i(s(fun(fun(Q108573,cart(real,Q108564)),cart(real,Q108564)),i(s(fun(fun(Q108573,bool),fun(fun(Q108573,cart(real,Q108564)),cart(real,Q108564))),vsum),s(fun(Q108573,bool),S0))),s(fun(Q108573,cart(real,Q108564)),F0))))) )
     <= ! [X,F0,Y] : s(real,i(s(fun(cart(real,Q108564),real),i(s(fun(cart(real,Q108564),fun(cart(real,Q108564),real)),dot),s(cart(real,Q108564),X))),s(cart(real,Q108564),i(s(fun(Q108573,cart(real,Q108564)),F0),s(Q108573,Y))))) = s(real,i(s(fun(Q108573,real),i(s(fun(fun(Q108573,cart(real,Q108564)),fun(Q108573,real)),i(s(fun(cart(real,Q108564),fun(fun(Q108573,cart(real,Q108564)),fun(Q108573,real))),U_0),s(cart(real,Q108564),X))),s(fun(Q108573,cart(real,Q108564)),F0))),s(Q108573,Y))) ) ).

fof(aNORMu_LEu_L1,axiom,
    ! [N,U_0] :
      ( ! [X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0)))))
     => ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X)))))))) ) ).

fof(aMATRIXu_SUB,axiom,
    ! [N,M,A5,B0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),B0))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))) ).

fof(aVSUMu_NORM,axiom,
    ! [Q106640,Q106632,U_0] :
      ( ! [F0,S0] :
          ( p(s(bool,i(s(fun(fun(Q106640,bool),bool),finite),s(fun(Q106640,bool),S0))))
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q106632),real),vectoru_norm),s(cart(real,Q106632),i(s(fun(fun(Q106640,cart(real,Q106632)),cart(real,Q106632)),i(s(fun(fun(Q106640,bool),fun(fun(Q106640,cart(real,Q106632)),cart(real,Q106632))),vsum),s(fun(Q106640,bool),S0))),s(fun(Q106640,cart(real,Q106632)),F0))))))),s(real,i(s(fun(fun(Q106640,real),real),i(s(fun(fun(Q106640,bool),fun(fun(Q106640,real),real)),sum),s(fun(Q106640,bool),S0))),s(fun(Q106640,real),i(s(fun(fun(Q106640,cart(real,Q106632)),fun(Q106640,real)),U_0),s(fun(Q106640,cart(real,Q106632)),F0)))))))) )
     <= ! [F0,X] : s(real,i(s(fun(Q106640,real),i(s(fun(fun(Q106640,cart(real,Q106632)),fun(Q106640,real)),U_0),s(fun(Q106640,cart(real,Q106632)),F0))),s(Q106640,X))) = s(real,i(s(fun(cart(real,Q106632),real),vectoru_norm),s(cart(real,Q106632),i(s(fun(Q106640,cart(real,Q106632)),F0),s(Q106640,X))))) ) ).

fof(amat,axiom,
    ! [M,N,U_1] :
      ( ! [U_0] :
          ( ! [K0] : s(cart(cart(real,N),M),i(s(fun(fun(num,cart(real,N)),cart(cart(real,N),M)),lambda),s(fun(num,cart(real,N)),i(s(fun(num,fun(num,cart(real,N))),U_0),s(num,K0))))) = s(cart(cart(real,N),M),i(s(fun(num,cart(cart(real,N),M)),mat),s(num,K0)))
         <= ! [K0,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(num,fun(num,cart(real,N))),U_0),s(num,K0))),s(num,I0))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(num,fun(num,fun(num,real))),U_1),s(num,I0))),s(num,K0))))) )
     <= ! [I0,K0,J0] :
        ? [V] :
          ( ( s(num,I0) = s(num,J0)
          <=> p(s(bool,V)) )
          & s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(num,fun(num,fun(num,real))),U_1),s(num,I0))),s(num,K0))),s(num,J0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),i(s(fun(bool,fun(real,fun(real,real))),cond),s(bool,V))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,K0))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ) ) ).

fof(aFORALLu_DOTu_EQu_0u_conjunct0,axiom,
    ! [Q100563,Y] :
      ( s(cart(real,Q100563),i(s(fun(num,cart(real,Q100563)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100563),Y)
    <=> ! [X] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q100563),real),i(s(fun(cart(real,Q100563),fun(cart(real,Q100563),real)),dot),s(cart(real,Q100563),X))),s(cart(real,Q100563),Y))) ) ).

fof(aSQRTu_MUL,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,X))),s(real,Y))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) ) ).

fof(aNEUTRALu_VECTORu_ADD,axiom,
    ! [N] : s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),i(s(fun(fun(cart(real,N),fun(cart(real,N),cart(real,N))),cart(real,N)),neutral),s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add))) ).

fof(aMATRIXu_SELFu_ADJOINT,axiom,
    ! [Q117930,F0] :
      ( ( s(cart(cart(real,Q117930),Q117930),i(s(fun(cart(cart(real,Q117930),Q117930),cart(cart(real,Q117930),Q117930)),transp),s(cart(cart(real,Q117930),Q117930),i(s(fun(fun(cart(real,Q117930),cart(real,Q117930)),cart(cart(real,Q117930),Q117930)),matrix),s(fun(cart(real,Q117930),cart(real,Q117930)),F0))))) = s(cart(cart(real,Q117930),Q117930),i(s(fun(fun(cart(real,Q117930),cart(real,Q117930)),cart(cart(real,Q117930),Q117930)),matrix),s(fun(cart(real,Q117930),cart(real,Q117930)),F0)))
      <=> s(fun(cart(real,Q117930),cart(real,Q117930)),F0) = s(fun(cart(real,Q117930),cart(real,Q117930)),i(s(fun(fun(cart(real,Q117930),cart(real,Q117930)),fun(cart(real,Q117930),cart(real,Q117930))),adjoint),s(fun(cart(real,Q117930),cart(real,Q117930)),F0))) )
     <= p(s(bool,i(s(fun(fun(cart(real,Q117930),cart(real,Q117930)),bool),linear),s(fun(cart(real,Q117930),cart(real,Q117930)),F0)))) ) ).

fof(aDISTu_EQ,axiom,
    ! [Q105328,Q105334,W,X,Y,Z0] :
      ( s(real,i(s(fun(prod(cart(real,Q105334),cart(real,Q105334)),real),distance),s(prod(cart(real,Q105334),cart(real,Q105334)),i(s(fun(cart(real,Q105334),prod(cart(real,Q105334),cart(real,Q105334))),i(s(fun(cart(real,Q105334),fun(cart(real,Q105334),prod(cart(real,Q105334),cart(real,Q105334)))),c_),s(cart(real,Q105334),Y))),s(cart(real,Q105334),Z0))))) = s(real,i(s(fun(prod(cart(real,Q105328),cart(real,Q105328)),real),distance),s(prod(cart(real,Q105328),cart(real,Q105328)),i(s(fun(cart(real,Q105328),prod(cart(real,Q105328),cart(real,Q105328))),i(s(fun(cart(real,Q105328),fun(cart(real,Q105328),prod(cart(real,Q105328),cart(real,Q105328)))),c_),s(cart(real,Q105328),W))),s(cart(real,Q105328),X)))))
    <=> s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(prod(cart(real,Q105334),cart(real,Q105334)),real),distance),s(prod(cart(real,Q105334),cart(real,Q105334)),i(s(fun(cart(real,Q105334),prod(cart(real,Q105334),cart(real,Q105334))),i(s(fun(cart(real,Q105334),fun(cart(real,Q105334),prod(cart(real,Q105334),cart(real,Q105334)))),c_),s(cart(real,Q105334),Y))),s(cart(real,Q105334),Z0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(prod(cart(real,Q105328),cart(real,Q105328)),real),distance),s(prod(cart(real,Q105328),cart(real,Q105328)),i(s(fun(cart(real,Q105328),prod(cart(real,Q105328),cart(real,Q105328))),i(s(fun(cart(real,Q105328),fun(cart(real,Q105328),prod(cart(real,Q105328),cart(real,Q105328)))),c_),s(cart(real,Q105328),W))),s(cart(real,Q105328),X))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ) ).

fof(aMATRIXu_MULu_LZERO,axiom,
    ! [N,P,M,A5] : s(cart(cart(real,P),M),i(s(fun(num,cart(cart(real,P),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),i(s(fun(num,cart(cart(real,N),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(cart(real,P),N),A5))) ).

fof(aNORMu_NEG,axiom,
    ! [Q102180,X] : s(real,i(s(fun(cart(real,Q102180),real),vectoru_norm),s(cart(real,Q102180),X))) = s(real,i(s(fun(cart(real,Q102180),real),vectoru_norm),s(cart(real,Q102180),i(s(fun(cart(real,Q102180),cart(real,Q102180)),vectoru_neg),s(cart(real,Q102180),X))))) ).

fof(aDOTu_RADD,axiom,
    ! [Q100273,X,Y,Z0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),Y))))),s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),Z0))))) = s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),i(s(fun(cart(real,Q100273),cart(real,Q100273)),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),cart(real,Q100273))),vectoru_add),s(cart(real,Q100273),Y))),s(cart(real,Q100273),Z0))))) ).

fof(aMATRIXu_ADDu_ACu_conjunct1,axiom,
    ! [N,M] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),a))),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),b))),s(cart(cart(real,N),M),c0))))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),a))),s(cart(cart(real,N),M),b))))),s(cart(cart(real,N),M),c0))) ).

fof(aVECTORu_ADDu_ACu_conjunct0,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),m))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),n))) ).

fof(aONORMu_CONST,axiom,
    ! [M,N,U_0] :
      ( ! [Y] : s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y))) = s(real,i(s(fun(fun(cart(real,M),cart(real,N)),real),onorm),s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,M),cart(real,N))),U_0),s(cart(real,N),Y)))))
     <= ! [Y,X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,M),cart(real,N))),U_0),s(cart(real,N),Y))),s(cart(real,M),X))) = s(cart(real,N),Y) ) ).

fof(aFORALLu_1,axiom,
    ( ! [I0] :
        ( p(s(bool,i(s(fun(num,bool),p0),s(num,I0))))
       <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
          & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) )
  <=> p(s(bool,i(s(fun(num,bool),p0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) ).

fof(aFORALLu_REALu_ONE,axiom,
    ! [U_0] :
      ( ( ! [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),i(s(fun(fun(num,real),cart(real,n10)),lambda),s(fun(num,real),i(s(fun(real,fun(num,real)),U_0),s(real,X))))))))
      <=> ! [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),X)))) )
     <= ! [X,I0] : s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),U_0),s(real,X))),s(num,I0))) = s(real,X) ) ).

fof(aVECTORu_COMPONENTWISE,axiom,
    ! [N,U_1] :
      ( ! [X,J0,I0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(num,J0))))) = s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(real,N),fun(num,fun(num,real))),U_1),s(cart(real,N),X))),s(num,J0))),s(num,I0)))
     => ! [U_0] :
          ( ! [X] : s(cart(real,N),X) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X)))))
         <= ! [X,J0] : s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(real,N),fun(num,fun(num,real))),U_1),s(cart(real,N),X))),s(num,J0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))),s(num,J0))) ) ) ).

fof(aADJOINTu_MATRIX,axiom,
    ! [N,M,U_0] :
      ( ! [A5,X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(fun(cart(real,N),cart(real,M)),fun(cart(real,M),cart(real,N))),adjoint),s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),U_0),s(cart(cart(real,N),M),A5))))),s(cart(real,M),X))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))),s(cart(real,M),X)))
     <= ! [A5,X] : s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))) = s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))) ) ).

fof(aLINEARu_1,axiom,
    ! [F0] :
      ( ? [C0] :
        ! [X] : s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),F0),s(cart(real,n10),X))) = s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),i(s(fun(real,fun(cart(real,n10),cart(real,n10))),r_),s(real,C0))),s(cart(real,n10),X)))
    <=> p(s(bool,i(s(fun(fun(cart(real,n10),cart(real,n10)),bool),linear),s(fun(cart(real,n10),cart(real,n10)),F0)))) ) ).

fof(aVECTORu_1,axiom,
    ! [A] : s(A,i(s(fun(num,A),i(s(fun(cart(A,n10),fun(num,A)),d_),s(cart(A,n10),i(s(fun(list(A),cart(A,n10)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,x))),s(list(A),nil))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(A,x) ).

fof(aORTHOGONALu_CLAUSESu_conjunct2,axiom,
    ! [Q111053,A5,X] :
      ( p(s(bool,i(s(fun(cart(real,Q111053),bool),i(s(fun(cart(real,Q111053),fun(cart(real,Q111053),bool)),orthogonal),s(cart(real,Q111053),A5))),s(cart(real,Q111053),X))))
     => p(s(bool,i(s(fun(cart(real,Q111053),bool),i(s(fun(cart(real,Q111053),fun(cart(real,Q111053),bool)),orthogonal),s(cart(real,Q111053),A5))),s(cart(real,Q111053),i(s(fun(cart(real,Q111053),cart(real,Q111053)),vectoru_neg),s(cart(real,Q111053),X)))))) ) ).

fof(aDISTu_TRIANGLEu_HALFu_L,axiom,
    ! [Q105011,X1,X2,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105011),cart(real,Q105011)),real),distance),s(prod(cart(real,Q105011),cart(real,Q105011)),i(s(fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011))),i(s(fun(cart(real,Q105011),fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011)))),c_),s(cart(real,Q105011),X1))),s(cart(real,Q105011),X2))))))),s(real,e0))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105011),cart(real,Q105011)),real),distance),s(prod(cart(real,Q105011),cart(real,Q105011)),i(s(fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011))),i(s(fun(cart(real,Q105011),fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011)))),c_),s(cart(real,Q105011),X1))),s(cart(real,Q105011),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105011),cart(real,Q105011)),real),distance),s(prod(cart(real,Q105011),cart(real,Q105011)),i(s(fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011))),i(s(fun(cart(real,Q105011),fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011)))),c_),s(cart(real,Q105011),X2))),s(cart(real,Q105011),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))))) ) ) ).

fof(adist,axiom,
    ! [Q100698,X,Y] : s(real,i(s(fun(cart(real,Q100698),real),vectoru_norm),s(cart(real,Q100698),i(s(fun(cart(real,Q100698),cart(real,Q100698)),i(s(fun(cart(real,Q100698),fun(cart(real,Q100698),cart(real,Q100698))),vectoru_sub),s(cart(real,Q100698),X))),s(cart(real,Q100698),Y))))) = s(real,i(s(fun(prod(cart(real,Q100698),cart(real,Q100698)),real),distance),s(prod(cart(real,Q100698),cart(real,Q100698)),i(s(fun(cart(real,Q100698),prod(cart(real,Q100698),cart(real,Q100698))),i(s(fun(cart(real,Q100698),fun(cart(real,Q100698),prod(cart(real,Q100698),cart(real,Q100698)))),c_),s(cart(real,Q100698),X))),s(cart(real,Q100698),Y))))) ).

fof(aTRANSPu_MAT,axiom,
    ! [Q116735,Q116736,N0] : s(cart(cart(real,Q116735),Q116736),i(s(fun(num,cart(cart(real,Q116735),Q116736)),mat),s(num,N0))) = s(cart(cart(real,Q116735),Q116736),i(s(fun(cart(cart(real,Q116736),Q116735),cart(cart(real,Q116735),Q116736)),transp),s(cart(cart(real,Q116736),Q116735),i(s(fun(num,cart(cart(real,Q116736),Q116735)),mat),s(num,N0))))) ).

fof(aVECTORu_SUBu_LDISTRIB,axiom,
    ! [Q99834] : s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(cart(real,Q99834),fun(cart(real,Q99834),cart(real,Q99834))),vectoru_sub),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),x))))),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),y))))) = s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(cart(real,Q99834),fun(cart(real,Q99834),cart(real,Q99834))),vectoru_sub),s(cart(real,Q99834),x))),s(cart(real,Q99834),y))))) ).

fof(aLINEARu_VMULu_DROP,axiom,
    ! [Q119643,Q119649,U_0] :
      ( ! [F0,V] :
          ( p(s(bool,i(s(fun(fun(cart(real,Q119643),cart(real,n10)),bool),linear),s(fun(cart(real,Q119643),cart(real,n10)),F0))))
         => p(s(bool,i(s(fun(fun(cart(real,Q119643),cart(real,Q119649)),bool),linear),s(fun(cart(real,Q119643),cart(real,Q119649)),i(s(fun(cart(real,Q119649),fun(cart(real,Q119643),cart(real,Q119649))),i(s(fun(fun(cart(real,Q119643),cart(real,n10)),fun(cart(real,Q119649),fun(cart(real,Q119643),cart(real,Q119649)))),U_0),s(fun(cart(real,Q119643),cart(real,n10)),F0))),s(cart(real,Q119649),V)))))) )
     <= ! [F0,V,X] : s(cart(real,Q119649),i(s(fun(cart(real,Q119643),cart(real,Q119649)),i(s(fun(cart(real,Q119649),fun(cart(real,Q119643),cart(real,Q119649))),i(s(fun(fun(cart(real,Q119643),cart(real,n10)),fun(cart(real,Q119649),fun(cart(real,Q119643),cart(real,Q119649)))),U_0),s(fun(cart(real,Q119643),cart(real,n10)),F0))),s(cart(real,Q119649),V))),s(cart(real,Q119643),X))) = s(cart(real,Q119649),i(s(fun(cart(real,Q119649),cart(real,Q119649)),i(s(fun(real,fun(cart(real,Q119649),cart(real,Q119649))),r_),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(cart(real,Q119643),cart(real,n10)),F0),s(cart(real,Q119643),X))))))),s(cart(real,Q119649),V))) ) ).

fof(aFORALLu_DROP,axiom,
    ( ! [X] : p(s(bool,i(s(fun(real,bool),p0),s(real,X))))
  <=> ! [X] : p(s(bool,i(s(fun(real,bool),p0),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X)))))) ) ).

fof(aMATRIXu_VECTORu_MULu_SUBu_RDISTRIB,axiom,
    ! [N,M,A5,B0,X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(cart(cart(real,M),N),fun(cart(cart(real,M),N),cart(cart(real,M),N))),matrixu_sub),s(cart(cart(real,M),N),A5))),s(cart(cart(real,M),N),B0))))),s(cart(real,M),X))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),X))))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),B0))),s(cart(real,M),X))))) ).

fof(aLIFTu_EQu_CMUL,axiom,
    ! [X] : s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),i(s(fun(real,fun(cart(real,n10),cart(real,n10))),r_),s(real,X))),s(cart(real,n10),i(s(fun(num,cart(real,n10)),vec),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))) ).

fof(aMATRIXu_SUBu_LDISTRIB,axiom,
    ! [M,P,N,A5,B0,C0] : s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),M),cart(cart(real,P),M)),i(s(fun(cart(cart(real,P),M),fun(cart(cart(real,P),M),cart(cart(real,P),M))),matrixu_sub),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0))))),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),C0))))) = s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),N)),i(s(fun(cart(cart(real,P),N),fun(cart(cart(real,P),N),cart(cart(real,P),N))),matrixu_sub),s(cart(cart(real,P),N),B0))),s(cart(cart(real,P),N),C0))))) ).

fof(aDISTu_TRIANGLEu_LE,axiom,
    ! [Q104912,X,Y,Z0,E0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,Q104912),cart(real,Q104912)),real),distance),s(prod(cart(real,Q104912),cart(real,Q104912)),i(s(fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912))),i(s(fun(cart(real,Q104912),fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912)))),c_),s(cart(real,Q104912),X))),s(cart(real,Q104912),Y))))))),s(real,E0))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,Q104912),cart(real,Q104912)),real),distance),s(prod(cart(real,Q104912),cart(real,Q104912)),i(s(fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912))),i(s(fun(cart(real,Q104912),fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912)))),c_),s(cart(real,Q104912),X))),s(cart(real,Q104912),Z0))))))),s(real,i(s(fun(prod(cart(real,Q104912),cart(real,Q104912)),real),distance),s(prod(cart(real,Q104912),cart(real,Q104912)),i(s(fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912))),i(s(fun(cart(real,Q104912),fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912)))),c_),s(cart(real,Q104912),Y))),s(cart(real,Q104912),Z0))))))))),s(real,E0)))) ) ).

fof(aVSUMu_CASESu_1,axiom,
    ! [Q109577,Q109575,U_0] :
      ( ! [S0,A5] :
          ( s(cart(real,Q109577),i(s(fun(cart(real,Q109577),cart(real,Q109577)),i(s(fun(cart(real,Q109577),fun(cart(real,Q109577),cart(real,Q109577))),vectoru_add),s(cart(real,Q109577),i(s(fun(fun(Q109575,cart(real,Q109577)),cart(real,Q109577)),i(s(fun(fun(Q109575,bool),fun(fun(Q109575,cart(real,Q109577)),cart(real,Q109577))),vsum),s(fun(Q109575,bool),S0))),s(fun(Q109575,cart(real,Q109577)),f))))),s(cart(real,Q109577),i(s(fun(cart(real,Q109577),cart(real,Q109577)),i(s(fun(cart(real,Q109577),fun(cart(real,Q109577),cart(real,Q109577))),vectoru_sub),s(cart(real,Q109577),y))),s(cart(real,Q109577),i(s(fun(Q109575,cart(real,Q109577)),f),s(Q109575,A5))))))) = s(cart(real,Q109577),i(s(fun(fun(Q109575,cart(real,Q109577)),cart(real,Q109577)),i(s(fun(fun(Q109575,bool),fun(fun(Q109575,cart(real,Q109577)),cart(real,Q109577))),vsum),s(fun(Q109575,bool),S0))),s(fun(Q109575,cart(real,Q109577)),i(s(fun(Q109575,fun(Q109575,cart(real,Q109577))),U_0),s(Q109575,A5)))))
         <= ( p(s(bool,i(s(fun(fun(Q109575,bool),bool),finite),s(fun(Q109575,bool),S0))))
            & p(s(bool,i(s(fun(fun(Q109575,bool),bool),i(s(fun(Q109575,fun(fun(Q109575,bool),bool)),in),s(Q109575,A5))),s(fun(Q109575,bool),S0)))) ) )
     <= ! [A5,X] :
        ? [V] :
          ( s(cart(real,Q109577),i(s(fun(Q109575,cart(real,Q109577)),i(s(fun(Q109575,fun(Q109575,cart(real,Q109577))),U_0),s(Q109575,A5))),s(Q109575,X))) = s(cart(real,Q109577),i(s(fun(cart(real,Q109577),cart(real,Q109577)),i(s(fun(cart(real,Q109577),fun(cart(real,Q109577),cart(real,Q109577))),i(s(fun(bool,fun(cart(real,Q109577),fun(cart(real,Q109577),cart(real,Q109577)))),cond),s(bool,V))),s(cart(real,Q109577),y))),s(cart(real,Q109577),i(s(fun(Q109575,cart(real,Q109577)),f),s(Q109575,X)))))
          & ( s(Q109575,A5) = s(Q109575,X)
          <=> p(s(bool,V)) ) ) ) ).

fof(aBILINEARu_RNEG,axiom,
    ! [Q112492,Q112477,Q112491,H0,X,Y] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q112477),fun(cart(real,Q112491),cart(real,Q112492))),bool),bilinear),s(fun(cart(real,Q112477),fun(cart(real,Q112491),cart(real,Q112492))),H0))))
     => s(cart(real,Q112492),i(s(fun(cart(real,Q112492),cart(real,Q112492)),vectoru_neg),s(cart(real,Q112492),i(s(fun(cart(real,Q112491),cart(real,Q112492)),i(s(fun(cart(real,Q112477),fun(cart(real,Q112491),cart(real,Q112492))),H0),s(cart(real,Q112477),X))),s(cart(real,Q112491),Y))))) = s(cart(real,Q112492),i(s(fun(cart(real,Q112491),cart(real,Q112492)),i(s(fun(cart(real,Q112477),fun(cart(real,Q112491),cart(real,Q112492))),H0),s(cart(real,Q112477),X))),s(cart(real,Q112491),i(s(fun(cart(real,Q112491),cart(real,Q112491)),vectoru_neg),s(cart(real,Q112491),Y))))) ) ).

fof(aMATRIXu_I,axiom,
    ! [Q117867] : s(cart(cart(real,Q117867),Q117867),i(s(fun(fun(cart(real,Q117867),cart(real,Q117867)),cart(cart(real,Q117867),Q117867)),matrix),s(fun(cart(real,Q117867),cart(real,Q117867)),i1))) = s(cart(cart(real,Q117867),Q117867),i(s(fun(num,cart(cart(real,Q117867),Q117867)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aFORALLu_DROPu_FUN,axiom,
    ! [A,P0] :
      ( ! [F0] : p(s(bool,i(s(fun(fun(A,real),bool),P0),s(fun(A,real),F0))))
    <=> ! [F0] : p(s(bool,i(s(fun(fun(A,real),bool),P0),s(fun(A,real),i(s(fun(fun(A,cart(real,n10)),fun(A,real)),i(s(fun(fun(cart(real,n10),real),fun(fun(A,cart(real,n10)),fun(A,real))),o),s(fun(cart(real,n10),real),drop))),s(fun(A,cart(real,n10)),F0)))))) ) ).

fof(aLIFTu_EQ,axiom,
    ! [X,Y] :
      ( s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))) = s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,Y)))
    <=> s(real,Y) = s(real,X) ) ).

fof(aBILINEARu_RADD,axiom,
    ! [Q112352,Q112333,Q112351,H0,X,Y,Z0] :
      ( s(cart(real,Q112352),i(s(fun(cart(real,Q112352),cart(real,Q112352)),i(s(fun(cart(real,Q112352),fun(cart(real,Q112352),cart(real,Q112352))),vectoru_add),s(cart(real,Q112352),i(s(fun(cart(real,Q112351),cart(real,Q112352)),i(s(fun(cart(real,Q112333),fun(cart(real,Q112351),cart(real,Q112352))),H0),s(cart(real,Q112333),X))),s(cart(real,Q112351),Y))))),s(cart(real,Q112352),i(s(fun(cart(real,Q112351),cart(real,Q112352)),i(s(fun(cart(real,Q112333),fun(cart(real,Q112351),cart(real,Q112352))),H0),s(cart(real,Q112333),X))),s(cart(real,Q112351),Z0))))) = s(cart(real,Q112352),i(s(fun(cart(real,Q112351),cart(real,Q112352)),i(s(fun(cart(real,Q112333),fun(cart(real,Q112351),cart(real,Q112352))),H0),s(cart(real,Q112333),X))),s(cart(real,Q112351),i(s(fun(cart(real,Q112351),cart(real,Q112351)),i(s(fun(cart(real,Q112351),fun(cart(real,Q112351),cart(real,Q112351))),vectoru_add),s(cart(real,Q112351),Y))),s(cart(real,Q112351),Z0)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q112333),fun(cart(real,Q112351),cart(real,Q112352))),bool),bilinear),s(fun(cart(real,Q112333),fun(cart(real,Q112351),cart(real,Q112352))),H0)))) ) ).

fof(aVECTORu_3u_conjunct2,axiom,
    ! [A] : s(A,i(s(fun(num,A),i(s(fun(cart(A,n3),fun(num,A)),d_),s(cart(A,n3),i(s(fun(list(A),cart(A,n3)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,x))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,y))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,z))),s(list(A),nil))))))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(A,z) ).

fof(aVECTORu_3u_conjunct1,axiom,
    ! [A] : s(A,y) = s(A,i(s(fun(num,A),i(s(fun(cart(A,n3),fun(num,A)),d_),s(cart(A,n3),i(s(fun(list(A),cart(A,n3)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,x))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,y))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,z))),s(list(A),nil))))))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ).

fof(aBILINEARu_VSUM,axiom,
    ! [Q112722,Q112723,M,N,P,U_0] :
      ( ! [H0] :
          ( ( p(s(bool,i(s(fun(fun(Q112722,bool),bool),finite),s(fun(Q112722,bool),s0))))
            & p(s(bool,i(s(fun(fun(Q112723,bool),bool),finite),s(fun(Q112723,bool),t0))))
            & p(s(bool,i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),bool),bilinear),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0)))) )
         => s(cart(real,P),i(s(fun(fun(prod(Q112722,Q112723),cart(real,P)),cart(real,P)),i(s(fun(fun(prod(Q112722,Q112723),bool),fun(fun(prod(Q112722,Q112723),cart(real,P)),cart(real,P))),vsum),s(fun(prod(Q112722,Q112723),bool),i(s(fun(fun(Q112723,bool),fun(prod(Q112722,Q112723),bool)),i(s(fun(fun(Q112722,bool),fun(fun(Q112723,bool),fun(prod(Q112722,Q112723),bool))),cross0),s(fun(Q112722,bool),s0))),s(fun(Q112723,bool),t0))))),s(fun(prod(Q112722,Q112723),cart(real,P)),i(s(fun(fun(fun(prod(Q112722,Q112723),cart(real,P)),bool),fun(prod(Q112722,Q112723),cart(real,P))),gabs),s(fun(fun(prod(Q112722,Q112723),cart(real,P)),bool),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(prod(Q112722,Q112723),cart(real,P)),bool)),U_0),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))))))) = s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(fun(Q112722,cart(real,M)),cart(real,M)),i(s(fun(fun(Q112722,bool),fun(fun(Q112722,cart(real,M)),cart(real,M))),vsum),s(fun(Q112722,bool),s0))),s(fun(Q112722,cart(real,M)),f))))),s(cart(real,N),i(s(fun(fun(Q112723,cart(real,N)),cart(real,N)),i(s(fun(fun(Q112723,bool),fun(fun(Q112723,cart(real,N)),cart(real,N))),vsum),s(fun(Q112723,bool),t0))),s(fun(Q112723,cart(real,N)),g))))) )
     <= ! [H0,F0] :
          ( p(s(bool,i(s(fun(fun(prod(Q112722,Q112723),cart(real,P)),bool),i(s(fun(fun(cart(real,M),fun(cart(real,N),cart(real,P))),fun(fun(prod(Q112722,Q112723),cart(real,P)),bool)),U_0),s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0))),s(fun(prod(Q112722,Q112723),cart(real,P)),F0))))
        <=> ! [I0,J0] : p(s(bool,i(s(fun(cart(real,P),bool),i(s(fun(cart(real,P),fun(cart(real,P),bool)),geq),s(cart(real,P),i(s(fun(prod(Q112722,Q112723),cart(real,P)),F0),s(prod(Q112722,Q112723),i(s(fun(Q112723,prod(Q112722,Q112723)),i(s(fun(Q112722,fun(Q112723,prod(Q112722,Q112723))),c_),s(Q112722,I0))),s(Q112723,J0))))))),s(cart(real,P),i(s(fun(cart(real,N),cart(real,P)),i(s(fun(cart(real,M),fun(cart(real,N),cart(real,P))),H0),s(cart(real,M),i(s(fun(Q112722,cart(real,M)),f),s(Q112722,I0))))),s(cart(real,N),i(s(fun(Q112723,cart(real,N)),g),s(Q112723,J0)))))))) ) ) ).

fof(aVSUMu_PAIRu_0,axiom,
    ! [N,U_0] :
      ( ! [F0,N0] : s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,N0))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),U_0),s(fun(num,cart(real,N)),F0)))))
     <= ! [F0,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),U_0),s(fun(num,cart(real,N)),F0))),s(num,I0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,I0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,I0))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ) ).

fof(aMATRIXu_ADDu_LDISTRIB,axiom,
    ! [M,P,N,A5,B0,C0] : s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),N)),i(s(fun(cart(cart(real,P),N),fun(cart(cart(real,P),N),cart(cart(real,P),N))),matrixu_add),s(cart(cart(real,P),N),B0))),s(cart(cart(real,P),N),C0))))) = s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),M),cart(cart(real,P),M)),i(s(fun(cart(cart(real,P),M),fun(cart(cart(real,P),M),cart(cart(real,P),M))),matrixu_add),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0))))),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),C0))))) ).

fof(aVECTORu_MULu_LCANCELu_IMP,axiom,
    ! [Q102500,A5,X,Y] :
      ( s(cart(real,Q102500),Y) = s(cart(real,Q102500),X)
     <= ( s(cart(real,Q102500),i(s(fun(cart(real,Q102500),cart(real,Q102500)),i(s(fun(real,fun(cart(real,Q102500),cart(real,Q102500))),r_),s(real,A5))),s(cart(real,Q102500),Y))) = s(cart(real,Q102500),i(s(fun(cart(real,Q102500),cart(real,Q102500)),i(s(fun(real,fun(cart(real,Q102500),cart(real,Q102500))),r_),s(real,A5))),s(cart(real,Q102500),X)))
        & s(real,A5) != s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ) ).

fof(aBILINEARu_LADD,axiom,
    ! [Q112310,Q112309,Q112292,H0,X,Y,Z0] :
      ( s(cart(real,Q112310),i(s(fun(cart(real,Q112310),cart(real,Q112310)),i(s(fun(cart(real,Q112310),fun(cart(real,Q112310),cart(real,Q112310))),vectoru_add),s(cart(real,Q112310),i(s(fun(cart(real,Q112292),cart(real,Q112310)),i(s(fun(cart(real,Q112309),fun(cart(real,Q112292),cart(real,Q112310))),H0),s(cart(real,Q112309),X))),s(cart(real,Q112292),Z0))))),s(cart(real,Q112310),i(s(fun(cart(real,Q112292),cart(real,Q112310)),i(s(fun(cart(real,Q112309),fun(cart(real,Q112292),cart(real,Q112310))),H0),s(cart(real,Q112309),Y))),s(cart(real,Q112292),Z0))))) = s(cart(real,Q112310),i(s(fun(cart(real,Q112292),cart(real,Q112310)),i(s(fun(cart(real,Q112309),fun(cart(real,Q112292),cart(real,Q112310))),H0),s(cart(real,Q112309),i(s(fun(cart(real,Q112309),cart(real,Q112309)),i(s(fun(cart(real,Q112309),fun(cart(real,Q112309),cart(real,Q112309))),vectoru_add),s(cart(real,Q112309),X))),s(cart(real,Q112309),Y))))),s(cart(real,Q112292),Z0)))
     <= p(s(bool,i(s(fun(fun(cart(real,Q112309),fun(cart(real,Q112292),cart(real,Q112310))),bool),bilinear),s(fun(cart(real,Q112309),fun(cart(real,Q112292),cart(real,Q112310))),H0)))) ) ).

fof(aDOTu_LMULu_MATRIX,axiom,
    ! [M,N,A5,X,Y] : s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(cart(cart(real,N),M),cart(real,N)),i(s(fun(cart(real,M),fun(cart(cart(real,N),M),cart(real,N))),vectoru_matrixu_mul),s(cart(real,M),X))),s(cart(cart(real,N),M),A5))))),s(cart(real,N),Y))) = s(real,i(s(fun(cart(real,M),real),i(s(fun(cart(real,M),fun(cart(real,M),real)),dot),s(cart(real,M),X))),s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),Y))))) ).

fof(aNORMu_POWu_2,axiom,
    ! [Q102322,X] : s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q102322),real),vectoru_norm),s(cart(real,Q102322),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(cart(real,Q102322),real),i(s(fun(cart(real,Q102322),fun(cart(real,Q102322),real)),dot),s(cart(real,Q102322),X))),s(cart(real,Q102322),X))) ).

fof(aCOLUMNSu_TRANSP,axiom,
    ! [N,M,A5] : s(fun(cart(real,N),bool),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),bool)),rows),s(cart(cart(real,N),M),A5))) = s(fun(cart(real,N),bool),i(s(fun(cart(cart(real,M),N),fun(cart(real,N),bool)),columns),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))) ).

fof(aNORMu_POSu_LE,axiom,
    ! [Q102162,X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q102162),real),vectoru_norm),s(cart(real,Q102162),X)))))) ).

fof(aDISTu_TRIANGLE,axiom,
    ! [N,X,Y,Z0] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),X))),s(cart(real,N),Z0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),X))),s(cart(real,N),Y))))))),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),Y))),s(cart(real,N),Z0)))))))))) ).

fof(aLIFTu_NEG,axiom,
    ! [X] : s(cart(real,n10),i(s(fun(cart(real,n10),cart(real,n10)),vectoru_neg),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))) = s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(real,real),realu_neg),s(real,X))))) ).

fof(aMATRIXu_MULu_DOT,axiom,
    ! [M,N,U_0] :
      ( ! [A5,X] : s(cart(real,M),i(s(fun(fun(num,real),cart(real,M)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))))) = s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X)))
     <= ! [A5,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(cart(real,N),X))) ) ).

fof(amatrixu_sub,axiom,
    ! [N,M,U_1] :
      ( ! [U_0] :
          ( ! [A5,B0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))) = s(cart(cart(real,N),M),i(s(fun(fun(num,cart(real,N)),cart(cart(real,N),M)),lambda),s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),fun(num,cart(real,N)))),U_0),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0)))))
         <= ! [A5,B0,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),fun(num,cart(real,N)))),U_0),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))),s(num,I0))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),fun(num,fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))),s(num,I0))))) )
     <= ! [A5,B0,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),fun(num,fun(num,real)))),U_1),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))),s(num,I0))),s(num,J0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),B0))),s(num,I0))))),s(num,J0))))) ) ).

fof(aSQRTu_MONOu_LE,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,Y)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) ) ).

fof(aVSUMu_CLAUSESu_conjunct0,axiom,
    ! [Q105493,Q105495,F0] : s(cart(real,Q105495),i(s(fun(num,cart(real,Q105495)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q105495),i(s(fun(fun(Q105493,cart(real,Q105495)),cart(real,Q105495)),i(s(fun(fun(Q105493,bool),fun(fun(Q105493,cart(real,Q105495)),cart(real,Q105495))),vsum),s(fun(Q105493,bool),empty))),s(fun(Q105493,cart(real,Q105495)),F0))) ).

fof(aMATRIXu_ADDu_COMPONENT,axiom,
    ! [N,M,A5,B0,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))),s(num,I0))))),s(num,J0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),B0))),s(num,I0))))),s(num,J0))))) ).

fof(aMATRIXu_CMULu_ASSOC,axiom,
    ! [M,N,A5,B0,X] : s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(real,fun(cart(cart(real,M),N),cart(cart(real,M),N))),r_r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,A5))),s(real,B0))))),s(cart(cart(real,M),N),X))) = s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(real,fun(cart(cart(real,M),N),cart(cart(real,M),N))),r_r_),s(real,A5))),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(real,fun(cart(cart(real,M),N),cart(cart(real,M),N))),r_r_),s(real,B0))),s(cart(cart(real,M),N),X))))) ).

fof(aNORMu_GEu_SQUARE,axiom,
    ! [N,X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,a0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))))
        | p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_ge),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) )
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_ge),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0)))) ) ).

fof(aVSUMu_IMAGE,axiom,
    ! [Q105914,Q105918,Q105892,F0,G0,S0] :
      ( ( ! [X,Y] :
            ( s(Q105918,X) = s(Q105918,Y)
           <= ( s(Q105892,i(s(fun(Q105918,Q105892),F0),s(Q105918,Y))) = s(Q105892,i(s(fun(Q105918,Q105892),F0),s(Q105918,X)))
              & p(s(bool,i(s(fun(fun(Q105918,bool),bool),i(s(fun(Q105918,fun(fun(Q105918,bool),bool)),in),s(Q105918,Y))),s(fun(Q105918,bool),S0))))
              & p(s(bool,i(s(fun(fun(Q105918,bool),bool),i(s(fun(Q105918,fun(fun(Q105918,bool),bool)),in),s(Q105918,X))),s(fun(Q105918,bool),S0)))) ) )
        & p(s(bool,i(s(fun(fun(Q105918,bool),bool),finite),s(fun(Q105918,bool),S0)))) )
     => s(cart(real,Q105914),i(s(fun(fun(Q105918,cart(real,Q105914)),cart(real,Q105914)),i(s(fun(fun(Q105918,bool),fun(fun(Q105918,cart(real,Q105914)),cart(real,Q105914))),vsum),s(fun(Q105918,bool),S0))),s(fun(Q105918,cart(real,Q105914)),i(s(fun(fun(Q105918,Q105892),fun(Q105918,cart(real,Q105914))),i(s(fun(fun(Q105892,cart(real,Q105914)),fun(fun(Q105918,Q105892),fun(Q105918,cart(real,Q105914)))),o),s(fun(Q105892,cart(real,Q105914)),G0))),s(fun(Q105918,Q105892),F0))))) = s(cart(real,Q105914),i(s(fun(fun(Q105892,cart(real,Q105914)),cart(real,Q105914)),i(s(fun(fun(Q105892,bool),fun(fun(Q105892,cart(real,Q105914)),cart(real,Q105914))),vsum),s(fun(Q105892,bool),i(s(fun(fun(Q105918,bool),fun(Q105892,bool)),i(s(fun(fun(Q105918,Q105892),fun(fun(Q105918,bool),fun(Q105892,bool))),image),s(fun(Q105918,Q105892),F0))),s(fun(Q105918,bool),S0))))),s(fun(Q105892,cart(real,Q105914)),G0))) ) ).

fof(aMATRIXu_SUBu_COMPONENT,axiom,
    ! [N,M,A5,B0,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))),s(num,I0))))),s(num,J0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),B0))),s(num,I0))))),s(num,J0))))) ).

fof(aMATRIXu_SUBu_REFL,axiom,
    ! [Q114719,Q114720,A5] : s(cart(cart(real,Q114719),Q114720),i(s(fun(cart(cart(real,Q114719),Q114720),cart(cart(real,Q114719),Q114720)),i(s(fun(cart(cart(real,Q114719),Q114720),fun(cart(cart(real,Q114719),Q114720),cart(cart(real,Q114719),Q114720))),matrixu_sub),s(cart(cart(real,Q114719),Q114720),A5))),s(cart(cart(real,Q114719),Q114720),A5))) = s(cart(cart(real,Q114719),Q114720),i(s(fun(num,cart(cart(real,Q114719),Q114720)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aSUMu_3,axiom,
    ! [T0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) = s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,real),T0))) ).

fof(aEXISTSu_DROPu_FUN,axiom,
    ! [A,P0] :
      ( ? [F0] : p(s(bool,i(s(fun(fun(A,real),bool),P0),s(fun(A,real),F0))))
    <=> ? [F0] : p(s(bool,i(s(fun(fun(A,real),bool),P0),s(fun(A,real),i(s(fun(fun(A,cart(real,n10)),fun(A,real)),i(s(fun(fun(cart(real,n10),real),fun(fun(A,cart(real,n10)),fun(A,real))),o),s(fun(cart(real,n10),real),drop))),s(fun(A,cart(real,n10)),F0)))))) ) ).

fof(aORTHOGONALu_SYM,axiom,
    ! [Q110681,X,Y] : s(bool,i(s(fun(cart(real,Q110681),bool),i(s(fun(cart(real,Q110681),fun(cart(real,Q110681),bool)),orthogonal),s(cart(real,Q110681),X))),s(cart(real,Q110681),Y))) = s(bool,i(s(fun(cart(real,Q110681),bool),i(s(fun(cart(real,Q110681),fun(cart(real,Q110681),bool)),orthogonal),s(cart(real,Q110681),Y))),s(cart(real,Q110681),X))) ).

fof(aVSUMu_UNIONSu_NONZERO,axiom,
    ! [A,Q107754,U_0] :
      ( ! [F0,T0] : s(cart(real,Q107754),i(s(fun(fun(A,cart(real,Q107754)),cart(real,Q107754)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107754)),cart(real,Q107754))),vsum),s(fun(A,bool),T0))),s(fun(A,cart(real,Q107754)),F0))) = s(cart(real,Q107754),i(s(fun(fun(A,bool),cart(real,Q107754)),i(s(fun(fun(A,cart(real,Q107754)),fun(fun(A,bool),cart(real,Q107754))),U_0),s(fun(A,cart(real,Q107754)),F0))),s(fun(A,bool),T0)))
     => ! [F0,S0] :
          ( s(cart(real,Q107754),i(s(fun(fun(fun(A,bool),cart(real,Q107754)),cart(real,Q107754)),i(s(fun(fun(fun(A,bool),bool),fun(fun(fun(A,bool),cart(real,Q107754)),cart(real,Q107754))),vsum),s(fun(fun(A,bool),bool),S0))),s(fun(fun(A,bool),cart(real,Q107754)),i(s(fun(fun(A,cart(real,Q107754)),fun(fun(A,bool),cart(real,Q107754))),U_0),s(fun(A,cart(real,Q107754)),F0))))) = s(cart(real,Q107754),i(s(fun(fun(A,cart(real,Q107754)),cart(real,Q107754)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107754)),cart(real,Q107754))),vsum),s(fun(A,bool),i(s(fun(fun(fun(A,bool),bool),fun(A,bool)),unions),s(fun(fun(A,bool),bool),S0))))),s(fun(A,cart(real,Q107754)),F0)))
         <= ( ! [T0] :
                ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),T0))))
               <= p(s(bool,i(s(fun(fun(fun(A,bool),bool),bool),i(s(fun(fun(A,bool),fun(fun(fun(A,bool),bool),bool)),in),s(fun(A,bool),T0))),s(fun(fun(A,bool),bool),S0)))) )
            & ! [T1,T2,X] :
                ( s(cart(real,Q107754),i(s(fun(A,cart(real,Q107754)),F0),s(A,X))) = s(cart(real,Q107754),i(s(fun(num,cart(real,Q107754)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
               <= ( s(fun(A,bool),T2) != s(fun(A,bool),T1)
                  & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),T2))))
                  & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),T1))))
                  & p(s(bool,i(s(fun(fun(fun(A,bool),bool),bool),i(s(fun(fun(A,bool),fun(fun(fun(A,bool),bool),bool)),in),s(fun(A,bool),T2))),s(fun(fun(A,bool),bool),S0))))
                  & p(s(bool,i(s(fun(fun(fun(A,bool),bool),bool),i(s(fun(fun(A,bool),fun(fun(fun(A,bool),bool),bool)),in),s(fun(A,bool),T1))),s(fun(fun(A,bool),bool),S0)))) ) )
            & p(s(bool,i(s(fun(fun(fun(A,bool),bool),bool),finite),s(fun(fun(A,bool),bool),S0)))) ) ) ) ).

fof(aNORMu_BOUNDu_COMPONENTu_LT,axiom,
    ! [N,X,E0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,E0))))
     => ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))))),s(real,E0)))) ) ) ).

fof(aLIFTu_DROPu_conjunct1,axiom,
    ! [X] : s(real,X) = s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,X))))) ).

fof(aVSUMu_NORMu_BOUND,axiom,
    ! [Q106792,A,S0,F0,B0] :
      ( ( ! [X] :
            ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q106792),real),vectoru_norm),s(cart(real,Q106792),i(s(fun(A,cart(real,Q106792)),F0),s(A,X))))))),s(real,B0))))
           <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q106792),real),vectoru_norm),s(cart(real,Q106792),i(s(fun(fun(A,cart(real,Q106792)),cart(real,Q106792)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q106792)),cart(real,Q106792))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q106792)),F0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(fun(A,bool),num),card),s(fun(A,bool),S0))))))),s(real,B0)))))) ) ).

fof(aVECu_COMPONENT,axiom,
    ! [N,K0,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,K0))))),s(num,I0))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,K0))) ).

fof(aNORMu_TRIANGLEu_LT,axiom,
    ! [Q102930,X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q102930),real),vectoru_norm),s(cart(real,Q102930),X))))),s(real,i(s(fun(cart(real,Q102930),real),vectoru_norm),s(cart(real,Q102930),Y))))))),s(real,e0))))
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,Q102930),real),vectoru_norm),s(cart(real,Q102930),i(s(fun(cart(real,Q102930),cart(real,Q102930)),i(s(fun(cart(real,Q102930),fun(cart(real,Q102930),cart(real,Q102930))),vectoru_add),s(cart(real,Q102930),X))),s(cart(real,Q102930),Y))))))),s(real,e0)))) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct5,axiom,
    ! [Q110949,A5] : p(s(bool,i(s(fun(cart(real,Q110949),bool),i(s(fun(cart(real,Q110949),fun(cart(real,Q110949),bool)),orthogonal),s(cart(real,Q110949),i(s(fun(num,cart(real,Q110949)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q110949),A5)))) ).

fof(aDOTu_POSu_LE,axiom,
    ! [Q100487,X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q100487),real),i(s(fun(cart(real,Q100487),fun(cart(real,Q100487),real)),dot),s(cart(real,Q100487),X))),s(cart(real,Q100487),X)))))) ).

fof(arow,axiom,
    ! [N,M,U_0] :
      ( ! [A5,I0] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(num,I0))))) = s(cart(real,N),i(s(fun(cart(cart(real,N),M),cart(real,N)),i(s(fun(num,fun(cart(cart(real,N),M),cart(real,N))),row),s(num,I0))),s(cart(cart(real,N),M),A5)))
     <= ! [A5,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),U_0),s(cart(cart(real,N),M),A5))),s(num,I0))),s(num,J0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))) ) ).

fof(aDOTu_RZERO,axiom,
    ! [Q100472,X] : s(real,i(s(fun(cart(real,Q100472),real),i(s(fun(cart(real,Q100472),fun(cart(real,Q100472),real)),dot),s(cart(real,Q100472),X))),s(cart(real,Q100472),i(s(fun(num,cart(real,Q100472)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aTRANSPu_MATRIXu_SUB,axiom,
    ! [N,M,A5,B0] : s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_sub),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))) = s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(cart(cart(real,M),N),fun(cart(cart(real,M),N),cart(cart(real,M),N))),matrixu_sub),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),B0))))) ).

fof(aVSUMu_UNIONu_LZERO,axiom,
    ! [A,N,F0,U,V] :
      ( ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),V))))
        & ! [X] :
            ( ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),U))))
              & ~ p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),V)))) )
           => s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) )
     => s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),V))),s(fun(A,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),union),s(fun(A,bool),U))),s(fun(A,bool),V))))),s(fun(A,cart(real,N)),F0))) ) ).

fof(aORTHOGONALu_LVSUM,axiom,
    ! [A,N,F0,S0,Y] :
      ( p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(real,N),fun(cart(real,N),bool)),orthogonal),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))),s(cart(real,N),Y))))
     <= ( ! [X] :
            ( p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(real,N),fun(cart(real,N),bool)),orthogonal),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))),s(cart(real,N),Y))))
           <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) ) ) ).

fof(aLINEARu_BOUNDED,axiom,
    ! [N,M,F0] :
      ( ? [B0] :
        ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,B0))),s(real,i(s(fun(cart(real,M),real),vectoru_norm),s(cart(real,M),X))))))))
     <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ).

fof(aNORMu_TRIANGLEu_LE,axiom,
    ! [Q102893,X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q102893),real),vectoru_norm),s(cart(real,Q102893),i(s(fun(cart(real,Q102893),cart(real,Q102893)),i(s(fun(cart(real,Q102893),fun(cart(real,Q102893),cart(real,Q102893))),vectoru_add),s(cart(real,Q102893),X))),s(cart(real,Q102893),Y))))))),s(real,e0))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q102893),real),vectoru_norm),s(cart(real,Q102893),X))))),s(real,i(s(fun(cart(real,Q102893),real),vectoru_norm),s(cart(real,Q102893),Y))))))),s(real,e0)))) ) ).

fof(aLINEARu_NEG,axiom,
    ! [Q111863,Q111862,F0,X] :
      ( s(cart(real,Q111863),i(s(fun(cart(real,Q111862),cart(real,Q111863)),F0),s(cart(real,Q111862),i(s(fun(cart(real,Q111862),cart(real,Q111862)),vectoru_neg),s(cart(real,Q111862),X))))) = s(cart(real,Q111863),i(s(fun(cart(real,Q111863),cart(real,Q111863)),vectoru_neg),s(cart(real,Q111863),i(s(fun(cart(real,Q111862),cart(real,Q111863)),F0),s(cart(real,Q111862),X)))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q111862),cart(real,Q111863)),bool),linear),s(fun(cart(real,Q111862),cart(real,Q111863)),F0)))) ) ).

fof(aVSUMu_ADD,axiom,
    ! [Q105715,Q105728,U_0] :
      ( ! [F0,G0,X] : s(cart(real,Q105728),i(s(fun(Q105715,cart(real,Q105728)),i(s(fun(fun(Q105715,cart(real,Q105728)),fun(Q105715,cart(real,Q105728))),i(s(fun(fun(Q105715,cart(real,Q105728)),fun(fun(Q105715,cart(real,Q105728)),fun(Q105715,cart(real,Q105728)))),U_0),s(fun(Q105715,cart(real,Q105728)),F0))),s(fun(Q105715,cart(real,Q105728)),G0))),s(Q105715,X))) = s(cart(real,Q105728),i(s(fun(cart(real,Q105728),cart(real,Q105728)),i(s(fun(cart(real,Q105728),fun(cart(real,Q105728),cart(real,Q105728))),vectoru_add),s(cart(real,Q105728),i(s(fun(Q105715,cart(real,Q105728)),F0),s(Q105715,X))))),s(cart(real,Q105728),i(s(fun(Q105715,cart(real,Q105728)),G0),s(Q105715,X)))))
     => ! [F0,G0,S0] :
          ( p(s(bool,i(s(fun(fun(Q105715,bool),bool),finite),s(fun(Q105715,bool),S0))))
         => s(cart(real,Q105728),i(s(fun(cart(real,Q105728),cart(real,Q105728)),i(s(fun(cart(real,Q105728),fun(cart(real,Q105728),cart(real,Q105728))),vectoru_add),s(cart(real,Q105728),i(s(fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728)),i(s(fun(fun(Q105715,bool),fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728))),vsum),s(fun(Q105715,bool),S0))),s(fun(Q105715,cart(real,Q105728)),F0))))),s(cart(real,Q105728),i(s(fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728)),i(s(fun(fun(Q105715,bool),fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728))),vsum),s(fun(Q105715,bool),S0))),s(fun(Q105715,cart(real,Q105728)),G0))))) = s(cart(real,Q105728),i(s(fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728)),i(s(fun(fun(Q105715,bool),fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728))),vsum),s(fun(Q105715,bool),S0))),s(fun(Q105715,cart(real,Q105728)),i(s(fun(fun(Q105715,cart(real,Q105728)),fun(Q105715,cart(real,Q105728))),i(s(fun(fun(Q105715,cart(real,Q105728)),fun(fun(Q105715,cart(real,Q105728)),fun(Q105715,cart(real,Q105728)))),U_0),s(fun(Q105715,cart(real,Q105728)),F0))),s(fun(Q105715,cart(real,Q105728)),G0))))) ) ) ).

fof(aSQUAREu_CONTINUOUS,axiom,
    ! [X,E0] :
      ( ? [D0] :
          ( ! [Y] :
              ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,Y))),s(real,Y))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,X))),s(real,X))))))))),s(real,E0))))
             <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,Y))),s(real,X))))))),s(real,D0)))) )
          & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,D0)))) )
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0)))) ) ).

fof(adot,axiom,
    ! [N,U_0] :
      ( ! [X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0)))))
     => ! [X,Y] : s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))) = s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))))) ) ).

fof(aEXISTSu_DROPu_IMAGE,axiom,
    ! [P0] :
      ( ? [S0] : p(s(bool,i(s(fun(fun(real,bool),bool),P0),s(fun(real,bool),i(s(fun(fun(cart(real,n10),bool),fun(real,bool)),i(s(fun(fun(cart(real,n10),real),fun(fun(cart(real,n10),bool),fun(real,bool))),image),s(fun(cart(real,n10),real),drop))),s(fun(cart(real,n10),bool),S0))))))
    <=> ? [S0] : p(s(bool,i(s(fun(fun(real,bool),bool),P0),s(fun(real,bool),S0)))) ) ).

fof(aIMAGEu_LIFTu_UNIV,axiom,
    s(fun(cart(real,n10),bool),i(s(fun(fun(real,bool),fun(cart(real,n10),bool)),i(s(fun(fun(real,cart(real,n10)),fun(fun(real,bool),fun(cart(real,n10),bool))),image),s(fun(real,cart(real,n10)),lift))),s(fun(real,bool),univ))) = s(fun(cart(real,n10),bool),univ) ).

fof(aMATRIXu_VECTORu_MULu_LZERO,axiom,
    ! [N,Q116015,X] : s(cart(real,Q116015),i(s(fun(num,cart(real,Q116015)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q116015),i(s(fun(cart(real,N),cart(real,Q116015)),i(s(fun(cart(cart(real,N),Q116015),fun(cart(real,N),cart(real,Q116015))),matrixu_vectoru_mul),s(cart(cart(real,N),Q116015),i(s(fun(num,cart(cart(real,N),Q116015)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,N),X))) ).

fof(aMATRIXu_MULu_LID,axiom,
    ! [N,M,A5] : s(cart(cart(real,N),M),A5) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,M),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_mul),s(cart(cart(real,M),M),i(s(fun(num,cart(cart(real,M),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(cart(real,N),M),A5))) ).

fof(aVSUMu_ADDu_NUMSEG,axiom,
    ! [Q107272,U_0] :
      ( ! [F0,G0,M0,N0] : s(cart(real,Q107272),i(s(fun(fun(num,cart(real,Q107272)),cart(real,Q107272)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107272)),cart(real,Q107272))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107272)),i(s(fun(fun(num,cart(real,Q107272)),fun(num,cart(real,Q107272))),i(s(fun(fun(num,cart(real,Q107272)),fun(fun(num,cart(real,Q107272)),fun(num,cart(real,Q107272)))),U_0),s(fun(num,cart(real,Q107272)),F0))),s(fun(num,cart(real,Q107272)),G0))))) = s(cart(real,Q107272),i(s(fun(cart(real,Q107272),cart(real,Q107272)),i(s(fun(cart(real,Q107272),fun(cart(real,Q107272),cart(real,Q107272))),vectoru_add),s(cart(real,Q107272),i(s(fun(fun(num,cart(real,Q107272)),cart(real,Q107272)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107272)),cart(real,Q107272))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107272)),F0))))),s(cart(real,Q107272),i(s(fun(fun(num,cart(real,Q107272)),cart(real,Q107272)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107272)),cart(real,Q107272))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107272)),G0)))))
     <= ! [F0,G0,I0] : s(cart(real,Q107272),i(s(fun(num,cart(real,Q107272)),i(s(fun(fun(num,cart(real,Q107272)),fun(num,cart(real,Q107272))),i(s(fun(fun(num,cart(real,Q107272)),fun(fun(num,cart(real,Q107272)),fun(num,cart(real,Q107272)))),U_0),s(fun(num,cart(real,Q107272)),F0))),s(fun(num,cart(real,Q107272)),G0))),s(num,I0))) = s(cart(real,Q107272),i(s(fun(cart(real,Q107272),cart(real,Q107272)),i(s(fun(cart(real,Q107272),fun(cart(real,Q107272),cart(real,Q107272))),vectoru_add),s(cart(real,Q107272),i(s(fun(num,cart(real,Q107272)),F0),s(num,I0))))),s(cart(real,Q107272),i(s(fun(num,cart(real,Q107272)),G0),s(num,I0))))) ) ).

fof(aINu_IMAGEu_LIFTu_DROPu_conjunct0,axiom,
    ! [X,S0] : s(bool,i(s(fun(fun(cart(real,n10),bool),bool),i(s(fun(cart(real,n10),fun(fun(cart(real,n10),bool),bool)),in),s(cart(real,n10),X))),s(fun(cart(real,n10),bool),i(s(fun(fun(real,bool),fun(cart(real,n10),bool)),i(s(fun(fun(real,cart(real,n10)),fun(fun(real,bool),fun(cart(real,n10),bool))),image),s(fun(real,cart(real,n10)),lift))),s(fun(real,bool),S0))))) = s(bool,i(s(fun(fun(real,bool),bool),i(s(fun(real,fun(fun(real,bool),bool)),in),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))),s(fun(real,bool),S0))) ).

fof(aVECTORu_MULu_LCANCEL,axiom,
    ! [Q102424,A5,X,Y] :
      ( ( s(real,A5) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
        | s(cart(real,Q102424),X) = s(cart(real,Q102424),Y) )
    <=> s(cart(real,Q102424),i(s(fun(cart(real,Q102424),cart(real,Q102424)),i(s(fun(real,fun(cart(real,Q102424),cart(real,Q102424))),r_),s(real,A5))),s(cart(real,Q102424),X))) = s(cart(real,Q102424),i(s(fun(cart(real,Q102424),cart(real,Q102424)),i(s(fun(real,fun(cart(real,Q102424),cart(real,Q102424))),r_),s(real,A5))),s(cart(real,Q102424),Y))) ) ).

fof(aLINEARu_SUB,axiom,
    ! [Q111931,Q111930,F0,X,Y] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q111930),cart(real,Q111931)),bool),linear),s(fun(cart(real,Q111930),cart(real,Q111931)),F0))))
     => s(cart(real,Q111931),i(s(fun(cart(real,Q111930),cart(real,Q111931)),F0),s(cart(real,Q111930),i(s(fun(cart(real,Q111930),cart(real,Q111930)),i(s(fun(cart(real,Q111930),fun(cart(real,Q111930),cart(real,Q111930))),vectoru_sub),s(cart(real,Q111930),X))),s(cart(real,Q111930),Y))))) = s(cart(real,Q111931),i(s(fun(cart(real,Q111931),cart(real,Q111931)),i(s(fun(cart(real,Q111931),fun(cart(real,Q111931),cart(real,Q111931))),vectoru_sub),s(cart(real,Q111931),i(s(fun(cart(real,Q111930),cart(real,Q111931)),F0),s(cart(real,Q111930),X))))),s(cart(real,Q111931),i(s(fun(cart(real,Q111930),cart(real,Q111931)),F0),s(cart(real,Q111930),Y))))) ) ).

fof(aLINEARu_TOu_REALS,axiom,
    ! [N,F0] :
      ( ! [X] : s(cart(real,n10),i(s(fun(real,cart(real,n10)),lift),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(cart(cart(real,N),n10),cart(real,N)),i(s(fun(num,fun(cart(cart(real,N),n10),cart(real,N))),row),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(cart(cart(real,N),n10),i(s(fun(fun(cart(real,N),cart(real,n10)),cart(cart(real,N),n10)),matrix),s(fun(cart(real,N),cart(real,n10)),F0))))))),s(cart(real,N),X))))) = s(cart(real,n10),i(s(fun(cart(real,N),cart(real,n10)),F0),s(cart(real,N),X)))
     <= p(s(bool,i(s(fun(fun(cart(real,N),cart(real,n10)),bool),linear),s(fun(cart(real,N),cart(real,n10)),F0)))) ) ).

fof(ainvertible,axiom,
    ! [M,N,A5] :
      ( p(s(bool,i(s(fun(cart(cart(real,N),M),bool),invertible),s(cart(cart(real,N),M),A5))))
    <=> ? [AI_] :
          ( s(cart(cart(real,N),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),N)),i(s(fun(cart(cart(real,M),N),fun(cart(cart(real,N),M),cart(cart(real,N),N))),matrixu_mul),s(cart(cart(real,M),N),AI_))),s(cart(cart(real,N),M),A5))) = s(cart(cart(real,N),N),i(s(fun(num,cart(cart(real,N),N)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))
          & s(cart(cart(real,M),M),i(s(fun(num,cart(cart(real,M),M)),mat),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(cart(cart(real,M),M),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,M),N),cart(cart(real,M),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,M),N),AI_))) ) ) ).

fof(aREALu_LSQRTu_LE,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ) ).

fof(aNORMu_MUL,axiom,
    ! [Q102231,A5,X] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),realu_abs),s(real,A5))))),s(real,i(s(fun(cart(real,Q102231),real),vectoru_norm),s(cart(real,Q102231),X))))) = s(real,i(s(fun(cart(real,Q102231),real),vectoru_norm),s(cart(real,Q102231),i(s(fun(cart(real,Q102231),cart(real,Q102231)),i(s(fun(real,fun(cart(real,Q102231),cart(real,Q102231))),r_),s(real,A5))),s(cart(real,Q102231),X))))) ).

fof(aDISTu_REFL,axiom,
    ! [Q104658,X] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(prod(cart(real,Q104658),cart(real,Q104658)),real),distance),s(prod(cart(real,Q104658),cart(real,Q104658)),i(s(fun(cart(real,Q104658),prod(cart(real,Q104658),cart(real,Q104658))),i(s(fun(cart(real,Q104658),fun(cart(real,Q104658),prod(cart(real,Q104658),cart(real,Q104658)))),c_),s(cart(real,Q104658),X))),s(cart(real,Q104658),X))))) ).

fof(aDOTu_BASISu_BASIS,axiom,
    ! [N,I0,J0] :
      ( ? [V] :
          ( ( p(s(bool,V))
          <=> s(num,J0) = s(num,I0) )
          & s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),i(s(fun(bool,fun(real,fun(real,real))),cond),s(bool,V))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,J0))))) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(aLINEARu_EQu_MATRIX,axiom,
    ! [Q117887,Q117888,F0,G0] :
      ( ( s(cart(cart(real,Q117887),Q117888),i(s(fun(fun(cart(real,Q117887),cart(real,Q117888)),cart(cart(real,Q117887),Q117888)),matrix),s(fun(cart(real,Q117887),cart(real,Q117888)),F0))) = s(cart(cart(real,Q117887),Q117888),i(s(fun(fun(cart(real,Q117887),cart(real,Q117888)),cart(cart(real,Q117887),Q117888)),matrix),s(fun(cart(real,Q117887),cart(real,Q117888)),G0)))
        & p(s(bool,i(s(fun(fun(cart(real,Q117887),cart(real,Q117888)),bool),linear),s(fun(cart(real,Q117887),cart(real,Q117888)),G0))))
        & p(s(bool,i(s(fun(fun(cart(real,Q117887),cart(real,Q117888)),bool),linear),s(fun(cart(real,Q117887),cart(real,Q117888)),F0)))) )
     => s(fun(cart(real,Q117887),cart(real,Q117888)),F0) = s(fun(cart(real,Q117887),cart(real,Q117888)),G0) ) ).

fof(aBILINEARu_LNEG,axiom,
    ! [Q112458,Q112457,Q112444,H0,X,Y] :
      ( p(s(bool,i(s(fun(fun(cart(real,Q112457),fun(cart(real,Q112444),cart(real,Q112458))),bool),bilinear),s(fun(cart(real,Q112457),fun(cart(real,Q112444),cart(real,Q112458))),H0))))
     => s(cart(real,Q112458),i(s(fun(cart(real,Q112458),cart(real,Q112458)),vectoru_neg),s(cart(real,Q112458),i(s(fun(cart(real,Q112444),cart(real,Q112458)),i(s(fun(cart(real,Q112457),fun(cart(real,Q112444),cart(real,Q112458))),H0),s(cart(real,Q112457),X))),s(cart(real,Q112444),Y))))) = s(cart(real,Q112458),i(s(fun(cart(real,Q112444),cart(real,Q112458)),i(s(fun(cart(real,Q112457),fun(cart(real,Q112444),cart(real,Q112458))),H0),s(cart(real,Q112457),i(s(fun(cart(real,Q112457),cart(real,Q112457)),vectoru_neg),s(cart(real,Q112457),X))))),s(cart(real,Q112444),Y))) ) ).

fof(aMATRIXu_VECTORu_MULu_COMPONENT,axiom,
    ! [M,N,A5,X,K0] :
      ( s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,K0))))),s(cart(real,N),X))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,M),fun(num,real)),d_),s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(cart(cart(real,N),M),fun(cart(real,N),cart(real,M))),matrixu_vectoru_mul),s(cart(cart(real,N),M),A5))),s(cart(real,N),X))))),s(num,K0)))
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,K0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,K0))),s(num,i(s(fun(fun(M,bool),num),dimindex),s(fun(M,bool),univ)))))) ) ) ).

fof(aVECTORu_2u_conjunct1,axiom,
    ! [A] : s(A,i(s(fun(num,A),i(s(fun(cart(A,n20),fun(num,A)),d_),s(cart(A,n20),i(s(fun(list(A),cart(A,n20)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,x))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,y))),s(list(A),nil))))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(A,y) ).

fof(aVECTORu_NEGu_NEG,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),x))))) = s(cart(real,N),x) ).

fof(aVECTORu_MULu_LNEG,axiom,
    ! [Q100029] : s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),vectoru_neg),s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),i(s(fun(real,fun(cart(real,Q100029),cart(real,Q100029))),r_),s(real,c))),s(cart(real,Q100029),x))))) = s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),i(s(fun(real,fun(cart(real,Q100029),cart(real,Q100029))),r_),s(real,i(s(fun(real,real),realu_neg),s(real,c))))),s(cart(real,Q100029),x))) ).

fof(aREALu_ABSu_SUBu_NORM,axiom,
    ! [Q103229] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,Q103229),real),vectoru_norm),s(cart(real,Q103229),x))))),s(real,i(s(fun(cart(real,Q103229),real),vectoru_norm),s(cart(real,Q103229),y))))))))),s(real,i(s(fun(cart(real,Q103229),real),vectoru_norm),s(cart(real,Q103229),i(s(fun(cart(real,Q103229),cart(real,Q103229)),i(s(fun(cart(real,Q103229),fun(cart(real,Q103229),cart(real,Q103229))),vectoru_sub),s(cart(real,Q103229),x))),s(cart(real,Q103229),y)))))))) ).

fof(aTRANSPu_MATRIXu_ADD,axiom,
    ! [N,M,A5,B0] : s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(cart(cart(real,M),N),fun(cart(cart(real,M),N),cart(cart(real,M),N))),matrixu_add),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),B0))))) = s(cart(cart(real,M),N),i(s(fun(cart(cart(real,N),M),cart(cart(real,M),N)),transp),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))))) ).

fof(aNORMu_EQu_0,axiom,
    ! [Q102285,X] :
      ( s(cart(real,Q102285),X) = s(cart(real,Q102285),i(s(fun(num,cart(real,Q102285)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102285),real),vectoru_norm),s(cart(real,Q102285),X))) ) ).

fof(aVECTORu_EQu_ADDR,axiom,
    ! [Q99907] :
      ( s(cart(real,Q99907),x) = s(cart(real,Q99907),i(s(fun(cart(real,Q99907),cart(real,Q99907)),i(s(fun(cart(real,Q99907),fun(cart(real,Q99907),cart(real,Q99907))),vectoru_add),s(cart(real,Q99907),x))),s(cart(real,Q99907),y)))
    <=> s(cart(real,Q99907),y) = s(cart(real,Q99907),i(s(fun(num,cart(real,Q99907)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aDROPu_VEC,axiom,
    ! [N0] : s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),i(s(fun(num,cart(real,n10)),vec),s(num,N0))))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,N0))) ).

fof(aONORMu_TRIANGLEu_LT,axiom,
    ! [Q118614,Q118625,U_0] :
      ( ! [F0,G0,X] : s(cart(real,Q118625),i(s(fun(cart(real,Q118625),cart(real,Q118625)),i(s(fun(cart(real,Q118625),fun(cart(real,Q118625),cart(real,Q118625))),vectoru_add),s(cart(real,Q118625),i(s(fun(cart(real,Q118614),cart(real,Q118625)),F0),s(cart(real,Q118614),X))))),s(cart(real,Q118625),i(s(fun(cart(real,Q118614),cart(real,Q118625)),G0),s(cart(real,Q118614),X))))) = s(cart(real,Q118625),i(s(fun(cart(real,Q118614),cart(real,Q118625)),i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),fun(cart(real,Q118614),cart(real,Q118625))),i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),fun(fun(cart(real,Q118614),cart(real,Q118625)),fun(cart(real,Q118614),cart(real,Q118625)))),U_0),s(fun(cart(real,Q118614),cart(real,Q118625)),F0))),s(fun(cart(real,Q118614),cart(real,Q118625)),G0))),s(cart(real,Q118614),X)))
     => ! [F0,G0] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),real),onorm),s(fun(cart(real,Q118614),cart(real,Q118625)),i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),fun(cart(real,Q118614),cart(real,Q118625))),i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),fun(fun(cart(real,Q118614),cart(real,Q118625)),fun(cart(real,Q118614),cart(real,Q118625)))),U_0),s(fun(cart(real,Q118614),cart(real,Q118625)),F0))),s(fun(cart(real,Q118614),cart(real,Q118625)),G0))))))),s(real,e0))))
         <= ( p(s(bool,i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),bool),linear),s(fun(cart(real,Q118614),cart(real,Q118625)),F0))))
            & p(s(bool,i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),bool),linear),s(fun(cart(real,Q118614),cart(real,Q118625)),G0))))
            & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),real),onorm),s(fun(cart(real,Q118614),cart(real,Q118625)),F0))))),s(real,i(s(fun(fun(cart(real,Q118614),cart(real,Q118625)),real),onorm),s(fun(cart(real,Q118614),cart(real,Q118625)),G0))))))),s(real,e0)))) ) ) ) ).

fof(aADJOINTu_CLAUSES,axiom,
    ! [N,M,F0] :
      ( ( ! [X,Y] : s(real,i(s(fun(cart(real,M),real),i(s(fun(cart(real,M),fun(cart(real,M),real)),dot),s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,N),cart(real,M))),adjoint),s(fun(cart(real,M),cart(real,N)),F0))),s(cart(real,N),Y))))),s(cart(real,M),X))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),Y))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X)))))
        & ! [X,Y] : s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))),s(cart(real,N),Y))) = s(real,i(s(fun(cart(real,M),real),i(s(fun(cart(real,M),fun(cart(real,M),real)),dot),s(cart(real,M),X))),s(cart(real,M),i(s(fun(cart(real,N),cart(real,M)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,N),cart(real,M))),adjoint),s(fun(cart(real,M),cart(real,N)),F0))),s(cart(real,N),Y))))) )
     <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ).

fof(avsum,axiom,
    ! [A,N,U_1] :
      ( ! [U_0] :
          ( ! [S0,F0,I0] : s(real,i(s(fun(fun(A,real),real),i(s(fun(fun(A,bool),fun(fun(A,real),real)),sum),s(fun(A,bool),S0))),s(fun(A,real),i(s(fun(num,fun(A,real)),i(s(fun(fun(A,cart(real,N)),fun(num,fun(A,real))),U_1),s(fun(A,cart(real,N)),F0))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(fun(A,cart(real,N)),fun(num,real)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),fun(num,real))),U_0),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))),s(num,I0)))
         => ! [S0,F0] : s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(fun(A,cart(real,N)),fun(num,real)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),fun(num,real))),U_0),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))) )
     <= ! [F0,I0,X] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))),s(num,I0))) = s(real,i(s(fun(A,real),i(s(fun(num,fun(A,real)),i(s(fun(fun(A,cart(real,N)),fun(num,fun(A,real))),U_1),s(fun(A,cart(real,N)),F0))),s(num,I0))),s(A,X))) ) ).

fof(aVSUMu_SWAPu_NUMSEG,axiom,
    ! [Q109392,U_2] :
      ( ! [U_1] :
          ( ! [U_0] :
              ( ! [C0,D0,F0,I0] : s(cart(real,Q109392),i(s(fun(num,cart(real,Q109392)),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))),i(s(fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392)))),i(s(fun(num,fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))))),U_0),s(num,C0))),s(num,D0))),s(fun(num,fun(num,cart(real,Q109392))),F0))),s(num,I0))) = s(cart(real,Q109392),i(s(fun(fun(num,cart(real,Q109392)),cart(real,Q109392)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109392)),cart(real,Q109392))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,C0))),s(num,D0))))),s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),F0),s(num,I0)))))
             => ! [A5,B0,C0,D0,F0] : s(cart(real,Q109392),i(s(fun(fun(num,cart(real,Q109392)),cart(real,Q109392)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109392)),cart(real,Q109392))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,C0))),s(num,D0))))),s(fun(num,cart(real,Q109392)),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))),i(s(fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392)))),i(s(fun(num,fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))))),U_0),s(num,A5))),s(num,B0))),s(fun(num,fun(num,cart(real,Q109392))),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,fun(num,cart(real,Q109392)))),U_1),s(fun(num,fun(num,cart(real,Q109392))),F0))))))) = s(cart(real,Q109392),i(s(fun(fun(num,cart(real,Q109392)),cart(real,Q109392)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109392)),cart(real,Q109392))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,A5))),s(num,B0))))),s(fun(num,cart(real,Q109392)),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))),i(s(fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392)))),i(s(fun(num,fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))))),U_0),s(num,C0))),s(num,D0))),s(fun(num,fun(num,cart(real,Q109392))),F0))))) )
         <= ! [F0,J0] : s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,fun(num,cart(real,Q109392)))),U_2),s(fun(num,fun(num,cart(real,Q109392))),F0))),s(num,J0))) = s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,fun(num,cart(real,Q109392)))),U_1),s(fun(num,fun(num,cart(real,Q109392))),F0))),s(num,J0))) )
     <= ! [F0,J0,I0] : s(cart(real,Q109392),i(s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),F0),s(num,I0))),s(num,J0))) = s(cart(real,Q109392),i(s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,fun(num,cart(real,Q109392)))),U_2),s(fun(num,fun(num,cart(real,Q109392))),F0))),s(num,J0))),s(num,I0))) ) ).

fof(aVECTORu_MULu_ASSOC,axiom,
    ! [Q99731,A5,B0,X] : s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,A5))),s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,B0))),s(cart(real,Q99731),X))))) = s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,A5))),s(real,B0))))),s(cart(real,Q99731),X))) ).

fof(aVSUMu_PAIR,axiom,
    ! [N,U_0] :
      ( ! [F0,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),U_0),s(fun(num,cart(real,N)),F0))),s(num,I0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,I0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,I0))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))
     => ! [F0,M0,N0] : s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,M0))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,N0))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),U_0),s(fun(num,cart(real,N)),F0))))) ) ).

fof(aMATRIXu_NEGu_COMPONENT,axiom,
    ! [N,M,A5,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),A5))))),s(num,I0))))),s(num,J0))) = s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))) ).

fof(aMATRIXu_WORKS,axiom,
    ! [N,M,F0] :
      ( ! [X] : s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),i(s(fun(fun(cart(real,M),cart(real,N)),cart(cart(real,M),N)),matrix),s(fun(cart(real,M),cart(real,N)),F0))))),s(cart(real,M),X))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X)))
     <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ).

fof(aVECTORu_SUBu_REFL,axiom,
    ! [Q99591,X] : s(cart(real,Q99591),i(s(fun(cart(real,Q99591),cart(real,Q99591)),i(s(fun(cart(real,Q99591),fun(cart(real,Q99591),cart(real,Q99591))),vectoru_sub),s(cart(real,Q99591),X))),s(cart(real,Q99591),X))) = s(cart(real,Q99591),i(s(fun(num,cart(real,Q99591)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aVSUMu_LMUL,axiom,
    ! [Q105645,Q105652,U_0] :
      ( ! [C0,F0,X] : s(cart(real,Q105652),i(s(fun(Q105645,cart(real,Q105652)),i(s(fun(fun(Q105645,cart(real,Q105652)),fun(Q105645,cart(real,Q105652))),i(s(fun(real,fun(fun(Q105645,cart(real,Q105652)),fun(Q105645,cart(real,Q105652)))),U_0),s(real,C0))),s(fun(Q105645,cart(real,Q105652)),F0))),s(Q105645,X))) = s(cart(real,Q105652),i(s(fun(cart(real,Q105652),cart(real,Q105652)),i(s(fun(real,fun(cart(real,Q105652),cart(real,Q105652))),r_),s(real,C0))),s(cart(real,Q105652),i(s(fun(Q105645,cart(real,Q105652)),F0),s(Q105645,X)))))
     => ! [F0,C0,S0] : s(cart(real,Q105652),i(s(fun(cart(real,Q105652),cart(real,Q105652)),i(s(fun(real,fun(cart(real,Q105652),cart(real,Q105652))),r_),s(real,C0))),s(cart(real,Q105652),i(s(fun(fun(Q105645,cart(real,Q105652)),cart(real,Q105652)),i(s(fun(fun(Q105645,bool),fun(fun(Q105645,cart(real,Q105652)),cart(real,Q105652))),vsum),s(fun(Q105645,bool),S0))),s(fun(Q105645,cart(real,Q105652)),F0))))) = s(cart(real,Q105652),i(s(fun(fun(Q105645,cart(real,Q105652)),cart(real,Q105652)),i(s(fun(fun(Q105645,bool),fun(fun(Q105645,cart(real,Q105652)),cart(real,Q105652))),vsum),s(fun(Q105645,bool),S0))),s(fun(Q105645,cart(real,Q105652)),i(s(fun(fun(Q105645,cart(real,Q105652)),fun(Q105645,cart(real,Q105652))),i(s(fun(real,fun(fun(Q105645,cart(real,Q105652)),fun(Q105645,cart(real,Q105652)))),U_0),s(real,C0))),s(fun(Q105645,cart(real,Q105652)),F0))))) ) ).

fof(aDOTu_LZERO,axiom,
    ! [Q100457,X] : s(real,i(s(fun(cart(real,Q100457),real),i(s(fun(cart(real,Q100457),fun(cart(real,Q100457),real)),dot),s(cart(real,Q100457),i(s(fun(num,cart(real,Q100457)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q100457),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aVSUMu_ADDu_GEN,axiom,
    ! [Q109481,Q109494,U_1] :
      ( ! [F0,G0,X] : s(cart(real,Q109494),i(s(fun(cart(real,Q109494),cart(real,Q109494)),i(s(fun(cart(real,Q109494),fun(cart(real,Q109494),cart(real,Q109494))),vectoru_add),s(cart(real,Q109494),i(s(fun(Q109481,cart(real,Q109494)),F0),s(Q109481,X))))),s(cart(real,Q109494),i(s(fun(Q109481,cart(real,Q109494)),G0),s(Q109481,X))))) = s(cart(real,Q109494),i(s(fun(Q109481,cart(real,Q109494)),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,cart(real,Q109494))),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,cart(real,Q109494)))),U_1),s(fun(Q109481,cart(real,Q109494)),F0))),s(fun(Q109481,cart(real,Q109494)),G0))),s(Q109481,X)))
     => ! [U_0] :
          ( ! [F0,G0,S0] :
              ( ( p(s(bool,i(s(fun(fun(Q109481,bool),bool),finite),s(fun(Q109481,bool),i(s(fun(fun(Q109481,bool),fun(Q109481,bool)),gspec),s(fun(Q109481,bool),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool))),U_0),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),F0))))))))
                & p(s(bool,i(s(fun(fun(Q109481,bool),bool),finite),s(fun(Q109481,bool),i(s(fun(fun(Q109481,bool),fun(Q109481,bool)),gspec),s(fun(Q109481,bool),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool))),U_0),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),G0)))))))) )
             => s(cart(real,Q109494),i(s(fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494))),vsum),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,cart(real,Q109494))),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,cart(real,Q109494)))),U_1),s(fun(Q109481,cart(real,Q109494)),F0))),s(fun(Q109481,cart(real,Q109494)),G0))))) = s(cart(real,Q109494),i(s(fun(cart(real,Q109494),cart(real,Q109494)),i(s(fun(cart(real,Q109494),fun(cart(real,Q109494),cart(real,Q109494))),vectoru_add),s(cart(real,Q109494),i(s(fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494))),vsum),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),F0))))),s(cart(real,Q109494),i(s(fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494))),vsum),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),G0))))) )
         <= ! [S0,F0,GENR_PVARR_286] :
              ( p(s(bool,i(s(fun(Q109481,bool),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool))),U_0),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),F0))),s(Q109481,GENR_PVARR_286))))
            <=> ? [X,V] :
                  ( p(s(bool,i(s(fun(Q109481,bool),i(s(fun(bool,fun(Q109481,bool)),i(s(fun(Q109481,fun(bool,fun(Q109481,bool))),setspec),s(Q109481,GENR_PVARR_286))),s(bool,V))),s(Q109481,X))))
                  & ( ( s(cart(real,Q109494),i(s(fun(num,cart(real,Q109494)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) != s(cart(real,Q109494),i(s(fun(Q109481,cart(real,Q109494)),F0),s(Q109481,X)))
                      & p(s(bool,i(s(fun(fun(Q109481,bool),bool),i(s(fun(Q109481,fun(fun(Q109481,bool),bool)),in),s(Q109481,X))),s(fun(Q109481,bool),S0)))) )
                  <=> p(s(bool,V)) ) ) ) ) ) ).

fof(aMATRIXu_ADDu_SYM,axiom,
    ! [N,M,A5,B0] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),B0))),s(cart(cart(real,N),M),A5))) = s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,N),M),cart(cart(real,N),M))),matrixu_add),s(cart(cart(real,N),M),A5))),s(cart(cart(real,N),M),B0))) ).

fof(aMATRIXu_MULu_LMUL,axiom,
    ! [M,P,N,A5,B0,C0] : s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),i(s(fun(real,fun(cart(cart(real,N),M),cart(cart(real,N),M))),r_r_),s(real,C0))),s(cart(cart(real,N),M),A5))))),s(cart(cart(real,P),N),B0))) = s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),M),cart(cart(real,P),M)),i(s(fun(real,fun(cart(cart(real,P),M),cart(cart(real,P),M))),r_r_),s(real,C0))),s(cart(cart(real,P),M),i(s(fun(cart(cart(real,P),N),cart(cart(real,P),M)),i(s(fun(cart(cart(real,N),M),fun(cart(cart(real,P),N),cart(cart(real,P),M))),matrixu_mul),s(cart(cart(real,N),M),A5))),s(cart(cart(real,P),N),B0))))) ).

fof(aVSUMu_DELETEu_CASES,axiom,
    ! [A,Q107975,X,F0,S0] :
      ( s(cart(real,Q107975),i(s(fun(cart(real,Q107975),cart(real,Q107975)),i(s(fun(cart(real,Q107975),fun(cart(real,Q107975),cart(real,Q107975))),i(s(fun(bool,fun(cart(real,Q107975),fun(cart(real,Q107975),cart(real,Q107975)))),cond),s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))),s(cart(real,Q107975),i(s(fun(cart(real,Q107975),cart(real,Q107975)),i(s(fun(cart(real,Q107975),fun(cart(real,Q107975),cart(real,Q107975))),vectoru_sub),s(cart(real,Q107975),i(s(fun(fun(A,cart(real,Q107975)),cart(real,Q107975)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107975)),cart(real,Q107975))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107975)),F0))))),s(cart(real,Q107975),i(s(fun(A,cart(real,Q107975)),F0),s(A,X))))))),s(cart(real,Q107975),i(s(fun(fun(A,cart(real,Q107975)),cart(real,Q107975)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107975)),cart(real,Q107975))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107975)),F0))))) = s(cart(real,Q107975),i(s(fun(fun(A,cart(real,Q107975)),cart(real,Q107975)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107975)),cart(real,Q107975))),vsum),s(fun(A,bool),i(s(fun(A,fun(A,bool)),i(s(fun(fun(A,bool),fun(A,fun(A,bool))),delete),s(fun(A,bool),S0))),s(A,X))))),s(fun(A,cart(real,Q107975)),F0)))
     <= p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) ) ).

fof(aVSUMu_PARTIALu_SUC,axiom,
    ! [N,U_1] :
      ( ! [F0,G0,K0] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),F0),s(num,K0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_1),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0)))
     => ! [U_0] :
          ( ! [F0,G0,M0,N0] : s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_0),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),i(s(fun(bool,fun(cart(real,N),fun(cart(real,N),cart(real,N)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,M0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,M0))))))))),s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_1),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
         <= ! [F0,G0,K0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_0),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,K0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0))))))) ) ) ).

fof(aVECTORu_ADDu_ACu_conjunct1,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),n))))),s(cart(real,N),p1))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),p1))))) ).

fof(aIMAGEu_DROPu_UNIV,conjecture,
    s(fun(real,bool),univ) = s(fun(real,bool),i(s(fun(fun(cart(real,n10),bool),fun(real,bool)),i(s(fun(fun(cart(real,n10),real),fun(fun(cart(real,n10),bool),fun(real,bool))),image),s(fun(cart(real,n10),real),drop))),s(fun(cart(real,n10),bool),univ))) ).

fof(aMATRIXu_CMULu_LID,axiom,
    ! [M,N,X] : s(cart(cart(real,M),N),i(s(fun(cart(cart(real,M),N),cart(cart(real,M),N)),i(s(fun(real,fun(cart(cart(real,M),N),cart(cart(real,M),N))),r_r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(cart(real,M),N),X))) = s(cart(cart(real,M),N),X) ).

fof(abasis,axiom,
    ! [Q109978,U_0] :
      ( ! [K0,I0] :
        ? [V] :
          ( s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),i(s(fun(bool,fun(real,fun(real,real))),cond),s(bool,V))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,K0))),s(num,I0)))
          & ( s(num,I0) = s(num,K0)
          <=> p(s(bool,V)) ) )
     => ! [K0] : s(cart(real,Q109978),i(s(fun(num,cart(real,Q109978)),basis),s(num,K0))) = s(cart(real,Q109978),i(s(fun(fun(num,real),cart(real,Q109978)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,K0))))) ) ).

fof(aONORMu_POSu_LE,axiom,
    ! [Q118203,Q118204,F0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(fun(cart(real,Q118203),cart(real,Q118204)),real),onorm),s(fun(cart(real,Q118203),cart(real,Q118204)),F0))))))
     <= p(s(bool,i(s(fun(fun(cart(real,Q118203),cart(real,Q118204)),bool),linear),s(fun(cart(real,Q118203),cart(real,Q118204)),F0)))) ) ).

fof(aDROPu_WLOGu_LE,axiom,
    ( ! [X,Y] : p(s(bool,i(s(fun(cart(real,n10),bool),i(s(fun(cart(real,n10),fun(cart(real,n10),bool)),p0),s(cart(real,n10),X))),s(cart(real,n10),Y))))
   <= ( ! [X,Y] : s(bool,i(s(fun(cart(real,n10),bool),i(s(fun(cart(real,n10),fun(cart(real,n10),bool)),p0),s(cart(real,n10),X))),s(cart(real,n10),Y))) = s(bool,i(s(fun(cart(real,n10),bool),i(s(fun(cart(real,n10),fun(cart(real,n10),bool)),p0),s(cart(real,n10),Y))),s(cart(real,n10),X)))
      & ! [X,Y] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X))))),s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),Y))))))
         => p(s(bool,i(s(fun(cart(real,n10),bool),i(s(fun(cart(real,n10),fun(cart(real,n10),bool)),p0),s(cart(real,n10),X))),s(cart(real,n10),Y)))) ) ) ) ).

fof(aMATRIXu_VECTORu_MULu_SUBu_LDISTRIB,axiom,
    ! [N,M,A5,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),X))))),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),Y))))) = s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),i(s(fun(cart(cart(real,M),N),fun(cart(real,M),cart(real,N))),matrixu_vectoru_mul),s(cart(cart(real,M),N),A5))),s(cart(real,M),i(s(fun(cart(real,M),cart(real,M)),i(s(fun(cart(real,M),fun(cart(real,M),cart(real,M))),vectoru_sub),s(cart(real,M),X))),s(cart(real,M),Y))))) ).

fof(aVECTORu_2u_conjunct0,axiom,
    ! [A] : s(A,i(s(fun(num,A),i(s(fun(cart(A,n20),fun(num,A)),d_),s(cart(A,n20),i(s(fun(list(A),cart(A,n20)),vector),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,x))),s(list(A),i(s(fun(list(A),list(A)),i(s(fun(A,fun(list(A),list(A))),cons),s(A,y))),s(list(A),nil))))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(A,x) ).

fof(aVECTORu_ADDu_ACu_conjunct2,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),p1))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),p1))))) ).

fof(aMATRIXu_CMULu_RZERO,axiom,
    ! [Q115612,Q115613,C0] : s(cart(cart(real,Q115612),Q115613),i(s(fun(num,cart(cart(real,Q115612),Q115613)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(cart(real,Q115612),Q115613),i(s(fun(cart(cart(real,Q115612),Q115613),cart(cart(real,Q115612),Q115613)),i(s(fun(real,fun(cart(cart(real,Q115612),Q115613),cart(cart(real,Q115612),Q115613))),r_r_),s(real,C0))),s(cart(cart(real,Q115612),Q115613),i(s(fun(num,cart(cart(real,Q115612),Q115613)),mat),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aLINEARu_BOUNDEDu_POS,axiom,
    ! [N,M,F0] :
      ( p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0))))
     => ? [B0] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,B0))))
          & ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,M),cart(real,N)),F0),s(cart(real,M),X))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,B0))),s(real,i(s(fun(cart(real,M),real),vectoru_norm),s(cart(real,M),X)))))))) ) ) ).

fof(aADJOINTu_ADJOINT,axiom,
    ! [M,N,F0] :
      ( s(fun(cart(real,M),cart(real,N)),i(s(fun(fun(cart(real,N),cart(real,M)),fun(cart(real,M),cart(real,N))),adjoint),s(fun(cart(real,N),cart(real,M)),i(s(fun(fun(cart(real,M),cart(real,N)),fun(cart(real,N),cart(real,M))),adjoint),s(fun(cart(real,M),cart(real,N)),F0))))) = s(fun(cart(real,M),cart(real,N)),F0)
     <= p(s(bool,i(s(fun(fun(cart(real,M),cart(real,N)),bool),linear),s(fun(cart(real,M),cart(real,N)),F0)))) ) ).

fof(aNORMu_LEu_SQUARE,axiom,
    ! [N,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0))))
    <=> ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,a0)))) ) ) ).

fof(amatrixu_neg,axiom,
    ! [N,M,U_1] :
      ( ! [U_0] :
          ( ! [A5,I0] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),U_1),s(cart(cart(real,N),M),A5))),s(num,I0))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),U_0),s(cart(cart(real,N),M),A5))),s(num,I0)))
         => ! [A5] : s(cart(cart(real,N),M),i(s(fun(cart(cart(real,N),M),cart(cart(real,N),M)),matrixu_neg),s(cart(cart(real,N),M),A5))) = s(cart(cart(real,N),M),i(s(fun(fun(num,cart(real,N)),cart(cart(real,N),M)),lambda),s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),U_0),s(cart(cart(real,N),M),A5))))) )
     <= ! [A5,I0,J0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),i(s(fun(cart(cart(real,N),M),fun(num,fun(num,real))),U_1),s(cart(cart(real,N),M),A5))),s(num,I0))),s(num,J0))) = s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(cart(real,N),M),fun(num,cart(real,N))),d_),s(cart(cart(real,N),M),A5))),s(num,I0))))),s(num,J0))))) ) ).

fof(aVECTORu_SUBu_RADD,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))))) ).

fof(aDROPu_EQu_0,axiom,
    ! [X] :
      ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,n10),real),drop),s(cart(real,n10),X)))
    <=> s(cart(real,n10),X) = s(cart(real,n10),i(s(fun(num,cart(real,n10)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aFORALLu_LIFTu_FUN,axiom,
    ! [A,P0] :
      ( ! [F0] : p(s(bool,i(s(fun(fun(A,cart(real,n10)),bool),P0),s(fun(A,cart(real,n10)),i(s(fun(fun(A,real),fun(A,cart(real,n10))),i(s(fun(fun(real,cart(real,n10)),fun(fun(A,real),fun(A,cart(real,n10)))),o),s(fun(real,cart(real,n10)),lift))),s(fun(A,real),F0))))))
    <=> ! [F0] : p(s(bool,i(s(fun(fun(A,cart(real,n10)),bool),P0),s(fun(A,cart(real,n10)),F0)))) ) ).

fof(aEXISTSu_LIFTu_IMAGE,axiom,
    ! [P0] :
      ( ? [S0] : p(s(bool,i(s(fun(fun(cart(real,n10),bool),bool),P0),s(fun(cart(real,n10),bool),S0))))
    <=> ? [S0] : p(s(bool,i(s(fun(fun(cart(real,n10),bool),bool),P0),s(fun(cart(real,n10),bool),i(s(fun(fun(real,bool),fun(cart(real,n10),bool)),i(s(fun(fun(real,cart(real,n10)),fun(fun(real,bool),fun(cart(real,n10),bool))),image),s(fun(real,cart(real,n10)),lift))),s(fun(real,bool),S0)))))) ) ).

fof(aVECTORu_CHOOSEu_DIST,axiom,
    ! [N,X,E0] :
      ( ? [Y] : s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),X))),s(cart(real,N),Y))))) = s(real,E0)
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0)))) ) ).

fof(aFORALLu_DROPu_IMAGE,axiom,
    ! [P0] :
      ( ! [S0] : p(s(bool,i(s(fun(fun(real,bool),bool),P0),s(fun(real,bool),i(s(fun(fun(cart(real,n10),bool),fun(real,bool)),i(s(fun(fun(cart(real,n10),real),fun(fun(cart(real,n10),bool),fun(real,bool))),image),s(fun(cart(real,n10),real),drop))),s(fun(cart(real,n10),bool),S0))))))
    <=> ! [S0] : p(s(bool,i(s(fun(fun(real,bool),bool),P0),s(fun(real,bool),S0)))) ) ).

fof(aVSUMu_SING,axiom,
    ! [Q106605,Q106610,F0,X] : s(cart(real,Q106605),i(s(fun(fun(Q106610,cart(real,Q106605)),cart(real,Q106605)),i(s(fun(fun(Q106610,bool),fun(fun(Q106610,cart(real,Q106605)),cart(real,Q106605))),vsum),s(fun(Q106610,bool),i(s(fun(fun(Q106610,bool),fun(Q106610,bool)),i(s(fun(Q106610,fun(fun(Q106610,bool),fun(Q106610,bool))),insert),s(Q106610,X))),s(fun(Q106610,bool),empty))))),s(fun(Q106610,cart(real,Q106605)),F0))) = s(cart(real,Q106605),i(s(fun(Q106610,cart(real,Q106605)),F0),s(Q106610,X))) ).

fof(aNORMu_CAUCHYu_SCHWARZu_DIV,axiom,
    ! [N,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y))))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) ).

fof(aVSUMu_SUBu_NUMSEG,axiom,
    ! [Q107324,U_0] :
      ( ! [F0,G0,I0] : s(cart(real,Q107324),i(s(fun(cart(real,Q107324),cart(real,Q107324)),i(s(fun(cart(real,Q107324),fun(cart(real,Q107324),cart(real,Q107324))),vectoru_sub),s(cart(real,Q107324),i(s(fun(num,cart(real,Q107324)),F0),s(num,I0))))),s(cart(real,Q107324),i(s(fun(num,cart(real,Q107324)),G0),s(num,I0))))) = s(cart(real,Q107324),i(s(fun(num,cart(real,Q107324)),i(s(fun(fun(num,cart(real,Q107324)),fun(num,cart(real,Q107324))),i(s(fun(fun(num,cart(real,Q107324)),fun(fun(num,cart(real,Q107324)),fun(num,cart(real,Q107324)))),U_0),s(fun(num,cart(real,Q107324)),F0))),s(fun(num,cart(real,Q107324)),G0))),s(num,I0)))
     => ! [F0,G0,M0,N0] : s(cart(real,Q107324),i(s(fun(fun(num,cart(real,Q107324)),cart(real,Q107324)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107324)),cart(real,Q107324))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107324)),i(s(fun(fun(num,cart(real,Q107324)),fun(num,cart(real,Q107324))),i(s(fun(fun(num,cart(real,Q107324)),fun(fun(num,cart(real,Q107324)),fun(num,cart(real,Q107324)))),U_0),s(fun(num,cart(real,Q107324)),F0))),s(fun(num,cart(real,Q107324)),G0))))) = s(cart(real,Q107324),i(s(fun(cart(real,Q107324),cart(real,Q107324)),i(s(fun(cart(real,Q107324),fun(cart(real,Q107324),cart(real,Q107324))),vectoru_sub),s(cart(real,Q107324),i(s(fun(fun(num,cart(real,Q107324)),cart(real,Q107324)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107324)),cart(real,Q107324))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107324)),F0))))),s(cart(real,Q107324),i(s(fun(fun(num,cart(real,Q107324)),cart(real,Q107324)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107324)),cart(real,Q107324))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107324)),G0))))) ) ).

fof(aFORALLu_DOTu_EQu_0u_conjunct1,axiom,
    ! [Q100586,X] :
      ( ! [Y] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q100586),real),i(s(fun(cart(real,Q100586),fun(cart(real,Q100586),real)),dot),s(cart(real,Q100586),X))),s(cart(real,Q100586),Y)))
    <=> s(cart(real,Q100586),i(s(fun(num,cart(real,Q100586)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100586),X) ) ).

fof(aSQRTu_DIV,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y)))) )
     => s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,X))),s(real,Y))))) ) ).

fof(aVSUMu_VSUMu_PRODUCT,axiom,
    ! [A,B,Q107444,U_2] :
      ( ! [X,F0] :
          ( p(s(bool,i(s(fun(fun(prod(A,B),cart(real,Q107444)),bool),i(s(fun(fun(A,fun(B,cart(real,Q107444))),fun(fun(prod(A,B),cart(real,Q107444)),bool)),U_2),s(fun(A,fun(B,cart(real,Q107444))),X))),s(fun(prod(A,B),cart(real,Q107444)),F0))))
        <=> ! [I0,J0] : p(s(bool,i(s(fun(cart(real,Q107444),bool),i(s(fun(cart(real,Q107444),fun(cart(real,Q107444),bool)),geq),s(cart(real,Q107444),i(s(fun(prod(A,B),cart(real,Q107444)),F0),s(prod(A,B),i(s(fun(B,prod(A,B)),i(s(fun(A,fun(B,prod(A,B))),c_),s(A,I0))),s(B,J0))))))),s(cart(real,Q107444),i(s(fun(B,cart(real,Q107444)),i(s(fun(A,fun(B,cart(real,Q107444))),X),s(A,I0))),s(B,J0)))))) )
     => ! [U_1] :
          ( ! [S0,T0,GENR_PVARR_283] :
              ( p(s(bool,i(s(fun(prod(A,B),bool),i(s(fun(fun(A,fun(B,bool)),fun(prod(A,B),bool)),i(s(fun(fun(A,bool),fun(fun(A,fun(B,bool)),fun(prod(A,B),bool))),U_1),s(fun(A,bool),S0))),s(fun(A,fun(B,bool)),T0))),s(prod(A,B),GENR_PVARR_283))))
            <=> ? [I0,J0,V] :
                  ( ( p(s(bool,V))
                  <=> ( p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,J0))),s(fun(B,bool),i(s(fun(A,fun(B,bool)),T0),s(A,I0))))))
                      & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,I0))),s(fun(A,bool),S0)))) ) )
                  & p(s(bool,i(s(fun(prod(A,B),bool),i(s(fun(bool,fun(prod(A,B),bool)),i(s(fun(prod(A,B),fun(bool,fun(prod(A,B),bool))),setspec),s(prod(A,B),GENR_PVARR_283))),s(bool,V))),s(prod(A,B),i(s(fun(B,prod(A,B)),i(s(fun(A,fun(B,prod(A,B))),c_),s(A,I0))),s(B,J0)))))) ) )
         => ! [U_0] :
              ( ! [S0,T0,X] :
                  ( s(cart(real,Q107444),i(s(fun(fun(A,cart(real,Q107444)),cart(real,Q107444)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107444)),cart(real,Q107444))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107444)),i(s(fun(fun(A,fun(B,cart(real,Q107444))),fun(A,cart(real,Q107444))),i(s(fun(fun(A,fun(B,bool)),fun(fun(A,fun(B,cart(real,Q107444))),fun(A,cart(real,Q107444)))),U_0),s(fun(A,fun(B,bool)),T0))),s(fun(A,fun(B,cart(real,Q107444))),X))))) = s(cart(real,Q107444),i(s(fun(fun(prod(A,B),cart(real,Q107444)),cart(real,Q107444)),i(s(fun(fun(prod(A,B),bool),fun(fun(prod(A,B),cart(real,Q107444)),cart(real,Q107444))),vsum),s(fun(prod(A,B),bool),i(s(fun(fun(prod(A,B),bool),fun(prod(A,B),bool)),gspec),s(fun(prod(A,B),bool),i(s(fun(fun(A,fun(B,bool)),fun(prod(A,B),bool)),i(s(fun(fun(A,bool),fun(fun(A,fun(B,bool)),fun(prod(A,B),bool))),U_1),s(fun(A,bool),S0))),s(fun(A,fun(B,bool)),T0))))))),s(fun(prod(A,B),cart(real,Q107444)),i(s(fun(fun(fun(prod(A,B),cart(real,Q107444)),bool),fun(prod(A,B),cart(real,Q107444))),gabs),s(fun(fun(prod(A,B),cart(real,Q107444)),bool),i(s(fun(fun(A,fun(B,cart(real,Q107444))),fun(fun(prod(A,B),cart(real,Q107444)),bool)),U_2),s(fun(A,fun(B,cart(real,Q107444))),X)))))))
                 <= ( ! [I0] :
                        ( p(s(bool,i(s(fun(fun(B,bool),bool),finite),s(fun(B,bool),i(s(fun(A,fun(B,bool)),T0),s(A,I0))))))
                       <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,I0))),s(fun(A,bool),S0)))) )
                    & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) ) )
             <= ! [T0,X,I0] : s(cart(real,Q107444),i(s(fun(fun(B,cart(real,Q107444)),cart(real,Q107444)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,Q107444)),cart(real,Q107444))),vsum),s(fun(B,bool),i(s(fun(A,fun(B,bool)),T0),s(A,I0))))),s(fun(B,cart(real,Q107444)),i(s(fun(A,fun(B,cart(real,Q107444))),X),s(A,I0))))) = s(cart(real,Q107444),i(s(fun(A,cart(real,Q107444)),i(s(fun(fun(A,fun(B,cart(real,Q107444))),fun(A,cart(real,Q107444))),i(s(fun(fun(A,fun(B,bool)),fun(fun(A,fun(B,cart(real,Q107444))),fun(A,cart(real,Q107444)))),U_0),s(fun(A,fun(B,bool)),T0))),s(fun(A,fun(B,cart(real,Q107444))),X))),s(A,I0))) ) ) ) ).

