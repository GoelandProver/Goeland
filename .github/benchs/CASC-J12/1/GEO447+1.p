include('Axioms/GEO010+0.ax').
fof(aNORMu_TRIANGLE,axiom,
    ! [Q102822,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q102822),real),vectoru_norm),s(cart(real,Q102822),i(s(fun(cart(real,Q102822),cart(real,Q102822)),i(s(fun(cart(real,Q102822),fun(cart(real,Q102822),cart(real,Q102822))),vectoru_add),s(cart(real,Q102822),X))),s(cart(real,Q102822),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q102822),real),vectoru_norm),s(cart(real,Q102822),X))))),s(real,i(s(fun(cart(real,Q102822),real),vectoru_norm),s(cart(real,Q102822),Y)))))))) ).

fof(aDOTu_LSUB,axiom,
    ! [Q100306,X,Y,Z0] : s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),i(s(fun(cart(real,Q100306),cart(real,Q100306)),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),cart(real,Q100306))),vectoru_sub),s(cart(real,Q100306),X))),s(cart(real,Q100306),Y))))),s(cart(real,Q100306),Z0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),X))),s(cart(real,Q100306),Z0))))),s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),Y))),s(cart(real,Q100306),Z0))))) ).

fof(aVSUMu_CLAUSESu_conjunct1,axiom,
    ! [Q105536,Q105541,X,F0,S0] :
      ( s(cart(real,Q105541),i(s(fun(cart(real,Q105541),cart(real,Q105541)),i(s(fun(cart(real,Q105541),fun(cart(real,Q105541),cart(real,Q105541))),i(s(fun(bool,fun(cart(real,Q105541),fun(cart(real,Q105541),cart(real,Q105541)))),cond),s(bool,i(s(fun(fun(Q105536,bool),bool),i(s(fun(Q105536,fun(fun(Q105536,bool),bool)),in),s(Q105536,X))),s(fun(Q105536,bool),S0))))),s(cart(real,Q105541),i(s(fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541)),i(s(fun(fun(Q105536,bool),fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541))),vsum),s(fun(Q105536,bool),S0))),s(fun(Q105536,cart(real,Q105541)),F0))))),s(cart(real,Q105541),i(s(fun(cart(real,Q105541),cart(real,Q105541)),i(s(fun(cart(real,Q105541),fun(cart(real,Q105541),cart(real,Q105541))),vectoru_add),s(cart(real,Q105541),i(s(fun(Q105536,cart(real,Q105541)),F0),s(Q105536,X))))),s(cart(real,Q105541),i(s(fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541)),i(s(fun(fun(Q105536,bool),fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541))),vsum),s(fun(Q105536,bool),S0))),s(fun(Q105536,cart(real,Q105541)),F0))))))) = s(cart(real,Q105541),i(s(fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541)),i(s(fun(fun(Q105536,bool),fun(fun(Q105536,cart(real,Q105541)),cart(real,Q105541))),vsum),s(fun(Q105536,bool),i(s(fun(fun(Q105536,bool),fun(Q105536,bool)),i(s(fun(Q105536,fun(fun(Q105536,bool),fun(Q105536,bool))),insert),s(Q105536,X))),s(fun(Q105536,bool),S0))))),s(fun(Q105536,cart(real,Q105541)),F0)))
     <= p(s(bool,i(s(fun(fun(Q105536,bool),bool),finite),s(fun(Q105536,bool),S0)))) ) ).

fof(aVSUMu_IMAGEu_NONZERO,axiom,
    ! [N,A,B,D0,I0,S0] :
      ( s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),i(s(fun(fun(A,B),fun(A,cart(real,N))),i(s(fun(fun(B,cart(real,N)),fun(fun(A,B),fun(A,cart(real,N)))),o),s(fun(B,cart(real,N)),D0))),s(fun(A,B),I0))))) = s(cart(real,N),i(s(fun(fun(B,cart(real,N)),cart(real,N)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,N)),cart(real,N))),vsum),s(fun(B,bool),i(s(fun(fun(A,bool),fun(B,bool)),i(s(fun(fun(A,B),fun(fun(A,bool),fun(B,bool))),image),s(fun(A,B),I0))),s(fun(A,bool),S0))))),s(fun(B,cart(real,N)),D0)))
     <= ( ! [X,Y] :
            ( ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,Y))),s(fun(A,bool),S0))))
              & s(B,i(s(fun(A,B),I0),s(A,X))) = s(B,i(s(fun(A,B),I0),s(A,Y)))
              & s(A,X) != s(A,Y)
              & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
           => s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),i(s(fun(B,cart(real,N)),D0),s(B,i(s(fun(A,B),I0),s(A,X))))) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) ) ) ).

fof(aFORALLu_DOTu_EQu_0u_conjunct1,axiom,
    ! [Q100586,X] :
      ( s(cart(real,Q100586),i(s(fun(num,cart(real,Q100586)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100586),X)
    <=> ! [Y] : s(real,i(s(fun(cart(real,Q100586),real),i(s(fun(cart(real,Q100586),fun(cart(real,Q100586),real)),dot),s(cart(real,Q100586),X))),s(cart(real,Q100586),Y))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVSUMu_SUPERSET,axiom,
    ! [A,N,F0,U,V] :
      ( ( ! [X] :
            ( s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
           <= ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),V))))
              & ~ p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),U)))) ) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(fun(A,bool),fun(fun(A,bool),bool)),subset),s(fun(A,bool),U))),s(fun(A,bool),V)))) )
     => s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),V))),s(fun(A,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),U))),s(fun(A,cart(real,N)),F0))) ) ).

fof(aNORMu_LEu_COMPONENTWISE,axiom,
    ! [N,X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y))))))
     <= ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))))),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0)))))))) ) ) ).

fof(aDOTu_POSu_LE,axiom,
    ! [Q100487,X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q100487),real),i(s(fun(cart(real,Q100487),fun(cart(real,Q100487),real)),dot),s(cart(real,Q100487),X))),s(cart(real,Q100487),X)))))) ).

fof(aVECTORu_MULu_LCANCEL,axiom,
    ! [Q102424,A5,X,Y] :
      ( ( s(real,A5) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
        | s(cart(real,Q102424),X) = s(cart(real,Q102424),Y) )
    <=> s(cart(real,Q102424),i(s(fun(cart(real,Q102424),cart(real,Q102424)),i(s(fun(real,fun(cart(real,Q102424),cart(real,Q102424))),r_),s(real,A5))),s(cart(real,Q102424),Y))) = s(cart(real,Q102424),i(s(fun(cart(real,Q102424),cart(real,Q102424)),i(s(fun(real,fun(cart(real,Q102424),cart(real,Q102424))),r_),s(real,A5))),s(cart(real,Q102424),X))) ) ).

fof(aVECTORu_MULu_RZERO,axiom,
    ! [Q99948] : s(cart(real,Q99948),i(s(fun(num,cart(real,Q99948)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q99948),i(s(fun(cart(real,Q99948),cart(real,Q99948)),i(s(fun(real,fun(cart(real,Q99948),cart(real,Q99948))),r_),s(real,c))),s(cart(real,Q99948),i(s(fun(num,cart(real,Q99948)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aVSUMu_DIFFSu_ALT,axiom,
    ! [Q107910,U_0] :
      ( ! [M0,N0] : s(cart(real,Q107910),i(s(fun(fun(num,cart(real,Q107910)),cart(real,Q107910)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107910)),cart(real,Q107910))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107910)),U_0))) = s(cart(real,Q107910),i(s(fun(cart(real,Q107910),cart(real,Q107910)),i(s(fun(cart(real,Q107910),fun(cart(real,Q107910),cart(real,Q107910))),i(s(fun(bool,fun(cart(real,Q107910),fun(cart(real,Q107910),cart(real,Q107910)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,Q107910),i(s(fun(cart(real,Q107910),cart(real,Q107910)),i(s(fun(cart(real,Q107910),fun(cart(real,Q107910),cart(real,Q107910))),vectoru_sub),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),f),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),f),s(num,M0))))))),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
     <= ! [K0] : s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),U_0),s(num,K0))) = s(cart(real,Q107910),i(s(fun(cart(real,Q107910),cart(real,Q107910)),i(s(fun(cart(real,Q107910),fun(cart(real,Q107910),cart(real,Q107910))),vectoru_sub),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),f),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q107910),i(s(fun(num,cart(real,Q107910)),f),s(num,K0))))) ) ).

fof(aVECTORu_NEGu_0,axiom,
    ! [Q100059] : s(cart(real,Q100059),i(s(fun(cart(real,Q100059),cart(real,Q100059)),vectoru_neg),s(cart(real,Q100059),i(s(fun(num,cart(real,Q100059)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q100059),i(s(fun(num,cart(real,Q100059)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct4,axiom,
    ! [Q111055,A5,X,Y] :
      ( ( p(s(bool,i(s(fun(cart(real,Q111055),bool),i(s(fun(cart(real,Q111055),fun(cart(real,Q111055),bool)),orthogonal),s(cart(real,Q111055),A5))),s(cart(real,Q111055),X))))
        & p(s(bool,i(s(fun(cart(real,Q111055),bool),i(s(fun(cart(real,Q111055),fun(cart(real,Q111055),bool)),orthogonal),s(cart(real,Q111055),A5))),s(cart(real,Q111055),Y)))) )
     => p(s(bool,i(s(fun(cart(real,Q111055),bool),i(s(fun(cart(real,Q111055),fun(cart(real,Q111055),bool)),orthogonal),s(cart(real,Q111055),A5))),s(cart(real,Q111055),i(s(fun(cart(real,Q111055),cart(real,Q111055)),i(s(fun(cart(real,Q111055),fun(cart(real,Q111055),cart(real,Q111055))),vectoru_sub),s(cart(real,Q111055),X))),s(cart(real,Q111055),Y)))))) ) ).

fof(aVECTORu_MULu_LZERO,axiom,
    ! [Q99762,X] : s(cart(real,Q99762),i(s(fun(cart(real,Q99762),cart(real,Q99762)),i(s(fun(real,fun(cart(real,Q99762),cart(real,Q99762))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q99762),X))) = s(cart(real,Q99762),i(s(fun(num,cart(real,Q99762)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aNORMu_EQu_SQUARE,axiom,
    ! [N,X] :
      ( ( s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X)))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,a0)))) )
    <=> s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))) = s(real,a0) ) ).

fof(aNORMu_NEG,axiom,
    ! [Q102180,X] : s(real,i(s(fun(cart(real,Q102180),real),vectoru_norm),s(cart(real,Q102180),X))) = s(real,i(s(fun(cart(real,Q102180),real),vectoru_norm),s(cart(real,Q102180),i(s(fun(cart(real,Q102180),cart(real,Q102180)),vectoru_neg),s(cart(real,Q102180),X))))) ).

fof(aDOTu_LMUL,axiom,
    ! [Q100362,C0,X,Y] : s(real,i(s(fun(cart(real,Q100362),real),i(s(fun(cart(real,Q100362),fun(cart(real,Q100362),real)),dot),s(cart(real,Q100362),i(s(fun(cart(real,Q100362),cart(real,Q100362)),i(s(fun(real,fun(cart(real,Q100362),cart(real,Q100362))),r_),s(real,C0))),s(cart(real,Q100362),X))))),s(cart(real,Q100362),Y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(cart(real,Q100362),real),i(s(fun(cart(real,Q100362),fun(cart(real,Q100362),real)),dot),s(cart(real,Q100362),X))),s(cart(real,Q100362),Y))))) ).

fof(aNORMu_BASISu_1,axiom,
    ! [Q110060] : s(real,i(s(fun(cart(real,Q110060),real),vectoru_norm),s(cart(real,Q110060),i(s(fun(num,cart(real,Q110060)),basis),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aVECTORu_ADDu_COMPONENT,axiom,
    ! [N,X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) ).

fof(aNORMu_TRIANGLEu_LT,axiom,
    ! [Q102930,X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,Q102930),real),vectoru_norm),s(cart(real,Q102930),i(s(fun(cart(real,Q102930),cart(real,Q102930)),i(s(fun(cart(real,Q102930),fun(cart(real,Q102930),cart(real,Q102930))),vectoru_add),s(cart(real,Q102930),X))),s(cart(real,Q102930),Y))))))),s(real,e0))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q102930),real),vectoru_norm),s(cart(real,Q102930),X))))),s(real,i(s(fun(cart(real,Q102930),real),vectoru_norm),s(cart(real,Q102930),Y))))))),s(real,e0)))) ) ).

fof(aSQRTu_MONOu_LEu_EQ,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y)))) )
     => s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,Y))) ) ).

fof(aSQRTu_POSu_LE,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X))))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aNORMu_BOUNDu_COMPONENTu_LE,axiom,
    ! [N,X,E0] :
      ( ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))))),s(real,E0)))) )
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,E0)))) ) ).

fof(aVSUMu_CONSTu_NUMSEG,axiom,
    ! [Q108721,U_0] :
      ( ! [C0,N0] : s(cart(real,Q108721),C0) = s(cart(real,Q108721),i(s(fun(num,cart(real,Q108721)),i(s(fun(cart(real,Q108721),fun(num,cart(real,Q108721))),U_0),s(cart(real,Q108721),C0))),s(num,N0)))
     => ! [C0,M0,N0] : s(cart(real,Q108721),i(s(fun(cart(real,Q108721),cart(real,Q108721)),i(s(fun(real,fun(cart(real,Q108721),cart(real,Q108721))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,M0))))))),s(cart(real,Q108721),C0))) = s(cart(real,Q108721),i(s(fun(fun(num,cart(real,Q108721)),cart(real,Q108721)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108721)),cart(real,Q108721))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q108721)),i(s(fun(cart(real,Q108721),fun(num,cart(real,Q108721))),U_0),s(cart(real,Q108721),C0))))) ) ).

fof(aREALu_ABSu_SUBu_NORM,axiom,
    ! [Q103229] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,Q103229),real),vectoru_norm),s(cart(real,Q103229),x))))),s(real,i(s(fun(cart(real,Q103229),real),vectoru_norm),s(cart(real,Q103229),y))))))))),s(real,i(s(fun(cart(real,Q103229),real),vectoru_norm),s(cart(real,Q103229),i(s(fun(cart(real,Q103229),cart(real,Q103229)),i(s(fun(cart(real,Q103229),fun(cart(real,Q103229),cart(real,Q103229))),vectoru_sub),s(cart(real,Q103229),x))),s(cart(real,Q103229),y)))))))) ).

fof(aVSUMu_CLAUSESu_RIGHT,axiom,
    ! [N,F0,M0,N0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,N0)))) )
     => s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,N)),F0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,N0))))) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),F0))) ) ).

fof(aVSUMu_ADDu_GEN,axiom,
    ! [Q109481,Q109494,U_1] :
      ( ! [F0,G0,X] : s(cart(real,Q109494),i(s(fun(Q109481,cart(real,Q109494)),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,cart(real,Q109494))),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,cart(real,Q109494)))),U_1),s(fun(Q109481,cart(real,Q109494)),F0))),s(fun(Q109481,cart(real,Q109494)),G0))),s(Q109481,X))) = s(cart(real,Q109494),i(s(fun(cart(real,Q109494),cart(real,Q109494)),i(s(fun(cart(real,Q109494),fun(cart(real,Q109494),cart(real,Q109494))),vectoru_add),s(cart(real,Q109494),i(s(fun(Q109481,cart(real,Q109494)),F0),s(Q109481,X))))),s(cart(real,Q109494),i(s(fun(Q109481,cart(real,Q109494)),G0),s(Q109481,X)))))
     => ! [U_0] :
          ( ! [S0,F0,GENR_PVARR_286] :
              ( ? [X,V] :
                  ( ( p(s(bool,V))
                  <=> ( p(s(bool,i(s(fun(fun(Q109481,bool),bool),i(s(fun(Q109481,fun(fun(Q109481,bool),bool)),in),s(Q109481,X))),s(fun(Q109481,bool),S0))))
                      & s(cart(real,Q109494),i(s(fun(num,cart(real,Q109494)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) != s(cart(real,Q109494),i(s(fun(Q109481,cart(real,Q109494)),F0),s(Q109481,X))) ) )
                  & p(s(bool,i(s(fun(Q109481,bool),i(s(fun(bool,fun(Q109481,bool)),i(s(fun(Q109481,fun(bool,fun(Q109481,bool))),setspec),s(Q109481,GENR_PVARR_286))),s(bool,V))),s(Q109481,X)))) )
            <=> p(s(bool,i(s(fun(Q109481,bool),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool))),U_0),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),F0))),s(Q109481,GENR_PVARR_286)))) )
         => ! [F0,G0,S0] :
              ( s(cart(real,Q109494),i(s(fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494))),vsum),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,cart(real,Q109494))),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,cart(real,Q109494)))),U_1),s(fun(Q109481,cart(real,Q109494)),F0))),s(fun(Q109481,cart(real,Q109494)),G0))))) = s(cart(real,Q109494),i(s(fun(cart(real,Q109494),cart(real,Q109494)),i(s(fun(cart(real,Q109494),fun(cart(real,Q109494),cart(real,Q109494))),vectoru_add),s(cart(real,Q109494),i(s(fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494))),vsum),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),F0))))),s(cart(real,Q109494),i(s(fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),cart(real,Q109494))),vsum),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),G0)))))
             <= ( p(s(bool,i(s(fun(fun(Q109481,bool),bool),finite),s(fun(Q109481,bool),i(s(fun(fun(Q109481,bool),fun(Q109481,bool)),gspec),s(fun(Q109481,bool),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool))),U_0),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),F0))))))))
                & p(s(bool,i(s(fun(fun(Q109481,bool),bool),finite),s(fun(Q109481,bool),i(s(fun(fun(Q109481,bool),fun(Q109481,bool)),gspec),s(fun(Q109481,bool),i(s(fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool)),i(s(fun(fun(Q109481,bool),fun(fun(Q109481,cart(real,Q109494)),fun(Q109481,bool))),U_0),s(fun(Q109481,bool),S0))),s(fun(Q109481,cart(real,Q109494)),G0)))))))) ) ) ) ) ).

fof(aBASISu_INJ,axiom,
    ! [N,I0,J0] :
      ( s(num,J0) = s(num,I0)
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))) = s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,J0)))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0)))) ) ) ).

fof(aVECTORu_NEGu_COMPONENT,axiom,
    ! [N,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),X))))),s(num,I0))) = s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) ).

fof(aSUMu_1,axiom,
    s(real,i(s(fun(num,real),f),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(fun(num,real),f))) ).

fof(aNORMu_EQu_0u_IMP,axiom,
    ! [Q102346,X] :
      ( s(real,i(s(fun(cart(real,Q102346),real),vectoru_norm),s(cart(real,Q102346),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
     => s(cart(real,Q102346),i(s(fun(num,cart(real,Q102346)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q102346),X) ) ).

fof(aVSUMu_LMUL,axiom,
    ! [Q105645,Q105652,U_0] :
      ( ! [F0,C0,S0] : s(cart(real,Q105652),i(s(fun(fun(Q105645,cart(real,Q105652)),cart(real,Q105652)),i(s(fun(fun(Q105645,bool),fun(fun(Q105645,cart(real,Q105652)),cart(real,Q105652))),vsum),s(fun(Q105645,bool),S0))),s(fun(Q105645,cart(real,Q105652)),i(s(fun(fun(Q105645,cart(real,Q105652)),fun(Q105645,cart(real,Q105652))),i(s(fun(real,fun(fun(Q105645,cart(real,Q105652)),fun(Q105645,cart(real,Q105652)))),U_0),s(real,C0))),s(fun(Q105645,cart(real,Q105652)),F0))))) = s(cart(real,Q105652),i(s(fun(cart(real,Q105652),cart(real,Q105652)),i(s(fun(real,fun(cart(real,Q105652),cart(real,Q105652))),r_),s(real,C0))),s(cart(real,Q105652),i(s(fun(fun(Q105645,cart(real,Q105652)),cart(real,Q105652)),i(s(fun(fun(Q105645,bool),fun(fun(Q105645,cart(real,Q105652)),cart(real,Q105652))),vsum),s(fun(Q105645,bool),S0))),s(fun(Q105645,cart(real,Q105652)),F0)))))
     <= ! [C0,F0,X] : s(cart(real,Q105652),i(s(fun(Q105645,cart(real,Q105652)),i(s(fun(fun(Q105645,cart(real,Q105652)),fun(Q105645,cart(real,Q105652))),i(s(fun(real,fun(fun(Q105645,cart(real,Q105652)),fun(Q105645,cart(real,Q105652)))),U_0),s(real,C0))),s(fun(Q105645,cart(real,Q105652)),F0))),s(Q105645,X))) = s(cart(real,Q105652),i(s(fun(cart(real,Q105652),cart(real,Q105652)),i(s(fun(real,fun(cart(real,Q105652),cart(real,Q105652))),r_),s(real,C0))),s(cart(real,Q105652),i(s(fun(Q105645,cart(real,Q105652)),F0),s(Q105645,X))))) ) ).

fof(aBASISu_EQu_0,axiom,
    ! [N,I0] :
      ( s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> ~ p(s(bool,i(s(fun(fun(num,bool),bool),i(s(fun(num,fun(fun(num,bool),bool)),in),s(num,I0))),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))))) ) ).

fof(aSQUAREu_BOUNDu_LEMMA,axiom,
    ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,X))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,X)))))))) ).

fof(aDOTu_RADD,axiom,
    ! [Q100273,X,Y,Z0] : s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),i(s(fun(cart(real,Q100273),cart(real,Q100273)),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),cart(real,Q100273))),vectoru_add),s(cart(real,Q100273),Y))),s(cart(real,Q100273),Z0))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),Y))))),s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),Z0))))) ).

fof(aVSUMu_SWAP,axiom,
    ! [Q109341,Q109340,Q109337,U_2] :
      ( ! [F0,J0,I0] : s(cart(real,Q109337),i(s(fun(Q109340,cart(real,Q109337)),i(s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0),s(Q109341,I0))),s(Q109340,J0))) = s(cart(real,Q109337),i(s(fun(Q109341,cart(real,Q109337)),i(s(fun(Q109340,fun(Q109341,cart(real,Q109337))),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,fun(Q109341,cart(real,Q109337)))),U_2),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))),s(Q109340,J0))),s(Q109341,I0)))
     => ! [U_1] :
          ( ! [S0,F0,J0] : s(cart(real,Q109337),i(s(fun(fun(Q109341,cart(real,Q109337)),cart(real,Q109337)),i(s(fun(fun(Q109341,bool),fun(fun(Q109341,cart(real,Q109337)),cart(real,Q109337))),vsum),s(fun(Q109341,bool),S0))),s(fun(Q109341,cart(real,Q109337)),i(s(fun(Q109340,fun(Q109341,cart(real,Q109337))),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,fun(Q109341,cart(real,Q109337)))),U_2),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))),s(Q109340,J0))))) = s(cart(real,Q109337),i(s(fun(Q109340,cart(real,Q109337)),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,cart(real,Q109337))),i(s(fun(fun(Q109341,bool),fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,cart(real,Q109337)))),U_1),s(fun(Q109341,bool),S0))),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))),s(Q109340,J0)))
         => ! [U_0] :
              ( ! [T0,F0,I0] : s(cart(real,Q109337),i(s(fun(Q109341,cart(real,Q109337)),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109341,cart(real,Q109337))),i(s(fun(fun(Q109340,bool),fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109341,cart(real,Q109337)))),U_0),s(fun(Q109340,bool),T0))),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))),s(Q109341,I0))) = s(cart(real,Q109337),i(s(fun(fun(Q109340,cart(real,Q109337)),cart(real,Q109337)),i(s(fun(fun(Q109340,bool),fun(fun(Q109340,cart(real,Q109337)),cart(real,Q109337))),vsum),s(fun(Q109340,bool),T0))),s(fun(Q109340,cart(real,Q109337)),i(s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0),s(Q109341,I0)))))
             => ! [F0,S0,T0] :
                  ( ( p(s(bool,i(s(fun(fun(Q109341,bool),bool),finite),s(fun(Q109341,bool),S0))))
                    & p(s(bool,i(s(fun(fun(Q109340,bool),bool),finite),s(fun(Q109340,bool),T0)))) )
                 => s(cart(real,Q109337),i(s(fun(fun(Q109340,cart(real,Q109337)),cart(real,Q109337)),i(s(fun(fun(Q109340,bool),fun(fun(Q109340,cart(real,Q109337)),cart(real,Q109337))),vsum),s(fun(Q109340,bool),T0))),s(fun(Q109340,cart(real,Q109337)),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,cart(real,Q109337))),i(s(fun(fun(Q109341,bool),fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109340,cart(real,Q109337)))),U_1),s(fun(Q109341,bool),S0))),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))))) = s(cart(real,Q109337),i(s(fun(fun(Q109341,cart(real,Q109337)),cart(real,Q109337)),i(s(fun(fun(Q109341,bool),fun(fun(Q109341,cart(real,Q109337)),cart(real,Q109337))),vsum),s(fun(Q109341,bool),S0))),s(fun(Q109341,cart(real,Q109337)),i(s(fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109341,cart(real,Q109337))),i(s(fun(fun(Q109340,bool),fun(fun(Q109341,fun(Q109340,cart(real,Q109337))),fun(Q109341,cart(real,Q109337)))),U_0),s(fun(Q109340,bool),T0))),s(fun(Q109341,fun(Q109340,cart(real,Q109337))),F0))))) ) ) ) ) ).

