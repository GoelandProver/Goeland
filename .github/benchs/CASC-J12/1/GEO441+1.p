include('Axioms/GEO010+0.ax').
fof(aSQRTu_POSu_LT,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X)))))) ) ).

fof(aFORALLu_REALu_ONE,axiom,
    ! [U_0] :
      ( ( ! [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),X))))
      <=> ! [X] : p(s(bool,i(s(fun(cart(real,n10),bool),p0),s(cart(real,n10),i(s(fun(fun(num,real),cart(real,n10)),lambda),s(fun(num,real),i(s(fun(real,fun(num,real)),U_0),s(real,X)))))))) )
     <= ! [X,I0] : s(real,X) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),U_0),s(real,X))),s(num,I0))) ) ).

fof(aDOTu_POSu_LE,axiom,
    ! [Q100487,X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q100487),real),i(s(fun(cart(real,Q100487),fun(cart(real,Q100487),real)),dot),s(cart(real,Q100487),X))),s(cart(real,Q100487),X)))))) ).

fof(aVECTORu_NEGu_SUB,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),Y))),s(cart(real,N),X))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))))) ).

fof(aSUMu_1,axiom,
    s(real,i(s(fun(num,real),f),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) = s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(fun(num,real),f))) ).

fof(aDOTu_LMUL,axiom,
    ! [Q100362,C0,X,Y] : s(real,i(s(fun(cart(real,Q100362),real),i(s(fun(cart(real,Q100362),fun(cart(real,Q100362),real)),dot),s(cart(real,Q100362),i(s(fun(cart(real,Q100362),cart(real,Q100362)),i(s(fun(real,fun(cart(real,Q100362),cart(real,Q100362))),r_),s(real,C0))),s(cart(real,Q100362),X))))),s(cart(real,Q100362),Y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(cart(real,Q100362),real),i(s(fun(cart(real,Q100362),fun(cart(real,Q100362),real)),dot),s(cart(real,Q100362),X))),s(cart(real,Q100362),Y))))) ).

fof(aVECTORu_SUBu_COMPONENT,axiom,
    ! [N,X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) ).

fof(aNORMu_0,axiom,
    ! [Q102146] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102146),real),vectoru_norm),s(cart(real,Q102146),i(s(fun(num,cart(real,Q102146)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aFORALLu_1,axiom,
    ( p(s(bool,i(s(fun(num,bool),p0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))
  <=> ! [I0] :
        ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0))))
          & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) )
       => p(s(bool,i(s(fun(num,bool),p0),s(num,I0)))) ) ) ).

fof(aVECTORu_SUBu_RADD,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))))) ).

fof(aVECTORu_MULu_COMPONENT,axiom,
    ! [N,C0,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,C0))),s(cart(real,N),X))))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) ).

fof(aDISTu_REAL,axiom,
    ! [X,Y] : s(real,i(s(fun(prod(cart(real,n10),cart(real,n10)),real),distance),s(prod(cart(real,n10),cart(real,n10)),i(s(fun(cart(real,n10),prod(cart(real,n10),cart(real,n10))),i(s(fun(cart(real,n10),fun(cart(real,n10),prod(cart(real,n10),cart(real,n10)))),c_),s(cart(real,n10),X))),s(cart(real,n10),Y))))) = s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ).

fof(aVECTORu_MULu_EQu_0,axiom,
    ! [Q102400,A5,X] :
      ( s(cart(real,Q102400),i(s(fun(cart(real,Q102400),cart(real,Q102400)),i(s(fun(real,fun(cart(real,Q102400),cart(real,Q102400))),r_),s(real,A5))),s(cart(real,Q102400),X))) = s(cart(real,Q102400),i(s(fun(num,cart(real,Q102400)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,A5)
        | s(cart(real,Q102400),i(s(fun(num,cart(real,Q102400)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q102400),X) ) ) ).

fof(aVECTORu_NEGu_MINUS1,axiom,
    ! [Q99962] : s(cart(real,Q99962),i(s(fun(cart(real,Q99962),cart(real,Q99962)),i(s(fun(real,fun(cart(real,Q99962),cart(real,Q99962))),r_),s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(cart(real,Q99962),x))) = s(cart(real,Q99962),i(s(fun(cart(real,Q99962),cart(real,Q99962)),vectoru_neg),s(cart(real,Q99962),x))) ).

fof(aNORMu_POSu_LT,axiom,
    ! [Q102307,X] :
      ( s(cart(real,Q102307),i(s(fun(num,cart(real,Q102307)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) != s(cart(real,Q102307),X)
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q102307),real),vectoru_norm),s(cart(real,Q102307),X)))))) ) ).

fof(aDOTu_RSUB,axiom,
    ! [Q100339,X,Y,Z0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),Y))))),s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),Z0))))) = s(real,i(s(fun(cart(real,Q100339),real),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),real)),dot),s(cart(real,Q100339),X))),s(cart(real,Q100339),i(s(fun(cart(real,Q100339),cart(real,Q100339)),i(s(fun(cart(real,Q100339),fun(cart(real,Q100339),cart(real,Q100339))),vectoru_sub),s(cart(real,Q100339),Y))),s(cart(real,Q100339),Z0))))) ).

fof(aNORMu_POSu_LE,axiom,
    ! [Q102162,X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q102162),real),vectoru_norm),s(cart(real,Q102162),X)))))) ).

