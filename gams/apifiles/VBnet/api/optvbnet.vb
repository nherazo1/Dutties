module optvbnet ' visual basic .net  procedure wrapper generated by generated by apiwrapper for gams version 24.0.2


public const optdatanone    = 0  'optdatatype
public const optdatainteger = 1  'optdatatype
public const optdatadouble  = 2  'optdatatype
public const optdatastring  = 3  'optdatatype
public const optdatastrlist = 4  'optdatatype

public const opttypeinteger   = 0  'optoptiontype
public const opttypedouble    = 1  'optoptiontype
public const opttypestring    = 2  'optoptiontype
public const opttypeboolean   = 3  'optoptiontype
public const opttypeenumstr   = 4  'optoptiontype
public const opttypeenumint   = 5  'optoptiontype
public const opttypemultilist = 6  'optoptiontype
public const opttypestrlist   = 7  'optoptiontype
public const opttypemacro     = 8  'optoptiontype
public const opttypeimmediate = 9  'optoptiontype

public const optsubrequired = 0  'optoptionsubtype
public const optsubnovalue  = 1  'optoptionsubtype
public const optsuboptional = 2  'optoptionsubtype
public const optsub2values  = 3  'optoptionsubtype

public const optmsginputecho    = 0  'optmsgtype
public const optmsghelp         = 1  'optmsgtype
public const optmsgdefineerror  = 2  'optmsgtype
public const optmsgvalueerror   = 3  'optmsgtype
public const optmsgvaluewarning = 4  'optmsgtype
public const optmsgdeprecated   = 5  'optmsgtype
public const optmsgfileenter    = 6  'optmsgtype
public const optmsgfileleave    = 7  'optmsgtype
public const optmsgtoomanymsgs  = 8  'optmsgtype
public const optmsgusererror    = 9  'optmsgtype

public const optmapindicator  = 0  'optvarequmaptype
public const optmapdefinedvar = 1  'optvarequmaptype
public  declare sub optsetloadpath lib "optdclib" (byval s as string)
private declare sub dll_optgetloadpath lib "optdclib" alias "coptgetloadpath" (byref s as byte)

