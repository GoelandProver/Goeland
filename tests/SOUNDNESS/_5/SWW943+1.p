%------------------------------------------------------------------------------
% File     : SWW943+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : TextIOProof__32__inFS_fname_add_stdo__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : TextIOProof__32__inFS_fname_add_stdo__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   15 (   8 unt;   0 def)
%            Number of atoms       :   28 (  18 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   16 (   3   ~;   1   |;   3   &)
%                                         (   7 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :   18 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   31 (  31 usr;  10 con; 0-5 aty)
%            Number of variables   :   43 (  43   !;   0   ?)
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

fof('thm.bool.FORALL_SIMP',axiom,
    ! [V_27A_27,V_27t_27] :
      ( ! [V_27x_27] : p__01(s__02(cbool__00,V_27t_27))
    <=> p__01(s__02(cbool__00,V_27t_27)) ) ).

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.bool.FUN_EQ_THM',axiom,
    ! [V_27B_27,V_27A_27,V_27f_27,V_27g_27] :
      ( s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27) = s__02(cfun__02(V_27A_27,V_27B_27),V_27g_27)
    <=> ! [V_27x_27] : s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27g_27),s__02(V_27A_27,V_27x_27))) ) ).

fof('thm.bool.EQ_CLAUSES',axiom,
    ! [V_27t_27] :
      ( ( s__02(cbool__00,cT__00) = s__02(cbool__00,V_27t_27)
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,V_27t_27) = s__02(cbool__00,cT__00)
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,cF__00) = s__02(cbool__00,V_27t_27)
      <=> ~ p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,V_27t_27) = s__02(cbool__00,cF__00)
      <=> ~ p__01(s__02(cbool__00,V_27t_27)) ) ) ).

fof('thm.alist.FDOM_alist_to_fmap',axiom,
    ! [V_27A_27,V_27B_27,V_27al_27] : s__02(cfun__02(V_27A_27,cbool__00),c_27const_2efinite__map_2eFDOM_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(V_27A_27,V_27B_27),c_27const_2ealist_2ealist__to__fmap_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27)),V_27al_27))))) = s__02(cfun__02(V_27A_27,cbool__00),c_27const_2elist_2eLIST__TO__SET_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27A_27),c_27const_2epair_2eFST_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27)),V_27al_27))))) ).

fof('thm.fsFFIProps.inFS_fname_def',axiom,
    ! [V_27fs_27,V_27s_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2efsFFI_2einode_27__00,cbool__00),c_27const_2efsFFIProps_2einFS__fname_27__01(s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27))),s__02(c_27type_2efsFFI_2einode_27__00,V_27s_27))) = s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(c_27type_2efsFFI_2einode_27__00,V_27s_27),s__02(cfun__02(c_27type_2efsFFI_2einode_27__00,cbool__00),c_27const_2efinite__map_2eFDOM_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2efsFFI_2einode_27__00,c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27const_2ealist_2ealist__to__fmap_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2efsFFI_2einode_27__00,c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00))),c_27const_2efsFFI_2eIO__fs__files_27__01(s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27))))))))) ).

fof('thm.fsFFIProps.fsupdate_MAP_FST_files',axiom,
    ! [V_27pos_27,V_27k_27,V_27fs_27,V_27fd_27,V_27c_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2efsFFI_2einode_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2efsFFI_2einode_27__00,c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2efsFFI_2einode_27__00),c_27const_2epair_2eFST_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2efsFFI_2einode_27__00,c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00))),c_27const_2efsFFI_2eIO__fs__files_27__01(s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2efsupdate_27__05(s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2enum_2enum_27__00,V_27fd_27),s__02(c_27type_2enum_2enum_27__00,V_27k_27),s__02(c_27type_2enum_2enum_27__00,V_27pos_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27c_27))))))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2efsFFI_2einode_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2efsFFI_2einode_27__00,c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2efsFFI_2einode_27__00),c_27const_2epair_2eFST_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2efsFFI_2einode_27__00,c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00))),c_27const_2efsFFI_2eIO__fs__files_27__01(s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27))))) ).

fof('thm.TextIOProof.up_stdo_def',axiom,
    ! [V_27fd_27,V_27fs_27,V_27out_27] : s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2eTextIOProof_2eup__stdo_27__03(s__02(c_27type_2enum_2enum_27__00,V_27fd_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2emlstring_2emlstring_27__00,V_27out_27))) = s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2efsFFI_2efsupdate_27__05(s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2enum_2enum_27__00,V_27fd_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2emlstring_2estrlen_27__01(s__02(c_27type_2emlstring_2emlstring_27__00,V_27out_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),c_27const_2emlstring_2eexplode_27__01(s__02(c_27type_2emlstring_2emlstring_27__00,V_27out_27))))) ).

fof('thm.TextIOProof.add_stdo_def',axiom,
    ! [V__0] :
      ( ! [V_27fd_27,V_27nm_27,V_27fs_27,V_27init_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2emlstring_2emlstring_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,cfun__02(c_27type_2emlstring_2emlstring_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,cfun__02(c_27type_2emlstring_2emlstring_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,cfun__02(c_27type_2emlstring_2emlstring_27__00,cbool__00)))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27fd_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27nm_27))),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27))),s__02(c_27type_2emlstring_2emlstring_27__00,V_27init_27))) = s__02(cbool__00,c_27const_2eTextIOProof_2estdo_27__04(s__02(c_27type_2enum_2enum_27__00,V_27fd_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27nm_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2emlstring_2emlstring_27__00,V_27init_27)))
     => ! [V_27fd_27,V_27nm_27,V_27fs_27,V_27out_27] : s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2eTextIOProof_2eadd__stdo_27__04(s__02(c_27type_2enum_2enum_27__00,V_27fd_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27nm_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2emlstring_2emlstring_27__00,V_27out_27))) = s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2eTextIOProof_2eup__stdo_27__03(s__02(c_27type_2enum_2enum_27__00,V_27fd_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2emlstring_2emlstring_27__00,c_27const_2emlstring_2estrcat_27__02(s__02(c_27type_2emlstring_2emlstring_27__00,c_27const_2emin_2e_40_27__01(s__02(cfun__02(c_27type_2emlstring_2emlstring_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,cfun__02(c_27type_2emlstring_2emlstring_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,cfun__02(c_27type_2emlstring_2emlstring_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),cfun__02(c_27type_2efsFFI_2eIO__fs_27__00,cfun__02(c_27type_2emlstring_2emlstring_27__00,cbool__00)))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27fd_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27nm_27))),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27))))),s__02(c_27type_2emlstring_2emlstring_27__00,V_27out_27))))) ) ).

fof(conjecture,conjecture,
    ! [V_27fd_27,V_27nm_27,V_27fs_27,V_27out_27] : s__02(cfun__02(c_27type_2efsFFI_2einode_27__00,cbool__00),c_27const_2efsFFIProps_2einFS__fname_27__01(s__02(c_27type_2efsFFI_2eIO__fs_27__00,c_27const_2eTextIOProof_2eadd__stdo_27__04(s__02(c_27type_2enum_2enum_27__00,V_27fd_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27nm_27),s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27),s__02(c_27type_2emlstring_2emlstring_27__00,V_27out_27))))) = s__02(cfun__02(c_27type_2efsFFI_2einode_27__00,cbool__00),c_27const_2efsFFIProps_2einFS__fname_27__01(s__02(c_27type_2efsFFI_2eIO__fs_27__00,V_27fs_27))) ).

%------------------------------------------------------------------------------