fof(aSQRTu_POW2,axiom,
    ! [X] :
      ( s(real,X) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aDOTu_2,axiom,
    s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) = s(real,i(s(fun(cart(real,n20),real),i(s(fun(cart(real,n20),fun(cart(real,n20),real)),dot),s(cart(real,n20),x))),s(cart(real,n20),y))) ).

fof(aCOMPONENTu_LEu_NORM,axiom,
    ! [N,X,I0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X)))))) ) ).

fof(aVSUMu_GROUP,axiom,
    ! [B,A,Q107150,U_1] :
      ( ! [S0,F0,Y,GENR_PVARR_282] :
          ( ? [X,V] :
              ( p(s(bool,i(s(fun(A,bool),i(s(fun(bool,fun(A,bool)),i(s(fun(A,fun(bool,fun(A,bool))),setspec),s(A,GENR_PVARR_282))),s(bool,V))),s(A,X))))
              & ( ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
                  & s(B,Y) = s(B,i(s(fun(A,B),F0),s(A,X))) )
              <=> p(s(bool,V)) ) )
        <=> p(s(bool,i(s(fun(A,bool),i(s(fun(B,fun(A,bool)),i(s(fun(fun(A,B),fun(B,fun(A,bool))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(B,fun(A,bool)))),U_1),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(B,Y))),s(A,GENR_PVARR_282)))) )
     => ! [U_0] :
          ( ! [S0,F0,G0,Y] : s(cart(real,Q107150),i(s(fun(B,cart(real,Q107150)),i(s(fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150))),i(s(fun(fun(A,B),fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150)))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150))))),U_0),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(fun(A,cart(real,Q107150)),G0))),s(B,Y))) = s(cart(real,Q107150),i(s(fun(fun(A,cart(real,Q107150)),cart(real,Q107150)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107150)),cart(real,Q107150))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),gspec),s(fun(A,bool),i(s(fun(B,fun(A,bool)),i(s(fun(fun(A,B),fun(B,fun(A,bool))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(B,fun(A,bool)))),U_1),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(B,Y))))))),s(fun(A,cart(real,Q107150)),G0)))
         => ! [F0,G0,S0,T0] :
              ( ( p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(fun(B,bool),fun(fun(B,bool),bool)),subset),s(fun(B,bool),i(s(fun(fun(A,bool),fun(B,bool)),i(s(fun(fun(A,B),fun(fun(A,bool),fun(B,bool))),image),s(fun(A,B),F0))),s(fun(A,bool),S0))))),s(fun(B,bool),T0))))
                & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) )
             => s(cart(real,Q107150),i(s(fun(fun(B,cart(real,Q107150)),cart(real,Q107150)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,Q107150)),cart(real,Q107150))),vsum),s(fun(B,bool),T0))),s(fun(B,cart(real,Q107150)),i(s(fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150))),i(s(fun(fun(A,B),fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150)))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(fun(A,cart(real,Q107150)),fun(B,cart(real,Q107150))))),U_0),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(fun(A,cart(real,Q107150)),G0))))) = s(cart(real,Q107150),i(s(fun(fun(A,cart(real,Q107150)),cart(real,Q107150)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107150)),cart(real,Q107150))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107150)),G0))) ) ) ) ).

fof(aSUMu_2,axiom,
    ! [T0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,real),T0))) ).

fof(aDOTu_NORMu_NEG,axiom,
    ! [Q104559,X,Y] : s(real,i(s(fun(cart(real,Q104559),real),i(s(fun(cart(real,Q104559),fun(cart(real,Q104559),real)),dot),s(cart(real,Q104559),X))),s(cart(real,Q104559),Y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104559),real),vectoru_norm),s(cart(real,Q104559),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104559),real),vectoru_norm),s(cart(real,Q104559),Y))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104559),real),vectoru_norm),s(cart(real,Q104559),i(s(fun(cart(real,Q104559),cart(real,Q104559)),i(s(fun(cart(real,Q104559),fun(cart(real,Q104559),cart(real,Q104559))),vectoru_sub),s(cart(real,Q104559),X))),s(cart(real,Q104559),Y))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ).

fof(aVSUMu_EQu_NUMSEG,axiom,
    ! [Q107021,F0,G0,M0,N0] :
      ( ! [X] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,X))),s(num,N0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,X)))) )
         => s(cart(real,Q107021),i(s(fun(num,cart(real,Q107021)),G0),s(num,X))) = s(cart(real,Q107021),i(s(fun(num,cart(real,Q107021)),F0),s(num,X))) )
     => s(cart(real,Q107021),i(s(fun(fun(num,cart(real,Q107021)),cart(real,Q107021)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107021)),cart(real,Q107021))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107021)),G0))) = s(cart(real,Q107021),i(s(fun(fun(num,cart(real,Q107021)),cart(real,Q107021)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107021)),cart(real,Q107021))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107021)),F0))) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct6,axiom,
    ! [Q110968,A5,X,C0] :
      ( p(s(bool,i(s(fun(cart(real,Q110968),bool),i(s(fun(cart(real,Q110968),fun(cart(real,Q110968),bool)),orthogonal),s(cart(real,Q110968),i(s(fun(cart(real,Q110968),cart(real,Q110968)),i(s(fun(real,fun(cart(real,Q110968),cart(real,Q110968))),r_),s(real,C0))),s(cart(real,Q110968),X))))),s(cart(real,Q110968),A5))))
     <= p(s(bool,i(s(fun(cart(real,Q110968),bool),i(s(fun(cart(real,Q110968),fun(cart(real,Q110968),bool)),orthogonal),s(cart(real,Q110968),X))),s(cart(real,Q110968),A5)))) ) ).

fof(aMONOIDALu_VECTORu_ADD,axiom,
    ! [N] : p(s(bool,i(s(fun(fun(cart(real,N),fun(cart(real,N),cart(real,N))),bool),monoidal),s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add)))) ).

fof(aVSUMu_RESTRICT,axiom,
    ! [Q106444,Q106450,U_0] :
      ( ! [F0,S0] :
          ( s(cart(real,Q106450),i(s(fun(fun(Q106444,cart(real,Q106450)),cart(real,Q106450)),i(s(fun(fun(Q106444,bool),fun(fun(Q106444,cart(real,Q106450)),cart(real,Q106450))),vsum),s(fun(Q106444,bool),S0))),s(fun(Q106444,cart(real,Q106450)),F0))) = s(cart(real,Q106450),i(s(fun(fun(Q106444,cart(real,Q106450)),cart(real,Q106450)),i(s(fun(fun(Q106444,bool),fun(fun(Q106444,cart(real,Q106450)),cart(real,Q106450))),vsum),s(fun(Q106444,bool),S0))),s(fun(Q106444,cart(real,Q106450)),i(s(fun(fun(Q106444,cart(real,Q106450)),fun(Q106444,cart(real,Q106450))),i(s(fun(fun(Q106444,bool),fun(fun(Q106444,cart(real,Q106450)),fun(Q106444,cart(real,Q106450)))),U_0),s(fun(Q106444,bool),S0))),s(fun(Q106444,cart(real,Q106450)),F0)))))
         <= p(s(bool,i(s(fun(fun(Q106444,bool),bool),finite),s(fun(Q106444,bool),S0)))) )
     <= ! [S0,F0,X] : s(cart(real,Q106450),i(s(fun(cart(real,Q106450),cart(real,Q106450)),i(s(fun(cart(real,Q106450),fun(cart(real,Q106450),cart(real,Q106450))),i(s(fun(bool,fun(cart(real,Q106450),fun(cart(real,Q106450),cart(real,Q106450)))),cond),s(bool,i(s(fun(fun(Q106444,bool),bool),i(s(fun(Q106444,fun(fun(Q106444,bool),bool)),in),s(Q106444,X))),s(fun(Q106444,bool),S0))))),s(cart(real,Q106450),i(s(fun(Q106444,cart(real,Q106450)),F0),s(Q106444,X))))),s(cart(real,Q106450),i(s(fun(num,cart(real,Q106450)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q106450),i(s(fun(Q106444,cart(real,Q106450)),i(s(fun(fun(Q106444,cart(real,Q106450)),fun(Q106444,cart(real,Q106450))),i(s(fun(fun(Q106444,bool),fun(fun(Q106444,cart(real,Q106450)),fun(Q106444,cart(real,Q106450)))),U_0),s(fun(Q106444,bool),S0))),s(fun(Q106444,cart(real,Q106450)),F0))),s(Q106444,X))) ) ).

fof(aDOTu_LNEG,axiom,
    ! [Q100419,X,Y] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(cart(real,Q100419),real),i(s(fun(cart(real,Q100419),fun(cart(real,Q100419),real)),dot),s(cart(real,Q100419),X))),s(cart(real,Q100419),Y))))) = s(real,i(s(fun(cart(real,Q100419),real),i(s(fun(cart(real,Q100419),fun(cart(real,Q100419),real)),dot),s(cart(real,Q100419),i(s(fun(cart(real,Q100419),cart(real,Q100419)),vectoru_neg),s(cart(real,Q100419),X))))),s(cart(real,Q100419),Y))) ).

fof(aNORMu_EQu_0,axiom,
    ! [Q102285,X] :
      ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102285),real),vectoru_norm),s(cart(real,Q102285),X)))
    <=> s(cart(real,Q102285),X) = s(cart(real,Q102285),i(s(fun(num,cart(real,Q102285)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aORTHOGONALu_SYM,axiom,
    ! [Q110681,X,Y] : s(bool,i(s(fun(cart(real,Q110681),bool),i(s(fun(cart(real,Q110681),fun(cart(real,Q110681),bool)),orthogonal),s(cart(real,Q110681),Y))),s(cart(real,Q110681),X))) = s(bool,i(s(fun(cart(real,Q110681),bool),i(s(fun(cart(real,Q110681),fun(cart(real,Q110681),bool)),orthogonal),s(cart(real,Q110681),X))),s(cart(real,Q110681),Y))) ).

fof(aVSUMu_UNIONu_NONZERO,axiom,
    ! [Q107636,Q107660,F0,S0,T0] :
      ( s(cart(real,Q107660),i(s(fun(cart(real,Q107660),cart(real,Q107660)),i(s(fun(cart(real,Q107660),fun(cart(real,Q107660),cart(real,Q107660))),vectoru_add),s(cart(real,Q107660),i(s(fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660))),vsum),s(fun(Q107636,bool),S0))),s(fun(Q107636,cart(real,Q107660)),F0))))),s(cart(real,Q107660),i(s(fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660))),vsum),s(fun(Q107636,bool),T0))),s(fun(Q107636,cart(real,Q107660)),F0))))) = s(cart(real,Q107660),i(s(fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,cart(real,Q107660)),cart(real,Q107660))),vsum),s(fun(Q107636,bool),i(s(fun(fun(Q107636,bool),fun(Q107636,bool)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,bool),fun(Q107636,bool))),union),s(fun(Q107636,bool),S0))),s(fun(Q107636,bool),T0))))),s(fun(Q107636,cart(real,Q107660)),F0)))
     <= ( p(s(bool,i(s(fun(fun(Q107636,bool),bool),finite),s(fun(Q107636,bool),S0))))
        & p(s(bool,i(s(fun(fun(Q107636,bool),bool),finite),s(fun(Q107636,bool),T0))))
        & ! [X] :
            ( s(cart(real,Q107660),i(s(fun(num,cart(real,Q107660)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q107660),i(s(fun(Q107636,cart(real,Q107660)),F0),s(Q107636,X)))
           <= p(s(bool,i(s(fun(fun(Q107636,bool),bool),i(s(fun(Q107636,fun(fun(Q107636,bool),bool)),in),s(Q107636,X))),s(fun(Q107636,bool),i(s(fun(fun(Q107636,bool),fun(Q107636,bool)),i(s(fun(fun(Q107636,bool),fun(fun(Q107636,bool),fun(Q107636,bool))),inter),s(fun(Q107636,bool),S0))),s(fun(Q107636,bool),T0)))))) ) ) ) ).

fof(aVSUMu_NEG,axiom,
    ! [Q106132,Q106140,U_0] :
      ( ! [F0,S0] : s(cart(real,Q106140),i(s(fun(fun(Q106132,cart(real,Q106140)),cart(real,Q106140)),i(s(fun(fun(Q106132,bool),fun(fun(Q106132,cart(real,Q106140)),cart(real,Q106140))),vsum),s(fun(Q106132,bool),S0))),s(fun(Q106132,cart(real,Q106140)),i(s(fun(fun(Q106132,cart(real,Q106140)),fun(Q106132,cart(real,Q106140))),U_0),s(fun(Q106132,cart(real,Q106140)),F0))))) = s(cart(real,Q106140),i(s(fun(cart(real,Q106140),cart(real,Q106140)),vectoru_neg),s(cart(real,Q106140),i(s(fun(fun(Q106132,cart(real,Q106140)),cart(real,Q106140)),i(s(fun(fun(Q106132,bool),fun(fun(Q106132,cart(real,Q106140)),cart(real,Q106140))),vsum),s(fun(Q106132,bool),S0))),s(fun(Q106132,cart(real,Q106140)),F0)))))
     <= ! [F0,X] : s(cart(real,Q106140),i(s(fun(cart(real,Q106140),cart(real,Q106140)),vectoru_neg),s(cart(real,Q106140),i(s(fun(Q106132,cart(real,Q106140)),F0),s(Q106132,X))))) = s(cart(real,Q106140),i(s(fun(Q106132,cart(real,Q106140)),i(s(fun(fun(Q106132,cart(real,Q106140)),fun(Q106132,cart(real,Q106140))),U_0),s(fun(Q106132,cart(real,Q106140)),F0))),s(Q106132,X))) ) ).

fof(aVSUMu_BIJECTION,axiom,
    ! [N,A,F0,P0,S0] :
      ( s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),i(s(fun(fun(A,A),fun(A,cart(real,N))),i(s(fun(fun(A,cart(real,N)),fun(fun(A,A),fun(A,cart(real,N)))),o),s(fun(A,cart(real,N)),F0))),s(fun(A,A),P0)))))
     <= ( ! [X] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
           => p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,i(s(fun(A,A),P0),s(A,X))))),s(fun(A,bool),S0)))) )
        & ! [Y] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,Y))),s(fun(A,bool),S0))))
           => ( ? [X] :
                  ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
                  & s(A,Y) = s(A,i(s(fun(A,A),P0),s(A,X))) )
              & ! [X,XI_] :
                  ( ( s(A,i(s(fun(A,A),P0),s(A,X))) = s(A,Y)
                    & s(A,Y) = s(A,i(s(fun(A,A),P0),s(A,XI_)))
                    & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,XI_))),s(fun(A,bool),S0))))
                    & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
                 => s(A,X) = s(A,XI_) ) ) ) ) ) ).

fof(aVECTORu_SUBu_LZERO,axiom,
    ! [Q100000] : s(cart(real,Q100000),i(s(fun(cart(real,Q100000),cart(real,Q100000)),vectoru_neg),s(cart(real,Q100000),x))) = s(cart(real,Q100000),i(s(fun(cart(real,Q100000),cart(real,Q100000)),i(s(fun(cart(real,Q100000),fun(cart(real,Q100000),cart(real,Q100000))),vectoru_sub),s(cart(real,Q100000),i(s(fun(num,cart(real,Q100000)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q100000),x))) ).

fof(aVSUMu_VMUL,axiom,
    ! [Q107186,Q107185,U_0] :
      ( ! [F0,V,S0] :
          ( p(s(bool,i(s(fun(fun(Q107186,bool),bool),finite),s(fun(Q107186,bool),S0))))
         => s(cart(real,Q107185),i(s(fun(fun(Q107186,cart(real,Q107185)),cart(real,Q107185)),i(s(fun(fun(Q107186,bool),fun(fun(Q107186,cart(real,Q107185)),cart(real,Q107185))),vsum),s(fun(Q107186,bool),S0))),s(fun(Q107186,cart(real,Q107185)),i(s(fun(cart(real,Q107185),fun(Q107186,cart(real,Q107185))),i(s(fun(fun(Q107186,real),fun(cart(real,Q107185),fun(Q107186,cart(real,Q107185)))),U_0),s(fun(Q107186,real),F0))),s(cart(real,Q107185),V))))) = s(cart(real,Q107185),i(s(fun(cart(real,Q107185),cart(real,Q107185)),i(s(fun(real,fun(cart(real,Q107185),cart(real,Q107185))),r_),s(real,i(s(fun(fun(Q107186,real),real),i(s(fun(fun(Q107186,bool),fun(fun(Q107186,real),real)),sum),s(fun(Q107186,bool),S0))),s(fun(Q107186,real),F0))))),s(cart(real,Q107185),V))) )
     <= ! [F0,V,X] : s(cart(real,Q107185),i(s(fun(cart(real,Q107185),cart(real,Q107185)),i(s(fun(real,fun(cart(real,Q107185),cart(real,Q107185))),r_),s(real,i(s(fun(Q107186,real),F0),s(Q107186,X))))),s(cart(real,Q107185),V))) = s(cart(real,Q107185),i(s(fun(Q107186,cart(real,Q107185)),i(s(fun(cart(real,Q107185),fun(Q107186,cart(real,Q107185))),i(s(fun(fun(Q107186,real),fun(cart(real,Q107185),fun(Q107186,cart(real,Q107185)))),U_0),s(fun(Q107186,real),F0))),s(cart(real,Q107185),V))),s(Q107186,X))) ) ).

fof(aCONDu_COMPONENT,axiom,
    ! [Q99503,Q99508] : s(Q99503,i(s(fun(Q99503,Q99503),i(s(fun(Q99503,fun(Q99503,Q99503)),i(s(fun(bool,fun(Q99503,fun(Q99503,Q99503))),cond),s(bool,b0))),s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),x))),s(num,i0))))),s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),y))),s(num,i0))))) = s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),i(s(fun(cart(Q99503,Q99508),cart(Q99503,Q99508)),i(s(fun(cart(Q99503,Q99508),fun(cart(Q99503,Q99508),cart(Q99503,Q99508))),i(s(fun(bool,fun(cart(Q99503,Q99508),fun(cart(Q99503,Q99508),cart(Q99503,Q99508)))),cond),s(bool,b0))),s(cart(Q99503,Q99508),x))),s(cart(Q99503,Q99508),y))))),s(num,i0))) ).

fof(aORTHOGONALu_LNEG,axiom,
    ! [Q110704,X,Y] : s(bool,i(s(fun(cart(real,Q110704),bool),i(s(fun(cart(real,Q110704),fun(cart(real,Q110704),bool)),orthogonal),s(cart(real,Q110704),i(s(fun(cart(real,Q110704),cart(real,Q110704)),vectoru_neg),s(cart(real,Q110704),X))))),s(cart(real,Q110704),Y))) = s(bool,i(s(fun(cart(real,Q110704),bool),i(s(fun(cart(real,Q110704),fun(cart(real,Q110704),bool)),orthogonal),s(cart(real,Q110704),X))),s(cart(real,Q110704),Y))) ).

fof(aBASISu_EXPANSIONu_UNIQUE,axiom,
    ! [N,U_0] :
      ( ! [F0,X] :
          ( ! [I0] :
              ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
                & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
             => s(real,i(s(fun(num,real),F0),s(num,I0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))) )
        <=> s(cart(real,N),X) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,real),fun(num,cart(real,N))),U_0),s(fun(num,real),F0))))) )
     <= ! [F0,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,real),fun(num,cart(real,N))),U_0),s(fun(num,real),F0))),s(num,I0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,I0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))) ) ).

fof(aVSUMu_SING,axiom,
    ! [Q106605,Q106610,F0,X] : s(cart(real,Q106605),i(s(fun(Q106610,cart(real,Q106605)),F0),s(Q106610,X))) = s(cart(real,Q106605),i(s(fun(fun(Q106610,cart(real,Q106605)),cart(real,Q106605)),i(s(fun(fun(Q106610,bool),fun(fun(Q106610,cart(real,Q106605)),cart(real,Q106605))),vsum),s(fun(Q106610,bool),i(s(fun(fun(Q106610,bool),fun(Q106610,bool)),i(s(fun(Q106610,fun(fun(Q106610,bool),fun(Q106610,bool))),insert),s(Q106610,X))),s(fun(Q106610,bool),empty))))),s(fun(Q106610,cart(real,Q106605)),F0))) ).

fof(aVSUMu_NORMu_ALLSUBSETSu_BOUND,axiom,
    ! [A,N,U_0] :
      ( ! [F0,P0,E0] :
          ( ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),P0))))
            & ! [Q0] :
                ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),Q0))),s(fun(A,cart(real,N)),F0))))))),s(real,E0))))
               <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(fun(A,bool),fun(fun(A,bool),bool)),subset),s(fun(A,bool),Q0))),s(fun(A,bool),P0)))) ) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(A,real),real),i(s(fun(fun(A,bool),fun(fun(A,real),real)),sum),s(fun(A,bool),P0))),s(fun(A,real),i(s(fun(fun(A,cart(real,N)),fun(A,real)),U_0),s(fun(A,cart(real,N)),F0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(real,E0)))))))) )
     <= ! [F0,X] : s(real,i(s(fun(A,real),i(s(fun(fun(A,cart(real,N)),fun(A,real)),U_0),s(fun(A,cart(real,N)),F0))),s(A,X))) = s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))) ) ).

fof(aNORMu_LTu_SQUAREu_ALT,axiom,
    ! [N,X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,a0)))) )
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0)))) ) ).

fof(aSQRTu_MONOu_LTu_EQ,axiom,
    ! [X,Y] :
      ( s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,Y)))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ) ).

fof(aNORMu_LE,axiom,
    ! [Q103249,Q103251,X,Y] : s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q103249),real),vectoru_norm),s(cart(real,Q103249),X))))),s(real,i(s(fun(cart(real,Q103251),real),vectoru_norm),s(cart(real,Q103251),Y))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q103249),real),i(s(fun(cart(real,Q103249),fun(cart(real,Q103249),real)),dot),s(cart(real,Q103249),X))),s(cart(real,Q103249),X))))),s(real,i(s(fun(cart(real,Q103251),real),i(s(fun(cart(real,Q103251),fun(cart(real,Q103251),real)),dot),s(cart(real,Q103251),Y))),s(cart(real,Q103251),Y))))) ).

fof(aDISTu_EQ,axiom,
    ! [Q105328,Q105334,W,X,Y,Z0] :
      ( s(real,i(s(fun(prod(cart(real,Q105334),cart(real,Q105334)),real),distance),s(prod(cart(real,Q105334),cart(real,Q105334)),i(s(fun(cart(real,Q105334),prod(cart(real,Q105334),cart(real,Q105334))),i(s(fun(cart(real,Q105334),fun(cart(real,Q105334),prod(cart(real,Q105334),cart(real,Q105334)))),c_),s(cart(real,Q105334),Y))),s(cart(real,Q105334),Z0))))) = s(real,i(s(fun(prod(cart(real,Q105328),cart(real,Q105328)),real),distance),s(prod(cart(real,Q105328),cart(real,Q105328)),i(s(fun(cart(real,Q105328),prod(cart(real,Q105328),cart(real,Q105328))),i(s(fun(cart(real,Q105328),fun(cart(real,Q105328),prod(cart(real,Q105328),cart(real,Q105328)))),c_),s(cart(real,Q105328),W))),s(cart(real,Q105328),X)))))
    <=> s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(prod(cart(real,Q105328),cart(real,Q105328)),real),distance),s(prod(cart(real,Q105328),cart(real,Q105328)),i(s(fun(cart(real,Q105328),prod(cart(real,Q105328),cart(real,Q105328))),i(s(fun(cart(real,Q105328),fun(cart(real,Q105328),prod(cart(real,Q105328),cart(real,Q105328)))),c_),s(cart(real,Q105328),W))),s(cart(real,Q105328),X))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(prod(cart(real,Q105334),cart(real,Q105334)),real),distance),s(prod(cart(real,Q105334),cart(real,Q105334)),i(s(fun(cart(real,Q105334),prod(cart(real,Q105334),cart(real,Q105334))),i(s(fun(cart(real,Q105334),fun(cart(real,Q105334),prod(cart(real,Q105334),cart(real,Q105334)))),c_),s(cart(real,Q105334),Y))),s(cart(real,Q105334),Z0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct1,axiom,
    ! [Q110858,A5,X,C0] :
      ( p(s(bool,i(s(fun(cart(real,Q110858),bool),i(s(fun(cart(real,Q110858),fun(cart(real,Q110858),bool)),orthogonal),s(cart(real,Q110858),A5))),s(cart(real,Q110858),i(s(fun(cart(real,Q110858),cart(real,Q110858)),i(s(fun(real,fun(cart(real,Q110858),cart(real,Q110858))),r_),s(real,C0))),s(cart(real,Q110858),X))))))
     <= p(s(bool,i(s(fun(cart(real,Q110858),bool),i(s(fun(cart(real,Q110858),fun(cart(real,Q110858),bool)),orthogonal),s(cart(real,Q110858),A5))),s(cart(real,Q110858),X)))) ) ).

fof(aDISTu_TRIANGLEu_ALT,axiom,
    ! [Q104777,X,Y,Z0] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,Q104777),cart(real,Q104777)),real),distance),s(prod(cart(real,Q104777),cart(real,Q104777)),i(s(fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777))),i(s(fun(cart(real,Q104777),fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777)))),c_),s(cart(real,Q104777),Y))),s(cart(real,Q104777),Z0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,Q104777),cart(real,Q104777)),real),distance),s(prod(cart(real,Q104777),cart(real,Q104777)),i(s(fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777))),i(s(fun(cart(real,Q104777),fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777)))),c_),s(cart(real,Q104777),X))),s(cart(real,Q104777),Y))))))),s(real,i(s(fun(prod(cart(real,Q104777),cart(real,Q104777)),real),distance),s(prod(cart(real,Q104777),cart(real,Q104777)),i(s(fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777))),i(s(fun(cart(real,Q104777),fun(cart(real,Q104777),prod(cart(real,Q104777),cart(real,Q104777)))),c_),s(cart(real,Q104777),X))),s(cart(real,Q104777),Z0)))))))))) ).