fof(aVECTORu_ONE,axiom,
    ! [U_0] :
      ( ! [X] : s(cart(real,n10),i(s(fun(fun(num,real),cart(real,n10)),lambda),s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),U_0),s(cart(real,n10),X))))) = s(cart(real,n10),X)
     <= ! [X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),U_0),s(cart(real,n10),X))),s(num,I0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ) ).

fof(aNORMu_MUL,axiom,
    ! [Q102231,A5,X] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),realu_abs),s(real,A5))))),s(real,i(s(fun(cart(real,Q102231),real),vectoru_norm),s(cart(real,Q102231),X))))) = s(real,i(s(fun(cart(real,Q102231),real),vectoru_norm),s(cart(real,Q102231),i(s(fun(cart(real,Q102231),cart(real,Q102231)),i(s(fun(real,fun(cart(real,Q102231),cart(real,Q102231))),r_),s(real,A5))),s(cart(real,Q102231),X))))) ).

fof(aVECTORu_MULu_LCANCEL,conjecture,
    ! [Q102424,A5,X,Y] :
      ( ( s(cart(real,Q102424),X) = s(cart(real,Q102424),Y)
        | s(real,A5) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) )
    <=> s(cart(real,Q102424),i(s(fun(cart(real,Q102424),cart(real,Q102424)),i(s(fun(real,fun(cart(real,Q102424),cart(real,Q102424))),r_),s(real,A5))),s(cart(real,Q102424),Y))) = s(cart(real,Q102424),i(s(fun(cart(real,Q102424),cart(real,Q102424)),i(s(fun(real,fun(cart(real,Q102424),cart(real,Q102424))),r_),s(real,A5))),s(cart(real,Q102424),X))) ) ).

fof(aNORMu_SUB,axiom,
    ! [Q102210,X,Y] : s(real,i(s(fun(cart(real,Q102210),real),vectoru_norm),s(cart(real,Q102210),i(s(fun(cart(real,Q102210),cart(real,Q102210)),i(s(fun(cart(real,Q102210),fun(cart(real,Q102210),cart(real,Q102210))),vectoru_sub),s(cart(real,Q102210),X))),s(cart(real,Q102210),Y))))) = s(real,i(s(fun(cart(real,Q102210),real),vectoru_norm),s(cart(real,Q102210),i(s(fun(cart(real,Q102210),cart(real,Q102210)),i(s(fun(cart(real,Q102210),fun(cart(real,Q102210),cart(real,Q102210))),vectoru_sub),s(cart(real,Q102210),Y))),s(cart(real,Q102210),X))))) ).

fof(aVECTORu_ADDu_ASSOC,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),y))),s(cart(real,N),z))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),z))) ).

fof(aSQRTu_POWu_2,axiom,
    ! [X] :
      ( s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,X)
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aSQRTu_EQu_0,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => ( s(real,i(s(fun(real,real),sqrt),s(real,X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
      <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,X) ) ) ).

fof(aVECTORu_SUBu_LDISTRIB,axiom,
    ! [Q99834] : s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(cart(real,Q99834),fun(cart(real,Q99834),cart(real,Q99834))),vectoru_sub),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),x))))),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),y))))) = s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(real,fun(cart(real,Q99834),cart(real,Q99834))),r_),s(real,c))),s(cart(real,Q99834),i(s(fun(cart(real,Q99834),cart(real,Q99834)),i(s(fun(cart(real,Q99834),fun(cart(real,Q99834),cart(real,Q99834))),vectoru_sub),s(cart(real,Q99834),x))),s(cart(real,Q99834),y))))) ).

fof(aVECTORu_MULu_LNEG,axiom,
    ! [Q100029] : s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),i(s(fun(real,fun(cart(real,Q100029),cart(real,Q100029))),r_),s(real,i(s(fun(real,real),realu_neg),s(real,c))))),s(cart(real,Q100029),x))) = s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),vectoru_neg),s(cart(real,Q100029),i(s(fun(cart(real,Q100029),cart(real,Q100029)),i(s(fun(real,fun(cart(real,Q100029),cart(real,Q100029))),r_),s(real,c))),s(cart(real,Q100029),x))))) ).

fof(aSQRTu_MONOu_LE,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,Y)))) ) ) ).

fof(aVECTORu_SUBu_REFL,axiom,
    ! [Q99591,X] : s(cart(real,Q99591),i(s(fun(cart(real,Q99591),cart(real,Q99591)),i(s(fun(cart(real,Q99591),fun(cart(real,Q99591),cart(real,Q99591))),vectoru_sub),s(cart(real,Q99591),X))),s(cart(real,Q99591),X))) = s(cart(real,Q99591),i(s(fun(num,cart(real,Q99591)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aREALu_LTu_RSQRT,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y))))
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) ) ).

fof(aDOTu_3,axiom,
    s(real,i(s(fun(cart(real,n3),real),i(s(fun(cart(real,n3),fun(cart(real,n3),real)),dot),s(cart(real,n3),x))),s(cart(real,n3),y))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n3),fun(num,real)),d_),s(cart(real,n3),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))))) ).

fof(aSUMu_3,axiom,
    ! [T0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) = s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,real),T0))) ).

fof(avec,axiom,
    ! [N,U_0] :
      ( ! [N0] : s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,N0))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,N0)))))
     <= ! [N0,I0] : s(real,i(s(fun(num,real),i(s(fun(num,fun(num,real)),U_0),s(num,N0))),s(num,I0))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,N0))) ) ).

fof(aVECu_COMPONENT,axiom,
    ! [N,K0,I0] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,K0))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,K0))))),s(num,I0))) ).

