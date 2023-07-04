%------------------------------------------------------------------------------
% File     : SWW891+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : fsFFIProps__69__openFileFS_fupd_numchars__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : fsFFIProps__69__openFileFS_fupd_numchars__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   13 (   6 unt;   0 def)
%            Number of atoms       :   24 (  20 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :   12 (   1   ~;   2   |;   1   &)
%                                         (   1 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   6 avg)
%            Maximal term depth    :   13 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   21 (  21 usr;   7 con; 0-3 aty)
%            Number of variables   :   60 (  57   !;   3   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof('HL_TRUTH',axiom,
    p__01(s__02(cbool__00,cT__00)) ).

fof('HL_FALSITY',axiom,
    ~ p__01(s__02(cbool__00,cF__00)) ).

fof('HL_BOOL_CASES',axiom,
    ! [Vt] :
      ( s__02(cbool__00,Vt) = s__02(cbool__00,cT__00)
      | s__02(cbool__00,Vt) = s__02(cbool__00,cF__00) ) ).

fof('HL_EXT',axiom,
    ! [V_3f2384,V_3f2380,Vf,Vg] :
      ( ! [Vx] : s__02(V_3f2380,chapp__02(s__02(cfun__02(V_3f2384,V_3f2380),Vf),s__02(V_3f2384,Vx))) = s__02(V_3f2380,chapp__02(s__02(cfun__02(V_3f2384,V_3f2380),Vg),s__02(V_3f2384,Vx)))
     => s__02(cfun__02(V_3f2384,V_3f2380),Vf) = s__02(cfun__02(V_3f2384,V_3f2380),Vg) ) ).

fof('thm.bool.TRUTH',axiom,
    p__01(s__02(cbool__00,cT__00)) ).

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.pair.ABS_PAIR_THM',axiom,
    ! [V_27A_27,V_27B_27,V_27x_27] :
    ? [V_27q_27,V_27r_27] : s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27x_27) = s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27q_27),s__02(V_27B_27,V_27r_27))) ).

fof('thm.pair.pair_case_thm',axiom,
    ! [V_27A_27,V_27B_27,V_27C_27,V_27y_27,V_27x_27,V_27f_27] : s__02(V_27A_27,c_27const_2epair_2epair__CASE_27__02(s__02(c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27),c_27const_2epair_2e_2c_27__02(s__02(V_27B_27,V_27x_27),s__02(V_27C_27,V_27y_27))),s__02(cfun__02(V_27B_27,cfun__02(V_27C_27,V_27A_27)),V_27f_27))) = s__02(V_27A_27,chapp__02(s__02(cfun__02(V_27C_27,V_27A_27),chapp__02(s__02(cfun__02(V_27B_27,cfun__02(V_27C_27,V_27A_27)),V_27f_27),s__02(V_27B_27,V_27x_27))),s__02(V_27C_27,V_27y_27))) ).

fof('thm.option.option_nchotomy',axiom,
    ! [V_27A_27,V_27opt_27] :
      ( s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),V_27opt_27) = s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eNONE_27__00)
      | ? [V_27x_27] : s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),V_27opt_27) = s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27A_27,V_27x_27))) ) ).

fof('thm.option.option_case_def',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27v_27,V_27f_27] : s__02(V_27B_27,c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eNONE_27__00),s__02(V_27B_27,V_27v_27),s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27))) = s__02(V_27B_27,V_27v_27)
      & ! [V_27x_27,V_27v_27,V_27f_27] : s__02(V_27B_27,c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27A_27,V_27x_27))),s__02(V_27B_27,V_27v_27),s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) ) ).

fof('thm.fsFFI.openFileFS_def',axiom,
    ! [V__2] :
      ( ! [V_27fs_7c39_7c_27] : s__02(c_27type_2efsFFI_2eIO__fs_27__00,chapp__02(s__02(cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2efsFFI_2eIO__fs_27__00),V__2),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_7c39_7c_27))) = s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_7c39_7c_27)
     => ! [V__1] :
          ( ! [V_27v1_27] : s__02(cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2efsFFI_2eIO__fs_27__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),V__1),s__02(c_27type_2enum_2enum_27__00,V_27v1_27))) = s__02(cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2efsFFI_2eIO__fs_27__00),V__2)
         => ! [V__0] :
              ( ! [V_27v_27] : s__02(c_27type_2efsFFI_2eIO__fs_27__00,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),c_27type_2efsFFI_2eIO__fs_27__00),V__0),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),V_27v_27))) = s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2epair_2epair__CASE_27__02(s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),V_27v_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),V__1)))
             => ! [V_27fnm_27,V_27fs_27,V_27pos_27] : s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2eopenFileFS_27__03(s__02(c_27type_2emlstring_2emlstring_27__00,V_27fnm_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2enum_2enum_27__00,V_27pos_27))) = s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),c_27const_2efsFFI_2eopenFile_27__03(s__02(c_27type_2emlstring_2emlstring_27__00,V_27fnm_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2enum_2enum_27__00,V_27pos_27))),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),c_27type_2efsFFI_2eIO__fs_27__00),V__0))) ) ) ) ).

fof('thm.fsFFIProps.openFile_fupd_numchars',axiom,
    ! [V_27A_27,V_27B_27,V__2] :
      ( ! [V_27fd_27,V_27ll_27,V_27fs_7c39_7c_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),chapp__02(s__02(cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))),chapp__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))))),V__2),s__02(c_27type_2enum_2enum_27__00,V_27fd_27))),s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27))),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_7c39_7c_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27fd_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2eIO__fs__numchars__fupd_27__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00)),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27))),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_7c39_7c_27)))))))
     => ! [V__1] :
          ( ! [V_27ll_27,V_27fd_27] : s__02(cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)))),chapp__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))))),V__1),s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27))),s__02(c_27type_2enum_2enum_27__00,V_27fd_27))) = s__02(cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))),chapp__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))))),V__2),s__02(c_27type_2enum_2enum_27__00,V_27fd_27))),s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27)))
         => ! [V__0] :
              ( ! [V_27ll_27,V_27v_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))),chapp__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)))),V__0),s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27))),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),V_27v_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),c_27const_2epair_2epair__CASE_27__02(s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),V_27v_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)))),chapp__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))))),V__1),s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27)))))
             => ! [V_27s_27,V_27fs_27,V_27k_27,V_27ll_27,V_27fd_7c39_7c_27,V_27fs_7c39_7c_7c39_7c_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),c_27const_2efsFFI_2eopenFile_27__03(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2eIO__fs__numchars__fupd_27__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00)),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27))),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27))),s__02(c_27type_2enum_2enum_27__00,V_27k_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),c_27const_2efsFFI_2eopenFile_27__03(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2enum_2enum_27__00,V_27k_27))),s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)),c_27const_2eoption_2eNONE_27__00),s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00))),chapp__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00),c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2efsFFI_2eIO__fs_27__00)))),V__0),s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27))))) ) ) ) ).

fof(conjecture,conjecture,
    ! [V_27s_27,V_27fs_27,V_27k_27,V_27ll_27] : s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2eopenFileFS_27__03(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2eIO__fs__numchars__fupd_27__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00)),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27))),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27))),s__02(c_27type_2enum_2enum_27__00,V_27k_27))) = s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2eIO__fs__numchars__fupd_27__02(s__02(cfun__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00)),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2ellist_2ellist_27__01(c_27type_2enum_2enum_27__00),V_27ll_27))),s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2eopenFileFS_27__03(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2enum_2enum_27__00,V_27k_27))))) ).

%------------------------------------------------------------------------------
