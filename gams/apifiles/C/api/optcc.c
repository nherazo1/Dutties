/*  C code generated by apiwrapper for GAMS Version 24.0.2 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <ctype.h>
#include <errno.h>

#define OPT_MAIN
#include "optcc.h"

#if defined(_WIN32)
# include <windows.h>
  static char winErr[] = "Windows error";
  typedef HINSTANCE soHandle_t;
#else
# include <unistd.h>
# include <dlfcn.h>
# include <sys/utsname.h>
  typedef void *soHandle_t;
#endif

static soHandle_t h;
static int isLoaded = 0;
static int objectCount = 0;
static int ScreenIndicator = 1;
static int ExceptionIndicator = 0;
static int ExitIndicator = 1;
static optErrorCallback_t ErrorCallBack = NULL;
static int APIErrorCount = 0;

#if defined(HAVE_MUTEX)
#include "gcmt.h"
static GC_mutex_t libMutex;
static GC_mutex_t objMutex;
static GC_mutex_t exceptMutex;

static int MutexIsInitialized = 0;

void optInitMutexes(void)
{
  int rc;
  if (0==MutexIsInitialized) {
    rc = GC_mutex_init (&libMutex);     assert(0==rc);
    rc = GC_mutex_init (&objMutex);     assert(0==rc);
    rc = GC_mutex_init (&exceptMutex);  assert(0==rc);
    MutexIsInitialized = 1;
  }
}

void optFiniMutexes(void)
{
  if (1==MutexIsInitialized) {
    GC_mutex_delete (&libMutex);
    GC_mutex_delete (&objMutex);
    GC_mutex_delete (&exceptMutex);
    MutexIsInitialized = 0;
  }
}
#  define lock(MUTEX)   if(MutexIsInitialized) GC_mutex_lock (&MUTEX);
#  define unlock(MUTEX) if(MutexIsInitialized) GC_mutex_unlock (&MUTEX);
#else
#  define lock(MUTEX)   ;
#  define unlock(MUTEX) ;
void optInitMutexes(void) {}
void optFiniMutexes(void) {}
#endif

typedef void (OPT_CALLCONV *XCreate_t) (optHandle_t *popt);
static OPT_FUNCPTR(XCreate);
typedef void (OPT_CALLCONV *XFree_t)   (optHandle_t *popt);
static OPT_FUNCPTR(XFree);
typedef int (OPT_CALLCONV *XAPIVersion_t) (int api, char *msg, int *cl);
static OPT_FUNCPTR(XAPIVersion);
typedef int (OPT_CALLCONV *XCheck_t) (const char *ep, int nargs, int s[], char *msg);
static OPT_FUNCPTR(XCheck);


typedef void (OPT_CALLCONV *optSetLoadPath_t) (const char *s);
OPT_FUNCPTR(optSetLoadPath);
typedef void (OPT_CALLCONV *optGetLoadPath_t) (char *s);
OPT_FUNCPTR(optGetLoadPath);

#define printNoReturn(f,nargs) { \
  char d_msgBuf[256]; \
  strcpy(d_msgBuf,#f " could not be loaded: "); \
  XCheck(#f,nargs,d_s,d_msgBuf+strlen(d_msgBuf)); \
  optErrorHandling(d_msgBuf); \
}
#define printAndReturn(f,nargs,rtype) { \
  char d_msgBuf[256]; \
  strcpy(d_msgBuf,#f " could not be loaded: "); \
  XCheck(#f,nargs,d_s,d_msgBuf+strlen(d_msgBuf)); \
  optErrorHandling(d_msgBuf); \
  return (rtype) 0; \
}

int  OPT_CALLCONV d_optReadDefinition (optHandle_t popt, const char *fn)
{ int d_s[]={3,11}; printAndReturn(optReadDefinition,1,int ) }

int  OPT_CALLCONV d_optReadParameterFile (optHandle_t popt, const char *fn)
{ int d_s[]={3,11}; printAndReturn(optReadParameterFile,1,int ) }

void  OPT_CALLCONV d_optReadFromStr (optHandle_t popt, const char *s)
{ int d_s[]={0,11}; printNoReturn(optReadFromStr,1) }

int  OPT_CALLCONV d_optWriteParameterFile (optHandle_t popt, const char *fn)
{ int d_s[]={3,11}; printAndReturn(optWriteParameterFile,1,int ) }

void  OPT_CALLCONV d_optClearMessages (optHandle_t popt)
{ int d_s[]={0}; printNoReturn(optClearMessages,0) }

void  OPT_CALLCONV d_optAddMessage (optHandle_t popt, const char *info)
{ int d_s[]={0,11}; printNoReturn(optAddMessage,1) }

void  OPT_CALLCONV d_optGetMessage (optHandle_t popt, int NrMsg, char *info, int *iType)
{ int d_s[]={0,3,12,4}; printNoReturn(optGetMessage,3) }

void  OPT_CALLCONV d_optResetAll (optHandle_t popt)
{ int d_s[]={0}; printNoReturn(optResetAll,0) }

void  OPT_CALLCONV d_optResetAllRecent (optHandle_t popt)
{ int d_s[]={0}; printNoReturn(optResetAllRecent,0) }

void  OPT_CALLCONV d_optResetRecentChanges (optHandle_t popt)
{ int d_s[]={0}; printNoReturn(optResetRecentChanges,0) }

void  OPT_CALLCONV d_optShowHelp (optHandle_t popt, const char *HlpID)
{ int d_s[]={0,11}; printNoReturn(optShowHelp,1) }

int  OPT_CALLCONV d_optResetNr (optHandle_t popt, int ANr)
{ int d_s[]={3,3}; printAndReturn(optResetNr,1,int ) }

int  OPT_CALLCONV d_optFindStr (optHandle_t popt, const char *AName, int *ANr, int *ARefNr)
{ int d_s[]={3,11,4,4}; printAndReturn(optFindStr,3,int ) }

int  OPT_CALLCONV d_optGetInfoNr (optHandle_t popt, int ANr, int *ADefined, int *ADefinedR, int *ARefNr, int *ADataType, int *AOptType, int *ASubType)
{ int d_s[]={3,3,4,4,4,4,4,4}; printAndReturn(optGetInfoNr,7,int ) }

int  OPT_CALLCONV d_optGetValuesNr (optHandle_t popt, int ANr, char *ASName, int *AIVal, double *ADVal, char *ASVal)
{ int d_s[]={3,3,12,4,14,12}; printAndReturn(optGetValuesNr,5,int ) }

int  OPT_CALLCONV d_optSetValuesNr (optHandle_t popt, int ANr, int AIVal, double ADVal, const char *ASVal)
{ int d_s[]={3,3,3,13,11}; printAndReturn(optSetValuesNr,4,int ) }

int  OPT_CALLCONV d_optSetValues2Nr (optHandle_t popt, int ANr, int AIVal, double ADVal, const char *ASVal)
{ int d_s[]={3,3,3,13,11}; printAndReturn(optSetValues2Nr,4,int ) }

void  OPT_CALLCONV d_optVersion (optHandle_t popt, char *sversion)
{ int d_s[]={0,12}; printNoReturn(optVersion,1) }

void  OPT_CALLCONV d_optDefinitionFile (optHandle_t popt, char *sfilename)
{ int d_s[]={0,12}; printNoReturn(optDefinitionFile,1) }

int  OPT_CALLCONV d_optGetFromAnyStrList (optHandle_t popt, int idash, char *skey, char *sval)
{ int d_s[]={3,3,12,12}; printAndReturn(optGetFromAnyStrList,3,int ) }

int  OPT_CALLCONV d_optGetFromListStr (optHandle_t popt, const char *skey, char *sval)
{ int d_s[]={3,11,12}; printAndReturn(optGetFromListStr,2,int ) }

int  OPT_CALLCONV d_optListCountStr (optHandle_t popt, const char *skey)
{ int d_s[]={3,11}; printAndReturn(optListCountStr,1,int ) }

int  OPT_CALLCONV d_optReadFromListStr (optHandle_t popt, const char *skey, int iPos, char *sval)
{ int d_s[]={3,11,3,12}; printAndReturn(optReadFromListStr,3,int ) }

int  OPT_CALLCONV d_optSynonymCount (optHandle_t popt)
{ int d_s[]={3}; printAndReturn(optSynonymCount,0,int ) }

int  OPT_CALLCONV d_optGetSynonym (optHandle_t popt, int NrSyn, char *SSyn, char *SName)
{ int d_s[]={3,3,12,12}; printAndReturn(optGetSynonym,3,int ) }

void  OPT_CALLCONV d_optEchoSet (optHandle_t popt, int AIVal)
{ int d_s[]={0,3}; printNoReturn(optEchoSet,1) }

int  OPT_CALLCONV d_optEOLOnlySet (optHandle_t popt, int AIVal)
{ int d_s[]={3,3}; printAndReturn(optEOLOnlySet,1,int ) }

void  OPT_CALLCONV d_optNoBoundsSet (optHandle_t popt, int AIVal)
{ int d_s[]={0,3}; printNoReturn(optNoBoundsSet,1) }

void  OPT_CALLCONV d_optErrorCount (optHandle_t popt, int *iErrors, int *iWarnings)
{ int d_s[]={0,4,4}; printNoReturn(optErrorCount,2) }

int  OPT_CALLCONV d_optGetBoundsInt (optHandle_t popt, int ANr, int *ilval, int *ihval, int *idval)
{ int d_s[]={3,3,4,4,4}; printAndReturn(optGetBoundsInt,4,int ) }

int  OPT_CALLCONV d_optGetBoundsDbl (optHandle_t popt, int ANr, double *dlval, double *dhval, double *ddval)
{ int d_s[]={3,3,14,14,14}; printAndReturn(optGetBoundsDbl,4,int ) }

int  OPT_CALLCONV d_optGetDefaultStr (optHandle_t popt, int ANr, char *sval)
{ int d_s[]={3,3,12}; printAndReturn(optGetDefaultStr,2,int ) }

int  OPT_CALLCONV d_optGetIntNr (optHandle_t popt, int ANr, int *AIVal)
{ int d_s[]={3,3,4}; printAndReturn(optGetIntNr,2,int ) }

int  OPT_CALLCONV d_optGetInt2Nr (optHandle_t popt, int ANr, int *AIVal)
{ int d_s[]={3,3,4}; printAndReturn(optGetInt2Nr,2,int ) }

int  OPT_CALLCONV d_optSetIntNr (optHandle_t popt, int ANr, int AIVal)
{ int d_s[]={3,3,3}; printAndReturn(optSetIntNr,2,int ) }

int  OPT_CALLCONV d_optSetInt2Nr (optHandle_t popt, int ANr, int AIVal)
{ int d_s[]={3,3,3}; printAndReturn(optSetInt2Nr,2,int ) }

int  OPT_CALLCONV d_optGetStrNr (optHandle_t popt, int ANr, char *ASVal)
{ int d_s[]={3,3,12}; printAndReturn(optGetStrNr,2,int ) }

int  OPT_CALLCONV d_optGetOptHelpNr (optHandle_t popt, int ANr, char *AName, int *AHc, int *AGroup)
{ int d_s[]={3,3,12,4,4}; printAndReturn(optGetOptHelpNr,4,int ) }

int  OPT_CALLCONV d_optGetEnumHelp (optHandle_t popt, int ANr, int AOrd, int *AHc, char *AHelpStr)
{ int d_s[]={3,3,3,4,12}; printAndReturn(optGetEnumHelp,4,int ) }

int  OPT_CALLCONV d_optGetEnumStrNr (optHandle_t popt, int ANr, char *ASVal, int *AOrd)
{ int d_s[]={3,3,12,4}; printAndReturn(optGetEnumStrNr,3,int ) }

int  OPT_CALLCONV d_optGetEnumCount (optHandle_t popt, int ANr, int *ACount)
{ int d_s[]={3,3,4}; printAndReturn(optGetEnumCount,2,int ) }

int  OPT_CALLCONV d_optGetEnumValue (optHandle_t popt, int ANr, int AOrd, int *AValInt, char *AValStr)
{ int d_s[]={3,3,3,4,12}; printAndReturn(optGetEnumValue,4,int ) }

int  OPT_CALLCONV d_optGetStr2Nr (optHandle_t popt, int ANr, char *ASVal)
{ int d_s[]={3,3,12}; printAndReturn(optGetStr2Nr,2,int ) }

int  OPT_CALLCONV d_optSetStrNr (optHandle_t popt, int ANr, const char *ASVal)
{ int d_s[]={3,3,11}; printAndReturn(optSetStrNr,2,int ) }

int  OPT_CALLCONV d_optSetStr2Nr (optHandle_t popt, int ANr, const char *ASVal)
{ int d_s[]={3,3,11}; printAndReturn(optSetStr2Nr,2,int ) }

int  OPT_CALLCONV d_optGetDblNr (optHandle_t popt, int ANr, double *ADVal)
{ int d_s[]={3,3,14}; printAndReturn(optGetDblNr,2,int ) }

int  OPT_CALLCONV d_optGetDbl2Nr (optHandle_t popt, int ANr, double *ADVal)
{ int d_s[]={3,3,14}; printAndReturn(optGetDbl2Nr,2,int ) }

int  OPT_CALLCONV d_optSetDblNr (optHandle_t popt, int ANr, double ADVal)
{ int d_s[]={3,3,13}; printAndReturn(optSetDblNr,2,int ) }

int  OPT_CALLCONV d_optSetDbl2Nr (optHandle_t popt, int ANr, double ADVal)
{ int d_s[]={3,3,13}; printAndReturn(optSetDbl2Nr,2,int ) }

int  OPT_CALLCONV d_optGetValStr (optHandle_t popt, const char *AName, char *ASVal)
{ int d_s[]={3,11,12}; printAndReturn(optGetValStr,2,int ) }

int  OPT_CALLCONV d_optGetVal2Str (optHandle_t popt, const char *AName, char *ASVal)
{ int d_s[]={3,11,12}; printAndReturn(optGetVal2Str,2,int ) }

int  OPT_CALLCONV d_optGetNameNr (optHandle_t popt, int ANr, char *ASName)
{ int d_s[]={3,3,12}; printAndReturn(optGetNameNr,2,int ) }

int  OPT_CALLCONV d_optGetDefinedNr (optHandle_t popt, int ANr, int *AIVal)
{ int d_s[]={3,3,4}; printAndReturn(optGetDefinedNr,2,int ) }

int  OPT_CALLCONV d_optGetHelpNr (optHandle_t popt, int ANr, char *ASOpt, char *ASHelp)
{ int d_s[]={3,3,12,12}; printAndReturn(optGetHelpNr,3,int ) }

int  OPT_CALLCONV d_optGetGroupNr (optHandle_t popt, int ANr, char *AName, int *AGroup, int *AHc, char *AHelp)
{ int d_s[]={3,3,12,4,4,12}; printAndReturn(optGetGroupNr,5,int ) }

int  OPT_CALLCONV d_optGetGroupGrpNr (optHandle_t popt, int AGroup)
{ int d_s[]={3,3}; printAndReturn(optGetGroupGrpNr,1,int ) }

int  OPT_CALLCONV d_optGetOptGroupNr (optHandle_t popt, int ANr)
{ int d_s[]={3,3}; printAndReturn(optGetOptGroupNr,1,int ) }

int  OPT_CALLCONV d_optGetDotOptNr (optHandle_t popt, int ANr, char *VEName, int *AObjNr, int *ADim, double *AValue)
{ int d_s[]={3,3,12,4,4,14}; printAndReturn(optGetDotOptNr,5,int ) }

int  OPT_CALLCONV d_optGetDotOptUel (optHandle_t popt, int ANr, int ADim, char *AUEL)
{ int d_s[]={3,3,3,12}; printAndReturn(optGetDotOptUel,3,int ) }

int  OPT_CALLCONV d_optGetVarEquMapNr (optHandle_t popt, int maptype, int ANr, char *EquName, char *VarName, int *EquDim, int *VarDim, int *AValue)
{ int d_s[]={3,3,3,12,12,4,4,4}; printAndReturn(optGetVarEquMapNr,7,int ) }

int  OPT_CALLCONV d_optGetEquVarEquMapNr (optHandle_t popt, int maptype, int ANr, int ADim, char *AIndex)
{ int d_s[]={3,3,3,3,12}; printAndReturn(optGetEquVarEquMapNr,4,int ) }

int  OPT_CALLCONV d_optGetVarVarEquMapNr (optHandle_t popt, int maptype, int ANr, int ADim, char *AIndex)
{ int d_s[]={3,3,3,3,12}; printAndReturn(optGetVarVarEquMapNr,4,int ) }

int  OPT_CALLCONV d_optVarEquMapCount (optHandle_t popt, int maptype, int *ANrErrors)
{ int d_s[]={3,3,4}; printAndReturn(optVarEquMapCount,2,int ) }

int  OPT_CALLCONV d_optGetIndicatorNr (optHandle_t popt, int ANr, char *EquName, char *VarName, int *EquDim, int *VarDim, int *AValue)
{ int d_s[]={3,3,12,12,4,4,4}; printAndReturn(optGetIndicatorNr,6,int ) }

int  OPT_CALLCONV d_optGetEquIndicatorNr (optHandle_t popt, int ANr, int ADim, char *AIndex)
{ int d_s[]={3,3,3,12}; printAndReturn(optGetEquIndicatorNr,3,int ) }

int  OPT_CALLCONV d_optGetVarIndicatorNr (optHandle_t popt, int ANr, int ADim, char *AIndex)
{ int d_s[]={3,3,3,12}; printAndReturn(optGetVarIndicatorNr,3,int ) }

int  OPT_CALLCONV d_optIndicatorCount (optHandle_t popt, int *ANrErrors)
{ int d_s[]={3,4}; printAndReturn(optIndicatorCount,1,int ) }

int  OPT_CALLCONV d_optDotOptCount (optHandle_t popt, int *ANrErrors)
{ int d_s[]={3,4}; printAndReturn(optDotOptCount,1,int ) }

int  OPT_CALLCONV d_optSetRefNr (optHandle_t popt, int ANr, int ARefNr)
{ int d_s[]={3,3,3}; printAndReturn(optSetRefNr,2,int ) }

int  OPT_CALLCONV d_optSetRefNrStr (optHandle_t popt, const char *AOpt, int ARefNr)
{ int d_s[]={3,11,3}; printAndReturn(optSetRefNrStr,2,int ) }

int  OPT_CALLCONV d_optGetConstName (optHandle_t popt, int cgroup, int cindex, char *cname)
{ int d_s[]={3,3,3,12}; printAndReturn(optGetConstName,3,int ) }

int  OPT_CALLCONV d_optGetTypeName (optHandle_t popt, int TNr, char *sTName)
{ int d_s[]={3,3,12}; printAndReturn(optGetTypeName,2,int ) }

int  OPT_CALLCONV d_optLookUp (optHandle_t popt, const char *AOpt)
{ int d_s[]={3,11}; printAndReturn(optLookUp,1,int ) }

void  OPT_CALLCONV d_optReadFromPChar (optHandle_t popt, char *p)
{ int d_s[]={0,10}; printNoReturn(optReadFromPChar,1) }

int  OPT_CALLCONV d_optGetNameOpt (optHandle_t popt, const char *ASVal, char *solver, int *opt)
{ int d_s[]={3,11,12,4}; printAndReturn(optGetNameOpt,3,int ) }

int  OPT_CALLCONV d_optGetDefinedStr (optHandle_t popt, const char *AName)
{ int d_s[]={15,11}; printAndReturn(optGetDefinedStr,1,int ) }

int  OPT_CALLCONV d_optGetIntStr (optHandle_t popt, const char *AName)
{ int d_s[]={3,11}; printAndReturn(optGetIntStr,1,int ) }

double  OPT_CALLCONV d_optGetDblStr (optHandle_t popt, const char *AName)
{ int d_s[]={13,11}; printAndReturn(optGetDblStr,1,double ) }

char * OPT_CALLCONV d_optGetStrStr (optHandle_t popt, const char *AName, char *buf)
{ int d_s[]={12,11}; printAndReturn(optGetStrStr,1,char *) }

void  OPT_CALLCONV d_optSetIntStr (optHandle_t popt, const char *AName, int AIVal)
{ int d_s[]={0,11,3}; printNoReturn(optSetIntStr,2) }

void  OPT_CALLCONV d_optSetDblStr (optHandle_t popt, const char *AName, double ADVal)
{ int d_s[]={0,11,13}; printNoReturn(optSetDblStr,2) }

void  OPT_CALLCONV d_optSetStrStr (optHandle_t popt, const char *AName, const char *ASVal)
{ int d_s[]={0,11,11}; printNoReturn(optSetStrStr,2) }

int  OPT_CALLCONV d_optCount (optHandle_t popt)
{ int d_s[]={3}; printAndReturn(optCount,0,int ) }

int  OPT_CALLCONV d_optMessageCount (optHandle_t popt)
{ int d_s[]={3}; printAndReturn(optMessageCount,0,int ) }

int  OPT_CALLCONV d_optGroupCount (optHandle_t popt)
{ int d_s[]={3}; printAndReturn(optGroupCount,0,int ) }

int  OPT_CALLCONV d_optRecentEnabled (optHandle_t popt)
{ int d_s[]={3}; printAndReturn(optRecentEnabled,0,int ) }

void OPT_CALLCONV d_optRecentEnabledSet (optHandle_t popt, const int x)
{ int d_s[]={0,3}; printNoReturn(optRecentEnabledSet,1) }

/* return dirName on success, NULL on failure */
static char *
extractFileDirFileName (const char *fileName, char *dirName, char *fName)
{
  int fileNameLen, shave=0;
  const char *end, *s;
  char *t;

  if (NULL == fileName || NULL == dirName || fName == NULL) {
    return NULL;
  }
  fileNameLen = (int) strlen(fileName);

#if defined(_WIN32)
  /* get the last delimiter */
  for (end = fileName + fileNameLen - 1;
       end >= fileName && '\\' != *end && ':' != *end;  end--);
  /* shave off the trailing delimiter if:
   *  it isn't the first char,
   *  it is a backslash, and
   *  it is not preceded by a delimiter
   */
  if (end > fileName && '\\' == *end
   && (! ('\\' == *(end-1) || ':' == *(end-1)))
     ) {
    end--; shave=1;
  }
#else
  /* non-Windows: implicitly, this is the Unix version */
  /* get the last delimiter */
  for (end = fileName + fileNameLen - 1;
       end >= fileName && '/' != *end;  end--);

  if (end > fileName && '/' == *end) {
    end--; shave=1;
  }
#endif  /* if defined(_WIN32) */

  for (s = fileName, t = dirName;  s <= end;  s++, t++)
    *t = *s;
  *t = '\0';

  if (shave) s++;
  for (t = fName;  s <= fileName + fileNameLen - 1;  s++, t++)
    *t = *s;
  *t = '\0';

  return dirName;
} /* extractFileDirFileName */