fof(aVECTORu_SUBu_LZERO,axiom,
    ! [Q100000] : s(cart(real,Q100000),i(s(fun(cart(real,Q100000),cart(real,Q100000)),i(s(fun(cart(real,Q100000),fun(cart(real,Q100000),cart(real,Q100000))),vectoru_sub),s(cart(real,Q100000),i(s(fun(num,cart(real,Q100000)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q100000),x))) = s(cart(real,Q100000),i(s(fun(cart(real,Q100000),cart(real,Q100000)),vectoru_neg),s(cart(real,Q100000),x))) ).

fof(aSQUAREu_CONTINUOUS,axiom,
    ! [X,E0] :
      ( ? [D0] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,D0))))
          & ! [Y] :
              ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,Y))),s(real,X))))))),s(real,D0))))
             => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,Y))),s(real,Y))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,X))),s(real,X))))))))),s(real,E0)))) ) )
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0)))) ) ).

fof(aNORMu_REAL,axiom,
    ! [X] : s(real,i(s(fun(cart(real,n10),real),vectoru_norm),s(cart(real,n10),X))) = s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ).

fof(aDOTu_RNEG,axiom,
    ! [Q100443,X,Y] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(cart(real,Q100443),real),i(s(fun(cart(real,Q100443),fun(cart(real,Q100443),real)),dot),s(cart(real,Q100443),X))),s(cart(real,Q100443),Y))))) = s(real,i(s(fun(cart(real,Q100443),real),i(s(fun(cart(real,Q100443),fun(cart(real,Q100443),real)),dot),s(cart(real,Q100443),X))),s(cart(real,Q100443),i(s(fun(cart(real,Q100443),cart(real,Q100443)),vectoru_neg),s(cart(real,Q100443),Y))))) ).

fof(aNORMu_EQu_0u_IMP,axiom,
    ! [Q102346,X] :
      ( s(cart(real,Q102346),X) = s(cart(real,Q102346),i(s(fun(num,cart(real,Q102346)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
     <= s(real,i(s(fun(cart(real,Q102346),real),vectoru_norm),s(cart(real,Q102346),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aVECTORu_ADDu_COMPONENT,axiom,
    ! [N,X,Y,I0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))))),s(num,I0))) ).

fof(aFORALLu_DOTu_EQu_0u_conjunct1,axiom,
    ! [Q100586,X] :
      ( s(cart(real,Q100586),X) = s(cart(real,Q100586),i(s(fun(num,cart(real,Q100586)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> ! [Y] : s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q100586),real),i(s(fun(cart(real,Q100586),fun(cart(real,Q100586),real)),dot),s(cart(real,Q100586),X))),s(cart(real,Q100586),Y))) ) ).

fof(aSQUAREu_BOUNDu_LEMMA,axiom,
    ! [X] : p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,X))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,X)))))))) ).

fof(aDOTu_SYM,axiom,
    ! [Q100205,X,Y] : s(real,i(s(fun(cart(real,Q100205),real),i(s(fun(cart(real,Q100205),fun(cart(real,Q100205),real)),dot),s(cart(real,Q100205),Y))),s(cart(real,Q100205),X))) = s(real,i(s(fun(cart(real,Q100205),real),i(s(fun(cart(real,Q100205),fun(cart(real,Q100205),real)),dot),s(cart(real,Q100205),X))),s(cart(real,Q100205),Y))) ).

fof(aFORALLu_2,axiom,
    ! [P0] :
      ( ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
         => p(s(bool,i(s(fun(num,bool),P0),s(num,I0)))) )
    <=> ( p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))) ) ) ).

fof(aREALu_RSQRTu_LE,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y)))) ) ).

fof(aVECTORu_SUBu_ADD2,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),y))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))))) = s(cart(real,N),x) ).

fof(aVECTORu_NEGu_0,axiom,
    ! [Q100059] : s(cart(real,Q100059),i(s(fun(num,cart(real,Q100059)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100059),i(s(fun(cart(real,Q100059),cart(real,Q100059)),vectoru_neg),s(cart(real,Q100059),i(s(fun(num,cart(real,Q100059)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aVECTORu_ADDu_ACu_conjunct0,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),n))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),m))) ).

fof(aVECTORu_SUBu_EQ,axiom,
    ! [Q99705,X,Y] :
      ( s(cart(real,Q99705),X) = s(cart(real,Q99705),Y)
    <=> s(cart(real,Q99705),i(s(fun(num,cart(real,Q99705)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q99705),i(s(fun(cart(real,Q99705),cart(real,Q99705)),i(s(fun(cart(real,Q99705),fun(cart(real,Q99705),cart(real,Q99705))),vectoru_sub),s(cart(real,Q99705),X))),s(cart(real,Q99705),Y))) ) ).

fof(aVECTORu_ADDu_ACu_conjunct1,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),p1))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),n))))),s(cart(real,N),p1))) ).

fof(aDOTu_LADD,axiom,
    ! [Q100240,X,Y,Z0] : s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),i(s(fun(cart(real,Q100240),cart(real,Q100240)),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),cart(real,Q100240))),vectoru_add),s(cart(real,Q100240),X))),s(cart(real,Q100240),Y))))),s(cart(real,Q100240),Z0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),X))),s(cart(real,Q100240),Z0))))),s(real,i(s(fun(cart(real,Q100240),real),i(s(fun(cart(real,Q100240),fun(cart(real,Q100240),real)),dot),s(cart(real,Q100240),Y))),s(cart(real,Q100240),Z0))))) ).