public  declare function optreaddefinition lib "optdclib" alias "coptreaddefinition" (byval popt as intptr,byval fn as string) as integer
public  declare function optreadparameterfile lib "optdclib" alias "coptreadparameterfile" (byval popt as intptr,byval fn as string) as integer
public  declare sub optreadfromstr lib "optdclib" alias "coptreadfromstr" (byval popt as intptr,byval s as string)
public  declare function optwriteparameterfile lib "optdclib" alias "coptwriteparameterfile" (byval popt as intptr,byval fn as string) as integer
public  declare sub optclearmessages lib "optdclib" (byval popt as intptr)
public  declare sub optaddmessage lib "optdclib" alias "coptaddmessage" (byval popt as intptr,byval info as string)
private declare sub dll_optgetmessage lib "optdclib" alias "coptgetmessage" (byval popt as intptr,byval nrmsg as integer,byref info as byte,byref itype as integer)
public  declare sub optresetall lib "optdclib" (byval popt as intptr)
public  declare sub optresetallrecent lib "optdclib" (byval popt as intptr)
public  declare sub optresetrecentchanges lib "optdclib" (byval popt as intptr)
public  declare sub optshowhelp lib "optdclib" alias "coptshowhelp" (byval popt as intptr,byval hlpid as string)
public  declare function optresetnr lib "optdclib" (byval popt as intptr,byval anr as integer) as integer
public  declare function optfindstr lib "optdclib" alias "coptfindstr" (byval popt as intptr,byval aname as string,byref anr as integer,byref arefnr as integer) as integer
public  declare function optgetinfonr lib "optdclib" (byval popt as intptr,byval anr as integer,byref adefined as integer,byref adefinedr as integer,byref arefnr as integer,byref adatatype as integer,byref aopttype as integer,byref asubtype as integer) as integer
private declare function dll_optgetvaluesnr lib "optdclib" alias "coptgetvaluesnr" (byval popt as intptr,byval anr as integer,byref asname as byte,byref aival as integer,byref adval as double,byref asval as byte) as integer
public  declare function optsetvaluesnr lib "optdclib" alias "coptsetvaluesnr" (byval popt as intptr,byval anr as integer,byval aival as integer,byval adval as double,byval asval as string) as integer
public  declare function optsetvalues2nr lib "optdclib" alias "coptsetvalues2nr" (byval popt as intptr,byval anr as integer,byval aival as integer,byval adval as double,byval asval as string) as integer
private declare sub dll_optversion lib "optdclib" alias "coptversion" (byval popt as intptr,byref sversion as byte)
private declare sub dll_optdefinitionfile lib "optdclib" alias "coptdefinitionfile" (byval popt as intptr,byref sfilename as byte)
private declare function dll_optgetfromanystrlist lib "optdclib" alias "coptgetfromanystrlist" (byval popt as intptr,byval idash as integer,byref skey as byte,byref sval as byte) as integer
private declare function dll_optgetfromliststr lib "optdclib" alias "coptgetfromliststr" (byval popt as intptr,byval skey as string,byref sval as byte) as integer
public  declare function optlistcountstr lib "optdclib" alias "coptlistcountstr" (byval popt as intptr,byval skey as string) as integer
private declare function dll_optreadfromliststr lib "optdclib" alias "coptreadfromliststr" (byval popt as intptr,byval skey as string,byval ipos as integer,byref sval as byte) as integer
public  declare function optsynonymcount lib "optdclib" (byval popt as intptr) as integer
private declare function dll_optgetsynonym lib "optdclib" alias "coptgetsynonym" (byval popt as intptr,byval nrsyn as integer,byref ssyn as byte,byref sname as byte) as integer
public  declare sub optechoset lib "optdclib" (byval popt as intptr,byval aival as integer)
public  declare function opteolonlyset lib "optdclib" (byval popt as intptr,byval aival as integer) as integer
public  declare sub optnoboundsset lib "optdclib" (byval popt as intptr,byval aival as integer)
public  declare sub opterrorcount lib "optdclib" (byval popt as intptr,byref ierrors as integer,byref iwarnings as integer)
public  declare function optgetboundsint lib "optdclib" (byval popt as intptr,byval anr as integer,byref ilval as integer,byref ihval as integer,byref idval as integer) as integer
public  declare function optgetboundsdbl lib "optdclib" (byval popt as intptr,byval anr as integer,byref dlval as double,byref dhval as double,byref ddval as double) as integer
private declare function dll_optgetdefaultstr lib "optdclib" alias "coptgetdefaultstr" (byval popt as intptr,byval anr as integer,byref sval as byte) as integer
public  declare function optgetintnr lib "optdclib" (byval popt as intptr,byval anr as integer,byref aival as integer) as integer
public  declare function optgetint2nr lib "optdclib" (byval popt as intptr,byval anr as integer,byref aival as integer) as integer
public  declare function optsetintnr lib "optdclib" (byval popt as intptr,byval anr as integer,byval aival as integer) as integer
public  declare function optsetint2nr lib "optdclib" (byval popt as intptr,byval anr as integer,byval aival as integer) as integer
private declare function dll_optgetstrnr lib "optdclib" alias "coptgetstrnr" (byval popt as intptr,byval anr as integer,byref asval as byte) as integer
private declare function dll_optgetopthelpnr lib "optdclib" alias "coptgetopthelpnr" (byval popt as intptr,byval anr as integer,byref aname as byte,byref ahc as integer,byref agroup as integer) as integer
private declare function dll_optgetenumhelp lib "optdclib" alias "coptgetenumhelp" (byval popt as intptr,byval anr as integer,byval aord as integer,byref ahc as integer,byref ahelpstr as byte) as integer
private declare function dll_optgetenumstrnr lib "optdclib" alias "coptgetenumstrnr" (byval popt as intptr,byval anr as integer,byref asval as byte,byref aord as integer) as integer
public  declare function optgetenumcount lib "optdclib" (byval popt as intptr,byval anr as integer,byref acount as integer) as integer
private declare function dll_optgetenumvalue lib "optdclib" alias "coptgetenumvalue" (byval popt as intptr,byval anr as integer,byval aord as integer,byref avalint as integer,byref avalstr as byte) as integer
private declare function dll_optgetstr2nr lib "optdclib" alias "coptgetstr2nr" (byval popt as intptr,byval anr as integer,byref asval as byte) as integer
public  declare function optsetstrnr lib "optdclib" alias "coptsetstrnr" (byval popt as intptr,byval anr as integer,byval asval as string) as integer
public  declare function optsetstr2nr lib "optdclib" alias "coptsetstr2nr" (byval popt as intptr,byval anr as integer,byval asval as string) as integer
public  declare function optgetdblnr lib "optdclib" (byval popt as intptr,byval anr as integer,byref adval as double) as integer
public  declare function optgetdbl2nr lib "optdclib" (byval popt as intptr,byval anr as integer,byref adval as double) as integer
public  declare function optsetdblnr lib "optdclib" (byval popt as intptr,byval anr as integer,byval adval as double) as integer
public  declare function optsetdbl2nr lib "optdclib" (byval popt as intptr,byval anr as integer,byval adval as double) as integer
private declare function dll_optgetvalstr lib "optdclib" alias "coptgetvalstr" (byval popt as intptr,byval aname as string,byref asval as byte) as integer
private declare function dll_optgetval2str lib "optdclib" alias "coptgetval2str" (byval popt as intptr,byval aname as string,byref asval as byte) as integer
private declare function dll_optgetnamenr lib "optdclib" alias "coptgetnamenr" (byval popt as intptr,byval anr as integer,byref asname as byte) as integer
public  declare function optgetdefinednr lib "optdclib" (byval popt as intptr,byval anr as integer,byref aival as integer) as integer
private declare function dll_optgethelpnr lib "optdclib" alias "coptgethelpnr" (byval popt as intptr,byval anr as integer,byref asopt as byte,byref ashelp as byte) as integer
private declare function dll_optgetgroupnr lib "optdclib" alias "coptgetgroupnr" (byval popt as intptr,byval anr as integer,byref aname as byte,byref agroup as integer,byref ahc as integer,byref ahelp as byte) as integer
public  declare function optgetgroupgrpnr lib "optdclib" (byval popt as intptr,byval agroup as integer) as integer
public  declare function optgetoptgroupnr lib "optdclib" (byval popt as intptr,byval anr as integer) as integer
private declare function dll_optgetdotoptnr lib "optdclib" alias "coptgetdotoptnr" (byval popt as intptr,byval anr as integer,byref vename as byte,byref aobjnr as integer,byref adim as integer,byref avalue as double) as integer
private declare function dll_optgetdotoptuel lib "optdclib" alias "coptgetdotoptuel" (byval popt as intptr,byval anr as integer,byval adim as integer,byref auel as byte) as integer
private declare function dll_optgetvarequmapnr lib "optdclib" alias "coptgetvarequmapnr" (byval popt as intptr,byval maptype as integer,byval anr as integer,byref equname as byte,byref varname as byte,byref equdim as integer,byref vardim as integer,byref avalue as integer) as integer
private declare function dll_optgetequvarequmapnr lib "optdclib" alias "coptgetequvarequmapnr" (byval popt as intptr,byval maptype as integer,byval anr as integer,byval adim as integer,byref aindex as byte) as integer
private declare function dll_optgetvarvarequmapnr lib "optdclib" alias "coptgetvarvarequmapnr" (byval popt as intptr,byval maptype as integer,byval anr as integer,byval adim as integer,byref aindex as byte) as integer
public  declare function optvarequmapcount lib "optdclib" (byval popt as intptr,byval maptype as integer,byref anrerrors as integer) as integer
private declare function dll_optgetindicatornr lib "optdclib" alias "coptgetindicatornr" (byval popt as intptr,byval anr as integer,byref equname as byte,byref varname as byte,byref equdim as integer,byref vardim as integer,byref avalue as integer) as integer
private declare function dll_optgetequindicatornr lib "optdclib" alias "coptgetequindicatornr" (byval popt as intptr,byval anr as integer,byval adim as integer,byref aindex as byte) as integer
private declare function dll_optgetvarindicatornr lib "optdclib" alias "coptgetvarindicatornr" (byval popt as intptr,byval anr as integer,byval adim as integer,byref aindex as byte) as integer
public  declare function optindicatorcount lib "optdclib" (byval popt as intptr,byref anrerrors as integer) as integer
public  declare function optdotoptcount lib "optdclib" (byval popt as intptr,byref anrerrors as integer) as integer
public  declare function optsetrefnr lib "optdclib" (byval popt as intptr,byval anr as integer,byval arefnr as integer) as integer
public  declare function optsetrefnrstr lib "optdclib" alias "coptsetrefnrstr" (byval popt as intptr,byval aopt as string,byval arefnr as integer) as integer
private declare function dll_optgetconstname lib "optdclib" alias "coptgetconstname" (byval popt as intptr,byval cgroup as integer,byval cindex as integer,byref cname as byte) as integer
private declare function dll_optgettypename lib "optdclib" alias "coptgettypename" (byval popt as intptr,byval tnr as integer,byref stname as byte) as integer
public  declare function optlookup lib "optdclib" alias "coptlookup" (byval popt as intptr,byval aopt as string) as integer
public  declare sub optreadfrompchar lib "optdclib" (byval popt as intptr,byref p as byte)
private declare function dll_optgetnameopt lib "optdclib" alias "coptgetnameopt" (byval popt as intptr,byval asval as string,byref solver as byte,byref opt as integer) as integer
private declare function dll_optgetdefinedstr lib "optdclib" alias "coptgetdefinedstr" (byval popt as intptr,byval aname as string) as integer
public  declare function optgetintstr lib "optdclib" alias "coptgetintstr" (byval popt as intptr,byval aname as string) as integer
public  declare function optgetdblstr lib "optdclib" alias "coptgetdblstr" (byval popt as intptr,byval aname as string) as double
private declare sub dll_optgetstrstr lib "optdclib" alias "coptgetstrstr" (byval popt as intptr,byval aname as string,byref sst_result as byte)
public  declare sub optsetintstr lib "optdclib" alias "coptsetintstr" (byval popt as intptr,byval aname as string,byval aival as integer)
public  declare sub optsetdblstr lib "optdclib" alias "coptsetdblstr" (byval popt as intptr,byval aname as string,byval adval as double)
public  declare sub optsetstrstr lib "optdclib" alias "coptsetstrstr" (byval popt as intptr,byval aname as string,byval asval as string)