static soHandle_t
loadLib (const char *libName, char **errMsg)
{
  soHandle_t h;

#if defined(_WIN32)
  h = LoadLibrary (libName);
  if (NULL == h) {
    *errMsg = winErr;
  }
  else {
    *errMsg = NULL;
  }
#else
  (void) dlerror();
  h = dlopen (libName, RTLD_NOW);
  if (NULL == h) {
    *errMsg = dlerror();
  }
  else {
    *errMsg = NULL;
  }
#endif

  return h;
} /* loadLib */

static int
unLoadLib (soHandle_t hh)
{
  int rc;

#if defined(_WIN32)
  rc = FreeLibrary (hh);
  return ! rc;
#else
  rc = dlclose (hh);
#endif
  return rc;
} /* unLoadLib */

static void *
loadSym (soHandle_t h, const char *sym, char **errMsg)
{
  void *s;
  const char *from;
  char *to;
  const char *tripSym;
  char lcbuf[257];
  char ucbuf[257];
  size_t symLen;
  int trip;

  /* search in this order:
   *  1. lower
   *  2. original
   *  3. upper
   */

  symLen = 0;
  for (trip = 1;  trip <= 3;  trip++) {
    switch (trip) {
    case 1:                             /* lower */
      for (from = sym, to = lcbuf;  *from;  from++, to++) {
        *to = tolower(*from);
      }
      symLen = from - sym;
      lcbuf[symLen] = '\0';
      tripSym = lcbuf;
      break;
    case 2:                             /* original */
      tripSym = sym;
      break;
    case 3:                             /* upper */
      for (from = sym, to = ucbuf;  *from;  from++, to++) {
        *to = toupper(*from);
      }
      ucbuf[symLen] = '\0';
      tripSym = ucbuf;
      break;
    default:
      tripSym = sym;
    } /* end switch */
#if defined(_WIN32)
#  if defined(HAVE_INTPTR_T)
    s = (void *)(intptr_t)GetProcAddress (h, tripSym);
#  else
    s = (void *)GetProcAddress (h, tripSym);
#  endif
    if (NULL != s) {
      return s;
    }
#else
    (void) dlerror();
    s = dlsym (h, tripSym);
    *errMsg = dlerror();
    if (NULL == *errMsg) {
      return s;
    }
#endif
  } /* end loop over symbol name variations */

  return NULL;
} /* loadSym */