fof(aVECTORu_ADDu_LID,axiom,
    ! [Q99561,X] : s(cart(real,Q99561),i(s(fun(cart(real,Q99561),cart(real,Q99561)),i(s(fun(cart(real,Q99561),fun(cart(real,Q99561),cart(real,Q99561))),vectoru_add),s(cart(real,Q99561),i(s(fun(num,cart(real,Q99561)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q99561),X))) = s(cart(real,Q99561),X) ).

fof(aDOTu_2,axiom,
    s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n20),fun(num,real)),d_),s(cart(real,n20),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))) = s(real,i(s(fun(cart(real,n20),real),i(s(fun(cart(real,n20),fun(cart(real,n20),real)),dot),s(cart(real,n20),x))),s(cart(real,n20),y))) ).

fof(aVECTORu_ADDu_LINV,axiom,
    ! [Q99609,X] : s(cart(real,Q99609),i(s(fun(cart(real,Q99609),cart(real,Q99609)),i(s(fun(cart(real,Q99609),fun(cart(real,Q99609),cart(real,Q99609))),vectoru_add),s(cart(real,Q99609),i(s(fun(cart(real,Q99609),cart(real,Q99609)),vectoru_neg),s(cart(real,Q99609),X))))),s(cart(real,Q99609),X))) = s(cart(real,Q99609),i(s(fun(num,cart(real,Q99609)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aNORMu_EQu_0,axiom,
    ! [Q102285,X] :
      ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102285),real),vectoru_norm),s(cart(real,Q102285),X)))
    <=> s(cart(real,Q102285),i(s(fun(num,cart(real,Q102285)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q102285),X) ) ).

fof(adot,axiom,
    ! [N,U_0] :
      ( ! [X,Y,I0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0)))
     => ! [X,Y] : s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),Y))) = s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(fun(N,bool),num),dimindex),s(fun(N,bool),univ))))))),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))))) ) ).

fof(aVECTORu_ADDu_RINV,axiom,
    ! [Q99628,X] : s(cart(real,Q99628),i(s(fun(num,cart(real,Q99628)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q99628),i(s(fun(cart(real,Q99628),cart(real,Q99628)),i(s(fun(cart(real,Q99628),fun(cart(real,Q99628),cart(real,Q99628))),vectoru_add),s(cart(real,Q99628),X))),s(cart(real,Q99628),i(s(fun(cart(real,Q99628),cart(real,Q99628)),vectoru_neg),s(cart(real,Q99628),X))))) ).

fof(aSQRTu_MUL,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y)))) )
     => s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,X))),s(real,Y))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) ) ).

fof(aDOTu_EQu_0,axiom,
    ! [N,X] :
      ( s(cart(real,N),i(s(fun(num,cart(real,N)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,N),X)
    <=> s(real,i(s(fun(cart(real,N),real),i(s(fun(cart(real,N),fun(cart(real,N),real)),dot),s(cart(real,N),X))),s(cart(real,N),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aHypermapo_THREE,axiom,
    s(num,i(s(fun(num,num),suc),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))) ).

fof(aREALu_LEu_RSQRT,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,X))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(real,Y)))) ) ).

fof(aVECTORu_MULu_LID,axiom,
    ! [Q99745,X] : s(cart(real,Q99745),i(s(fun(cart(real,Q99745),cart(real,Q99745)),i(s(fun(real,fun(cart(real,Q99745),cart(real,Q99745))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(cart(real,Q99745),X))) = s(cart(real,Q99745),X) ).

fof(aVECTORu_SUBu_RZERO,axiom,
    ! [Q99936] : s(cart(real,Q99936),x) = s(cart(real,Q99936),i(s(fun(cart(real,Q99936),cart(real,Q99936)),i(s(fun(cart(real,Q99936),fun(cart(real,Q99936),cart(real,Q99936))),vectoru_sub),s(cart(real,Q99936),x))),s(cart(real,Q99936),i(s(fun(num,cart(real,Q99936)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(avectoru_mul,axiom,
    ! [N,U_0] :
      ( ! [C0,X] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(real,fun(cart(real,N),cart(real,N))),r_),s(real,C0))),s(cart(real,N),X))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(real,fun(cart(real,N),fun(num,real))),U_0),s(real,C0))),s(cart(real,N),X)))))
     <= ! [C0,X,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(real,fun(cart(real,N),fun(num,real))),U_0),s(real,C0))),s(cart(real,N),X))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) ) ).

fof(aSQRTu_POSu_LE,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X)))))) ) ).

fof(aSQRTu_EVENu_POW2,axiom,
    ! [N0] :
      ( s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(num,i(s(fun(num,num),i(s(fun(num,fun(num,num)),div),s(num,N0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(num,N0)))))
     <= p(s(bool,i(s(fun(num,bool),even),s(num,N0)))) ) ).

fof(aCONDu_COMPONENT,axiom,
    ! [Q99503,Q99508] : s(Q99503,i(s(fun(Q99503,Q99503),i(s(fun(Q99503,fun(Q99503,Q99503)),i(s(fun(bool,fun(Q99503,fun(Q99503,Q99503))),cond),s(bool,b0))),s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),x))),s(num,i0))))),s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),y))),s(num,i0))))) = s(Q99503,i(s(fun(num,Q99503),i(s(fun(cart(Q99503,Q99508),fun(num,Q99503)),d_),s(cart(Q99503,Q99508),i(s(fun(cart(Q99503,Q99508),cart(Q99503,Q99508)),i(s(fun(cart(Q99503,Q99508),fun(cart(Q99503,Q99508),cart(Q99503,Q99508))),i(s(fun(bool,fun(cart(Q99503,Q99508),fun(cart(Q99503,Q99508),cart(Q99503,Q99508)))),cond),s(bool,b0))),s(cart(Q99503,Q99508),x))),s(cart(Q99503,Q99508),y))))),s(num,i0))) ).