fof(aDISTu_0,axiom,
    ! [Q105385,X] :
      ( s(real,i(s(fun(cart(real,Q105385),real),vectoru_norm),s(cart(real,Q105385),X))) = s(real,i(s(fun(prod(cart(real,Q105385),cart(real,Q105385)),real),distance),s(prod(cart(real,Q105385),cart(real,Q105385)),i(s(fun(cart(real,Q105385),prod(cart(real,Q105385),cart(real,Q105385))),i(s(fun(cart(real,Q105385),fun(cart(real,Q105385),prod(cart(real,Q105385),cart(real,Q105385)))),c_),s(cart(real,Q105385),X))),s(cart(real,Q105385),i(s(fun(num,cart(real,Q105385)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))))
      & s(real,i(s(fun(cart(real,Q105385),real),vectoru_norm),s(cart(real,Q105385),X))) = s(real,i(s(fun(prod(cart(real,Q105385),cart(real,Q105385)),real),distance),s(prod(cart(real,Q105385),cart(real,Q105385)),i(s(fun(cart(real,Q105385),prod(cart(real,Q105385),cart(real,Q105385))),i(s(fun(cart(real,Q105385),fun(cart(real,Q105385),prod(cart(real,Q105385),cart(real,Q105385)))),c_),s(cart(real,Q105385),i(s(fun(num,cart(real,Q105385)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q105385),X))))) ) ).

fof(aDOTu_BASIS,axiom,
    ! [N,X,I0] :
      ( ( s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(cart(real,N),X)))
        & s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(aNORMu_LT,axiom,
    ! [Q103280,Q103282,X,Y] : s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,Q103280),real),vectoru_norm),s(cart(real,Q103280),X))))),s(real,i(s(fun(cart(real,Q103282),real),vectoru_norm),s(cart(real,Q103282),Y))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,Q103280),real),i(s(fun(cart(real,Q103280),fun(cart(real,Q103280),real)),dot),s(cart(real,Q103280),X))),s(cart(real,Q103280),X))))),s(real,i(s(fun(cart(real,Q103282),real),i(s(fun(cart(real,Q103282),fun(cart(real,Q103282),real)),dot),s(cart(real,Q103282),Y))),s(cart(real,Q103282),Y))))) ).

fof(aDISTu_POSu_LE,axiom,
    ! [Q104710,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(prod(cart(real,Q104710),cart(real,Q104710)),real),distance),s(prod(cart(real,Q104710),cart(real,Q104710)),i(s(fun(cart(real,Q104710),prod(cart(real,Q104710),cart(real,Q104710))),i(s(fun(cart(real,Q104710),fun(cart(real,Q104710),prod(cart(real,Q104710),cart(real,Q104710)))),c_),s(cart(real,Q104710),X))),s(cart(real,Q104710),Y)))))))) ).

fof(aVECTORu_NEGu_SUB,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),Y))),s(cart(real,N),X))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))))) ).

fof(avectoru_neg,axiom,
    ! [N,U_0] :
      ( ! [X] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),X)))
     <= ! [X,I0] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))),s(num,I0))) ) ).

fof(aSQRTu_MUL,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y)))) )
     => s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,X))),s(real,Y))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) ) ).

fof(aREALu_LEu_RSQRT,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y)))) ) ).

fof(aORTHOGONALu_BASISu_BASIS,axiom,
    ! [N,I0,J0] :
      ( ( p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(real,N),fun(cart(real,N),bool)),orthogonal),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,J0))))))
      <=> s(num,J0) != s(num,I0) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) ) ) ).

fof(aVECTORu_SUBu_ADD2,axiom,
    ! [N] : s(cart(real,N),x) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),y))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))))) ).

fof(aDOTu_RSUB,axiom,
    ! [Q100339,X,Y,Z0] : s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),i(s(fun(cart(real,Q100339),cart(real,Q100339)),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),cart(real,Q100339))),vectoru_sub),s(cart(real,Q100339),Y))),s(cart(real,Q100339),Z0))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),Y))))),s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),Z0))))) ).

fof(aVSUMu_RMUL,axiom,
    ! [Q105678,Q105681,U_0] :
      ( ! [C0,S0,V] : s(cart(real,Q105681),i(s(fun(cart(real,Q105681),cart(real,Q105681)),i(s(fun(real,fun(cart(real,Q105681),cart(real,Q105681))),r_),s(real,i(s(fun(fun(Q105678,real),real),i(s(fun(fun(Q105678,bool),fun(fun(Q105678,real),real)),sum),s(fun(Q105678,bool),S0))),s(fun(Q105678,real),C0))))),s(cart(real,Q105681),V))) = s(cart(real,Q105681),i(s(fun(fun(Q105678,cart(real,Q105681)),cart(real,Q105681)),i(s(fun(fun(Q105678,bool),fun(fun(Q105678,cart(real,Q105681)),cart(real,Q105681))),vsum),s(fun(Q105678,bool),S0))),s(fun(Q105678,cart(real,Q105681)),i(s(fun(cart(real,Q105681),fun(Q105678,cart(real,Q105681))),i(s(fun(fun(Q105678,real),fun(cart(real,Q105681),fun(Q105678,cart(real,Q105681)))),U_0),s(fun(Q105678,real),C0))),s(cart(real,Q105681),V)))))
     <= ! [C0,V,X] : s(cart(real,Q105681),i(s(fun(Q105678,cart(real,Q105681)),i(s(fun(cart(real,Q105681),fun(Q105678,cart(real,Q105681))),i(s(fun(fun(Q105678,real),fun(cart(real,Q105681),fun(Q105678,cart(real,Q105681)))),U_0),s(fun(Q105678,real),C0))),s(cart(real,Q105681),V))),s(Q105678,X))) = s(cart(real,Q105681),i(s(fun(cart(real,Q105681),cart(real,Q105681)),i(s(fun(real,fun(cart(real,Q105681),cart(real,Q105681))),r_),s(real,i(s(fun(Q105678,real),C0),s(Q105678,X))))),s(cart(real,Q105681),V))) ) ).

fof(aVSUMu_COMBINEu_L,axiom,
    ! [Q109147,F0,M0,N0,P0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,N0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,P0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,N0)))) )
     => s(cart(real,Q109147),i(s(fun(cart(real,Q109147),cart(real,Q109147)),i(s(fun(cart(real,Q109147),fun(cart(real,Q109147),cart(real,Q109147))),vectoru_add),s(cart(real,Q109147),i(s(fun(fun(num,cart(real,Q109147)),cart(real,Q109147)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109147)),cart(real,Q109147))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,Q109147)),F0))))),s(cart(real,Q109147),i(s(fun(fun(num,cart(real,Q109147)),cart(real,Q109147)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109147)),cart(real,Q109147))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,N0))),s(num,P0))))),s(fun(num,cart(real,Q109147)),F0))))) = s(cart(real,Q109147),i(s(fun(fun(num,cart(real,Q109147)),cart(real,Q109147)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109147)),cart(real,Q109147))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,P0))))),s(fun(num,cart(real,Q109147)),F0))) ) ).

fof(aDOTu_LZERO,axiom,
    ! [Q100457,X] : s(real,i(s(fun(cart(real,Q100457),real),i(s(fun(cart(real,Q100457),fun(cart(real,Q100457),real)),dot),s(cart(real,Q100457),i(s(fun(num,cart(real,Q100457)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q100457),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aREALu_LSQRTu_LE,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) ) ).

fof(aVECTORu_CHOOSEu_DIST,axiom,
    ! [N,X,E0] :
      ( ? [Y] : s(real,E0) = s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),X))),s(cart(real,N),Y)))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0)))) ) ).

fof(aORTHOGONALu_BASIS,axiom,
    ! [N,X,I0] :
      ( ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0)))
      <=> p(s(bool,i(s(fun(cart(real,N),bool),i(s(fun(cart(real,N),fun(cart(real,N),bool)),orthogonal),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(cart(real,N),X)))) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(aEUCLIDEANu_SPACEu_INFINITE,axiom,
    ! [N] : p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),infinite),s(fun(cart(real,N),bool),univ)))) ).

fof(aNORMu_CAUCHYu_SCHWARZu_ABS,axiom,
    ! [N,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y)))))))) ).

fof(aVECTORu_ADDu_RID,axiom,
    ! [Q99576,X] : s(cart(real,Q99576),i(s(fun(cart(real,Q99576),cart(real,Q99576)),i(s(fun(cart(real,Q99576),fun(cart(real,Q99576),cart(real,Q99576))),vectoru_add),s(cart(real,Q99576),X))),s(cart(real,Q99576),i(s(fun(num,cart(real,Q99576)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q99576),X) ).

fof(aREALu_ABSu_NORM,axiom,
    ! [Q102710,X] : s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(cart(real,Q102710),real),vectoru_norm),s(cart(real,Q102710),X))))) = s(real,i(s(fun(cart(real,Q102710),real),vectoru_norm),s(cart(real,Q102710),X))) ).

fof(aVSUMu_UNIONSu_NONZERO,axiom,
    ! [A,Q107754,U_0] :
      ( ! [F0,S0] :
          ( ( p(s(bool,i(s(fun(fun(fun(A,bool),bool),bool),finite),s(fun(fun(A,bool),bool),S0))))
            & ! [T0] :
                ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),T0))))
               <= p(s(bool,i(s(fun(fun(fun(A,bool),bool),bool),i(s(fun(fun(A,bool),fun(fun(fun(A,bool),bool),bool)),in),s(fun(A,bool),T0))),s(fun(fun(A,bool),bool),S0)))) )
            & ! [T1,T2,X] :
                ( ( p(s(bool,i(s(fun(fun(fun(A,bool),bool),bool),i(s(fun(fun(A,bool),fun(fun(fun(A,bool),bool),bool)),in),s(fun(A,bool),T1))),s(fun(fun(A,bool),bool),S0))))
                  & s(fun(A,bool),T2) != s(fun(A,bool),T1)
                  & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),T2))))
                  & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),T1))))
                  & p(s(bool,i(s(fun(fun(fun(A,bool),bool),bool),i(s(fun(fun(A,bool),fun(fun(fun(A,bool),bool),bool)),in),s(fun(A,bool),T2))),s(fun(fun(A,bool),bool),S0)))) )
               => s(cart(real,Q107754),i(s(fun(num,cart(real,Q107754)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q107754),i(s(fun(A,cart(real,Q107754)),F0),s(A,X))) ) )
         => s(cart(real,Q107754),i(s(fun(fun(fun(A,bool),cart(real,Q107754)),cart(real,Q107754)),i(s(fun(fun(fun(A,bool),bool),fun(fun(fun(A,bool),cart(real,Q107754)),cart(real,Q107754))),vsum),s(fun(fun(A,bool),bool),S0))),s(fun(fun(A,bool),cart(real,Q107754)),i(s(fun(fun(A,cart(real,Q107754)),fun(fun(A,bool),cart(real,Q107754))),U_0),s(fun(A,cart(real,Q107754)),F0))))) = s(cart(real,Q107754),i(s(fun(fun(A,cart(real,Q107754)),cart(real,Q107754)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107754)),cart(real,Q107754))),vsum),s(fun(A,bool),i(s(fun(fun(fun(A,bool),bool),fun(A,bool)),unions),s(fun(fun(A,bool),bool),S0))))),s(fun(A,cart(real,Q107754)),F0))) )
     <= ! [F0,T0] : s(cart(real,Q107754),i(s(fun(fun(A,cart(real,Q107754)),cart(real,Q107754)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107754)),cart(real,Q107754))),vsum),s(fun(A,bool),T0))),s(fun(A,cart(real,Q107754)),F0))) = s(cart(real,Q107754),i(s(fun(fun(A,bool),cart(real,Q107754)),i(s(fun(fun(A,cart(real,Q107754)),fun(fun(A,bool),cart(real,Q107754))),U_0),s(fun(A,cart(real,Q107754)),F0))),s(fun(A,bool),T0))) ) ).

fof(aVECu_COMPONENT,axiom,
    ! [N,K0,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,K0))))),s(num,I0))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,K0))) ).

fof(aVSUMu_NORMu_BOUND,axiom,
    ! [Q106792,A,S0,F0,B0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q106792),real),vectoru_norm),s(cart(real,Q106792),i(s(fun(fun(A,cart(real,Q106792)),cart(real,Q106792)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q106792)),cart(real,Q106792))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q106792)),F0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(fun(A,bool),num),card),s(fun(A,bool),S0))))))),s(real,B0))))))
     <= ( ! [X] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
           => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q106792),real),vectoru_norm),s(cart(real,Q106792),i(s(fun(A,cart(real,Q106792)),F0),s(A,X))))))),s(real,B0)))) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) ) ) ).

fof(aVECTORu_ADDu_LID,axiom,
    ! [Q99561,X] : s(cart(real,Q99561),i(s(fun(cart(real,Q99561),cart(real,Q99561)),i(s(fun(cart(real,Q99561),fun(cart(real,Q99561),cart(real,Q99561))),vectoru_add),s(cart(real,Q99561),i(s(fun(num,cart(real,Q99561)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q99561),X))) = s(cart(real,Q99561),X) ).

fof(aVSUMu_CLAUSESu_NUMSEGu_conjunct1,axiom,
    ! [Q106879,M0,N0] : s(cart(real,Q106879),i(s(fun(cart(real,Q106879),cart(real,Q106879)),i(s(fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879))),i(s(fun(bool,fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,i(s(fun(num,num),suc),s(num,N0))))))),s(cart(real,Q106879),i(s(fun(cart(real,Q106879),cart(real,Q106879)),i(s(fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879))),vectoru_add),s(cart(real,Q106879),i(s(fun(fun(num,cart(real,Q106879)),cart(real,Q106879)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106879)),cart(real,Q106879))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q106879)),f))))),s(cart(real,Q106879),i(s(fun(num,cart(real,Q106879)),f),s(num,i(s(fun(num,num),suc),s(num,N0))))))))),s(cart(real,Q106879),i(s(fun(fun(num,cart(real,Q106879)),cart(real,Q106879)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106879)),cart(real,Q106879))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q106879)),f))))) = s(cart(real,Q106879),i(s(fun(fun(num,cart(real,Q106879)),cart(real,Q106879)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106879)),cart(real,Q106879))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),suc),s(num,N0))))))),s(fun(num,cart(real,Q106879)),f))) ).

fof(aCONNECTEDu_REALu_LEMMA,axiom,
    ! [N,F0,A5,B0,E1,E2] :
      ( ? [X] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,X))))
          & ~ p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E1))))
          & ~ p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E2))))
          & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,B0)))) )
     <= ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,B0))))),s(fun(cart(real,N),bool),E2))))
        & ! [E0,X] :
            ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,B0))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,X)))) )
           => ? [D0] :
                ( ! [Y] :
                    ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,Y))),s(real,X))))))),s(real,D0))))
                   => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,Y))))),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))))))),s(real,E0)))) )
                & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,D0)))) ) )
        & ! [Y] :
            ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),Y))),s(fun(cart(real,N),bool),E2))))
           => ? [E0] :
                ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0))))
                & ! [YI_] :
                    ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),YI_))),s(cart(real,N),Y))))))),s(real,E0))))
                   => p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),YI_))),s(fun(cart(real,N),bool),E2)))) ) ) )
        & ~ ? [X] :
              ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E2))))
              & p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E1))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,B0))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,X)))) )
        & ! [Y] :
            ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),Y))),s(fun(cart(real,N),bool),E1))))
           => ? [E0] :
                ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0))))
                & ! [YI_] :
                    ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),YI_))),s(cart(real,N),Y))))))),s(real,E0))))
                   => p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),YI_))),s(fun(cart(real,N),bool),E1)))) ) ) )
        & p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,A5))))),s(fun(cart(real,N),bool),E1))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,B0)))) ) ) ).

fof(aNORMu_GTu_SQUARE,axiom,
    ! [N,X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,a0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))))
        | p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_gt),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) )
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_gt),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0)))) ) ).

fof(aVECu_EQ,axiom,
    ! [Q100159,M0,N0] :
      ( s(cart(real,Q100159),i(s(fun(num,cart(real,Q100159)),vec),s(num,N0))) = s(cart(real,Q100159),i(s(fun(num,cart(real,Q100159)),vec),s(num,M0)))
    <=> s(num,M0) = s(num,N0) ) ).

fof(aDISTu_REAL,axiom,
    ! [X,Y] : s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(real,i(s(fun(prod(cart(real,n10),cart(real,n10)),real),distance),s(prod(cart(real,n10),cart(real,n10)),i(s(fun(cart(real,n10),prod(cart(real,n10),cart(real,n10))),i(s(fun(cart(real,n10),fun(cart(real,n10),prod(cart(real,n10),cart(real,n10)))),c_),s(cart(real,n10),X))),s(cart(real,n10),Y))))) ).

fof(aVSUMu_SUC,axiom,
    ! [Q108775,F0,M0,N0] : s(cart(real,Q108775),i(s(fun(fun(num,cart(real,Q108775)),cart(real,Q108775)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108775)),cart(real,Q108775))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,N0))),s(num,M0))))),s(fun(num,cart(real,Q108775)),i(s(fun(fun(num,num),fun(num,cart(real,Q108775))),i(s(fun(fun(num,cart(real,Q108775)),fun(fun(num,num),fun(num,cart(real,Q108775)))),o),s(fun(num,cart(real,Q108775)),F0))),s(fun(num,num),suc))))) = s(cart(real,Q108775),i(s(fun(fun(num,cart(real,Q108775)),cart(real,Q108775)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108775)),cart(real,Q108775))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),suc),s(num,N0))))),s(num,i(s(fun(num,num),suc),s(num,M0))))))),s(fun(num,cart(real,Q108775)),F0))) ).

fof(aVSUMu_TRIVu_NUMSEG,axiom,
    ! [Q108694,F0,M0,N0] :
      ( s(cart(real,Q108694),i(s(fun(fun(num,cart(real,Q108694)),cart(real,Q108694)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108694)),cart(real,Q108694))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q108694)),F0))) = s(cart(real,Q108694),i(s(fun(num,cart(real,Q108694)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
     <= p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_),s(num,N0))),s(num,M0)))) ) ).

fof(aVECTORu_SUB,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),y))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))) ).

fof(aVSUMu_CASES,axiom,
    ! [A,N,U_2] :
      ( ! [U_1] :
          ( ! [U_0] :
              ( ! [S0,P0,F0,G0] :
                  ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0))))
                 => s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),gspec),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),U_1),s(fun(A,bool),S0))),s(fun(A,bool),P0))))))),s(fun(A,cart(real,N)),F0))))),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),gspec),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),U_1),s(fun(A,bool),S0))),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),U_2),s(fun(A,bool),P0))))))))),s(fun(A,cart(real,N)),G0))))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),i(s(fun(fun(A,cart(real,N)),fun(A,cart(real,N))),i(s(fun(fun(A,cart(real,N)),fun(fun(A,cart(real,N)),fun(A,cart(real,N)))),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),fun(fun(A,cart(real,N)),fun(A,cart(real,N))))),U_0),s(fun(A,bool),P0))),s(fun(A,cart(real,N)),F0))),s(fun(A,cart(real,N)),G0))))) )
             <= ! [P0,F0,G0,X] : s(cart(real,N),i(s(fun(A,cart(real,N)),i(s(fun(fun(A,cart(real,N)),fun(A,cart(real,N))),i(s(fun(fun(A,cart(real,N)),fun(fun(A,cart(real,N)),fun(A,cart(real,N)))),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),fun(fun(A,cart(real,N)),fun(A,cart(real,N))))),U_0),s(fun(A,bool),P0))),s(fun(A,cart(real,N)),F0))),s(fun(A,cart(real,N)),G0))),s(A,X))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),i(s(fun(bool,fun(cart(real,N),fun(cart(real,N),cart(real,N)))),cond),s(bool,i(s(fun(A,bool),P0),s(A,X))))),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))),s(cart(real,N),i(s(fun(A,cart(real,N)),G0),s(A,X))))) )
         <= ! [S0,P0,GENR_PVARR_279] :
              ( ? [X,V] :
                  ( p(s(bool,i(s(fun(A,bool),i(s(fun(bool,fun(A,bool)),i(s(fun(A,fun(bool,fun(A,bool))),setspec),s(A,GENR_PVARR_279))),s(bool,V))),s(A,X))))
                  & ( p(s(bool,V))
                  <=> ( p(s(bool,i(s(fun(A,bool),P0),s(A,X))))
                      & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) ) ) )
            <=> p(s(bool,i(s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),U_1),s(fun(A,bool),S0))),s(fun(A,bool),P0))),s(A,GENR_PVARR_279)))) ) )
     <= ! [P0,X] :
          ( ~ p(s(bool,i(s(fun(A,bool),P0),s(A,X))))
        <=> p(s(bool,i(s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),U_2),s(fun(A,bool),P0))),s(A,X)))) ) ) ).

fof(aDISTu_TRIANGLEu_HALFu_R,axiom,
    ! [Q105069,X1,X2,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105069),cart(real,Q105069)),real),distance),s(prod(cart(real,Q105069),cart(real,Q105069)),i(s(fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069))),i(s(fun(cart(real,Q105069),fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069)))),c_),s(cart(real,Q105069),Y))),s(cart(real,Q105069),X2))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105069),cart(real,Q105069)),real),distance),s(prod(cart(real,Q105069),cart(real,Q105069)),i(s(fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069))),i(s(fun(cart(real,Q105069),fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069)))),c_),s(cart(real,Q105069),Y))),s(cart(real,Q105069),X1))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105069),cart(real,Q105069)),real),distance),s(prod(cart(real,Q105069),cart(real,Q105069)),i(s(fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069))),i(s(fun(cart(real,Q105069),fun(cart(real,Q105069),prod(cart(real,Q105069),cart(real,Q105069)))),c_),s(cart(real,Q105069),X1))),s(cart(real,Q105069),X2))))))),s(real,e0)))) ) ).

fof(aDOTu_SQUAREu_NORM,axiom,
    ! [Q103415,X] : s(real,i(s(fun(cart(real,Q103415),real),i(s(fun(cart(real,Q103415),fun(cart(real,Q103415),real)),dot),s(cart(real,Q103415),X))),s(cart(real,Q103415),X))) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q103415),real),vectoru_norm),s(cart(real,Q103415),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ).

