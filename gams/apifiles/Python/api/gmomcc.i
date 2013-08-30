/*  SWIG interface code generated by apiwrapper for GAMS Version 24.0.2 */
%module gmomcc
%include cpointer.i
%include typemaps.i
%include carrays.i
%include cstring.i

%{
/* Put header files here or function declarations like below */
#define SWIG_FILE_WITH_INIT
#include "gmomcc.h"
#include "gclgms.h"
#define gmoHandleToPtr
#define ptrTogmoHandle
%}



enum gmoEquType {
  gmoequ_E = 0,
  gmoequ_G = 1,
  gmoequ_L = 2,
  gmoequ_N = 3,
  gmoequ_X = 4,
  gmoequ_C = 5,
  gmoequ_B = 6  };

enum gmoVarType {
  gmovar_X  = 0,
  gmovar_B  = 1,
  gmovar_I  = 2,
  gmovar_S1 = 3,
  gmovar_S2 = 4,
  gmovar_SC = 5,
  gmovar_SI = 6  };

enum gmoEquOrder {
  gmoorder_ERR = 0,
  gmoorder_L   = 1,
  gmoorder_Q   = 2,
  gmoorder_NL  = 3  };

enum gmoVarFreeType {
  gmovar_X_F = 0,
  gmovar_X_N = 1,
  gmovar_X_P = 2  };

enum gmoVarEquBasisStatus {
  gmoBstat_Lower = 0,
  gmoBstat_Upper = 1,
  gmoBstat_Basic = 2,
  gmoBstat_Super = 3  };

enum gmoVarEquStatus {
  gmoCstat_OK     = 0,
  gmoCstat_NonOpt = 1,
  gmoCstat_Infeas = 2,
  gmoCstat_UnBnd  = 3  };

enum gmoObjectiveType {
  gmoObjType_Var = 0,
  gmoObjType_Fun = 2  };

enum gmoInterfaceType {
  gmoIFace_Processed = 0,
  gmoIFace_Raw       = 1  };

enum gmoObjectiveSense {
  gmoObj_Min = 0,
  gmoObj_Max = 1  };

enum gmoSolverStatus {
  gmoSolveStat_Normal      = 1,
  gmoSolveStat_Iteration   = 2,
  gmoSolveStat_Resource    = 3,
  gmoSolveStat_Solver      = 4,
  gmoSolveStat_EvalError   = 5,
  gmoSolveStat_Capability  = 6,
  gmoSolveStat_License     = 7,
  gmoSolveStat_User        = 8,
  gmoSolveStat_SetupErr    = 9,
  gmoSolveStat_SolverErr   = 10,
  gmoSolveStat_InternalErr = 11,
  gmoSolveStat_Skipped     = 12,
  gmoSolveStat_SystemErr   = 13  };

enum gmoModelStatus {
  gmoModelStat_OptimalGlobal        = 1,
  gmoModelStat_OptimalLocal         = 2,
  gmoModelStat_Unbounded            = 3,
  gmoModelStat_InfeasibleGlobal     = 4,
  gmoModelStat_InfeasibleLocal      = 5,
  gmoModelStat_InfeasibleIntermed   = 6,
  gmoModelStat_NonOptimalIntermed   = 7,
  gmoModelStat_Integer              = 8,
  gmoModelStat_NonIntegerIntermed   = 9,
  gmoModelStat_IntegerInfeasible    = 10,
  gmoModelStat_LicenseError         = 11,
  gmoModelStat_ErrorUnknown         = 12,
  gmoModelStat_ErrorNoSolution      = 13,
  gmoModelStat_NoSolutionReturned   = 14,
  gmoModelStat_SolvedUnique         = 15,
  gmoModelStat_Solved               = 16,
  gmoModelStat_SolvedSingular       = 17,
  gmoModelStat_UnboundedNoSolution  = 18,
  gmoModelStat_InfeasibleNoSolution = 19  };

enum gmoHeadnTail {
  gmoHiterused = 3,
  gmoHresused  = 4,
  gmoHobjval   = 5,
  gmoHdomused  = 6,
  gmoHetalg    = 10,
  gmoTmipnod   = 11,
  gmoTninf     = 12,
  gmoTnopt     = 13,
  gmoTmipbest  = 15,
  gmoTsinf     = 20,
  gmoTrobj     = 22  };

enum gmoHTcard {
  gmonumheader = 10,
  gmonumtail   = 12  };

enum gmoProcType {
  gmoProc_none           = 0,
  gmoProc_lp             = 1,
  gmoProc_mip            = 2,
  gmoProc_rmip           = 3,
  gmoProc_nlp            = 4,
  gmoProc_mcp            = 5,
  gmoProc_mpec           = 6,
  gmoProc_rmpec          = 7,
  gmoProc_cns            = 8,
  gmoProc_dnlp           = 9,
  gmoProc_rminlp         = 10,
  gmoProc_minlp          = 11,
  gmoProc_qcp            = 12,
  gmoProc_miqcp          = 13,
  gmoProc_rmiqcp         = 14,
  gmoProc_emp            = 15,
  gmoProc_nrofmodeltypes = 16  };