fof(aCONNECTEDu_REALu_LEMMA,axiom,
    ! [N,F0,A5,B0,E1,E2] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,B0))))
        & p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,A5))))),s(fun(cart(real,N),bool),E1))))
        & ! [E0,X] :
            ( ? [D0] :
                ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,D0))))
                & ! [Y] :
                    ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,Y))))),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))))))),s(real,E0))))
                   <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),realu_abs),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,Y))),s(real,X))))))),s(real,D0)))) ) )
           <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,B0))))
              & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,X)))) ) )
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
        & ! [Y] :
            ( p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),Y))),s(fun(cart(real,N),bool),E1))))
           => ? [E0] :
                ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,E0))))
                & ! [YI_] :
                    ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(prod(cart(real,N),cart(real,N)),real),distance),s(prod(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),prod(cart(real,N),cart(real,N))),i(s(fun(cart(real,N),fun(cart(real,N),prod(cart(real,N),cart(real,N)))),c_),s(cart(real,N),YI_))),s(cart(real,N),Y))))))),s(real,E0))))
                   => p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),YI_))),s(fun(cart(real,N),bool),E1)))) ) ) )
        & p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,B0))))),s(fun(cart(real,N),bool),E2)))) )
     => ? [X] :
          ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,A5))),s(real,X))))
          & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,B0))))
          & ~ p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E2))))
          & ~ p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),i(s(fun(cart(real,N),fun(fun(cart(real,N),bool),bool)),in),s(cart(real,N),i(s(fun(real,cart(real,N)),F0),s(real,X))))),s(fun(cart(real,N),bool),E1)))) ) ) ).

fof(aSUMu_2,axiom,
    ! [T0] : s(real,i(s(fun(fun(num,real),real),i(s(fun(fun(num,bool),fun(fun(num,real),real)),sum),s(fun(num,bool),i(s(fun(num,fun(num,bool)),i(s(fun(num,fun(num,fun(num,bool))),o_o_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))),s(fun(num,real),T0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),T0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))) ).

fof(aVECTORu_ADDu_LDISTRIB,axiom,
    ! [Q99811] : s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(cart(real,Q99811),fun(cart(real,Q99811),cart(real,Q99811))),vectoru_add),s(cart(real,Q99811),x))),s(cart(real,Q99811),y))))) = s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(cart(real,Q99811),fun(cart(real,Q99811),cart(real,Q99811))),vectoru_add),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),x))))),s(cart(real,Q99811),i(s(fun(cart(real,Q99811),cart(real,Q99811)),i(s(fun(real,fun(cart(real,Q99811),cart(real,Q99811))),r_),s(real,c))),s(cart(real,Q99811),y))))) ).

fof(avectoru_add,axiom,
    ! [N,U_0] :
      ( ! [X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y)))))
     <= ! [X,Y,I0] : s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) ) ).

fof(aSQRTu_POW2,axiom,
    ! [X] :
      ( s(real,X) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aVECTORu_EQu_ADDR,axiom,
    ! [Q99907] :
      ( s(cart(real,Q99907),y) = s(cart(real,Q99907),i(s(fun(num,cart(real,Q99907)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> s(cart(real,Q99907),x) = s(cart(real,Q99907),i(s(fun(cart(real,Q99907),cart(real,Q99907)),i(s(fun(cart(real,Q99907),fun(cart(real,Q99907),cart(real,Q99907))),vectoru_add),s(cart(real,Q99907),x))),s(cart(real,Q99907),y))) ) ).

fof(aFORALLu_3,axiom,
    ! [P0] :
      ( ! [I0] :
          ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
            & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
         => p(s(bool,i(s(fun(num,bool),P0),s(num,I0)))) )
    <=> ( p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))
        & p(s(bool,i(s(fun(num,bool),P0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) ) ).

fof(avectoru_norm,axiom,
    ! [Q100593,X] : s(real,i(s(fun(cart(real,Q100593),real),vectoru_norm),s(cart(real,Q100593),X))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(cart(real,Q100593),real),i(s(fun(cart(real,Q100593),fun(cart(real,Q100593),real)),dot),s(cart(real,Q100593),X))),s(cart(real,Q100593),X))))) ).

fof(aSQRTu_MONOu_LT,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,Y)))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y)))))) ) ).

fof(aVECTORu_SUBu_RDISTRIB,axiom,
    ! [Q99877] : s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(cart(real,Q99877),fun(cart(real,Q99877),cart(real,Q99877))),vectoru_sub),s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,a0))),s(cart(real,Q99877),x))))),s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,b0))),s(cart(real,Q99877),x))))) = s(cart(real,Q99877),i(s(fun(cart(real,Q99877),cart(real,Q99877)),i(s(fun(real,fun(cart(real,Q99877),cart(real,Q99877))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,a0))),s(real,b0))))),s(cart(real,Q99877),x))) ).

