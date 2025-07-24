include('Axioms/SET007/SET007+0.ax').
include('Axioms/SET007/SET007+1.ax').
include('Axioms/SET007/SET007+2.ax').
include('Axioms/SET007/SET007+3.ax').
include('Axioms/SET007/SET007+4.ax').
include('Axioms/SET007/SET007+6.ax').
include('Axioms/SET007/SET007+7.ax').
include('Axioms/SET007/SET007+8.ax').
include('Axioms/SET007/SET007+9.ax').
include('Axioms/SET007/SET007+10.ax').
include('Axioms/SET007/SET007+11.ax').
include('Axioms/SET007/SET007+13.ax').
include('Axioms/SET007/SET007+14.ax').
include('Axioms/SET007/SET007+16.ax').
include('Axioms/SET007/SET007+17.ax').
include('Axioms/SET007/SET007+18.ax').
include('Axioms/SET007/SET007+20.ax').
include('Axioms/SET007/SET007+22.ax').
include('Axioms/SET007/SET007+24.ax').
include('Axioms/SET007/SET007+26.ax').
include('Axioms/SET007/SET007+31.ax').
include('Axioms/SET007/SET007+35.ax').
include('Axioms/SET007/SET007+40.ax').
include('Axioms/SET007/SET007+48.ax').
include('Axioms/SET007/SET007+54.ax').
include('Axioms/SET007/SET007+55.ax').
include('Axioms/SET007/SET007+59.ax').
include('Axioms/SET007/SET007+60.ax').
include('Axioms/SET007/SET007+61.ax').
include('Axioms/SET007/SET007+64.ax').
include('Axioms/SET007/SET007+80.ax').
include('Axioms/SET007/SET007+117.ax').
include('Axioms/SET007/SET007+126.ax').
include('Axioms/SET007/SET007+188.ax').
include('Axioms/SET007/SET007+200.ax').
include('Axioms/SET007/SET007+210.ax').
include('Axioms/SET007/SET007+212.ax').
include('Axioms/SET007/SET007+213.ax').
include('Axioms/SET007/SET007+225.ax').
include('Axioms/SET007/SET007+363.ax').
include('Axioms/SET007/SET007+393.ax').
include('Axioms/SET007/SET007+441.ax').
fof(d2_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( k11_relset_1(A,B,C,k1_tarski(D)) = k3_relset_2(A,B,C,D)
         <= m1_subset_1(D,A) )
     <= m2_relset_1(C,A,B) ) ).

fof(t14_relset_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( k9_relat_1(C,k5_setfam_1(A,B)) = k3_tarski(a_3_0_relset_2(A,B,C))
         <= v1_relat_1(C) )
     <= m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A))) ) ).

fof(t44_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D,E] :
          ( ~ ( ? [F,G] :
                  ( r2_hidden(F,D)
                  & r2_hidden(F,k9_relat_1(k4_relat_1(C),k1_tarski(G)))
                  & r2_hidden(G,E) )
              & r1_xboole_0(D,k9_relat_1(k4_relat_1(C),E)) )
          & ~ ( ! [F,G] :
                  ~ ( r2_hidden(G,E)
                    & r2_hidden(F,k9_relat_1(k4_relat_1(C),k1_tarski(G)))
                    & r2_hidden(F,D) )
              & ~ r1_xboole_0(D,k9_relat_1(k4_relat_1(C),E)) ) )
     <= m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(redefinition_k6_relset_2,axiom,
    ! [A,B,C] :
      ( k6_relset_2(A,B,C) = k5_relset_2(B,C)
     <= m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,A))) ) ).

fof(t22_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => r1_tarski(k5_setfam_1(B,k4_relset_2(k1_zfmisc_1(A),B,k6_relset_2(B,A,C),A)),k9_relat_1(C,k3_tarski(A))) ) ).