enum gmoEvalErrorMethodNum {
  gmoEVALERRORMETHOD_KEEPGOING = 0,
  gmoEVALERRORMETHOD_FASTSTOP  = 1  };

// This tells SWIG to treat char ** as a special case
// but this is only save for input-values
%typemap(in) char *scenuel_in[]{
  /* Check if is a list */
  if (PyList_Check($input)) {
    int size = PyList_Size($input);
    int i = 0;
    $1 = (char **) malloc((size+1)*sizeof(char *));
    for (i = 0; i < size; i++) {
      PyObject *o = PyList_GetItem($input,i);
      if (PyString_Check(o))
        $1[i] = PyString_AsString(PyList_GetItem($input,i));
      else {
        PyErr_SetString(PyExc_TypeError,"list must contain strings");
        free($1);
        return NULL;
      }
    }
    $1[i] = 0;
  } else {
    PyErr_SetString(PyExc_TypeError,"not a list");
    return NULL;
  }
}

%typemap(freearg) char *scenuel_in[]{
  free((char *) $1);
}

%array_class(int, intArray);
%array_class(double, doubleArray);
%pointer_functions(int, intp);
%pointer_functions(double, doublep);
%pointer_functions(gmoHandle_t, gmoHandle_tp);

%typemap(in) void *{
    int res = SWIG_ConvertPtr($input,SWIG_as_voidptrptr(&$1), SWIGTYPE_p_void, 0);
    if (!SWIG_IsOK(res)) {
    SWIG_exception_fail(SWIG_ArgError(res), "in method '" "$symname" "', argument " " of type '" "void *""'");
  }
}

%typemap(in) void **{
    void *$1__p;
    int res = SWIG_ConvertPtr($input,SWIG_as_voidptrptr(&$1__p), SWIGTYPE_p_void, 0);
    if (!SWIG_IsOK(res)) {
    SWIG_exception_fail(SWIG_ArgError(res), "in method '" "$symname" "', argument " " of type '" "void *""'");
    }
    $1 = &$1__p;
}

%typemap(out) gmoHandle_t {
  resultobj = SWIG_NewPointerObj((gmoHandle_t *)memcpy((gmoHandle_t *)malloc(sizeof(gmoHandle_t)),&result,sizeof(gmoHandle_t)), SWIGTYPE_p_gmoHandle_t, 0 |  0 );
}

%typemap(in, numinputs=0) char *_oss_buf() {
  $1 = (char *) malloc(sizeof(char) * (GMS_SSSIZE+1));
}

%typemap(freearg) char *_oss_buf() {
  free((char *) $1);
}


%cstring_bounded_output(char *msgBuf_out, GMS_SSSIZE);
%cstring_bounded_output(char *result_out, GMS_SSSIZE);
%cstring_bounded_output(char *msg_out, GMS_SSSIZE);
%cstring_bounded_output(char *s_out, GMS_SSSIZE);

%feature("autodoc", "0");