fof(aVECTORu_MULu_RNEG,axiom,
    ! [Q100046] : s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),vectoru_neg),s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),i(s(fun(real,fun(cart(real,Q100046),cart(real,Q100046))),r_),s(real,c))),s(cart(real,Q100046),x))))) = s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),i(s(fun(real,fun(cart(real,Q100046),cart(real,Q100046))),r_),s(real,c))),s(cart(real,Q100046),i(s(fun(cart(real,Q100046),cart(real,Q100046)),vectoru_neg),s(cart(real,Q100046),x))))) ).

fof(aNORMu_LEu_0,axiom,
    ! [Q102367,X] :
      ( s(cart(real,Q102367),X) = s(cart(real,Q102367),i(s(fun(num,cart(real,Q102367)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(cart(real,Q102367),real),vectoru_norm),s(cart(real,Q102367),X))))),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))))) ) ).

fof(aVECTORu_SUB,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),y))))) ).

fof(aFORALLu_DIMINDEXu_1,axiom,
    ( ! [I0] :
        ( ( p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,I0))),s(num,i(s(fun(fun(n10,bool),num),dimindex),s(fun(n10,bool),univ))))))
          & p(s(bool,i(s(fun(num,bool),i(s(fun(num,fun(num,bool)),l_a_),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))),s(num,I0)))) )
       => p(s(bool,i(s(fun(num,bool),p0),s(num,I0)))) )
  <=> p(s(bool,i(s(fun(num,bool),p0),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))) ) ).

fof(aSQRTu_MONOu_LEu_EQ,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,Y))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) ) ).

fof(aVECTORu_NEGu_COMPONENT,axiom,
    ! [N,X,I0] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),X))))),s(num,I0))) ).

fof(aSQRTu_WORKS,axiom,
    ! [X] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X))))))
        & s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,X) )
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aDOTu_RADD,axiom,
    ! [Q100273,X,Y,Z0] : s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),i(s(fun(cart(real,Q100273),cart(real,Q100273)),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),cart(real,Q100273))),vectoru_add),s(cart(real,Q100273),Y))),s(cart(real,Q100273),Z0))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),Y))))),s(real,i(s(fun(cart(real,Q100273),real),i(s(fun(cart(real,Q100273),fun(cart(real,Q100273),real)),dot),s(cart(real,Q100273),X))),s(cart(real,Q100273),Z0))))) ).

fof(aVECu_EQ,axiom,
    ! [Q100159,M0,N0] :
      ( s(num,M0) = s(num,N0)
    <=> s(cart(real,Q100159),i(s(fun(num,cart(real,Q100159)),vec),s(num,N0))) = s(cart(real,Q100159),i(s(fun(num,cart(real,Q100159)),vec),s(num,M0))) ) ).

fof(aVECTORu_MULu_ASSOC,axiom,
    ! [Q99731,A5,B0,X] : s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,A5))),s(real,B0))))),s(cart(real,Q99731),X))) = s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,A5))),s(cart(real,Q99731),i(s(fun(cart(real,Q99731),cart(real,Q99731)),i(s(fun(real,fun(cart(real,Q99731),cart(real,Q99731))),r_),s(real,B0))),s(cart(real,Q99731),X))))) ).

fof(aVECTORu_ADDu_SUB,axiom,
    ! [N] : s(cart(real,N),y) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),x))) ).

fof(aVECTORu_MULu_RZERO,axiom,
    ! [Q99948] : s(cart(real,Q99948),i(s(fun(cart(real,Q99948),cart(real,Q99948)),i(s(fun(real,fun(cart(real,Q99948),cart(real,Q99948))),r_),s(real,c))),s(cart(real,Q99948),i(s(fun(num,cart(real,Q99948)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(cart(real,Q99948),i(s(fun(num,cart(real,Q99948)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aREALu_LTu_LSQRT,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0)))))))))))) )
     => p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y)))) ) ).

fof(aDOTu_LSUB,axiom,
    ! [Q100306,X,Y,Z0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),X))),s(cart(real,Q100306),Z0))))),s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),Y))),s(cart(real,Q100306),Z0))))) = s(real,i(s(fun(cart(real,Q100306),real),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),real)),dot),s(cart(real,Q100306),i(s(fun(cart(real,Q100306),cart(real,Q100306)),i(s(fun(cart(real,Q100306),fun(cart(real,Q100306),cart(real,Q100306))),vectoru_sub),s(cart(real,Q100306),X))),s(cart(real,Q100306),Y))))),s(cart(real,Q100306),Z0))) ).