fof(t27_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ! [E] :
              ( k5_subset_1(B,k8_relset_2(A,B,C,E),k8_relset_2(A,B,D,E)) = k8_relset_2(A,B,k4_subset_1(A,C,D),E)
             <= m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
         <= m1_subset_1(D,k1_zfmisc_1(A)) )
     <= m1_subset_1(C,k1_zfmisc_1(A)) ) ).

fof(d1_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( m1_subset_1(D,A)
         => k10_relset_1(A,B,C,k1_tarski(D)) = k2_relset_2(A,B,C,D) )
     <= m2_relset_1(C,A,B) ) ).

fof(t43_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ( r1_tarski(k8_relset_2(A,B,C,D),k9_relat_1(D,C))
           <= k1_xboole_0 != C )
         <= m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     <= m1_subset_1(C,k1_zfmisc_1(A)) ) ).

fof(t28_relset_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B,C] :
          ( ! [D] :
              ( m1_subset_1(a_4_1_relset_2(A,B,C,D),k1_zfmisc_1(k1_zfmisc_1(B)))
             <= m2_relset_1(D,A,B) )
         <= m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(A))) ) ) ).

fof(t2_relset_2,axiom,
    ! [A] :
      ( k3_pua2mss1(A) = k1_xboole_0
    <=> A = k1_xboole_0 ) ).

fof(t33_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(A))
         => ! [E] :
              ( m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B)))
             => r1_tarski(k4_subset_1(B,k8_relset_2(A,B,C,E),k8_relset_2(A,B,D,E)),k8_relset_2(A,B,k5_subset_1(A,C,D),E)) ) ) ) ).

fof(t10_relset_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( k2_xboole_0(k9_relat_1(B,k1_tarski(A)),k9_relat_1(C,k1_tarski(A))) = k9_relat_1(k2_xboole_0(B,C),k1_tarski(A))
         <= v1_relat_1(C) )
     <= v1_relat_1(B) ) ).

fof(t39_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(B))
     => ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(k2_zfmisc_1(B,A))))
         => ! [E] :
              ( ( E = a_4_4_relset_2(A,B,C,D)
               => k8_setfam_1(A,E) = k8_relset_2(B,A,C,k8_setfam_1(k2_zfmisc_1(B,A),D)) )
             <= m1_subset_1(E,k1_zfmisc_1(k1_zfmisc_1(A))) ) ) ) ).

fof(redefinition_k8_relset_2,axiom,
    ! [A,B,C,D] :
      ( ( m1_subset_1(C,k1_zfmisc_1(A))
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => k8_relset_2(A,B,C,D) = k7_relset_2(A,B,C,D) ) ).

fof(t36_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(k2_zfmisc_1(A,B))))
     => ! [D,E,F] :
          ( m1_subset_1(a_6_0_relset_2(A,B,C,D,E,F),k1_zfmisc_1(k1_zfmisc_1(E)))
         <= m1_subset_1(F,k1_zfmisc_1(D)) ) ) ).

fof(t12_relset_2,axiom,
    ! [A,B] :
      ( v1_relat_1(B)
     => ! [C] :
          ( v1_relat_1(C)
         => k4_xboole_0(k9_relat_1(B,k1_tarski(A)),k9_relat_1(C,k1_tarski(A))) = k9_relat_1(k4_xboole_0(B,C),k1_tarski(A)) ) ) ).

fof(dt_k3_relset_2,axiom,
    ! [A,B,C,D] :
      ( m1_subset_1(k3_relset_2(A,B,C,D),k1_zfmisc_1(A))
     <= ( m1_relset_1(C,A,B)
        & m1_subset_1(D,A) ) ) ).

fof(idempotence_k1_relset_2,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(A)))
        & m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A))) )
     => B = k1_relset_2(A,B,B) ) ).

