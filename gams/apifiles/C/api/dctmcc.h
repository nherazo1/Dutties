/* dctmcc.h
 * Header file for C-style interface to the DCT library
 * generated by apiwrapper for GAMS Version 24.0.2
 */

#if ! defined(_DCTCC_H_)
#     define  _DCTCC_H_

#define DCTAPIVERSION 1


enum dcttypes {
  dctunknownSymType = 0,
  dctfuncSymType    = 1,
  dctsetSymType     = 2,
  dctacrSymType     = 3,
  dctparmSymType    = 4,
  dctvarSymType     = 5,
  dcteqnSymType     = 6,
  dctaliasSymType   = 127  };

#include "gclgms.h"

#if defined(_WIN32)
# define DCT_CALLCONV __stdcall
#else
# define DCT_CALLCONV
#endif

#if defined(__cplusplus)
extern "C" {
#endif

struct dctRec;
typedef struct dctRec *dctHandle_t;

typedef int (*dctErrorCallback_t) (int ErrCount, const char *msg);

/* headers for "wrapper" routines implemented in C */
int dctGetReady  (char *msgBuf, int msgBufLen);
int dctGetReadyD (const char *dirName, char *msgBuf, int msgBufLen);
int dctGetReadyL (const char *libName, char *msgBuf, int msgBufLen);
int dctCreate    (dctHandle_t *pdct, char *msgBuf, int msgBufLen);
int dctCreateD   (dctHandle_t *pdct, const char *dirName, char *msgBuf, int msgBufLen);
int dctCreateDD  (dctHandle_t *pdct, const char *dirName, char *msgBuf, int msgBufLen);
int dctCreateL   (dctHandle_t *pdct, const char *libName, char *msgBuf, int msgBufLen);
int dctFree      (dctHandle_t *pdct);

int dctLibraryLoaded(void);
int dctLibraryUnload(void);

int  dctGetScreenIndicator   (void);
void dctSetScreenIndicator   (int scrind);
int  dctGetExceptionIndicator(void);
void dctSetExceptionIndicator(int excind);
int  dctGetExitIndicator     (void);
void dctSetExitIndicator     (int extind);
dctErrorCallback_t dctGetErrorCallback(void);
void dctSetErrorCallback(dctErrorCallback_t func);
int  dctGetAPIErrorCount     (void);
void dctSetAPIErrorCount     (int ecnt);

void dctErrorHandling(const char *msg);
void dctInitMutexes(void);
void dctFiniMutexes(void);


#if defined(DCT_MAIN)    /* we must define some things only once */
# define DCT_FUNCPTR(NAME)  NAME##_t NAME = NULL
#else
# define DCT_FUNCPTR(NAME)  extern NAME##_t NAME
#endif


/* Prototypes for Dummy Functions */
int  DCT_CALLCONV d_dctLoadEx (dctHandle_t pdct, const char *fName, char *Msg, int Msg_i);
int  DCT_CALLCONV d_dctLoadWithHandle (dctHandle_t pdct, void *gdxptr, char *Msg, int Msg_i);
int  DCT_CALLCONV d_dctNUels (dctHandle_t pdct);
int  DCT_CALLCONV d_dctUelIndex (dctHandle_t pdct, const char *uelLabel);
int  DCT_CALLCONV d_dctUelLabel (dctHandle_t pdct, int uelIndex, char *q, char *uelLabel, int uelLabel_i);
int  DCT_CALLCONV d_dctNLSyms (dctHandle_t pdct);
int  DCT_CALLCONV d_dctSymDim (dctHandle_t pdct, int symIndex);
int  DCT_CALLCONV d_dctSymIndex (dctHandle_t pdct, const char *symName);
int  DCT_CALLCONV d_dctSymName (dctHandle_t pdct, int symIndex, char *symName, int symName_i);
int  DCT_CALLCONV d_dctSymText (dctHandle_t pdct, int symIndex, char *q, char *symTxt, int symTxt_i);
int  DCT_CALLCONV d_dctSymType (dctHandle_t pdct, int symIndex);
int  DCT_CALLCONV d_dctSymUserInfo (dctHandle_t pdct, int symIndex);
int  DCT_CALLCONV d_dctSymEntries (dctHandle_t pdct, int symIndex);
int  DCT_CALLCONV d_dctSymOffset (dctHandle_t pdct, int symIndex);
int  DCT_CALLCONV d_dctColIndex (dctHandle_t pdct, int symIndex, const int uelIndices[]);
int  DCT_CALLCONV d_dctRowIndex (dctHandle_t pdct, int symIndex, const int uelIndices[]);
int  DCT_CALLCONV d_dctColUels (dctHandle_t pdct, int j, int *symIndex, int uelIndices[], int *symDim);
int  DCT_CALLCONV d_dctRowUels (dctHandle_t pdct, int i, int *symIndex, int uelIndices[], int *symDim);
void * DCT_CALLCONV d_dctFindFirstRowCol (dctHandle_t pdct, int symIndex, const int uelIndices[], int *rcIndex);
int  DCT_CALLCONV d_dctFindNextRowCol (dctHandle_t pdct, void *findHandle, int *rcIndex);
void  DCT_CALLCONV d_dctFindClose (dctHandle_t pdct, void *findHandle);
double  DCT_CALLCONV d_dctMemUsed (dctHandle_t pdct);
void  DCT_CALLCONV d_dctSetBasicCounts (dctHandle_t pdct, int NRows, int NCols, int NBlocks);
void  DCT_CALLCONV d_dctAddUel (dctHandle_t pdct, const char *uelLabel, const char q);
void  DCT_CALLCONV d_dctAddSymbol (dctHandle_t pdct, const char *symName, int symTyp, int symDim, int userInfo, const char *symTxt);
void  DCT_CALLCONV d_dctAddSymbolData (dctHandle_t pdct, const int uelIndices[]);
void  DCT_CALLCONV d_dctWriteGDX (dctHandle_t pdct, const char *fName, char *Msg);
void  DCT_CALLCONV d_dctWriteGDXWithHandle (dctHandle_t pdct, void *gdxptr, char *Msg);
int  DCT_CALLCONV d_dctNRows (dctHandle_t pdct);
int  DCT_CALLCONV d_dctNCols (dctHandle_t pdct);
int  DCT_CALLCONV d_dctLrgDim (dctHandle_t pdct);

typedef int  (DCT_CALLCONV *dctLoadEx_t) (dctHandle_t pdct, const char *fName, char *Msg, int Msg_i);
DCT_FUNCPTR(dctLoadEx);
typedef int  (DCT_CALLCONV *dctLoadWithHandle_t) (dctHandle_t pdct, void *gdxptr, char *Msg, int Msg_i);
DCT_FUNCPTR(dctLoadWithHandle);
typedef int  (DCT_CALLCONV *dctNUels_t) (dctHandle_t pdct);
DCT_FUNCPTR(dctNUels);
typedef int  (DCT_CALLCONV *dctUelIndex_t) (dctHandle_t pdct, const char *uelLabel);
DCT_FUNCPTR(dctUelIndex);
typedef int  (DCT_CALLCONV *dctUelLabel_t) (dctHandle_t pdct, int uelIndex, char *q, char *uelLabel, int uelLabel_i);
DCT_FUNCPTR(dctUelLabel);
typedef int  (DCT_CALLCONV *dctNLSyms_t) (dctHandle_t pdct);
DCT_FUNCPTR(dctNLSyms);
typedef int  (DCT_CALLCONV *dctSymDim_t) (dctHandle_t pdct, int symIndex);
DCT_FUNCPTR(dctSymDim);
typedef int  (DCT_CALLCONV *dctSymIndex_t) (dctHandle_t pdct, const char *symName);
DCT_FUNCPTR(dctSymIndex);
typedef int  (DCT_CALLCONV *dctSymName_t) (dctHandle_t pdct, int symIndex, char *symName, int symName_i);
DCT_FUNCPTR(dctSymName);
typedef int  (DCT_CALLCONV *dctSymText_t) (dctHandle_t pdct, int symIndex, char *q, char *symTxt, int symTxt_i);
DCT_FUNCPTR(dctSymText);
typedef int  (DCT_CALLCONV *dctSymType_t) (dctHandle_t pdct, int symIndex);
DCT_FUNCPTR(dctSymType);
typedef int  (DCT_CALLCONV *dctSymUserInfo_t) (dctHandle_t pdct, int symIndex);
DCT_FUNCPTR(dctSymUserInfo);
typedef int  (DCT_CALLCONV *dctSymEntries_t) (dctHandle_t pdct, int symIndex);
DCT_FUNCPTR(dctSymEntries);
typedef int  (DCT_CALLCONV *dctSymOffset_t) (dctHandle_t pdct, int symIndex);
DCT_FUNCPTR(dctSymOffset);
typedef int  (DCT_CALLCONV *dctColIndex_t) (dctHandle_t pdct, int symIndex, const int uelIndices[]);
DCT_FUNCPTR(dctColIndex);
typedef int  (DCT_CALLCONV *dctRowIndex_t) (dctHandle_t pdct, int symIndex, const int uelIndices[]);
DCT_FUNCPTR(dctRowIndex);
typedef int  (DCT_CALLCONV *dctColUels_t) (dctHandle_t pdct, int j, int *symIndex, int uelIndices[], int *symDim);
DCT_FUNCPTR(dctColUels);
typedef int  (DCT_CALLCONV *dctRowUels_t) (dctHandle_t pdct, int i, int *symIndex, int uelIndices[], int *symDim);
DCT_FUNCPTR(dctRowUels);
typedef void * (DCT_CALLCONV *dctFindFirstRowCol_t) (dctHandle_t pdct, int symIndex, const int uelIndices[], int *rcIndex);
DCT_FUNCPTR(dctFindFirstRowCol);
typedef int  (DCT_CALLCONV *dctFindNextRowCol_t) (dctHandle_t pdct, void *findHandle, int *rcIndex);
DCT_FUNCPTR(dctFindNextRowCol);
typedef void  (DCT_CALLCONV *dctFindClose_t) (dctHandle_t pdct, void *findHandle);
DCT_FUNCPTR(dctFindClose);
typedef double  (DCT_CALLCONV *dctMemUsed_t) (dctHandle_t pdct);
DCT_FUNCPTR(dctMemUsed);
typedef void  (DCT_CALLCONV *dctSetBasicCounts_t) (dctHandle_t pdct, int NRows, int NCols, int NBlocks);
DCT_FUNCPTR(dctSetBasicCounts);
typedef void  (DCT_CALLCONV *dctAddUel_t) (dctHandle_t pdct, const char *uelLabel, const char q);
DCT_FUNCPTR(dctAddUel);
typedef void  (DCT_CALLCONV *dctAddSymbol_t) (dctHandle_t pdct, const char *symName, int symTyp, int symDim, int userInfo, const char *symTxt);
DCT_FUNCPTR(dctAddSymbol);
typedef void  (DCT_CALLCONV *dctAddSymbolData_t) (dctHandle_t pdct, const int uelIndices[]);
DCT_FUNCPTR(dctAddSymbolData);
typedef void  (DCT_CALLCONV *dctWriteGDX_t) (dctHandle_t pdct, const char *fName, char *Msg);
DCT_FUNCPTR(dctWriteGDX);
typedef void  (DCT_CALLCONV *dctWriteGDXWithHandle_t) (dctHandle_t pdct, void *gdxptr, char *Msg);
DCT_FUNCPTR(dctWriteGDXWithHandle);
typedef int  (DCT_CALLCONV *dctNRows_t) (dctHandle_t pdct);
DCT_FUNCPTR(dctNRows);
typedef int  (DCT_CALLCONV *dctNCols_t) (dctHandle_t pdct);
DCT_FUNCPTR(dctNCols);
typedef int  (DCT_CALLCONV *dctLrgDim_t) (dctHandle_t pdct);
DCT_FUNCPTR(dctLrgDim);
#if defined(__cplusplus)
}
#endif
#endif /* #if ! defined(_DCTCC_H_) */
