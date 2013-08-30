! Stub file to create library for Intel Fortran 32 Bit procedure wrapper generated by apiwrapper for GAMS Version 24.0.2

LOGICAL FUNCTION XCreate_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: xcreate_
  !DEC$ ATTRIBUTES STDCALL :: xcreate_
  !DEC$ ATTRIBUTES ALIAS: 'xcreate_'::xcreate_
  INTEGER(KIND=4) :: popt
END FUNCTION

LOGICAL FUNCTION XFree_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: xfree_
  !DEC$ ATTRIBUTES STDCALL :: xfree_
  !DEC$ ATTRIBUTES ALIAS: 'xfree_'::xfree_
  INTEGER(KIND=4) :: popt
END FUNCTION


INTEGER(KIND=4) FUNCTION optReadDefinition_(popt,fn)
  !DEC$ ATTRIBUTES DLLEXPORT :: optreaddefinition_
  !DEC$ ATTRIBUTES STDCALL :: optreaddefinition_
  !DEC$ ATTRIBUTES ALIAS : 'optreaddefinition_'::optreaddefinition_
  INTEGER :: popt
  INTEGER :: fn
END FUNCTION

INTEGER(KIND=4) FUNCTION optReadParameterFile_(popt,fn)
  !DEC$ ATTRIBUTES DLLEXPORT :: optreadparameterfile_
  !DEC$ ATTRIBUTES STDCALL :: optreadparameterfile_
  !DEC$ ATTRIBUTES ALIAS : 'optreadparameterfile_'::optreadparameterfile_
  INTEGER :: popt
  INTEGER :: fn
END FUNCTION

SUBROUTINE optReadFromStr_(popt,s)
  !DEC$ ATTRIBUTES DLLEXPORT :: optreadfromstr_
  !DEC$ ATTRIBUTES STDCALL :: optreadfromstr_
  !DEC$ ATTRIBUTES ALIAS : 'optreadfromstr_'::optreadfromstr_
  INTEGER :: popt
  INTEGER :: s
END SUBROUTINE

INTEGER(KIND=4) FUNCTION optWriteParameterFile_(popt,fn)
  !DEC$ ATTRIBUTES DLLEXPORT :: optwriteparameterfile_
  !DEC$ ATTRIBUTES STDCALL :: optwriteparameterfile_
  !DEC$ ATTRIBUTES ALIAS : 'optwriteparameterfile_'::optwriteparameterfile_
  INTEGER :: popt
  INTEGER :: fn
END FUNCTION

SUBROUTINE optClearMessages_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optclearmessages_
  !DEC$ ATTRIBUTES STDCALL :: optclearmessages_
  !DEC$ ATTRIBUTES ALIAS : 'optclearmessages_'::optclearmessages_
  INTEGER :: popt
END SUBROUTINE

SUBROUTINE optAddMessage_(popt,info)
  !DEC$ ATTRIBUTES DLLEXPORT :: optaddmessage_
  !DEC$ ATTRIBUTES STDCALL :: optaddmessage_
  !DEC$ ATTRIBUTES ALIAS : 'optaddmessage_'::optaddmessage_
  INTEGER :: popt
  INTEGER :: info
END SUBROUTINE

SUBROUTINE optGetMessage_(popt,NrMsg,info,iType)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetmessage_
  !DEC$ ATTRIBUTES STDCALL :: optgetmessage_
  !DEC$ ATTRIBUTES ALIAS : 'optgetmessage_'::optgetmessage_
  INTEGER :: popt
  INTEGER :: NrMsg
  INTEGER :: info
  INTEGER :: iType
END SUBROUTINE

SUBROUTINE optResetAll_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optresetall_
  !DEC$ ATTRIBUTES STDCALL :: optresetall_
  !DEC$ ATTRIBUTES ALIAS : 'optresetall_'::optresetall_
  INTEGER :: popt
END SUBROUTINE

SUBROUTINE optResetAllRecent_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optresetallrecent_
  !DEC$ ATTRIBUTES STDCALL :: optresetallrecent_
  !DEC$ ATTRIBUTES ALIAS : 'optresetallrecent_'::optresetallrecent_
  INTEGER :: popt
END SUBROUTINE