fof(aVECTORu_NEGu_EQu_0,axiom,
    ! [Q100076] :
      ( s(cart(real,Q100076),x) = s(cart(real,Q100076),i(s(fun(num,cart(real,Q100076)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> s(cart(real,Q100076),i(s(fun(cart(real,Q100076),cart(real,Q100076)),vectoru_neg),s(cart(real,Q100076),x))) = s(cart(real,Q100076),i(s(fun(num,cart(real,Q100076)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aDOTu_RMUL,axiom,
    ! [Q100390,C0,X,Y] : s(real,i(s(fun(cart(real,Q100390),real),i(s(fun(cart(real,Q100390),fun(cart(real,Q100390),real)),dot),s(cart(real,Q100390),X))),s(cart(real,Q100390),i(s(fun(cart(real,Q100390),cart(real,Q100390)),i(s(fun(real,fun(cart(real,Q100390),cart(real,Q100390))),r_),s(real,C0))),s(cart(real,Q100390),Y))))) = s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,C0))),s(real,i(s(fun(cart(real,Q100390),real),i(s(fun(cart(real,Q100390),fun(cart(real,Q100390),real)),dot),s(cart(real,Q100390),X))),s(cart(real,Q100390),Y))))) ).

fof(aDOTu_POSu_LT,axiom,
    ! [Q100537,X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(cart(real,Q100537),real),i(s(fun(cart(real,Q100537),fun(cart(real,Q100537),real)),dot),s(cart(real,Q100537),X))),s(cart(real,Q100537),X))))))
    <=> s(cart(real,Q100537),X) != s(cart(real,Q100537),i(s(fun(num,cart(real,Q100537)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ) ).

fof(aREALu_LEu_LSQRT,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ) ).

fof(aDOTu_LNEG,axiom,
    ! [Q100419,X,Y] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(cart(real,Q100419),real),i(s(fun(cart(real,Q100419),fun(cart(real,Q100419),real)),dot),s(cart(real,Q100419),X))),s(cart(real,Q100419),Y))))) = s(real,i(s(fun(cart(real,Q100419),real),i(s(fun(cart(real,Q100419),fun(cart(real,Q100419),real)),dot),s(cart(real,Q100419),i(s(fun(cart(real,Q100419),cart(real,Q100419)),vectoru_neg),s(cart(real,Q100419),X))))),s(cart(real,Q100419),Y))) ).

fof(aREALu_DIVu_SQRT,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,X))),s(real,i(s(fun(real,real),sqrt),s(real,X))))) = s(real,i(s(fun(real,real),sqrt),s(real,X))) ) ).

fof(aSQRTu_LTu_0,axiom,
    ! [X] :
      ( s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,i(s(fun(real,real),sqrt),s(real,X)))))
     <= p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ).

fof(aEUCLIDEANu_SPACEu_INFINITE,axiom,
    ! [N] : p(s(bool,i(s(fun(fun(cart(real,N),bool),bool),infinite),s(fun(cart(real,N),bool),univ)))) ).

fof(aDOTu_1,axiom,
    s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_mul),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),x))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,n10),fun(num,real)),d_),s(cart(real,n10),y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) = s(real,i(s(fun(cart(real,n10),real),i(s(fun(cart(real,n10),fun(cart(real,n10),real)),dot),s(cart(real,n10),x))),s(cart(real,n10),y))) ).

fof(aVECTORu_ADDu_RDISTRIB,axiom,
    ! [Q99856] : s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_add),s(real,a0))),s(real,b0))))),s(cart(real,Q99856),x))) = s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(cart(real,Q99856),fun(cart(real,Q99856),cart(real,Q99856))),vectoru_add),s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,a0))),s(cart(real,Q99856),x))))),s(cart(real,Q99856),i(s(fun(cart(real,Q99856),cart(real,Q99856)),i(s(fun(real,fun(cart(real,Q99856),cart(real,Q99856))),r_),s(real,b0))),s(cart(real,Q99856),x))))) ).

fof(adist,axiom,
    ! [Q100698,X,Y] : s(real,i(s(fun(prod(cart(real,Q100698),cart(real,Q100698)),real),distance),s(prod(cart(real,Q100698),cart(real,Q100698)),i(s(fun(cart(real,Q100698),prod(cart(real,Q100698),cart(real,Q100698))),i(s(fun(cart(real,Q100698),fun(cart(real,Q100698),prod(cart(real,Q100698),cart(real,Q100698)))),c_),s(cart(real,Q100698),X))),s(cart(real,Q100698),Y))))) = s(real,i(s(fun(cart(real,Q100698),real),vectoru_norm),s(cart(real,Q100698),i(s(fun(cart(real,Q100698),cart(real,Q100698)),i(s(fun(cart(real,Q100698),fun(cart(real,Q100698),cart(real,Q100698))),vectoru_sub),s(cart(real,Q100698),X))),s(cart(real,Q100698),Y))))) ).

fof(aNORMu_POWu_2,axiom,
    ! [Q102322,X] : s(real,i(s(fun(cart(real,Q102322),real),i(s(fun(cart(real,Q102322),fun(cart(real,Q102322),real)),dot),s(cart(real,Q102322),X))),s(cart(real,Q102322),X))) = s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,i(s(fun(cart(real,Q102322),real),vectoru_norm),s(cart(real,Q102322),X))))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))) ).

fof(aDOTu_LZERO,axiom,
    ! [Q100457,X] : s(real,i(s(fun(cart(real,Q100457),real),i(s(fun(cart(real,Q100457),fun(cart(real,Q100457),real)),dot),s(cart(real,Q100457),i(s(fun(num,cart(real,Q100457)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q100457),X))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aVECTORu_ADDu_RID,axiom,
    ! [Q99576,X] : s(cart(real,Q99576),X) = s(cart(real,Q99576),i(s(fun(cart(real,Q99576),cart(real,Q99576)),i(s(fun(cart(real,Q99576),fun(cart(real,Q99576),cart(real,Q99576))),vectoru_add),s(cart(real,Q99576),X))),s(cart(real,Q99576),i(s(fun(num,cart(real,Q99576)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) ).

fof(aVECTORu_SUBu_ADD,axiom,
    ! [N] : s(cart(real,N),x) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),x))),s(cart(real,N),y))))),s(cart(real,N),y))) ).

fof(aSQRTu_DIV,axiom,
    ! [X,Y] :
      ( s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_div),s(real,X))),s(real,Y)))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ) ).

