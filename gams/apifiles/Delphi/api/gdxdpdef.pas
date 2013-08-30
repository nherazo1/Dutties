unit gdxdpdef; { delphi procedure wrapper generated by apiwrapper for gams version 24.0.2 }
{ function interface using a dll, pure delphi, static loading }

{$p- no open parameters ==> no maxlen byte}
{$v+ force var strings}
{$h- short only }

interface

uses
   sysutils,
   gmsgen,
   gxdefs;

const extlib = 'gdxdclib.dll';

type
   terrorcallback = function(errcount:integer; const msg:shortstring):integer; stdcall;
   tdatastoreproc = procedure(const indx: tgdxuelindex; const vals: tgdxvalues); stdcall;

//tries to load dll from os default location
//name for the dll is automatic
function  gdxgetready(var msg: shortstring): boolean;
//tries to load dll from main program directory; if that fails
//loads dll from os default location
//name for the dll is automatic
function  gdxgetreadyx(var msg: shortstring): boolean;
//loads dll from specified directory
//name for the dll is automatic
function gdxgetreadyd(const dir: shortstring; var msg: shortstring): boolean;
//loads dll from the full path specified
//no changes are made to the name (platform and file extension)
function gdxgetreadyl(const libname: shortstring; var msg: shortstring): boolean;

//tries to load dll from os default location
//name for the dll is automatic
function gdxcreate(var pgdx: pointer; var msg: shortstring): boolean;
//tries to load dll from main program directory; if that fails
//loads dll from os default location
//name for the dll is automatic
function gdxcreatex(var pgdx: pointer; var msg: shortstring): boolean;
//loads dll from specified directory
//name for the dll is automatic
function gdxcreated(var pgdx: pointer; const dir: shortstring; var msg: shortstring): boolean;
//loads dll from the full path specified
function gdxcreatel(var pgdx: pointer; const libname: shortstring; var msg: shortstring): boolean;

procedure gdxfree  (var pgdx: pointer);

