%------------------------------------------------------------------------------
% File     : SWV233+1 : TPTP v8.1.0. Released v3.2.0.
% Domain   : Software Verification
% Problem  : Protocol attack problem
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.61 v8.1.0, 0.58 v7.5.0, 0.66 v7.4.0, 0.53 v7.3.0, 0.62 v7.1.0, 0.61 v7.0.0, 0.57 v6.4.0, 0.62 v6.2.0, 0.68 v6.1.0, 0.73 v6.0.0, 0.74 v5.5.0, 0.78 v5.4.0, 0.79 v5.3.0, 0.78 v5.2.0, 0.70 v5.1.0, 0.71 v4.1.0, 0.70 v4.0.0, 0.71 v3.7.0, 0.75 v3.5.0, 0.74 v3.3.0, 0.79 v3.2.0
% Syntax   : Number of formulae    :   19 (  10 unt;   0 def)
%            Number of atoms       :   52 (  12 equ)
%            Maximal formula atoms :   11 (   2 avg)
%            Number of connectives :   33 (   0   ~;   0   |;  24   &)
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   4 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   26 (  26 usr;   9 con; 0-2 aty)
%            Number of variables   :   32 (  32   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Zhitomirskaj emailed this to the TPTP, but the email is lost.
%------------------------------------------------------------------------------
%----Asymmetrical encryption
fof(encrypt_equation,axiom,
    ! [E1,E2] :
      ( ( knows(encrypt(E1,E2))
        & knows(inverse(E2)) )
     => knows(E1) ) ).

%----Symmetrical encryption
fof(symmetric_encrypt_equation,axiom,
    ! [E1,E2] :
      ( ( knows(symmetric_encrypt(E1,E2))
        & knows(E2) )
     => knows(E1) ) ).

%----Signature
fof(sign_equation,axiom,
    ! [E,K] :
      ( ( knows(sign(E,inverse(K)))
        & knows(K) )
     => knows(E) ) ).

%----Basic relations on knowledge where conc, enc, symenc and sign are included
fof(construct_message_1,axiom,
    ! [E1,E2] :
      ( ( knows(E1)
        & knows(E2) )
     => ( knows(concatenate(E1,E2))
        & knows(encrypt(E1,E2))
        & knows(symmetric_encrypt(E1,E2))
        & knows(decrypt(E1,E2))
        & knows(symmetric_decrypt(E1,E2))
        & knows(extract(E1,E2))
        & knows(sign(E1,E2)) ) ) ).

fof(construct_message_2,axiom,
    ! [E1,E2] :
      ( knows(concatenate(E1,E2))
     => ( knows(E1)
        & knows(E2) ) ) ).

%----Basic relations on knowledge where head, tail and hash are included
fof(construct_message_3,axiom,
    ! [E] :
      ( knows(E)
     => ( knows(head(E))
        & knows(tail(E))
        & knows(hash(E)) ) ) ).

%----Decryption, signature verifikation
fof(decrypt_axiom,axiom,
    ! [E,K] : decrypt(encrypt(E,K),inverse(K)) = E ).

fof(symmetric_decrypt_axiom,axiom,
    ! [E,K] : symmetric_decrypt(symmetric_encrypt(E,K),K) = E ).

fof(sign_axiom,axiom,
    ! [E,K] : extract(sign(E,inverse(K)),K) = E ).

%----head, tail, first, second, third, fourth
fof(head_axiom,axiom,
    ! [X,Y] : head(concatenate(X,Y)) = X ).

fof(tail_axiom,axiom,
    ! [X,Y] : tail(concatenate(X,Y)) = Y ).

fof(first_axiom,axiom,
    ! [X] : first(X) = head(X) ).

fof(second_axiom,axiom,
    ! [X] : second(X) = head(tail(X)) ).

fof(third_axiom,axiom,
    ! [X] : third(X) = head(tail(tail(X))) ).

fof(fourth_axiom,axiom,
    ! [X] : fourth(X) = head(tail(tail(tail(X)))) ).

%----mac
fof(symmac_axiom,axiom,
    ! [X,Y] :
      ( ( knows(X)
        & knows(Y) )
     => knows(mac(X,Y)) ) ).

%----Attackers initial knowledge
fof(previous_knowledge,axiom,
    ( knows(k_ca)
    & knows(inverse(k_a))
    & knows(k_a) ) ).

%----Main protocol specification
fof(protocol,axiom,
    ! [Init_1,Init_2,Init_3,Resp_1,Resp_2] :
      ( knows(concatenate(n,concatenate(k_c,sign(concatenate(c,concatenate(k_c,eol)),inverse(k_c)))))
      & ( ( knows(Resp_1)
          & knows(Resp_2)
          & first(extract(Resp_2,k_ca)) = s
          & second(extract(decrypt(Resp_1,inverse(k_c)),second(extract(Resp_2,k_ca)))) = n )
       => knows(symmetric_encrypt(secret,first(extract(decrypt(Resp_1,inverse(k_c)),second(extract(Resp_2,k_ca)))))) )
      & ( ( knows(Init_1)
          & knows(Init_2)
          & knows(Init_3)
          & second(extract(Init_3,Init_2)) = Init_2 )
       => knows(concatenate(encrypt(sign(concatenate(kgen(Init_2),concatenate(Init_1,eol)),inverse(k_s)),Init_2),sign(concatenate(s,concatenate(k_s,eol)),inverse(k_ca)))) ) ) ).

%----Conjecture
fof(attack,conjecture,
    knows(secret) ).

%------------------------------------------------------------------------------