fof(aorthogonal,axiom,
    ! [Q110633,X,Y] :
      ( s(real,i(s(fun(cart(real,Q110633),real),i(s(fun(cart(real,Q110633),fun(cart(real,Q110633),real)),dot),s(cart(real,Q110633),X))),s(cart(real,Q110633),Y))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> p(s(bool,i(s(fun(cart(real,Q110633),bool),i(s(fun(cart(real,Q110633),fun(cart(real,Q110633),bool)),orthogonal),s(cart(real,Q110633),X))),s(cart(real,Q110633),Y)))) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct8,conjecture,
    ! [Q111057,A5,X,Y] :
      ( ( p(s(bool,i(s(fun(cart(real,Q111057),bool),i(s(fun(cart(real,Q111057),fun(cart(real,Q111057),bool)),orthogonal),s(cart(real,Q111057),Y))),s(cart(real,Q111057),A5))))
        & p(s(bool,i(s(fun(cart(real,Q111057),bool),i(s(fun(cart(real,Q111057),fun(cart(real,Q111057),bool)),orthogonal),s(cart(real,Q111057),X))),s(cart(real,Q111057),A5)))) )
     => p(s(bool,i(s(fun(cart(real,Q111057),bool),i(s(fun(cart(real,Q111057),fun(cart(real,Q111057),bool)),orthogonal),s(cart(real,Q111057),i(s(fun(cart(real,Q111057),cart(real,Q111057)),i(s(fun(cart(real,Q111057),fun(cart(real,Q111057),cart(real,Q111057))),vectoru_add),s(cart(real,Q111057),X))),s(cart(real,Q111057),Y))))),s(cart(real,Q111057),A5)))) ) ).

fof(aVSUMu_VSUMu_PRODUCT,axiom,
    ! [A,B,Q107444,U_2] :
      ( ! [X,F0] :
          ( ! [I0,J0] : p(s(bool,i(s(fun(cart(real,Q107444),bool),i(s(fun(cart(real,Q107444),fun(cart(real,Q107444),bool)),geq),s(cart(real,Q107444),i(s(fun(prod(A,B),cart(real,Q107444)),F0),s(prod(A,B),i(s(fun(B,prod(A,B)),i(s(fun(A,fun(B,prod(A,B))),c_),s(A,I0))),s(B,J0))))))),s(cart(real,Q107444),i(s(fun(B,cart(real,Q107444)),i(s(fun(A,fun(B,cart(real,Q107444))),X),s(A,I0))),s(B,J0))))))
        <=> p(s(bool,i(s(fun(fun(prod(A,B),cart(real,Q107444)),bool),i(s(fun(fun(A,fun(B,cart(real,Q107444))),fun(fun(prod(A,B),cart(real,Q107444)),bool)),U_2),s(fun(A,fun(B,cart(real,Q107444))),X))),s(fun(prod(A,B),cart(real,Q107444)),F0)))) )
     => ! [U_1] :
          ( ! [U_0] :
              ( ! [S0,T0,X] :
                  ( s(cart(real,Q107444),i(s(fun(fun(A,cart(real,Q107444)),cart(real,Q107444)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107444)),cart(real,Q107444))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107444)),i(s(fun(fun(A,fun(B,cart(real,Q107444))),fun(A,cart(real,Q107444))),i(s(fun(fun(A,fun(B,bool)),fun(fun(A,fun(B,cart(real,Q107444))),fun(A,cart(real,Q107444)))),U_0),s(fun(A,fun(B,bool)),T0))),s(fun(A,fun(B,cart(real,Q107444))),X))))) = s(cart(real,Q107444),i(s(fun(fun(prod(A,B),cart(real,Q107444)),cart(real,Q107444)),i(s(fun(fun(prod(A,B),bool),fun(fun(prod(A,B),cart(real,Q107444)),cart(real,Q107444))),vsum),s(fun(prod(A,B),bool),i(s(fun(fun(prod(A,B),bool),fun(prod(A,B),bool)),gspec),s(fun(prod(A,B),bool),i(s(fun(fun(A,fun(B,bool)),fun(prod(A,B),bool)),i(s(fun(fun(A,bool),fun(fun(A,fun(B,bool)),fun(prod(A,B),bool))),U_1),s(fun(A,bool),S0))),s(fun(A,fun(B,bool)),T0))))))),s(fun(prod(A,B),cart(real,Q107444)),i(s(fun(fun(fun(prod(A,B),cart(real,Q107444)),bool),fun(prod(A,B),cart(real,Q107444))),gabs),s(fun(fun(prod(A,B),cart(real,Q107444)),bool),i(s(fun(fun(A,fun(B,cart(real,Q107444))),fun(fun(prod(A,B),cart(real,Q107444)),bool)),U_2),s(fun(A,fun(B,cart(real,Q107444))),X)))))))
                 <= ( ! [I0] :
                        ( p(s(bool,i(s(fun(fun(B,bool),bool),finite),s(fun(B,bool),i(s(fun(A,fun(B,bool)),T0),s(A,I0))))))
                       <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,I0))),s(fun(A,bool),S0)))) )
                    & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) ) )
             <= ! [T0,X,I0] : s(cart(real,Q107444),i(s(fun(A,cart(real,Q107444)),i(s(fun(fun(A,fun(B,cart(real,Q107444))),fun(A,cart(real,Q107444))),i(s(fun(fun(A,fun(B,bool)),fun(fun(A,fun(B,cart(real,Q107444))),fun(A,cart(real,Q107444)))),U_0),s(fun(A,fun(B,bool)),T0))),s(fun(A,fun(B,cart(real,Q107444))),X))),s(A,I0))) = s(cart(real,Q107444),i(s(fun(fun(B,cart(real,Q107444)),cart(real,Q107444)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,Q107444)),cart(real,Q107444))),vsum),s(fun(B,bool),i(s(fun(A,fun(B,bool)),T0),s(A,I0))))),s(fun(B,cart(real,Q107444)),i(s(fun(A,fun(B,cart(real,Q107444))),X),s(A,I0))))) )
         <= ! [S0,T0,GENR_PVARR_283] :
              ( p(s(bool,i(s(fun(prod(A,B),bool),i(s(fun(fun(A,fun(B,bool)),fun(prod(A,B),bool)),i(s(fun(fun(A,bool),fun(fun(A,fun(B,bool)),fun(prod(A,B),bool))),U_1),s(fun(A,bool),S0))),s(fun(A,fun(B,bool)),T0))),s(prod(A,B),GENR_PVARR_283))))
            <=> ? [I0,J0,V] :
                  ( p(s(bool,i(s(fun(prod(A,B),bool),i(s(fun(bool,fun(prod(A,B),bool)),i(s(fun(prod(A,B),fun(bool,fun(prod(A,B),bool))),setspec),s(prod(A,B),GENR_PVARR_283))),s(bool,V))),s(prod(A,B),i(s(fun(B,prod(A,B)),i(s(fun(A,fun(B,prod(A,B))),c_),s(A,I0))),s(B,J0))))))
                  & ( ( p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,J0))),s(fun(B,bool),i(s(fun(A,fun(B,bool)),T0),s(A,I0))))))
                      & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,I0))),s(fun(A,bool),S0)))) )
                  <=> p(s(bool,V)) ) ) ) ) ) ).

fof(aVSUMu_CLAUSESu_NUMSEGu_conjunct0,axiom,
    ! [Q106879,M0] :
    ? [V] :
      ( s(cart(real,Q106879),i(s(fun(fun(num,cart(real,Q106879)),cart(real,Q106879)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106879)),cart(real,Q106879))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(fun(num,cart(real,Q106879)),f))) = s(cart(real,Q106879),i(s(fun(cart(real,Q106879),cart(real,Q106879)),i(s(fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879))),i(s(fun(bool,fun(cart(real,Q106879),fun(cart(real,Q106879),cart(real,Q106879)))),cond),s(bool,V))),s(cart(real,Q106879),i(s(fun(num,cart(real,Q106879)),f),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q106879),i(s(fun(num,cart(real,Q106879)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
      & ( p(s(bool,V))
      <=> s(num,M0) = s(num,i(s(fun(num,num),numeral),s(num,u_0))) ) ) ).

fof(aORTHOGONALu_RNEG,axiom,
    ! [Q110725,X,Y] : s(bool,i(s(fun(cart(real,Q110725),bool),i(s(fun(cart(real,Q110725),fun(cart(real,Q110725),bool)),orthogonal),s(cart(real,Q110725),X))),s(cart(real,Q110725),i(s(fun(cart(real,Q110725),cart(real,Q110725)),vectoru_neg),s(cart(real,Q110725),Y))))) = s(bool,i(s(fun(cart(real,Q110725),bool),i(s(fun(cart(real,Q110725),fun(cart(real,Q110725),bool)),orthogonal),s(cart(real,Q110725),X))),s(cart(real,Q110725),Y))) ).

fof(aVECTORu_ADDu_LDISTRIB,axiom,
    ! [Q99811] : s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(cart(real,Q99811),fun(cart(real,Q99811),cart(real,Q99811))),vectoru_add),s(cart(real,Q99811),x))),s(cart(real,Q99811),y))))) = s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(cart(real,Q99811),fun(cart(real,Q99811),cart(real,Q99811))),vectoru_add),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),x))))),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),y))))) ).

fof(aDISTu_SYM,axiom,
    ! [Q104680,X,Y] : s(real,i(s(fun(prod(cart(real,Q104680),cart(real,Q104680)),real),distance),s(prod(cart(real,Q104680),cart(real,Q104680)),i(s(fun(cart(real,Q104680),prod(cart(real,Q104680),cart(real,Q104680))),i(s(fun(cart(real,Q104680),fun(cart(real,Q104680),prod(cart(real,Q104680),cart(real,Q104680)))),c_),s(cart(real,Q104680),X))),s(cart(real,Q104680),Y))))) = s(real,i(s(fun(prod(cart(real,Q104680),cart(real,Q104680)),real),distance),s(prod(cart(real,Q104680),cart(real,Q104680)),i(s(fun(cart(real,Q104680),prod(cart(real,Q104680),cart(real,Q104680))),i(s(fun(cart(real,Q104680),fun(cart(real,Q104680),prod(cart(real,Q104680),cart(real,Q104680)))),c_),s(cart(real,Q104680),Y))),s(cart(real,Q104680),X))))) ).

fof(aVSUMu_PAIR,axiom,
    ! [N,U_0] :
      ( ! [F0,M0,N0] : s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),U_0),s(fun(num,cart(real,N)),F0))))) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,M0))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,N0))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,N)),F0)))
     <= ! [F0,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),U_0),s(fun(num,cart(real,N)),F0))),s(num,I0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,I0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,I0))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ) ).

fof(aDISTu_TRIANGLEu_HALFu_L,axiom,
    ! [Q105011,X1,X2,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105011),cart(real,Q105011)),real),distance),s(prod(cart(real,Q105011),cart(real,Q105011)),i(s(fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011))),i(s(fun(cart(real,Q105011),fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011)))),c_),s(cart(real,Q105011),X1))),s(cart(real,Q105011),X2))))))),s(real,e0))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105011),cart(real,Q105011)),real),distance),s(prod(cart(real,Q105011),cart(real,Q105011)),i(s(fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011))),i(s(fun(cart(real,Q105011),fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011)))),c_),s(cart(real,Q105011),X2))),s(cart(real,Q105011),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q105011),cart(real,Q105011)),real),distance),s(prod(cart(real,Q105011),cart(real,Q105011)),i(s(fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011))),i(s(fun(cart(real,Q105011),fun(cart(real,Q105011),prod(cart(real,Q105011),cart(real,Q105011)))),c_),s(cart(real,Q105011),X1))),s(cart(real,Q105011),Y))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))))) ) ) ).

fof(aVECTORu_MULu_RCANCEL,axiom,
    ! [Q102468,A5,B0,X] :
      ( s(cart(real,Q102468),i(s(fun(cart(real,Q102468),cart(real,Q102468)),i(s(fun(real,fun(cart(real,Q102468),cart(real,Q102468))),r_),s(real,A5))),s(cart(real,Q102468),X))) = s(cart(real,Q102468),i(s(fun(cart(real,Q102468),cart(real,Q102468)),i(s(fun(real,fun(cart(real,Q102468),cart(real,Q102468))),r_),s(real,B0))),s(cart(real,Q102468),X)))
    <=> ( s(cart(real,Q102468),i(s(fun(num,cart(real,Q102468)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q102468),X)
        | s(real,B0) = s(real,A5) ) ) ).

fof(aFORALLu_DIMINDEXu_1,axiom,
    ( ! [I0] :
        ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(n10,bool),num),dimindex),s(fun(n10,bool),univ))))))
          & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
       => p(s(bool,i(s(fun(num,bool),p0),s(num,I0)))) )
  <=> p(s(bool,i(s(fun(num,bool),p0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) ).

fof(aREALu_LTu_LSQRT,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y)))) ) ).

fof(aREALu_RSQRTu_LE,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ) ).

fof(aNORMu_POWu_2,axiom,
    ! [Q102322,X] : s(real,i(s(fun(cart(real,Q102322),real),i(s(fun(cart(real,Q102322),fun(cart(real,Q102322),real)),dot),s(cart(real,Q102322),X))),s(cart(real,Q102322),X))) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q102322),real),vectoru_norm),s(cart(real,Q102322),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ).

fof(aDOTu_RZERO,axiom,
    ! [Q100472,X] : s(real,i(s(fun(cart(real,Q100472),real),i(s(fun(cart(real,Q100472),fun(cart(real,Q100472),real)),dot),s(cart(real,Q100472),X))),s(cart(real,Q100472),i(s(fun(num,cart(real,Q100472)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aVSUMu_CASESu_1,axiom,
    ! [Q109577,Q109575,U_0] :
      ( ! [S0,A5] :
          ( s(cart(real,Q109577),i(s(fun(cart(real,Q109577),cart(real,Q109577)),i(s(fun(cart(real,Q109577),fun(cart(real,Q109577),cart(real,Q109577))),vectoru_add),s(cart(real,Q109577),i(s(fun(fun(Q109575,cart(real,Q109577)),cart(real,Q109577)),i(s(fun(fun(Q109575,bool),fun(fun(Q109575,cart(real,Q109577)),cart(real,Q109577))),vsum),s(fun(Q109575,bool),S0))),s(fun(Q109575,cart(real,Q109577)),f))))),s(cart(real,Q109577),i(s(fun(cart(real,Q109577),cart(real,Q109577)),i(s(fun(cart(real,Q109577),fun(cart(real,Q109577),cart(real,Q109577))),vectoru_sub),s(cart(real,Q109577),y))),s(cart(real,Q109577),i(s(fun(Q109575,cart(real,Q109577)),f),s(Q109575,A5))))))) = s(cart(real,Q109577),i(s(fun(fun(Q109575,cart(real,Q109577)),cart(real,Q109577)),i(s(fun(fun(Q109575,bool),fun(fun(Q109575,cart(real,Q109577)),cart(real,Q109577))),vsum),s(fun(Q109575,bool),S0))),s(fun(Q109575,cart(real,Q109577)),i(s(fun(Q109575,fun(Q109575,cart(real,Q109577))),U_0),s(Q109575,A5)))))
         <= ( p(s(bool,i(s(fun(fun(Q109575,bool),bool),i(s(fun(Q109575,fun(fun(Q109575,bool),bool)),in),s(Q109575,A5))),s(fun(Q109575,bool),S0))))
            & p(s(bool,i(s(fun(fun(Q109575,bool),bool),finite),s(fun(Q109575,bool),S0)))) ) )
     <= ! [A5,X] :
        ? [V] :
          ( ( p(s(bool,V))
          <=> s(Q109575,X) = s(Q109575,A5) )
          & s(cart(real,Q109577),i(s(fun(cart(real,Q109577),cart(real,Q109577)),i(s(fun(cart(real,Q109577),fun(cart(real,Q109577),cart(real,Q109577))),i(s(fun(bool,fun(cart(real,Q109577),fun(cart(real,Q109577),cart(real,Q109577)))),cond),s(bool,V))),s(cart(real,Q109577),y))),s(cart(real,Q109577),i(s(fun(Q109575,cart(real,Q109577)),f),s(Q109575,X))))) = s(cart(real,Q109577),i(s(fun(Q109575,cart(real,Q109577)),i(s(fun(Q109575,fun(Q109575,cart(real,Q109577))),U_0),s(Q109575,A5))),s(Q109575,X))) ) ) ).

fof(aVSUMu_EQu_SUPERSET,axiom,
    ! [A,Q106306,F0,S0,T0] :
      ( s(cart(real,Q106306),i(s(fun(fun(A,cart(real,Q106306)),cart(real,Q106306)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q106306)),cart(real,Q106306))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q106306)),F0))) = s(cart(real,Q106306),i(s(fun(fun(A,cart(real,Q106306)),cart(real,Q106306)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q106306)),cart(real,Q106306))),vsum),s(fun(A,bool),T0))),s(fun(A,cart(real,Q106306)),g)))
     <= ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(fun(A,bool),fun(fun(A,bool),bool)),subset),s(fun(A,bool),T0))),s(fun(A,bool),S0))))
        & ! [X] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),T0))))
           => s(cart(real,Q106306),i(s(fun(A,cart(real,Q106306)),F0),s(A,X))) = s(cart(real,Q106306),i(s(fun(A,cart(real,Q106306)),g),s(A,X))) )
        & ! [X] :
            ( s(cart(real,Q106306),i(s(fun(num,cart(real,Q106306)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q106306),i(s(fun(A,cart(real,Q106306)),F0),s(A,X)))
           <= ( ~ p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),T0))))
              & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) ) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),T0)))) ) ) ).

fof(aVSUM,axiom,
    ! [Q105555,Q105569,F0,S0] :
      ( p(s(bool,i(s(fun(fun(Q105555,bool),bool),finite),s(fun(Q105555,bool),S0))))
     => s(cart(real,Q105569),i(s(fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569)),i(s(fun(fun(Q105555,bool),fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569))),i(s(fun(fun(cart(real,Q105569),fun(cart(real,Q105569),cart(real,Q105569))),fun(fun(Q105555,bool),fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569)))),iterate),s(fun(cart(real,Q105569),fun(cart(real,Q105569),cart(real,Q105569))),vectoru_add))),s(fun(Q105555,bool),S0))),s(fun(Q105555,cart(real,Q105569)),F0))) = s(cart(real,Q105569),i(s(fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569)),i(s(fun(fun(Q105555,bool),fun(fun(Q105555,cart(real,Q105569)),cart(real,Q105569))),vsum),s(fun(Q105555,bool),S0))),s(fun(Q105555,cart(real,Q105569)),F0))) ) ).

fof(aVECTORu_ADDu_ASSOC,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),z))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),y))),s(cart(real,N),z))))) ).

fof(aVECTORu_ONE,axiom,
    ! [U_0] :
      ( ! [X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),U_0),s(cart(real,n10),X))),s(num,I0)))
     => ! [X] : s(cart(real,n10),X) = s(cart(real,n10),i(s(fun(fun(num,real),cart(real,n10)),lambda),s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),U_0),s(cart(real,n10),X))))) ) ).

fof(abasis,axiom,
    ! [Q109978,U_0] :
      ( ! [K0] : s(cart(real,Q109978),i(s(fun(num,cart(real,Q109978)),basis),s(num,K0))) = s(cart(real,Q109978),i(s(fun(fun(num,real),cart(real,Q109978)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,K0)))))
     <= ! [K0,I0] :
        ? [V] :
          ( s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),i(s(fun(bool,fun(real,fun(real,real))),cond),s(bool,V))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,K0))),s(num,I0)))
          & ( s(num,K0) = s(num,I0)
          <=> p(s(bool,V)) ) ) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct2,axiom,
    ! [Q111053,A5,X] :
      ( p(s(bool,i(s(fun(cart(real,Q111053),bool),i(s(fun(cart(real,Q111053),fun(cart(real,Q111053),bool)),orthogonal),s(cart(real,Q111053),A5))),s(cart(real,Q111053),i(s(fun(cart(real,Q111053),cart(real,Q111053)),vectoru_neg),s(cart(real,Q111053),X))))))
     <= p(s(bool,i(s(fun(cart(real,Q111053),bool),i(s(fun(cart(real,Q111053),fun(cart(real,Q111053),bool)),orthogonal),s(cart(real,Q111053),A5))),s(cart(real,Q111053),X)))) ) ).

fof(aDISTu_REFL,axiom,
    ! [Q104658,X] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(prod(cart(real,Q104658),cart(real,Q104658)),real),distance),s(prod(cart(real,Q104658),cart(real,Q104658)),i(s(fun(cart(real,Q104658),prod(cart(real,Q104658),cart(real,Q104658))),i(s(fun(cart(real,Q104658),fun(cart(real,Q104658),prod(cart(real,Q104658),cart(real,Q104658)))),c_),s(cart(real,Q104658),X))),s(cart(real,Q104658),X))))) ).

fof(aVSUMu_DELETEu_CASES,axiom,
    ! [A,Q107975,X,F0,S0] :
      ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0))))
     => s(cart(real,Q107975),i(s(fun(cart(real,Q107975),cart(real,Q107975)),i(s(fun(cart(real,Q107975),fun(cart(real,Q107975),cart(real,Q107975))),i(s(fun(bool,fun(cart(real,Q107975),fun(cart(real,Q107975),cart(real,Q107975)))),cond),s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))),s(cart(real,Q107975),i(s(fun(cart(real,Q107975),cart(real,Q107975)),i(s(fun(cart(real,Q107975),fun(cart(real,Q107975),cart(real,Q107975))),vectoru_sub),s(cart(real,Q107975),i(s(fun(fun(A,cart(real,Q107975)),cart(real,Q107975)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107975)),cart(real,Q107975))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107975)),F0))))),s(cart(real,Q107975),i(s(fun(A,cart(real,Q107975)),F0),s(A,X))))))),s(cart(real,Q107975),i(s(fun(fun(A,cart(real,Q107975)),cart(real,Q107975)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107975)),cart(real,Q107975))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107975)),F0))))) = s(cart(real,Q107975),i(s(fun(fun(A,cart(real,Q107975)),cart(real,Q107975)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107975)),cart(real,Q107975))),vsum),s(fun(A,bool),i(s(fun(A,fun(A,bool)),i(s(fun(fun(A,bool),fun(A,fun(A,bool))),delete),s(fun(A,bool),S0))),s(A,X))))),s(fun(A,cart(real,Q107975)),F0))) ) ).

fof(aVSUMu_CONST,axiom,
    ! [Q105798,Q105801,U_0] :
      ( ! [C0,S0] :
          ( p(s(bool,i(s(fun(fun(Q105798,bool),bool),finite),s(fun(Q105798,bool),S0))))
         => s(cart(real,Q105801),i(s(fun(fun(Q105798,cart(real,Q105801)),cart(real,Q105801)),i(s(fun(fun(Q105798,bool),fun(fun(Q105798,cart(real,Q105801)),cart(real,Q105801))),vsum),s(fun(Q105798,bool),S0))),s(fun(Q105798,cart(real,Q105801)),i(s(fun(cart(real,Q105801),fun(Q105798,cart(real,Q105801))),U_0),s(cart(real,Q105801),C0))))) = s(cart(real,Q105801),i(s(fun(cart(real,Q105801),cart(real,Q105801)),i(s(fun(real,fun(cart(real,Q105801),cart(real,Q105801))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(fun(Q105798,bool),num),card),s(fun(Q105798,bool),S0))))))),s(cart(real,Q105801),C0))) )
     <= ! [C0,N0] : s(cart(real,Q105801),C0) = s(cart(real,Q105801),i(s(fun(Q105798,cart(real,Q105801)),i(s(fun(cart(real,Q105801),fun(Q105798,cart(real,Q105801))),U_0),s(cart(real,Q105801),C0))),s(Q105798,N0))) ) ).

fof(aVECTORu_EQ,axiom,
    ! [Q104636,X,Y] :
      ( ( s(real,i(s(fun(cart(real,Q104636),real),i(s(fun(cart(real,Q104636),fun(cart(real,Q104636),real)),dot),s(cart(real,Q104636),X))),s(cart(real,Q104636),X))) = s(real,i(s(fun(cart(real,Q104636),real),i(s(fun(cart(real,Q104636),fun(cart(real,Q104636),real)),dot),s(cart(real,Q104636),X))),s(cart(real,Q104636),Y)))
        & s(real,i(s(fun(cart(real,Q104636),real),i(s(fun(cart(real,Q104636),fun(cart(real,Q104636),real)),dot),s(cart(real,Q104636),X))),s(cart(real,Q104636),X))) = s(real,i(s(fun(cart(real,Q104636),real),i(s(fun(cart(real,Q104636),fun(cart(real,Q104636),real)),dot),s(cart(real,Q104636),Y))),s(cart(real,Q104636),Y))) )
    <=> s(cart(real,Q104636),Y) = s(cart(real,Q104636),X) ) ).

fof(aVECTORu_ADDu_LINV,axiom,
    ! [Q99609,X] : s(cart(real,Q99609),i(s(fun(cart(real,Q99609),cart(real,Q99609)),i(s(fun(cart(real,Q99609),fun(cart(real,Q99609),cart(real,Q99609))),vectoru_add),s(cart(real,Q99609),i(s(fun(cart(real,Q99609),cart(real,Q99609)),vectoru_neg),s(cart(real,Q99609),X))))),s(cart(real,Q99609),X))) = s(cart(real,Q99609),i(s(fun(num,cart(real,Q99609)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aSQRTu_EVENu_POW2,axiom,
    ! [N0] :
      ( p(s(bool,i(s(fun(num,bool),even),s(num,N0))))
     => s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),div),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(num,N0))))) ) ).

fof(aNORMu_CAUCHYu_SCHWARZu_DIV,axiom,
    ! [N,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y))))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct7,axiom,
    ! [Q111056,A5,X] :
      ( p(s(bool,i(s(fun(cart(real,Q111056),bool),i(s(fun(cart(real,Q111056),fun(cart(real,Q111056),bool)),orthogonal),s(cart(real,Q111056),X))),s(cart(real,Q111056),A5))))
     => p(s(bool,i(s(fun(cart(real,Q111056),bool),i(s(fun(cart(real,Q111056),fun(cart(real,Q111056),bool)),orthogonal),s(cart(real,Q111056),i(s(fun(cart(real,Q111056),cart(real,Q111056)),vectoru_neg),s(cart(real,Q111056),X))))),s(cart(real,Q111056),A5)))) ) ).