public declare function optcount lib "optdclib" (byval popt as intptr) as integer
public declare function optmessagecount lib "optdclib" (byval popt as intptr) as integer
public declare function optgroupcount lib "optdclib" (byval popt as intptr) as integer
public declare function optrecentenabled lib "optdclib" (byval popt as intptr) as integer
public declare sub optrecentenabledset lib "optdclib" (byval popt as intptr, byval  x as integer)

private declare sub xcreate lib "optdclib" (byref popt as intptr)
private declare sub xfree   lib "optdclib" (byref popt as intptr)

public function optcreate(byref popt as intptr, byref msgbuf as string) as boolean
    xcreate(popt)
    if popt <> 0 then
        optcreate = true
    else
        optcreate = false
    end if
end function

public function optcreatex(byref popt as intptr, byref msgbuf as string) as boolean
    xcreate(popt)
    if popt <> 0 then
        optcreatex = true
    else
        optcreatex = false
    end if
end function

public function optcreated(byref popt as intptr, byval dirname as string, byref msgbuf as string) as boolean
    xcreate(popt)
    if popt <> 0 then
        optcreated = true
    else
        optcreated = false
    end if
end function

public function optcreatel(byref popt as intptr, byval libname as string, byref msgbuf as string) as boolean
    xcreate(popt)
    if popt <> 0 then
        optcreatel = true
    else
        optcreatel = false
    end if