// functions and procedures
procedure gdxsetloadpath          (const s: shortstring); stdcall; external extlib;
procedure gdxgetloadpath          (var s: shortstring); stdcall; external extlib;
function  gdxacronymadd           (pgdx: pointer; const aname: shortstring; const txt: shortstring; aindx: integer): integer; stdcall; external extlib;
function  gdxacronymcount         (pgdx: pointer): integer; stdcall; external extlib;
function  gdxacronymgetinfo       (pgdx: pointer; n: integer; out aname: shortstring; out txt: shortstring; out aindx: integer): integer; stdcall; external extlib;
function  gdxacronymgetmapping    (pgdx: pointer; n: integer; out orgindx: integer; out newindx: integer; out autoindex: integer): integer; stdcall; external extlib;
function  gdxacronymindex         (pgdx: pointer; v: double): integer; stdcall; external extlib;
function  gdxacronymname          (pgdx: pointer; v: double; out aname: shortstring): integer; stdcall; external extlib;
function  gdxacronymnextnr        (pgdx: pointer; nv: integer): integer; stdcall; external extlib;
function  gdxacronymsetinfo       (pgdx: pointer; n: integer; const aname: shortstring; const txt: shortstring; aindx: integer): integer; stdcall; external extlib;
function  gdxacronymvalue         (pgdx: pointer; aindx: integer): double; stdcall; external extlib;
function  gdxaddalias             (pgdx: pointer; const id1: shortstring; const id2: shortstring): integer; stdcall; external extlib;
function  gdxaddsettext           (pgdx: pointer; const txt: shortstring; out txtnr: integer): integer; stdcall; external extlib;
function  gdxautoconvert          (pgdx: pointer; nv: integer): integer; stdcall; external extlib;
function  gdxclose                (pgdx: pointer): integer; stdcall; external extlib;
function  gdxdataerrorcount       (pgdx: pointer): integer; stdcall; external extlib;
function  gdxdataerrorrecord      (pgdx: pointer; recnr: integer; var keyint: tgdxuelindex; var values: tgdxvalues): integer; stdcall; external extlib;
function  gdxdatareaddone         (pgdx: pointer): integer; stdcall; external extlib;
function  gdxdatareadfilteredstart(pgdx: pointer; synr: integer; const filteraction: tgdxuelindex; out nrrecs: integer): integer; stdcall; external extlib;
function  gdxdatareadmap          (pgdx: pointer; recnr: integer; var keyint: tgdxuelindex; var values: tgdxvalues; out dimfrst: integer): integer; stdcall; external extlib;
function  gdxdatareadmapstart     (pgdx: pointer; synr: integer; out nrrecs: integer): integer; stdcall; external extlib;
function  gdxdatareadraw          (pgdx: pointer; var keyint: tgdxuelindex; var values: tgdxvalues; out dimfrst: integer): integer; stdcall; external extlib;
function  gdxdatareadrawfast      (pgdx: pointer; synr: integer; dp: tdatastoreproc; out nrrecs: integer): integer; stdcall; external extlib;
function  gdxdatareadrawstart     (pgdx: pointer; synr: integer; out nrrecs: integer): integer; stdcall; external extlib;
function  gdxdatareadslice        (pgdx: pointer; const uelfilterstr: tgdxstrindex; out dimen: integer; dp: tdatastoreproc): integer; stdcall; external extlib;
function  gdxdatareadslicestart   (pgdx: pointer; synr: integer; var elemcounts: tgdxuelindex): integer; stdcall; external extlib;
function  gdxdatareadstr          (pgdx: pointer; out keystr: tgdxstrindex; var values: tgdxvalues; out dimfrst: integer): integer; stdcall; external extlib;
function  gdxdatareadstrstart     (pgdx: pointer; synr: integer; out nrrecs: integer): integer; stdcall; external extlib;
function  gdxdatasliceuels        (pgdx: pointer; const slicekeyint: tgdxuelindex; out keystr: tgdxstrindex): integer; stdcall; external extlib;
function  gdxdatawritedone        (pgdx: pointer): integer; stdcall; external extlib;
function  gdxdatawritemap         (pgdx: pointer; const keyint: tgdxuelindex; const values: tgdxvalues): integer; stdcall; external extlib;
function  gdxdatawritemapstart    (pgdx: pointer; const syid: shortstring; const expltxt: shortstring; dimen: integer; typ: integer; userinfo: integer): integer; stdcall; external extlib;
function  gdxdatawriteraw         (pgdx: pointer; const keyint: tgdxuelindex; const values: tgdxvalues): integer; stdcall; external extlib;
function  gdxdatawriterawstart    (pgdx: pointer; const syid: shortstring; const expltxt: shortstring; dimen: integer; typ: integer; userinfo: integer): integer; stdcall; external extlib;
function  gdxdatawritestr         (pgdx: pointer; const keystr: tgdxstrindex; const values: tgdxvalues): integer; stdcall; external extlib;
function  gdxdatawritestrstart    (pgdx: pointer; const syid: shortstring; const expltxt: shortstring; dimen: integer; typ: integer; userinfo: integer): integer; stdcall; external extlib;
function  gdxgetdllversion        (pgdx: pointer; out v: shortstring): integer; stdcall; external extlib;
function  gdxerrorcount           (pgdx: pointer): integer; stdcall; external extlib;
function  gdxerrorstr             (pgdx: pointer; errnr: integer; out errmsg: shortstring): integer; stdcall; external extlib;
function  gdxfileinfo             (pgdx: pointer; out filever: integer; out comprlev: integer): integer; stdcall; external extlib;
function  gdxfileversion          (pgdx: pointer; out filestr: shortstring; out producestr: shortstring): integer; stdcall; external extlib;
function  gdxfilterexists         (pgdx: pointer; filternr: integer): integer; stdcall; external extlib;
function  gdxfilterregister       (pgdx: pointer; uelmap: integer): integer; stdcall; external extlib;
function  gdxfilterregisterdone   (pgdx: pointer): integer; stdcall; external extlib;
function  gdxfilterregisterstart  (pgdx: pointer; filternr: integer): integer; stdcall; external extlib;
function  gdxfindsymbol           (pgdx: pointer; const syid: shortstring; out synr: integer): integer; stdcall; external extlib;
function  gdxgetelemtext          (pgdx: pointer; txtnr: integer; out txt: shortstring; out node: integer): integer; stdcall; external extlib;
function  gdxgetlasterror         (pgdx: pointer): integer; stdcall; external extlib;
function  gdxgetmemoryused        (pgdx: pointer): int64; stdcall; external extlib;
function  gdxgetspecialvalues     (pgdx: pointer; var avals: tgdxsvals): integer; stdcall; external extlib;
function  gdxgetuel               (pgdx: pointer; uelnr: integer; out uel: shortstring): integer; stdcall; external extlib;
function  gdxmapvalue             (pgdx: pointer; d: double; out sv: integer): integer; stdcall; external extlib;
function  gdxopenappend           (pgdx: pointer; const filename: shortstring; const producer: shortstring; out errnr: integer): integer; stdcall; external extlib;
function  gdxopenread             (pgdx: pointer; const filename: shortstring; out errnr: integer): integer; stdcall; external extlib;
function  gdxopenwrite            (pgdx: pointer; const filename: shortstring; const producer: shortstring; out errnr: integer): integer; stdcall; external extlib;
function  gdxopenwriteex          (pgdx: pointer; const filename: shortstring; const producer: shortstring; compr: integer; out errnr: integer): integer; stdcall; external extlib;
function  gdxresetspecialvalues   (pgdx: pointer): integer; stdcall; external extlib;
function  gdxsethastext           (pgdx: pointer; synr: integer): integer; stdcall; external extlib;
function  gdxsetreadspecialvalues (pgdx: pointer; const avals: tgdxsvals): integer; stdcall; external extlib;
function  gdxsetspecialvalues     (pgdx: pointer; const avals: tgdxsvals): integer; stdcall; external extlib;
function  gdxsettextnodenr        (pgdx: pointer; txtnr: integer; node: integer): integer; stdcall; external extlib;
function  gdxsettracelevel        (pgdx: pointer; n: integer; const s: shortstring): integer; stdcall; external extlib;
function  gdxsymbindxmaxlength    (pgdx: pointer; synr: integer; var lengthinfo: tgdxuelindex): integer; stdcall; external extlib;
function  gdxsymbmaxlength        (pgdx: pointer): integer; stdcall; external extlib;
function  gdxsymboladdcomment     (pgdx: pointer; synr: integer; const txt: shortstring): integer; stdcall; external extlib;
function  gdxsymbolgetcomment     (pgdx: pointer; synr: integer; n: integer; out txt: shortstring): integer; stdcall; external extlib;
function  gdxsymbolgetdomain      (pgdx: pointer; synr: integer; var domainsynrs: tgdxuelindex): integer; stdcall; external extlib;
function  gdxsymbolgetdomainx     (pgdx: pointer; synr: integer; out domainids: tgdxstrindex): integer; stdcall; external extlib;
function  gdxsymboldim            (pgdx: pointer; synr: integer): integer; stdcall; external extlib;
function  gdxsymbolinfo           (pgdx: pointer; synr: integer; out syid: shortstring; out dimen: integer; out typ: integer): integer; stdcall; external extlib;
function  gdxsymbolinfox          (pgdx: pointer; synr: integer; out reccnt: integer; out userinfo: integer; out expltxt: shortstring): integer; stdcall; external extlib;
function  gdxsymbolsetdomain      (pgdx: pointer; const domainids: tgdxstrindex): integer; stdcall; external extlib;
function  gdxsymbolsetdomainx     (pgdx: pointer; synr: integer; const domainids: tgdxstrindex): integer; stdcall; external extlib;
function  gdxsysteminfo           (pgdx: pointer; out sycnt: integer; out uelcnt: integer): integer; stdcall; external extlib;
function  gdxuelmaxlength         (pgdx: pointer): integer; stdcall; external extlib;
function  gdxuelregisterdone      (pgdx: pointer): integer; stdcall; external extlib;
function  gdxuelregistermap       (pgdx: pointer; umap: integer; const uel: shortstring): integer; stdcall; external extlib;
function  gdxuelregistermapstart  (pgdx: pointer): integer; stdcall; external extlib;
function  gdxuelregisterraw       (pgdx: pointer; const uel: shortstring): integer; stdcall; external extlib;
function  gdxuelregisterrawstart  (pgdx: pointer): integer; stdcall; external extlib;
function  gdxuelregisterstr       (pgdx: pointer; const uel: shortstring; out uelnr: integer): integer; stdcall; external extlib;
function  gdxuelregisterstrstart  (pgdx: pointer): integer; stdcall; external extlib;
function  gdxumfinduel            (pgdx: pointer; const uel: shortstring; out uelnr: integer; out uelmap: integer): integer; stdcall; external extlib;
function  gdxumuelget             (pgdx: pointer; uelnr: integer; out uel: shortstring; out uelmap: integer): integer; stdcall; external extlib;
function  gdxumuelinfo            (pgdx: pointer; out uelcnt: integer; out highmap: integer): integer; stdcall; external extlib;
function  gdxcurrentdim           (pgdx: pointer): integer; stdcall; external extlib;
implementation