/* TNAME = type name, ENAME = exported name */
#if defined(HAVE_INTPTR_T)
#  define LOADIT(TNAME,ENAME) symName = ENAME; TNAME = (TNAME##_t) (intptr_t) loadSym (h, symName, &errMsg); if (NULL == TNAME) goto symMissing
#  define LOADIT_ERR_OK(TNAME,ENAME) symName = ENAME; TNAME = (TNAME##_t) (intptr_t) loadSym (h, symName, &errMsg)
#else
#  define LOADIT(TNAME,ENAME) symName = ENAME; TNAME = (TNAME##_t) loadSym (h, symName, &errMsg); if (NULL == TNAME) goto symMissing
#  define LOADIT_ERR_OK(TNAME,ENAME) symName = ENAME; TNAME = (TNAME##_t) loadSym (h, symName, &errMsg)
#endif

#if ! defined(GMS_DLL_BASENAME)
# define GMS_DLL_BASENAME "optdclib"
#endif
#if defined(_WIN32)
# if ! defined(GMS_DLL_PREFIX)
#  define GMS_DLL_PREFIX ""
# endif
# if ! defined(GMS_DLL_EXTENSION)
#  define GMS_DLL_EXTENSION ".dll"
# endif
# if ! defined(GMS_DLL_SUFFIX)
#  if defined(_WIN64)
#   define GMS_DLL_SUFFIX "64"
#  else
#   define GMS_DLL_SUFFIX ""
#  endif
# endif

