%------------------------------------------------------------------------------
% File     : NUM317+1 : TPTP v8.1.0. Released v3.1.0.
% Domain   : Number Theory (RDN arithmetic)
% Problem  : 5 + -2 = 3
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Theorem
% Rating   : 0.64 v8.1.0, 0.58 v7.5.0, 0.59 v7.4.0, 0.53 v7.3.0, 0.45 v7.2.0, 0.41 v7.1.0, 0.35 v7.0.0, 0.53 v6.4.0, 0.54 v6.3.0, 0.50 v6.2.0, 0.64 v6.1.0, 0.63 v6.0.0, 0.61 v5.5.0, 0.59 v5.4.0, 0.64 v5.3.0, 0.70 v5.2.0, 0.55 v5.1.0, 0.52 v5.0.0, 0.62 v4.1.0, 0.61 v4.0.1, 0.65 v4.0.0, 0.62 v3.7.0, 0.65 v3.5.0, 0.74 v3.4.0, 0.84 v3.3.0, 0.79 v3.2.0, 0.82 v3.1.0
% Syntax   : Number of formulae    :  402 ( 375 unt;   0 def)
%            Number of atoms       :  473 (   5 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   73 (   2   ~;   1   |;  43   &)
%                                         (   3 <=>;  24  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-4 aty)
%            Number of functors    :  260 ( 260 usr; 256 con; 0-2 aty)
%            Number of variables   :  121 ( 121   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
%------------------------------------------------------------------------------
% File     : NUM005+0 : TPTP v8.1.0. Released v3.1.0.
% Domain   : Number Theory
% Axioms   : Translating from nXXX to rdn notation
% Version  : Especial.
% English  : RDN format is "Reverse Decimal Notation". It stores the digits
%            of a decimal integer in reverse order.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :  256 ( 256 unt;   0 def)
%            Number of atoms       :  256 (   0 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    1 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :  260 ( 260 usr; 256 con; 0-2 aty)
%            Number of variables   :    0 (   0   !;   0   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
fof(rdn0,axiom,
    rdn_translate(n0,rdn_pos(rdnn(n0))) ).

fof(rdn1,axiom,
    rdn_translate(n1,rdn_pos(rdnn(n1))) ).

fof(rdn2,axiom,
    rdn_translate(n2,rdn_pos(rdnn(n2))) ).

fof(rdn3,axiom,
    rdn_translate(n3,rdn_pos(rdnn(n3))) ).

fof(rdn4,axiom,
    rdn_translate(n4,rdn_pos(rdnn(n4))) ).

fof(rdn5,axiom,
    rdn_translate(n5,rdn_pos(rdnn(n5))) ).

fof(rdn6,axiom,
    rdn_translate(n6,rdn_pos(rdnn(n6))) ).

fof(rdn7,axiom,
    rdn_translate(n7,rdn_pos(rdnn(n7))) ).

fof(rdn8,axiom,
    rdn_translate(n8,rdn_pos(rdnn(n8))) ).

fof(rdn9,axiom,
    rdn_translate(n9,rdn_pos(rdnn(n9))) ).

fof(rdn10,axiom,
    rdn_translate(n10,rdn_pos(rdn(rdnn(n0),rdnn(n1)))) ).

fof(rdn11,axiom,
    rdn_translate(n11,rdn_pos(rdn(rdnn(n1),rdnn(n1)))) ).

fof(rdn12,axiom,
    rdn_translate(n12,rdn_pos(rdn(rdnn(n2),rdnn(n1)))) ).

fof(rdn13,axiom,
    rdn_translate(n13,rdn_pos(rdn(rdnn(n3),rdnn(n1)))) ).

fof(rdn14,axiom,
    rdn_translate(n14,rdn_pos(rdn(rdnn(n4),rdnn(n1)))) ).

fof(rdn15,axiom,
    rdn_translate(n15,rdn_pos(rdn(rdnn(n5),rdnn(n1)))) ).

fof(rdn16,axiom,
    rdn_translate(n16,rdn_pos(rdn(rdnn(n6),rdnn(n1)))) ).

fof(rdn17,axiom,
    rdn_translate(n17,rdn_pos(rdn(rdnn(n7),rdnn(n1)))) ).

fof(rdn18,axiom,
    rdn_translate(n18,rdn_pos(rdn(rdnn(n8),rdnn(n1)))) ).

fof(rdn19,axiom,
    rdn_translate(n19,rdn_pos(rdn(rdnn(n9),rdnn(n1)))) ).

fof(rdn20,axiom,
    rdn_translate(n20,rdn_pos(rdn(rdnn(n0),rdnn(n2)))) ).

fof(rdn21,axiom,
    rdn_translate(n21,rdn_pos(rdn(rdnn(n1),rdnn(n2)))) ).

fof(rdn22,axiom,
    rdn_translate(n22,rdn_pos(rdn(rdnn(n2),rdnn(n2)))) ).

fof(rdn23,axiom,
    rdn_translate(n23,rdn_pos(rdn(rdnn(n3),rdnn(n2)))) ).

fof(rdn24,axiom,
    rdn_translate(n24,rdn_pos(rdn(rdnn(n4),rdnn(n2)))) ).

fof(rdn25,axiom,
    rdn_translate(n25,rdn_pos(rdn(rdnn(n5),rdnn(n2)))) ).

fof(rdn26,axiom,
    rdn_translate(n26,rdn_pos(rdn(rdnn(n6),rdnn(n2)))) ).

fof(rdn27,axiom,
    rdn_translate(n27,rdn_pos(rdn(rdnn(n7),rdnn(n2)))) ).

fof(rdn28,axiom,
    rdn_translate(n28,rdn_pos(rdn(rdnn(n8),rdnn(n2)))) ).

fof(rdn29,axiom,
    rdn_translate(n29,rdn_pos(rdn(rdnn(n9),rdnn(n2)))) ).

fof(rdn30,axiom,
    rdn_translate(n30,rdn_pos(rdn(rdnn(n0),rdnn(n3)))) ).

fof(rdn31,axiom,
    rdn_translate(n31,rdn_pos(rdn(rdnn(n1),rdnn(n3)))) ).

fof(rdn32,axiom,
    rdn_translate(n32,rdn_pos(rdn(rdnn(n2),rdnn(n3)))) ).

fof(rdn33,axiom,
    rdn_translate(n33,rdn_pos(rdn(rdnn(n3),rdnn(n3)))) ).

fof(rdn34,axiom,
    rdn_translate(n34,rdn_pos(rdn(rdnn(n4),rdnn(n3)))) ).

fof(rdn35,axiom,
    rdn_translate(n35,rdn_pos(rdn(rdnn(n5),rdnn(n3)))) ).

fof(rdn36,axiom,
    rdn_translate(n36,rdn_pos(rdn(rdnn(n6),rdnn(n3)))) ).

fof(rdn37,axiom,
    rdn_translate(n37,rdn_pos(rdn(rdnn(n7),rdnn(n3)))) ).

fof(rdn38,axiom,
    rdn_translate(n38,rdn_pos(rdn(rdnn(n8),rdnn(n3)))) ).

fof(rdn39,axiom,
    rdn_translate(n39,rdn_pos(rdn(rdnn(n9),rdnn(n3)))) ).

fof(rdn40,axiom,
    rdn_translate(n40,rdn_pos(rdn(rdnn(n0),rdnn(n4)))) ).

fof(rdn41,axiom,
    rdn_translate(n41,rdn_pos(rdn(rdnn(n1),rdnn(n4)))) ).

fof(rdn42,axiom,
    rdn_translate(n42,rdn_pos(rdn(rdnn(n2),rdnn(n4)))) ).

fof(rdn43,axiom,
    rdn_translate(n43,rdn_pos(rdn(rdnn(n3),rdnn(n4)))) ).

fof(rdn44,axiom,
    rdn_translate(n44,rdn_pos(rdn(rdnn(n4),rdnn(n4)))) ).

fof(rdn45,axiom,
    rdn_translate(n45,rdn_pos(rdn(rdnn(n5),rdnn(n4)))) ).

fof(rdn46,axiom,
    rdn_translate(n46,rdn_pos(rdn(rdnn(n6),rdnn(n4)))) ).

fof(rdn47,axiom,
    rdn_translate(n47,rdn_pos(rdn(rdnn(n7),rdnn(n4)))) ).

fof(rdn48,axiom,
    rdn_translate(n48,rdn_pos(rdn(rdnn(n8),rdnn(n4)))) ).

fof(rdn49,axiom,
    rdn_translate(n49,rdn_pos(rdn(rdnn(n9),rdnn(n4)))) ).

fof(rdn50,axiom,
    rdn_translate(n50,rdn_pos(rdn(rdnn(n0),rdnn(n5)))) ).

fof(rdn51,axiom,
    rdn_translate(n51,rdn_pos(rdn(rdnn(n1),rdnn(n5)))) ).

fof(rdn52,axiom,
    rdn_translate(n52,rdn_pos(rdn(rdnn(n2),rdnn(n5)))) ).

fof(rdn53,axiom,
    rdn_translate(n53,rdn_pos(rdn(rdnn(n3),rdnn(n5)))) ).

fof(rdn54,axiom,
    rdn_translate(n54,rdn_pos(rdn(rdnn(n4),rdnn(n5)))) ).

fof(rdn55,axiom,
    rdn_translate(n55,rdn_pos(rdn(rdnn(n5),rdnn(n5)))) ).

fof(rdn56,axiom,
    rdn_translate(n56,rdn_pos(rdn(rdnn(n6),rdnn(n5)))) ).

fof(rdn57,axiom,
    rdn_translate(n57,rdn_pos(rdn(rdnn(n7),rdnn(n5)))) ).

fof(rdn58,axiom,
    rdn_translate(n58,rdn_pos(rdn(rdnn(n8),rdnn(n5)))) ).

fof(rdn59,axiom,
    rdn_translate(n59,rdn_pos(rdn(rdnn(n9),rdnn(n5)))) ).

fof(rdn60,axiom,
    rdn_translate(n60,rdn_pos(rdn(rdnn(n0),rdnn(n6)))) ).

fof(rdn61,axiom,
    rdn_translate(n61,rdn_pos(rdn(rdnn(n1),rdnn(n6)))) ).

fof(rdn62,axiom,
    rdn_translate(n62,rdn_pos(rdn(rdnn(n2),rdnn(n6)))) ).

fof(rdn63,axiom,
    rdn_translate(n63,rdn_pos(rdn(rdnn(n3),rdnn(n6)))) ).

fof(rdn64,axiom,
    rdn_translate(n64,rdn_pos(rdn(rdnn(n4),rdnn(n6)))) ).

fof(rdn65,axiom,
    rdn_translate(n65,rdn_pos(rdn(rdnn(n5),rdnn(n6)))) ).

fof(rdn66,axiom,
    rdn_translate(n66,rdn_pos(rdn(rdnn(n6),rdnn(n6)))) ).

fof(rdn67,axiom,
    rdn_translate(n67,rdn_pos(rdn(rdnn(n7),rdnn(n6)))) ).

fof(rdn68,axiom,
    rdn_translate(n68,rdn_pos(rdn(rdnn(n8),rdnn(n6)))) ).

fof(rdn69,axiom,
    rdn_translate(n69,rdn_pos(rdn(rdnn(n9),rdnn(n6)))) ).

fof(rdn70,axiom,
    rdn_translate(n70,rdn_pos(rdn(rdnn(n0),rdnn(n7)))) ).

fof(rdn71,axiom,
    rdn_translate(n71,rdn_pos(rdn(rdnn(n1),rdnn(n7)))) ).

fof(rdn72,axiom,
    rdn_translate(n72,rdn_pos(rdn(rdnn(n2),rdnn(n7)))) ).

fof(rdn73,axiom,
    rdn_translate(n73,rdn_pos(rdn(rdnn(n3),rdnn(n7)))) ).

fof(rdn74,axiom,
    rdn_translate(n74,rdn_pos(rdn(rdnn(n4),rdnn(n7)))) ).

fof(rdn75,axiom,
    rdn_translate(n75,rdn_pos(rdn(rdnn(n5),rdnn(n7)))) ).

fof(rdn76,axiom,
    rdn_translate(n76,rdn_pos(rdn(rdnn(n6),rdnn(n7)))) ).

fof(rdn77,axiom,
    rdn_translate(n77,rdn_pos(rdn(rdnn(n7),rdnn(n7)))) ).

fof(rdn78,axiom,
    rdn_translate(n78,rdn_pos(rdn(rdnn(n8),rdnn(n7)))) ).

fof(rdn79,axiom,
    rdn_translate(n79,rdn_pos(rdn(rdnn(n9),rdnn(n7)))) ).

fof(rdn80,axiom,
    rdn_translate(n80,rdn_pos(rdn(rdnn(n0),rdnn(n8)))) ).

fof(rdn81,axiom,
    rdn_translate(n81,rdn_pos(rdn(rdnn(n1),rdnn(n8)))) ).

fof(rdn82,axiom,
    rdn_translate(n82,rdn_pos(rdn(rdnn(n2),rdnn(n8)))) ).

fof(rdn83,axiom,
    rdn_translate(n83,rdn_pos(rdn(rdnn(n3),rdnn(n8)))) ).

fof(rdn84,axiom,
    rdn_translate(n84,rdn_pos(rdn(rdnn(n4),rdnn(n8)))) ).

fof(rdn85,axiom,
    rdn_translate(n85,rdn_pos(rdn(rdnn(n5),rdnn(n8)))) ).

fof(rdn86,axiom,
    rdn_translate(n86,rdn_pos(rdn(rdnn(n6),rdnn(n8)))) ).

fof(rdn87,axiom,
    rdn_translate(n87,rdn_pos(rdn(rdnn(n7),rdnn(n8)))) ).

fof(rdn88,axiom,
    rdn_translate(n88,rdn_pos(rdn(rdnn(n8),rdnn(n8)))) ).

fof(rdn89,axiom,
    rdn_translate(n89,rdn_pos(rdn(rdnn(n9),rdnn(n8)))) ).

fof(rdn90,axiom,
    rdn_translate(n90,rdn_pos(rdn(rdnn(n0),rdnn(n9)))) ).

fof(rdn91,axiom,
    rdn_translate(n91,rdn_pos(rdn(rdnn(n1),rdnn(n9)))) ).

fof(rdn92,axiom,
    rdn_translate(n92,rdn_pos(rdn(rdnn(n2),rdnn(n9)))) ).

fof(rdn93,axiom,
    rdn_translate(n93,rdn_pos(rdn(rdnn(n3),rdnn(n9)))) ).

fof(rdn94,axiom,
    rdn_translate(n94,rdn_pos(rdn(rdnn(n4),rdnn(n9)))) ).

fof(rdn95,axiom,
    rdn_translate(n95,rdn_pos(rdn(rdnn(n5),rdnn(n9)))) ).

fof(rdn96,axiom,
    rdn_translate(n96,rdn_pos(rdn(rdnn(n6),rdnn(n9)))) ).

fof(rdn97,axiom,
    rdn_translate(n97,rdn_pos(rdn(rdnn(n7),rdnn(n9)))) ).

fof(rdn98,axiom,
    rdn_translate(n98,rdn_pos(rdn(rdnn(n8),rdnn(n9)))) ).

fof(rdn99,axiom,
    rdn_translate(n99,rdn_pos(rdn(rdnn(n9),rdnn(n9)))) ).

fof(rdn100,axiom,
    rdn_translate(n100,rdn_pos(rdn(rdnn(n0),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn101,axiom,
    rdn_translate(n101,rdn_pos(rdn(rdnn(n1),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn102,axiom,
    rdn_translate(n102,rdn_pos(rdn(rdnn(n2),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn103,axiom,
    rdn_translate(n103,rdn_pos(rdn(rdnn(n3),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn104,axiom,
    rdn_translate(n104,rdn_pos(rdn(rdnn(n4),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn105,axiom,
    rdn_translate(n105,rdn_pos(rdn(rdnn(n5),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn106,axiom,
    rdn_translate(n106,rdn_pos(rdn(rdnn(n6),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn107,axiom,
    rdn_translate(n107,rdn_pos(rdn(rdnn(n7),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn108,axiom,
    rdn_translate(n108,rdn_pos(rdn(rdnn(n8),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn109,axiom,
    rdn_translate(n109,rdn_pos(rdn(rdnn(n9),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdn110,axiom,
    rdn_translate(n110,rdn_pos(rdn(rdnn(n0),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn111,axiom,
    rdn_translate(n111,rdn_pos(rdn(rdnn(n1),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn112,axiom,
    rdn_translate(n112,rdn_pos(rdn(rdnn(n2),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn113,axiom,
    rdn_translate(n113,rdn_pos(rdn(rdnn(n3),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn114,axiom,
    rdn_translate(n114,rdn_pos(rdn(rdnn(n4),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn115,axiom,
    rdn_translate(n115,rdn_pos(rdn(rdnn(n5),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn116,axiom,
    rdn_translate(n116,rdn_pos(rdn(rdnn(n6),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn117,axiom,
    rdn_translate(n117,rdn_pos(rdn(rdnn(n7),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn118,axiom,
    rdn_translate(n118,rdn_pos(rdn(rdnn(n8),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn119,axiom,
    rdn_translate(n119,rdn_pos(rdn(rdnn(n9),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdn120,axiom,
    rdn_translate(n120,rdn_pos(rdn(rdnn(n0),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn121,axiom,
    rdn_translate(n121,rdn_pos(rdn(rdnn(n1),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn122,axiom,
    rdn_translate(n122,rdn_pos(rdn(rdnn(n2),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn123,axiom,
    rdn_translate(n123,rdn_pos(rdn(rdnn(n3),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn124,axiom,
    rdn_translate(n124,rdn_pos(rdn(rdnn(n4),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn125,axiom,
    rdn_translate(n125,rdn_pos(rdn(rdnn(n5),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn126,axiom,
    rdn_translate(n126,rdn_pos(rdn(rdnn(n6),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdn127,axiom,
    rdn_translate(n127,rdn_pos(rdn(rdnn(n7),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn1,axiom,
    rdn_translate(nn1,rdn_neg(rdnn(n1))) ).

fof(rdnn2,axiom,
    rdn_translate(nn2,rdn_neg(rdnn(n2))) ).

fof(rdnn3,axiom,
    rdn_translate(nn3,rdn_neg(rdnn(n3))) ).

fof(rdnn4,axiom,
    rdn_translate(nn4,rdn_neg(rdnn(n4))) ).

fof(rdnn5,axiom,
    rdn_translate(nn5,rdn_neg(rdnn(n5))) ).

fof(rdnn6,axiom,
    rdn_translate(nn6,rdn_neg(rdnn(n6))) ).

fof(rdnn7,axiom,
    rdn_translate(nn7,rdn_neg(rdnn(n7))) ).

fof(rdnn8,axiom,
    rdn_translate(nn8,rdn_neg(rdnn(n8))) ).

fof(rdnn9,axiom,
    rdn_translate(nn9,rdn_neg(rdnn(n9))) ).

fof(rdnn10,axiom,
    rdn_translate(nn10,rdn_neg(rdn(rdnn(n0),rdnn(n1)))) ).

fof(rdnn11,axiom,
    rdn_translate(nn11,rdn_neg(rdn(rdnn(n1),rdnn(n1)))) ).

fof(rdnn12,axiom,
    rdn_translate(nn12,rdn_neg(rdn(rdnn(n2),rdnn(n1)))) ).

fof(rdnn13,axiom,
    rdn_translate(nn13,rdn_neg(rdn(rdnn(n3),rdnn(n1)))) ).

fof(rdnn14,axiom,
    rdn_translate(nn14,rdn_neg(rdn(rdnn(n4),rdnn(n1)))) ).

fof(rdnn15,axiom,
    rdn_translate(nn15,rdn_neg(rdn(rdnn(n5),rdnn(n1)))) ).

fof(rdnn16,axiom,
    rdn_translate(nn16,rdn_neg(rdn(rdnn(n6),rdnn(n1)))) ).

fof(rdnn17,axiom,
    rdn_translate(nn17,rdn_neg(rdn(rdnn(n7),rdnn(n1)))) ).

fof(rdnn18,axiom,
    rdn_translate(nn18,rdn_neg(rdn(rdnn(n8),rdnn(n1)))) ).

fof(rdnn19,axiom,
    rdn_translate(nn19,rdn_neg(rdn(rdnn(n9),rdnn(n1)))) ).

fof(rdnn20,axiom,
    rdn_translate(nn20,rdn_neg(rdn(rdnn(n0),rdnn(n2)))) ).

fof(rdnn21,axiom,
    rdn_translate(nn21,rdn_neg(rdn(rdnn(n1),rdnn(n2)))) ).

fof(rdnn22,axiom,
    rdn_translate(nn22,rdn_neg(rdn(rdnn(n2),rdnn(n2)))) ).

fof(rdnn23,axiom,
    rdn_translate(nn23,rdn_neg(rdn(rdnn(n3),rdnn(n2)))) ).

fof(rdnn24,axiom,
    rdn_translate(nn24,rdn_neg(rdn(rdnn(n4),rdnn(n2)))) ).

fof(rdnn25,axiom,
    rdn_translate(nn25,rdn_neg(rdn(rdnn(n5),rdnn(n2)))) ).

fof(rdnn26,axiom,
    rdn_translate(nn26,rdn_neg(rdn(rdnn(n6),rdnn(n2)))) ).

fof(rdnn27,axiom,
    rdn_translate(nn27,rdn_neg(rdn(rdnn(n7),rdnn(n2)))) ).

fof(rdnn28,axiom,
    rdn_translate(nn28,rdn_neg(rdn(rdnn(n8),rdnn(n2)))) ).

fof(rdnn29,axiom,
    rdn_translate(nn29,rdn_neg(rdn(rdnn(n9),rdnn(n2)))) ).

fof(rdnn30,axiom,
    rdn_translate(nn30,rdn_neg(rdn(rdnn(n0),rdnn(n3)))) ).

fof(rdnn31,axiom,
    rdn_translate(nn31,rdn_neg(rdn(rdnn(n1),rdnn(n3)))) ).

fof(rdnn32,axiom,
    rdn_translate(nn32,rdn_neg(rdn(rdnn(n2),rdnn(n3)))) ).

fof(rdnn33,axiom,
    rdn_translate(nn33,rdn_neg(rdn(rdnn(n3),rdnn(n3)))) ).

fof(rdnn34,axiom,
    rdn_translate(nn34,rdn_neg(rdn(rdnn(n4),rdnn(n3)))) ).

fof(rdnn35,axiom,
    rdn_translate(nn35,rdn_neg(rdn(rdnn(n5),rdnn(n3)))) ).

fof(rdnn36,axiom,
    rdn_translate(nn36,rdn_neg(rdn(rdnn(n6),rdnn(n3)))) ).

fof(rdnn37,axiom,
    rdn_translate(nn37,rdn_neg(rdn(rdnn(n7),rdnn(n3)))) ).

fof(rdnn38,axiom,
    rdn_translate(nn38,rdn_neg(rdn(rdnn(n8),rdnn(n3)))) ).

fof(rdnn39,axiom,
    rdn_translate(nn39,rdn_neg(rdn(rdnn(n9),rdnn(n3)))) ).

fof(rdnn40,axiom,
    rdn_translate(nn40,rdn_neg(rdn(rdnn(n0),rdnn(n4)))) ).

fof(rdnn41,axiom,
    rdn_translate(nn41,rdn_neg(rdn(rdnn(n1),rdnn(n4)))) ).

fof(rdnn42,axiom,
    rdn_translate(nn42,rdn_neg(rdn(rdnn(n2),rdnn(n4)))) ).

fof(rdnn43,axiom,
    rdn_translate(nn43,rdn_neg(rdn(rdnn(n3),rdnn(n4)))) ).

fof(rdnn44,axiom,
    rdn_translate(nn44,rdn_neg(rdn(rdnn(n4),rdnn(n4)))) ).

fof(rdnn45,axiom,
    rdn_translate(nn45,rdn_neg(rdn(rdnn(n5),rdnn(n4)))) ).

fof(rdnn46,axiom,
    rdn_translate(nn46,rdn_neg(rdn(rdnn(n6),rdnn(n4)))) ).

fof(rdnn47,axiom,
    rdn_translate(nn47,rdn_neg(rdn(rdnn(n7),rdnn(n4)))) ).

fof(rdnn48,axiom,
    rdn_translate(nn48,rdn_neg(rdn(rdnn(n8),rdnn(n4)))) ).

fof(rdnn49,axiom,
    rdn_translate(nn49,rdn_neg(rdn(rdnn(n9),rdnn(n4)))) ).

fof(rdnn50,axiom,
    rdn_translate(nn50,rdn_neg(rdn(rdnn(n0),rdnn(n5)))) ).

fof(rdnn51,axiom,
    rdn_translate(nn51,rdn_neg(rdn(rdnn(n1),rdnn(n5)))) ).

fof(rdnn52,axiom,
    rdn_translate(nn52,rdn_neg(rdn(rdnn(n2),rdnn(n5)))) ).

fof(rdnn53,axiom,
    rdn_translate(nn53,rdn_neg(rdn(rdnn(n3),rdnn(n5)))) ).

fof(rdnn54,axiom,
    rdn_translate(nn54,rdn_neg(rdn(rdnn(n4),rdnn(n5)))) ).

fof(rdnn55,axiom,
    rdn_translate(nn55,rdn_neg(rdn(rdnn(n5),rdnn(n5)))) ).

fof(rdnn56,axiom,
    rdn_translate(nn56,rdn_neg(rdn(rdnn(n6),rdnn(n5)))) ).

fof(rdnn57,axiom,
    rdn_translate(nn57,rdn_neg(rdn(rdnn(n7),rdnn(n5)))) ).

fof(rdnn58,axiom,
    rdn_translate(nn58,rdn_neg(rdn(rdnn(n8),rdnn(n5)))) ).

fof(rdnn59,axiom,
    rdn_translate(nn59,rdn_neg(rdn(rdnn(n9),rdnn(n5)))) ).

fof(rdnn60,axiom,
    rdn_translate(nn60,rdn_neg(rdn(rdnn(n0),rdnn(n6)))) ).

fof(rdnn61,axiom,
    rdn_translate(nn61,rdn_neg(rdn(rdnn(n1),rdnn(n6)))) ).

fof(rdnn62,axiom,
    rdn_translate(nn62,rdn_neg(rdn(rdnn(n2),rdnn(n6)))) ).

fof(rdnn63,axiom,
    rdn_translate(nn63,rdn_neg(rdn(rdnn(n3),rdnn(n6)))) ).

fof(rdnn64,axiom,
    rdn_translate(nn64,rdn_neg(rdn(rdnn(n4),rdnn(n6)))) ).

fof(rdnn65,axiom,
    rdn_translate(nn65,rdn_neg(rdn(rdnn(n5),rdnn(n6)))) ).

fof(rdnn66,axiom,
    rdn_translate(nn66,rdn_neg(rdn(rdnn(n6),rdnn(n6)))) ).

fof(rdnn67,axiom,
    rdn_translate(nn67,rdn_neg(rdn(rdnn(n7),rdnn(n6)))) ).

fof(rdnn68,axiom,
    rdn_translate(nn68,rdn_neg(rdn(rdnn(n8),rdnn(n6)))) ).

fof(rdnn69,axiom,
    rdn_translate(nn69,rdn_neg(rdn(rdnn(n9),rdnn(n6)))) ).

fof(rdnn70,axiom,
    rdn_translate(nn70,rdn_neg(rdn(rdnn(n0),rdnn(n7)))) ).

fof(rdnn71,axiom,
    rdn_translate(nn71,rdn_neg(rdn(rdnn(n1),rdnn(n7)))) ).

fof(rdnn72,axiom,
    rdn_translate(nn72,rdn_neg(rdn(rdnn(n2),rdnn(n7)))) ).

fof(rdnn73,axiom,
    rdn_translate(nn73,rdn_neg(rdn(rdnn(n3),rdnn(n7)))) ).

fof(rdnn74,axiom,
    rdn_translate(nn74,rdn_neg(rdn(rdnn(n4),rdnn(n7)))) ).

fof(rdnn75,axiom,
    rdn_translate(nn75,rdn_neg(rdn(rdnn(n5),rdnn(n7)))) ).

fof(rdnn76,axiom,
    rdn_translate(nn76,rdn_neg(rdn(rdnn(n6),rdnn(n7)))) ).

fof(rdnn77,axiom,
    rdn_translate(nn77,rdn_neg(rdn(rdnn(n7),rdnn(n7)))) ).

fof(rdnn78,axiom,
    rdn_translate(nn78,rdn_neg(rdn(rdnn(n8),rdnn(n7)))) ).

fof(rdnn79,axiom,
    rdn_translate(nn79,rdn_neg(rdn(rdnn(n9),rdnn(n7)))) ).

fof(rdnn80,axiom,
    rdn_translate(nn80,rdn_neg(rdn(rdnn(n0),rdnn(n8)))) ).

fof(rdnn81,axiom,
    rdn_translate(nn81,rdn_neg(rdn(rdnn(n1),rdnn(n8)))) ).

fof(rdnn82,axiom,
    rdn_translate(nn82,rdn_neg(rdn(rdnn(n2),rdnn(n8)))) ).

fof(rdnn83,axiom,
    rdn_translate(nn83,rdn_neg(rdn(rdnn(n3),rdnn(n8)))) ).

fof(rdnn84,axiom,
    rdn_translate(nn84,rdn_neg(rdn(rdnn(n4),rdnn(n8)))) ).

fof(rdnn85,axiom,
    rdn_translate(nn85,rdn_neg(rdn(rdnn(n5),rdnn(n8)))) ).

fof(rdnn86,axiom,
    rdn_translate(nn86,rdn_neg(rdn(rdnn(n6),rdnn(n8)))) ).

fof(rdnn87,axiom,
    rdn_translate(nn87,rdn_neg(rdn(rdnn(n7),rdnn(n8)))) ).

fof(rdnn88,axiom,
    rdn_translate(nn88,rdn_neg(rdn(rdnn(n8),rdnn(n8)))) ).

fof(rdnn89,axiom,
    rdn_translate(nn89,rdn_neg(rdn(rdnn(n9),rdnn(n8)))) ).

fof(rdnn90,axiom,
    rdn_translate(nn90,rdn_neg(rdn(rdnn(n0),rdnn(n9)))) ).

fof(rdnn91,axiom,
    rdn_translate(nn91,rdn_neg(rdn(rdnn(n1),rdnn(n9)))) ).

fof(rdnn92,axiom,
    rdn_translate(nn92,rdn_neg(rdn(rdnn(n2),rdnn(n9)))) ).

fof(rdnn93,axiom,
    rdn_translate(nn93,rdn_neg(rdn(rdnn(n3),rdnn(n9)))) ).

fof(rdnn94,axiom,
    rdn_translate(nn94,rdn_neg(rdn(rdnn(n4),rdnn(n9)))) ).

fof(rdnn95,axiom,
    rdn_translate(nn95,rdn_neg(rdn(rdnn(n5),rdnn(n9)))) ).

fof(rdnn96,axiom,
    rdn_translate(nn96,rdn_neg(rdn(rdnn(n6),rdnn(n9)))) ).

fof(rdnn97,axiom,
    rdn_translate(nn97,rdn_neg(rdn(rdnn(n7),rdnn(n9)))) ).

fof(rdnn98,axiom,
    rdn_translate(nn98,rdn_neg(rdn(rdnn(n8),rdnn(n9)))) ).

fof(rdnn99,axiom,
    rdn_translate(nn99,rdn_neg(rdn(rdnn(n9),rdnn(n9)))) ).

fof(rdnn100,axiom,
    rdn_translate(nn100,rdn_neg(rdn(rdnn(n0),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn101,axiom,
    rdn_translate(nn101,rdn_neg(rdn(rdnn(n1),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn102,axiom,
    rdn_translate(nn102,rdn_neg(rdn(rdnn(n2),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn103,axiom,
    rdn_translate(nn103,rdn_neg(rdn(rdnn(n3),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn104,axiom,
    rdn_translate(nn104,rdn_neg(rdn(rdnn(n4),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn105,axiom,
    rdn_translate(nn105,rdn_neg(rdn(rdnn(n5),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn106,axiom,
    rdn_translate(nn106,rdn_neg(rdn(rdnn(n6),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn107,axiom,
    rdn_translate(nn107,rdn_neg(rdn(rdnn(n7),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn108,axiom,
    rdn_translate(nn108,rdn_neg(rdn(rdnn(n8),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn109,axiom,
    rdn_translate(nn109,rdn_neg(rdn(rdnn(n9),rdn(rdnn(n0),rdnn(n1))))) ).

fof(rdnn110,axiom,
    rdn_translate(nn110,rdn_neg(rdn(rdnn(n0),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn111,axiom,
    rdn_translate(nn111,rdn_neg(rdn(rdnn(n1),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn112,axiom,
    rdn_translate(nn112,rdn_neg(rdn(rdnn(n2),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn113,axiom,
    rdn_translate(nn113,rdn_neg(rdn(rdnn(n3),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn114,axiom,
    rdn_translate(nn114,rdn_neg(rdn(rdnn(n4),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn115,axiom,
    rdn_translate(nn115,rdn_neg(rdn(rdnn(n5),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn116,axiom,
    rdn_translate(nn116,rdn_neg(rdn(rdnn(n6),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn117,axiom,
    rdn_translate(nn117,rdn_neg(rdn(rdnn(n7),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn118,axiom,
    rdn_translate(nn118,rdn_neg(rdn(rdnn(n8),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn119,axiom,
    rdn_translate(nn119,rdn_neg(rdn(rdnn(n9),rdn(rdnn(n1),rdnn(n1))))) ).

fof(rdnn120,axiom,
    rdn_translate(nn120,rdn_neg(rdn(rdnn(n0),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn121,axiom,
    rdn_translate(nn121,rdn_neg(rdn(rdnn(n1),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn122,axiom,
    rdn_translate(nn122,rdn_neg(rdn(rdnn(n2),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn123,axiom,
    rdn_translate(nn123,rdn_neg(rdn(rdnn(n3),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn124,axiom,
    rdn_translate(nn124,rdn_neg(rdn(rdnn(n4),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn125,axiom,
    rdn_translate(nn125,rdn_neg(rdn(rdnn(n5),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn126,axiom,
    rdn_translate(nn126,rdn_neg(rdn(rdnn(n6),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn127,axiom,
    rdn_translate(nn127,rdn_neg(rdn(rdnn(n7),rdn(rdnn(n2),rdnn(n1))))) ).

fof(rdnn128,axiom,
    rdn_translate(nn128,rdn_neg(rdn(rdnn(n8),rdn(rdnn(n2),rdnn(n1))))) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : NUM005+1 : TPTP v8.1.0. Released v3.1.0.
% Domain   : Number Theory
% Axioms   : Less in RDN format
% Version  : Especial.
% English  : Impements a "human style" less using RDN format.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   30 (  18 unt;   0 def)
%            Number of atoms       :   52 (   2 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   24 (   2   ~;   1   |;   9   &)
%                                         (   2 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    8 (   7 usr;   0 prp; 1-3 aty)
%            Number of functors    :   14 (  14 usr;  10 con; 0-2 aty)
%            Number of variables   :   35 (  35   !;   0   ?)
% SPC      : 

% Comments : Requires NUM005+0.ax
%------------------------------------------------------------------------------
fof(rdn_digit1,axiom,
    rdn_non_zero_digit(rdnn(n1)) ).

fof(rdn_digit2,axiom,
    rdn_non_zero_digit(rdnn(n2)) ).

fof(rdn_digit3,axiom,
    rdn_non_zero_digit(rdnn(n3)) ).

fof(rdn_digit4,axiom,
    rdn_non_zero_digit(rdnn(n4)) ).

fof(rdn_digit5,axiom,
    rdn_non_zero_digit(rdnn(n5)) ).

fof(rdn_digit6,axiom,
    rdn_non_zero_digit(rdnn(n6)) ).

fof(rdn_digit7,axiom,
    rdn_non_zero_digit(rdnn(n7)) ).

fof(rdn_digit8,axiom,
    rdn_non_zero_digit(rdnn(n8)) ).

fof(rdn_digit9,axiom,
    rdn_non_zero_digit(rdnn(n9)) ).

fof(rdn_positive_less01,axiom,
    rdn_positive_less(rdnn(n0),rdnn(n1)) ).

fof(rdn_positive_less12,axiom,
    rdn_positive_less(rdnn(n1),rdnn(n2)) ).

fof(rdn_positive_less23,axiom,
    rdn_positive_less(rdnn(n2),rdnn(n3)) ).

fof(rdn_positive_less34,axiom,
    rdn_positive_less(rdnn(n3),rdnn(n4)) ).

fof(rdn_positive_less45,axiom,
    rdn_positive_less(rdnn(n4),rdnn(n5)) ).

fof(rdn_positive_less56,axiom,
    rdn_positive_less(rdnn(n5),rdnn(n6)) ).

fof(rdn_positive_less67,axiom,
    rdn_positive_less(rdnn(n6),rdnn(n7)) ).

fof(rdn_positive_less78,axiom,
    rdn_positive_less(rdnn(n7),rdnn(n8)) ).

fof(rdn_positive_less89,axiom,
    rdn_positive_less(rdnn(n8),rdnn(n9)) ).

fof(rdn_positive_less_transitivity,axiom,
    ! [X,Y,Z] :
      ( ( rdn_positive_less(rdnn(X),rdnn(Y))
        & rdn_positive_less(rdnn(Y),rdnn(Z)) )
     => rdn_positive_less(rdnn(X),rdnn(Z)) ) ).

fof(rdn_positive_less_multi_digit_high,axiom,
    ! [Ds,Os,Db,Ob] :
      ( rdn_positive_less(Os,Ob)
     => rdn_positive_less(rdn(rdnn(Ds),Os),rdn(rdnn(Db),Ob)) ) ).

fof(rdn_positive_less_multi_digit_low,axiom,
    ! [Ds,O,Db] :
      ( ( rdn_positive_less(rdnn(Ds),rdnn(Db))
        & rdn_non_zero(O) )
     => rdn_positive_less(rdn(rdnn(Ds),O),rdn(rdnn(Db),O)) ) ).

fof(rdn_extra_digits_positive_less,axiom,
    ! [D,Db,Ob] :
      ( rdn_non_zero(Ob)
     => rdn_positive_less(rdnn(D),rdn(rdnn(Db),Ob)) ) ).

fof(rdn_non_zero_by_digit,axiom,
    ! [X] :
      ( rdn_non_zero_digit(rdnn(X))
     => rdn_non_zero(rdnn(X)) ) ).

fof(rdn_non_zero_by_structure,axiom,
    ! [D,O] :
      ( rdn_non_zero(O)
     => rdn_non_zero(rdn(rdnn(D),O)) ) ).

fof(less_entry_point_pos_pos,axiom,
    ! [X,Y,RDN_X,RDN_Y] :
      ( ( rdn_translate(X,rdn_pos(RDN_X))
        & rdn_translate(Y,rdn_pos(RDN_Y))
        & rdn_positive_less(RDN_X,RDN_Y) )
     => less(X,Y) ) ).

fof(less_entry_point_neg_pos,axiom,
    ! [X,Y,RDN_X,RDN_Y] :
      ( ( rdn_translate(X,rdn_neg(RDN_X))
        & rdn_translate(Y,rdn_pos(RDN_Y)) )
     => less(X,Y) ) ).

fof(less_entry_point_neg_neg,axiom,
    ! [X,Y,RDN_X,RDN_Y] :
      ( ( rdn_translate(X,rdn_neg(RDN_X))
        & rdn_translate(Y,rdn_neg(RDN_Y))
        & rdn_positive_less(RDN_Y,RDN_X) )
     => less(X,Y) ) ).

fof(less_property,axiom,
    ! [X,Y] :
      ( less(X,Y)
    <=> ( ~ less(Y,X)
        & Y != X ) ) ).

%----Old axiom from the days of natural numbers
%fof(less0,axiom,(
%    ~ ( ? [X] : less(X,n0) )   )).

fof(less_or_equal,axiom,
    ! [X,Y] :
      ( less_or_equal(X,Y)
    <=> ( less(X,Y)
        | X = Y ) ) ).

%----Successive integers
fof(less_successor,axiom,
    ! [X,Y,Z] :
      ( ( sum(X,n1,Y)
        & less(Z,Y) )
     => less_or_equal(Z,X) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% File     : NUM005+2 : TPTP v8.1.0. Released v3.1.0.
% Domain   : Number Theory
% Axioms   : Sum in RDN format
% Version  : Especial.
% English  : Impements a "human style" addition using RDN format.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :  115 ( 100 unt;   0 def)
%            Number of atoms       :  164 (   3 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   49 (   0   ~;   0   |;  34   &)
%                                         (   1 <=>;  14  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    8 (   7 usr;   0 prp; 1-4 aty)
%            Number of functors    :   14 (  14 usr;  10 con; 0-2 aty)
%            Number of variables   :   86 (  86   !;   0   ?)
% SPC      : 

% Comments : Requires NUM005+0.ax NUM005+1.ax
%------------------------------------------------------------------------------
%----Addition entry points
%----pos(X) + pos(Y)
fof(sum_entry_point_pos_pos,axiom,
    ! [X,Y,Z,RDN_X,RDN_Y,RDN_Z] :
      ( ( rdn_translate(X,rdn_pos(RDN_X))
        & rdn_translate(Y,rdn_pos(RDN_Y))
        & rdn_add_with_carry(rdnn(n0),RDN_X,RDN_Y,RDN_Z)
        & rdn_translate(Z,rdn_pos(RDN_Z)) )
     => sum(X,Y,Z) ) ).

%----neg(X) + neg(Y)
fof(sum_entry_point_neg_neg,axiom,
    ! [X,Y,Z,RDN_X,RDN_Y,RDN_Z] :
      ( ( rdn_translate(X,rdn_neg(RDN_X))
        & rdn_translate(Y,rdn_neg(RDN_Y))
        & rdn_add_with_carry(rdnn(n0),RDN_X,RDN_Y,RDN_Z)
        & rdn_translate(Z,rdn_neg(RDN_Z)) )
     => sum(X,Y,Z) ) ).

%----pos(X) + neg(Y), X < Y
fof(sum_entry_point_pos_neg_1,axiom,
    ! [X,Y,Z,RDN_X,RDN_Y,RDN_Z] :
      ( ( rdn_translate(X,rdn_pos(RDN_X))
        & rdn_translate(Y,rdn_neg(RDN_Y))
        & rdn_positive_less(RDN_X,RDN_Y)
        & rdn_add_with_carry(rdnn(n0),RDN_X,RDN_Z,RDN_Y)
        & rdn_translate(Z,rdn_neg(RDN_Z)) )
     => sum(X,Y,Z) ) ).

%----pos(X) + neg(Y), X > Y
fof(sum_entry_point_pos_neg_2,axiom,
    ! [X,Y,Z,RDN_X,RDN_Y,RDN_Z] :
      ( ( rdn_translate(X,rdn_pos(RDN_X))
        & rdn_translate(Y,rdn_neg(RDN_Y))
        & rdn_positive_less(RDN_Y,RDN_X)
        & rdn_add_with_carry(rdnn(n0),RDN_Y,RDN_Z,RDN_X)
        & rdn_translate(Z,rdn_pos(RDN_Z)) )
     => sum(X,Y,Z) ) ).

%----pos(X) + neg(X), X + -X = n0
fof(sum_entry_point_posx_negx,axiom,
    ! [POS_X,NEG_X,RDN_X] :
      ( ( rdn_translate(POS_X,rdn_pos(RDN_X))
        & rdn_translate(NEG_X,rdn_neg(RDN_X)) )
     => sum(POS_X,NEG_X,n0) ) ).

%----neg + pos
fof(sum_entry_point_neg_pos,axiom,
    ! [X,Y,Z,RDN_X,RDN_Y] :
      ( ( rdn_translate(X,rdn_neg(RDN_X))
        & rdn_translate(Y,rdn_pos(RDN_Y))
        & sum(Y,X,Z) )
     => sum(X,Y,Z) ) ).

%----Sum is unique
fof(unique_sum,axiom,
    ! [X,Y,Z1,Z2] :
      ( ( sum(X,Y,Z1)
        & sum(X,Y,Z2) )
     => Z1 = Z2 ) ).

%----Operands are unique
fof(unique_LHS,axiom,
    ! [X1,X2,Y,Z] :
      ( ( sum(X1,Y,Z)
        & sum(X2,Y,Z) )
     => X1 = X2 ) ).

fof(unique_RHS,axiom,
    ! [X,Y1,Y2,Z] :
      ( ( sum(X,Y1,Z)
        & sum(X,Y2,Z) )
     => Y1 = Y2 ) ).

%----Difference is just sum in reverse
fof(minus_entry_point,axiom,
    ! [X,Y,Z] :
      ( sum(Y,Z,X)
    <=> difference(X,Y,Z) ) ).

%----Addition of positive RDN numbers
fof(add_digit_digit_digit,axiom,
    ! [C,D1,D2,RD,ID] :
      ( ( rdn_digit_add(rdnn(D1),rdnn(D2),rdnn(ID),rdnn(n0))
        & rdn_digit_add(rdnn(ID),rdnn(C),rdnn(RD),rdnn(n0)) )
     => rdn_add_with_carry(rdnn(C),rdnn(D1),rdnn(D2),rdnn(RD)) ) ).

fof(add_digit_digit_rdn,axiom,
    ! [C,D1,D2,ID,RD,IC1,IC2] :
      ( ( rdn_digit_add(rdnn(D1),rdnn(D2),rdnn(ID),rdnn(IC1))
        & rdn_digit_add(rdnn(ID),rdnn(C),rdnn(RD),rdnn(IC2))
        & rdn_digit_add(rdnn(IC1),rdnn(IC2),rdnn(n1),rdnn(n0)) )
     => rdn_add_with_carry(rdnn(C),rdnn(D1),rdnn(D2),rdn(rdnn(RD),rdnn(n1))) ) ).

fof(add_digit_rdn_rdn,axiom,
    ! [C,D1,D2,O2,RD,RO,ID,IC1,IC2,NC] :
      ( ( rdn_digit_add(rdnn(D1),rdnn(D2),rdnn(ID),rdnn(IC1))
        & rdn_digit_add(rdnn(ID),rdnn(C),rdnn(RD),rdnn(IC2))
        & rdn_digit_add(rdnn(IC1),rdnn(IC2),rdnn(NC),rdnn(n0))
        & rdn_add_with_carry(rdnn(NC),rdnn(n0),O2,RO)
        & rdn_non_zero(O2)
        & rdn_non_zero(RO) )
     => rdn_add_with_carry(rdnn(C),rdnn(D1),rdn(rdnn(D2),O2),rdn(rdnn(RD),RO)) ) ).

fof(add_rdn_rdn_rdn,axiom,
    ! [C,D1,O1,D2,O2,RD,RO,ID,IC1,IC2,RC] :
      ( ( rdn_digit_add(rdnn(D1),rdnn(D2),rdnn(ID),rdnn(IC1))
        & rdn_digit_add(rdnn(ID),rdnn(C),rdnn(RD),rdnn(IC2))
        & rdn_digit_add(rdnn(IC1),rdnn(IC2),rdnn(RC),rdnn(n0))
        & rdn_add_with_carry(rdnn(RC),O1,O2,RO)
        & rdn_non_zero(O1)
        & rdn_non_zero(O2)
        & rdn_non_zero(RO) )
     => rdn_add_with_carry(rdnn(C),rdn(rdnn(D1),O1),rdn(rdnn(D2),O2),rdn(rdnn(RD),RO)) ) ).

fof(add_rdn_digit_rdn,axiom,
    ! [C,D1,O1,D2,RD,RO] :
      ( rdn_add_with_carry(rdnn(C),rdnn(D2),rdn(rdnn(D1),O1),rdn(rdnn(RD),RO))
     => rdn_add_with_carry(rdnn(C),rdn(rdnn(D1),O1),rdnn(D2),rdn(rdnn(RD),RO)) ) ).

fof(rdn_digit_add_n0_n0_n0_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n0),rdnn(n0),rdnn(n0)) ).

fof(rdn_digit_add_n0_n1_n1_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n1),rdnn(n1),rdnn(n0)) ).

fof(rdn_digit_add_n0_n2_n2_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n2),rdnn(n2),rdnn(n0)) ).

fof(rdn_digit_add_n0_n3_n3_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n3),rdnn(n3),rdnn(n0)) ).

fof(rdn_digit_add_n0_n4_n4_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n4),rdnn(n4),rdnn(n0)) ).

fof(rdn_digit_add_n0_n5_n5_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n5),rdnn(n5),rdnn(n0)) ).

fof(rdn_digit_add_n0_n6_n6_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n6),rdnn(n6),rdnn(n0)) ).

fof(rdn_digit_add_n0_n7_n7_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n7),rdnn(n7),rdnn(n0)) ).

fof(rdn_digit_add_n0_n8_n8_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n8),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n0_n9_n9_n0,axiom,
    rdn_digit_add(rdnn(n0),rdnn(n9),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n1_n0_n1_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n0),rdnn(n1),rdnn(n0)) ).

fof(rdn_digit_add_n1_n1_n2_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n1),rdnn(n2),rdnn(n0)) ).

fof(rdn_digit_add_n1_n2_n3_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n2),rdnn(n3),rdnn(n0)) ).

fof(rdn_digit_add_n1_n3_n4_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n3),rdnn(n4),rdnn(n0)) ).

fof(rdn_digit_add_n1_n4_n5_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n4),rdnn(n5),rdnn(n0)) ).

fof(rdn_digit_add_n1_n5_n6_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n5),rdnn(n6),rdnn(n0)) ).

fof(rdn_digit_add_n1_n6_n7_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n6),rdnn(n7),rdnn(n0)) ).

fof(rdn_digit_add_n1_n7_n8_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n7),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n1_n8_n9_n0,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n8),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n1_n9_n0_n1,axiom,
    rdn_digit_add(rdnn(n1),rdnn(n9),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n2_n0_n2_n0,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n0),rdnn(n2),rdnn(n0)) ).

fof(rdn_digit_add_n2_n1_n3_n0,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n1),rdnn(n3),rdnn(n0)) ).

fof(rdn_digit_add_n2_n2_n4_n0,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n2),rdnn(n4),rdnn(n0)) ).

fof(rdn_digit_add_n2_n3_n5_n0,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n3),rdnn(n5),rdnn(n0)) ).

fof(rdn_digit_add_n2_n4_n6_n0,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n4),rdnn(n6),rdnn(n0)) ).

fof(rdn_digit_add_n2_n5_n7_n0,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n5),rdnn(n7),rdnn(n0)) ).

fof(rdn_digit_add_n2_n6_n8_n0,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n6),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n2_n7_n9_n0,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n7),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n2_n8_n0_n1,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n8),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n2_n9_n1_n1,axiom,
    rdn_digit_add(rdnn(n2),rdnn(n9),rdnn(n1),rdnn(n1)) ).

fof(rdn_digit_add_n3_n0_n3_n0,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n0),rdnn(n3),rdnn(n0)) ).

fof(rdn_digit_add_n3_n1_n4_n0,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n1),rdnn(n4),rdnn(n0)) ).

fof(rdn_digit_add_n3_n2_n5_n0,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n2),rdnn(n5),rdnn(n0)) ).

fof(rdn_digit_add_n3_n3_n6_n0,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n3),rdnn(n6),rdnn(n0)) ).

fof(rdn_digit_add_n3_n4_n7_n0,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n4),rdnn(n7),rdnn(n0)) ).

fof(rdn_digit_add_n3_n5_n8_n0,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n5),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n3_n6_n9_n0,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n6),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n3_n7_n0_n1,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n7),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n3_n8_n1_n1,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n8),rdnn(n1),rdnn(n1)) ).

fof(rdn_digit_add_n3_n9_n2_n1,axiom,
    rdn_digit_add(rdnn(n3),rdnn(n9),rdnn(n2),rdnn(n1)) ).

fof(rdn_digit_add_n4_n0_n4_n0,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n0),rdnn(n4),rdnn(n0)) ).

fof(rdn_digit_add_n4_n1_n5_n0,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n1),rdnn(n5),rdnn(n0)) ).

fof(rdn_digit_add_n4_n2_n6_n0,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n2),rdnn(n6),rdnn(n0)) ).

fof(rdn_digit_add_n4_n3_n7_n0,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n3),rdnn(n7),rdnn(n0)) ).

fof(rdn_digit_add_n4_n4_n8_n0,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n4),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n4_n5_n9_n0,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n5),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n4_n6_n0_n1,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n6),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n4_n7_n1_n1,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n7),rdnn(n1),rdnn(n1)) ).

fof(rdn_digit_add_n4_n8_n2_n1,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n8),rdnn(n2),rdnn(n1)) ).

fof(rdn_digit_add_n4_n9_n3_n1,axiom,
    rdn_digit_add(rdnn(n4),rdnn(n9),rdnn(n3),rdnn(n1)) ).

fof(rdn_digit_add_n5_n0_n5_n0,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n0),rdnn(n5),rdnn(n0)) ).

fof(rdn_digit_add_n5_n1_n6_n0,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n1),rdnn(n6),rdnn(n0)) ).

fof(rdn_digit_add_n5_n2_n7_n0,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n2),rdnn(n7),rdnn(n0)) ).

fof(rdn_digit_add_n5_n3_n8_n0,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n3),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n5_n4_n9_n0,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n4),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n5_n5_n0_n1,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n5),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n5_n6_n1_n1,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n6),rdnn(n1),rdnn(n1)) ).

fof(rdn_digit_add_n5_n7_n2_n1,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n7),rdnn(n2),rdnn(n1)) ).

fof(rdn_digit_add_n5_n8_n3_n1,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n8),rdnn(n3),rdnn(n1)) ).

fof(rdn_digit_add_n5_n9_n4_n1,axiom,
    rdn_digit_add(rdnn(n5),rdnn(n9),rdnn(n4),rdnn(n1)) ).

fof(rdn_digit_add_n6_n0_n6_n0,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n0),rdnn(n6),rdnn(n0)) ).

fof(rdn_digit_add_n6_n1_n7_n0,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n1),rdnn(n7),rdnn(n0)) ).

fof(rdn_digit_add_n6_n2_n8_n0,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n2),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n6_n3_n9_n0,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n3),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n6_n4_n0_n1,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n4),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n6_n5_n1_n1,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n5),rdnn(n1),rdnn(n1)) ).

fof(rdn_digit_add_n6_n6_n2_n1,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n6),rdnn(n2),rdnn(n1)) ).

fof(rdn_digit_add_n6_n7_n3_n1,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n7),rdnn(n3),rdnn(n1)) ).

fof(rdn_digit_add_n6_n8_n4_n1,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n8),rdnn(n4),rdnn(n1)) ).

fof(rdn_digit_add_n6_n9_n5_n1,axiom,
    rdn_digit_add(rdnn(n6),rdnn(n9),rdnn(n5),rdnn(n1)) ).

fof(rdn_digit_add_n7_n0_n7_n0,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n0),rdnn(n7),rdnn(n0)) ).

fof(rdn_digit_add_n7_n1_n8_n0,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n1),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n7_n2_n9_n0,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n2),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n7_n3_n0_n1,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n3),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n7_n4_n1_n1,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n4),rdnn(n1),rdnn(n1)) ).

fof(rdn_digit_add_n7_n5_n2_n1,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n5),rdnn(n2),rdnn(n1)) ).

fof(rdn_digit_add_n7_n6_n3_n1,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n6),rdnn(n3),rdnn(n1)) ).

fof(rdn_digit_add_n7_n7_n4_n1,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n7),rdnn(n4),rdnn(n1)) ).

fof(rdn_digit_add_n7_n8_n5_n1,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n8),rdnn(n5),rdnn(n1)) ).

fof(rdn_digit_add_n7_n9_n6_n1,axiom,
    rdn_digit_add(rdnn(n7),rdnn(n9),rdnn(n6),rdnn(n1)) ).

fof(rdn_digit_add_n8_n0_n8_n0,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n0),rdnn(n8),rdnn(n0)) ).

fof(rdn_digit_add_n8_n1_n9_n0,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n1),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n8_n2_n0_n1,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n2),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n8_n3_n1_n1,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n3),rdnn(n1),rdnn(n1)) ).

fof(rdn_digit_add_n8_n4_n2_n1,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n4),rdnn(n2),rdnn(n1)) ).

fof(rdn_digit_add_n8_n5_n3_n1,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n5),rdnn(n3),rdnn(n1)) ).

fof(rdn_digit_add_n8_n6_n4_n1,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n6),rdnn(n4),rdnn(n1)) ).

fof(rdn_digit_add_n8_n7_n5_n1,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n7),rdnn(n5),rdnn(n1)) ).

fof(rdn_digit_add_n8_n8_n6_n1,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n8),rdnn(n6),rdnn(n1)) ).

fof(rdn_digit_add_n8_n9_n7_n1,axiom,
    rdn_digit_add(rdnn(n8),rdnn(n9),rdnn(n7),rdnn(n1)) ).

fof(rdn_digit_add_n9_n0_n9_n0,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n0),rdnn(n9),rdnn(n0)) ).

fof(rdn_digit_add_n9_n1_n0_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n1),rdnn(n0),rdnn(n1)) ).

fof(rdn_digit_add_n9_n2_n1_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n2),rdnn(n1),rdnn(n1)) ).

fof(rdn_digit_add_n9_n3_n2_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n3),rdnn(n2),rdnn(n1)) ).

fof(rdn_digit_add_n9_n4_n3_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n4),rdnn(n3),rdnn(n1)) ).

fof(rdn_digit_add_n9_n5_n4_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n5),rdnn(n4),rdnn(n1)) ).

fof(rdn_digit_add_n9_n6_n5_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n6),rdnn(n5),rdnn(n1)) ).

fof(rdn_digit_add_n9_n7_n6_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n7),rdnn(n6),rdnn(n1)) ).

fof(rdn_digit_add_n9_n8_n7_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n8),rdnn(n7),rdnn(n1)) ).

fof(rdn_digit_add_n9_n9_n8_n1,axiom,
    rdn_digit_add(rdnn(n9),rdnn(n9),rdnn(n8),rdnn(n1)) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(sum_n5_nn2_n3,conjecture,
    sum(n5,nn2,n3) ).

%------------------------------------------------------------------------------
