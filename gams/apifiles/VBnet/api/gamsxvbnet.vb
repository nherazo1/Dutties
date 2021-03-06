module gamsxvbnet ' visual basic .net  procedure wrapper generated by generated by apiwrapper for gams version 24.0.2


public delegate function tbrkpcallback1(byval fn as string,byval linnr as integer,byval lstnr as integer,byval usrmem as intptr) as integer
public delegate function tbrkpcallback2(byval fn as string,byval linnr as integer,byval lstnr as integer,byval usermem1 as intptr,byval usermem2 as intptr) as integer


private declare function dll_gamsxrunexecdll lib "gamsxdclib" alias "cgamsxrunexecdll" (byval pgamsx as intptr,byval optptr as intptr,byval sysdir as string,byval averbose as integer,byref msg as byte) as integer
private declare function dll_gamsxshowerror lib "gamsxdclib" alias "cgamsxshowerror" (byval pgamsx as intptr,byval fnamelog as string,byref errorline as byte,byref errortyp as byte,byref gmsline as byte) as integer
public  declare sub gamsxaddbreakpoint lib "gamsxdclib" alias "cgamsxaddbreakpoint" (byval pgamsx as intptr,byval fn as string,byval linenr as integer)
public  declare sub gamsxclearbreakpoints lib "gamsxdclib" (byval pgamsx as intptr)
public  declare function gamsxsysteminfo lib "gamsxdclib" (byval pgamsx as intptr,byref nrsy as integer,byref nruel as integer) as integer
private declare function dll_gamsxsymbolinfo lib "gamsxdclib" alias "cgamsxsymbolinfo" (byval pgamsx as intptr,byval synr as integer,byref syname as byte,byref syexpltxt as byte,byref sydim as integer,byref sytyp as integer,byref sycount as integer,byref syuserinfo as integer) as integer
private declare sub dll_gamsxuelname lib "gamsxdclib" alias "cgamsxuelname" (byval pgamsx as intptr,byval uel as integer,byref sst_result as byte)
public  declare function gamsxfindsymbol lib "gamsxdclib" alias "cgamsxfindsymbol" (byval pgamsx as intptr,byval syname as string) as integer
public  declare function gamsxdatareadrawstart lib "gamsxdclib" (byval pgamsx as intptr,byval synr as integer,byref sycount as integer) as integer
private declare function dll_gamsxdatareadraw lib "gamsxdclib" alias "gamsxdatareadraw" (byval pgamsx as intptr,byref elements as integer,byref vals as double,byref fdim as integer) as integer
public  declare function gamsxdatareaddone lib "gamsxdclib" (byval pgamsx as intptr) as integer
private declare function dll_gamsxdatawriterawstart lib "gamsxdclib" alias "gamsxdatawriterawstart" (byval pgamsx as intptr,byval synr as integer,byval domerge as integer) as integer
private declare function dll_gamsxdatawriteraw lib "gamsxdclib" alias "gamsxdatawriteraw" (byval pgamsx as intptr,byref elements as integer,byref vals as double) as integer
public  declare function gamsxdatawritedone lib "gamsxdclib" (byval pgamsx as intptr) as integer
public  declare sub gamsxregistercb1 lib "gamsxdclib" (byval pgamsx as intptr,byval cb1 as tbrkpcallback1,byval usermem as intptr)
public  declare sub gamsxregistercb2 lib "gamsxdclib" (byval pgamsx as intptr,byval cb2 as tbrkpcallback2,byval usermem1 as intptr,byval usermem2 as intptr)
public  declare function gamsxgetcb1 lib "gamsxdclib" (byval pgamsx as intptr) as tbrkpcallback1
public  declare function gamsxgetcb2 lib "gamsxdclib" (byval pgamsx as intptr) as tbrkpcallback2
public  declare function gamsxgetcb1um lib "gamsxdclib" (byval pgamsx as intptr) as intptr
public  declare function gamsxgetcb2um1 lib "gamsxdclib" (byval pgamsx as intptr) as intptr
public  declare function gamsxgetcb2um2 lib "gamsxdclib" (byval pgamsx as intptr) as intptr

public declare sub gamsxswset lib "gamsxdclib" (byval pgamsx as intptr, byval  x as integer)
private declare function dll_gamsxstepthrough lib "gamsxdclib" alias "gamsxstepthrough" (byval pgamsx as intptr) as integer
private declare sub dll_gamsxstepthroughset lib "gamsxdclib" alias "gamsxstepthroughset" (byval pgamsx as intptr, byval x as integer)
private declare function dll_gamsxruntoend lib "gamsxdclib" alias "gamsxruntoend" (byval pgamsx as intptr) as integer
private declare sub dll_gamsxruntoendset lib "gamsxdclib" alias "gamsxruntoendset" (byval pgamsx as intptr, byval x as integer)
private declare function dll_gamsxcb1defined lib "gamsxdclib" alias "gamsxcb1defined" (byval pgamsx as intptr) as integer
private declare function dll_gamsxcb2defined lib "gamsxdclib" alias "gamsxcb2defined" (byval pgamsx as intptr) as integer