end function

public function optfree(byref popt as intptr) as boolean
   xfree(popt)
   optfree = true
end function
private sub convertc2bas(byval b() as byte, byref s as string)
    dim i as integer
    s = ""
    i = 0
    while b(i) <> 0
        s = s & chr(b(i))
        i = i + 1
    end while
end sub

private sub convertarrayc2bas(byval b(,) as byte, byref s as string, byval k as integer)
    dim i as integer
    s = ""
    i = 0
    while b(k, i) <> 0
        s = s & chr(b(k, i))
        i = i + 1
    end while
end sub

public sub optgetloadpath (byref s as string)
   dim cpy_s(str_len) as byte
   dll_optgetloadpath(cpy_s(0))
   call convertc2bas(cpy_s,s)
end sub

public sub optgetmessage(byval popt as intptr,byval nrmsg as integer,byref info as string,byref itype as integer)
   dim cpy_info(str_len) as byte
   call dll_optgetmessage(popt,nrmsg,cpy_info(0),itype)
   call convertc2bas(cpy_info,info)
end sub

public function optgetvaluesnr(byval popt as intptr,byval anr as integer,byref asname as string,byref aival as integer,byref adval as double,byref asval as string) as integer
   dim cpy_asname(str_len) as byte
   dim cpy_asval(str_len) as byte
   optgetvaluesnr = dll_optgetvaluesnr(popt,anr,cpy_asname(0),aival,adval,cpy_asval(0))
   call convertc2bas(cpy_asname,asname)
   call convertc2bas(cpy_asval,asval)
