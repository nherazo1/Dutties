MODULE gamsxifort64def

  ! Intel Fortran 64 Bit procedure wrapper generated by apiwrapper for GAMS Version 24.0.2

  IMPLICIT NONE

  ! Constant declarations


  INTERFACE
  LOGICAL FUNCTION gamsxCreate(pgamsx, errMsg)
    INTEGER(KIND=8), INTENT(OUT) :: pgamsx
    CHARACTER(LEN=*), INTENT(OUT) :: errMsg
  END FUNCTION
  END INTERFACE

  INTERFACE
  LOGICAL FUNCTION gamsxCreateD(pgamsx, dirName, errMsg)
    INTEGER(KIND=8), INTENT(OUT) :: pgamsx
    CHARACTER(LEN=*), INTENT(IN) :: dirName
    CHARACTER(LEN=*), INTENT(OUT) :: errMsg
  END FUNCTION
  END INTERFACE

  INTERFACE
  LOGICAL FUNCTION gamsxCreateL(pgamsx, libName, errMsg)
    INTEGER(KIND=8), INTENT(OUT) :: pgamsx
    CHARACTER(LEN=*), INTENT(IN) :: libName
    CHARACTER(LEN=*), INTENT(OUT) :: errMsg
  END FUNCTION
  END INTERFACE

  INTERFACE
  LOGICAL FUNCTION gamsxFree(pgamsx)
    INTEGER(KIND=8), INTENT(OUT) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  SUBROUTINE ConvF2PChar(fstr,pchar)
    CHARACTER(LEN=*) fstr
    CHARACTER(LEN=*) pchar
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  SUBROUTINE ConvPChar2F(pchar,fstr)
    INTEGER pchar
    CHARACTER(LEN=*) fstr
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  SUBROUTINE ConvStringPAS2F(passtr,fstr)
    CHARACTER(LEN=*) passtr
    CHARACTER(LEN=*) fstr
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  SUBROUTINE ConvStringC2F(cstr,fstr)
    CHARACTER(LEN=*) cstr
    CHARACTER(LEN=*) fstr
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  SUBROUTINE ConvStringF2PAS(fstr,passtr)
    CHARACTER(LEN=*) fstr
    CHARACTER(LEN=*) passtr
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  SUBROUTINE ConvStringF2C(fstr,cstr)
    CHARACTER(LEN=*) fstr
    CHARACTER(LEN=*) cstr
  END SUBROUTINE
  END INTERFACE


  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxRunExecDLL(pgamsx,optPtr,sysDir,AVerbose, &
         Msg)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=8), INTENT(IN) :: optPtr
    CHARACTER(LEN=*), INTENT(IN) :: sysDir
    INTEGER(KIND=4), INTENT(IN) :: AVerbose
    CHARACTER(LEN=*), INTENT(OUT) :: Msg
  END FUNCTION
  END INTERFACE

  INTERFACE
  LOGICAL FUNCTION gamsxShowError(pgamsx,fNameLog,errorLine,errorTyp, &
         gmsLine)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    CHARACTER(LEN=*), INTENT(IN) :: fNameLog
    CHARACTER(LEN=*), INTENT(OUT) :: errorLine
    CHARACTER(LEN=*), INTENT(OUT) :: errorTyp
    CHARACTER(LEN=*), INTENT(OUT) :: gmsLine
  END FUNCTION
  END INTERFACE

  INTERFACE
  SUBROUTINE gamsxAddBreakPoint(pgamsx,fn,lineNr)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    CHARACTER(LEN=*), INTENT(IN) :: fn
    INTEGER(KIND=4), INTENT(IN) :: lineNr
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  SUBROUTINE gamsxClearBreakPoints(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxSystemInfo(pgamsx,NrSy,NrUel)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), INTENT(IN OUT) :: NrSy
    INTEGER(KIND=4), INTENT(IN OUT) :: NrUel
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxSymbolInfo(pgamsx,SyNr,SyName,SyExplTxt, &
         SyDim,SyTyp,SyCount,SyUserInfo)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), INTENT(IN) :: SyNr
    CHARACTER(LEN=*), INTENT(OUT) :: SyName
    CHARACTER(LEN=*), INTENT(OUT) :: SyExplTxt
    INTEGER(KIND=4), INTENT(IN OUT) :: SyDim
    INTEGER(KIND=4), INTENT(IN OUT) :: SyTyp
    INTEGER(KIND=4), INTENT(IN OUT) :: SyCount
    INTEGER(KIND=4), INTENT(IN OUT) :: SyUserInfo
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxFindSymbol(pgamsx,SyName)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    CHARACTER(LEN=*), INTENT(IN) :: SyName
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxDataReadRawStart(pgamsx,SyNr,SyCount)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), INTENT(IN) :: SyNr
    INTEGER(KIND=4), INTENT(IN OUT) :: SyCount
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxDataReadRaw(pgamsx,Elements,Vals, &
         FDim)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), DIMENSION(*), INTENT(IN OUT) :: Elements
    REAL(KIND=8), DIMENSION(*), INTENT(IN OUT) :: Vals
    INTEGER(KIND=4), INTENT(IN OUT) :: FDim
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxDataReadDone(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxDataWriteRawStart(pgamsx,SyNr,DoMerge)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), INTENT(IN) :: SyNr
    LOGICAL, INTENT(IN) :: DoMerge
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxDataWriteRaw(pgamsx,Elements,Vals)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), DIMENSION(*), INTENT(IN) :: Elements
    REAL(KIND=8), DIMENSION(*), INTENT(IN) :: Vals
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=4) FUNCTION gamsxDataWriteDone(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  SUBROUTINE gamsxRegisterCB1(pgamsx,CB1,userMem)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), EXTERNAL :: CB1
    INTEGER(KIND=8), INTENT(IN) :: userMem
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  SUBROUTINE gamsxRegisterCB2(pgamsx,CB2,userMem1,userMem2)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), EXTERNAL :: CB2
    INTEGER(KIND=8), INTENT(IN) :: userMem1
    INTEGER(KIND=8), INTENT(IN) :: userMem2
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  INTEGER(KIND=8) FUNCTION gamsxGetCB1(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=8) FUNCTION gamsxGetCB2(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=8) FUNCTION gamsxGetCB1UM(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=8) FUNCTION gamsxGetCB2UM1(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  INTEGER(KIND=8) FUNCTION gamsxGetCB2UM2(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  SUBROUTINE gamsxSWSet(pgamsx,x)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    INTEGER(KIND=4), INTENT(IN) :: x
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  LOGICAL FUNCTION gamsxStepThrough(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  SUBROUTINE gamsxStepThroughSet(pgamsx,x)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    LOGICAL, INTENT(IN) :: x
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  LOGICAL FUNCTION gamsxRunToEnd(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  SUBROUTINE gamsxRunToEndSet(pgamsx,x)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
    LOGICAL, INTENT(IN) :: x
  END SUBROUTINE
  END INTERFACE

  INTERFACE
  LOGICAL FUNCTION gamsxCB1Defined(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

  INTERFACE
  LOGICAL FUNCTION gamsxCB2Defined(pgamsx)
    INTEGER(KIND=8), INTENT(IN) :: pgamsx
  END FUNCTION
  END INTERFACE

END MODULE gamsxifort64def

LOGICAL FUNCTION gamsxCreate(pgamsx, errMsg)
  !DEC$ ATTRIBUTES STDCALL :: xcreate_
  INTEGER(KIND=8), INTENT(OUT) :: pgamsx
  CHARACTER(LEN=*), INTENT(OUT) :: errMsg
  EXTERNAL xcreate_
  CALL xcreate_(loc(pgamsx))
  gamsxCreate = .TRUE.
END FUNCTION

LOGICAL FUNCTION gamsxCreateD(pgamsx, dirName, errMsg)
  !DEC$ ATTRIBUTES STDCALL :: xcreate_
  INTEGER(KIND=8), INTENT(OUT) :: pgamsx
  CHARACTER(LEN=*), INTENT(IN) :: dirName
  CHARACTER(LEN=*), INTENT(OUT) :: errMsg
  EXTERNAL xcreate_
  CALL xcreate_(loc(pgamsx))
  gamsxCreateD = .TRUE.
END FUNCTION

LOGICAL FUNCTION gamsxCreateL(pgamsx, libName, errMsg)
  !DEC$ ATTRIBUTES STDCALL :: xcreate_
  INTEGER(KIND=8), INTENT(OUT) :: pgamsx
  CHARACTER(LEN=*), INTENT(IN) :: libName
  CHARACTER(LEN=*), INTENT(OUT) :: errMsg
  EXTERNAL xcreate_
  CALL xcreate_(loc(pgamsx))
  gamsxCreateL = .TRUE.
END FUNCTION

LOGICAL FUNCTION gamsxFree(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: xfree_
  INTEGER(KIND=8), INTENT(OUT) :: pgamsx
  EXTERNAL xfree_
  CALL xfree_(loc(pgamsx))
  gamsxFree = .TRUE.
END FUNCTION

SUBROUTINE ConvF2PChar(fstr,pchar)
  IMPLICIT NONE
  CHARACTER(LEN=*) fstr
  CHARACTER(LEN=*) pchar
  INTEGER n
  n = LEN_TRIM(fstr)
  pchar(1:n) = fstr(1:n)
  pchar(n+1:n+1) = char(0)
END SUBROUTINE

SUBROUTINE ConvPChar2F(pchar,fstr)
  IMPLICIT NONE
  INTEGER pchar
  CHARACTER(LEN=*) fstr
  INTEGER n
  INTEGER i
  CHARACTER c
  POINTER(p,c)
  n = LEN(fstr)
  fstr = ' '
  DO i=1,n
    p = pchar+i-1
    IF (ICHAR(c)==0) RETURN
    fstr(i:i) = c
  END DO
END SUBROUTINE

SUBROUTINE ConvStringPAS2F(passtr,fstr)
  IMPLICIT NONE
  CHARACTER(LEN=*) passtr
  CHARACTER(LEN=*) fstr
  INTEGER n
  n = ICHAR(passtr(1:1))
  IF (n>LEN(passtr)-1) THEN
    n = LEN(passtr)-1
  END IF
  IF (n>LEN(fstr)) THEN
    n = LEN(fstr)
  END IF
  fstr = ' '
  fstr(1:n) = passtr(2:n+1)
END SUBROUTINE

SUBROUTINE ConvStringC2F(cstr,fstr)
  IMPLICIT NONE
  CHARACTER(LEN=*) cstr
  CHARACTER(LEN=*) fstr
  INTEGER n
  fstr = ' '
  n = INDEX(cstr,char(0))
  IF (n==0) THEN
    fstr = cstr
  ELSE
    fstr(1:n-1) = cstr(1:n-1)
  END IF
END SUBROUTINE

SUBROUTINE ConvStringF2PAS(fstr,passtr)
  IMPLICIT NONE
  CHARACTER(LEN=*) fstr
  CHARACTER(LEN=*) passtr
  INTEGER n
  n = LEN_TRIM(fstr)
  IF (n>LEN(passtr)-1) THEN
    n = LEN(passtr)-1
  END IF
  passtr(1:1) = CHAR(n)
  passtr(2:n+1) = fstr(1:n)
END SUBROUTINE

SUBROUTINE ConvStringF2C(fstr,cstr)
  IMPLICIT NONE
  CHARACTER(LEN=*) fstr
  CHARACTER(LEN=*) cstr
  INTEGER n
  cstr=' '
  n = 1+LEN_TRIM(fstr)
  IF (n>LEN(cstr)) n = LEN(cstr)
  cstr=fstr
  cstr(n:n)=CHAR(0)
END SUBROUTINE


INTEGER(KIND=4) FUNCTION gamsxRunExecDLL(pgamsx,optPtr,sysDir,AVerbose, &
         Msg)
  !DEC$ ATTRIBUTES STDCALL :: gamsxrunexecdll_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=8), INTENT(IN) :: optPtr
  CHARACTER(LEN=*), INTENT(IN) :: sysDir
  CHARACTER(LEN=256) :: cpy_sysDir
  INTEGER(KIND=4), INTENT(IN) :: AVerbose
  CHARACTER(LEN=*), INTENT(OUT) :: Msg
  CHARACTER(LEN=256) :: cpy_Msg
  EXTERNAL gamsxrunexecdll_
  INTEGER(KIND=4) gamsxRunExecDLL_
  CALL ConvStringF2PAS(sysDir, cpy_sysDir)
  gamsxRunExecDLL = gamsxRunExecDLL_(pgamsx, optPtr, loc(cpy_sysDir) &
         , AVerbose, loc(cpy_Msg))
  CALL ConvStringPAS2F(cpy_Msg, Msg)
END FUNCTION

LOGICAL FUNCTION gamsxShowError(pgamsx,fNameLog,errorLine,errorTyp, &
         gmsLine)
  !DEC$ ATTRIBUTES STDCALL :: gamsxshowerror_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  CHARACTER(LEN=*), INTENT(IN) :: fNameLog
  CHARACTER(LEN=256) :: cpy_fNameLog
  CHARACTER(LEN=*), INTENT(OUT) :: errorLine
  CHARACTER(LEN=256) :: cpy_errorLine
  CHARACTER(LEN=*), INTENT(OUT) :: errorTyp
  CHARACTER(LEN=256) :: cpy_errorTyp
  CHARACTER(LEN=*), INTENT(OUT) :: gmsLine
  CHARACTER(LEN=256) :: cpy_gmsLine
  EXTERNAL gamsxshowerror_
  INTEGER(KIND=4) gamsxShowError_
  CALL ConvStringF2PAS(fNameLog, cpy_fNameLog)
  gamsxShowError = gamsxShowError_(pgamsx, loc(cpy_fNameLog), loc(cpy_errorLine) &
         , loc(cpy_errorTyp), loc(cpy_gmsLine)) /= 0
  CALL ConvStringPAS2F(cpy_errorLine, errorLine)
  CALL ConvStringPAS2F(cpy_errorTyp, errorTyp)
  CALL ConvStringPAS2F(cpy_gmsLine, gmsLine)
END FUNCTION

SUBROUTINE gamsxAddBreakPoint(pgamsx,fn,lineNr)
  !DEC$ ATTRIBUTES STDCALL :: gamsxaddbreakpoint_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  CHARACTER(LEN=*), INTENT(IN) :: fn
  CHARACTER(LEN=256) :: cpy_fn
  INTEGER(KIND=4), INTENT(IN) :: lineNr
  EXTERNAL gamsxaddbreakpoint_
  CALL ConvStringF2PAS(fn, cpy_fn)
  CALL gamsxAddBreakPoint_(pgamsx, loc(cpy_fn), lineNr)
END SUBROUTINE

SUBROUTINE gamsxClearBreakPoints(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxclearbreakpoints_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxclearbreakpoints_
  CALL gamsxClearBreakPoints_(pgamsx)
END SUBROUTINE

INTEGER(KIND=4) FUNCTION gamsxSystemInfo(pgamsx,NrSy,NrUel)
  !DEC$ ATTRIBUTES STDCALL :: gamsxsysteminfo_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), INTENT(IN OUT) :: NrSy
  INTEGER(KIND=4), INTENT(IN OUT) :: NrUel
  EXTERNAL gamsxsysteminfo_
  INTEGER(KIND=4) gamsxSystemInfo_
  gamsxSystemInfo = gamsxSystemInfo_(pgamsx, loc(NrSy), loc(NrUel))
END FUNCTION

INTEGER(KIND=4) FUNCTION gamsxSymbolInfo(pgamsx,SyNr,SyName,SyExplTxt, &
         SyDim,SyTyp,SyCount,SyUserInfo)
  !DEC$ ATTRIBUTES STDCALL :: gamsxsymbolinfo_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), INTENT(IN) :: SyNr
  CHARACTER(LEN=*), INTENT(OUT) :: SyName
  CHARACTER(LEN=256) :: cpy_SyName
  CHARACTER(LEN=*), INTENT(OUT) :: SyExplTxt
  CHARACTER(LEN=256) :: cpy_SyExplTxt
  INTEGER(KIND=4), INTENT(IN OUT) :: SyDim
  INTEGER(KIND=4), INTENT(IN OUT) :: SyTyp
  INTEGER(KIND=4), INTENT(IN OUT) :: SyCount
  INTEGER(KIND=4), INTENT(IN OUT) :: SyUserInfo
  EXTERNAL gamsxsymbolinfo_
  INTEGER(KIND=4) gamsxSymbolInfo_
  gamsxSymbolInfo = gamsxSymbolInfo_(pgamsx, SyNr, loc(cpy_SyName) &
         , loc(cpy_SyExplTxt), loc(SyDim), loc(SyTyp), loc(SyCount) &
         , loc(SyUserInfo))
  CALL ConvStringPAS2F(cpy_SyName, SyName)
  CALL ConvStringPAS2F(cpy_SyExplTxt, SyExplTxt)
END FUNCTION

INTEGER(KIND=4) FUNCTION gamsxFindSymbol(pgamsx,SyName)
  !DEC$ ATTRIBUTES STDCALL :: gamsxfindsymbol_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  CHARACTER(LEN=*), INTENT(IN) :: SyName
  CHARACTER(LEN=256) :: cpy_SyName
  EXTERNAL gamsxfindsymbol_
  INTEGER(KIND=4) gamsxFindSymbol_
  CALL ConvStringF2PAS(SyName, cpy_SyName)
  gamsxFindSymbol = gamsxFindSymbol_(pgamsx, loc(cpy_SyName))
END FUNCTION

INTEGER(KIND=4) FUNCTION gamsxDataReadRawStart(pgamsx,SyNr,SyCount)
  !DEC$ ATTRIBUTES STDCALL :: gamsxdatareadrawstart_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), INTENT(IN) :: SyNr
  INTEGER(KIND=4), INTENT(IN OUT) :: SyCount
  EXTERNAL gamsxdatareadrawstart_
  INTEGER(KIND=4) gamsxDataReadRawStart_
  gamsxDataReadRawStart = gamsxDataReadRawStart_(pgamsx, SyNr, loc(SyCount))
END FUNCTION

INTEGER(KIND=4) FUNCTION gamsxDataReadRaw(pgamsx,Elements,Vals,FDim)
  !DEC$ ATTRIBUTES STDCALL :: gamsxdatareadraw_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), DIMENSION(*), INTENT(IN OUT) :: Elements
  REAL(KIND=8), DIMENSION(*), INTENT(IN OUT) :: Vals
  INTEGER(KIND=4), INTENT(IN OUT) :: FDim
  EXTERNAL gamsxdatareadraw_
  INTEGER(KIND=4) gamsxDataReadRaw_
  gamsxDataReadRaw = gamsxDataReadRaw_(pgamsx, Elements, Vals, loc(FDim))
END FUNCTION

INTEGER(KIND=4) FUNCTION gamsxDataReadDone(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxdatareaddone_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxdatareaddone_
  INTEGER(KIND=4) gamsxDataReadDone_
  gamsxDataReadDone = gamsxDataReadDone_(pgamsx)
END FUNCTION

INTEGER(KIND=4) FUNCTION gamsxDataWriteRawStart(pgamsx,SyNr,DoMerge)
  !DEC$ ATTRIBUTES STDCALL :: gamsxdatawriterawstart_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), INTENT(IN) :: SyNr
  LOGICAL, INTENT(IN) :: DoMerge
  INTEGER(KIND=4) :: ib_DoMerge
  EXTERNAL gamsxdatawriterawstart_
  INTEGER(KIND=4) gamsxDataWriteRawStart_
  ib_DoMerge = 0
  IF (DoMerge) ib_DoMerge = 1
  gamsxDataWriteRawStart = gamsxDataWriteRawStart_(pgamsx, SyNr, ib_DoMerge)
END FUNCTION

INTEGER(KIND=4) FUNCTION gamsxDataWriteRaw(pgamsx,Elements,Vals)
  !DEC$ ATTRIBUTES STDCALL :: gamsxdatawriteraw_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), DIMENSION(*), INTENT(IN) :: Elements
  REAL(KIND=8), DIMENSION(*), INTENT(IN) :: Vals
  EXTERNAL gamsxdatawriteraw_
  INTEGER(KIND=4) gamsxDataWriteRaw_
  gamsxDataWriteRaw = gamsxDataWriteRaw_(pgamsx, Elements, Vals)
END FUNCTION

INTEGER(KIND=4) FUNCTION gamsxDataWriteDone(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxdatawritedone_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxdatawritedone_
  INTEGER(KIND=4) gamsxDataWriteDone_
  gamsxDataWriteDone = gamsxDataWriteDone_(pgamsx)
END FUNCTION

SUBROUTINE gamsxRegisterCB1(pgamsx,CB1,userMem)
  !DEC$ ATTRIBUTES STDCALL :: fgamsxregistercb1_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), EXTERNAL :: CB1
  INTEGER(KIND=8), INTENT(IN) :: userMem
  EXTERNAL fgamsxregistercb1_
  CALL fgamsxRegisterCB1_(pgamsx, CB1, userMem)
END SUBROUTINE

SUBROUTINE gamsxRegisterCB2(pgamsx,CB2,userMem1,userMem2)
  !DEC$ ATTRIBUTES STDCALL :: fgamsxregistercb2_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), EXTERNAL :: CB2
  INTEGER(KIND=8), INTENT(IN) :: userMem1
  INTEGER(KIND=8), INTENT(IN) :: userMem2
  EXTERNAL fgamsxregistercb2_
  CALL fgamsxRegisterCB2_(pgamsx, CB2, userMem1, userMem2)
