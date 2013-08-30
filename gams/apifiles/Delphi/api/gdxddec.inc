{ Delphi Object declarations generated by apiwrapper for GAMS Version 24.0.2 }

   function  gdxAcronymAdd(const AName: ShortString; const Txt: ShortString; AIndx: Integer): Integer;
   function  gdxAcronymCount: Integer;
   function  gdxAcronymGetInfo(N: Integer; var{out} AName: ShortString; var{out} Txt: ShortString; var{out} AIndx: Integer): Integer;
   function  gdxAcronymGetMapping(N: Integer; var{out} orgIndx: Integer; var{out} newIndx: Integer; var{out} autoIndex: Integer): Integer;
   function  gdxAcronymIndex(V: Double): Integer;
   function  gdxAcronymName(V: Double; var{out} AName: ShortString): Integer;
   function  gdxAcronymNextNr(NV: Integer): Integer;
   function  gdxAcronymSetInfo(N: Integer; const AName: ShortString; const Txt: ShortString; AIndx: Integer): Integer;
   function  gdxAcronymValue(AIndx: Integer): Double;
   function  gdxAddAlias(const Id1: ShortString; const Id2: ShortString): Integer;
   function  gdxAddSetText(const Txt: ShortString; var{out} TxtNr: Integer): Integer;
   function  gdxAutoConvert(NV: Integer): Integer;
   function  gdxClose: Integer;
   function  gdxDataErrorCount: Integer;
   function  gdxDataErrorRecord(RecNr: Integer; var KeyInt: TgdxUELIndex; var Values: TgdxValues): Integer;
   function  gdxDataReadDone: Integer;
   function  gdxDataReadFilteredStart(SyNr: Integer; const FilterAction: TgdxUELIndex; var{out} NrRecs: Integer): Integer;
   function  gdxDataReadMap(RecNr: Integer; var KeyInt: TgdxUELIndex; var Values: TgdxValues; var{out} DimFrst: Integer): Integer;
   function  gdxDataReadMapStart(SyNr: Integer; var{out} NrRecs: Integer): Integer;
   function  gdxDataReadRaw(var KeyInt: TgdxUELIndex; var Values: TgdxValues; var{out} DimFrst: Integer): Integer;
   function  gdxDataReadRawFast(SyNr: Integer; DP: TDataStoreProc; var{out} NrRecs: Integer): Integer;
   function  gdxDataReadRawStart(SyNr: Integer; var{out} NrRecs: Integer): Integer;
   function  gdxDataReadSlice(const UelFilterStr: TgdxStrIndex; var{out} Dimen: Integer; DP: TDataStoreProc): Integer;
   function  gdxDataReadSliceStart(SyNr: Integer; var ElemCounts: TgdxUELIndex): Integer;
   function  gdxDataReadStr(var{out} KeyStr: TgdxStrIndex; var Values: TgdxValues; var{out} DimFrst: Integer): Integer;
   function  gdxDataReadStrStart(SyNr: Integer; var{out} NrRecs: Integer): Integer;
   function  gdxDataSliceUELS(const SliceKeyInt: TgdxUELIndex; var{out} KeyStr: TgdxStrIndex): Integer;
   function  gdxDataWriteDone: Integer;
   function  gdxDataWriteMap(const KeyInt: TgdxUELIndex; const Values: TgdxValues): Integer;
   function  gdxDataWriteMapStart(const SyId: ShortString; const ExplTxt: ShortString; Dimen: Integer; Typ: Integer; UserInfo: Integer): Integer;
   function  gdxDataWriteRaw(const KeyInt: TgdxUELIndex; const Values: TgdxValues): Integer;
   function  gdxDataWriteRawStart(const SyId: ShortString; const ExplTxt: ShortString; Dimen: Integer; Typ: Integer; UserInfo: Integer): Integer;
   function  gdxDataWriteStr(const KeyStr: TgdxStrIndex; const Values: TgdxValues): Integer;
   function  gdxDataWriteStrStart(const SyId: ShortString; const ExplTxt: ShortString; Dimen: Integer; Typ: Integer; UserInfo: Integer): Integer;
   function  gdxGetDLLVersion(var{out} V: ShortString): Integer;
   function  gdxErrorCount: Integer;
   function  gdxErrorStr(ErrNr: Integer; var{out} ErrMsg: ShortString): Integer;
   function  gdxFileInfo(var{out} FileVer: Integer; var{out} ComprLev: Integer): Integer;
   function  gdxFileVersion(var{out} FileStr: ShortString; var{out} ProduceStr: ShortString): Integer;
   function  gdxFilterExists(FilterNr: Integer): Integer;
   function  gdxFilterRegister(UelMap: Integer): Integer;
   function  gdxFilterRegisterDone: Integer;
   function  gdxFilterRegisterStart(FilterNr: Integer): Integer;
   function  gdxFindSymbol(const SyId: ShortString; var{out} SyNr: Integer): Integer;
   function  gdxGetElemText(TxtNr: Integer; var{out} Txt: ShortString; var{out} Node: Integer): Integer;
   function  gdxGetLastError: Integer;
   function  gdxGetMemoryUsed: Int64;
   function  gdxGetSpecialValues(var AVals: TgdxSVals): Integer;
   function  gdxGetUEL(UelNr: Integer; var{out} Uel: ShortString): Integer;
   function  gdxMapValue(D: Double; var{out} sv: Integer): Integer;
   function  gdxOpenAppend(const FileName: ShortString; const Producer: ShortString; var{out} ErrNr: Integer): Integer;
   function  gdxOpenRead(const FileName: ShortString; var{out} ErrNr: Integer): Integer;
   function  gdxOpenWrite(const FileName: ShortString; const Producer: ShortString; var{out} ErrNr: Integer): Integer;
   function  gdxOpenWriteEx(const FileName: ShortString; const Producer: ShortString; Compr: Integer; var{out} ErrNr: Integer): Integer;
   function  gdxResetSpecialValues: Integer;
   function  gdxSetHasText(SyNr: Integer): Integer;
   function  gdxSetReadSpecialValues(const AVals: TgdxSVals): Integer;
   function  gdxSetSpecialValues(const AVals: TgdxSVals): Integer;
   function  gdxSetTextNodeNr(TxtNr: Integer; Node: Integer): Integer;
   function  gdxSetTraceLevel(N: Integer; const s: ShortString): Integer;
   function  gdxSymbIndxMaxLength(SyNr: Integer; var LengthInfo: TgdxUELIndex): Integer;
   function  gdxSymbMaxLength: Integer;
   function  gdxSymbolAddComment(SyNr: Integer; const Txt: ShortString): Integer;
   function  gdxSymbolGetComment(SyNr: Integer; N: Integer; var{out} Txt: ShortString): Integer;
   function  gdxSymbolGetDomain(SyNr: Integer; var DomainSyNrs: TgdxUELIndex): Integer;
   function  gdxSymbolGetDomainX(SyNr: Integer; var{out} DomainIDs: TgdxStrIndex): Integer;
   function  gdxSymbolDim(SyNr: Integer): Integer;
   function  gdxSymbolInfo(SyNr: Integer; var{out} SyId: ShortString; var{out} Dimen: Integer; var{out} Typ: Integer): Integer;
   function  gdxSymbolInfoX(SyNr: Integer; var{out} RecCnt: Integer; var{out} UserInfo: Integer; var{out} ExplTxt: ShortString): Integer;
   function  gdxSymbolSetDomain(const DomainIDs: TgdxStrIndex): Integer;
   function  gdxSymbolSetDomainX(SyNr: Integer; const DomainIDs: TgdxStrIndex): Integer;
   function  gdxSystemInfo(var{out} SyCnt: Integer; var{out} UelCnt: Integer): Integer;
   function  gdxUELMaxLength: Integer;
   function  gdxUELRegisterDone: Integer;
   function  gdxUELRegisterMap(UMap: Integer; const Uel: ShortString): Integer;
   function  gdxUELRegisterMapStart: Integer;
   function  gdxUELRegisterRaw(const Uel: ShortString): Integer;
   function  gdxUELRegisterRawStart: Integer;
   function  gdxUELRegisterStr(const Uel: ShortString; var{out} UelNr: Integer): Integer;
   function  gdxUELRegisterStrStart: Integer;
   function  gdxUMFindUEL(const Uel: ShortString; var{out} UelNr: Integer; var{out} UelMap: Integer): Integer;
   function  gdxUMUelGet(UelNr: Integer; var{out} Uel: ShortString; var{out} UelMap: Integer): Integer;
   function  gdxUMUelInfo(var{out} UelCnt: Integer; var{out} HighMap: Integer): Integer;
   function  gdxCurrentDim: Integer;

{ End Delphi Object declarations generated by apiwrapper for GAMS Version 24.0.2 }