fof(t42_relset_2,axiom,
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(C,D)))
     => ( ( r2_hidden(B,C)
          & r2_hidden(A,D)
          & ~ r2_hidden(k4_tarski(B,A),E) )
      <=> r2_hidden(A,k9_relat_1(k3_subset_1(k2_zfmisc_1(C,D),E),k1_tarski(B))) ) ) ).

fof(redefinition_k4_relset_2,axiom,
    ! [A,B,C,D] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,k1_zfmisc_1(B))))
     => k9_relat_1(C,D) = k4_relset_2(A,B,C,D) ) ).

fof(d4_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( k8_setfam_1(B,k4_relset_2(k1_zfmisc_1(A),B,k6_relset_2(B,A,D),k3_pua2mss1(C))) = k7_relset_2(A,B,C,D)
         <= m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     <= m1_subset_1(C,k1_zfmisc_1(A)) ) ).

fof(d3_relset_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( C = k5_relset_2(A,B)
          <=> ( k1_relat_1(C) = k1_zfmisc_1(A)
              & ! [D] :
                  ( r1_tarski(D,A)
                 => k1_funct_1(C,D) = k9_relat_1(B,D) ) ) ) )
     <= v1_relat_1(B) ) ).

fof(t35_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( k9_relat_1(k5_setfam_1(k2_zfmisc_1(A,B),D),C) = k3_tarski(a_4_3_relset_2(A,B,C,D))
         <= m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(k2_zfmisc_1(A,B)))) )
     <= m1_subset_1(C,k1_zfmisc_1(A)) ) ).

fof(t20_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => r1_tarski(k2_relat_1(k5_relset_2(A,C)),k1_zfmisc_1(k2_relat_1(C))) ) ).

fof(t30_relset_2,axiom,
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
     => ( ! [C] :
            ( r2_hidden(C,B)
           => C = k1_xboole_0 )
      <=> k1_xboole_0 = k5_setfam_1(A,B) ) ) ).

fof(dt_k8_relset_2,axiom,
    ! [A,B,C,D] :
      ( ( m1_subset_1(C,k1_zfmisc_1(A))
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => m1_subset_1(k8_relset_2(A,B,C,D),k1_zfmisc_1(B)) ) ).

fof(t9_relset_2,axiom,
    ! [A,B,C] :
      ( v1_relat_1(C)
     => ( r2_hidden(A,k9_relat_1(C,k1_tarski(B)))
      <=> r2_hidden(k4_tarski(B,A),C) ) ) ).

fof(t37_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
         => ( D = k1_xboole_0
           => ( k1_xboole_0 = C
              | k1_xboole_0 = k8_relset_2(A,B,C,D) ) ) )
     <= m1_subset_1(C,k1_zfmisc_1(A)) ) ).

fof(t32_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( ! [E] :
              ( ( r1_tarski(C,D)
               => r1_tarski(k8_relset_2(A,B,D,E),k8_relset_2(A,B,C,E)) )
             <= m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
         <= m1_subset_1(D,k1_zfmisc_1(A)) ) ) ).

fof(t23_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
         => ( k1_xboole_0 = k4_relset_2(k1_zfmisc_1(A),B,k6_relset_2(B,A,D),k3_pua2mss1(C))
          <=> C = k1_xboole_0 ) ) ) ).

fof(t47_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] : k9_relat_1(C,k3_xboole_0(D,k1_funct_5(C))) = k9_relat_1(C,D)
     <= m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(t50_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( m2_relset_1(D,A,B)
         => k3_subset_1(B,k10_relset_1(A,B,D,C)) = k8_relset_2(A,B,C,k3_subset_1(k2_zfmisc_1(A,B),D)) ) ) ).

fof(t26_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(A))
         => ! [E] :
              ( ( k4_relset_2(k1_zfmisc_1(A),B,k6_relset_2(B,A,E),k3_pua2mss1(C)) = k1_xboole_0
               => k8_relset_2(A,B,D,E) = k8_relset_2(A,B,k4_subset_1(A,C,D),E) )
             <= m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ) ) ).