end function

public sub optversion(byval popt as intptr,byref sversion as string)
   dim cpy_sversion(str_len) as byte
   call dll_optversion(popt,cpy_sversion(0))
   call convertc2bas(cpy_sversion,sversion)
end sub

public sub optdefinitionfile(byval popt as intptr,byref sfilename as string)
   dim cpy_sfilename(str_len) as byte
   call dll_optdefinitionfile(popt,cpy_sfilename(0))
   call convertc2bas(cpy_sfilename,sfilename)
end sub

public function optgetfromanystrlist(byval popt as intptr,byval idash as integer,byref skey as string,byref sval as string) as integer
   dim cpy_skey(str_len) as byte
   dim cpy_sval(str_len) as byte
   optgetfromanystrlist = dll_optgetfromanystrlist(popt,idash,cpy_skey(0),cpy_sval(0))
   call convertc2bas(cpy_skey,skey)
   call convertc2bas(cpy_sval,sval)
end function

public function optgetfromliststr(byval popt as intptr,byval skey as string,byref sval as string) as integer
   dim cpy_sval(str_len) as byte
   optgetfromliststr = dll_optgetfromliststr(popt,skey,cpy_sval(0))
   call convertc2bas(cpy_sval,sval)
end function

public function optreadfromliststr(byval popt as intptr,byval skey as string,byval ipos as integer,byref sval as string) as integer
   dim cpy_sval(str_len) as byte
   optreadfromliststr = dll_optreadfromliststr(popt,skey,ipos,cpy_sval(0))
   call convertc2bas(cpy_sval,sval)
end function

public function optgetsynonym(byval popt as intptr,byval nrsyn as integer,byref ssyn as string,byref sname as string) as integer
   dim cpy_ssyn(str_len) as byte
   dim cpy_sname(str_len) as byte
   optgetsynonym = dll_optgetsynonym(popt,nrsyn,cpy_ssyn(0),cpy_sname(0))
   call convertc2bas(cpy_ssyn,ssyn)
   call convertc2bas(cpy_sname,sname)
end function

public function optgetdefaultstr(byval popt as intptr,byval anr as integer,byref sval as string) as integer
   dim cpy_sval(str_len) as byte
   optgetdefaultstr = dll_optgetdefaultstr(popt,anr,cpy_sval(0))
   call convertc2bas(cpy_sval,sval)
end function

public function optgetstrnr(byval popt as intptr,byval anr as integer,byref asval as string) as integer
   dim cpy_asval(str_len) as byte
   optgetstrnr = dll_optgetstrnr(popt,anr,cpy_asval(0))
   call convertc2bas(cpy_asval,asval)
end function