fof(aVECTORu_MULu_RCANCELu_IMP,axiom,
    ! [Q102535,A5,B0,X] :
      ( ( s(cart(real,Q102535),i(s(fun(cart(real,Q102535),cart(real,Q102535)),i(s(fun(real,fun(cart(real,Q102535),cart(real,Q102535))),r_),s(real,B0))),s(cart(real,Q102535),X))) = s(cart(real,Q102535),i(s(fun(cart(real,Q102535),cart(real,Q102535)),i(s(fun(real,fun(cart(real,Q102535),cart(real,Q102535))),r_),s(real,A5))),s(cart(real,Q102535),X)))
        & s(cart(real,Q102535),i(s(fun(num,cart(real,Q102535)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) != s(cart(real,Q102535),X) )
     => s(real,B0) = s(real,A5) ) ).

fof(aVECTORu_SUBu_RZERO,axiom,
    ! [Q99936] : s(cart(real,Q99936),i(s(fun(cart(real,Q99936),cart(real,Q99936)),i(s(fun(cart(real,Q99936),fun(cart(real,Q99936),cart(real,Q99936))),vectoru_sub),s(cart(real,Q99936),x))),s(cart(real,Q99936),i(s(fun(num,cart(real,Q99936)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q99936),x) ).

fof(aVSUMu_DELETE,axiom,
    ! [Q106054,Q106053,F0,S0,A5] :
      ( ( p(s(bool,i(s(fun(fun(Q106053,bool),bool),finite),s(fun(Q106053,bool),S0))))
        & p(s(bool,i(s(fun(fun(Q106053,bool),bool),i(s(fun(Q106053,fun(fun(Q106053,bool),bool)),in),s(Q106053,A5))),s(fun(Q106053,bool),S0)))) )
     => s(cart(real,Q106054),i(s(fun(fun(Q106053,cart(real,Q106054)),cart(real,Q106054)),i(s(fun(fun(Q106053,bool),fun(fun(Q106053,cart(real,Q106054)),cart(real,Q106054))),vsum),s(fun(Q106053,bool),i(s(fun(Q106053,fun(Q106053,bool)),i(s(fun(fun(Q106053,bool),fun(Q106053,fun(Q106053,bool))),delete),s(fun(Q106053,bool),S0))),s(Q106053,A5))))),s(fun(Q106053,cart(real,Q106054)),F0))) = s(cart(real,Q106054),i(s(fun(cart(real,Q106054),cart(real,Q106054)),i(s(fun(cart(real,Q106054),fun(cart(real,Q106054),cart(real,Q106054))),vectoru_sub),s(cart(real,Q106054),i(s(fun(fun(Q106053,cart(real,Q106054)),cart(real,Q106054)),i(s(fun(fun(Q106053,bool),fun(fun(Q106053,cart(real,Q106054)),cart(real,Q106054))),vsum),s(fun(Q106053,bool),S0))),s(fun(Q106053,cart(real,Q106054)),F0))))),s(cart(real,Q106054),i(s(fun(Q106053,cart(real,Q106054)),F0),s(Q106053,A5))))) ) ).

fof(aFORALLu_REALu_ONE,axiom,
    ! [U_0] :
      ( ( ! [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),X))))
      <=> ! [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),i(s(fun(fun(num,real),cart(real,n10)),lambda),s(fun(num,real),i(s(fun(real,fun(num,real)),U_0),s(real,X)))))))) )
     <= ! [X,I0] : s(real,X) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),U_0),s(real,X))),s(num,I0))) ) ).

fof(aDOTu_BASISu_BASISu_UNEQUAL,axiom,
    ! [Q110508,I0,J0] :
      ( s(num,J0) != s(num,I0)
     => s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q110508),real),i(s(fun(cart(real,Q110508),fun(cart(real,Q110508),real)),dot),s(cart(real,Q110508),i(s(fun(num,cart(real,Q110508)),basis),s(num,I0))))),s(cart(real,Q110508),i(s(fun(num,cart(real,Q110508)),basis),s(num,J0))))) ) ).

fof(aDOTu_NORM,axiom,
    ! [Q104506,X,Y] : s(real,i(s(fun(cart(real,Q104506),real),i(s(fun(cart(real,Q104506),fun(cart(real,Q104506),real)),dot),s(cart(real,Q104506),X))),s(cart(real,Q104506),Y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104506),real),vectoru_norm),s(cart(real,Q104506),i(s(fun(cart(real,Q104506),cart(real,Q104506)),i(s(fun(cart(real,Q104506),fun(cart(real,Q104506),cart(real,Q104506))),vectoru_add),s(cart(real,Q104506),X))),s(cart(real,Q104506),Y))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104506),real),vectoru_norm),s(cart(real,Q104506),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104506),real),vectoru_norm),s(cart(real,Q104506),Y))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ).

fof(avectoru_norm,axiom,
    ! [Q100593,X] : s(real,i(s(fun(cart(real,Q100593),real),vectoru_norm),s(cart(real,Q100593),X))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(cart(real,Q100593),real),i(s(fun(cart(real,Q100593),fun(cart(real,Q100593),real)),dot),s(cart(real,Q100593),X))),s(cart(real,Q100593),X))))) ).

fof(aVECTORu_EQu_LDOT,axiom,
    ! [Q110589,Y,Z0] :
      ( s(cart(real,Q110589),Y) = s(cart(real,Q110589),Z0)
    <=> ! [X] : s(real,i(s(fun(cart(real,Q110589),real),i(s(fun(cart(real,Q110589),fun(cart(real,Q110589),real)),dot),s(cart(real,Q110589),X))),s(cart(real,Q110589),Z0))) = s(real,i(s(fun(cart(real,Q110589),real),i(s(fun(cart(real,Q110589),fun(cart(real,Q110589),real)),dot),s(cart(real,Q110589),X))),s(cart(real,Q110589),Y))) ) ).

fof(aNORMu_TRIANGLEu_LE,axiom,
    ! [Q102893,X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q102893),real),vectoru_norm),s(cart(real,Q102893),i(s(fun(cart(real,Q102893),cart(real,Q102893)),i(s(fun(cart(real,Q102893),fun(cart(real,Q102893),cart(real,Q102893))),vectoru_add),s(cart(real,Q102893),X))),s(cart(real,Q102893),Y))))))),s(real,e0))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q102893),real),vectoru_norm),s(cart(real,Q102893),X))))),s(real,i(s(fun(cart(real,Q102893),real),vectoru_norm),s(cart(real,Q102893),Y))))))),s(real,e0)))) ) ).

fof(aDOTu_NORMu_SUB,axiom,
    ! [Q104610,X,Y] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104610),real),vectoru_norm),s(cart(real,Q104610),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104610),real),vectoru_norm),s(cart(real,Q104610),Y))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q104610),real),vectoru_norm),s(cart(real,Q104610),i(s(fun(cart(real,Q104610),cart(real,Q104610)),i(s(fun(cart(real,Q104610),fun(cart(real,Q104610),cart(real,Q104610))),vectoru_sub),s(cart(real,Q104610),X))),s(cart(real,Q104610),Y))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(real,i(s(fun(cart(real,Q104610),real),i(s(fun(cart(real,Q104610),fun(cart(real,Q104610),real)),dot),s(cart(real,Q104610),X))),s(cart(real,Q104610),Y))) ).

fof(aVSUMu_DIFFS,axiom,
    ! [Q107857,U_0] :
      ( ! [K0] : s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),U_0),s(num,K0))) = s(cart(real,Q107857),i(s(fun(cart(real,Q107857),cart(real,Q107857)),i(s(fun(cart(real,Q107857),fun(cart(real,Q107857),cart(real,Q107857))),vectoru_sub),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),f),s(num,K0))))),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),f),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))
     => ! [M0,N0] : s(cart(real,Q107857),i(s(fun(cart(real,Q107857),cart(real,Q107857)),i(s(fun(cart(real,Q107857),fun(cart(real,Q107857),cart(real,Q107857))),i(s(fun(bool,fun(cart(real,Q107857),fun(cart(real,Q107857),cart(real,Q107857)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,Q107857),i(s(fun(cart(real,Q107857),cart(real,Q107857)),i(s(fun(cart(real,Q107857),fun(cart(real,Q107857),cart(real,Q107857))),vectoru_sub),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),f),s(num,M0))))),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),f),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(cart(real,Q107857),i(s(fun(num,cart(real,Q107857)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q107857),i(s(fun(fun(num,cart(real,Q107857)),cart(real,Q107857)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107857)),cart(real,Q107857))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107857)),U_0))) ) ).

fof(aVECTORu_SUBu_RADD,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))))) ).

fof(aDOTu_BASISu_BASIS,axiom,
    ! [N,I0,J0] :
      ( ? [V] :
          ( ( p(s(bool,V))
          <=> s(num,I0) = s(num,J0) )
          & s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),i(s(fun(bool,fun(real,fun(real,real))),cond),s(bool,V))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,J0))))) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(avectoru_sub,axiom,
    ! [N,U_0] :
      ( ! [X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0)))))
     => ! [X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))))) ) ).

fof(adot,axiom,
    ! [N,U_0] :
      ( ! [X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0)))))
     => ! [X,Y] : s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))))) = s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))) ) ).

fof(aNORMu_TRIANGLEu_SUB,axiom,
    ! [N,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y)))))))))) ).

fof(avsum,axiom,
    ! [A,N,U_1] :
      ( ! [F0,I0,X] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))),s(num,I0))) = s(real,i(s(fun(A,real),i(s(fun(num,fun(A,real)),i(s(fun(fun(A,cart(real,N)),fun(num,fun(A,real))),U_1),s(fun(A,cart(real,N)),F0))),s(num,I0))),s(A,X)))
     => ! [U_0] :
          ( ! [S0,F0] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(fun(A,cart(real,N)),fun(num,real)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),fun(num,real))),U_0),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0)))
         <= ! [S0,F0,I0] : s(real,i(s(fun(fun(A,real),real),i(s(fun(fun(A,bool),fun(fun(A,real),real)),sum),s(fun(A,bool),S0))),s(fun(A,real),i(s(fun(num,fun(A,real)),i(s(fun(fun(A,cart(real,N)),fun(num,fun(A,real))),U_1),s(fun(A,cart(real,N)),F0))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(fun(A,cart(real,N)),fun(num,real)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),fun(num,real))),U_0),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))),s(num,I0))) ) ) ).

fof(aVSUMu_SUB,axiom,
    ! [Q105761,Q105774,U_0] :
      ( ! [F0,G0,X] : s(cart(real,Q105774),i(s(fun(cart(real,Q105774),cart(real,Q105774)),i(s(fun(cart(real,Q105774),fun(cart(real,Q105774),cart(real,Q105774))),vectoru_sub),s(cart(real,Q105774),i(s(fun(Q105761,cart(real,Q105774)),F0),s(Q105761,X))))),s(cart(real,Q105774),i(s(fun(Q105761,cart(real,Q105774)),G0),s(Q105761,X))))) = s(cart(real,Q105774),i(s(fun(Q105761,cart(real,Q105774)),i(s(fun(fun(Q105761,cart(real,Q105774)),fun(Q105761,cart(real,Q105774))),i(s(fun(fun(Q105761,cart(real,Q105774)),fun(fun(Q105761,cart(real,Q105774)),fun(Q105761,cart(real,Q105774)))),U_0),s(fun(Q105761,cart(real,Q105774)),F0))),s(fun(Q105761,cart(real,Q105774)),G0))),s(Q105761,X)))
     => ! [F0,G0,S0] :
          ( p(s(bool,i(s(fun(fun(Q105761,bool),bool),finite),s(fun(Q105761,bool),S0))))
         => s(cart(real,Q105774),i(s(fun(cart(real,Q105774),cart(real,Q105774)),i(s(fun(cart(real,Q105774),fun(cart(real,Q105774),cart(real,Q105774))),vectoru_sub),s(cart(real,Q105774),i(s(fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774)),i(s(fun(fun(Q105761,bool),fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774))),vsum),s(fun(Q105761,bool),S0))),s(fun(Q105761,cart(real,Q105774)),F0))))),s(cart(real,Q105774),i(s(fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774)),i(s(fun(fun(Q105761,bool),fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774))),vsum),s(fun(Q105761,bool),S0))),s(fun(Q105761,cart(real,Q105774)),G0))))) = s(cart(real,Q105774),i(s(fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774)),i(s(fun(fun(Q105761,bool),fun(fun(Q105761,cart(real,Q105774)),cart(real,Q105774))),vsum),s(fun(Q105761,bool),S0))),s(fun(Q105761,cart(real,Q105774)),i(s(fun(fun(Q105761,cart(real,Q105774)),fun(Q105761,cart(real,Q105774))),i(s(fun(fun(Q105761,cart(real,Q105774)),fun(fun(Q105761,cart(real,Q105774)),fun(Q105761,cart(real,Q105774)))),U_0),s(fun(Q105761,cart(real,Q105774)),F0))),s(fun(Q105761,cart(real,Q105774)),G0))))) ) ) ).

fof(aVSUMu_PAIRu_0,axiom,
    ! [N,U_0] :
      ( ! [F0,N0] : s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),U_0),s(fun(num,cart(real,N)),F0))))) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,N0))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,N)),F0)))
     <= ! [F0,I0] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,I0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),t_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,I0))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),U_0),s(fun(num,cart(real,N)),F0))),s(num,I0))) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct3,axiom,
    ! [Q111054,A5,X,Y] :
      ( ( p(s(bool,i(s(fun(cart(real,Q111054),bool),i(s(fun(cart(real,Q111054),fun(cart(real,Q111054),bool)),orthogonal),s(cart(real,Q111054),A5))),s(cart(real,Q111054),X))))
        & p(s(bool,i(s(fun(cart(real,Q111054),bool),i(s(fun(cart(real,Q111054),fun(cart(real,Q111054),bool)),orthogonal),s(cart(real,Q111054),A5))),s(cart(real,Q111054),Y)))) )
     => p(s(bool,i(s(fun(cart(real,Q111054),bool),i(s(fun(cart(real,Q111054),fun(cart(real,Q111054),bool)),orthogonal),s(cart(real,Q111054),A5))),s(cart(real,Q111054),i(s(fun(cart(real,Q111054),cart(real,Q111054)),i(s(fun(cart(real,Q111054),fun(cart(real,Q111054),cart(real,Q111054))),vectoru_add),s(cart(real,Q111054),X))),s(cart(real,Q111054),Y)))))) ) ).

fof(aVECTORu_SUBu_EQ,axiom,
    ! [Q99705,X,Y] :
      ( s(cart(real,Q99705),X) = s(cart(real,Q99705),Y)
    <=> s(cart(real,Q99705),i(s(fun(cart(real,Q99705),cart(real,Q99705)),i(s(fun(cart(real,Q99705),fun(cart(real,Q99705),cart(real,Q99705))),vectoru_sub),s(cart(real,Q99705),X))),s(cart(real,Q99705),Y))) = s(cart(real,Q99705),i(s(fun(num,cart(real,Q99705)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVSUMu_2,axiom,
    ! [Q109622,T0] : s(cart(real,Q109622),i(s(fun(cart(real,Q109622),cart(real,Q109622)),i(s(fun(cart(real,Q109622),fun(cart(real,Q109622),cart(real,Q109622))),vectoru_add),s(cart(real,Q109622),i(s(fun(num,cart(real,Q109622)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(real,Q109622),i(s(fun(num,cart(real,Q109622)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(cart(real,Q109622),i(s(fun(fun(num,cart(real,Q109622)),cart(real,Q109622)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109622)),cart(real,Q109622))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,Q109622)),T0))) ).

fof(aDOTu_RMUL,axiom,
    ! [Q100390,C0,X,Y] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(cart(real,Q100390),real),i(s(fun(cart(real,Q100390),fun(cart(real,Q100390),real)),dot),s(cart(real,Q100390),X))),s(cart(real,Q100390),Y))))) = s(real,i(s(fun(cart(real,Q100390),real),i(s(fun(cart(real,Q100390),fun(cart(real,Q100390),real)),dot),s(cart(real,Q100390),X))),s(cart(real,Q100390),i(s(fun(cart(real,Q100390),cart(real,Q100390)),i(s(fun(real,fun(cart(real,Q100390),cart(real,Q100390))),r_),s(real,C0))),s(cart(real,Q100390),Y))))) ).

fof(aVSUMu_NORMu_LE,axiom,
    ! [N,A,S0,F0,G0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))))),s(real,i(s(fun(fun(A,real),real),i(s(fun(fun(A,bool),fun(fun(A,real),real)),sum),s(fun(A,bool),S0))),s(fun(A,real),G0))))))
     <= ( ! [X] :
            ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))))),s(real,i(s(fun(A,real),G0),s(A,X))))))
           <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0)))) ) ) ).

fof(aDOTu_SYM,axiom,
    ! [Q100205,X,Y] : s(real,i(s(fun(cart(real,Q100205),real),i(s(fun(cart(real,Q100205),fun(cart(real,Q100205),real)),dot),s(cart(real,Q100205),X))),s(cart(real,Q100205),Y))) = s(real,i(s(fun(cart(real,Q100205),real),i(s(fun(cart(real,Q100205),fun(cart(real,Q100205),real)),dot),s(cart(real,Q100205),Y))),s(cart(real,Q100205),X))) ).

fof(aDOTu_RNEG,axiom,
    ! [Q100443,X,Y] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(cart(real,Q100443),real),i(s(fun(cart(real,Q100443),fun(cart(real,Q100443),real)),dot),s(cart(real,Q100443),X))),s(cart(real,Q100443),Y))))) = s(real,i(s(fun(cart(real,Q100443),real),i(s(fun(cart(real,Q100443),fun(cart(real,Q100443),real)),dot),s(cart(real,Q100443),X))),s(cart(real,Q100443),i(s(fun(cart(real,Q100443),cart(real,Q100443)),vectoru_neg),s(cart(real,Q100443),Y))))) ).

fof(aVECTORu_NEGu_NEG,axiom,
    ! [N] : s(cart(real,N),x) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),x))))) ).

fof(aBASISu_COMPONENT,axiom,
    ! [N,K0,I0] :
      ( ? [V] :
          ( s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),i(s(fun(bool,fun(real,fun(real,real))),cond),s(bool,V))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,K0))))),s(num,I0)))
          & ( s(num,I0) = s(num,K0)
          <=> p(s(bool,V)) ) )
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(aDISTu_POSu_LT,axiom,
    ! [Q104851,X,Y] :
      ( s(cart(real,Q104851),X) != s(cart(real,Q104851),Y)
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(prod(cart(real,Q104851),cart(real,Q104851)),real),distance),s(prod(cart(real,Q104851),cart(real,Q104851)),i(s(fun(cart(real,Q104851),prod(cart(real,Q104851),cart(real,Q104851))),i(s(fun(cart(real,Q104851),fun(cart(real,Q104851),prod(cart(real,Q104851),cart(real,Q104851)))),c_),s(cart(real,Q104851),X))),s(cart(real,Q104851),Y)))))))) ) ).

fof(aDISTu_TRIANGLE,axiom,
    ! [N,X,Y,Z0] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),X))),s(cart(real,N),Z0))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),X))),s(cart(real,N),Y))))))),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),Y))),s(cart(real,N),Z0)))))))))) ).

fof(aVECTORu_ADDu_ACu_conjunct0,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),n))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),m))) ).

fof(aDISTu_MUL,axiom,
    ! [Q105190,X,Y,C0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),realu_abs),s(real,C0))))),s(real,i(s(fun(prod(cart(real,Q105190),cart(real,Q105190)),real),distance),s(prod(cart(real,Q105190),cart(real,Q105190)),i(s(fun(cart(real,Q105190),prod(cart(real,Q105190),cart(real,Q105190))),i(s(fun(cart(real,Q105190),fun(cart(real,Q105190),prod(cart(real,Q105190),cart(real,Q105190)))),c_),s(cart(real,Q105190),X))),s(cart(real,Q105190),Y))))))) = s(real,i(s(fun(prod(cart(real,Q105190),cart(real,Q105190)),real),distance),s(prod(cart(real,Q105190),cart(real,Q105190)),i(s(fun(cart(real,Q105190),prod(cart(real,Q105190),cart(real,Q105190))),i(s(fun(cart(real,Q105190),fun(cart(real,Q105190),prod(cart(real,Q105190),cart(real,Q105190)))),c_),s(cart(real,Q105190),i(s(fun(cart(real,Q105190),cart(real,Q105190)),i(s(fun(real,fun(cart(real,Q105190),cart(real,Q105190))),r_),s(real,C0))),s(cart(real,Q105190),X))))),s(cart(real,Q105190),i(s(fun(cart(real,Q105190),cart(real,Q105190)),i(s(fun(real,fun(cart(real,Q105190),cart(real,Q105190))),r_),s(real,C0))),s(cart(real,Q105190),Y))))))) ).

fof(aSQUAREu_CONTINUOUS,axiom,
    ! [X,E0] :
      ( ? [D0] :
          ( ! [Y] :
              ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,Y))),s(real,X))))))),s(real,D0))))
             => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,Y))),s(real,Y))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,X))),s(real,X))))))))),s(real,E0)))) )
          & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,D0)))) )
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0)))) ) ).

fof(aREALu_DIVu_SQRT,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,X))))) = s(real,i(s(fun(real,real),sqrt),s(real,X))) ) ).

fof(aVSUMu_ADDu_NUMSEG,axiom,
    ! [Q107272,U_0] :
      ( ! [F0,G0,M0,N0] : s(cart(real,Q107272),i(s(fun(fun(num,cart(real,Q107272)),cart(real,Q107272)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107272)),cart(real,Q107272))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107272)),i(s(fun(fun(num,cart(real,Q107272)),fun(num,cart(real,Q107272))),i(s(fun(fun(num,cart(real,Q107272)),fun(fun(num,cart(real,Q107272)),fun(num,cart(real,Q107272)))),U_0),s(fun(num,cart(real,Q107272)),F0))),s(fun(num,cart(real,Q107272)),G0))))) = s(cart(real,Q107272),i(s(fun(cart(real,Q107272),cart(real,Q107272)),i(s(fun(cart(real,Q107272),fun(cart(real,Q107272),cart(real,Q107272))),vectoru_add),s(cart(real,Q107272),i(s(fun(fun(num,cart(real,Q107272)),cart(real,Q107272)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107272)),cart(real,Q107272))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107272)),F0))))),s(cart(real,Q107272),i(s(fun(fun(num,cart(real,Q107272)),cart(real,Q107272)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107272)),cart(real,Q107272))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107272)),G0)))))
     <= ! [F0,G0,I0] : s(cart(real,Q107272),i(s(fun(num,cart(real,Q107272)),i(s(fun(fun(num,cart(real,Q107272)),fun(num,cart(real,Q107272))),i(s(fun(fun(num,cart(real,Q107272)),fun(fun(num,cart(real,Q107272)),fun(num,cart(real,Q107272)))),U_0),s(fun(num,cart(real,Q107272)),F0))),s(fun(num,cart(real,Q107272)),G0))),s(num,I0))) = s(cart(real,Q107272),i(s(fun(cart(real,Q107272),cart(real,Q107272)),i(s(fun(cart(real,Q107272),fun(cart(real,Q107272),cart(real,Q107272))),vectoru_add),s(cart(real,Q107272),i(s(fun(num,cart(real,Q107272)),F0),s(num,I0))))),s(cart(real,Q107272),i(s(fun(num,cart(real,Q107272)),G0),s(num,I0))))) ) ).

fof(aVSUMu_IMAGEu_GEN,axiom,
    ! [B,A,Q107061,U_1] :
      ( ! [S0,F0,Y,GENR_PVARR_281] :
          ( ? [X,V] :
              ( p(s(bool,i(s(fun(A,bool),i(s(fun(bool,fun(A,bool)),i(s(fun(A,fun(bool,fun(A,bool))),setspec),s(A,GENR_PVARR_281))),s(bool,V))),s(A,X))))
              & ( p(s(bool,V))
              <=> ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
                  & s(B,Y) = s(B,i(s(fun(A,B),F0),s(A,X))) ) ) )
        <=> p(s(bool,i(s(fun(A,bool),i(s(fun(B,fun(A,bool)),i(s(fun(fun(A,B),fun(B,fun(A,bool))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(B,fun(A,bool)))),U_1),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(B,Y))),s(A,GENR_PVARR_281)))) )
     => ! [U_0] :
          ( ! [S0,F0,G0,Y] : s(cart(real,Q107061),i(s(fun(fun(A,cart(real,Q107061)),cart(real,Q107061)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107061)),cart(real,Q107061))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),gspec),s(fun(A,bool),i(s(fun(B,fun(A,bool)),i(s(fun(fun(A,B),fun(B,fun(A,bool))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(B,fun(A,bool)))),U_1),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(B,Y))))))),s(fun(A,cart(real,Q107061)),G0))) = s(cart(real,Q107061),i(s(fun(B,cart(real,Q107061)),i(s(fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061))),i(s(fun(fun(A,B),fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061)))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061))))),U_0),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(fun(A,cart(real,Q107061)),G0))),s(B,Y)))
         => ! [F0,G0,S0] :
              ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0))))
             => s(cart(real,Q107061),i(s(fun(fun(A,cart(real,Q107061)),cart(real,Q107061)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q107061)),cart(real,Q107061))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q107061)),G0))) = s(cart(real,Q107061),i(s(fun(fun(B,cart(real,Q107061)),cart(real,Q107061)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,Q107061)),cart(real,Q107061))),vsum),s(fun(B,bool),i(s(fun(fun(A,bool),fun(B,bool)),i(s(fun(fun(A,B),fun(fun(A,bool),fun(B,bool))),image),s(fun(A,B),F0))),s(fun(A,bool),S0))))),s(fun(B,cart(real,Q107061)),i(s(fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061))),i(s(fun(fun(A,B),fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061)))),i(s(fun(fun(A,bool),fun(fun(A,B),fun(fun(A,cart(real,Q107061)),fun(B,cart(real,Q107061))))),U_0),s(fun(A,bool),S0))),s(fun(A,B),F0))),s(fun(A,cart(real,Q107061)),G0))))) ) ) ) ).