fof(t41_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
         => ! [E] :
              ( r1_tarski(k4_subset_1(B,k8_relset_2(A,B,C,D),k8_relset_2(A,B,C,E)),k8_relset_2(A,B,C,k4_subset_1(k2_zfmisc_1(A,B),D,E)))
             <= m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ) ) ).

fof(t8_relset_2,axiom,
    ! [A] :
      ( ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( r1_tarski(k5_relat_1(k3_xboole_0(A,B),C),k3_xboole_0(k5_relat_1(A,C),k5_relat_1(B,C)))
             <= v1_relat_1(C) ) )
     <= v1_relat_1(A) ) ).

fof(t49_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
         => k9_relat_1(k3_subset_1(k2_zfmisc_1(A,B),D),C) = k3_subset_1(B,k8_relset_2(A,B,C,D)) ) ) ).

fof(t25_relset_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B,C] :
          ( ! [D] :
              ( m1_subset_1(D,A)
             => ! [E] :
                  ( m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(B,A)))
                 => ( r2_hidden(D,k8_relset_2(B,A,C,E))
                  <=> ! [F] :
                        ( r2_hidden(D,k9_relat_1(E,k1_tarski(F)))
                       <= r2_hidden(F,C) ) ) ) )
         <= m1_subset_1(C,k1_zfmisc_1(B)) ) ) ).

fof(t11_relset_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( k3_xboole_0(k9_relat_1(B,k1_tarski(A)),k9_relat_1(C,k1_tarski(A))) = k9_relat_1(k3_xboole_0(B,C),k1_tarski(A))
         <= v1_relat_1(C) )
     <= v1_relat_1(B) ) ).

fof(redefinition_k1_relset_2,axiom,
    ! [A,B,C] :
      ( ( m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(A)))
        & m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A))) )
     => k3_xboole_0(B,C) = k1_relset_2(A,B,C) ) ).

fof(t24_relset_2,axiom,
    ! [A,B,C,D] :
      ( m1_subset_1(D,k1_zfmisc_1(A))
     => ! [E] :
          ( m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B)))
         => ( r2_hidden(C,k8_relset_2(A,B,D,E))
           => ! [F] :
                ( r2_hidden(F,D)
               => r2_hidden(C,k9_relat_1(E,k1_tarski(F))) ) ) ) ) ).

fof(dt_k5_relset_2,axiom,
    ! [A,B] :
      ( ( v1_relat_1(k5_relset_2(A,B))
        & v1_funct_1(k5_relset_2(A,B)) )
     <= v1_relat_1(B) ) ).

fof(t34_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ! [E] :
              ( k8_relset_2(A,B,C,k5_subset_1(k2_zfmisc_1(A,B),D,E)) = k5_subset_1(B,k8_relset_2(A,B,C,D),k8_relset_2(A,B,C,E))
             <= m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
         <= m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     <= m1_subset_1(C,k1_zfmisc_1(A)) ) ).

fof(t13_relset_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( v1_relat_1(C)
         => r1_tarski(k9_relat_1(k3_xboole_0(B,C),k3_pua2mss1(A)),k3_xboole_0(k9_relat_1(B,k3_pua2mss1(A)),k9_relat_1(C,k3_pua2mss1(A)))) )
     <= v1_relat_1(B) ) ).

fof(t31_relset_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ! [D] :
              ( ! [E] :
                  ( ( k8_relset_2(A,B,k5_setfam_1(A,D),C) = k8_setfam_1(B,E)
                   <= a_4_2_relset_2(A,B,C,D) = E )
                 <= m1_subset_1(E,k1_zfmisc_1(k1_zfmisc_1(B))) )
             <= m1_subset_1(D,k1_zfmisc_1(k1_zfmisc_1(A))) )
         <= m2_relset_1(C,A,B) )
     <= ~ v1_xboole_0(B) ) ).