extern void *gmoHandleToPtr (gmoHandle_t pgmo);
extern gmoHandle_t ptrTogmoHandle (void *vptr);
extern int gmoGetReady (char *msgBuf_out, int msgBufSize);
extern int gmoGetReadyD (const char *dirName, char *msgBuf_out, int msgBufSize);
extern int gmoGetReadyL (const char *libName, char *msgBuf_out, int msgBufSize);
extern int gmoCreate (gmoHandle_t *pgmo, char *msgBuf_out, int msgBufSize);
extern int gmoCreateD (gmoHandle_t *pgmo, const char *dirName, char *msgBuf_out, int msgBufSize);
extern int gmoCreateDD (gmoHandle_t *pgmo, const char *dirName, char *msgBuf_out, int msgBufSize);
extern int gmoCreateL (gmoHandle_t *pgmo, const char *libName, char *msgBuf_out, int msgBufSize);
extern int gmoFree (gmoHandle_t *pgmo);
extern int gmoLibraryLoaded(void);
extern int gmoLibraryUnload(void);
extern int gmoGetScreenIndicator(void);
extern void gmoSetScreenIndicator(int scrind);
extern int gmoGetExceptionIndicator(void);
extern void gmoSetExceptionIndicator(int excind);
extern int gmoGetExitIndicator(void);
extern void gmoSetExitIndicator(int extind);
extern gmoErrorCallback_t gmoGetErrorCallback(void);
extern void gmoSetErrorCallback(gmoErrorCallback_t func);
extern int gmoGetAPIErrorCount(void);
extern void gmoSetAPIErrorCount(int ecnt);
extern void gmoErrorHandling(const char *msg);
extern int  gmoInitData (gmoHandle_t pgmo, int rows, int cols, int codelen);
extern int  gmoAddRow (gmoHandle_t pgmo, int etyp, int ematch, double eslack, double escale, double erhs, double emarg, int ebas, int enz, const int colidx[], const double jacval[], const int nlflag[]);
extern int  gmoAddCol (gmoHandle_t pgmo, int vtyp, double vlo, double vl, double vup, double vmarg, int vbas, int vsos, double vprior, double vscale, int vnz, const int rowidx[], const double jacval[], const int nlflag[]);
extern int  gmoCompleteData (gmoHandle_t pgmo, char *msg_out);
extern int  gmoLoadDataLegacy (gmoHandle_t pgmo, char *msg_out);
extern int  gmoRegisterEnvironment (gmoHandle_t pgmo, void *gevptr, char *msg_out);
extern void * gmoEnvironment (gmoHandle_t pgmo);
extern void * gmoViewStore (gmoHandle_t pgmo);
extern void  gmoViewRestore (gmoHandle_t pgmo, void **viewptr);
extern void  gmoViewDump (gmoHandle_t pgmo);
extern int  gmoGetiSolver (gmoHandle_t pgmo, int mi);
extern int  gmoGetjSolver (gmoHandle_t pgmo, int mj);
extern int  gmoGetiModel (gmoHandle_t pgmo, int si);
extern int  gmoGetjModel (gmoHandle_t pgmo, int sj);
extern int  gmoSetEquPermutation (gmoHandle_t pgmo, int permut[]);
extern int  gmoSetRvEquPermutation (gmoHandle_t pgmo, int rvpermut[], int len);
extern int  gmoSetVarPermutation (gmoHandle_t pgmo, int permut[]);
extern int  gmoSetRvVarPermutation (gmoHandle_t pgmo, int rvpermut[], int len);
extern int  gmoSetNRowPerm (gmoHandle_t pgmo);
extern int  gmoGetVarTypeCnt (gmoHandle_t pgmo, int vtyp);
extern int  gmoGetEquTypeCnt (gmoHandle_t pgmo, int etyp);
extern int  gmoGetObjStat (gmoHandle_t pgmo, int *OUTPUT, int *OUTPUT, int *OUTPUT);
extern int  gmoGetRowStat (gmoHandle_t pgmo, int si, int *OUTPUT, int *OUTPUT, int *OUTPUT);
extern int  gmoGetColStat (gmoHandle_t pgmo, int sj, int *OUTPUT, int *OUTPUT, int *OUTPUT, int *OUTPUT);
extern int  gmoGetRowQNZOne (gmoHandle_t pgmo, int si);
extern int  gmoGetRowQDiagNZOne (gmoHandle_t pgmo, int si);
extern void  gmoGetSosCounts (gmoHandle_t pgmo, int *OUTPUT, int *OUTPUT, int *OUTPUT);
extern void  gmoGetXLibCounts (gmoHandle_t pgmo, int *OUTPUT, int *OUTPUT, int *OUTPUT, int orgcolind[]);
extern int  gmoGetActiveModelType (gmoHandle_t pgmo, int checkv[], int *OUTPUT);
extern int  gmoGetMatrixRow (gmoHandle_t pgmo, int rowstart[], int colidx[], double jacval[], int nlflag[]);
extern int  gmoGetMatrixCol (gmoHandle_t pgmo, int colstart[], int rowidx[], double jacval[], int nlflag[]);
extern int  gmoGetMatrixCplex (gmoHandle_t pgmo, int colstart[], int collength[], int rowidx[], double jacval[]);
extern char * gmoGetObjName (gmoHandle_t pgmo, char *_oss_buf);
extern char * gmoGetObjNameCustom (gmoHandle_t pgmo, const char *suffix, char *_oss_buf);
extern int  gmoGetObjVector (gmoHandle_t pgmo, double jacval[], int nlflag[]);
extern int  gmoGetObjSparse (gmoHandle_t pgmo, int colidx[], double jacval[], int nlflag[], int *OUTPUT, int *OUTPUT);
extern int  gmoGetObjQ (gmoHandle_t pgmo, int colidx[], int rowidx[], double jacval[]);
extern int  gmoGetEquL (gmoHandle_t pgmo, double e[]);
extern double  gmoGetEquLOne (gmoHandle_t pgmo, int si);
extern int  gmoSetEquL (gmoHandle_t pgmo, const double el[]);
extern void  gmoSetEquLOne (gmoHandle_t pgmo, int si, double el);
extern int  gmoGetEquM (gmoHandle_t pgmo, double pi[]);
extern double  gmoGetEquMOne (gmoHandle_t pgmo, int si);
extern int  gmoSetEquM (gmoHandle_t pgmo, const double emarg[]);
extern char * gmoGetEquNameOne (gmoHandle_t pgmo, int si, char *_oss_buf);
extern char * gmoGetEquNameCustomOne (gmoHandle_t pgmo, int si, const char *suffix, char *_oss_buf);
extern int  gmoGetRhs (gmoHandle_t pgmo, double mdblvec[]);
extern double  gmoGetRhsOne (gmoHandle_t pgmo, int si);
extern int  gmoSetAltRHS (gmoHandle_t pgmo, const double mdblvec[]);
extern void  gmoSetAltRHSOne (gmoHandle_t pgmo, int si, double erhs);
extern int  gmoGetEquSlack (gmoHandle_t pgmo, double mdblvec[]);
extern double  gmoGetEquSlackOne (gmoHandle_t pgmo, int si);
extern int  gmoSetEquSlack (gmoHandle_t pgmo, const double mdblvec[]);
extern int  gmoGetEquType (gmoHandle_t pgmo, int mintvec[]);
extern int  gmoGetEquTypeOne (gmoHandle_t pgmo, int si);
extern void  gmoGetEquStat (gmoHandle_t pgmo, int mintvec[]);
extern int  gmoGetEquStatOne (gmoHandle_t pgmo, int si);
extern void  gmoSetEquStat (gmoHandle_t pgmo, const int mintvec[]);
extern void  gmoGetEquCStat (gmoHandle_t pgmo, int mintvec[]);
extern int  gmoGetEquCStatOne (gmoHandle_t pgmo, int si);
extern void  gmoSetEquCStat (gmoHandle_t pgmo, const int mintvec[]);
extern int  gmoGetEquMatch (gmoHandle_t pgmo, int mintvec[]);
extern int  gmoGetEquMatchOne (gmoHandle_t pgmo, int si);
extern int  gmoGetEquScale (gmoHandle_t pgmo, double mdblvec[]);
extern double  gmoGetEquScaleOne (gmoHandle_t pgmo, int si);
extern double  gmoGetEquStageOne (gmoHandle_t pgmo, int si);
extern int  gmoGetEquOrderOne (gmoHandle_t pgmo, int si);
extern int  gmoGetRowSparse (gmoHandle_t pgmo, int si, int colidx[], double jacval[], int nlflag[], int *OUTPUT, int *OUTPUT);
extern void  gmoGetRowJacInfoOne (gmoHandle_t pgmo, int si, void **jacptr, double *OUTPUT, int *OUTPUT, int *OUTPUT);
extern int  gmoGetRowQ (gmoHandle_t pgmo, int si, int colidx[], int rowidx[], double jacval[]);
extern int  gmoGetEquIntDotOpt (gmoHandle_t pgmo, void *optptr, const char *dotopt, int optvals[]);
extern int  gmoGetEquDblDotOpt (gmoHandle_t pgmo, void *optptr, const char *dotopt, double optvals[]);
extern int  gmoGetVarL (gmoHandle_t pgmo, double x[]);
extern double  gmoGetVarLOne (gmoHandle_t pgmo, int sj);
extern int  gmoSetVarL (gmoHandle_t pgmo, const double x[]);
extern void  gmoSetVarLOne (gmoHandle_t pgmo, int sj, double vl);
extern int  gmoGetVarM (gmoHandle_t pgmo, double dj[]);
extern double  gmoGetVarMOne (gmoHandle_t pgmo, int sj);
extern int  gmoSetVarM (gmoHandle_t pgmo, const double dj[]);
extern char * gmoGetVarNameOne (gmoHandle_t pgmo, int sj, char *_oss_buf);
extern char * gmoGetVarNameCustomOne (gmoHandle_t pgmo, int sj, const char *suffix, char *_oss_buf);
extern int  gmoGetVarLower (gmoHandle_t pgmo, double lovec[]);
extern double  gmoGetVarLowerOne (gmoHandle_t pgmo, int sj);
extern int  gmoGetVarUpper (gmoHandle_t pgmo, double upvec[]);
extern double  gmoGetVarUpperOne (gmoHandle_t pgmo, int sj);
extern int  gmoSetAltVarBounds (gmoHandle_t pgmo, const double lovec[], const double upvec[]);
extern void  gmoSetAltVarLowerOne (gmoHandle_t pgmo, int sj, double vlo);
extern void  gmoSetAltVarUpperOne (gmoHandle_t pgmo, int sj, double vup);
extern int  gmoGetVarType (gmoHandle_t pgmo, int nintvec[]);
extern int  gmoGetVarTypeOne (gmoHandle_t pgmo, int sj);
extern int  gmoSetAltVarType (gmoHandle_t pgmo, const int nintvec[]);
extern void  gmoSetAltVarTypeOne (gmoHandle_t pgmo, int sj, int vtyp);
extern void  gmoGetVarStat (gmoHandle_t pgmo, int nintvec[]);
extern int  gmoGetVarStatOne (gmoHandle_t pgmo, int sj);
extern void  gmoSetVarStat (gmoHandle_t pgmo, const int nintvec[]);
extern void  gmoSetVarStatOne (gmoHandle_t pgmo, int sj, int vstat);
extern void  gmoGetVarCStat (gmoHandle_t pgmo, int nintvec[]);
extern int  gmoGetVarCStatOne (gmoHandle_t pgmo, int sj);
extern void  gmoSetVarCStat (gmoHandle_t pgmo, const int nintvec[]);
extern int  gmoGetVarPrior (gmoHandle_t pgmo, double ndblvec[]);
extern double  gmoGetVarPriorOne (gmoHandle_t pgmo, int sj);
extern int  gmoGetVarScale (gmoHandle_t pgmo, double ndblvec[]);
extern double  gmoGetVarScaleOne (gmoHandle_t pgmo, int sj);
extern double  gmoGetVarStageOne (gmoHandle_t pgmo, int sj);
extern int  gmoGetSosConstraints (gmoHandle_t pgmo, int sostype[], int sosbeg[], int sosind[], double soswt[]);
extern int  gmoGetVarSosSetOne (gmoHandle_t pgmo, int sj);
extern int  gmoGetColSparse (gmoHandle_t pgmo, int sj, int rowidx[], double jacval[], int nlflag[], int *OUTPUT, int *OUTPUT);
extern void  gmoGetColJacInfoOne (gmoHandle_t pgmo, int sj, void **jacptr, double *OUTPUT, int *OUTPUT, int *OUTPUT);
extern int  gmoGetVarIntDotOpt (gmoHandle_t pgmo, void *optptr, const char *dotopt, int optvals[]);
extern int  gmoGetVarDblDotOpt (gmoHandle_t pgmo, void *optptr, const char *dotopt, double optvals[]);
extern void  gmoEvalErrorMsg (gmoHandle_t pgmo, int domsg);
extern void  gmoEvalErrorMsg_MT (gmoHandle_t pgmo, int domsg, int tidx);
extern void  gmoEvalErrorMaskLevel (gmoHandle_t pgmo, int MaskLevel);
extern void  gmoEvalErrorMaskLevel_MT (gmoHandle_t pgmo, int MaskLevel, int tidx);
extern int  gmoEvalNewPoint (gmoHandle_t pgmo, const double x[]);
extern void  gmoSetExtFuncs (gmoHandle_t pgmo, void *extfunmgr);
extern int  gmoEvalFunc (gmoHandle_t pgmo, int si, const double x[], double *OUTPUT, int *OUTPUT);
extern int  gmoEvalFunc_MT (gmoHandle_t pgmo, int si, const double x[], double *OUTPUT, int *OUTPUT, int tidx);
extern int  gmoEvalFuncInt (gmoHandle_t pgmo, int si, double *OUTPUT, int *OUTPUT);
extern int  gmoEvalFuncInt_MT (gmoHandle_t pgmo, int si, double *OUTPUT, int *OUTPUT, int tidx);
extern int  gmoEvalFuncNL (gmoHandle_t pgmo, int si, const double x[], double *OUTPUT, int *OUTPUT);
extern int  gmoEvalFuncNL_MT (gmoHandle_t pgmo, int si, const double x[], double *OUTPUT, int *OUTPUT, int tidx);
extern int  gmoEvalFuncObj (gmoHandle_t pgmo, const double x[], double *OUTPUT, int *OUTPUT);
extern int  gmoEvalFuncNLObj (gmoHandle_t pgmo, const double x[], double *OUTPUT, int *OUTPUT);
extern int  gmoEvalFuncInterval (gmoHandle_t pgmo, int si, const double xmin[], const double xmax[], double *OUTPUT, double *OUTPUT, int *OUTPUT);
extern int  gmoEvalFuncInterval_MT (gmoHandle_t pgmo, int si, const double xmin[], const double xmax[], double *OUTPUT, double *OUTPUT, int *OUTPUT, int tidx);
extern int  gmoEvalFuncNLCluster (gmoHandle_t pgmo, int si, const double x[], const int cluster[], int ncluster, double fnl[], int *OUTPUT);
extern int  gmoEvalFuncNLCluster_MT (gmoHandle_t pgmo, int si, const double x[], const int cluster[], int ncluster, double fnl[], int *OUTPUT, int tidx);
extern int  gmoEvalGrad (gmoHandle_t pgmo, int si, const double x[], double *OUTPUT, double g[], double *OUTPUT, int *OUTPUT);
extern int  gmoEvalGrad_MT (gmoHandle_t pgmo, int si, const double x[], double *OUTPUT, double g[], double *OUTPUT, int *OUTPUT, int tidx);
extern int  gmoEvalGradNL (gmoHandle_t pgmo, int si, const double x[], double *OUTPUT, double g[], double *OUTPUT, int *OUTPUT);
extern int  gmoEvalGradNL_MT (gmoHandle_t pgmo, int si, const double x[], double *OUTPUT, double g[], double *OUTPUT, int *OUTPUT, int tidx);
extern int  gmoEvalGradObj (gmoHandle_t pgmo, const double x[], double *OUTPUT, double g[], double *OUTPUT, int *OUTPUT);
extern int  gmoEvalGradNLObj (gmoHandle_t pgmo, const double x[], double *OUTPUT, double g[], double *OUTPUT, int *OUTPUT);
extern int  gmoEvalGradInterval (gmoHandle_t pgmo, int si, const double xmin[], const double xmax[], double *OUTPUT, double *OUTPUT, double gmin[], double gmax[], int *OUTPUT);
extern int  gmoEvalGradInterval_MT (gmoHandle_t pgmo, int si, const double xmin[], const double xmax[], double *OUTPUT, double *OUTPUT, double gmin[], double gmax[], int *OUTPUT, int tidx);
extern int  gmoEvalGradNLUpdate (gmoHandle_t pgmo, double rhsdelta[], int dojacupd, int *OUTPUT);
extern int  gmoGetJacUpdate (gmoHandle_t pgmo, int rowidx[], int colidx[], double jacval[], int *INOUT);
extern int  gmoHessLoad (gmoHandle_t pgmo, int maxJacMult, int *INOUT, int *INOUT);
extern int  gmoHessUnload (gmoHandle_t pgmo);
extern int  gmoHessDim (gmoHandle_t pgmo, int si);
extern int  gmoHessNz (gmoHandle_t pgmo, int si);
extern int  gmoHessStruct (gmoHandle_t pgmo, int si, int hridx[], int hcidx[], int *OUTPUT, int *OUTPUT);
extern int  gmoHessValue (gmoHandle_t pgmo, int si, int hridx[], int hcidx[], int *OUTPUT, int *OUTPUT, const double x[], double hessval[], int *OUTPUT);
extern int  gmoHessVec (gmoHandle_t pgmo, int si, const double x[], const double dx[], double Wdx[], int *OUTPUT);
extern int  gmoHessLagStruct (gmoHandle_t pgmo, int WRindex[], int WCindex[]);
extern int  gmoHessLagValue (gmoHandle_t pgmo, const double x[], const double pi[], double w[], double objweight, double conweight, int *OUTPUT);
extern int  gmoHessLagVec (gmoHandle_t pgmo, const double x[], const double pi[], const double dx[], double Wdx[], double objweight, double conweight, int *OUTPUT);
extern double  gmoGetHeadnTail (gmoHandle_t pgmo, int htrec);
extern void  gmoSetHeadnTail (gmoHandle_t pgmo, int htrec, double dval);
extern int  gmoSetSolution2 (gmoHandle_t pgmo, const double x[], const double pi[]);
extern int  gmoSetSolution (gmoHandle_t pgmo, const double x[], const double dj[], const double pi[], const double e[]);
extern int  gmoSetSolution8 (gmoHandle_t pgmo, const double x[], const double dj[], const double pi[], const double e[], int xb[], int xs[], int yb[], int ys[]);
extern int  gmoSetSolutionFixer (gmoHandle_t pgmo, int modelstathint, const double x[], const double pi[], const int xb[], const int yb[], double infTol, double optTol);
extern int  gmoGetSolutionVarRec (gmoHandle_t pgmo, int sj, double *OUTPUT, double *OUTPUT, int *OUTPUT, int *OUTPUT);
extern int  gmoSetSolutionVarRec (gmoHandle_t pgmo, int sj, double vl, double vmarg, int vstat, int vcstat);
extern int  gmoGetSolutionEquRec (gmoHandle_t pgmo, int si, double *OUTPUT, double *OUTPUT, int *OUTPUT, int *OUTPUT);
extern int  gmoSetSolutionEquRec (gmoHandle_t pgmo, int si, double el, double emarg, int estat, int ecstat);
extern int  gmoSetSolutionStatus (gmoHandle_t pgmo, int xb[], int xs[], int yb[], int ys[]);
extern void  gmoCompleteObjective (gmoHandle_t pgmo, double locobjval);
extern int  gmoCompleteSolution (gmoHandle_t pgmo);
extern int  gmoLoadSolutionLegacy (gmoHandle_t pgmo);
extern int  gmoUnloadSolutionLegacy (gmoHandle_t pgmo);
extern int  gmoLoadSolutionGDX (gmoHandle_t pgmo, const char *gdxfname, int dorows, int docols, int doht);
extern int  gmoUnloadSolutionGDX (gmoHandle_t pgmo, const char *gdxfname, int dorows, int docols, int doht);
extern int  gmoPrepareAllSolToGDX (gmoHandle_t pgmo, const char *gdxfname, void *scengdx, int dictid);
extern int  gmoAddSolutionToGDX (gmoHandle_t pgmo, const char *scenuel_in[]);
extern int  gmoWriteSolDone (gmoHandle_t pgmo, char *msg_out);
extern int  gmoGetVarTypeTxt (gmoHandle_t pgmo, int sj, char *s_out);
extern int  gmoGetEquTypeTxt (gmoHandle_t pgmo, int si, char *s_out);
extern int  gmoGetSolveStatusTxt (gmoHandle_t pgmo, int solvestat, char *s_out);
extern int  gmoGetModelStatusTxt (gmoHandle_t pgmo, int modelstat, char *s_out);
extern int  gmoGetModelTypeTxt (gmoHandle_t pgmo, char *s_out);
extern int  gmoGetHeadNTailTxt (gmoHandle_t pgmo, int htrec, char *s_out);
extern double  gmoMemUsed (gmoHandle_t pgmo);
extern double  gmoPeakMemUsed (gmoHandle_t pgmo);
extern int  gmoSetNLObject (gmoHandle_t pgmo, void *nlobject, void *nlpool);
extern int  gmoDumpQMakerGDX (gmoHandle_t pgmo, const char *gdxfname);
extern int  gmoGetVarEquMap (gmoHandle_t pgmo, int maptype, void *optptr, int strict, int *INOUT, int rowindex[], int colindex[], int mapval[]);
extern int  gmoGetIndicatorMap (gmoHandle_t pgmo, void *optptr, int indicstrict, int *INOUT, int rowindic[], int colindic[], int indiconval[]);
extern int  gmoCrudeness (gmoHandle_t pgmo);
extern int  gmoDirtyExtractDefVar (gmoHandle_t pgmo, int *OUTPUT, int *OUTPUT, int *OUTPUT, int colno[], int rowno[], double defpiv[]);
extern int  gmoDirtyGetRowFNLInstr (gmoHandle_t pgmo, int si, int *OUTPUT, int opcode[], int field[]);
extern int  gmoDirtyGetObjFNLInstr (gmoHandle_t pgmo, int *OUTPUT, int opcode[], int field[]);
extern int  gmoDirtySetRowFNLInstr (gmoHandle_t pgmo, int si, int len, const int opcode[], const int field[], void *nlpool, double nlpoolvec[], int len2);
extern void * gmoDict (gmoHandle_t pgmo);
extern void gmoDictSet (gmoHandle_t pgmo, const void *x);
extern char * gmoNameModel (gmoHandle_t pgmo, char *_oss_buf);
extern void gmoNameModelSet (gmoHandle_t pgmo, const char *x);
extern int  gmoModelSeqNr (gmoHandle_t pgmo);
extern void gmoModelSeqNrSet (gmoHandle_t pgmo, const int x);
extern int  gmoModelType (gmoHandle_t pgmo);
extern void gmoModelTypeSet (gmoHandle_t pgmo, const int x);
extern int  gmoSense (gmoHandle_t pgmo);
extern void gmoSenseSet (gmoHandle_t pgmo, const int x);
extern int  gmoIsQP (gmoHandle_t pgmo);
extern int  gmoOptFile (gmoHandle_t pgmo);
extern void gmoOptFileSet (gmoHandle_t pgmo, const int x);
extern int  gmoDictionary (gmoHandle_t pgmo);
extern void gmoDictionarySet (gmoHandle_t pgmo, const int x);
extern int  gmoScaleOpt (gmoHandle_t pgmo);
extern void gmoScaleOptSet (gmoHandle_t pgmo, const int x);
extern int  gmoPriorOpt (gmoHandle_t pgmo);
extern void gmoPriorOptSet (gmoHandle_t pgmo, const int x);
extern int  gmoHaveBasis (gmoHandle_t pgmo);
extern void gmoHaveBasisSet (gmoHandle_t pgmo, const int x);
extern int  gmoModelStat (gmoHandle_t pgmo);
extern void gmoModelStatSet (gmoHandle_t pgmo, const int x);
extern int  gmoSolveStat (gmoHandle_t pgmo);
extern void gmoSolveStatSet (gmoHandle_t pgmo, const int x);
extern int  gmoObjStyle (gmoHandle_t pgmo);
extern void gmoObjStyleSet (gmoHandle_t pgmo, const int x);
extern int  gmoInterface (gmoHandle_t pgmo);
extern void gmoInterfaceSet (gmoHandle_t pgmo, const int x);
extern int  gmoIndexBase (gmoHandle_t pgmo);
extern void gmoIndexBaseSet (gmoHandle_t pgmo, const int x);
extern int  gmoObjReform (gmoHandle_t pgmo);
extern void gmoObjReformSet (gmoHandle_t pgmo, const int x);
extern int  gmoEmptyOut (gmoHandle_t pgmo);
extern void gmoEmptyOutSet (gmoHandle_t pgmo, const int x);
extern int  gmoIgnXCDeriv (gmoHandle_t pgmo);
extern void gmoIgnXCDerivSet (gmoHandle_t pgmo, const int x);
extern int  gmoUseQ (gmoHandle_t pgmo);
extern void gmoUseQSet (gmoHandle_t pgmo, const int x);
extern int  gmoAltBounds (gmoHandle_t pgmo);
extern void gmoAltBoundsSet (gmoHandle_t pgmo, const int x);
extern int  gmoAltRHS (gmoHandle_t pgmo);
extern void gmoAltRHSSet (gmoHandle_t pgmo, const int x);
extern int  gmoAltVarTypes (gmoHandle_t pgmo);
extern void gmoAltVarTypesSet (gmoHandle_t pgmo, const int x);
extern int  gmoForceLinear (gmoHandle_t pgmo);
extern void gmoForceLinearSet (gmoHandle_t pgmo, const int x);
extern int  gmoForceCont (gmoHandle_t pgmo);
extern void gmoForceContSet (gmoHandle_t pgmo, const int x);
extern int  gmoPermuteCols (gmoHandle_t pgmo);
extern void gmoPermuteColsSet (gmoHandle_t pgmo, const int x);
extern int  gmoPermuteRows (gmoHandle_t pgmo);
extern void gmoPermuteRowsSet (gmoHandle_t pgmo, const int x);
extern double  gmoPinf (gmoHandle_t pgmo);
extern void gmoPinfSet (gmoHandle_t pgmo, const double x);
extern double  gmoMinf (gmoHandle_t pgmo);
extern void gmoMinfSet (gmoHandle_t pgmo, const double x);
extern double  gmoQNaN (gmoHandle_t pgmo);
extern double  gmoValNA (gmoHandle_t pgmo);
extern int  gmoValNAInt (gmoHandle_t pgmo);
extern double  gmoValUndf (gmoHandle_t pgmo);
extern int  gmoM (gmoHandle_t pgmo);
extern int  gmoQM (gmoHandle_t pgmo);
extern int  gmoNLM (gmoHandle_t pgmo);
extern int  gmoN (gmoHandle_t pgmo);
extern int  gmoNLN (gmoHandle_t pgmo);
extern int  gmoNDisc (gmoHandle_t pgmo);
extern int  gmoNFixed (gmoHandle_t pgmo);
extern int  gmoNZ (gmoHandle_t pgmo);
extern int  gmoNLNZ (gmoHandle_t pgmo);
extern int  gmoLNZ (gmoHandle_t pgmo);
extern int  gmoQNZ (gmoHandle_t pgmo);
extern int  gmoGNLNZ (gmoHandle_t pgmo);
extern int  gmoMaxQNZ (gmoHandle_t pgmo);
extern int  gmoObjNZ (gmoHandle_t pgmo);
extern int  gmoObjNLNZ (gmoHandle_t pgmo);
extern int  gmoObjQNZ (gmoHandle_t pgmo);
extern int  gmoObjQDiagNZ (gmoHandle_t pgmo);
extern int  gmoNLConst (gmoHandle_t pgmo);
extern void gmoNLConstSet (gmoHandle_t pgmo, const int x);
extern int  gmoNLCodeSize (gmoHandle_t pgmo);
extern void gmoNLCodeSizeSet (gmoHandle_t pgmo, const int x);
extern int  gmoNLCodeSizeMaxRow (gmoHandle_t pgmo);
extern int  gmoObjVar (gmoHandle_t pgmo);
extern void gmoObjVarSet (gmoHandle_t pgmo, const int x);
extern int  gmoObjRow (gmoHandle_t pgmo);
extern int  gmoGetObjOrder (gmoHandle_t pgmo);
extern double  gmoObjConst (gmoHandle_t pgmo);
extern double  gmoObjJacVal (gmoHandle_t pgmo);
extern int  gmoEvalErrorMethod (gmoHandle_t pgmo);
extern void gmoEvalErrorMethodSet (gmoHandle_t pgmo, const int x);
extern int  gmoEvalMaxThreads (gmoHandle_t pgmo);
extern void gmoEvalMaxThreadsSet (gmoHandle_t pgmo, const int x);
extern int  gmoEvalFuncCount (gmoHandle_t pgmo);
extern double  gmoEvalFuncTimeUsed (gmoHandle_t pgmo);
extern int  gmoEvalGradCount (gmoHandle_t pgmo);
extern double  gmoEvalGradTimeUsed (gmoHandle_t pgmo);
extern int  gmoHessMaxDim (gmoHandle_t pgmo);
extern int  gmoHessMaxNz (gmoHandle_t pgmo);
extern int  gmoHessLagDim (gmoHandle_t pgmo);
extern int  gmoHessLagNz (gmoHandle_t pgmo);
extern int  gmoHessLagDiagNz (gmoHandle_t pgmo);
extern char * gmoNameOptFile (gmoHandle_t pgmo, char *_oss_buf);
extern void gmoNameOptFileSet (gmoHandle_t pgmo, const char *x);
extern char * gmoNameSolFile (gmoHandle_t pgmo, char *_oss_buf);
extern void gmoNameSolFileSet (gmoHandle_t pgmo, const char *x);
extern char * gmoNameXLib (gmoHandle_t pgmo, char *_oss_buf);
extern void gmoNameXLibSet (gmoHandle_t pgmo, const char *x);
extern char * gmoNameDict (gmoHandle_t pgmo, char *_oss_buf);
extern void gmoNameDictSet (gmoHandle_t pgmo, const char *x);
extern char * gmoNameInput (gmoHandle_t pgmo, char *_oss_buf);
extern void * gmoPPool (gmoHandle_t pgmo);
extern void * gmoIOMutex (gmoHandle_t pgmo);

%include "gclgms_swig.h"
