unit optdocpdef; { Delphi object wrapper generated by apiwrapper for GAMS Version 24.0.2 }
{ Object interface using a DLL, pure Delphi }

{$H- short only }
{$P- no open parameters ==> no maxlen byte}
{$V+ force var strings}

interface

uses
   sysutils,
   gmsgen;


const optDataNone    = 0;  { optDataType }
      optDataInteger = 1;
      optDataDouble  = 2;
      optDataString  = 3;
      optDataStrList = 4;

const optTypeInteger   = 0;  { optOptionType }
      optTypeDouble    = 1;
      optTypeString    = 2;
      optTypeBoolean   = 3;
      optTypeEnumStr   = 4;
      optTypeEnumInt   = 5;
      optTypeMultiList = 6;
      optTypeStrList   = 7;
      optTypeMacro     = 8;
      optTypeImmediate = 9;

const optsubRequired = 0;  { optOptionSubType }
      optsubNoValue  = 1;
      optsubOptional = 2;
      optsub2Values  = 3;

const optMsgInputEcho    = 0;  { optMsgType }
      optMsgHelp         = 1;
      optMsgDefineError  = 2;
      optMsgValueError   = 3;
      optMsgValueWarning = 4;
      optMsgDeprecated   = 5;
      optMsgFileEnter    = 6;
      optMsgFileLeave    = 7;
      optMsgTooManyMsgs  = 8;
      optMsgUserError    = 9;

const optMapIndicator  = 0;  { optVarEquMapType }
      optMapDefinedVar = 1;

//tries to load DLL from OS default location
//name for the DLL is automatic
function  optGetReady(var Msg: ShortString): boolean;
//tries to load DLL from main program directory; if that fails
//loads DLL from OS default location
//name for the DLL is automatic
function  optGetReadyX(var Msg: ShortString): boolean;
//loads DLL from specified directory
//name for the DLL is automatic
function  optGetReadyD(const Dir: ShortString; var Msg: ShortString): boolean;
//loads DLL from the full path specified
//no changes are made to the name (platform and file extension)
function  optGetReadyL(const LibName: ShortString; var Msg: ShortString): boolean;

procedure optSetLoadPath(const s: shortString);
procedure optGetLoadPath(var s: shortString);

procedure optLibraryUnload;
function  optLibraryLoaded: boolean;