private declare sub xcreate lib "gamsxdclib" (byref pgamsx as intptr)
private declare sub xfree   lib "gamsxdclib" (byref pgamsx as intptr)

public function gamsxcreate(byref pgamsx as intptr, byref msgbuf as string) as boolean
    xcreate(pgamsx)
    if pgamsx <> 0 then
        gamsxcreate = true
    else
        gamsxcreate = false
    end if
end function

public function gamsxcreatex(byref pgamsx as intptr, byref msgbuf as string) as boolean
    xcreate(pgamsx)
    if pgamsx <> 0 then
        gamsxcreatex = true
    else
        gamsxcreatex = false
    end if
end function

public function gamsxcreated(byref pgamsx as intptr, byval dirname as string, byref msgbuf as string) as boolean
    xcreate(pgamsx)
    if pgamsx <> 0 then
        gamsxcreated = true
    else
        gamsxcreated = false
    end if
end function

public function gamsxcreatel(byref pgamsx as intptr, byval libname as string, byref msgbuf as string) as boolean
    xcreate(pgamsx)
    if pgamsx <> 0 then
        gamsxcreatel = true
    else
        gamsxcreatel = false
    end if
end function

public function gamsxfree(byref pgamsx as intptr) as boolean
   xfree(pgamsx)
   gamsxfree = true
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


public function gamsxrunexecdll(byval pgamsx as intptr,byval optptr as intptr,byval sysdir as string,byval averbose as integer,byref msg as string) as integer
   dim cpy_msg(str_len) as byte
   gamsxrunexecdll = dll_gamsxrunexecdll(pgamsx,optptr,sysdir,averbose,cpy_msg(0))
   call convertc2bas(cpy_msg,msg)
end function

public function gamsxshowerror(byval pgamsx as intptr,byval fnamelog as string,byref errorline as string,byref errortyp as string,byref gmsline as string) as boolean
   dim cpy_errorline(str_len) as byte
   dim cpy_errortyp(str_len) as byte
   dim cpy_gmsline(str_len) as byte
   gamsxshowerror = dll_gamsxshowerror(pgamsx,fnamelog,cpy_errorline(0),cpy_errortyp(0),cpy_gmsline(0))
   call convertc2bas(cpy_errorline,errorline)
   call convertc2bas(cpy_errortyp,errortyp)
   call convertc2bas(cpy_gmsline,gmsline)
end function

public function gamsxsymbolinfo(byval pgamsx as intptr,byval synr as integer,byref syname as string,byref syexpltxt as string,byref sydim as integer,byref sytyp as integer,byref sycount as integer,byref syuserinfo as integer) as integer
   dim cpy_syname(str_len) as byte
   dim cpy_syexpltxt(str_len) as byte
   gamsxsymbolinfo = dll_gamsxsymbolinfo(pgamsx,synr,cpy_syname(0),cpy_syexpltxt(0),sydim,sytyp,sycount,syuserinfo)
   call convertc2bas(cpy_syname,syname)
   call convertc2bas(cpy_syexpltxt,syexpltxt)
end function

public function gamsxuelname(byval pgamsx as intptr,byval uel as integer) as string
   dim cpy_result(str_len) as byte
   call dll_gamsxuelname(pgamsx,uel,cpy_result(0))
   call convertc2bas(cpy_result, gamsxuelname)
end function

public function gamsxdatareadraw(byval pgamsx as intptr,byref elements() as integer,byref vals() as double,byref fdim as integer) as integer
   gamsxdatareadraw = dll_gamsxdatareadraw(pgamsx,elements(0),vals(0),fdim)
end function

public function gamsxdatawriterawstart(byval pgamsx as intptr,byval synr as integer,byval domerge as boolean) as integer
   gamsxdatawriterawstart = dll_gamsxdatawriterawstart(pgamsx,synr,domerge)
end function

public function gamsxdatawriteraw(byval pgamsx as intptr,byref elements() as integer,byref vals() as double) as integer
   gamsxdatawriteraw = dll_gamsxdatawriteraw(pgamsx,elements(0),vals(0))
end function

public function gamsxstepthrough(byval pgamsx as intptr) as boolean
   gamsxstepthrough = dll_gamsxstepthrough(pgamsx)
end function

public function gamsxruntoend(byval pgamsx as intptr) as boolean
   gamsxruntoend = dll_gamsxruntoend(pgamsx)
end function

public function gamsxcb1defined(byval pgamsx as intptr) as boolean
   gamsxcb1defined = dll_gamsxcb1defined(pgamsx)
end function

public function gamsxcb2defined(byval pgamsx as intptr) as boolean
   gamsxcb2defined = dll_gamsxcb2defined(pgamsx)
end function

public sub gamsxstepthroughset(byval pgamsx as intptr, x as boolean)
   call dll_gamsxstepthroughset(pgamsx,x)
end sub

public sub gamsxruntoendset(byval pgamsx as intptr, x as boolean)
   call dll_gamsxruntoendset(pgamsx,x)
end sub

end module