fof(aDOTu_1,axiom,
    s(real,i(s(fun(cart(real,n10),real),i(s(fun(cart(real,n10),fun(cart(real,n10),real)),dot),s(cart(real,n10),x))),s(cart(real,n10),y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ).

fof(avec,axiom,
    ! [N,U_0] :
      ( ! [N0,I0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,N0))),s(num,I0))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,N0)))
     => ! [N0] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,N0))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,N0))) ) ).

fof(aVECTORu_SUBu_ADD,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),y))) = s(cart(real,N),x) ).

fof(aVSUMu_UNIONu_RZERO,axiom,
    ! [A,N,F0,U,V] :
      ( s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),union),s(fun(A,bool),U))),s(fun(A,bool),V))))),s(fun(A,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),U))),s(fun(A,cart(real,N)),F0)))
     <= ( ! [X] :
            ( s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X)))
           <= ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),V))))
              & ~ p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),U)))) ) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),U)))) ) ) ).

fof(aDISTu_LEu_0,axiom,
    ! [Q105293,X,Y] :
      ( s(cart(real,Q105293),Y) = s(cart(real,Q105293),X)
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,Q105293),cart(real,Q105293)),real),distance),s(prod(cart(real,Q105293),cart(real,Q105293)),i(s(fun(cart(real,Q105293),prod(cart(real,Q105293),cart(real,Q105293))),i(s(fun(cart(real,Q105293),fun(cart(real,Q105293),prod(cart(real,Q105293),cart(real,Q105293)))),c_),s(cart(real,Q105293),X))),s(cart(real,Q105293),Y))))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))) ) ).

fof(aHypermapo_THREE,axiom,
    s(num,i(s(fun(num,num),suc),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aSQRTu_WORKS,axiom,
    ! [X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X))))))
        & s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,X) )
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aVSUMu_OFFSET,axiom,
    ! [Q108605,U_0] :
      ( ! [F0,M0,P0] : s(cart(real,Q108605),i(s(fun(fun(num,cart(real,Q108605)),cart(real,Q108605)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108605)),cart(real,Q108605))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,n))))),s(fun(num,cart(real,Q108605)),i(s(fun(num,fun(num,cart(real,Q108605))),i(s(fun(fun(num,cart(real,Q108605)),fun(num,fun(num,cart(real,Q108605)))),U_0),s(fun(num,cart(real,Q108605)),F0))),s(num,P0))))) = s(cart(real,Q108605),i(s(fun(fun(num,cart(real,Q108605)),cart(real,Q108605)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108605)),cart(real,Q108605))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,M0))),s(num,P0))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,n))),s(num,P0))))))),s(fun(num,cart(real,Q108605)),F0)))
     <= ! [F0,P0,I0] : s(cart(real,Q108605),i(s(fun(num,cart(real,Q108605)),i(s(fun(num,fun(num,cart(real,Q108605))),i(s(fun(fun(num,cart(real,Q108605)),fun(num,fun(num,cart(real,Q108605)))),U_0),s(fun(num,cart(real,Q108605)),F0))),s(num,P0))),s(num,I0))) = s(cart(real,Q108605),i(s(fun(num,cart(real,Q108605)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,I0))),s(num,P0))))) ) ).

fof(aNORMu_LEu_0,axiom,
    ! [Q102367,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q102367),real),vectoru_norm),s(cart(real,Q102367),X))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))))
    <=> s(cart(real,Q102367),X) = s(cart(real,Q102367),i(s(fun(num,cart(real,Q102367)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aDOTu_LADD,axiom,
    ! [Q100240,X,Y,Z0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),X))),s(cart(real,Q100240),Z0))))),s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),Y))),s(cart(real,Q100240),Z0))))) = s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),i(s(fun(cart(real,Q100240),cart(real,Q100240)),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),cart(real,Q100240))),vectoru_add),s(cart(real,Q100240),X))),s(cart(real,Q100240),Y))))),s(cart(real,Q100240),Z0))) ).

fof(aREALu_LEu_LSQRT,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y)))) ) ).

fof(aVSUMu_INJECTION,axiom,
    ! [Q109287,Q109292,F0,P0,S0] :
      ( s(cart(real,Q109292),i(s(fun(fun(Q109287,cart(real,Q109292)),cart(real,Q109292)),i(s(fun(fun(Q109287,bool),fun(fun(Q109287,cart(real,Q109292)),cart(real,Q109292))),vsum),s(fun(Q109287,bool),S0))),s(fun(Q109287,cart(real,Q109292)),F0))) = s(cart(real,Q109292),i(s(fun(fun(Q109287,cart(real,Q109292)),cart(real,Q109292)),i(s(fun(fun(Q109287,bool),fun(fun(Q109287,cart(real,Q109292)),cart(real,Q109292))),vsum),s(fun(Q109287,bool),S0))),s(fun(Q109287,cart(real,Q109292)),i(s(fun(fun(Q109287,Q109287),fun(Q109287,cart(real,Q109292))),i(s(fun(fun(Q109287,cart(real,Q109292)),fun(fun(Q109287,Q109287),fun(Q109287,cart(real,Q109292)))),o),s(fun(Q109287,cart(real,Q109292)),F0))),s(fun(Q109287,Q109287),P0)))))
     <= ( ! [X,Y] :
            ( ( p(s(bool,i(s(fun(fun(Q109287,bool),bool),i(s(fun(Q109287,fun(fun(Q109287,bool),bool)),in),s(Q109287,Y))),s(fun(Q109287,bool),S0))))
              & s(Q109287,i(s(fun(Q109287,Q109287),P0),s(Q109287,X))) = s(Q109287,i(s(fun(Q109287,Q109287),P0),s(Q109287,Y)))
              & p(s(bool,i(s(fun(fun(Q109287,bool),bool),i(s(fun(Q109287,fun(fun(Q109287,bool),bool)),in),s(Q109287,X))),s(fun(Q109287,bool),S0)))) )
           => s(Q109287,X) = s(Q109287,Y) )
        & ! [X] :
            ( p(s(bool,i(s(fun(fun(Q109287,bool),bool),i(s(fun(Q109287,fun(fun(Q109287,bool),bool)),in),s(Q109287,i(s(fun(Q109287,Q109287),P0),s(Q109287,X))))),s(fun(Q109287,bool),S0))))
           <= p(s(bool,i(s(fun(fun(Q109287,bool),bool),i(s(fun(Q109287,fun(fun(Q109287,bool),bool)),in),s(Q109287,X))),s(fun(Q109287,bool),S0)))) )
        & p(s(bool,i(s(fun(fun(Q109287,bool),bool),finite),s(fun(Q109287,bool),S0)))) ) ) ).

fof(aVSUMu_COMPONENT,axiom,
    ! [A,N,U_0] :
      ( ! [F0,I0,X] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))))),s(num,I0))) = s(real,i(s(fun(A,real),i(s(fun(num,fun(A,real)),i(s(fun(fun(A,cart(real,N)),fun(num,fun(A,real))),U_0),s(fun(A,cart(real,N)),F0))),s(num,I0))),s(A,X)))
     => ! [S0,F0,I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
         => s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))),s(num,I0))) = s(real,i(s(fun(fun(A,real),real),i(s(fun(fun(A,bool),fun(fun(A,real),real)),sum),s(fun(A,bool),S0))),s(fun(A,real),i(s(fun(num,fun(A,real)),i(s(fun(fun(A,cart(real,N)),fun(num,fun(A,real))),U_0),s(fun(A,cart(real,N)),F0))),s(num,I0))))) ) ) ).

fof(aVSUMu_DIFF,axiom,
    ! [Q105987,Q106012,F0,S0,T0] :
      ( ( p(s(bool,i(s(fun(fun(Q105987,bool),bool),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,bool),bool)),subset),s(fun(Q105987,bool),T0))),s(fun(Q105987,bool),S0))))
        & p(s(bool,i(s(fun(fun(Q105987,bool),bool),finite),s(fun(Q105987,bool),S0)))) )
     => s(cart(real,Q106012),i(s(fun(cart(real,Q106012),cart(real,Q106012)),i(s(fun(cart(real,Q106012),fun(cart(real,Q106012),cart(real,Q106012))),vectoru_sub),s(cart(real,Q106012),i(s(fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012)),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012))),vsum),s(fun(Q105987,bool),S0))),s(fun(Q105987,cart(real,Q106012)),F0))))),s(cart(real,Q106012),i(s(fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012)),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012))),vsum),s(fun(Q105987,bool),T0))),s(fun(Q105987,cart(real,Q106012)),F0))))) = s(cart(real,Q106012),i(s(fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012)),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,cart(real,Q106012)),cart(real,Q106012))),vsum),s(fun(Q105987,bool),i(s(fun(fun(Q105987,bool),fun(Q105987,bool)),i(s(fun(fun(Q105987,bool),fun(fun(Q105987,bool),fun(Q105987,bool))),diff),s(fun(Q105987,bool),S0))),s(fun(Q105987,bool),T0))))),s(fun(Q105987,cart(real,Q106012)),F0))) ) ).

fof(aVECTORu_ADDu_SUB,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),x))) = s(cart(real,N),y) ).

fof(aFORALLu_3,axiom,
    ! [P0] :
      ( ( p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) )
    <=> ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
         => p(s(bool,i(s(fun(num,bool),P0),s(num,I0)))) ) ) ).

fof(aVSUMu_CLAUSESu_LEFT,axiom,
    ! [Q107795,F0,M0,N0] :
      ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))
     => s(cart(real,Q107795),i(s(fun(cart(real,Q107795),cart(real,Q107795)),i(s(fun(cart(real,Q107795),fun(cart(real,Q107795),cart(real,Q107795))),vectoru_add),s(cart(real,Q107795),i(s(fun(num,cart(real,Q107795)),F0),s(num,M0))))),s(cart(real,Q107795),i(s(fun(fun(num,cart(real,Q107795)),cart(real,Q107795)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107795)),cart(real,Q107795))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,M0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,N0))))),s(fun(num,cart(real,Q107795)),F0))))) = s(cart(real,Q107795),i(s(fun(fun(num,cart(real,Q107795)),cart(real,Q107795)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107795)),cart(real,Q107795))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107795)),F0))) ) ).

fof(aVSUMu_COMBINEu_R,axiom,
    ! [Q109210,F0,M0,N0,P0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,N0))),s(num,P0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) )
     => s(cart(real,Q109210),i(s(fun(fun(num,cart(real,Q109210)),cart(real,Q109210)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109210)),cart(real,Q109210))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,P0))))),s(fun(num,cart(real,Q109210)),F0))) = s(cart(real,Q109210),i(s(fun(cart(real,Q109210),cart(real,Q109210)),i(s(fun(cart(real,Q109210),fun(cart(real,Q109210),cart(real,Q109210))),vectoru_add),s(cart(real,Q109210),i(s(fun(fun(num,cart(real,Q109210)),cart(real,Q109210)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109210)),cart(real,Q109210))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q109210)),F0))))),s(cart(real,Q109210),i(s(fun(fun(num,cart(real,Q109210)),cart(real,Q109210)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109210)),cart(real,Q109210))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,P0))))),s(fun(num,cart(real,Q109210)),F0))))) ) ).

fof(aVECTORu_MULu_LID,axiom,
    ! [Q99745,X] : s(cart(real,Q99745),X) = s(cart(real,Q99745),i(s(fun(cart(real,Q99745),cart(real,Q99745)),i(s(fun(real,fun(cart(real,Q99745),cart(real,Q99745))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(real,Q99745),X))) ).

fof(aVSUMu_IMAGE,axiom,
    ! [Q105914,Q105918,Q105892,F0,G0,S0] :
      ( ( ! [X,Y] :
            ( ( s(Q105892,i(s(fun(Q105918,Q105892),F0),s(Q105918,Y))) = s(Q105892,i(s(fun(Q105918,Q105892),F0),s(Q105918,X)))
              & p(s(bool,i(s(fun(fun(Q105918,bool),bool),i(s(fun(Q105918,fun(fun(Q105918,bool),bool)),in),s(Q105918,Y))),s(fun(Q105918,bool),S0))))
              & p(s(bool,i(s(fun(fun(Q105918,bool),bool),i(s(fun(Q105918,fun(fun(Q105918,bool),bool)),in),s(Q105918,X))),s(fun(Q105918,bool),S0)))) )
           => s(Q105918,X) = s(Q105918,Y) )
        & p(s(bool,i(s(fun(fun(Q105918,bool),bool),finite),s(fun(Q105918,bool),S0)))) )
     => s(cart(real,Q105914),i(s(fun(fun(Q105892,cart(real,Q105914)),cart(real,Q105914)),i(s(fun(fun(Q105892,bool),fun(fun(Q105892,cart(real,Q105914)),cart(real,Q105914))),vsum),s(fun(Q105892,bool),i(s(fun(fun(Q105918,bool),fun(Q105892,bool)),i(s(fun(fun(Q105918,Q105892),fun(fun(Q105918,bool),fun(Q105892,bool))),image),s(fun(Q105918,Q105892),F0))),s(fun(Q105918,bool),S0))))),s(fun(Q105892,cart(real,Q105914)),G0))) = s(cart(real,Q105914),i(s(fun(fun(Q105918,cart(real,Q105914)),cart(real,Q105914)),i(s(fun(fun(Q105918,bool),fun(fun(Q105918,cart(real,Q105914)),cart(real,Q105914))),vsum),s(fun(Q105918,bool),S0))),s(fun(Q105918,cart(real,Q105914)),i(s(fun(fun(Q105918,Q105892),fun(Q105918,cart(real,Q105914))),i(s(fun(fun(Q105892,cart(real,Q105914)),fun(fun(Q105918,Q105892),fun(Q105918,cart(real,Q105914)))),o),s(fun(Q105892,cart(real,Q105914)),G0))),s(fun(Q105918,Q105892),F0))))) ) ).

fof(aBASISu_EXPANSION,axiom,
    ! [N,U_0] :
      ( ! [X] : s(cart(real,N),X) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,cart(real,N)),i(s(fun(cart(real,N),fun(num,cart(real,N))),U_0),s(cart(real,N),X)))))
     <= ! [X,I0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(cart(real,N),fun(num,cart(real,N))),U_0),s(cart(real,N),X))),s(num,I0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))))) ) ).

fof(aVECTORu_EQu_RDOT,axiom,
    ! [Q110616,X,Y] :
      ( ! [Z0] : s(real,i(s(fun(cart(real,Q110616),real),i(s(fun(cart(real,Q110616),fun(cart(real,Q110616),real)),dot),s(cart(real,Q110616),Y))),s(cart(real,Q110616),Z0))) = s(real,i(s(fun(cart(real,Q110616),real),i(s(fun(cart(real,Q110616),fun(cart(real,Q110616),real)),dot),s(cart(real,Q110616),X))),s(cart(real,Q110616),Z0)))
    <=> s(cart(real,Q110616),X) = s(cart(real,Q110616),Y) ) ).

fof(aNEUTRALu_VECTORu_ADD,axiom,
    ! [N] : s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),i(s(fun(fun(cart(real,N),fun(cart(real,N),cart(real,N))),cart(real,N)),neutral),s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add))) ).

fof(aVECTORu_SUBu_RDISTRIB,axiom,
    ! [Q99877] : s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,a0))),s(real,b0))))),s(cart(real,Q99877),x))) = s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(cart(real,Q99877),fun(cart(real,Q99877),cart(real,Q99877))),vectoru_sub),s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,a0))),s(cart(real,Q99877),x))))),s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,b0))),s(cart(real,Q99877),x))))) ).

fof(aVSUMu_3,axiom,
    ! [Q109650,T0] : s(cart(real,Q109650),i(s(fun(cart(real,Q109650),cart(real,Q109650)),i(s(fun(cart(real,Q109650),fun(cart(real,Q109650),cart(real,Q109650))),vectoru_add),s(cart(real,Q109650),i(s(fun(num,cart(real,Q109650)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(real,Q109650),i(s(fun(cart(real,Q109650),cart(real,Q109650)),i(s(fun(cart(real,Q109650),fun(cart(real,Q109650),cart(real,Q109650))),vectoru_add),s(cart(real,Q109650),i(s(fun(num,cart(real,Q109650)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q109650),i(s(fun(num,cart(real,Q109650)),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) = s(cart(real,Q109650),i(s(fun(fun(num,cart(real,Q109650)),cart(real,Q109650)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109650)),cart(real,Q109650))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,cart(real,Q109650)),T0))) ).

fof(aVSUMu_DELTA,axiom,
    ! [Q107219,Q107222,U_0] :
      ( ! [A5,X] :
        ? [V] :
          ( s(cart(real,Q107222),i(s(fun(Q107219,cart(real,Q107222)),i(s(fun(Q107219,fun(Q107219,cart(real,Q107222))),U_0),s(Q107219,A5))),s(Q107219,X))) = s(cart(real,Q107222),i(s(fun(cart(real,Q107222),cart(real,Q107222)),i(s(fun(cart(real,Q107222),fun(cart(real,Q107222),cart(real,Q107222))),i(s(fun(bool,fun(cart(real,Q107222),fun(cart(real,Q107222),cart(real,Q107222)))),cond),s(bool,V))),s(cart(real,Q107222),b0))),s(cart(real,Q107222),i(s(fun(num,cart(real,Q107222)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))
          & ( p(s(bool,V))
          <=> s(Q107219,X) = s(Q107219,A5) ) )
     => ! [S0,A5] : s(cart(real,Q107222),i(s(fun(cart(real,Q107222),cart(real,Q107222)),i(s(fun(cart(real,Q107222),fun(cart(real,Q107222),cart(real,Q107222))),i(s(fun(bool,fun(cart(real,Q107222),fun(cart(real,Q107222),cart(real,Q107222)))),cond),s(bool,i(s(fun(fun(Q107219,bool),bool),i(s(fun(Q107219,fun(fun(Q107219,bool),bool)),in),s(Q107219,A5))),s(fun(Q107219,bool),S0))))),s(cart(real,Q107222),b0))),s(cart(real,Q107222),i(s(fun(num,cart(real,Q107222)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q107222),i(s(fun(fun(Q107219,cart(real,Q107222)),cart(real,Q107222)),i(s(fun(fun(Q107219,bool),fun(fun(Q107219,cart(real,Q107222)),cart(real,Q107222))),vsum),s(fun(Q107219,bool),S0))),s(fun(Q107219,cart(real,Q107222)),i(s(fun(Q107219,fun(Q107219,cart(real,Q107222))),U_0),s(Q107219,A5))))) ) ).

fof(aNORMu_0,axiom,
    ! [Q102146] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102146),real),vectoru_norm),s(cart(real,Q102146),i(s(fun(num,cart(real,Q102146)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aVECTORu_MULu_EQu_0,axiom,
    ! [Q102400,A5,X] :
      ( s(cart(real,Q102400),i(s(fun(cart(real,Q102400),cart(real,Q102400)),i(s(fun(real,fun(cart(real,Q102400),cart(real,Q102400))),r_),s(real,A5))),s(cart(real,Q102400),X))) = s(cart(real,Q102400),i(s(fun(num,cart(real,Q102400)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,A5)
        | s(cart(real,Q102400),i(s(fun(num,cart(real,Q102400)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q102400),X) ) ) ).

fof(aNORMu_EQu_0u_DOT,axiom,
    ! [Q102254,X] :
      ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102254),real),vectoru_norm),s(cart(real,Q102254),X)))
    <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102254),real),i(s(fun(cart(real,Q102254),fun(cart(real,Q102254),real)),dot),s(cart(real,Q102254),X))),s(cart(real,Q102254),X))) ) ).

fof(aVECTORu_MULu_COMPONENT,axiom,
    ! [N,C0,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,C0))),s(cart(real,N),X))))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) ).

fof(aNORMu_MUL,axiom,
    ! [Q102231,A5,X] : s(real,i(s(fun(cart(real,Q102231),real),vectoru_norm),s(cart(real,Q102231),i(s(fun(cart(real,Q102231),cart(real,Q102231)),i(s(fun(real,fun(cart(real,Q102231),cart(real,Q102231))),r_),s(real,A5))),s(cart(real,Q102231),X))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),realu_abs),s(real,A5))))),s(real,i(s(fun(cart(real,Q102231),real),vectoru_norm),s(cart(real,Q102231),X))))) ).

fof(aVSUMu_NORM,axiom,
    ! [Q106640,Q106632,U_0] :
      ( ! [F0,S0] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q106632),real),vectoru_norm),s(cart(real,Q106632),i(s(fun(fun(Q106640,cart(real,Q106632)),cart(real,Q106632)),i(s(fun(fun(Q106640,bool),fun(fun(Q106640,cart(real,Q106632)),cart(real,Q106632))),vsum),s(fun(Q106640,bool),S0))),s(fun(Q106640,cart(real,Q106632)),F0))))))),s(real,i(s(fun(fun(Q106640,real),real),i(s(fun(fun(Q106640,bool),fun(fun(Q106640,real),real)),sum),s(fun(Q106640,bool),S0))),s(fun(Q106640,real),i(s(fun(fun(Q106640,cart(real,Q106632)),fun(Q106640,real)),U_0),s(fun(Q106640,cart(real,Q106632)),F0))))))))
         <= p(s(bool,i(s(fun(fun(Q106640,bool),bool),finite),s(fun(Q106640,bool),S0)))) )
     <= ! [F0,X] : s(real,i(s(fun(Q106640,real),i(s(fun(fun(Q106640,cart(real,Q106632)),fun(Q106640,real)),U_0),s(fun(Q106640,cart(real,Q106632)),F0))),s(Q106640,X))) = s(real,i(s(fun(cart(real,Q106632),real),vectoru_norm),s(cart(real,Q106632),i(s(fun(Q106640,cart(real,Q106632)),F0),s(Q106640,X))))) ) ).

fof(aVECTORu_CHOOSEu_SIZE,axiom,
    ! [N,C0] :
      ( ? [X] : s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))) = s(real,C0)
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,C0)))) ) ).

fof(aDISTu_TRIANGLEu_LT,axiom,
    ! [Q104964,X,Y,Z0,E0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,Q104964),cart(real,Q104964)),real),distance),s(prod(cart(real,Q104964),cart(real,Q104964)),i(s(fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964))),i(s(fun(cart(real,Q104964),fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964)))),c_),s(cart(real,Q104964),X))),s(cart(real,Q104964),Y))))))),s(real,E0))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,Q104964),cart(real,Q104964)),real),distance),s(prod(cart(real,Q104964),cart(real,Q104964)),i(s(fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964))),i(s(fun(cart(real,Q104964),fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964)))),c_),s(cart(real,Q104964),X))),s(cart(real,Q104964),Z0))))))),s(real,i(s(fun(prod(cart(real,Q104964),cart(real,Q104964)),real),distance),s(prod(cart(real,Q104964),cart(real,Q104964)),i(s(fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964))),i(s(fun(cart(real,Q104964),fun(cart(real,Q104964),prod(cart(real,Q104964),cart(real,Q104964)))),c_),s(cart(real,Q104964),Y))),s(cart(real,Q104964),Z0))))))))),s(real,E0)))) ) ).

fof(aVECTORu_SUBu_LDISTRIB,axiom,
    ! [Q99834] : s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(cart(real,Q99834),fun(cart(real,Q99834),cart(real,Q99834))),vectoru_sub),s(cart(real,Q99834),x))),s(cart(real,Q99834),y))))) = s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(cart(real,Q99834),fun(cart(real,Q99834),cart(real,Q99834))),vectoru_sub),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),x))))),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),y))))) ).

fof(aORTHOGONALu_CLAUSESu_conjunct0,axiom,
    ! [Q110833,A5] : p(s(bool,i(s(fun(cart(real,Q110833),bool),i(s(fun(cart(real,Q110833),fun(cart(real,Q110833),bool)),orthogonal),s(cart(real,Q110833),A5))),s(cart(real,Q110833),i(s(fun(num,cart(real,Q110833)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))) ).

fof(aDISTu_NZ,axiom,
    ! [Q104879,X,Y] :
      ( s(cart(real,Q104879),X) != s(cart(real,Q104879),Y)
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(prod(cart(real,Q104879),cart(real,Q104879)),real),distance),s(prod(cart(real,Q104879),cart(real,Q104879)),i(s(fun(cart(real,Q104879),prod(cart(real,Q104879),cart(real,Q104879))),i(s(fun(cart(real,Q104879),fun(cart(real,Q104879),prod(cart(real,Q104879),cart(real,Q104879)))),c_),s(cart(real,Q104879),X))),s(cart(real,Q104879),Y)))))))) ) ).

fof(aVECTORu_ADDu_SYM,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),Y))),s(cart(real,N),X))) ).