procedure xcreate(var pgdx: pointer); stdcall; external extlib;
procedure xfree  (var pgdx: pointer); stdcall; external extlib;
function gdxgetready(var msg: shortstring): boolean;
begin
msg := '';
result := true;
end;

function gdxgetreadyx(var msg: shortstring): boolean;
begin
msg := '';
result := true;
end;

function gdxgetreadyd(const dir: shortstring; var msg: shortstring): boolean;
begin
msg := '';
result := true;
end;

function gdxgetreadyl(const libname: shortstring; var msg: shortstring): boolean;
begin
msg := '';
result := true;
end;

function gdxcreate(var pgdx: pointer; var msg: shortstring): boolean;
begin
xcreate(pgdx);
if pgdx = nil
then
   begin
   result := false;
   msg := 'library is loaded but error while creating object';
   end
else
   result := true;
end;

function gdxcreatex(var pgdx: pointer; var msg: shortstring): boolean;
begin
xcreate(pgdx);
if pgdx = nil
then
   begin
   result := false;
   msg := 'library is loaded but error while creating object';
   end
else
   result := true;
end;

function gdxcreated(var pgdx: pointer; const dir: shortstring; var msg: shortstring): boolean;
begin
xcreate(pgdx);
if pgdx = nil
then
   begin
   result := false;
   msg := 'library is loaded but error while creating object';
   end
else
   result := true;
end;

function gdxcreatel(var pgdx: pointer; const libname: shortstring; var msg: shortstring): boolean;
begin
xcreate(pgdx);
if pgdx = nil
then
   begin
   result := false;
   msg := 'library is loaded but error while creating object';
   end
else
   result := true;
end;

procedure gdxfree  (var pgdx: pointer);
begin
xfree(pgdx);
end;

initialization

end.