fof(t48_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] : k9_relat_1(k4_relat_1(C),D) = k9_relat_1(k4_relat_1(C),k3_xboole_0(D,k2_funct_5(C)))
     <= m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(t21_relset_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_1(k5_relset_2(A,C))
        & m2_relset_1(k5_relset_2(A,C),k1_zfmisc_1(A),k1_zfmisc_1(k2_relat_1(C)))
        & v1_funct_2(k5_relset_2(A,C),k1_zfmisc_1(A),k1_zfmisc_1(k2_relat_1(C))) )
     <= m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ).

fof(t18_relset_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B,C] :
          ( ! [D] :
              ( m1_subset_1(a_4_0_relset_2(A,B,C,D),k1_zfmisc_1(k1_zfmisc_1(B)))
             <= m2_relset_1(D,A,B) )
         <= m1_subset_1(C,k1_zfmisc_1(A)) ) ) ).

fof(dt_k9_relset_2,axiom,
    ! [A,B,C,D,E] :
      ( m2_relset_1(k9_relset_2(A,B,C,D,E),A,C)
     <= ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(B,C))) ) ) ).

fof(redefinition_k9_relset_2,axiom,
    ! [A,B,C,D,E] :
      ( k9_relset_2(A,B,C,D,E) = k5_relat_1(D,E)
     <= ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(B,C))) ) ) ).

fof(t6_relset_2,axiom,
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> r1_tarski(k3_pua2mss1(A),k3_pua2mss1(B)) ) ).

fof(dt_k2_relset_2,axiom,
    ! [A,B,C,D] :
      ( ( m1_relset_1(C,A,B)
        & m1_subset_1(D,A) )
     => m1_subset_1(k2_relset_2(A,B,C,D),k1_zfmisc_1(B)) ) ).

fof(t15_relset_2,axiom,
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ! [B] :
          ( B = k3_tarski(a_2_0_relset_2(A,B))
         <= m1_subset_1(B,k1_zfmisc_1(A)) ) ) ).

fof(t5_relset_2,axiom,
    ! [A,B] : k3_pua2mss1(k4_xboole_0(A,B)) = k4_xboole_0(k3_pua2mss1(A),k3_pua2mss1(B)) ).

fof(t45_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => ! [D,E] :
          ( ~ ( ? [F,G] :
                  ( r2_hidden(G,E)
                  & r2_hidden(F,k9_relat_1(k4_relat_1(C),k1_tarski(G)))
                  & r2_hidden(F,D) )
              & r1_xboole_0(E,k9_relat_1(C,D)) )
          & ~ ( ~ r1_xboole_0(E,k9_relat_1(C,D))
              & ! [F,G] :
                  ~ ( r2_hidden(F,k9_relat_1(k4_relat_1(C),k1_tarski(G)))
                    & r2_hidden(G,E)
                    & r2_hidden(F,D) ) ) ) ) ).

fof(t52_relset_2,conjecture,
    ! [A,B,C,D] :
      ( ! [E] :
          ( ( k10_relset_1(B,A,k6_relset_1(A,B,D),k1_funct_5(E)) = k1_funct_5(k9_relset_2(A,B,C,D,E))
            & r1_tarski(k1_funct_5(k9_relset_2(A,B,C,D,E)),k1_funct_5(D)) )
         <= m2_relset_1(E,B,C) )
     <= m2_relset_1(D,A,B) ) ).

fof(t51_relset_2,axiom,
    ! [A,B,C] :
      ( m2_relset_1(C,B,A)
     => ( k2_funct_5(C) = k10_relset_1(B,A,C,B)
        & k10_relset_1(A,B,k6_relset_1(B,A,C),A) = k1_funct_5(C) ) ) ).

fof(t38_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
         => ( B = k8_relset_2(A,B,C,D)
           <= k2_zfmisc_1(A,B) = D ) ) ) ).