type
   TErrorCallback  = function(ErrCount:Integer; const Msg:ShortString):Integer; stdcall;
   PTErrorCallBack = ^TErrorCallBack;

   TGmsOptions = Class
   private
      popt  : pointer;
      own   : boolean;

      function  DoptCount           : Integer;
      function  DoptMessageCount    : Integer;
      function  DoptGroupCount      : Integer;
      function  DoptRecentEnabled   : Integer;
      procedure DoptRecentEnabledSet(const x: Integer);
   public
      constructor Create          (var Msg: ShortString);
      constructor CreateX         (var Msg: ShortString);
      constructor CreateD         (const Dir: ShortString; var Msg: ShortString);
      constructor CreateL         (const LibName: ShortString; var Msg: ShortString);
      constructor CreateWithHandle(p: pointer; var Msg: ShortString);
      destructor  Destroy         ; override; { always use free and never destroy }

      function  optGetHandle            : pointer;
      function  optGetScreenIndicator   : boolean;
      procedure optSetScreenIndicator   (const ScrInd: boolean);
      function  optGetExceptionIndicator: boolean;
      procedure optSetExceptionIndicator(const ExcInd: boolean);
      function  optGetExitIndicator     : boolean;
      procedure optSetExitIndicator     (const ExtInd: boolean);
      function  optGetErrorCallback     : PTErrorCallback;
      procedure optSetErrorCallback     (ecb: PTErrorCallback);
      function  optGetErrorCount        : Integer;
      procedure optSetErrorCount        (const ecnt: Integer);

      function  optReadDefinition    (const fn: ShortString): Integer;
      function  optReadParameterFile (const fn: ShortString): Integer;
      procedure optReadFromStr       (const s: ShortString);
      function  optWriteParameterFile(const fn: ShortString): Integer;
      procedure optClearMessages     ;
      procedure optAddMessage        (const info: ShortString);
      procedure optGetMessage        (NrMsg: Integer; var{out} info: ShortString; var{out} iType: Integer);
      procedure optResetAll          ;
      procedure optResetAllRecent    ;
      procedure optResetRecentChanges;
      procedure optShowHelp          (const HlpID: ShortString);
      function  optResetNr           (ANr: Integer): Integer;
      function  optFindStr           (const AName: ShortString; var{out} ANr: Integer; var{out} ARefNr: Integer): Integer;
      function  optGetInfoNr         (ANr: Integer; var{out} ADefined: Integer; var{out} ADefinedR: Integer; var{out} ARefNr: Integer; var{out} ADataType: Integer; var{out} AOptType: Integer; var{out} ASubType: Integer): Integer;
      function  optGetValuesNr       (ANr: Integer; var{out} ASName: ShortString; var{out} AIVal: Integer; var{out} ADVal: Double; var{out} ASVal: ShortString): Integer;
      function  optSetValuesNr       (ANr: Integer; AIVal: Integer; ADVal: Double; const ASVal: ShortString): Integer;
      function  optSetValues2Nr      (ANr: Integer; AIVal: Integer; ADVal: Double; const ASVal: ShortString): Integer;
      procedure optVersion           (var{out} sversion: ShortString);
      procedure optDefinitionFile    (var{out} sfilename: ShortString);
      function  optGetFromAnyStrList (idash: Integer; var{out} skey: ShortString; var{out} sval: ShortString): Integer;
      function  optGetFromListStr    (const skey: ShortString; var{out} sval: ShortString): Integer;
      function  optListCountStr      (const skey: ShortString): Integer;
      function  optReadFromListStr   (const skey: ShortString; iPos: Integer; var{out} sval: ShortString): Integer;
      function  optSynonymCount      : Integer;
      function  optGetSynonym        (NrSyn: Integer; var{out} SSyn: ShortString; var{out} SName: ShortString): Integer;
      procedure optEchoSet           (AIVal: Integer);
      function  optEOLOnlySet        (AIVal: Integer): Integer;
      procedure optNoBoundsSet       (AIVal: Integer);
      procedure optErrorCount        (var{out} iErrors: Integer; var{out} iWarnings: Integer);
      function  optGetBoundsInt      (ANr: Integer; var{out} ilval: Integer; var{out} ihval: Integer; var{out} idval: Integer): Integer;
      function  optGetBoundsDbl      (ANr: Integer; var{out} dlval: Double; var{out} dhval: Double; var{out} ddval: Double): Integer;
      function  optGetDefaultStr     (ANr: Integer; var{out} sval: ShortString): Integer;
      function  optGetIntNr          (ANr: Integer; var{out} AIVal: Integer): Integer;
      function  optGetInt2Nr         (ANr: Integer; var{out} AIVal: Integer): Integer;
      function  optSetIntNr          (ANr: Integer; AIVal: Integer): Integer;
      function  optSetInt2Nr         (ANr: Integer; AIVal: Integer): Integer;
      function  optGetStrNr          (ANr: Integer; var{out} ASVal: ShortString): Integer;
      function  optGetOptHelpNr      (ANr: Integer; var{out} AName: ShortString; var{out} AHc: Integer; var{out} AGroup: Integer): Integer;
      function  optGetEnumHelp       (ANr: Integer; AOrd: Integer; var{out} AHc: Integer; var{out} AHelpStr: ShortString): Integer;
      function  optGetEnumStrNr      (ANr: Integer; var{out} ASVal: ShortString; var{out} AOrd: Integer): Integer;
      function  optGetEnumCount      (ANr: Integer; var{out} ACount: Integer): Integer;
      function  optGetEnumValue      (ANr: Integer; AOrd: Integer; var{out} AValInt: Integer; var{out} AValStr: ShortString): Integer;
      function  optGetStr2Nr         (ANr: Integer; var{out} ASVal: ShortString): Integer;
      function  optSetStrNr          (ANr: Integer; const ASVal: ShortString): Integer;
      function  optSetStr2Nr         (ANr: Integer; const ASVal: ShortString): Integer;
      function  optGetDblNr          (ANr: Integer; var{out} ADVal: Double): Integer;
      function  optGetDbl2Nr         (ANr: Integer; var{out} ADVal: Double): Integer;
      function  optSetDblNr          (ANr: Integer; ADVal: Double): Integer;
      function  optSetDbl2Nr         (ANr: Integer; ADVal: Double): Integer;
      function  optGetValStr         (const AName: ShortString; var{out} ASVal: ShortString): Integer;
      function  optGetVal2Str        (const AName: ShortString; var{out} ASVal: ShortString): Integer;
      function  optGetNameNr         (ANr: Integer; var{out} ASName: ShortString): Integer;
      function  optGetDefinedNr      (ANr: Integer; var{out} AIVal: Integer): Integer;
      function  optGetHelpNr         (ANr: Integer; var{out} ASOpt: ShortString; var{out} ASHelp: ShortString): Integer;
      function  optGetGroupNr        (ANr: Integer; var{out} AName: ShortString; var{out} AGroup: Integer; var{out} AHc: Integer; var{out} AHelp: ShortString): Integer;
      function  optGetGroupGrpNr     (AGroup: Integer): Integer;
      function  optGetOptGroupNr     (ANr: Integer): Integer;
      function  optGetDotOptNr       (ANr: Integer; var{out} VEName: ShortString; var{out} AObjNr: Integer; var{out} ADim: Integer; var{out} AValue: Double): Integer;
      function  optGetDotOptUel      (ANr: Integer; ADim: Integer; var{out} AUEL: ShortString): Integer;
      function  optGetVarEquMapNr    (maptype: Integer; ANr: Integer; var{out} EquName: ShortString; var{out} VarName: ShortString; var{out} EquDim: Integer; var{out} VarDim: Integer; var{out} AValue: Integer): Integer;
      function  optGetEquVarEquMapNr (maptype: Integer; ANr: Integer; ADim: Integer; var{out} AIndex: ShortString): Integer;
      function  optGetVarVarEquMapNr (maptype: Integer; ANr: Integer; ADim: Integer; var{out} AIndex: ShortString): Integer;
      function  optVarEquMapCount    (maptype: Integer; var{out} ANrErrors: Integer): Integer;
      function  optGetIndicatorNr    (ANr: Integer; var{out} EquName: ShortString; var{out} VarName: ShortString; var{out} EquDim: Integer; var{out} VarDim: Integer; var{out} AValue: Integer): Integer;
      function  optGetEquIndicatorNr (ANr: Integer; ADim: Integer; var{out} AIndex: ShortString): Integer;
      function  optGetVarIndicatorNr (ANr: Integer; ADim: Integer; var{out} AIndex: ShortString): Integer;
      function  optIndicatorCount    (var{out} ANrErrors: Integer): Integer;
      function  optDotOptCount       (var{out} ANrErrors: Integer): Integer;
      function  optSetRefNr          (ANr: Integer; ARefNr: Integer): Integer;
      function  optSetRefNrStr       (const AOpt: ShortString; ARefNr: Integer): Integer;
      function  optGetConstName      (cgroup: Integer; cindex: Integer; var{out} cname: ShortString): Integer;
      function  optGetTypeName       (TNr: Integer; var{out} sTName: ShortString): Integer;
      function  optLookUp            (const AOpt: ShortString): Integer;
      procedure optReadFromPChar     (p: PChar);
      function  optGetNameOpt        (const ASVal: ShortString; var{out} solver: ShortString; var{out} opt: Integer): Integer;
      function  optGetDefinedStr     (const AName: ShortString): Boolean;
      function  optGetIntStr         (const AName: ShortString): Integer;
      function  optGetDblStr         (const AName: ShortString): Double;
      function  optGetStrStr         (const AName: ShortString): ShortString;
      procedure optSetIntStr         (const AName: ShortString; AIVal: Integer);
      procedure optSetDblStr         (const AName: ShortString; ADVal: Double);
      procedure optSetStrStr         (const AName: ShortString; const ASVal: ShortString);

 { recovered properties }
      property optCount         : Integer read DoptCount;
      property optMessageCount  : Integer read DoptMessageCount;
      property optGroupCount    : Integer read DoptGroupCount;
      property optRecentEnabled : Integer read DoptRecentEnabled write DoptRecentEnabledSet;
   end;