END SUBROUTINE

INTEGER(KIND=8) FUNCTION gamsxGetCB1(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: fgamsxgetcb1_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL fgamsxgetcb1_
  INTEGER(KIND=8) fgamsxGetCB1_
  gamsxGetCB1 = fgamsxGetCB1_(pgamsx)
END FUNCTION

INTEGER(KIND=8) FUNCTION gamsxGetCB2(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: fgamsxgetcb2_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL fgamsxgetcb2_
  INTEGER(KIND=8) fgamsxGetCB2_
  gamsxGetCB2 = fgamsxGetCB2_(pgamsx)
END FUNCTION

INTEGER(KIND=8) FUNCTION gamsxGetCB1UM(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxgetcb1um_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxgetcb1um_
  INTEGER(KIND=8) gamsxGetCB1UM_
  gamsxGetCB1UM = gamsxGetCB1UM_(pgamsx)
END FUNCTION

INTEGER(KIND=8) FUNCTION gamsxGetCB2UM1(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxgetcb2um1_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxgetcb2um1_
  INTEGER(KIND=8) gamsxGetCB2UM1_
  gamsxGetCB2UM1 = gamsxGetCB2UM1_(pgamsx)
END FUNCTION

INTEGER(KIND=8) FUNCTION gamsxGetCB2UM2(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxgetcb2um2_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxgetcb2um2_
  INTEGER(KIND=8) gamsxGetCB2UM2_
  gamsxGetCB2UM2 = gamsxGetCB2UM2_(pgamsx)
END FUNCTION

SUBROUTINE gamsxSWSet(pgamsx,x)
  !DEC$ ATTRIBUTES STDCALL :: gamsxswset_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  INTEGER(KIND=4), INTENT(IN) :: x
  EXTERNAL gamsxswset_
  CALL gamsxSWSet_(pgamsx, x)
END SUBROUTINE

LOGICAL FUNCTION gamsxStepThrough(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxstepthrough_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxstepthrough_
  INTEGER(KIND=4) gamsxStepThrough_
  gamsxStepThrough = gamsxStepThrough_(pgamsx) /= 0
END FUNCTION

SUBROUTINE gamsxStepThroughSet(pgamsx,x)
  !DEC$ ATTRIBUTES STDCALL :: gamsxstepthroughset_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  LOGICAL, INTENT(IN) :: x
  INTEGER(KIND=4) :: ib_x
  EXTERNAL gamsxstepthroughset_
  ib_x = 0
  IF (x) ib_x = 1
  CALL gamsxStepThroughSet_(pgamsx, ib_x)
END SUBROUTINE

LOGICAL FUNCTION gamsxRunToEnd(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxruntoend_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxruntoend_
  INTEGER(KIND=4) gamsxRunToEnd_
  gamsxRunToEnd = gamsxRunToEnd_(pgamsx) /= 0
END FUNCTION

SUBROUTINE gamsxRunToEndSet(pgamsx,x)
  !DEC$ ATTRIBUTES STDCALL :: gamsxruntoendset_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  LOGICAL, INTENT(IN) :: x
  INTEGER(KIND=4) :: ib_x
  EXTERNAL gamsxruntoendset_
  ib_x = 0
  IF (x) ib_x = 1
  CALL gamsxRunToEndSet_(pgamsx, ib_x)
END SUBROUTINE

LOGICAL FUNCTION gamsxCB1Defined(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxcb1defined_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxcb1defined_
  INTEGER(KIND=4) gamsxCB1Defined_
  gamsxCB1Defined = gamsxCB1Defined_(pgamsx) /= 0
END FUNCTION

LOGICAL FUNCTION gamsxCB2Defined(pgamsx)
  !DEC$ ATTRIBUTES STDCALL :: gamsxcb2defined_
  INTEGER(KIND=8), INTENT(IN) :: pgamsx
  EXTERNAL gamsxcb2defined_
  INTEGER(KIND=4) gamsxCB2Defined_
  gamsxCB2Defined = gamsxCB2Defined_(pgamsx) /= 0
END FUNCTION