public function optgetopthelpnr(byval popt as intptr,byval anr as integer,byref aname as string,byref ahc as integer,byref agroup as integer) as integer
   dim cpy_aname(str_len) as byte
   optgetopthelpnr = dll_optgetopthelpnr(popt,anr,cpy_aname(0),ahc,agroup)
   call convertc2bas(cpy_aname,aname)
end function

public function optgetenumhelp(byval popt as intptr,byval anr as integer,byval aord as integer,byref ahc as integer,byref ahelpstr as string) as integer
   dim cpy_ahelpstr(str_len) as byte
   optgetenumhelp = dll_optgetenumhelp(popt,anr,aord,ahc,cpy_ahelpstr(0))
   call convertc2bas(cpy_ahelpstr,ahelpstr)
end function

public function optgetenumstrnr(byval popt as intptr,byval anr as integer,byref asval as string,byref aord as integer) as integer
   dim cpy_asval(str_len) as byte
   optgetenumstrnr = dll_optgetenumstrnr(popt,anr,cpy_asval(0),aord)
   call convertc2bas(cpy_asval,asval)
end function

public function optgetenumvalue(byval popt as intptr,byval anr as integer,byval aord as integer,byref avalint as integer,byref avalstr as string) as integer
   dim cpy_avalstr(str_len) as byte
   optgetenumvalue = dll_optgetenumvalue(popt,anr,aord,avalint,cpy_avalstr(0))
   call convertc2bas(cpy_avalstr,avalstr)
end function

public function optgetstr2nr(byval popt as intptr,byval anr as integer,byref asval as string) as integer
   dim cpy_asval(str_len) as byte
   optgetstr2nr = dll_optgetstr2nr(popt,anr,cpy_asval(0))
   call convertc2bas(cpy_asval,asval)
end function

public function optgetvalstr(byval popt as intptr,byval aname as string,byref asval as string) as integer
   dim cpy_asval(str_len) as byte
   optgetvalstr = dll_optgetvalstr(popt,aname,cpy_asval(0))
   call convertc2bas(cpy_asval,asval)
end function

public function optgetval2str(byval popt as intptr,byval aname as string,byref asval as string) as integer
   dim cpy_asval(str_len) as byte
   optgetval2str = dll_optgetval2str(popt,aname,cpy_asval(0))
   call convertc2bas(cpy_asval,asval)
end function

public function optgetnamenr(byval popt as intptr,byval anr as integer,byref asname as string) as integer
   dim cpy_asname(str_len) as byte
   optgetnamenr = dll_optgetnamenr(popt,anr,cpy_asname(0))
   call convertc2bas(cpy_asname,asname)
end function

public function optgethelpnr(byval popt as intptr,byval anr as integer,byref asopt as string,byref ashelp as string) as integer
   dim cpy_asopt(str_len) as byte
   dim cpy_ashelp(str_len) as byte
   optgethelpnr = dll_optgethelpnr(popt,anr,cpy_asopt(0),cpy_ashelp(0))
   call convertc2bas(cpy_asopt,asopt)
   call convertc2bas(cpy_ashelp,ashelp)
end function

public function optgetgroupnr(byval popt as intptr,byval anr as integer,byref aname as string,byref agroup as integer,byref ahc as integer,byref ahelp as string) as integer
   dim cpy_aname(str_len) as byte
   dim cpy_ahelp(str_len) as byte
   optgetgroupnr = dll_optgetgroupnr(popt,anr,cpy_aname(0),agroup,ahc,cpy_ahelp(0))
   call convertc2bas(cpy_aname,aname)
   call convertc2bas(cpy_ahelp,ahelp)
end function

public function optgetdotoptnr(byval popt as intptr,byval anr as integer,byref vename as string,byref aobjnr as integer,byref adim as integer,byref avalue as double) as integer
   dim cpy_vename(str_len) as byte
   optgetdotoptnr = dll_optgetdotoptnr(popt,anr,cpy_vename(0),aobjnr,adim,avalue)
   call convertc2bas(cpy_vename,vename)
end function

public function optgetdotoptuel(byval popt as intptr,byval anr as integer,byval adim as integer,byref auel as string) as integer
   dim cpy_auel(str_len) as byte
   optgetdotoptuel = dll_optgetdotoptuel(popt,anr,adim,cpy_auel(0))
   call convertc2bas(cpy_auel,auel)