implementation
uses
   optdcpdef;


function optGetReady(var Msg: ShortString): boolean;
begin
Result := optdcpdef.optGetReady(Msg);
end;

function  optGetReadyX(var Msg: ShortString): boolean;
begin
Result := optdcpdef.optGetReadyX(Msg);
end;

function  optGetReadyD(const Dir: ShortString; var Msg: ShortString): boolean;
begin
Result := optdcpdef.optGetReadyD(Dir,Msg);
end;

function  optGetReadyL(const LibName: ShortString; var Msg: ShortString): boolean;
begin
Result := optdcpdef.optGetReadyL(LibName,Msg);
end;

procedure optSetLoadPath(const s: shortString);
begin
optdcpdef.optSetLoadPath(s);
end;

procedure optGetLoadPath(var s: shortString);
begin
optdcpdef.optGetLoadPath(s);
end;

procedure optLibraryUnload;
begin
optdcpdef.optLibraryUnload;
end;

function  optLibraryLoaded: boolean;
begin
Result := optdcpdef.optLibraryLoaded;
end;

constructor TGmsOptions.Create(var Msg: ShortString);
begin
inherited Create;
own := true;
if not optdcpdef.optCreate(popt, Msg) then begin
   popt := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGmsOptions.Create';
   end
else Msg := '';
end; (* TGmsOptions.Create *)

