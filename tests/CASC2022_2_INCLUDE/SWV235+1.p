%------------------------------------------------------------------------------
% File     : SWV235+1 : TPTP v8.1.0. Released v3.2.0.
% Domain   : Software Verification (Security)
% Problem  : XOR import/export attack on the 4758 CCA API
% Version  : Especial.
% English  : This is a model of the key-management commands from the IBM CCA
%            API, which controls the 4758 hardware cryptoprocessor module. The
%            conjecture represents the security of a customer's PIN. This
%            variant is the key import/export attack.

% Refs     : [BA01]  Bond & Anderson (2001), API-Level Attacks on Embedded
%          : [Ste05] Steel (2005), Deduction with XOR Constraints in Securi
%          : [Ste06] Steel (2006), Email to G. Sutcliffe
% Source   : [Ste06]
% Names    :

% Status   : Theorem
% Rating   : 0.39 v8.1.0, 0.44 v7.5.0, 0.47 v7.4.0, 0.37 v7.3.0, 0.45 v7.1.0, 0.43 v7.0.0, 0.40 v6.4.0, 0.35 v6.3.0, 0.46 v6.2.0, 0.56 v6.1.0, 0.53 v6.0.0, 0.57 v5.5.0, 0.63 v5.4.0, 0.64 v5.3.0, 0.56 v5.2.0, 0.50 v5.1.0, 0.52 v5.0.0, 0.54 v4.1.0, 0.57 v4.0.1, 0.52 v4.0.0, 0.50 v3.5.0, 0.47 v3.4.0, 0.53 v3.3.0, 0.43 v3.2.0
% Syntax   : Number of formulae    :   29 (  18 unt;   0 def)
%            Number of atoms       :   57 (   5 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   28 (   0   ~;   0   |;  17   &)
%                                         (   0 <=>;  11  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   11 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   14 (  14 usr;  11 con; 0-2 aty)
%            Number of variables   :   41 (  41   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Have added in AC-axioms for the xor operator (*)
%          : The model was devised by Graham Steel in [Ste05]. The attack has
%            been found by a theorem prover supporting AC-unification (daTac),
%            but only when adapted to support XOR natively, using XOR
%            constraints. As such, it should present a challenging problem for
%            standard provers.
%------------------------------------------------------------------------------
fof(xor_commutative,axiom,
    ! [X1,X2] : xor(X1,X2) = xor(X2,X1) ).

fof(xor_associative,axiom,
    ! [X1,X2,X3] : xor(X1,xor(X2,X3)) = xor(xor(X1,X2),X3) ).

fof(encryption_decryption_cancellation,axiom,
    ! [X1,X2] : decrypt(X1,crypt(X1,X2)) = X2 ).

fof(xor_rules_1,axiom,
    ! [X1] : xor(X1,id) = X1 ).

fof(xor_rules_2,axiom,
    ! [X1] : xor(X1,X1) = id ).

fof(key_import,axiom,
    ! [Xkek1,Xtype1,Xk1,Xtype2,Xkek2] :
      ( ( p(crypt(xor(Xkek1,Xtype1),Xk1))
        & p(Xtype2)
        & p(crypt(xor(km,imp),Xkek2)) )
     => p(crypt(xor(km,Xtype2),decrypt(xor(Xkek2,Xtype2),crypt(xor(Xkek1,Xtype1),Xk1)))) ) ).

fof(key_export,axiom,
    ! [Xtype,Xk1,Xkek1] :
      ( ( p(crypt(xor(km,Xtype),Xk1))
        & p(Xtype)
        & p(crypt(xor(km,exp),Xkek1)) )
     => p(crypt(xor(Xkek1,Xtype),Xk1)) ) ).

fof(key_part_import___part_1,axiom,
    ! [Xk,Xtype] :
      ( ( p(Xk)
        & p(Xtype) )
     => p(crypt(xor(km,xor(kp,Xtype)),Xk)) ) ).

fof(key_part_import___part_2,axiom,
    ! [Xk1,Xtype,Xk2] :
      ( ( p(Xk1)
        & p(crypt(xor(km,xor(kp,Xtype)),Xk2))
        & p(Xtype) )
     => p(crypt(xor(km,xor(Xtype,kp)),xor(Xk1,Xk2))) ) ).

fof(key_part_import___part_3,axiom,
    ! [Xk1,Xtype,Xk2] :
      ( ( p(Xk1)
        & p(crypt(xor(km,xor(Xtype,kp)),Xk2))
        & p(Xtype) )
     => p(crypt(xor(km,Xtype),xor(Xk2,Xk1))) ) ).

fof(encrypt_data,axiom,
    ! [X1,Xk1] :
      ( ( p(X1)
        & p(crypt(xor(km,data),Xk1)) )
     => p(crypt(Xk1,X1)) ) ).

fof(decrypt_data,axiom,
    ! [X1,Xk1] :
      ( ( p(X1)
        & p(crypt(xor(km,data),Xk1)) )
     => p(decrypt(Xk1,X1)) ) ).

fof(key_translate,axiom,
    ! [Xk,Xk1,Xtype2,Xkek1,Xkek2,Xtype] :
      ( ( p(crypt(Xk,Xk1))
        & p(Xtype2)
        & p(crypt(xor(km,imp),Xkek1))
        & p(crypt(xor(km,exp),Xkek2)) )
     => p(crypt(xor(Xkek2,Xtype),decrypt(xor(Xtype2,Xkek1),crypt(Xk,Xk1)))) ) ).

fof(combine_with_XOR,axiom,
    ! [X1,X2] :
      ( ( p(X1)
        & p(X2) )
     => p(xor(X1,X2)) ) ).

fof(decrypt_knowledge,axiom,
    ! [X1,X2] :
      ( ( p(crypt(X1,X2))
        & p(X1) )
     => p(X2) ) ).

fof(encrypt_knowledge,axiom,
    ! [X1,X2] :
      ( ( p(X2)
        & p(X1) )
     => p(crypt(X1,X2)) ) ).

fof(initial_knowledge_of_intruder_1,axiom,
    p(kp) ).

fof(initial_knowledge_of_intruder_2,axiom,
    p(imp) ).

fof(initial_knowledge_of_intruder_3,axiom,
    p(data) ).

fof(initial_knowledge_of_intruder_4,axiom,
    p(id) ).

fof(initial_knowledge_of_intruder_5,axiom,
    p(pin) ).

fof(initial_knowledge_of_intruder_6,axiom,
    p(crypt(xor(km,pin),pp)) ).

fof(initial_knowledge_of_intruder_7,axiom,
    p(crypt(xor(km,imp),xor(rand,xor(imp,exp)))) ).

fof(initial_knowledge_of_intruder_8,axiom,
    p(crypt(xor(km,imp),rand)) ).

fof(initial_knowledge_of_intruder_9,axiom,
    p(crypt(xor(km,xor(imp,kp)),kek)) ).

fof(initial_knowledge_of_intruder_10,axiom,
    p(crypt(xor(rand,imp),kek)) ).

fof(initial_knowledge_of_intruder_11,axiom,
    p(exp) ).

fof(an_account_number,axiom,
    p(a) ).

fof(find_pin,conjecture,
    p(crypt(pp,a)) ).

%------------------------------------------------------------------------------