end function

public function optgetvarequmapnr(byval popt as intptr,byval maptype as integer,byval anr as integer,byref equname as string,byref varname as string,byref equdim as integer,byref vardim as integer,byref avalue as integer) as integer
   dim cpy_equname(str_len) as byte
   dim cpy_varname(str_len) as byte
   optgetvarequmapnr = dll_optgetvarequmapnr(popt,maptype,anr,cpy_equname(0),cpy_varname(0),equdim,vardim,avalue)
   call convertc2bas(cpy_equname,equname)
   call convertc2bas(cpy_varname,varname)
end function

public function optgetequvarequmapnr(byval popt as intptr,byval maptype as integer,byval anr as integer,byval adim as integer,byref aindex as string) as integer
   dim cpy_aindex(str_len) as byte
   optgetequvarequmapnr = dll_optgetequvarequmapnr(popt,maptype,anr,adim,cpy_aindex(0))
   call convertc2bas(cpy_aindex,aindex)
end function

public function optgetvarvarequmapnr(byval popt as intptr,byval maptype as integer,byval anr as integer,byval adim as integer,byref aindex as string) as integer
   dim cpy_aindex(str_len) as byte
   optgetvarvarequmapnr = dll_optgetvarvarequmapnr(popt,maptype,anr,adim,cpy_aindex(0))
   call convertc2bas(cpy_aindex,aindex)
end function

public function optgetindicatornr(byval popt as intptr,byval anr as integer,byref equname as string,byref varname as string,byref equdim as integer,byref vardim as integer,byref avalue as integer) as integer
   dim cpy_equname(str_len) as byte
   dim cpy_varname(str_len) as byte
   optgetindicatornr = dll_optgetindicatornr(popt,anr,cpy_equname(0),cpy_varname(0),equdim,vardim,avalue)
   call convertc2bas(cpy_equname,equname)
   call convertc2bas(cpy_varname,varname)
end function

public function optgetequindicatornr(byval popt as intptr,byval anr as integer,byval adim as integer,byref aindex as string) as integer
   dim cpy_aindex(str_len) as byte
   optgetequindicatornr = dll_optgetequindicatornr(popt,anr,adim,cpy_aindex(0))
   call convertc2bas(cpy_aindex,aindex)
end function

public function optgetvarindicatornr(byval popt as intptr,byval anr as integer,byval adim as integer,byref aindex as string) as integer
   dim cpy_aindex(str_len) as byte
   optgetvarindicatornr = dll_optgetvarindicatornr(popt,anr,adim,cpy_aindex(0))
   call convertc2bas(cpy_aindex,aindex)
end function

public function optgetconstname(byval popt as intptr,byval cgroup as integer,byval cindex as integer,byref cname as string) as integer
   dim cpy_cname(str_len) as byte
   optgetconstname = dll_optgetconstname(popt,cgroup,cindex,cpy_cname(0))
   call convertc2bas(cpy_cname,cname)
end function

public function optgettypename(byval popt as intptr,byval tnr as integer,byref stname as string) as integer
   dim cpy_stname(str_len) as byte
   optgettypename = dll_optgettypename(popt,tnr,cpy_stname(0))
   call convertc2bas(cpy_stname,stname)
end function

public function optgetnameopt(byval popt as intptr,byval asval as string,byref solver as string,byref opt as integer) as integer
   dim cpy_solver(str_len) as byte
   optgetnameopt = dll_optgetnameopt(popt,asval,cpy_solver(0),opt)
   call convertc2bas(cpy_solver,solver)
end function

public function optgetdefinedstr(byval popt as intptr,byval aname as string) as boolean
   optgetdefinedstr = dll_optgetdefinedstr(popt,aname)
end function

public function optgetstrstr(byval popt as intptr,byval aname as string) as string
   dim cpy_result(str_len) as byte
   call dll_optgetstrstr(popt,aname,cpy_result(0))
   call convertc2bas(cpy_result, optgetstrstr)
end function

end module