constructor TGmsOptions.CreateX(var Msg: ShortString);
begin
inherited Create;
own := true;
if not optdcpdef.optCreateX(popt, Msg) then begin
   popt := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGmsOptions.CreateX';
   end
else Msg := '';
end; (* TGmsOptions.CreateX *)

constructor TGmsOptions.CreateD(const Dir: ShortString; var Msg: ShortString);
begin
inherited Create;
own := true;
if not optdcpdef.optCreateD(popt, Dir, Msg) then begin
   popt := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGmsOptions.CreateD';
   end
 else Msg := '';
end; (* TGmsOptions.CreateD *)

constructor TGmsOptions.CreateL(const LibName: ShortString; var Msg: ShortString);
begin
inherited Create;
own := true;
if not optdcpdef.optCreateL(popt, LibName, Msg) then begin
   popt := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGmsOptions.CreateL';
   end
else Msg := '';
end; (* TGmsOptions.CreateL *)

constructor TGmsOptions.CreateWithHandle(p: pointer; var Msg: ShortString);
begin
inherited Create;
own := false;
popt := p;
if not optdcpdef.optGetReady(Msg) then begin
   popt := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGmsOptions.CreateWithHandle';
   end
else Msg := '';
end; (* TGmsOptions.CreateWithHandle *)

destructor TGmsOptions.Destroy;
begin
if own
then
   optdcpdef.optFree(popt);
inherited destroy;
end;

function TGmsOptions.optGetHandle: pointer;
begin
Result := popt;
end;

function  TGmsOptions.optGetScreenIndicator: Boolean;
begin
result := optdcpdef.optGetScreenIndicator;
end;

procedure TGmsOptions.optSetScreenIndicator(const ScrInd: Boolean);
begin
optdcpdef.optSetScreenIndicator(ScrInd);
end;

function  TGmsOptions.optGetExceptionIndicator: Boolean;
begin
result := optdcpdef.optGetExceptionIndicator;
end;

procedure TGmsOptions.optSetExceptionIndicator(const ExcInd: Boolean);
begin
optdcpdef.optSetExceptionIndicator(ExcInd);
end;

function  TGmsOptions.optGetExitIndicator: Boolean;
begin
result := optdcpdef.optGetExitIndicator;
end;

procedure TGmsOptions.optSetExitIndicator(const ExtInd: Boolean);
begin
optdcpdef.optSetExitIndicator(ExtInd);
end;

function  TGmsOptions.optGetErrorCount: Integer;
begin
result := optdcpdef.optGetErrorCount;
end;

procedure TGmsOptions.optSetErrorCount(const ecnt: Integer);
begin
optdcpdef.optSetErrorCount(ecnt);
end;

function  TGmsOptions.optGetErrorCallback: PTErrorCallBack;
begin
result := PTErrorCallBack(optdcpdef.optGetErrorCallback);
end;

procedure TGmsOptions.optSetErrorCallback(ecb: PTErrorCallBack);
begin
optdcpdef.optSetErrorCallback(TErrorCallBack(ecb));
end;


function  TGmsOptions.DoptCount: Integer;
begin
result := optdcpdef.optCount(popt);
end;

function  TGmsOptions.DoptMessageCount: Integer;
begin
result := optdcpdef.optMessageCount(popt);
end;

function  TGmsOptions.DoptGroupCount: Integer;
begin
result := optdcpdef.optGroupCount(popt);
end;

function  TGmsOptions.DoptRecentEnabled: Integer;
begin
result := optdcpdef.optRecentEnabled(popt);
end;