SUBROUTINE optResetRecentChanges_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optresetrecentchanges_
  !DEC$ ATTRIBUTES STDCALL :: optresetrecentchanges_
  !DEC$ ATTRIBUTES ALIAS : 'optresetrecentchanges_'::optresetrecentchanges_
  INTEGER :: popt
END SUBROUTINE

SUBROUTINE optShowHelp_(popt,HlpID)
  !DEC$ ATTRIBUTES DLLEXPORT :: optshowhelp_
  !DEC$ ATTRIBUTES STDCALL :: optshowhelp_
  !DEC$ ATTRIBUTES ALIAS : 'optshowhelp_'::optshowhelp_
  INTEGER :: popt
  INTEGER :: HlpID
END SUBROUTINE

INTEGER(KIND=4) FUNCTION optResetNr_(popt,ANr)
  !DEC$ ATTRIBUTES DLLEXPORT :: optresetnr_
  !DEC$ ATTRIBUTES STDCALL :: optresetnr_
  !DEC$ ATTRIBUTES ALIAS : 'optresetnr_'::optresetnr_
  INTEGER :: popt
  INTEGER :: ANr
END FUNCTION

INTEGER(KIND=4) FUNCTION optFindStr_(popt,AName,ANr,ARefNr)
  !DEC$ ATTRIBUTES DLLEXPORT :: optfindstr_
  !DEC$ ATTRIBUTES STDCALL :: optfindstr_
  !DEC$ ATTRIBUTES ALIAS : 'optfindstr_'::optfindstr_
  INTEGER :: popt
  INTEGER :: AName
  INTEGER :: ANr
  INTEGER :: ARefNr
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetInfoNr_(popt,ANr,ADefined,ADefinedR, &
         ARefNr,ADataType,AOptType,ASubType)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetinfonr_
  !DEC$ ATTRIBUTES STDCALL :: optgetinfonr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetinfonr_'::optgetinfonr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ADefined
  INTEGER :: ADefinedR
  INTEGER :: ARefNr
  INTEGER :: ADataType
  INTEGER :: AOptType
  INTEGER :: ASubType
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetValuesNr_(popt,ANr,ASName,AIVal,ADVal, &
         ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetvaluesnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetvaluesnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetvaluesnr_'::optgetvaluesnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ASName
  INTEGER :: AIVal
  INTEGER :: ADVal
  INTEGER :: ASVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetValuesNr_(popt,ANr,AIVal,ADVal,d_ADVal, &
         ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetvaluesnr_
  !DEC$ ATTRIBUTES STDCALL :: optsetvaluesnr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetvaluesnr_'::optsetvaluesnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AIVal
  INTEGER :: ADVal
  INTEGER :: d_ADVal
  INTEGER :: ASVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetValues2Nr_(popt,ANr,AIVal,ADVal,d_ADVal, &
         ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetvalues2nr_
  !DEC$ ATTRIBUTES STDCALL :: optsetvalues2nr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetvalues2nr_'::optsetvalues2nr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AIVal
  INTEGER :: ADVal
  INTEGER :: d_ADVal
  INTEGER :: ASVal
END FUNCTION

SUBROUTINE optVersion_(popt,sversion)
  !DEC$ ATTRIBUTES DLLEXPORT :: optversion_
  !DEC$ ATTRIBUTES STDCALL :: optversion_
  !DEC$ ATTRIBUTES ALIAS : 'optversion_'::optversion_
  INTEGER :: popt
  INTEGER :: sversion
END SUBROUTINE

SUBROUTINE optDefinitionFile_(popt,sfilename)
  !DEC$ ATTRIBUTES DLLEXPORT :: optdefinitionfile_
  !DEC$ ATTRIBUTES STDCALL :: optdefinitionfile_
  !DEC$ ATTRIBUTES ALIAS : 'optdefinitionfile_'::optdefinitionfile_
  INTEGER :: popt
  INTEGER :: sfilename
END SUBROUTINE

INTEGER(KIND=4) FUNCTION optGetFromAnyStrList_(popt,idash,skey,sval)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetfromanystrlist_
  !DEC$ ATTRIBUTES STDCALL :: optgetfromanystrlist_
  !DEC$ ATTRIBUTES ALIAS : 'optgetfromanystrlist_'::optgetfromanystrlist_
  INTEGER :: popt
  INTEGER :: idash
  INTEGER :: skey
  INTEGER :: sval
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetFromListStr_(popt,skey,sval)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetfromliststr_
  !DEC$ ATTRIBUTES STDCALL :: optgetfromliststr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetfromliststr_'::optgetfromliststr_
  INTEGER :: popt
  INTEGER :: skey
  INTEGER :: sval
END FUNCTION

INTEGER(KIND=4) FUNCTION optListCountStr_(popt,skey)
  !DEC$ ATTRIBUTES DLLEXPORT :: optlistcountstr_
  !DEC$ ATTRIBUTES STDCALL :: optlistcountstr_
  !DEC$ ATTRIBUTES ALIAS : 'optlistcountstr_'::optlistcountstr_
  INTEGER :: popt
  INTEGER :: skey
END FUNCTION

INTEGER(KIND=4) FUNCTION optReadFromListStr_(popt,skey,iPos,sval)
  !DEC$ ATTRIBUTES DLLEXPORT :: optreadfromliststr_
  !DEC$ ATTRIBUTES STDCALL :: optreadfromliststr_
  !DEC$ ATTRIBUTES ALIAS : 'optreadfromliststr_'::optreadfromliststr_
  INTEGER :: popt
  INTEGER :: skey
  INTEGER :: iPos
  INTEGER :: sval
END FUNCTION

INTEGER(KIND=4) FUNCTION optSynonymCount_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsynonymcount_
  !DEC$ ATTRIBUTES STDCALL :: optsynonymcount_
  !DEC$ ATTRIBUTES ALIAS : 'optsynonymcount_'::optsynonymcount_
  INTEGER :: popt
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetSynonym_(popt,NrSyn,SSyn,SName)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetsynonym_
  !DEC$ ATTRIBUTES STDCALL :: optgetsynonym_
  !DEC$ ATTRIBUTES ALIAS : 'optgetsynonym_'::optgetsynonym_
  INTEGER :: popt
  INTEGER :: NrSyn
  INTEGER :: SSyn
  INTEGER :: SName
END FUNCTION

SUBROUTINE optEchoSet_(popt,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optechoset_
  !DEC$ ATTRIBUTES STDCALL :: optechoset_
  !DEC$ ATTRIBUTES ALIAS : 'optechoset_'::optechoset_
  INTEGER :: popt
  INTEGER :: AIVal
END SUBROUTINE

INTEGER(KIND=4) FUNCTION optEOLOnlySet_(popt,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: opteolonlyset_
  !DEC$ ATTRIBUTES STDCALL :: opteolonlyset_
  !DEC$ ATTRIBUTES ALIAS : 'opteolonlyset_'::opteolonlyset_
  INTEGER :: popt
  INTEGER :: AIVal
END FUNCTION

SUBROUTINE optNoBoundsSet_(popt,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optnoboundsset_
  !DEC$ ATTRIBUTES STDCALL :: optnoboundsset_
  !DEC$ ATTRIBUTES ALIAS : 'optnoboundsset_'::optnoboundsset_
  INTEGER :: popt
  INTEGER :: AIVal
END SUBROUTINE

SUBROUTINE optErrorCount_(popt,iErrors,iWarnings)
  !DEC$ ATTRIBUTES DLLEXPORT :: opterrorcount_
  !DEC$ ATTRIBUTES STDCALL :: opterrorcount_
  !DEC$ ATTRIBUTES ALIAS : 'opterrorcount_'::opterrorcount_
  INTEGER :: popt
  INTEGER :: iErrors
  INTEGER :: iWarnings
END SUBROUTINE

INTEGER(KIND=4) FUNCTION optGetBoundsInt_(popt,ANr,ilval,ihval,idval)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetboundsint_
  !DEC$ ATTRIBUTES STDCALL :: optgetboundsint_
  !DEC$ ATTRIBUTES ALIAS : 'optgetboundsint_'::optgetboundsint_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ilval
  INTEGER :: ihval
  INTEGER :: idval
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetBoundsDbl_(popt,ANr,dlval,dhval,ddval)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetboundsdbl_
  !DEC$ ATTRIBUTES STDCALL :: optgetboundsdbl_
  !DEC$ ATTRIBUTES ALIAS : 'optgetboundsdbl_'::optgetboundsdbl_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: dlval
  INTEGER :: dhval
  INTEGER :: ddval
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetDefaultStr_(popt,ANr,sval)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetdefaultstr_
  !DEC$ ATTRIBUTES STDCALL :: optgetdefaultstr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetdefaultstr_'::optgetdefaultstr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: sval
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetIntNr_(popt,ANr,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetintnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetintnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetintnr_'::optgetintnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AIVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetInt2Nr_(popt,ANr,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetint2nr_
  !DEC$ ATTRIBUTES STDCALL :: optgetint2nr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetint2nr_'::optgetint2nr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AIVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetIntNr_(popt,ANr,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetintnr_
  !DEC$ ATTRIBUTES STDCALL :: optsetintnr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetintnr_'::optsetintnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AIVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetInt2Nr_(popt,ANr,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetint2nr_
  !DEC$ ATTRIBUTES STDCALL :: optsetint2nr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetint2nr_'::optsetint2nr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AIVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetStrNr_(popt,ANr,ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetstrnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetstrnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetstrnr_'::optgetstrnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ASVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetOptHelpNr_(popt,ANr,AName,AHc,AGroup)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetopthelpnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetopthelpnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetopthelpnr_'::optgetopthelpnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AName
  INTEGER :: AHc
  INTEGER :: AGroup
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetEnumHelp_(popt,ANr,AOrd,AHc,AHelpStr)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetenumhelp_
  !DEC$ ATTRIBUTES STDCALL :: optgetenumhelp_
  !DEC$ ATTRIBUTES ALIAS : 'optgetenumhelp_'::optgetenumhelp_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AOrd
  INTEGER :: AHc
  INTEGER :: AHelpStr
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetEnumStrNr_(popt,ANr,ASVal,AOrd)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetenumstrnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetenumstrnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetenumstrnr_'::optgetenumstrnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ASVal
  INTEGER :: AOrd
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetEnumCount_(popt,ANr,ACount)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetenumcount_
  !DEC$ ATTRIBUTES STDCALL :: optgetenumcount_
  !DEC$ ATTRIBUTES ALIAS : 'optgetenumcount_'::optgetenumcount_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ACount
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetEnumValue_(popt,ANr,AOrd,AValInt,AValStr)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetenumvalue_
  !DEC$ ATTRIBUTES STDCALL :: optgetenumvalue_
  !DEC$ ATTRIBUTES ALIAS : 'optgetenumvalue_'::optgetenumvalue_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AOrd
  INTEGER :: AValInt
  INTEGER :: AValStr
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetStr2Nr_(popt,ANr,ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetstr2nr_
  !DEC$ ATTRIBUTES STDCALL :: optgetstr2nr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetstr2nr_'::optgetstr2nr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ASVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetStrNr_(popt,ANr,ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetstrnr_
  !DEC$ ATTRIBUTES STDCALL :: optsetstrnr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetstrnr_'::optsetstrnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ASVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetStr2Nr_(popt,ANr,ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetstr2nr_
  !DEC$ ATTRIBUTES STDCALL :: optsetstr2nr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetstr2nr_'::optsetstr2nr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ASVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetDblNr_(popt,ANr,ADVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetdblnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetdblnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetdblnr_'::optgetdblnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ADVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetDbl2Nr_(popt,ANr,ADVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetdbl2nr_
  !DEC$ ATTRIBUTES STDCALL :: optgetdbl2nr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetdbl2nr_'::optgetdbl2nr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ADVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetDblNr_(popt,ANr,ADVal,d_ADVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetdblnr_
  !DEC$ ATTRIBUTES STDCALL :: optsetdblnr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetdblnr_'::optsetdblnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ADVal
  INTEGER :: d_ADVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetDbl2Nr_(popt,ANr,ADVal,d_ADVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetdbl2nr_
  !DEC$ ATTRIBUTES STDCALL :: optsetdbl2nr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetdbl2nr_'::optsetdbl2nr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ADVal
  INTEGER :: d_ADVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetValStr_(popt,AName,ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetvalstr_
  !DEC$ ATTRIBUTES STDCALL :: optgetvalstr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetvalstr_'::optgetvalstr_
  INTEGER :: popt
  INTEGER :: AName
  INTEGER :: ASVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetVal2Str_(popt,AName,ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetval2str_
  !DEC$ ATTRIBUTES STDCALL :: optgetval2str_
  !DEC$ ATTRIBUTES ALIAS : 'optgetval2str_'::optgetval2str_
  INTEGER :: popt
  INTEGER :: AName
  INTEGER :: ASVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetNameNr_(popt,ANr,ASName)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetnamenr_
  !DEC$ ATTRIBUTES STDCALL :: optgetnamenr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetnamenr_'::optgetnamenr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ASName
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetDefinedNr_(popt,ANr,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetdefinednr_
  !DEC$ ATTRIBUTES STDCALL :: optgetdefinednr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetdefinednr_'::optgetdefinednr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AIVal
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetHelpNr_(popt,ANr,ASOpt,ASHelp)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgethelpnr_
  !DEC$ ATTRIBUTES STDCALL :: optgethelpnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgethelpnr_'::optgethelpnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ASOpt
  INTEGER :: ASHelp
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetGroupNr_(popt,ANr,AName,AGroup,AHc, &
         AHelp)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetgroupnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetgroupnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetgroupnr_'::optgetgroupnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: AName
  INTEGER :: AGroup
  INTEGER :: AHc
  INTEGER :: AHelp
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetGroupGrpNr_(popt,AGroup)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetgroupgrpnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetgroupgrpnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetgroupgrpnr_'::optgetgroupgrpnr_
  INTEGER :: popt
  INTEGER :: AGroup
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetOptGroupNr_(popt,ANr)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetoptgroupnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetoptgroupnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetoptgroupnr_'::optgetoptgroupnr_
  INTEGER :: popt
  INTEGER :: ANr
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetDotOptNr_(popt,ANr,VEName,AObjNr,ADim, &
         AValue)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetdotoptnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetdotoptnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetdotoptnr_'::optgetdotoptnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: VEName
  INTEGER :: AObjNr
  INTEGER :: ADim
  INTEGER :: AValue
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetDotOptUel_(popt,ANr,ADim,AUEL)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetdotoptuel_
  !DEC$ ATTRIBUTES STDCALL :: optgetdotoptuel_
  !DEC$ ATTRIBUTES ALIAS : 'optgetdotoptuel_'::optgetdotoptuel_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ADim
  INTEGER :: AUEL
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetVarEquMapNr_(popt,maptype,ANr,EquName, &
         VarName,EquDim,VarDim,AValue)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetvarequmapnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetvarequmapnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetvarequmapnr_'::optgetvarequmapnr_
  INTEGER :: popt
  INTEGER :: maptype
  INTEGER :: ANr
  INTEGER :: EquName
  INTEGER :: VarName
  INTEGER :: EquDim
  INTEGER :: VarDim
  INTEGER :: AValue
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetEquVarEquMapNr_(popt,maptype,ANr,ADim, &
         AIndex)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetequvarequmapnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetequvarequmapnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetequvarequmapnr_'::optgetequvarequmapnr_
  INTEGER :: popt
  INTEGER :: maptype
  INTEGER :: ANr
  INTEGER :: ADim
  INTEGER :: AIndex
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetVarVarEquMapNr_(popt,maptype,ANr,ADim, &
         AIndex)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetvarvarequmapnr_
  !DEC$ ATTRIBUTES STDCALL :: optgetvarvarequmapnr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetvarvarequmapnr_'::optgetvarvarequmapnr_
  INTEGER :: popt
  INTEGER :: maptype
  INTEGER :: ANr
  INTEGER :: ADim
  INTEGER :: AIndex
END FUNCTION

INTEGER(KIND=4) FUNCTION optVarEquMapCount_(popt,maptype,ANrErrors)
  !DEC$ ATTRIBUTES DLLEXPORT :: optvarequmapcount_
  !DEC$ ATTRIBUTES STDCALL :: optvarequmapcount_
  !DEC$ ATTRIBUTES ALIAS : 'optvarequmapcount_'::optvarequmapcount_
  INTEGER :: popt
  INTEGER :: maptype
  INTEGER :: ANrErrors
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetIndicatorNr_(popt,ANr,EquName,VarName, &
         EquDim,VarDim,AValue)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetindicatornr_
  !DEC$ ATTRIBUTES STDCALL :: optgetindicatornr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetindicatornr_'::optgetindicatornr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: EquName
  INTEGER :: VarName
  INTEGER :: EquDim
  INTEGER :: VarDim
  INTEGER :: AValue
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetEquIndicatorNr_(popt,ANr,ADim,AIndex)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetequindicatornr_
  !DEC$ ATTRIBUTES STDCALL :: optgetequindicatornr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetequindicatornr_'::optgetequindicatornr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ADim
  INTEGER :: AIndex
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetVarIndicatorNr_(popt,ANr,ADim,AIndex)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetvarindicatornr_
  !DEC$ ATTRIBUTES STDCALL :: optgetvarindicatornr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetvarindicatornr_'::optgetvarindicatornr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ADim
  INTEGER :: AIndex
END FUNCTION

INTEGER(KIND=4) FUNCTION optIndicatorCount_(popt,ANrErrors)
  !DEC$ ATTRIBUTES DLLEXPORT :: optindicatorcount_
  !DEC$ ATTRIBUTES STDCALL :: optindicatorcount_
  !DEC$ ATTRIBUTES ALIAS : 'optindicatorcount_'::optindicatorcount_
  INTEGER :: popt
  INTEGER :: ANrErrors
END FUNCTION

INTEGER(KIND=4) FUNCTION optDotOptCount_(popt,ANrErrors)
  !DEC$ ATTRIBUTES DLLEXPORT :: optdotoptcount_
  !DEC$ ATTRIBUTES STDCALL :: optdotoptcount_
  !DEC$ ATTRIBUTES ALIAS : 'optdotoptcount_'::optdotoptcount_
  INTEGER :: popt
  INTEGER :: ANrErrors
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetRefNr_(popt,ANr,ARefNr)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetrefnr_
  !DEC$ ATTRIBUTES STDCALL :: optsetrefnr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetrefnr_'::optsetrefnr_
  INTEGER :: popt
  INTEGER :: ANr
  INTEGER :: ARefNr
END FUNCTION

INTEGER(KIND=4) FUNCTION optSetRefNrStr_(popt,AOpt,ARefNr)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetrefnrstr_
  !DEC$ ATTRIBUTES STDCALL :: optsetrefnrstr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetrefnrstr_'::optsetrefnrstr_
  INTEGER :: popt
  INTEGER :: AOpt
  INTEGER :: ARefNr
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetConstName_(popt,cgroup,cindex,cname)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetconstname_
  !DEC$ ATTRIBUTES STDCALL :: optgetconstname_
  !DEC$ ATTRIBUTES ALIAS : 'optgetconstname_'::optgetconstname_
  INTEGER :: popt
  INTEGER :: cgroup
  INTEGER :: cindex
  INTEGER :: cname
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetTypeName_(popt,TNr,sTName)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgettypename_
  !DEC$ ATTRIBUTES STDCALL :: optgettypename_
  !DEC$ ATTRIBUTES ALIAS : 'optgettypename_'::optgettypename_
  INTEGER :: popt
  INTEGER :: TNr
  INTEGER :: sTName
END FUNCTION

INTEGER(KIND=4) FUNCTION optLookUp_(popt,AOpt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optlookup_
  !DEC$ ATTRIBUTES STDCALL :: optlookup_
  !DEC$ ATTRIBUTES ALIAS : 'optlookup_'::optlookup_
  INTEGER :: popt
  INTEGER :: AOpt
END FUNCTION

SUBROUTINE optReadFromPChar_(popt,p)
  !DEC$ ATTRIBUTES DLLEXPORT :: optreadfrompchar_
  !DEC$ ATTRIBUTES STDCALL :: optreadfrompchar_
  !DEC$ ATTRIBUTES ALIAS : 'optreadfrompchar_'::optreadfrompchar_
  INTEGER :: popt
  INTEGER :: p
END SUBROUTINE

INTEGER(KIND=4) FUNCTION optGetNameOpt_(popt,ASVal,solver,opt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetnameopt_
  !DEC$ ATTRIBUTES STDCALL :: optgetnameopt_
  !DEC$ ATTRIBUTES ALIAS : 'optgetnameopt_'::optgetnameopt_
  INTEGER :: popt
  INTEGER :: ASVal
  INTEGER :: solver
  INTEGER :: opt
END FUNCTION

LOGICAL FUNCTION optGetDefinedStr_(popt,AName)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetdefinedstr_
  !DEC$ ATTRIBUTES STDCALL :: optgetdefinedstr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetdefinedstr_'::optgetdefinedstr_
  INTEGER :: popt
  INTEGER :: AName
END FUNCTION

INTEGER(KIND=4) FUNCTION optGetIntStr_(popt,AName)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetintstr_
  !DEC$ ATTRIBUTES STDCALL :: optgetintstr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetintstr_'::optgetintstr_
  INTEGER :: popt
  INTEGER :: AName
END FUNCTION

REAL(KIND=8) FUNCTION optGetDblStr_(popt,AName)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgetdblstr_
  !DEC$ ATTRIBUTES STDCALL :: optgetdblstr_
  !DEC$ ATTRIBUTES ALIAS : 'optgetdblstr_'::optgetdblstr_
  INTEGER :: popt
  INTEGER :: AName
END FUNCTION

SUBROUTINE optSetIntStr_(popt,AName,AIVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetintstr_
  !DEC$ ATTRIBUTES STDCALL :: optsetintstr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetintstr_'::optsetintstr_
  INTEGER :: popt
  INTEGER :: AName
  INTEGER :: AIVal
END SUBROUTINE

SUBROUTINE optSetDblStr_(popt,AName,ADVal,d_ADVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetdblstr_
  !DEC$ ATTRIBUTES STDCALL :: optsetdblstr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetdblstr_'::optsetdblstr_
  INTEGER :: popt
  INTEGER :: AName
  INTEGER :: ADVal
  INTEGER :: d_ADVal
END SUBROUTINE

SUBROUTINE optSetStrStr_(popt,AName,ASVal)
  !DEC$ ATTRIBUTES DLLEXPORT :: optsetstrstr_
  !DEC$ ATTRIBUTES STDCALL :: optsetstrstr_
  !DEC$ ATTRIBUTES ALIAS : 'optsetstrstr_'::optsetstrstr_
  INTEGER :: popt
  INTEGER :: AName
  INTEGER :: ASVal
END SUBROUTINE

INTEGER(KIND=4) FUNCTION optCount_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optcount_
  !DEC$ ATTRIBUTES STDCALL :: optcount_
  !DEC$ ATTRIBUTES ALIAS : 'optcount_'::optcount_
  INTEGER :: popt
END FUNCTION

INTEGER(KIND=4) FUNCTION optMessageCount_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optmessagecount_
  !DEC$ ATTRIBUTES STDCALL :: optmessagecount_
  !DEC$ ATTRIBUTES ALIAS : 'optmessagecount_'::optmessagecount_
  INTEGER :: popt
END FUNCTION

INTEGER(KIND=4) FUNCTION optGroupCount_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optgroupcount_
  !DEC$ ATTRIBUTES STDCALL :: optgroupcount_
  !DEC$ ATTRIBUTES ALIAS : 'optgroupcount_'::optgroupcount_
  INTEGER :: popt
END FUNCTION

INTEGER(KIND=4) FUNCTION optRecentEnabled_(popt)
  !DEC$ ATTRIBUTES DLLEXPORT :: optrecentenabled_
  !DEC$ ATTRIBUTES STDCALL :: optrecentenabled_
  !DEC$ ATTRIBUTES ALIAS : 'optrecentenabled_'::optrecentenabled_
  INTEGER :: popt
END FUNCTION

SUBROUTINE optRecentEnabledSet_(popt,x)
  !DEC$ ATTRIBUTES DLLEXPORT :: optrecentenabledset_
  !DEC$ ATTRIBUTES STDCALL :: optrecentenabledset_
  !DEC$ ATTRIBUTES ALIAS : 'optrecentenabledset_'::optrecentenabledset_
  INTEGER :: popt
  INTEGER :: x
END SUBROUTINE
