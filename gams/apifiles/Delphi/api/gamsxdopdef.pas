unit gamsxdopdef; { Delphi object wrapper generated by apiwrapper for GAMS Version 24.0.2 }
{ Object interface using a DLL, pure Delphi, static loading }

{$H- short only }
{$P- no open parameters ==> no maxlen byte}
{$V+ force var strings}

interface

uses
   sysutils,
   gmsgen,
   gxdefs;


//tries to load DLL from OS default location
//name for the DLL is automatic
function  gamsxGetReady(var Msg: ShortString): boolean;
//tries to load DLL from main program directory; if that fails
//loads DLL from OS default location
//name for the DLL is automatic
function  gamsxGetReadyX(var Msg: ShortString): boolean;
//loads DLL from specified directory
//name for the DLL is automatic
function  gamsxGetReadyD(const Dir: ShortString; var Msg: ShortString): boolean;
//loads DLL from the full path specified
//no changes are made to the name (platform and file extension)
function  gamsxGetReadyL(const LibName: ShortString; var Msg: ShortString): boolean;

procedure gamsxLibraryUnload;
function  gamsxLibraryLoaded: boolean;


type
   TErrorCallback  = function(ErrCount:Integer; const Msg:ShortString):Integer; stdcall;
   PTErrorCallBack = ^TErrorCallBack;
   TBrkPCallBack1  = function (const fn: ShortString; linNr: Integer; lstNr: Integer; usrMem: Pointer): Integer; stdcall;
   PTBrkPCallBack1 = ^TBrkPCallBack1;
   TBrkPCallBack2  = function (const fn: ShortString; linNr: Integer; lstNr: Integer; userMem1: Pointer; userMem2: Pointer): Integer; stdcall;
   PTBrkPCallBack2 = ^TBrkPCallBack2;

   TGamsX = Class
   private
      pgamsx  : pointer;
      own   : boolean;

      procedure DgamsxSWSet         (const x: Integer);
      function  DgamsxStepThrough   : Boolean;
      procedure DgamsxStepThroughSet(const x: Boolean);
      function  DgamsxRunToEnd      : Boolean;
      procedure DgamsxRunToEndSet   (const x: Boolean);
      function  DgamsxCB1Defined    : Boolean;
      function  DgamsxCB2Defined    : Boolean;
   public
      constructor Create          (var Msg: ShortString);
      constructor CreateX         (var Msg: ShortString);
      constructor CreateD         (const Dir: ShortString; var Msg: ShortString);
      constructor CreateL         (const LibName: ShortString; var Msg: ShortString);
      constructor CreateWithHandle(p: pointer; var Msg: ShortString);
      destructor  Destroy         ; override; { always use free and never destroy }

      function  gamsxGetHandle            : pointer;
      function  gamsxGetScreenIndicator   : boolean;
      procedure gamsxSetScreenIndicator   (const ScrInd: boolean);
      function  gamsxGetExceptionIndicator: boolean;
      procedure gamsxSetExceptionIndicator(const ExcInd: boolean);
      function  gamsxGetExitIndicator     : boolean;
      procedure gamsxSetExitIndicator     (const ExtInd: boolean);
      function  gamsxGetErrorCallback     : PTErrorCallback;
      procedure gamsxSetErrorCallback     (ecb: PTErrorCallback);
      function  gamsxGetErrorCount        : Integer;
      procedure gamsxSetErrorCount        (const ecnt: Integer);

      function  gamsxRunExecDLL       (optPtr: Pointer; const sysDir: ShortString; AVerbose: Integer; var{out} Msg: ShortString): Integer;
      function  gamsxShowError        (const fNameLog: ShortString; var{out} errorLine: ShortString; var{out} errorTyp: ShortString; var{out} gmsLine: ShortString): Boolean;
      procedure gamsxAddBreakPoint    (const fn: ShortString; lineNr: Integer);
      procedure gamsxClearBreakPoints ;
      function  gamsxSystemInfo       (var NrSy: Integer; var NrUel: Integer): Integer;
      function  gamsxSymbolInfo       (SyNr: Integer; var{out} SyName: ShortString; var{out} SyExplTxt: ShortString; var SyDim: Integer; var SyTyp: Integer; var SyCount: Integer; var SyUserInfo: Integer): Integer;
      function  gamsxUelName          (uel: Integer): ShortString;
      function  gamsxFindSymbol       (const SyName: ShortString): Integer;
      function  gamsxDataReadRawStart (SyNr: Integer; var SyCount: Integer): Integer;
      function  gamsxDataReadRaw      (var Elements: TgdxUELIndex; var Vals: TgdxValues; var FDim: Integer): Integer;
      function  gamsxDataReadDone     : Integer;
      function  gamsxDataWriteRawStart(SyNr: Integer; const DoMerge: Boolean): Integer;
      function  gamsxDataWriteRaw     (const Elements: TgdxUELIndex; const Vals: TgdxValues): Integer;
      function  gamsxDataWriteDone    : Integer;
      procedure gamsxRegisterCB1      (CB1: TBrkPCallBack1; userMem: Pointer);
      procedure gamsxRegisterCB2      (CB2: TBrkPCallBack2; userMem1: Pointer; userMem2: Pointer);
      function  gamsxGetCB1           : TBrkPCallBack1;
      function  gamsxGetCB2           : TBrkPCallBack2;
      function  gamsxGetCB1UM         : Pointer;
      function  gamsxGetCB2UM1        : Pointer;
      function  gamsxGetCB2UM2        : Pointer;

 { recovered properties }
      property gamsxSW          : Integer write DgamsxSWSet;
      property gamsxStepThrough : Boolean read DgamsxStepThrough write DgamsxStepThroughSet;
      property gamsxRunToEnd    : Boolean read DgamsxRunToEnd write DgamsxRunToEndSet;
      property gamsxCB1Defined  : Boolean read DgamsxCB1Defined;
      property gamsxCB2Defined  : Boolean read DgamsxCB2Defined;
   end;