procedure TGmsOptions.DoptRecentEnabledSet(const x: Integer);
begin
optdcpdef.optRecentEnabledSet(popt,x);
end;

function  TGmsOptions.optReadDefinition(const fn: ShortString): Integer;
begin
result := optdcpdef.optReadDefinition(popt, fn);
end;

function  TGmsOptions.optReadParameterFile(const fn: ShortString): Integer;
begin
result := optdcpdef.optReadParameterFile(popt, fn);
end;

procedure TGmsOptions.optReadFromStr(const s: ShortString);
begin
optdcpdef.optReadFromStr(popt, s);
end;

function  TGmsOptions.optWriteParameterFile(const fn: ShortString): Integer;
begin
result := optdcpdef.optWriteParameterFile(popt, fn);
end;

procedure TGmsOptions.optClearMessages;
begin
optdcpdef.optClearMessages(popt);
end;

procedure TGmsOptions.optAddMessage(const info: ShortString);
begin
optdcpdef.optAddMessage(popt, info);
end;

procedure TGmsOptions.optGetMessage(NrMsg: Integer; var{out} info: ShortString; var{out} iType: Integer);
begin
optdcpdef.optGetMessage(popt, NrMsg, info, iType);
end;

procedure TGmsOptions.optResetAll;
begin
optdcpdef.optResetAll(popt);
end;

procedure TGmsOptions.optResetAllRecent;
begin
optdcpdef.optResetAllRecent(popt);
end;

procedure TGmsOptions.optResetRecentChanges;
begin
optdcpdef.optResetRecentChanges(popt);
end;

procedure TGmsOptions.optShowHelp(const HlpID: ShortString);
begin
optdcpdef.optShowHelp(popt, HlpID);
end;

function  TGmsOptions.optResetNr(ANr: Integer): Integer;
begin
result := optdcpdef.optResetNr(popt, ANr);
end;

function  TGmsOptions.optFindStr(const AName: ShortString; var{out} ANr: Integer; var{out} ARefNr: Integer): Integer;
begin
result := optdcpdef.optFindStr(popt, AName, ANr, ARefNr);
end;

function  TGmsOptions.optGetInfoNr(ANr: Integer; var{out} ADefined: Integer; var{out} ADefinedR: Integer; var{out} ARefNr: Integer; var{out} ADataType: Integer; var{out} AOptType: Integer; var{out} ASubType: Integer): Integer;
begin
result := optdcpdef.optGetInfoNr(popt, ANr, ADefined, ADefinedR, ARefNr, ADataType, AOptType, ASubType);
end;

function  TGmsOptions.optGetValuesNr(ANr: Integer; var{out} ASName: ShortString; var{out} AIVal: Integer; var{out} ADVal: Double; var{out} ASVal: ShortString): Integer;
begin
result := optdcpdef.optGetValuesNr(popt, ANr, ASName, AIVal, ADVal, ASVal);
end;

function  TGmsOptions.optSetValuesNr(ANr: Integer; AIVal: Integer; ADVal: Double; const ASVal: ShortString): Integer;
begin
result := optdcpdef.optSetValuesNr(popt, ANr, AIVal, ADVal, ASVal);
end;

function  TGmsOptions.optSetValues2Nr(ANr: Integer; AIVal: Integer; ADVal: Double; const ASVal: ShortString): Integer;
begin
result := optdcpdef.optSetValues2Nr(popt, ANr, AIVal, ADVal, ASVal);
end;

procedure TGmsOptions.optVersion(var{out} sversion: ShortString);
begin
optdcpdef.optVersion(popt, sversion);
end;

procedure TGmsOptions.optDefinitionFile(var{out} sfilename: ShortString);
begin
optdcpdef.optDefinitionFile(popt, sfilename);
end;

function  TGmsOptions.optGetFromAnyStrList(idash: Integer; var{out} skey: ShortString; var{out} sval: ShortString): Integer;
begin
result := optdcpdef.optGetFromAnyStrList(popt, idash, skey, sval);
end;

function  TGmsOptions.optGetFromListStr(const skey: ShortString; var{out} sval: ShortString): Integer;
begin
result := optdcpdef.optGetFromListStr(popt, skey, sval);
end;

function  TGmsOptions.optListCountStr(const skey: ShortString): Integer;
begin
result := optdcpdef.optListCountStr(popt, skey);
end;