fof(aVECTORu_MULu_LZERO,axiom,
    ! [Q99762,X] : s(cart(real,Q99762),i(s(fun(cart(real,Q99762),cart(real,Q99762)),i(s(fun(real,fun(cart(real,Q99762),cart(real,Q99762))),r_),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(cart(real,Q99762),X))) = s(cart(real,Q99762),i(s(fun(num,cart(real,Q99762)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aSQRTu_MONOu_LTu_EQ,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,X))),s(real,Y))) = s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_lt),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,i(s(fun(real,real),sqrt),s(real,Y))))) ) ).

fof(aNORMu_EQu_0u_DOT,axiom,
    ! [Q102254,X] :
      ( s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102254),real),i(s(fun(cart(real,Q102254),fun(cart(real,Q102254),real)),dot),s(cart(real,Q102254),X))),s(cart(real,Q102254),X)))
    <=> s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(real,i(s(fun(cart(real,Q102254),real),vectoru_norm),s(cart(real,Q102254),X))) ) ).

fof(aVECTORu_NEGu_NEG,axiom,
    ! [N] : s(cart(real,N),x) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),x))))) ).

fof(aSQRTu_INV,axiom,
    ! [X] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X))))
     => s(real,i(s(fun(real,real),realu_inv),s(real,i(s(fun(real,real),sqrt),s(real,X))))) = s(real,i(s(fun(real,real),sqrt),s(real,i(s(fun(real,real),realu_inv),s(real,X))))) ) ).

fof(avectoru_sub,axiom,
    ! [N,U_0] :
      ( ! [X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_sub),s(cart(real,N),X))),s(cart(real,N),Y))) = s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y)))))
     <= ! [X,Y,I0] : s(real,i(s(fun(real,real),i(s(fun(real,fun(real,real)),realu_sub),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),Y))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),i(s(fun(cart(real,N),fun(cart(real,N),fun(num,real))),U_0),s(cart(real,N),X))),s(cart(real,N),Y))),s(num,I0))) ) ).

fof(aFORALLu_DOTu_EQu_0u_conjunct0,axiom,
    ! [Q100563,Y] :
      ( ! [X] : s(real,i(s(fun(cart(real,Q100563),real),i(s(fun(cart(real,Q100563),fun(cart(real,Q100563),real)),dot),s(cart(real,Q100563),X))),s(cart(real,Q100563),Y))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0)))))
    <=> s(cart(real,Q100563),i(s(fun(num,cart(real,Q100563)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) = s(cart(real,Q100563),Y) ) ).

fof(aVECTORu_ADDu_ACu_conjunct2,axiom,
    ! [N] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),p1))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),m))),s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),n))),s(cart(real,N),p1))))) ).

fof(aVECTORu_ADDu_SYM,axiom,
    ! [N,X,Y] : s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),Y))),s(cart(real,N),X))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),i(s(fun(cart(real,N),fun(cart(real,N),cart(real,N))),vectoru_add),s(cart(real,N),X))),s(cart(real,N),Y))) ).

fof(aDOTu_RZERO,axiom,
    ! [Q100472,X] : s(real,i(s(fun(cart(real,Q100472),real),i(s(fun(cart(real,Q100472),fun(cart(real,Q100472),real)),dot),s(cart(real,Q100472),X))),s(cart(real,Q100472),i(s(fun(num,cart(real,Q100472)),vec),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))) = s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))) ).

fof(aSQRTu_INJ,axiom,
    ! [X,Y] :
      ( ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) )
     => ( s(real,X) = s(real,Y)
      <=> s(real,i(s(fun(real,real),sqrt),s(real,X))) = s(real,i(s(fun(real,real),sqrt),s(real,Y))) ) ) ).

fof(aREALu_LSQRTu_LE,axiom,
    ! [X,Y] :
      ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,X))),s(real,i(s(fun(num,real),i(s(fun(real,fun(num,real)),realu_pow),s(real,Y))),s(num,i(s(fun(num,num),numeral),s(num,i(s(fun(num,num),bit0),s(num,i(s(fun(num,num),bit1),s(num,u_0))))))))))))
     <= ( p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(real,real),sqrt),s(real,X))))),s(real,Y))))
        & p(s(bool,i(s(fun(real,bool),i(s(fun(real,fun(real,bool)),realu_le),s(real,i(s(fun(num,real),realu_ofu_num),s(num,i(s(fun(num,num),numeral),s(num,u_0))))))),s(real,X)))) ) ) ).

fof(aNORMu_NEG,axiom,
    ! [Q102180,X] : s(real,i(s(fun(cart(real,Q102180),real),vectoru_norm),s(cart(real,Q102180),X))) = s(real,i(s(fun(cart(real,Q102180),real),vectoru_norm),s(cart(real,Q102180),i(s(fun(cart(real,Q102180),cart(real,Q102180)),vectoru_neg),s(cart(real,Q102180),X))))) ).

fof(avectoru_neg,axiom,
    ! [N,U_0] :
      ( ! [X,I0] : s(real,i(s(fun(real,real),realu_neg),s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),d_),s(cart(real,N),X))),s(num,I0))))) = s(real,i(s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))),s(num,I0)))
     => ! [X] : s(cart(real,N),i(s(fun(fun(num,real),cart(real,N)),lambda),s(fun(num,real),i(s(fun(cart(real,N),fun(num,real)),U_0),s(cart(real,N),X))))) = s(cart(real,N),i(s(fun(cart(real,N),cart(real,N)),vectoru_neg),s(cart(real,N),X))) ) ).