fof(aVSUMu_NORMu_TRIANGLE,axiom,
    ! [Q106736,Q106745,U_0] :
      ( ! [F0,A5] : s(real,i(s(fun(Q106736,real),i(s(fun(fun(Q106736,cart(real,Q106745)),fun(Q106736,real)),U_0),s(fun(Q106736,cart(real,Q106745)),F0))),s(Q106736,A5))) = s(real,i(s(fun(cart(real,Q106745),real),vectoru_norm),s(cart(real,Q106745),i(s(fun(Q106736,cart(real,Q106745)),F0),s(Q106736,A5)))))
     => ! [S0,F0,B0] :
          ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(fun(Q106736,real),real),i(s(fun(fun(Q106736,bool),fun(fun(Q106736,real),real)),sum),s(fun(Q106736,bool),S0))),s(fun(Q106736,real),i(s(fun(fun(Q106736,cart(real,Q106745)),fun(Q106736,real)),U_0),s(fun(Q106736,cart(real,Q106745)),F0))))))),s(real,B0))))
            & p(s(bool,i(s(fun(fun(Q106736,bool),bool),finite),s(fun(Q106736,bool),S0)))) )
         => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q106745),real),vectoru_norm),s(cart(real,Q106745),i(s(fun(fun(Q106736,cart(real,Q106745)),cart(real,Q106745)),i(s(fun(fun(Q106736,bool),fun(fun(Q106736,cart(real,Q106745)),cart(real,Q106745))),vsum),s(fun(Q106736,bool),S0))),s(fun(Q106736,cart(real,Q106745)),F0))))))),s(real,B0)))) ) ) ).

fof(aORTHOGONALu_REFL,axiom,
    ! [Q110667,X] :
      ( s(cart(real,Q110667),i(s(fun(num,cart(real,Q110667)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q110667),X)
    <=> p(s(bool,i(s(fun(cart(real,Q110667),bool),i(s(fun(cart(real,Q110667),fun(cart(real,Q110667),bool)),orthogonal),s(cart(real,Q110667),X))),s(cart(real,Q110667),X)))) ) ).

fof(aVECTORu_ADDu_ACu_conjunct1,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),n))))),s(cart(real,N),p1))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),p1))))) ).

fof(aVSUMu_EQu_0,axiom,
    ! [A,Q105605,F0,S0] :
      ( ! [X] :
          ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
         => s(cart(real,Q105605),i(s(fun(A,cart(real,Q105605)),F0),s(A,X))) = s(cart(real,Q105605),i(s(fun(num,cart(real,Q105605)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
     => s(cart(real,Q105605),i(s(fun(fun(A,cart(real,Q105605)),cart(real,Q105605)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,Q105605)),cart(real,Q105605))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,Q105605)),F0))) = s(cart(real,Q105605),i(s(fun(num,cart(real,Q105605)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVSUMu_EQu_GENERALu_INVERSES,axiom,
    ! [A,B,N,S0,T0,F0,G0,H0,K0] :
      ( ( ! [X] :
            ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0))))
           => ( s(cart(real,N),i(s(fun(B,cart(real,N)),G0),s(B,i(s(fun(A,B),H0),s(A,X))))) = s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X)))
              & s(A,i(s(fun(B,A),K0),s(B,i(s(fun(A,B),H0),s(A,X))))) = s(A,X)
              & p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,i(s(fun(A,B),H0),s(A,X))))),s(fun(B,bool),T0)))) ) )
        & ! [Y] :
            ( ( s(B,i(s(fun(A,B),H0),s(A,i(s(fun(B,A),K0),s(B,Y))))) = s(B,Y)
              & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,i(s(fun(B,A),K0),s(B,Y))))),s(fun(A,bool),S0)))) )
           <= p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,Y))),s(fun(B,bool),T0)))) ) )
     => s(cart(real,N),i(s(fun(fun(B,cart(real,N)),cart(real,N)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,N)),cart(real,N))),vsum),s(fun(B,bool),T0))),s(fun(B,cart(real,N)),G0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))) ) ).

fof(aNORMu_LEu_SQUARE,axiom,
    ! [N,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0))))
    <=> ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,a0))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) ) ) ).

fof(aSQRTu_LTu_0,axiom,
    ! [X] :
      ( s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X))))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aVSUMu_RESTRICTu_SET,axiom,
    ! [Q106500,Q106502,U_1] :
      ( ! [U_0] :
          ( ! [S0,P0,GENR_PVARR_278] :
              ( p(s(bool,i(s(fun(Q106500,bool),i(s(fun(fun(Q106500,bool),fun(Q106500,bool)),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,bool),fun(Q106500,bool))),U_0),s(fun(Q106500,bool),S0))),s(fun(Q106500,bool),P0))),s(Q106500,GENR_PVARR_278))))
            <=> ? [X,V] :
                  ( p(s(bool,i(s(fun(Q106500,bool),i(s(fun(bool,fun(Q106500,bool)),i(s(fun(Q106500,fun(bool,fun(Q106500,bool))),setspec),s(Q106500,GENR_PVARR_278))),s(bool,V))),s(Q106500,X))))
                  & ( p(s(bool,V))
                  <=> ( p(s(bool,i(s(fun(fun(Q106500,bool),bool),i(s(fun(Q106500,fun(fun(Q106500,bool),bool)),in),s(Q106500,X))),s(fun(Q106500,bool),S0))))
                      & p(s(bool,i(s(fun(Q106500,bool),P0),s(Q106500,X)))) ) ) ) )
         => ! [P0,S0,F0] : s(cart(real,Q106502),i(s(fun(fun(Q106500,cart(real,Q106502)),cart(real,Q106502)),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,cart(real,Q106502)),cart(real,Q106502))),vsum),s(fun(Q106500,bool),i(s(fun(fun(Q106500,bool),fun(Q106500,bool)),gspec),s(fun(Q106500,bool),i(s(fun(fun(Q106500,bool),fun(Q106500,bool)),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,bool),fun(Q106500,bool))),U_0),s(fun(Q106500,bool),S0))),s(fun(Q106500,bool),P0))))))),s(fun(Q106500,cart(real,Q106502)),F0))) = s(cart(real,Q106502),i(s(fun(fun(Q106500,cart(real,Q106502)),cart(real,Q106502)),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,cart(real,Q106502)),cart(real,Q106502))),vsum),s(fun(Q106500,bool),S0))),s(fun(Q106500,cart(real,Q106502)),i(s(fun(fun(Q106500,cart(real,Q106502)),fun(Q106500,cart(real,Q106502))),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,cart(real,Q106502)),fun(Q106500,cart(real,Q106502)))),U_1),s(fun(Q106500,bool),P0))),s(fun(Q106500,cart(real,Q106502)),F0))))) )
     <= ! [P0,F0,X] : s(cart(real,Q106502),i(s(fun(cart(real,Q106502),cart(real,Q106502)),i(s(fun(cart(real,Q106502),fun(cart(real,Q106502),cart(real,Q106502))),i(s(fun(bool,fun(cart(real,Q106502),fun(cart(real,Q106502),cart(real,Q106502)))),cond),s(bool,i(s(fun(Q106500,bool),P0),s(Q106500,X))))),s(cart(real,Q106502),i(s(fun(Q106500,cart(real,Q106502)),F0),s(Q106500,X))))),s(cart(real,Q106502),i(s(fun(num,cart(real,Q106502)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q106502),i(s(fun(Q106500,cart(real,Q106502)),i(s(fun(fun(Q106500,cart(real,Q106502)),fun(Q106500,cart(real,Q106502))),i(s(fun(fun(Q106500,bool),fun(fun(Q106500,cart(real,Q106502)),fun(Q106500,cart(real,Q106502)))),U_1),s(fun(Q106500,bool),P0))),s(fun(Q106500,cart(real,Q106502)),F0))),s(Q106500,X))) ) ).

fof(aVSUMu_PARTIALu_PRE,axiom,
    ! [N,U_1] :
      ( ! [F0,G0,K0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_1),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),F0),s(num,K0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0)))))
     => ! [U_0] :
          ( ! [F0,G0,K0] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,K0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_0),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0)))
         => ! [F0,G0,M0,N0] : s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_0),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),i(s(fun(bool,fun(cart(real,N),fun(cart(real,N),cart(real,N)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,N0))))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,M0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,M0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))),s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_1),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ) ) ).

fof(aVSUMu_EQ,axiom,
    ! [Q106171,Q106182,F0,G0,S0] :
      ( ! [X] :
          ( p(s(bool,i(s(fun(fun(Q106171,bool),bool),i(s(fun(Q106171,fun(fun(Q106171,bool),bool)),in),s(Q106171,X))),s(fun(Q106171,bool),S0))))
         => s(cart(real,Q106182),i(s(fun(Q106171,cart(real,Q106182)),F0),s(Q106171,X))) = s(cart(real,Q106182),i(s(fun(Q106171,cart(real,Q106182)),G0),s(Q106171,X))) )
     => s(cart(real,Q106182),i(s(fun(fun(Q106171,cart(real,Q106182)),cart(real,Q106182)),i(s(fun(fun(Q106171,bool),fun(fun(Q106171,cart(real,Q106182)),cart(real,Q106182))),vsum),s(fun(Q106171,bool),S0))),s(fun(Q106171,cart(real,Q106182)),F0))) = s(cart(real,Q106182),i(s(fun(fun(Q106171,cart(real,Q106182)),cart(real,Q106182)),i(s(fun(fun(Q106171,bool),fun(fun(Q106171,cart(real,Q106182)),cart(real,Q106182))),vsum),s(fun(Q106171,bool),S0))),s(fun(Q106171,cart(real,Q106182)),G0))) ) ).

fof(aVSUMu_1,axiom,
    ! [Q109598] : s(cart(real,Q109598),i(s(fun(fun(num,cart(real,Q109598)),cart(real,Q109598)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109598)),cart(real,Q109598))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(fun(num,cart(real,Q109598)),f))) = s(cart(real,Q109598),i(s(fun(num,cart(real,Q109598)),f),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(avectoru_mul,axiom,
    ! [N,U_0] :
      ( ! [C0,X,I0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(real,fun(cart(real,N),fun(num,real))),U_0),s(real,C0))),s(cart(real,N),X))),s(num,I0)))
     => ! [C0,X] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(real,fun(cart(real,N),fun(num,real))),U_0),s(real,C0))),s(cart(real,N),X))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,C0))),s(cart(real,N),X))) ) ).

fof(aDOTu_LSUM,axiom,
    ! [Q108537,Q108528,U_0] :
      ( ! [F0,Y,X] : s(real,i(s(fun(Q108537,real),i(s(fun(cart(real,Q108528),fun(Q108537,real)),i(s(fun(fun(Q108537,cart(real,Q108528)),fun(cart(real,Q108528),fun(Q108537,real))),U_0),s(fun(Q108537,cart(real,Q108528)),F0))),s(cart(real,Q108528),Y))),s(Q108537,X))) = s(real,i(s(fun(cart(real,Q108528),real),i(s(fun(cart(real,Q108528),fun(cart(real,Q108528),real)),dot),s(cart(real,Q108528),i(s(fun(Q108537,cart(real,Q108528)),F0),s(Q108537,X))))),s(cart(real,Q108528),Y)))
     => ! [S0,F0,Y] :
          ( p(s(bool,i(s(fun(fun(Q108537,bool),bool),finite),s(fun(Q108537,bool),S0))))
         => s(real,i(s(fun(cart(real,Q108528),real),i(s(fun(cart(real,Q108528),fun(cart(real,Q108528),real)),dot),s(cart(real,Q108528),i(s(fun(fun(Q108537,cart(real,Q108528)),cart(real,Q108528)),i(s(fun(fun(Q108537,bool),fun(fun(Q108537,cart(real,Q108528)),cart(real,Q108528))),vsum),s(fun(Q108537,bool),S0))),s(fun(Q108537,cart(real,Q108528)),F0))))),s(cart(real,Q108528),Y))) = s(real,i(s(fun(fun(Q108537,real),real),i(s(fun(fun(Q108537,bool),fun(fun(Q108537,real),real)),sum),s(fun(Q108537,bool),S0))),s(fun(Q108537,real),i(s(fun(cart(real,Q108528),fun(Q108537,real)),i(s(fun(fun(Q108537,cart(real,Q108528)),fun(cart(real,Q108528),fun(Q108537,real))),U_0),s(fun(Q108537,cart(real,Q108528)),F0))),s(cart(real,Q108528),Y))))) ) ) ).

fof(aNORMu_POSu_LT,axiom,
    ! [Q102307,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q102307),real),vectoru_norm),s(cart(real,Q102307),X))))))
    <=> s(cart(real,Q102307),X) != s(cart(real,Q102307),i(s(fun(num,cart(real,Q102307)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aSQRTu_MONOu_LE,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,Y)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) ) ).

fof(aNORMu_LEu_L1,axiom,
    ! [N,U_0] :
      ( ! [X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0)))))
     => ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X)))))))) ) ).

fof(aNORMu_LTu_SQUARE,axiom,
    ! [N,X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,a0))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) )
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0)))) ) ).

fof(aVSUMu_ADDu_SPLIT,axiom,
    ! [Q107387,F0,M0,N0,P0] :
      ( s(cart(real,Q107387),i(s(fun(fun(num,cart(real,Q107387)),cart(real,Q107387)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107387)),cart(real,Q107387))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,P0))))))),s(fun(num,cart(real,Q107387)),F0))) = s(cart(real,Q107387),i(s(fun(cart(real,Q107387),cart(real,Q107387)),i(s(fun(cart(real,Q107387),fun(cart(real,Q107387),cart(real,Q107387))),vectoru_add),s(cart(real,Q107387),i(s(fun(fun(num,cart(real,Q107387)),cart(real,Q107387)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107387)),cart(real,Q107387))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107387)),F0))))),s(cart(real,Q107387),i(s(fun(fun(num,cart(real,Q107387)),cart(real,Q107387)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107387)),cart(real,Q107387))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,P0))))))),s(fun(num,cart(real,Q107387)),F0)))))
     <= p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) ) ).

fof(aNORMu_EQ,axiom,
    ! [Q103311,Q103313,X,Y] :
      ( s(real,i(s(fun(cart(real,Q103313),real),vectoru_norm),s(cart(real,Q103313),Y))) = s(real,i(s(fun(cart(real,Q103311),real),vectoru_norm),s(cart(real,Q103311),X)))
    <=> s(real,i(s(fun(cart(real,Q103311),real),i(s(fun(cart(real,Q103311),fun(cart(real,Q103311),real)),dot),s(cart(real,Q103311),X))),s(cart(real,Q103311),X))) = s(real,i(s(fun(cart(real,Q103313),real),i(s(fun(cart(real,Q103313),fun(cart(real,Q103313),real)),dot),s(cart(real,Q103313),Y))),s(cart(real,Q103313),Y))) ) ).

fof(aORTHOGONALu_CLAUSESu_conjunct5,axiom,
    ! [Q110949,A5] : p(s(bool,i(s(fun(cart(real,Q110949),bool),i(s(fun(cart(real,Q110949),fun(cart(real,Q110949),bool)),orthogonal),s(cart(real,Q110949),i(s(fun(num,cart(real,Q110949)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q110949),A5)))) ).

fof(aNORMu_EQu_1,axiom,
    ! [Q103338,X] :
      ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(cart(real,Q103338),real),i(s(fun(cart(real,Q103338),fun(cart(real,Q103338),real)),dot),s(cart(real,Q103338),X))),s(cart(real,Q103338),X)))
    <=> s(real,i(s(fun(cart(real,Q103338),real),vectoru_norm),s(cart(real,Q103338),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ) ).

fof(aVSUMu_OFFSETu_0,axiom,
    ! [Q108650,U_0] :
      ( ! [F0,M0,I0] : s(cart(real,Q108650),i(s(fun(num,cart(real,Q108650)),i(s(fun(num,fun(num,cart(real,Q108650))),i(s(fun(fun(num,cart(real,Q108650)),fun(num,fun(num,cart(real,Q108650)))),U_0),s(fun(num,cart(real,Q108650)),F0))),s(num,M0))),s(num,I0))) = s(cart(real,Q108650),i(s(fun(num,cart(real,Q108650)),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,I0))),s(num,M0)))))
     => ! [F0,M0,N0] :
          ( s(cart(real,Q108650),i(s(fun(fun(num,cart(real,Q108650)),cart(real,Q108650)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108650)),cart(real,Q108650))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,u_0))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),m_),s(num,N0))),s(num,M0))))))),s(fun(num,cart(real,Q108650)),i(s(fun(num,fun(num,cart(real,Q108650))),i(s(fun(fun(num,cart(real,Q108650)),fun(num,fun(num,cart(real,Q108650)))),U_0),s(fun(num,cart(real,Q108650)),F0))),s(num,M0))))) = s(cart(real,Q108650),i(s(fun(fun(num,cart(real,Q108650)),cart(real,Q108650)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q108650)),cart(real,Q108650))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q108650)),F0)))
         <= p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0)))) ) ) ).

fof(aFORALLu_2,axiom,
    ! [P0] :
      ( ! [I0] :
          ( p(s(bool,i(s(fun(num,bool),P0),s(num,I0))))
         <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) ) )
    <=> ( p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) ) ).

fof(aVSUMu_SWAPu_NUMSEG,axiom,
    ! [Q109392,U_2] :
      ( ! [U_1] :
          ( ! [F0,J0] : s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,fun(num,cart(real,Q109392)))),U_1),s(fun(num,fun(num,cart(real,Q109392))),F0))),s(num,J0))) = s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,fun(num,cart(real,Q109392)))),U_2),s(fun(num,fun(num,cart(real,Q109392))),F0))),s(num,J0)))
         => ! [U_0] :
              ( ! [C0,D0,F0,I0] : s(cart(real,Q109392),i(s(fun(num,cart(real,Q109392)),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))),i(s(fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392)))),i(s(fun(num,fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))))),U_0),s(num,C0))),s(num,D0))),s(fun(num,fun(num,cart(real,Q109392))),F0))),s(num,I0))) = s(cart(real,Q109392),i(s(fun(fun(num,cart(real,Q109392)),cart(real,Q109392)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109392)),cart(real,Q109392))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,C0))),s(num,D0))))),s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),F0),s(num,I0)))))
             => ! [A5,B0,C0,D0,F0] : s(cart(real,Q109392),i(s(fun(fun(num,cart(real,Q109392)),cart(real,Q109392)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109392)),cart(real,Q109392))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,C0))),s(num,D0))))),s(fun(num,cart(real,Q109392)),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))),i(s(fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392)))),i(s(fun(num,fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))))),U_0),s(num,A5))),s(num,B0))),s(fun(num,fun(num,cart(real,Q109392))),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,fun(num,cart(real,Q109392)))),U_1),s(fun(num,fun(num,cart(real,Q109392))),F0))))))) = s(cart(real,Q109392),i(s(fun(fun(num,cart(real,Q109392)),cart(real,Q109392)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109392)),cart(real,Q109392))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,A5))),s(num,B0))))),s(fun(num,cart(real,Q109392)),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))),i(s(fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392)))),i(s(fun(num,fun(num,fun(fun(num,fun(num,cart(real,Q109392))),fun(num,cart(real,Q109392))))),U_0),s(num,C0))),s(num,D0))),s(fun(num,fun(num,cart(real,Q109392))),F0))))) ) )
     <= ! [F0,J0,I0] : s(cart(real,Q109392),i(s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),F0),s(num,I0))),s(num,J0))) = s(cart(real,Q109392),i(s(fun(num,cart(real,Q109392)),i(s(fun(num,fun(num,cart(real,Q109392))),i(s(fun(fun(num,fun(num,cart(real,Q109392))),fun(num,fun(num,cart(real,Q109392)))),U_2),s(fun(num,fun(num,cart(real,Q109392))),F0))),s(num,J0))),s(num,I0))) ) ).

fof(aDISTu_TRIANGLEu_ADD,axiom,
    ! [Q105155,X,XI_,Y,YI_] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,Q105155),cart(real,Q105155)),real),distance),s(prod(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155))),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155)))),c_),s(cart(real,Q105155),i(s(fun(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),cart(real,Q105155))),vectoru_add),s(cart(real,Q105155),X))),s(cart(real,Q105155),Y))))),s(cart(real,Q105155),i(s(fun(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),cart(real,Q105155))),vectoru_add),s(cart(real,Q105155),XI_))),s(cart(real,Q105155),YI_))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,Q105155),cart(real,Q105155)),real),distance),s(prod(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155))),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155)))),c_),s(cart(real,Q105155),X))),s(cart(real,Q105155),XI_))))))),s(real,i(s(fun(prod(cart(real,Q105155),cart(real,Q105155)),real),distance),s(prod(cart(real,Q105155),cart(real,Q105155)),i(s(fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155))),i(s(fun(cart(real,Q105155),fun(cart(real,Q105155),prod(cart(real,Q105155),cart(real,Q105155)))),c_),s(cart(real,Q105155),Y))),s(cart(real,Q105155),YI_)))))))))) ).

fof(aVSUMu_SUBu_NUMSEG,axiom,
    ! [Q107324,U_0] :
      ( ! [F0,G0,I0] : s(cart(real,Q107324),i(s(fun(num,cart(real,Q107324)),i(s(fun(fun(num,cart(real,Q107324)),fun(num,cart(real,Q107324))),i(s(fun(fun(num,cart(real,Q107324)),fun(fun(num,cart(real,Q107324)),fun(num,cart(real,Q107324)))),U_0),s(fun(num,cart(real,Q107324)),F0))),s(fun(num,cart(real,Q107324)),G0))),s(num,I0))) = s(cart(real,Q107324),i(s(fun(cart(real,Q107324),cart(real,Q107324)),i(s(fun(cart(real,Q107324),fun(cart(real,Q107324),cart(real,Q107324))),vectoru_sub),s(cart(real,Q107324),i(s(fun(num,cart(real,Q107324)),F0),s(num,I0))))),s(cart(real,Q107324),i(s(fun(num,cart(real,Q107324)),G0),s(num,I0)))))
     => ! [F0,G0,M0,N0] : s(cart(real,Q107324),i(s(fun(fun(num,cart(real,Q107324)),cart(real,Q107324)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107324)),cart(real,Q107324))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107324)),i(s(fun(fun(num,cart(real,Q107324)),fun(num,cart(real,Q107324))),i(s(fun(fun(num,cart(real,Q107324)),fun(fun(num,cart(real,Q107324)),fun(num,cart(real,Q107324)))),U_0),s(fun(num,cart(real,Q107324)),F0))),s(fun(num,cart(real,Q107324)),G0))))) = s(cart(real,Q107324),i(s(fun(cart(real,Q107324),cart(real,Q107324)),i(s(fun(cart(real,Q107324),fun(cart(real,Q107324),cart(real,Q107324))),vectoru_sub),s(cart(real,Q107324),i(s(fun(fun(num,cart(real,Q107324)),cart(real,Q107324)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107324)),cart(real,Q107324))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107324)),F0))))),s(cart(real,Q107324),i(s(fun(fun(num,cart(real,Q107324)),cart(real,Q107324)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q107324)),cart(real,Q107324))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q107324)),G0))))) ) ).

fof(aVSUMu_SINGu_NUMSEG,axiom,
    ! [Q109587] : s(cart(real,Q109587),i(s(fun(num,cart(real,Q109587)),f),s(num,n))) = s(cart(real,Q109587),i(s(fun(fun(num,cart(real,Q109587)),cart(real,Q109587)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q109587)),cart(real,Q109587))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,n))),s(num,n))))),s(fun(num,cart(real,Q109587)),f))) ).

fof(aSQRTu_POSu_LT,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X)))))) ) ).

fof(aVSUMu_INCLu_EXCL,axiom,
    ! [A,N,S0,T0,F0] :
      ( s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),union),s(fun(A,bool),S0))),s(fun(A,bool),T0))))),s(fun(A,cart(real,N)),F0))))),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),inter),s(fun(A,bool),S0))),s(fun(A,bool),T0))))),s(fun(A,cart(real,N)),F0))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))))),s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),T0))),s(fun(A,cart(real,N)),F0)))))
     <= ( p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),S0))))
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),T0)))) ) ) ).

fof(aNORMu_GEu_SQUARE,axiom,
    ! [N,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_ge),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,a0))))
    <=> ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,a0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))))
        | p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_ge),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,a0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) ) ) ).

fof(aVECTORu_NEGu_MINUS1,axiom,
    ! [Q99962] : s(cart(real,Q99962),i(s(fun(cart(real,Q99962),cart(real,Q99962)),i(s(fun(real,fun(cart(real,Q99962),cart(real,Q99962))),r_),s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q99962),x))) = s(cart(real,Q99962),i(s(fun(cart(real,Q99962),cart(real,Q99962)),vectoru_neg),s(cart(real,Q99962),x))) ).

fof(aVECTORu_ADDu_ACu_conjunct2,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),p1))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),p1))))) ).

fof(aVSUMu_EQu_GENERAL,axiom,
    ! [A,B,N,S0,T0,F0,G0,H0] :
      ( ( ! [X] :
            ( ( p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,i(s(fun(A,B),H0),s(A,X))))),s(fun(B,bool),T0))))
              & s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))) = s(cart(real,N),i(s(fun(B,cart(real,N)),G0),s(B,i(s(fun(A,B),H0),s(A,X))))) )
           <= p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) )
        & ! [Y] :
            ( ( ! [X,XI_] :
                  ( s(A,X) = s(A,XI_)
                 <= ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,XI_))),s(fun(A,bool),S0))))
                    & s(B,i(s(fun(A,B),H0),s(A,XI_))) = s(B,Y)
                    & s(B,Y) = s(B,i(s(fun(A,B),H0),s(A,X)))
                    & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) ) )
              & ? [X] :
                  ( s(B,i(s(fun(A,B),H0),s(A,X))) = s(B,Y)
                  & p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),S0)))) ) )
           <= p(s(bool,i(s(fun(fun(B,bool),bool),i(s(fun(B,fun(fun(B,bool),bool)),in),s(B,Y))),s(fun(B,bool),T0)))) ) )
     => s(cart(real,N),i(s(fun(fun(B,cart(real,N)),cart(real,N)),i(s(fun(fun(B,bool),fun(fun(B,cart(real,N)),cart(real,N))),vsum),s(fun(B,bool),T0))),s(fun(B,cart(real,N)),G0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),S0))),s(fun(A,cart(real,N)),F0))) ) ).