#else  /* start non-Windows */

# if ! defined(GMS_DLL_PREFIX)
#  define GMS_DLL_PREFIX "lib"
# endif
# if ! defined(GMS_DLL_EXTENSION)
#  if defined(__APPLE__)
#   define GMS_DLL_EXTENSION ".dylib"
#  else
#   define GMS_DLL_EXTENSION ".so"
#  endif
# endif
# if ! defined(GMS_DLL_SUFFIX)
#  if defined(__WORDSIZE)
#   if 64 == __WORDSIZE
#    define GMS_DLL_SUFFIX "64"
#   else
#    define GMS_DLL_SUFFIX ""
#   endif
#  elif defined(__SIZEOF_POINTER__)
#   if 4 == __SIZEOF_POINTER__
#    define GMS_DLL_SUFFIX ""
#   elif 8 == __SIZEOF_POINTER__
#    define GMS_DLL_SUFFIX "64"
#   endif
#  elif defined(__sparcv9)
#   define GMS_DLL_SUFFIX "64"
#  elif defined(__sparc)
/*  check __sparc after __sparcv9, both are defined for 64-bit */
#   define GMS_DLL_SUFFIX ""
#  endif
# endif /* ! defined(GMS_DLL_SUFFIX) */
#endif

/* XLibraryLoad: return 0 on success, ~0 on failure */
static int
XLibraryLoad (const char *dllName, char *errBuf, int errBufSize)
{
  char *errMsg;
  const char *symName;
  int rc, elen, cl;
  char *ebuf;

  if (isLoaded)
    return 0;
  h = loadLib (dllName, &errMsg);
  if (NULL == h) {
    if (NULL != errBuf) {
      elen = errBufSize;  ebuf = errBuf;
      rc = sprintf (ebuf, "%.*s", elen, "Could not load shared library ");
      elen -= rc;  ebuf+= rc;
      rc = sprintf (ebuf, "%.*s", elen, dllName);
      elen -= rc;  ebuf+= rc;
      rc = sprintf (ebuf, "%.*s", elen, ": ");
      elen -= rc;  ebuf+= rc;
      rc = sprintf (ebuf, "%.*s", elen, errMsg);
      elen -= rc;  ebuf+= rc;
      errBuf[errBufSize-1] = '\0';
    }
    return 1;
  }
  else {
     /* printf ("Loaded shared library %s successfully\n", dllName); */
    if (errBuf && errBufSize)
      errBuf[0] = '\0';
  }

  LOADIT(XCreate, "XCreate");
  LOADIT(XFree, "XFree");
  LOADIT(XCheck, "CXCheck");
  LOADIT(XAPIVersion, "CXAPIVersion");

  if (!XAPIVersion(2,errBuf,&cl))
    return 1;


  LOADIT_ERR_OK(optSetLoadPath, "CoptSetLoadPath");
  LOADIT_ERR_OK(optGetLoadPath, "CoptGetLoadPath");
#define CheckAndLoad(f,nargs,prefix) \
  if (!XCheck(#f,nargs,s,errBuf)) \
    f = &d_##f; \
  else { \
    LOADIT(f,prefix #f); \
  }
  {int s[]={3,11}; CheckAndLoad(optReadDefinition,1,"C"); }
  {int s[]={3,11}; CheckAndLoad(optReadParameterFile,1,"C"); }
  {int s[]={0,11}; CheckAndLoad(optReadFromStr,1,"C"); }
  {int s[]={3,11}; CheckAndLoad(optWriteParameterFile,1,"C"); }
  {int s[]={0}; CheckAndLoad(optClearMessages,0,""); }
  {int s[]={0,11}; CheckAndLoad(optAddMessage,1,"C"); }
  {int s[]={0,3,12,4}; CheckAndLoad(optGetMessage,3,"C"); }
  {int s[]={0}; CheckAndLoad(optResetAll,0,""); }
  {int s[]={0}; CheckAndLoad(optResetAllRecent,0,""); }
  {int s[]={0}; CheckAndLoad(optResetRecentChanges,0,""); }
  {int s[]={0,11}; CheckAndLoad(optShowHelp,1,"C"); }
  {int s[]={3,3}; CheckAndLoad(optResetNr,1,""); }
  {int s[]={3,11,4,4}; CheckAndLoad(optFindStr,3,"C"); }
  {int s[]={3,3,4,4,4,4,4,4}; CheckAndLoad(optGetInfoNr,7,""); }
  {int s[]={3,3,12,4,14,12}; CheckAndLoad(optGetValuesNr,5,"C"); }
  {int s[]={3,3,3,13,11}; CheckAndLoad(optSetValuesNr,4,"C"); }
  {int s[]={3,3,3,13,11}; CheckAndLoad(optSetValues2Nr,4,"C"); }
  {int s[]={0,12}; CheckAndLoad(optVersion,1,"C"); }
  {int s[]={0,12}; CheckAndLoad(optDefinitionFile,1,"C"); }
  {int s[]={3,3,12,12}; CheckAndLoad(optGetFromAnyStrList,3,"C"); }
  {int s[]={3,11,12}; CheckAndLoad(optGetFromListStr,2,"C"); }
  {int s[]={3,11}; CheckAndLoad(optListCountStr,1,"C"); }
  {int s[]={3,11,3,12}; CheckAndLoad(optReadFromListStr,3,"C"); }
  {int s[]={3}; CheckAndLoad(optSynonymCount,0,""); }
  {int s[]={3,3,12,12}; CheckAndLoad(optGetSynonym,3,"C"); }
  {int s[]={0,3}; CheckAndLoad(optEchoSet,1,""); }
  {int s[]={3,3}; CheckAndLoad(optEOLOnlySet,1,""); }
  {int s[]={0,3}; CheckAndLoad(optNoBoundsSet,1,""); }
  {int s[]={0,4,4}; CheckAndLoad(optErrorCount,2,""); }
  {int s[]={3,3,4,4,4}; CheckAndLoad(optGetBoundsInt,4,""); }
  {int s[]={3,3,14,14,14}; CheckAndLoad(optGetBoundsDbl,4,""); }
  {int s[]={3,3,12}; CheckAndLoad(optGetDefaultStr,2,"C"); }
  {int s[]={3,3,4}; CheckAndLoad(optGetIntNr,2,""); }
  {int s[]={3,3,4}; CheckAndLoad(optGetInt2Nr,2,""); }
  {int s[]={3,3,3}; CheckAndLoad(optSetIntNr,2,""); }
  {int s[]={3,3,3}; CheckAndLoad(optSetInt2Nr,2,""); }
  {int s[]={3,3,12}; CheckAndLoad(optGetStrNr,2,"C"); }
  {int s[]={3,3,12,4,4}; CheckAndLoad(optGetOptHelpNr,4,"C"); }
  {int s[]={3,3,3,4,12}; CheckAndLoad(optGetEnumHelp,4,"C"); }
  {int s[]={3,3,12,4}; CheckAndLoad(optGetEnumStrNr,3,"C"); }
  {int s[]={3,3,4}; CheckAndLoad(optGetEnumCount,2,""); }
  {int s[]={3,3,3,4,12}; CheckAndLoad(optGetEnumValue,4,"C"); }
  {int s[]={3,3,12}; CheckAndLoad(optGetStr2Nr,2,"C"); }
  {int s[]={3,3,11}; CheckAndLoad(optSetStrNr,2,"C"); }
  {int s[]={3,3,11}; CheckAndLoad(optSetStr2Nr,2,"C"); }
  {int s[]={3,3,14}; CheckAndLoad(optGetDblNr,2,""); }
  {int s[]={3,3,14}; CheckAndLoad(optGetDbl2Nr,2,""); }
  {int s[]={3,3,13}; CheckAndLoad(optSetDblNr,2,""); }
  {int s[]={3,3,13}; CheckAndLoad(optSetDbl2Nr,2,""); }
  {int s[]={3,11,12}; CheckAndLoad(optGetValStr,2,"C"); }
  {int s[]={3,11,12}; CheckAndLoad(optGetVal2Str,2,"C"); }
  {int s[]={3,3,12}; CheckAndLoad(optGetNameNr,2,"C"); }
  {int s[]={3,3,4}; CheckAndLoad(optGetDefinedNr,2,""); }
  {int s[]={3,3,12,12}; CheckAndLoad(optGetHelpNr,3,"C"); }
  {int s[]={3,3,12,4,4,12}; CheckAndLoad(optGetGroupNr,5,"C"); }
  {int s[]={3,3}; CheckAndLoad(optGetGroupGrpNr,1,""); }
  {int s[]={3,3}; CheckAndLoad(optGetOptGroupNr,1,""); }
  {int s[]={3,3,12,4,4,14}; CheckAndLoad(optGetDotOptNr,5,"C"); }
  {int s[]={3,3,3,12}; CheckAndLoad(optGetDotOptUel,3,"C"); }
  {int s[]={3,3,3,12,12,4,4,4}; CheckAndLoad(optGetVarEquMapNr,7,"C"); }
  {int s[]={3,3,3,3,12}; CheckAndLoad(optGetEquVarEquMapNr,4,"C"); }
  {int s[]={3,3,3,3,12}; CheckAndLoad(optGetVarVarEquMapNr,4,"C"); }
  {int s[]={3,3,4}; CheckAndLoad(optVarEquMapCount,2,""); }
  {int s[]={3,3,12,12,4,4,4}; CheckAndLoad(optGetIndicatorNr,6,"C"); }
  {int s[]={3,3,3,12}; CheckAndLoad(optGetEquIndicatorNr,3,"C"); }
  {int s[]={3,3,3,12}; CheckAndLoad(optGetVarIndicatorNr,3,"C"); }
  {int s[]={3,4}; CheckAndLoad(optIndicatorCount,1,""); }
  {int s[]={3,4}; CheckAndLoad(optDotOptCount,1,""); }
  {int s[]={3,3,3}; CheckAndLoad(optSetRefNr,2,""); }
  {int s[]={3,11,3}; CheckAndLoad(optSetRefNrStr,2,"C"); }
  {int s[]={3,3,3,12}; CheckAndLoad(optGetConstName,3,"C"); }
  {int s[]={3,3,12}; CheckAndLoad(optGetTypeName,2,"C"); }
  {int s[]={3,11}; CheckAndLoad(optLookUp,1,"C"); }
  {int s[]={0,10}; CheckAndLoad(optReadFromPChar,1,""); }
  {int s[]={3,11,12,4}; CheckAndLoad(optGetNameOpt,3,"C"); }
  {int s[]={15,11}; CheckAndLoad(optGetDefinedStr,1,"C"); }
  {int s[]={3,11}; CheckAndLoad(optGetIntStr,1,"C"); }
  {int s[]={13,11}; CheckAndLoad(optGetDblStr,1,"C"); }
  {int s[]={12,11}; CheckAndLoad(optGetStrStr,1,"C"); }
  {int s[]={0,11,3}; CheckAndLoad(optSetIntStr,2,"C"); }
  {int s[]={0,11,13}; CheckAndLoad(optSetDblStr,2,"C"); }
  {int s[]={0,11,11}; CheckAndLoad(optSetStrStr,2,"C"); }
  {int s[]={3}; CheckAndLoad(optCount,0,""); }
  {int s[]={3}; CheckAndLoad(optMessageCount,0,""); }
  {int s[]={3}; CheckAndLoad(optGroupCount,0,""); }
  {int s[]={3}; CheckAndLoad(optRecentEnabled,0,""); }
  {int s[]={0,3}; CheckAndLoad(optRecentEnabledSet,1,""); }

 return 0;

 symMissing:
  if (errBuf && errBufSize>0) {
    elen = errBufSize;  ebuf = errBuf;
    rc = sprintf (ebuf, "%.*s", elen, "Could not load symbol '");
    elen -= rc;  ebuf+= rc;
    rc = sprintf (ebuf, "%.*s", elen, symName);
    elen -= rc;  ebuf+= rc;
    rc = sprintf (ebuf, "%.*s", elen, "': ");
    elen -= rc;  ebuf+= rc;
    rc = sprintf (ebuf, "%.*s", elen, errMsg);
    elen -= rc;  ebuf+= rc;
    errBuf[errBufSize-1] = '\0';
    /* printf ("%s\n", errBuf); */
    return 2;
  }

 return 0;

} /* XLibraryLoad */

static int
libloader(const char *dllPath, const char *dllName, char *msgBuf, int msgBufSize)
{

  char dllNameBuf[512];
  int myrc = 0;
  char gms_dll_suffix[4];

#if ! defined(GMS_DLL_PREFIX)
# error "GMS_DLL_PREFIX expected but not defined"
#endif
#if ! defined(GMS_DLL_BASENAME)
# error "GMS_DLL_BASENAME expected but not defined"
#endif
#if ! defined(GMS_DLL_EXTENSION)
# error "GMS_DLL_EXTENSION expected but not defined"
#endif
#if ! defined(GMS_DLL_SUFFIX)
# if defined (_WIN32)
#   error "GMS_DLL_SUFFIX expected but not defined"
# else
  struct utsname uts;

  myrc = uname(&uts);
  if (myrc) {
    strcpy(msgBuf,"Error, cannot define library name suffix");
    return 0;
  }
  if (0 == strcmp(uts.sysname, "AIX")) /* assume AIX is 64-bit */
    strcpy (gms_dll_suffix, "64");
  else if (0 == strcmp(uts.sysname, "Darwin")) {
    /* keep Darwin test in here: fat binaries must check at run time */
    if (8 == (int)sizeof(void *))
      strcpy (gms_dll_suffix, "64");
    else
      strcpy (gms_dll_suffix, "");
  }
  else {
    strcpy(msgBuf,"Error, cannot define library name suffix");
    return 0;
  }
# endif
#else
  strcpy (gms_dll_suffix, GMS_DLL_SUFFIX);
#endif


  if (NULL != msgBuf) msgBuf[0] = '\0';

  if (! isLoaded) {
    if (NULL != dllPath && '\0' != *dllPath) {
      strncpy(dllNameBuf, dllPath, sizeof(dllNameBuf)-1);
      dllNameBuf[sizeof(dllNameBuf)-2] = '\0';
#if defined(_WIN32)
      if ('\\' != dllNameBuf[strlen(dllNameBuf)])
        strcat(dllNameBuf,"\\");
#else
      if ('/' != dllNameBuf[strlen(dllNameBuf)])
        strcat(dllNameBuf,"/");
#endif
    }
    else {
      dllNameBuf[0] = '\0';
    }
    if (NULL != dllName && '\0' != *dllName) {
      strncat(dllNameBuf, dllName, sizeof(dllNameBuf)-strlen(dllNameBuf));
      dllNameBuf[sizeof(dllNameBuf)-1] = '\0';
    }
    else {
      strncat(dllNameBuf, GMS_DLL_PREFIX GMS_DLL_BASENAME, sizeof(dllNameBuf)-strlen(dllNameBuf));
      strncat(dllNameBuf, gms_dll_suffix                 , sizeof(dllNameBuf)-strlen(dllNameBuf));
      strncat(dllNameBuf, GMS_DLL_EXTENSION              , sizeof(dllNameBuf)-strlen(dllNameBuf));
    }
    isLoaded = ! XLibraryLoad (dllNameBuf, msgBuf, msgBufSize);
    if (isLoaded) {
       if (NULL != optSetLoadPath && NULL != dllPath && '\0' != *dllPath) {
         optSetLoadPath(dllPath);
       }
       else {                            /* no setLoadPath call found */
         myrc |= 2;
       }
    }
    else {                              /* library load failed */
      myrc |= 1;
    }
  }
  return (myrc & 1) == 0;
}


/* optGetReady: return false on failure to load library, true on success */
int optGetReady (char *msgBuf, int msgBufSize)
{
  int rc;
  lock(libMutex);
  rc = libloader(NULL, NULL, msgBuf, msgBufSize);
  unlock(libMutex);
  return rc;
} /* optGetReady */

/* optGetReadyD: return false on failure to load library, true on success */
int optGetReadyD (const char *dirName, char *msgBuf, int msgBufSize)
{
  int rc;
  lock(libMutex);
  rc = libloader(dirName, NULL, msgBuf, msgBufSize);
  unlock(libMutex);
  return rc;
} /* optGetReadyD */

/* optGetReadyL: return false on failure to load library, true on success */
int optGetReadyL (const char *libName, char *msgBuf, int msgBufSize)
{
  char dirName[1024],fName[1024];
  int rc;
  extractFileDirFileName (libName, dirName, fName);
  lock(libMutex);
  rc = libloader(dirName, fName, msgBuf, msgBufSize);
  unlock(libMutex);
  return rc;
} /* optGetReadyL */

/* optCreate: return false on failure to load library, true on success */
int optCreate (optHandle_t *popt, char *msgBuf, int msgBufSize)
{
  int optIsReady;

  optIsReady = optGetReady (msgBuf, msgBufSize);
  if (! optIsReady) {
    return 0;
  }
  assert(XCreate);
  XCreate(popt);
  if(popt == NULL)
  { strcpy(msgBuf,"Error while creating object"); return 0; }
  lock(objMutex);
  objectCount++;
  unlock(objMutex);
  return 1;                     /* return true on successful library load */
} /* optCreate */

/* optCreateD: return false on failure to load library, true on success */
int optCreateD (optHandle_t *popt, const char *dirName,
                char *msgBuf, int msgBufSize)
{
  int optIsReady;

  optIsReady = optGetReadyD (dirName, msgBuf, msgBufSize);
  if (! optIsReady) {
    return 0;
  }
  assert(XCreate);
  XCreate(popt);
  if(popt == NULL)
  { strcpy(msgBuf,"Error while creating object"); return 0; }
  lock(objMutex);
  objectCount++;
  unlock(objMutex);
  return 1;                     /* return true on successful library load */
} /* optCreateD */

/* optCreateL: return false on failure to load library, true on success */
int optCreateL (optHandle_t *popt, const char *libName,
                char *msgBuf, int msgBufSize)
{
  int optIsReady;

  optIsReady = optGetReadyL (libName, msgBuf, msgBufSize);
  if (! optIsReady) {
    return 0;
  }
  assert(XCreate);
  XCreate(popt);
  if(popt == NULL)
  { strcpy(msgBuf,"Error while creating object"); return 0; }
  lock(objMutex);
  objectCount++;
  unlock(objMutex);
  return 1;                     /* return true on successful library load */
} /* optCreateL */

int optFree   (optHandle_t *popt)
{
  assert(XFree);
  XFree(popt); popt = NULL;
  lock(objMutex);
  objectCount--;
  unlock(objMutex);
  return 1;
} /* optFree */

int optLibraryLoaded(void)
{
  int rc;
  lock(libMutex);
  rc = isLoaded;
  unlock(libMutex);
  return rc;
} /* optLibraryLoaded */

int optLibraryUnload(void)
{
  lock(objMutex);
  if (objectCount > 0)
  {
    unlock(objMutex);
    return 0;
  }
  unlock(objMutex);
  lock(libMutex);
  isLoaded = 0;
  (void) unLoadLib(h);
  unlock(libMutex);
  return 1;
} /* optLibraryUnload */

int optGetScreenIndicator(void)
{
  return ScreenIndicator;
}

void optSetScreenIndicator(int scrind)
{
  ScreenIndicator = scrind ? 1 : 0;
}

int optGetExceptionIndicator(void)
{
   return ExceptionIndicator;
}

void optSetExceptionIndicator(int excind)
{
  ExceptionIndicator = excind ? 1 : 0;
}

int optGetExitIndicator(void)
{
  return ExitIndicator;
}

void optSetExitIndicator(int extind)
{
  ExitIndicator = extind ? 1 : 0;
}

optErrorCallback_t optGetErrorCallback(void)
{
  return ErrorCallBack;
}

void optSetErrorCallback(optErrorCallback_t func)
{
  lock(exceptMutex);
  ErrorCallBack = func;
  unlock(exceptMutex);
}

int optGetAPIErrorCount(void)
{
  return APIErrorCount;
}

void optSetAPIErrorCount(int ecnt)
{
  APIErrorCount = ecnt;
}

void optErrorHandling(const char *msg)
{
  APIErrorCount++;
  if (ScreenIndicator) { printf("%s\n", msg); fflush(stdout); }
  lock(exceptMutex);
  if (ErrorCallBack)
    if (ErrorCallBack(APIErrorCount, msg)) { unlock(exceptMutex); exit(123); }
  unlock(exceptMutex);
  assert(!ExceptionIndicator);
  if (ExitIndicator) exit(123);
}