function  TGmsOptions.optReadFromListStr(const skey: ShortString; iPos: Integer; var{out} sval: ShortString): Integer;
begin
result := optdcpdef.optReadFromListStr(popt, skey, iPos, sval);
end;

function  TGmsOptions.optSynonymCount: Integer;
begin
result := optdcpdef.optSynonymCount(popt);
end;

function  TGmsOptions.optGetSynonym(NrSyn: Integer; var{out} SSyn: ShortString; var{out} SName: ShortString): Integer;
begin
result := optdcpdef.optGetSynonym(popt, NrSyn, SSyn, SName);
end;

procedure TGmsOptions.optEchoSet(AIVal: Integer);
begin
optdcpdef.optEchoSet(popt, AIVal);
end;

function  TGmsOptions.optEOLOnlySet(AIVal: Integer): Integer;
begin
result := optdcpdef.optEOLOnlySet(popt, AIVal);
end;

procedure TGmsOptions.optNoBoundsSet(AIVal: Integer);
begin
optdcpdef.optNoBoundsSet(popt, AIVal);
end;

procedure TGmsOptions.optErrorCount(var{out} iErrors: Integer; var{out} iWarnings: Integer);
begin
optdcpdef.optErrorCount(popt, iErrors, iWarnings);
end;

function  TGmsOptions.optGetBoundsInt(ANr: Integer; var{out} ilval: Integer; var{out} ihval: Integer; var{out} idval: Integer): Integer;
begin
result := optdcpdef.optGetBoundsInt(popt, ANr, ilval, ihval, idval);
end;

function  TGmsOptions.optGetBoundsDbl(ANr: Integer; var{out} dlval: Double; var{out} dhval: Double; var{out} ddval: Double): Integer;
begin
result := optdcpdef.optGetBoundsDbl(popt, ANr, dlval, dhval, ddval);
end;

function  TGmsOptions.optGetDefaultStr(ANr: Integer; var{out} sval: ShortString): Integer;
begin
result := optdcpdef.optGetDefaultStr(popt, ANr, sval);
end;

function  TGmsOptions.optGetIntNr(ANr: Integer; var{out} AIVal: Integer): Integer;
begin
result := optdcpdef.optGetIntNr(popt, ANr, AIVal);
end;

function  TGmsOptions.optGetInt2Nr(ANr: Integer; var{out} AIVal: Integer): Integer;
begin
result := optdcpdef.optGetInt2Nr(popt, ANr, AIVal);
end;

function  TGmsOptions.optSetIntNr(ANr: Integer; AIVal: Integer): Integer;
begin
result := optdcpdef.optSetIntNr(popt, ANr, AIVal);
end;

function  TGmsOptions.optSetInt2Nr(ANr: Integer; AIVal: Integer): Integer;
begin
result := optdcpdef.optSetInt2Nr(popt, ANr, AIVal);
end;

function  TGmsOptions.optGetStrNr(ANr: Integer; var{out} ASVal: ShortString): Integer;
begin
result := optdcpdef.optGetStrNr(popt, ANr, ASVal);
end;

function  TGmsOptions.optGetOptHelpNr(ANr: Integer; var{out} AName: ShortString; var{out} AHc: Integer; var{out} AGroup: Integer): Integer;
begin
result := optdcpdef.optGetOptHelpNr(popt, ANr, AName, AHc, AGroup);
end;

function  TGmsOptions.optGetEnumHelp(ANr: Integer; AOrd: Integer; var{out} AHc: Integer; var{out} AHelpStr: ShortString): Integer;
begin
result := optdcpdef.optGetEnumHelp(popt, ANr, AOrd, AHc, AHelpStr);
end;

function  TGmsOptions.optGetEnumStrNr(ANr: Integer; var{out} ASVal: ShortString; var{out} AOrd: Integer): Integer;
begin
result := optdcpdef.optGetEnumStrNr(popt, ANr, ASVal, AOrd);
end;

function  TGmsOptions.optGetEnumCount(ANr: Integer; var{out} ACount: Integer): Integer;
begin
result := optdcpdef.optGetEnumCount(popt, ANr, ACount);
end;

function  TGmsOptions.optGetEnumValue(ANr: Integer; AOrd: Integer; var{out} AValInt: Integer; var{out} AValStr: ShortString): Integer;
begin
result := optdcpdef.optGetEnumValue(popt, ANr, AOrd, AValInt, AValStr);
end;