fof(adist,axiom,
    ! [Q100698,X,Y] : s(real,i(s(fun(cart(real,Q100698),real),vectoru_norm),s(cart(real,Q100698),i(s(fun(cart(real,Q100698),cart(real,Q100698)),i(s(fun(cart(real,Q100698),fun(cart(real,Q100698),cart(real,Q100698))),vectoru_sub),s(cart(real,Q100698),X))),s(cart(real,Q100698),Y))))) = s(real,i(s(fun(prod(cart(real,Q100698),cart(real,Q100698)),real),distance),s(prod(cart(real,Q100698),cart(real,Q100698)),i(s(fun(cart(real,Q100698),prod(cart(real,Q100698),cart(real,Q100698))),i(s(fun(cart(real,Q100698),fun(cart(real,Q100698),prod(cart(real,Q100698),cart(real,Q100698)))),c_),s(cart(real,Q100698),X))),s(cart(real,Q100698),Y))))) ).

fof(aVSUMu_PARTIALu_SUC,axiom,
    ! [N,U_1] :
      ( ! [U_0] :
          ( ! [F0,G0,M0,N0] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),i(s(fun(bool,fun(cart(real,N),fun(cart(real,N),cart(real,N)))),cond),s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,M0))),s(num,N0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,M0))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,M0))))))))),s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_1),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,N),i(s(fun(fun(num,cart(real,N)),cart(real,N)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,N)),cart(real,N))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_0),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0)))))
         <= ! [F0,G0,K0] : s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_0),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(num,real),F0),s(num,K0))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,K0))))))) )
     <= ! [F0,G0,K0] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),F0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),F0),s(num,K0))))))),s(cart(real,N),i(s(fun(num,cart(real,N)),G0),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),p_),s(num,K0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(cart(real,N),i(s(fun(num,cart(real,N)),i(s(fun(fun(num,cart(real,N)),fun(num,cart(real,N))),i(s(fun(fun(num,real),fun(fun(num,cart(real,N)),fun(num,cart(real,N)))),U_1),s(fun(num,real),F0))),s(fun(num,cart(real,N)),G0))),s(num,K0))) ) ).

fof(aVSUMu_UNION,axiom,
    ! [Q105942,Q105967,F0,S0,T0] :
      ( s(cart(real,Q105967),i(s(fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967)),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967))),vsum),s(fun(Q105942,bool),i(s(fun(fun(Q105942,bool),fun(Q105942,bool)),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,bool),fun(Q105942,bool))),union),s(fun(Q105942,bool),S0))),s(fun(Q105942,bool),T0))))),s(fun(Q105942,cart(real,Q105967)),F0))) = s(cart(real,Q105967),i(s(fun(cart(real,Q105967),cart(real,Q105967)),i(s(fun(cart(real,Q105967),fun(cart(real,Q105967),cart(real,Q105967))),vectoru_add),s(cart(real,Q105967),i(s(fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967)),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967))),vsum),s(fun(Q105942,bool),S0))),s(fun(Q105942,cart(real,Q105967)),F0))))),s(cart(real,Q105967),i(s(fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967)),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,cart(real,Q105967)),cart(real,Q105967))),vsum),s(fun(Q105942,bool),T0))),s(fun(Q105942,cart(real,Q105967)),F0)))))
     <= ( p(s(bool,i(s(fun(fun(Q105942,bool),bool),i(s(fun(fun(Q105942,bool),fun(fun(Q105942,bool),bool)),disjoint),s(fun(Q105942,bool),S0))),s(fun(Q105942,bool),T0))))
        & p(s(bool,i(s(fun(fun(Q105942,bool),bool),finite),s(fun(Q105942,bool),T0))))
        & p(s(bool,i(s(fun(fun(Q105942,bool),bool),finite),s(fun(Q105942,bool),S0)))) ) ) ).

fof(aNORMu_SUB,axiom,
    ! [Q102210,X,Y] : s(real,i(s(fun(cart(real,Q102210),real),vectoru_norm),s(cart(real,Q102210),i(s(fun(cart(real,Q102210),cart(real,Q102210)),i(s(fun(cart(real,Q102210),fun(cart(real,Q102210),cart(real,Q102210))),vectoru_sub),s(cart(real,Q102210),Y))),s(cart(real,Q102210),X))))) = s(real,i(s(fun(cart(real,Q102210),real),vectoru_norm),s(cart(real,Q102210),i(s(fun(cart(real,Q102210),cart(real,Q102210)),i(s(fun(cart(real,Q102210),fun(cart(real,Q102210),cart(real,Q102210))),vectoru_sub),s(cart(real,Q102210),X))),s(cart(real,Q102210),Y))))) ).

fof(aNORMu_REAL,axiom,
    ! [X] : s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(cart(real,n10),real),vectoru_norm),s(cart(real,n10),X))) ).

fof(aDOTu_3,axiom,
    s(real,i(s(fun(cart(real,n3),real),i(s(fun(cart(real,n3),fun(cart(real,n3),real)),dot),s(cart(real,n3),x))),s(cart(real,n3),y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))) ).

fof(aVECTORu_SUBu_REFL,axiom,
    ! [Q99591,X] : s(cart(real,Q99591),i(s(fun(num,cart(real,Q99591)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q99591),i(s(fun(cart(real,Q99591),cart(real,Q99591)),i(s(fun(cart(real,Q99591),fun(cart(real,Q99591),cart(real,Q99591))),vectoru_sub),s(cart(real,Q99591),X))),s(cart(real,Q99591),X))) ).

fof(aFORALLu_DOTu_EQu_0u_conjunct0,axiom,
    ! [Q100563,Y] :
      ( s(cart(real,Q100563),i(s(fun(num,cart(real,Q100563)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100563),Y)
    <=> ! [X] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q100563),real),i(s(fun(cart(real,Q100563),fun(cart(real,Q100563),real)),dot),s(cart(real,Q100563),X))),s(cart(real,Q100563),Y))) ) ).

fof(aBASISu_NE,axiom,
    ! [N,I0,J0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,J0))))
        & s(num,J0) != s(num,I0)
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,J0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
     => s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,J0))) != s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,I0))) ) ).

fof(aVECTORu_MULu_LNEG,axiom,
    ! [Q100029] : s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),vectoru_neg),s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),i(s(fun(real,fun(cart(real,Q100029),cart(real,Q100029))),r_),s(real,c))),s(cart(real,Q100029),x))))) = s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),i(s(fun(real,fun(cart(real,Q100029),cart(real,Q100029))),r_),s(real,i(s(fun(real,real),realu_neg),s(real,c))))),s(cart(real,Q100029),x))) ).

fof(aVSUMu_UNIONu_LZERO,axiom,
    ! [A,N,F0,U,V] :
      ( s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),V))),s(fun(A,cart(real,N)),F0))) = s(cart(real,N),i(s(fun(fun(A,cart(real,N)),cart(real,N)),i(s(fun(fun(A,bool),fun(fun(A,cart(real,N)),cart(real,N))),vsum),s(fun(A,bool),i(s(fun(fun(A,bool),fun(A,bool)),i(s(fun(fun(A,bool),fun(fun(A,bool),fun(A,bool))),union),s(fun(A,bool),U))),s(fun(A,bool),V))))),s(fun(A,cart(real,N)),F0)))
     <= ( ! [X] :
            ( s(cart(real,N),i(s(fun(A,cart(real,N)),F0),s(A,X))) = s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
           <= ( p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),U))))
              & ~ p(s(bool,i(s(fun(fun(A,bool),bool),i(s(fun(A,fun(fun(A,bool),bool)),in),s(A,X))),s(fun(A,bool),V)))) ) )
        & p(s(bool,i(s(fun(fun(A,bool),bool),finite),s(fun(A,bool),V)))) ) ) ).

fof(aSQRTu_INV,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),realu_inv),s(real,X))))) = s(real,i(s(fun(real,real),realu_inv),s(real,i(s(fun(real,real),sqrt),s(real,X))))) ) ).

fof(aSQRTu_INJ,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => ( s(real,Y) = s(real,X)
      <=> s(real,i(s(fun(real,real),sqrt),s(real,Y))) = s(real,i(s(fun(real,real),sqrt),s(real,X))) ) ) ).

fof(aSQRTu_EQu_0,axiom,
    ! [X] :
      ( ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,X)
      <=> s(real,i(s(fun(real,real),sqrt),s(real,X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aVSUMu_0,axiom,
    ! [Q105615,Q105619,U_0] :
      ( s(cart(real,Q105619),i(s(fun(num,cart(real,Q105619)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q105619),i(s(fun(fun(Q105615,cart(real,Q105619)),cart(real,Q105619)),i(s(fun(fun(Q105615,bool),fun(fun(Q105615,cart(real,Q105619)),cart(real,Q105619))),vsum),s(fun(Q105615,bool),s0))),s(fun(Q105615,cart(real,Q105619)),U_0)))
     <= ! [X] : s(cart(real,Q105619),i(s(fun(Q105615,cart(real,Q105619)),U_0),s(Q105615,X))) = s(cart(real,Q105619),i(s(fun(num,cart(real,Q105619)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aDOTu_POSu_LT,axiom,
    ! [Q100537,X] :
      ( s(cart(real,Q100537),X) != s(cart(real,Q100537),i(s(fun(num,cart(real,Q100537)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q100537),real),i(s(fun(cart(real,Q100537),fun(cart(real,Q100537),real)),dot),s(cart(real,Q100537),X))),s(cart(real,Q100537),X)))))) ) ).

fof(aSUMu_3,axiom,
    ! [T0] : s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,real),T0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) ).

fof(aDISTu_TRIANGLEu_LE,axiom,
    ! [Q104912,X,Y,Z0,E0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(prod(cart(real,Q104912),cart(real,Q104912)),real),distance),s(prod(cart(real,Q104912),cart(real,Q104912)),i(s(fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912))),i(s(fun(cart(real,Q104912),fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912)))),c_),s(cart(real,Q104912),X))),s(cart(real,Q104912),Y))))))),s(real,E0))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(prod(cart(real,Q104912),cart(real,Q104912)),real),distance),s(prod(cart(real,Q104912),cart(real,Q104912)),i(s(fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912))),i(s(fun(cart(real,Q104912),fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912)))),c_),s(cart(real,Q104912),X))),s(cart(real,Q104912),Z0))))))),s(real,i(s(fun(prod(cart(real,Q104912),cart(real,Q104912)),real),distance),s(prod(cart(real,Q104912),cart(real,Q104912)),i(s(fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912))),i(s(fun(cart(real,Q104912),fun(cart(real,Q104912),prod(cart(real,Q104912),cart(real,Q104912)))),c_),s(cart(real,Q104912),Y))),s(cart(real,Q104912),Z0))))))))),s(real,E0)))) ) ).

fof(aVECTORu_EQu_ADDR,axiom,
    ! [Q99907] :
      ( s(cart(real,Q99907),i(s(fun(cart(real,Q99907),cart(real,Q99907)),i(s(fun(cart(real,Q99907),fun(cart(real,Q99907),cart(real,Q99907))),vectoru_add),s(cart(real,Q99907),x))),s(cart(real,Q99907),y))) = s(cart(real,Q99907),x)
    <=> s(cart(real,Q99907),y) = s(cart(real,Q99907),i(s(fun(num,cart(real,Q99907)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVECTORu_ADDu_RINV,axiom,
    ! [Q99628,X] : s(cart(real,Q99628),i(s(fun(cart(real,Q99628),cart(real,Q99628)),i(s(fun(cart(real,Q99628),fun(cart(real,Q99628),cart(real,Q99628))),vectoru_add),s(cart(real,Q99628),X))),s(cart(real,Q99628),i(s(fun(cart(real,Q99628),cart(real,Q99628)),vectoru_neg),s(cart(real,Q99628),X))))) = s(cart(real,Q99628),i(s(fun(num,cart(real,Q99628)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aORTHOGONALu_0,axiom,
    ! [Q110652,X] :
      ( p(s(bool,i(s(fun(cart(real,Q110652),bool),i(s(fun(cart(real,Q110652),fun(cart(real,Q110652),bool)),orthogonal),s(cart(real,Q110652),X))),s(cart(real,Q110652),i(s(fun(num,cart(real,Q110652)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))))
      & p(s(bool,i(s(fun(cart(real,Q110652),bool),i(s(fun(cart(real,Q110652),fun(cart(real,Q110652),bool)),orthogonal),s(cart(real,Q110652),i(s(fun(num,cart(real,Q110652)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q110652),X)))) ) ).

fof(aSQRTu_MONOu_LT,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,Y)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) ) ).

fof(aREALu_LTu_RSQRT,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y)))) ) ).

fof(aNORMu_POSu_LE,axiom,
    ! [Q102162,X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q102162),real),vectoru_norm),s(cart(real,Q102162),X)))))) ).

fof(aNORMu_BASIS,axiom,
    ! [N,K0] :
      ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,K0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,K0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) )
     => s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,K0))))) ) ).

fof(avectoru_add,axiom,
    ! [N,U_0] :
      ( ! [X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0)))))
     => ! [X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))))) ) ).

fof(aBASISu_NONZERO,axiom,
    ! [N,K0] :
      ( s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) != s(cart(real,N),i(s(fun(num,cart(real,N)),basis),s(num,K0)))
     <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,K0))))
        & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,K0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ)))))) ) ) ).

fof(aVECTORu_ADDu_RDISTRIB,axiom,
    ! [Q99856] : s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,a0))),s(real,b0))))),s(cart(real,Q99856),x))) = s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(cart(real,Q99856),fun(cart(real,Q99856),cart(real,Q99856))),vectoru_add),s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,a0))),s(cart(real,Q99856),x))))),s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,b0))),s(cart(real,Q99856),x))))) ).

fof(aSQRTu_DIV,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y)))) )
     => s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,X))),s(real,Y))))) ) ).

fof(aDISTu_TRIANGLEu_ADDu_HALF,axiom,
    ! [N,X,XI_,Y,YI_] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),XI_))),s(cart(real,N),YI_))))))))),s(real,e0))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),X))),s(cart(real,N),XI_))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),Y))),s(cart(real,N),YI_))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,e0))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))))) ) ) ).

fof(aDOTu_RSUM,axiom,
    ! [Q108573,Q108564,U_0] :
      ( ! [S0,F0,X] :
          ( p(s(bool,i(s(fun(fun(Q108573,bool),bool),finite),s(fun(Q108573,bool),S0))))
         => s(real,i(s(fun(cart(real,Q108564),real),i(s(fun(cart(real,Q108564),fun(cart(real,Q108564),real)),dot),s(cart(real,Q108564),X))),s(cart(real,Q108564),i(s(fun(fun(Q108573,cart(real,Q108564)),cart(real,Q108564)),i(s(fun(fun(Q108573,bool),fun(fun(Q108573,cart(real,Q108564)),cart(real,Q108564))),vsum),s(fun(Q108573,bool),S0))),s(fun(Q108573,cart(real,Q108564)),F0))))) = s(real,i(s(fun(fun(Q108573,real),real),i(s(fun(fun(Q108573,bool),fun(fun(Q108573,real),real)),sum),s(fun(Q108573,bool),S0))),s(fun(Q108573,real),i(s(fun(fun(Q108573,cart(real,Q108564)),fun(Q108573,real)),i(s(fun(cart(real,Q108564),fun(fun(Q108573,cart(real,Q108564)),fun(Q108573,real))),U_0),s(cart(real,Q108564),X))),s(fun(Q108573,cart(real,Q108564)),F0))))) )
     <= ! [X,F0,Y] : s(real,i(s(fun(Q108573,real),i(s(fun(fun(Q108573,cart(real,Q108564)),fun(Q108573,real)),i(s(fun(cart(real,Q108564),fun(fun(Q108573,cart(real,Q108564)),fun(Q108573,real))),U_0),s(cart(real,Q108564),X))),s(fun(Q108573,cart(real,Q108564)),F0))),s(Q108573,Y))) = s(real,i(s(fun(cart(real,Q108564),real),i(s(fun(cart(real,Q108564),fun(cart(real,Q108564),real)),dot),s(cart(real,Q108564),X))),s(cart(real,Q108564),i(s(fun(Q108573,cart(real,Q108564)),F0),s(Q108573,Y))))) ) ).

fof(aVECTORu_MULu_RNEG,axiom,
    ! [Q100046] : s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),i(s(fun(real,fun(cart(real,Q100046),cart(real,Q100046))),r_),s(real,c))),s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),vectoru_neg),s(cart(real,Q100046),x))))) = s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),vectoru_neg),s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),i(s(fun(real,fun(cart(real,Q100046),cart(real,Q100046))),r_),s(real,c))),s(cart(real,Q100046),x))))) ).

fof(aNORMu_BOUNDu_COMPONENTu_LT,axiom,
    ! [N,X,E0] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,E0))))
     => ! [I0] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))))),s(real,E0))))
         <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) ) ) ) ).

fof(aVSUMu_CLAUSESu_conjunct0,axiom,
    ! [Q105493,Q105495,F0] : s(cart(real,Q105495),i(s(fun(fun(Q105493,cart(real,Q105495)),cart(real,Q105495)),i(s(fun(fun(Q105493,bool),fun(fun(Q105493,cart(real,Q105495)),cart(real,Q105495))),vsum),s(fun(Q105493,bool),empty))),s(fun(Q105493,cart(real,Q105495)),F0))) = s(cart(real,Q105495),i(s(fun(num,cart(real,Q105495)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aVECTORu_NEGu_EQu_0,axiom,
    ! [Q100076] :
      ( s(cart(real,Q100076),i(s(fun(num,cart(real,Q100076)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100076),i(s(fun(cart(real,Q100076),cart(real,Q100076)),vectoru_neg),s(cart(real,Q100076),x)))
    <=> s(cart(real,Q100076),x) = s(cart(real,Q100076),i(s(fun(num,cart(real,Q100076)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVECTORu_MULu_LCANCELu_IMP,axiom,
    ! [Q102500,A5,X,Y] :
      ( s(cart(real,Q102500),Y) = s(cart(real,Q102500),X)
     <= ( s(real,A5) != s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
        & s(cart(real,Q102500),i(s(fun(cart(real,Q102500),cart(real,Q102500)),i(s(fun(real,fun(cart(real,Q102500),cart(real,Q102500))),r_),s(real,A5))),s(cart(real,Q102500),Y))) = s(cart(real,Q102500),i(s(fun(cart(real,Q102500),cart(real,Q102500)),i(s(fun(real,fun(cart(real,Q102500),cart(real,Q102500))),r_),s(real,A5))),s(cart(real,Q102500),X))) ) ) ).

fof(aVECTORu_MULu_ASSOC,axiom,
    ! [Q99731,A5,B0,X] : s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,A5))),s(real,B0))))),s(cart(real,Q99731),X))) = s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,A5))),s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,B0))),s(cart(real,Q99731),X))))) ).

fof(aDISTu_EQu_0,axiom,
    ! [Q104818,X,Y] :
      ( s(cart(real,Q104818),Y) = s(cart(real,Q104818),X)
    <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(prod(cart(real,Q104818),cart(real,Q104818)),real),distance),s(prod(cart(real,Q104818),cart(real,Q104818)),i(s(fun(cart(real,Q104818),prod(cart(real,Q104818),cart(real,Q104818))),i(s(fun(cart(real,Q104818),fun(cart(real,Q104818),prod(cart(real,Q104818),cart(real,Q104818)))),c_),s(cart(real,Q104818),X))),s(cart(real,Q104818),Y))))) ) ).

fof(aVECTORu_SUBu_COMPONENT,axiom,
    ! [N,X,Y,I0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))))),s(num,I0))) ).

fof(aFORALLu_1,axiom,
    ( ! [I0] :
        ( p(s(bool,i(s(fun(num,bool),p0),s(num,I0))))
       <= ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
          & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) )
  <=> p(s(bool,i(s(fun(num,bool),p0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) ).

fof(aDOTu_EQu_0,axiom,
    ! [N,X] :
      ( s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),X)
    <=> s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVSUMu_ADD,axiom,
    ! [Q105715,Q105728,U_0] :
      ( ! [F0,G0,X] : s(cart(real,Q105728),i(s(fun(Q105715,cart(real,Q105728)),i(s(fun(fun(Q105715,cart(real,Q105728)),fun(Q105715,cart(real,Q105728))),i(s(fun(fun(Q105715,cart(real,Q105728)),fun(fun(Q105715,cart(real,Q105728)),fun(Q105715,cart(real,Q105728)))),U_0),s(fun(Q105715,cart(real,Q105728)),F0))),s(fun(Q105715,cart(real,Q105728)),G0))),s(Q105715,X))) = s(cart(real,Q105728),i(s(fun(cart(real,Q105728),cart(real,Q105728)),i(s(fun(cart(real,Q105728),fun(cart(real,Q105728),cart(real,Q105728))),vectoru_add),s(cart(real,Q105728),i(s(fun(Q105715,cart(real,Q105728)),F0),s(Q105715,X))))),s(cart(real,Q105728),i(s(fun(Q105715,cart(real,Q105728)),G0),s(Q105715,X)))))
     => ! [F0,G0,S0] :
          ( p(s(bool,i(s(fun(fun(Q105715,bool),bool),finite),s(fun(Q105715,bool),S0))))
         => s(cart(real,Q105728),i(s(fun(cart(real,Q105728),cart(real,Q105728)),i(s(fun(cart(real,Q105728),fun(cart(real,Q105728),cart(real,Q105728))),vectoru_add),s(cart(real,Q105728),i(s(fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728)),i(s(fun(fun(Q105715,bool),fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728))),vsum),s(fun(Q105715,bool),S0))),s(fun(Q105715,cart(real,Q105728)),F0))))),s(cart(real,Q105728),i(s(fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728)),i(s(fun(fun(Q105715,bool),fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728))),vsum),s(fun(Q105715,bool),S0))),s(fun(Q105715,cart(real,Q105728)),G0))))) = s(cart(real,Q105728),i(s(fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728)),i(s(fun(fun(Q105715,bool),fun(fun(Q105715,cart(real,Q105728)),cart(real,Q105728))),vsum),s(fun(Q105715,bool),S0))),s(fun(Q105715,cart(real,Q105728)),i(s(fun(fun(Q105715,cart(real,Q105728)),fun(Q105715,cart(real,Q105728))),i(s(fun(fun(Q105715,cart(real,Q105728)),fun(fun(Q105715,cart(real,Q105728)),fun(Q105715,cart(real,Q105728)))),U_0),s(fun(Q105715,cart(real,Q105728)),F0))),s(fun(Q105715,cart(real,Q105728)),G0))))) ) ) ).

fof(aVSUMu_CMULu_NUMSEG,axiom,
    ! [Q106968,U_0] :
      ( ! [F0,C0,M0,N0] : s(cart(real,Q106968),i(s(fun(cart(real,Q106968),cart(real,Q106968)),i(s(fun(real,fun(cart(real,Q106968),cart(real,Q106968))),r_),s(real,C0))),s(cart(real,Q106968),i(s(fun(fun(num,cart(real,Q106968)),cart(real,Q106968)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106968)),cart(real,Q106968))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q106968)),F0))))) = s(cart(real,Q106968),i(s(fun(fun(num,cart(real,Q106968)),cart(real,Q106968)),i(s(fun(fun(num,bool),fun(fun(num,cart(real,Q106968)),cart(real,Q106968))),vsum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,M0))),s(num,N0))))),s(fun(num,cart(real,Q106968)),i(s(fun(fun(num,cart(real,Q106968)),fun(num,cart(real,Q106968))),i(s(fun(real,fun(fun(num,cart(real,Q106968)),fun(num,cart(real,Q106968)))),U_0),s(real,C0))),s(fun(num,cart(real,Q106968)),F0)))))
     <= ! [C0,F0,X] : s(cart(real,Q106968),i(s(fun(num,cart(real,Q106968)),i(s(fun(fun(num,cart(real,Q106968)),fun(num,cart(real,Q106968))),i(s(fun(real,fun(fun(num,cart(real,Q106968)),fun(num,cart(real,Q106968)))),U_0),s(real,C0))),s(fun(num,cart(real,Q106968)),F0))),s(num,X))) = s(cart(real,Q106968),i(s(fun(cart(real,Q106968),cart(real,Q106968)),i(s(fun(real,fun(cart(real,Q106968),cart(real,Q106968))),r_),s(real,C0))),s(cart(real,Q106968),i(s(fun(num,cart(real,Q106968)),F0),s(num,X))))) ) ).

fof(aSQRTu_POWu_2,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,X) ) ).

fof(aNORMu_CAUCHYu_SCHWARZ,axiom,
    ! [N,X,Y] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),X))))),s(real,i(s(fun(cart(real,N),real),vectoru_norm),s(cart(real,N),Y)))))))) ).

