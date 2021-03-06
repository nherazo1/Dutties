{ Delphi Object declarations generated by apiwrapper for GAMS Version 24.0.2 }

   function  gamsxRunExecDLL(optPtr: Pointer; const sysDir: ShortString; AVerbose: Integer; var{out} Msg: ShortString): Integer;
   function  gamsxShowError(const fNameLog: ShortString; var{out} errorLine: ShortString; var{out} errorTyp: ShortString; var{out} gmsLine: ShortString): Boolean;
   procedure gamsxAddBreakPoint(const fn: ShortString; lineNr: Integer);
   procedure gamsxClearBreakPoints;
   function  gamsxSystemInfo(var NrSy: Integer; var NrUel: Integer): Integer;
   function  gamsxSymbolInfo(SyNr: Integer; var{out} SyName: ShortString; var{out} SyExplTxt: ShortString; var SyDim: Integer; var SyTyp: Integer; var SyCount: Integer; var SyUserInfo: Integer): Integer;
   function  gamsxUelName(uel: Integer): ShortString;
   function  gamsxFindSymbol(const SyName: ShortString): Integer;
   function  gamsxDataReadRawStart(SyNr: Integer; var SyCount: Integer): Integer;
   function  gamsxDataReadRaw(var Elements: TgdxUELIndex; var Vals: TgdxValues; var FDim: Integer): Integer;
   function  gamsxDataReadDone: Integer;
   function  gamsxDataWriteRawStart(SyNr: Integer; const DoMerge: Boolean): Integer;
   function  gamsxDataWriteRaw(const Elements: TgdxUELIndex; const Vals: TgdxValues): Integer;
   function  gamsxDataWriteDone: Integer;
   procedure gamsxRegisterCB1(CB1: TBrkPCallBack1; userMem: Pointer);
   procedure gamsxRegisterCB2(CB2: TBrkPCallBack2; userMem1: Pointer; userMem2: Pointer);
   function  gamsxGetCB1: TBrkPCallBack1;
   function  gamsxGetCB2: TBrkPCallBack2;
   function  gamsxGetCB1UM: Pointer;
   function  gamsxGetCB2UM1: Pointer;
   function  gamsxGetCB2UM2: Pointer;

   property gamsxSW: Integer write SetSW_opt;
   property gamsxStepThrough: Boolean read FStepThrough write FStepThrough;
   property gamsxRunToEnd: Boolean read FRunToEnd write FRunToEnd;
   property gamsxCB1Defined: Boolean read FCB1Defined;
   property gamsxCB2Defined: Boolean read FCB2Defined;
{ End Delphi Object declarations generated by apiwrapper for GAMS Version 24.0.2 }
