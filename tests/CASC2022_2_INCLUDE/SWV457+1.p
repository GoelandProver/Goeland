%------------------------------------------------------------------------------
% File     : SWV457+1 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Software Verification
% Problem  : Establishing that there cannot be two leaders, part i30_p30
% Version  : [Sve07] axioms : Especial.
% English  :

% Refs     : [Sto97] Stoller (1997), Leader Election in Distributed Systems
%          : [Sve07] Svensson (2007), Email to Koen Claessen
%          : [Sve08] Svensson (2008), A Semi-Automatic Correctness Proof Pr
% Source   : [Sve07]
% Names    : stoller_i30_p30 [Sve07]

% Status   : Theorem
% Rating   : 0.42 v8.1.0, 0.44 v7.5.0, 0.47 v7.4.0, 0.37 v7.3.0, 0.45 v7.2.0, 0.41 v7.1.0, 0.43 v7.0.0, 0.53 v6.4.0, 0.58 v6.3.0, 0.54 v6.2.0, 0.64 v6.1.0, 0.77 v6.0.0, 0.65 v5.5.0, 0.74 v5.4.0, 0.75 v5.3.0, 0.78 v5.2.0, 0.65 v5.1.0, 0.67 v4.1.0, 0.70 v4.0.1, 0.78 v4.0.0
% Syntax   : Number of formulae    :   67 (  40 unt;   0 def)
%            Number of atoms       :  183 (  89 equ)
%            Maximal formula atoms :   72 (   2 avg)
%            Number of connectives :  180 (  64   ~;   9   |;  62   &)
%                                         (  13 <=>;  32  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   28 (   4 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :   33 (  33 usr;  16 con; 0-2 aty)
%            Number of variables   :  159 ( 158   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms for verification of Stoller's leader election algorithm
%------------------------------------------------------------------------------
% File     : SWV011+0 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Software Verification
% Axioms   : Axioms for verification of Stoller's leader election algorithm
% Version  : [Sve07] axioms : Especial.
% English  :

% Refs     : [Sto97] Stoller (1997), Leader Election in Distributed Systems
%          : [Sve07] Svensson (2007), Email to Koen Claessen
%          : [Sve08] Svensson (2008), A Semi-Automatic Correctness Proof Pr
% Source   : [Sve07]
% Names    : stoller2 [Sve07]
%          : con_sys [Sve07]
%          : cons_snoc [Sve07]
%          : arith [Sve07]
%          : sets [Sve07]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   66 (  40 unt;   0 def)
%            Number of atoms       :  111 (  62 equ)
%            Maximal formula atoms :    7 (   1 avg)
%            Number of connectives :   89 (  44   ~;   7   |;  14   &)
%                                         (  13 <=>;  11  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :   27 (  27 usr;  11 con; 0-2 aty)
%            Number of variables   :  119 ( 118   !;   1   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----Stoller axioms messages and such things
%----NewPid
fof(axiom,axiom,
    ! [Pid,Pid2] :
      ( elem(m_Ack(Pid,Pid2),queue(host(Pid)))
     => ( setIn(Pid,pids)
        & setIn(Pid2,pids) ) ) ).

fof(axiom_01,axiom,
    ! [P,Q] :
      ( s(host(P)) = host(Q)
     => host(P) != host(Q) ) ).

fof(axiom_02,axiom,
    ! [P] : leq(s(zero),host(P)) ).

fof(axiom_03,axiom,
    leq(s(zero),nbr_proc) ).

fof(axiom_04,axiom,
    ! [P] : leq(host(P),nbr_proc) ).

fof(axiom_05,axiom,
    elec_1 != elec_2 ).

fof(axiom_06,axiom,
    elec_1 != wait ).

fof(axiom_07,axiom,
    elec_1 != norm ).

fof(axiom_08,axiom,
    elec_2 != wait ).

fof(axiom_09,axiom,
    elec_2 != norm ).

fof(axiom_10,axiom,
    norm != wait ).

fof(axiom_11,axiom,
    ! [X,Y,Z] : m_Ack(X,Y) != m_Halt(Z) ).

fof(axiom_12,axiom,
    ! [X,Y,Z] : m_Ack(X,Y) != m_Down(Z) ).

fof(axiom_13,axiom,
    ! [X,Y,Z] : m_Ack(X,Y) != m_NotNorm(Z) ).

fof(axiom_14,axiom,
    ! [X,Y,Z] : m_Ack(X,Y) != m_Ldr(Z) ).

fof(axiom_15,axiom,
    ! [X,Y,Z] : m_Ack(X,Y) != m_NormQ(Z) ).

fof(axiom_16,axiom,
    ! [X,Y] : m_NotNorm(X) != m_Halt(Y) ).

fof(axiom_17,axiom,
    ! [X,Y] : m_Down(X) != m_Halt(Y) ).

fof(axiom_18,axiom,
    ! [X,Y] : m_Down(X) != m_Ldr(Y) ).

fof(axiom_19,axiom,
    ! [X,Y] : m_Down(X) != m_NotNorm(Y) ).

fof(axiom_20,axiom,
    ! [X,Y] : m_Down(X) != m_NormQ(Y) ).

fof(axiom_21,axiom,
    ! [X,Y] : m_NormQ(X) != m_Halt(Y) ).

fof(axiom_22,axiom,
    ! [X,Y] : m_Ldr(X) != m_Halt(Y) ).

fof(axiom_23,axiom,
    ! [X,Y] : m_Ldr(X) != m_NormQ(Y) ).

fof(axiom_24,axiom,
    ! [X,Y] : m_Ldr(X) != m_NotNorm(Y) ).

fof(axiom_25,axiom,
    ! [X,Y] : m_NormQ(X) != m_NotNorm(Y) ).

fof(axiom_26,axiom,
    ! [X,Y] :
      ( X != Y
    <=> m_Halt(X) != m_Halt(Y) ) ).

fof(axiom_27,axiom,
    ! [X,Y] :
      ( X != Y
    <=> m_NormQ(X) != m_NormQ(Y) ) ).

fof(axiom_28,axiom,
    ! [X,Y] :
      ( X != Y
    <=> m_NotNorm(X) != m_NotNorm(Y) ) ).

fof(axiom_29,axiom,
    ! [X,Y] :
      ( X != Y
    <=> m_Ldr(X) != m_Ldr(Y) ) ).

fof(axiom_30,axiom,
    ! [X,Y] :
      ( X != Y
    <=> m_Down(X) != m_Down(Y) ) ).

fof(axiom_31,axiom,
    ! [X1,X2,Y1,Y2] :
      ( X1 != X2
     => m_Ack(X1,Y1) != m_Ack(X2,Y2) ) ).

fof(axiom_32,axiom,
    ! [X1,X2,Y1,Y2] :
      ( Y1 != Y2
     => m_Ack(X1,Y1) != m_Ack(X2,Y2) ) ).

%----Axioms for a concurrent system; i.e. Pids and Alive
fof(axiom_33,axiom,
    ! [Pid,Pid2] :
      ( host(Pid) != host(Pid2)
     => Pid != Pid2 ) ).

fof(axiom_34,axiom,
    ~ setIn(nil,alive) ).

%----Axioms for snoc and cons style of queues
%----Injective
fof(axiom_35,axiom,
    ! [X,Q] : head(cons(X,Q)) = X ).

fof(axiom_36,axiom,
    ! [X,Q] : tail(cons(X,Q)) = Q ).

fof(axiom_37,axiom,
    ! [Y,Q] : last(snoc(Q,Y)) = Y ).

fof(axiom_38,axiom,
    ! [Y,Q] : init(snoc(Q,Y)) = Q ).

%----Surjective
fof(axiom_39,axiom,
    ! [Q] :
      ( Q = q_nil
      | Q = cons(head(Q),tail(Q)) ) ).

fof(axiom_40,axiom,
    ! [Q] :
      ( Q = q_nil
      | Q = snoc(init(Q),last(Q)) ) ).

%----Exclusive
fof(axiom_41,axiom,
    ! [X,Q] : q_nil != cons(X,Q) ).

fof(axiom_42,axiom,
    ! [Y,Q] : q_nil != snoc(Q,Y) ).

%----Equal singleton queue
fof(axiom_43,axiom,
    ! [X] : cons(X,q_nil) = snoc(q_nil,X) ).

%----Snoc+cons equals cons+snoc
fof(axiom_44,axiom,
    ! [X,Y,Q] : snoc(cons(X,Q),Y) = cons(X,snoc(Q,Y)) ).

%----Elem
fof(axiom_45,axiom,
    ! [X] : ~ elem(X,q_nil) ).

fof(axiom_46,axiom,
    ! [X,Y,Q] :
      ( elem(X,cons(Y,Q))
    <=> ( X = Y
        | elem(X,Q) ) ) ).

fof(axiom_47,axiom,
    ! [X,Y,Q] :
      ( elem(X,snoc(Q,Y))
    <=> ( X = Y
        | elem(X,Q) ) ) ).

%----Ordered
fof(axiom_48,axiom,
    ! [X] :
      ( pidElem(X)
    <=> ? [Y] :
          ( X = m_Halt(Y)
          | X = m_Down(Y) ) ) ).

fof(axiom_49,axiom,
    ! [X] : pidMsg(m_Halt(X)) = X ).

fof(axiom_50,axiom,
    ! [X] : pidMsg(m_Down(X)) = X ).

fof(axiom_51,axiom,
    ordered(q_nil) ).

fof(axiom_52,axiom,
    ! [X] :
      ( ordered(cons(X,q_nil))
      & ordered(snoc(q_nil,X)) ) ).

fof(axiom_53,axiom,
    ! [X,Q] :
      ( ordered(cons(X,Q))
    <=> ( ordered(Q)
        & ! [Y] :
            ( ( elem(Y,Q)
              & pidElem(X)
              & pidElem(Y)
              & host(pidMsg(Y)) = host(pidMsg(X)) )
           => leq(pidMsg(X),pidMsg(Y)) ) ) ) ).

fof(axiom_54,axiom,
    ! [X,Q] :
      ( ordered(snoc(Q,X))
    <=> ( ordered(Q)
        & ! [Y] :
            ( ( elem(Y,Q)
              & pidElem(X)
              & pidElem(Y)
              & host(pidMsg(Y)) = host(pidMsg(X)) )
           => leq(pidMsg(Y),pidMsg(X)) ) ) ) ).

%----Helper axioms
fof(axiom_55,axiom,
    ! [Q,X,Y] :
      ( ordered(Q)
     => ordered(snoc(Q,m_Ack(X,Y))) ) ).

fof(axiom_56,axiom,
    ! [Q,X] :
      ( ordered(Q)
     => ordered(snoc(Q,m_Ldr(X))) ) ).

fof(axiom_57,axiom,
    ! [Q,X,Y] :
      ( ( ordered(cons(m_Halt(X),Q))
        & host(X) = host(Y)
        & elem(m_Down(Y),Q) )
     => leq(X,Y) ) ).

fof(axiom_58,axiom,
    ! [X] : ~ leq(s(X),X) ).

fof(axiom_59,axiom,
    ! [X] : leq(X,X) ).

fof(axiom_60,axiom,
    ! [X,Y] :
      ( leq(X,Y)
      | leq(Y,X) ) ).

fof(axiom_61,axiom,
    ! [X,Y] :
      ( ( leq(X,Y)
        & leq(Y,X) )
    <=> X = Y ) ).

fof(axiom_62,axiom,
    ! [X,Y,Z] :
      ( ( leq(X,Y)
        & leq(Y,Z) )
     => leq(X,Z) ) ).

fof(axiom_63,axiom,
    ! [X,Y] :
      ( leq(X,Y)
    <=> leq(s(X),s(Y)) ) ).

fof(axiom_64,axiom,
    ! [X,Y] :
      ( leq(X,s(Y))
    <=> ( X = s(Y)
        | leq(X,Y) ) ) ).

%----Set axioms
fof(axiom_65,axiom,
    ! [X] : ~ setIn(X,setEmpty) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(conj,conjecture,
    ! [V,W,X] :
      ( ( ! [Y,Z] :
            ( elem(m_Ack(Z,Y),queue(host(Z)))
           => setIn(Z,pids) )
        & ! [Y,Z] :
            ( elem(m_Down(Z),queue(host(Y)))
           => ~ setIn(Z,alive) )
        & ! [Y,Z] :
            ( elem(m_Ldr(Z),queue(host(Y)))
           => ~ leq(host(Y),host(Z)) )
        & ! [Y,Z,Pid0] :
            ( elem(m_Ack(Pid0,Y),queue(host(Z)))
           => ~ leq(host(Y),host(Pid0)) )
        & ! [Y,Z] :
            ( ( ~ setIn(Y,alive)
              & leq(Z,Y)
              & host(Z) = host(Y) )
           => ~ setIn(Z,alive) )
        & ! [Y,Z] :
            ( ( Z != Y
              & host(Z) = host(Y) )
           => ( ~ setIn(Y,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Y,Z] :
            ( ( setIn(Z,alive)
              & elem(m_Ack(Z,Y),queue(host(Z))) )
           => leq(host(Y),index(pendack,host(Z))) )
        & ! [Y,Z] :
            ( ( setIn(Z,alive)
              & index(status,host(Z)) = elec_1 )
           => ~ elem(m_Ack(Y,Z),queue(host(Y))) )
        & ! [Y,Z] :
            ( ( setIn(Z,alive)
              & index(status,host(Z)) = elec_1 )
           => ~ elem(m_Ack(Z,Y),queue(host(Z))) )
        & ! [Y] :
            ( ( ( index(status,host(Y)) = elec_1
                | index(status,host(Y)) = elec_2 )
              & setIn(Y,alive) )
           => index(elid,host(Y)) = Y )
        & ! [Y,Z,Pid0] :
            ( ( elem(m_Down(Y),queue(host(Z)))
              & elem(m_Ack(Pid0,Z),queue(host(Pid0)))
              & host(Pid0) = host(Y) )
           => ~ setIn(Pid0,alive) )
        & ! [Y,Z,Pid0] :
            ( ( setIn(Z,alive)
              & setIn(Pid0,alive)
              & elem(m_Ack(Pid0,Y),queue(host(Pid0)))
              & host(Z) = host(Y) )
           => ~ setIn(host(Pid0),index(down,host(Z))) )
        & ! [Y,Z] :
            ( ( ~ leq(host(Y),host(Z))
              & setIn(Y,alive)
              & setIn(Z,alive)
              & index(status,host(Y)) = elec_2
              & index(status,host(Z)) = elec_2 )
           => ~ leq(index(pendack,host(Y)),index(pendack,host(Z))) )
        & ! [Y,Z,Pid0] :
            ( ( ~ leq(index(pendack,host(Pid0)),host(Y))
              & setIn(Pid0,alive)
              & elem(m_Halt(Pid0),queue(host(Z)))
              & index(status,host(Pid0)) = elec_2 )
           => ~ ( setIn(Y,alive)
                & index(ldr,host(Y)) = host(Y)
                & index(status,host(Y)) = norm ) )
        & ! [Y,Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Ack(Pid0,Z),queue(host(Pid0)))
              & leq(nbr_proc,index(pendack,host(Pid0)))
              & index(status,host(Pid0)) = elec_2
              & host(Z) = index(pendack,host(Pid0)) )
           => ~ ( setIn(Y,alive)
                & index(ldr,host(Y)) = host(Y)
                & index(status,host(Y)) = norm ) )
        & queue(host(W)) = cons(m_Halt(X),V) )
     => ( setIn(W,alive)
       => ! [Y] :
            ( host(W) != host(Y)
           => ! [Z,X0] :
                ( host(X) = host(X0)
               => ( host(W) != host(X0)
                 => ( ( setIn(X0,alive)
                      & leq(nbr_proc,index(pendack,host(X0)))
                      & elem(m_Ack(X0,Z),snoc(queue(host(X0)),m_Ack(X,W)))
                      & index(status,host(X0)) = elec_2
                      & host(Z) = index(pendack,host(X0)) )
                   => ~ ( setIn(Y,alive)
                        & index(ldr,host(Y)) = host(Y)
                        & index(status,host(Y)) = norm ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