implementation
uses
   gamsxdpdef;


function gamsxGetReady(var Msg: ShortString): boolean;
begin
Result := gamsxdpdef.gamsxGetReady(Msg);
end;

function  gamsxGetReadyX(var Msg: ShortString): boolean;
begin
Result := gamsxdpdef.gamsxGetReadyX(Msg);
end;

function  gamsxGetReadyD(const Dir: ShortString; var Msg: ShortString): boolean;
begin
Result := gamsxdpdef.gamsxGetReadyD(Dir,Msg);
end;

function  gamsxGetReadyL(const LibName: ShortString; var Msg: ShortString): boolean;
begin
Result := gamsxdpdef.gamsxGetReadyL(LibName,Msg);
end;

procedure gamsxLibraryUnload;
begin
end;

function  gamsxLibraryLoaded: boolean;
begin
Result := True;
end;

constructor TGamsX.Create(var Msg: ShortString);
begin
inherited Create;
own := true;
if not gamsxdpdef.gamsxCreate(pgamsx, Msg) then begin
   pgamsx := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGamsX.Create';
   end
else Msg := '';
end; (* TGamsX.Create *)

constructor TGamsX.CreateX(var Msg: ShortString);
begin
inherited Create;
own := true;
if not gamsxdpdef.gamsxCreateX(pgamsx, Msg) then begin
   pgamsx := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGamsX.CreateX';
   end
else Msg := '';
end; (* TGamsX.CreateX *)

constructor TGamsX.CreateD(const Dir: ShortString; var Msg: ShortString);
begin
inherited Create;
own := true;
if not gamsxdpdef.gamsxCreateD(pgamsx, Dir, Msg) then begin
   pgamsx := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGamsX.CreateD';
   end
 else Msg := '';