function  TGmsOptions.optGetStr2Nr(ANr: Integer; var{out} ASVal: ShortString): Integer;
begin
result := optdcpdef.optGetStr2Nr(popt, ANr, ASVal);
end;

function  TGmsOptions.optSetStrNr(ANr: Integer; const ASVal: ShortString): Integer;
begin
result := optdcpdef.optSetStrNr(popt, ANr, ASVal);
end;

function  TGmsOptions.optSetStr2Nr(ANr: Integer; const ASVal: ShortString): Integer;
begin
result := optdcpdef.optSetStr2Nr(popt, ANr, ASVal);
end;

function  TGmsOptions.optGetDblNr(ANr: Integer; var{out} ADVal: Double): Integer;
begin
result := optdcpdef.optGetDblNr(popt, ANr, ADVal);
end;

function  TGmsOptions.optGetDbl2Nr(ANr: Integer; var{out} ADVal: Double): Integer;
begin
result := optdcpdef.optGetDbl2Nr(popt, ANr, ADVal);
end;

function  TGmsOptions.optSetDblNr(ANr: Integer; ADVal: Double): Integer;
begin
result := optdcpdef.optSetDblNr(popt, ANr, ADVal);
end;

function  TGmsOptions.optSetDbl2Nr(ANr: Integer; ADVal: Double): Integer;
begin
result := optdcpdef.optSetDbl2Nr(popt, ANr, ADVal);
end;

function  TGmsOptions.optGetValStr(const AName: ShortString; var{out} ASVal: ShortString): Integer;
begin
result := optdcpdef.optGetValStr(popt, AName, ASVal);
end;

function  TGmsOptions.optGetVal2Str(const AName: ShortString; var{out} ASVal: ShortString): Integer;
begin
result := optdcpdef.optGetVal2Str(popt, AName, ASVal);
end;

function  TGmsOptions.optGetNameNr(ANr: Integer; var{out} ASName: ShortString): Integer;
begin
result := optdcpdef.optGetNameNr(popt, ANr, ASName);
end;

function  TGmsOptions.optGetDefinedNr(ANr: Integer; var{out} AIVal: Integer): Integer;
begin
result := optdcpdef.optGetDefinedNr(popt, ANr, AIVal);
end;

function  TGmsOptions.optGetHelpNr(ANr: Integer; var{out} ASOpt: ShortString; var{out} ASHelp: ShortString): Integer;
begin
result := optdcpdef.optGetHelpNr(popt, ANr, ASOpt, ASHelp);
end;

function  TGmsOptions.optGetGroupNr(ANr: Integer; var{out} AName: ShortString; var{out} AGroup: Integer; var{out} AHc: Integer; var{out} AHelp: ShortString): Integer;
begin
result := optdcpdef.optGetGroupNr(popt, ANr, AName, AGroup, AHc, AHelp);
end;

function  TGmsOptions.optGetGroupGrpNr(AGroup: Integer): Integer;
begin
result := optdcpdef.optGetGroupGrpNr(popt, AGroup);
end;

function  TGmsOptions.optGetOptGroupNr(ANr: Integer): Integer;
begin
result := optdcpdef.optGetOptGroupNr(popt, ANr);
end;

function  TGmsOptions.optGetDotOptNr(ANr: Integer; var{out} VEName: ShortString; var{out} AObjNr: Integer; var{out} ADim: Integer; var{out} AValue: Double): Integer;
begin
result := optdcpdef.optGetDotOptNr(popt, ANr, VEName, AObjNr, ADim, AValue);
end;

function  TGmsOptions.optGetDotOptUel(ANr: Integer; ADim: Integer; var{out} AUEL: ShortString): Integer;
begin
result := optdcpdef.optGetDotOptUel(popt, ANr, ADim, AUEL);
end;

function  TGmsOptions.optGetVarEquMapNr(maptype: Integer; ANr: Integer; var{out} EquName: ShortString; var{out} VarName: ShortString; var{out} EquDim: Integer; var{out} VarDim: Integer; var{out} AValue: Integer): Integer;
begin
result := optdcpdef.optGetVarEquMapNr(popt, maptype, ANr, EquName, VarName, EquDim, VarDim, AValue);
end;

function  TGmsOptions.optGetEquVarEquMapNr(maptype: Integer; ANr: Integer; ADim: Integer; var{out} AIndex: ShortString): Integer;
begin
result := optdcpdef.optGetEquVarEquMapNr(popt, maptype, ANr, ADim, AIndex);
end;

