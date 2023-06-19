%------------------------------------------------------------------------------
% File     : LCL667+1.005 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, pigeonhole formulae missing a conjunct, size 5
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_ph_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.0.0, 0.33 v6.4.0, 0.00 v5.5.0, 0.14 v5.4.0, 0.13 v5.3.0, 0.23 v5.2.0, 0.12 v5.0.0, 0.22 v4.1.0, 0.17 v4.0.1, 0.00 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unt;   0 def)
%            Number of atoms       :  242 (   0 equ)
%            Maximal formula atoms :  241 ( 121 avg)
%            Number of connectives :  311 (  71   ~; 160   |;  80   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   84 (  43 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   31 (  31 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   63 (  62   !;   1   ?)
% SPC      : FOF_CSA_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(reflexivity,axiom,
    ! [X] : r1(X,X) ).

fof(main,conjecture,
    ~ ? [X] :
        ~ ( ~ ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ( p605(Y)
                      & p505(Y) )
                    | ( p605(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p405(X) ) )
                    | ( p505(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p405(X) ) )
                    | ( p605(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p305(X) ) )
                    | ( p505(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p305(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p405(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p305(X) ) )
                    | ( p605(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p205(X) ) )
                    | ( p505(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p205(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p405(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p205(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p305(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p205(X) ) )
                    | ( p605(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p105(X) ) )
                    | ( p505(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p105(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p405(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p105(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p305(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p105(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p205(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p105(X) ) )
                    | ( p604(Y)
                      & p504(Y) )
                    | ( p604(Y)
                      & ~ p404(Y) )
                    | ( p504(Y)
                      & ~ p404(Y) )
                    | ( p604(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p304(X) ) )
                    | ( p504(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p304(X) ) )
                    | ( ~ p404(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p304(X) ) )
                    | ( p604(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p204(X) ) )
                    | ( p504(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p204(X) ) )
                    | ( ~ p404(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p204(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p304(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p204(X) ) )
                    | ( p604(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p104(X) ) )
                    | ( p504(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p104(X) ) )
                    | ( ~ p404(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p104(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p304(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p104(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p204(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p104(X) ) )
                    | ( p603(Y)
                      & p503(Y) )
                    | ( p603(Y)
                      & p403(Y) )
                    | ( p503(Y)
                      & p403(Y) )
                    | ( p603(Y)
                      & p303(Y) )
                    | ( p503(Y)
                      & p303(Y) )
                    | ( p403(Y)
                      & p303(Y) )
                    | ( p603(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p203(X) ) )
                    | ( p503(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p203(X) ) )
                    | ( p403(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p203(X) ) )
                    | ( p303(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p203(X) ) )
                    | ( p603(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p103(X) ) )
                    | ( p503(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p103(X) ) )
                    | ( p403(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p103(X) ) )
                    | ( p303(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p103(X) ) )
                    | ( ! [X] :
                          ( ~ r1(Y,X)
                          | p203(X) )
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p103(X) ) )
                    | ( p602(Y)
                      & p502(Y) )
                    | ( p602(Y)
                      & p402(Y) )
                    | ( p502(Y)
                      & p402(Y) )
                    | ( p602(Y)
                      & p302(Y) )
                    | ( p502(Y)
                      & p302(Y) )
                    | ( p402(Y)
                      & p302(Y) )
                    | ( p602(Y)
                      & p202(Y) )
                    | ( p502(Y)
                      & p202(Y) )
                    | ( p402(Y)
                      & p202(Y) )
                    | ( p302(Y)
                      & p202(Y) )
                    | ( p602(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p102(X) ) )
                    | ( p502(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p102(X) ) )
                    | ( p402(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p102(X) ) )
                    | ( p302(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p102(X) ) )
                    | ( p202(Y)
                      & ! [X] :
                          ( ~ r1(Y,X)
                          | p102(X) ) )
                    | ( p601(Y)
                      & p501(Y) )
                    | ( p601(Y)
                      & p401(Y) )
                    | ( p501(Y)
                      & p401(Y) )
                    | ( p601(Y)
                      & p301(Y) )
                    | ( p501(Y)
                      & p301(Y) )
                    | ( p401(Y)
                      & p301(Y) )
                    | ( p601(Y)
                      & p201(Y) )
                    | ( p501(Y)
                      & p201(Y) )
                    | ( p401(Y)
                      & p201(Y) )
                    | ( p301(Y)
                      & p201(Y) )
                    | ( p601(Y)
                      & p101(Y) )
                    | ( p501(Y)
                      & p101(Y) )
                    | ( p401(Y)
                      & p101(Y) )
                    | ( p301(Y)
                      & p101(Y) )
                    | ( p201(Y)
                      & p101(Y) ) ) )
          | ~ ( ( p605(X)
                | p604(X)
                | p603(X)
                | p602(X)
                | p601(X) )
              & ( p505(X)
                | p504(X)
                | p503(X)
                | p502(X)
                | p501(X) )
              & ( ! [Y] :
                    ( ~ r1(X,Y)
                    | p405(Y) )
                | p404(X)
                | p403(X)
                | p402(X)
                | p401(X) )
              & ( ! [Y] :
                    ( ~ r1(X,Y)
                    | p305(Y) )
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p304(Y) )
                | p303(X)
                | p302(X)
                | p301(X) )
              & ( ! [Y] :
                    ( ~ r1(X,Y)
                    | p205(Y) )
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p204(Y) )
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p203(Y) )
                | p202(X)
                | p201(X) )
              & ( ! [Y] :
                    ( ~ r1(X,Y)
                    | p105(Y) )
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p104(Y) )
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p103(Y) )
                | ! [Y] :
                    ( ~ r1(X,Y)
                    | p102(Y) )
                | p101(X) ) ) ) ).

%------------------------------------------------------------------------------