end; (* TGamsX.CreateD *)

constructor TGamsX.CreateL(const LibName: ShortString; var Msg: ShortString);
begin
inherited Create;
own := true;
if not gamsxdpdef.gamsxCreateL(pgamsx, LibName, Msg) then begin
   pgamsx := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGamsX.CreateL';
   end
else Msg := '';
end; (* TGamsX.CreateL *)

constructor TGamsX.CreateWithHandle(p: pointer; var Msg: ShortString);
begin
inherited Create;
own := false;
pgamsx := p;
if not gamsxdpdef.gamsxGetReady(Msg) then begin
   pgamsx := nil;
   if Msg = '' then
      Msg := 'Unknown error calling TGamsX.CreateWithHandle';
   end
else Msg := '';
end; (* TGamsX.CreateWithHandle *)

destructor TGamsX.Destroy;
begin
if own
then
   gamsxdpdef.gamsxFree(pgamsx);
inherited destroy;
end;

function TGamsX.gamsxGetHandle: pointer;
begin
Result := pgamsx;
end;

function  TGamsX.gamsxGetScreenIndicator: Boolean;
begin
result := False;
end;

procedure TGamsX.gamsxSetScreenIndicator(const ScrInd: Boolean);
begin
end;

function  TGamsX.gamsxGetExceptionIndicator: Boolean;
begin
result := False;
end;

procedure TGamsX.gamsxSetExceptionIndicator(const ExcInd: Boolean);
begin
end;

function  TGamsX.gamsxGetExitIndicator: Boolean;
begin
result := False;
end;

procedure TGamsX.gamsxSetExitIndicator(const ExtInd: Boolean);
begin
end;

function  TGamsX.gamsxGetErrorCount: Integer;
begin
result := 0;
end;

procedure TGamsX.gamsxSetErrorCount(const ecnt: Integer);
begin
end;

function  TGamsX.gamsxGetErrorCallback: PTErrorCallBack;
begin
result := nil;
end;

procedure TGamsX.gamsxSetErrorCallback(ecb: PTErrorCallBack);
begin
end;


procedure TGamsX.DgamsxSWSet(const x: Integer);
begin
gamsxdpdef.gamsxSWSet(pgamsx,x);
end;

function  TGamsX.DgamsxStepThrough: Boolean;
begin
result := gamsxdpdef.gamsxStepThrough(pgamsx);
end;

procedure TGamsX.DgamsxStepThroughSet(const x: Boolean);
begin
gamsxdpdef.gamsxStepThroughSet(pgamsx,x);
end;

function  TGamsX.DgamsxRunToEnd: Boolean;
begin
result := gamsxdpdef.gamsxRunToEnd(pgamsx);
end;

procedure TGamsX.DgamsxRunToEndSet(const x: Boolean);
begin
gamsxdpdef.gamsxRunToEndSet(pgamsx,x);
end;

function  TGamsX.DgamsxCB1Defined: Boolean;
begin
result := gamsxdpdef.gamsxCB1Defined(pgamsx);
end;

function  TGamsX.DgamsxCB2Defined: Boolean;
begin
result := gamsxdpdef.gamsxCB2Defined(pgamsx);
end;

function  TGamsX.gamsxRunExecDLL(optPtr: Pointer; const sysDir: ShortString; AVerbose: Integer; var{out} Msg: ShortString): Integer;
begin
result := gamsxdpdef.gamsxRunExecDLL(pgamsx, optPtr, sysDir, AVerbose, Msg);
end;

function  TGamsX.gamsxShowError(const fNameLog: ShortString; var{out} errorLine: ShortString; var{out} errorTyp: ShortString; var{out} gmsLine: ShortString): Boolean;
begin
result := gamsxdpdef.gamsxShowError(pgamsx, fNameLog, errorLine, errorTyp, gmsLine);
end;