function  TGmsOptions.optGetVarVarEquMapNr(maptype: Integer; ANr: Integer; ADim: Integer; var{out} AIndex: ShortString): Integer;
begin
result := optdcpdef.optGetVarVarEquMapNr(popt, maptype, ANr, ADim, AIndex);
end;

function  TGmsOptions.optVarEquMapCount(maptype: Integer; var{out} ANrErrors: Integer): Integer;
begin
result := optdcpdef.optVarEquMapCount(popt, maptype, ANrErrors);
end;

function  TGmsOptions.optGetIndicatorNr(ANr: Integer; var{out} EquName: ShortString; var{out} VarName: ShortString; var{out} EquDim: Integer; var{out} VarDim: Integer; var{out} AValue: Integer): Integer;
begin
result := optdcpdef.optGetIndicatorNr(popt, ANr, EquName, VarName, EquDim, VarDim, AValue);
end;

function  TGmsOptions.optGetEquIndicatorNr(ANr: Integer; ADim: Integer; var{out} AIndex: ShortString): Integer;
begin
result := optdcpdef.optGetEquIndicatorNr(popt, ANr, ADim, AIndex);
end;

function  TGmsOptions.optGetVarIndicatorNr(ANr: Integer; ADim: Integer; var{out} AIndex: ShortString): Integer;
begin
result := optdcpdef.optGetVarIndicatorNr(popt, ANr, ADim, AIndex);
end;

function  TGmsOptions.optIndicatorCount(var{out} ANrErrors: Integer): Integer;
begin
result := optdcpdef.optIndicatorCount(popt, ANrErrors);
end;

function  TGmsOptions.optDotOptCount(var{out} ANrErrors: Integer): Integer;
begin
result := optdcpdef.optDotOptCount(popt, ANrErrors);
end;

function  TGmsOptions.optSetRefNr(ANr: Integer; ARefNr: Integer): Integer;
begin
result := optdcpdef.optSetRefNr(popt, ANr, ARefNr);
end;

function  TGmsOptions.optSetRefNrStr(const AOpt: ShortString; ARefNr: Integer): Integer;
begin
result := optdcpdef.optSetRefNrStr(popt, AOpt, ARefNr);
end;

function  TGmsOptions.optGetConstName(cgroup: Integer; cindex: Integer; var{out} cname: ShortString): Integer;
begin
result := optdcpdef.optGetConstName(popt, cgroup, cindex, cname);
end;

function  TGmsOptions.optGetTypeName(TNr: Integer; var{out} sTName: ShortString): Integer;
begin
result := optdcpdef.optGetTypeName(popt, TNr, sTName);
end;

function  TGmsOptions.optLookUp(const AOpt: ShortString): Integer;
begin
result := optdcpdef.optLookUp(popt, AOpt);
end;

procedure TGmsOptions.optReadFromPChar(p: PChar);
begin
optdcpdef.optReadFromPChar(popt, p);
end;

function  TGmsOptions.optGetNameOpt(const ASVal: ShortString; var{out} solver: ShortString; var{out} opt: Integer): Integer;
begin
result := optdcpdef.optGetNameOpt(popt, ASVal, solver, opt);
end;

function  TGmsOptions.optGetDefinedStr(const AName: ShortString): Boolean;
begin
result := optdcpdef.optGetDefinedStr(popt, AName);
end;

function  TGmsOptions.optGetIntStr(const AName: ShortString): Integer;
begin
result := optdcpdef.optGetIntStr(popt, AName);
end;

function  TGmsOptions.optGetDblStr(const AName: ShortString): Double;
begin
result := optdcpdef.optGetDblStr(popt, AName);
end;

function  TGmsOptions.optGetStrStr(const AName: ShortString): ShortString;
begin
result := optdcpdef.optGetStrStr(popt, AName);
end;

procedure TGmsOptions.optSetIntStr(const AName: ShortString; AIVal: Integer);
begin
optdcpdef.optSetIntStr(popt, AName, AIVal);
end;

procedure TGmsOptions.optSetDblStr(const AName: ShortString; ADVal: Double);
begin
optdcpdef.optSetDblStr(popt, AName, ADVal);
end;

procedure TGmsOptions.optSetStrStr(const AName: ShortString; const ASVal: ShortString);
begin
optdcpdef.optSetStrStr(popt, AName, ASVal);
end;

end.