fof(t17_relset_2,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ! [D] :
              ( m2_relset_1(D,A,B)
             => k3_tarski(a_4_0_relset_2(A,B,C,D)) = k10_relset_1(A,B,D,C) )
         <= m1_subset_1(C,k1_zfmisc_1(A)) )
     <= ~ v1_xboole_0(A) ) ).

fof(dt_k4_relset_2,axiom,
    ! [A,B,C,D] :
      ( m1_subset_1(k4_relset_2(A,B,C,D),k1_zfmisc_1(k1_zfmisc_1(B)))
     <= m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,k1_zfmisc_1(B)))) ) ).

fof(t1_relset_2,axiom,
    ! [A,B] :
      ( r2_hidden(A,k3_pua2mss1(B))
    <=> ? [C] :
          ( r2_hidden(C,B)
          & k1_tarski(C) = A ) ) ).

fof(commutativity_k1_relset_2,axiom,
    ! [A,B,C] :
      ( k1_relset_2(A,C,B) = k1_relset_2(A,B,C)
     <= ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A)))
        & m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(A))) ) ) ).

fof(t46_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(B))
         => ! [E] :
              ( m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B)))
             => ( r1_xboole_0(D,k9_relat_1(E,C))
              <=> r1_xboole_0(C,k9_relat_1(k4_relat_1(E),D)) ) ) ) ) ).

fof(dt_k7_relset_2,axiom,
    $true ).

fof(t4_relset_2,axiom,
    ! [A,B] : k3_pua2mss1(k3_xboole_0(A,B)) = k3_xboole_0(k3_pua2mss1(A),k3_pua2mss1(B)) ).

fof(t40_relset_2,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B)))
         => ! [E] :
              ( m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B)))
             => ( r1_tarski(k8_relset_2(A,B,C,D),k8_relset_2(A,B,C,E))
               <= r1_tarski(D,E) ) ) )
     <= m1_subset_1(C,k1_zfmisc_1(A)) ) ).

fof(t7_relset_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( r1_tarski(k5_subset_1(A,k8_setfam_1(A,B),k8_setfam_1(A,C)),k8_setfam_1(A,k1_relset_2(A,B,C)))
         <= m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(A))) )
     <= m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A))) ) ).

fof(t3_relset_2,axiom,
    ! [A,B] : k3_pua2mss1(k2_xboole_0(A,B)) = k2_xboole_0(k3_pua2mss1(A),k3_pua2mss1(B)) ).

fof(dt_k1_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(k1_relset_2(A,B,C),k1_zfmisc_1(k1_zfmisc_1(A)))
     <= ( m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(A)))
        & m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(A))) ) ) ).

fof(t19_relset_2,axiom,
    ! [A,B,C,D] :
      ( m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(B,C)))
     => ( k9_relat_1(D,A) = k1_funct_1(k5_relset_2(B,D),A)
       <= r2_hidden(A,k1_relat_1(k5_relset_2(B,D))) ) ) ).

fof(t16_relset_2,axiom,
    ! [A] :
      ( ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => m1_subset_1(a_2_0_relset_2(A,B),k1_zfmisc_1(k1_zfmisc_1(A))) )
     <= ~ v1_xboole_0(A) ) ).

fof(t29_relset_2,axiom,
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(A))
     => ! [D] :
          ( ( B = k8_relset_2(A,B,C,D)
           <= C = k1_xboole_0 )
         <= m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) ) ).

fof(dt_k6_relset_2,axiom,
    ! [A,B,C] :
      ( ( v1_funct_2(k6_relset_2(A,B,C),k1_zfmisc_1(B),k1_zfmisc_1(A))
        & m2_relset_1(k6_relset_2(A,B,C),k1_zfmisc_1(B),k1_zfmisc_1(A))
        & v1_funct_1(k6_relset_2(A,B,C)) )
     <= m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(B,A))) ) ).