procedure TGamsX.gamsxAddBreakPoint(const fn: ShortString; lineNr: Integer);
begin
gamsxdpdef.gamsxAddBreakPoint(pgamsx, fn, lineNr);
end;

procedure TGamsX.gamsxClearBreakPoints;
begin
gamsxdpdef.gamsxClearBreakPoints(pgamsx);
end;

function  TGamsX.gamsxSystemInfo(var NrSy: Integer; var NrUel: Integer): Integer;
begin
result := gamsxdpdef.gamsxSystemInfo(pgamsx, NrSy, NrUel);
end;

function  TGamsX.gamsxSymbolInfo(SyNr: Integer; var{out} SyName: ShortString; var{out} SyExplTxt: ShortString; var SyDim: Integer; var SyTyp: Integer; var SyCount: Integer; var SyUserInfo: Integer): Integer;
begin
result := gamsxdpdef.gamsxSymbolInfo(pgamsx, SyNr, SyName, SyExplTxt, SyDim, SyTyp, SyCount, SyUserInfo);
end;

function  TGamsX.gamsxUelName(uel: Integer): ShortString;
begin
result := gamsxdpdef.gamsxUelName(pgamsx, uel);
end;

function  TGamsX.gamsxFindSymbol(const SyName: ShortString): Integer;
begin
result := gamsxdpdef.gamsxFindSymbol(pgamsx, SyName);
end;

function  TGamsX.gamsxDataReadRawStart(SyNr: Integer; var SyCount: Integer): Integer;
begin
result := gamsxdpdef.gamsxDataReadRawStart(pgamsx, SyNr, SyCount);
end;

function  TGamsX.gamsxDataReadRaw(var Elements: TgdxUELIndex; var Vals: TgdxValues; var FDim: Integer): Integer;
begin
result := gamsxdpdef.gamsxDataReadRaw(pgamsx, Elements, Vals, FDim);
end;

function  TGamsX.gamsxDataReadDone: Integer;
begin
result := gamsxdpdef.gamsxDataReadDone(pgamsx);
end;

function  TGamsX.gamsxDataWriteRawStart(SyNr: Integer; const DoMerge: Boolean): Integer;
begin
result := gamsxdpdef.gamsxDataWriteRawStart(pgamsx, SyNr, DoMerge);
end;

function  TGamsX.gamsxDataWriteRaw(const Elements: TgdxUELIndex; const Vals: TgdxValues): Integer;
begin
result := gamsxdpdef.gamsxDataWriteRaw(pgamsx, Elements, Vals);
end;

function  TGamsX.gamsxDataWriteDone: Integer;
begin
result := gamsxdpdef.gamsxDataWriteDone(pgamsx);
end;

procedure TGamsX.gamsxRegisterCB1(CB1: TBrkPCallBack1; userMem: Pointer);
begin
gamsxdpdef.gamsxRegisterCB1(pgamsx, CB1, userMem);
end;

procedure TGamsX.gamsxRegisterCB2(CB2: TBrkPCallBack2; userMem1: Pointer; userMem2: Pointer);
begin
gamsxdpdef.gamsxRegisterCB2(pgamsx, CB2, userMem1, userMem2);
end;

function  TGamsX.gamsxGetCB1: TBrkPCallBack1;
begin
result := gamsxdpdef.gamsxGetCB1(pgamsx);
end;

function  TGamsX.gamsxGetCB2: TBrkPCallBack2;
begin
result := gamsxdpdef.gamsxGetCB2(pgamsx);
end;

function  TGamsX.gamsxGetCB1UM: Pointer;
begin
result := gamsxdpdef.gamsxGetCB1UM(pgamsx);
end;

function  TGamsX.gamsxGetCB2UM1: Pointer;
begin
result := gamsxdpdef.gamsxGetCB2UM1(pgamsx);
end;

function  TGamsX.gamsxGetCB2UM2: Pointer;
begin
result := gamsxdpdef.gamsxGetCB2UM2(pgamsx);
end;

end.
