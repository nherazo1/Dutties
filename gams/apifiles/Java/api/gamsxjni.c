/*  Java Native Interrface code generated by apiwrapper for GAMS Version 24.0.2 */

#include <jni.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <gamsxcc.h>

typedef union foo { void *p; jlong i; } u64_t;

typedef char string255[256];
typedef char stringUEL[GLOBAL_UEL_IDENT_SIZE];

static char* sig_gamsxRegisterCB1_CB1 = NULL;
static char* sig_gamsxRegisterCB2_CB2 = NULL;
static char* methodname_gamsxRegisterCB1_CB1 = NULL;
static char* methodname_gamsxRegisterCB2_CB2 = NULL;
static char* classname_gamsxRegisterCB1_CB1 = NULL;
static char* classname_gamsxRegisterCB2_CB2 = NULL;
static char  ClassDotMethodName[512];
static int   ReturnName = 0;

static void printerr(const char *mess, const char*name)
{
   fprintf(stderr,"%s: %s\n",mess,name);
   exit(1);
}

static JavaVM *Cached_JVM = NULL;
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *reserved)
{
    Cached_JVM = vm;
    return JNI_VERSION_1_2;
}

static char* getMethodName_(const char* name)
{
    char *s;
    s = strrchr(name,'.');
    if (s==NULL)
        return NULL;
    ++s;
    return strdup(s);
}

static char* getClassName_(const char* name)
{
    char *s;
    char *t;
    t = strdup(name);
    s = strrchr(t,'.');
    if (s==NULL)
        return NULL;
    *s = '\0';
    return t;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_GetReady(JNIEnv *env, jobject obj, jobjectArray msg);
JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_GetReady(JNIEnv *env, jobject obj, jobjectArray msg)
{
   int rc_GetReady;
   jstring local_msg;
   char buffer_msg[256];
   rc_GetReady = gamsxGetReady(buffer_msg, sizeof(buffer_msg));
   local_msg = (*env)->NewStringUTF(env, buffer_msg);
   (*env)->SetObjectArrayElement(env, msg, 0, local_msg);
   return rc_GetReady;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_GetReadyD(JNIEnv *env, jobject obj, jstring dirName, jobjectArray msg);
JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_GetReadyD(JNIEnv *env, jobject obj, jstring dirName, jobjectArray msg)
{
   int rc_GetReadyD;
   char *local_dirName;
   jstring local_msg;
   char buffer_msg[256];
   buffer_msg[0] = '\0';
   local_dirName = (char *) (*env)->GetStringUTFChars(env, dirName, NULL);
   rc_GetReadyD = gamsxGetReadyD(local_dirName, buffer_msg, sizeof(buffer_msg));
   (*env)->ReleaseStringUTFChars(env, dirName, local_dirName);
   local_msg = (*env)->NewStringUTF(env, buffer_msg);
   (*env)->SetObjectArrayElement(env, msg, 0, local_msg);
   return rc_GetReadyD;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_GetReadyL(JNIEnv *env, jobject obj, jstring libName, jobjectArray msg);
JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_GetReadyL(JNIEnv *env, jobject obj, jstring libName, jobjectArray msg)
{
   int rc_GetReadyL;
   char *local_libName;
   jstring local_msg;
   char buffer_msg[256];
   buffer_msg[0] = '\0';
   local_libName = (char *) (*env)->GetStringUTFChars(env, libName, NULL);
   rc_GetReadyL = gamsxGetReadyL(local_libName, buffer_msg, sizeof(buffer_msg));
   (*env)->ReleaseStringUTFChars(env, libName, local_libName);
   local_msg = (*env)->NewStringUTF(env, buffer_msg);
   (*env)->SetObjectArrayElement(env, msg, 0, local_msg);
   return rc_GetReadyL;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_Create(JNIEnv *env, jobject obj, jobjectArray msg);
JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_Create(JNIEnv *env, jobject obj, jobjectArray msg)
{
   int rc_Create;
   jfieldID fid;
   u64_t pgamsx;
   jstring local_msg;
   char buffer_msg[256];
   jclass cls = (*env)->GetObjectClass(env, obj);
   buffer_msg[0] = '\0';
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_Create = gamsxCreate((gamsxHandle_t *)&pgamsx.p, buffer_msg, sizeof(buffer_msg));
   local_msg = (*env)->NewStringUTF(env, buffer_msg);
   (*env)->SetObjectArrayElement(env, msg, 0, local_msg);
   (*env)->SetLongField(env, obj, fid, pgamsx.i);
   return rc_Create;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_CreateD(JNIEnv *env, jobject obj, jstring dirName, jobjectArray msg);
JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_CreateD(JNIEnv *env, jobject obj, jstring dirName, jobjectArray msg)
{
   int rc_CreateD;
   jfieldID fid;
   u64_t pgamsx;
   char *local_dirName;
   jstring local_msg;
   char buffer_msg[256];
   jclass cls = (*env)->GetObjectClass(env, obj);
   buffer_msg[0] = '\0';
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_dirName = (char *) (*env)->GetStringUTFChars(env, dirName, NULL);
   rc_CreateD = gamsxCreateD((gamsxHandle_t *)&pgamsx.p, local_dirName, buffer_msg, sizeof(buffer_msg));
   (*env)->ReleaseStringUTFChars(env, dirName, local_dirName);
   local_msg = (*env)->NewStringUTF(env, buffer_msg);
   (*env)->SetObjectArrayElement(env, msg, 0, local_msg);
   (*env)->SetLongField(env, obj, fid, pgamsx.i);
   return rc_CreateD;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_CreateL(JNIEnv *env, jobject obj, jstring libName, jobjectArray msg);
JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_CreateL(JNIEnv *env, jobject obj, jstring libName, jobjectArray msg)
{
   int rc_CreateL;
   jfieldID fid;
   u64_t pgamsx;
   char *local_libName;
   jstring local_msg;
   char buffer_msg[256];
   jclass cls = (*env)->GetObjectClass(env, obj);
   buffer_msg[0] = '\0';
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_libName = (char *) (*env)->GetStringUTFChars(env, libName, NULL);
   rc_CreateL = gamsxCreateL((gamsxHandle_t *)&pgamsx.p, local_libName, buffer_msg, sizeof(buffer_msg));
   (*env)->ReleaseStringUTFChars(env, libName, local_libName);
   local_msg = (*env)->NewStringUTF(env, buffer_msg);
   (*env)->SetObjectArrayElement(env, msg, 0, local_msg);
   (*env)->SetLongField(env, obj, fid, pgamsx.i);
   return rc_CreateL;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_Free(JNIEnv *env, jobject obj);
JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_Free(JNIEnv *env, jobject obj)
{
   int rc_Free;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_Free = gamsxFree((gamsxHandle_t *)&pgamsx.p);
   (*env)->SetLongField(env, obj, fid, pgamsx.i);
   return rc_Free;
}


static int  GAMSX_CALLCONV dll_gamsxRegisterCB1_CB1(const char *fn, int linNr, int lstNr, void *usrMem)
{
   JNIEnv *env;
   jclass cls;
   jmethodID mid;
   jstring local_fn;
   char buffer_fn[256];
   u64_t local_usrMem;
   (*Cached_JVM)->AttachCurrentThread(Cached_JVM, (void**)&env, NULL);
   if (methodname_gamsxRegisterCB1_CB1==NULL)
      printerr("Callback function name is nil","CB1");
   if (classname_gamsxRegisterCB1_CB1==NULL)
      printerr("Callback class name is nil","CB1");
   cls = (*env)->FindClass(env,classname_gamsxRegisterCB1_CB1);
   if (cls==NULL)
      printerr("Class not found",classname_gamsxRegisterCB1_CB1);
   mid = (*env)->GetStaticMethodID(env, cls, methodname_gamsxRegisterCB1_CB1, sig_gamsxRegisterCB1_CB1);
   if (mid==NULL)
      printerr("Static method not found",methodname_gamsxRegisterCB1_CB1);
   if (ReturnName == 1) {
      sprintf(ClassDotMethodName,"%s.%s",classname_gamsxRegisterCB1_CB1,methodname_gamsxRegisterCB1_CB1);
      return (int ) 0; }
   strncpy(buffer_fn, fn+1, fn[0]); buffer_fn[fn[0]]='\0';
   local_fn = (*env)->NewStringUTF(env, buffer_fn);
   local_usrMem.p = usrMem;
}

static int  GAMSX_CALLCONV dll_gamsxRegisterCB2_CB2(const char *fn, int linNr, int lstNr, void *userMem1, void *userMem2)
{
   JNIEnv *env;
   jclass cls;
   jmethodID mid;
   jstring local_fn;
   char buffer_fn[256];
   u64_t local_userMem1;
   u64_t local_userMem2;
   (*Cached_JVM)->AttachCurrentThread(Cached_JVM, (void**)&env, NULL);
   if (methodname_gamsxRegisterCB2_CB2==NULL)
      printerr("Callback function name is nil","CB2");
   if (classname_gamsxRegisterCB2_CB2==NULL)
      printerr("Callback class name is nil","CB2");
   cls = (*env)->FindClass(env,classname_gamsxRegisterCB2_CB2);
   if (cls==NULL)
      printerr("Class not found",classname_gamsxRegisterCB2_CB2);
   mid = (*env)->GetStaticMethodID(env, cls, methodname_gamsxRegisterCB2_CB2, sig_gamsxRegisterCB2_CB2);
   if (mid==NULL)
      printerr("Static method not found",methodname_gamsxRegisterCB2_CB2);
   if (ReturnName == 1) {
      sprintf(ClassDotMethodName,"%s.%s",classname_gamsxRegisterCB2_CB2,methodname_gamsxRegisterCB2_CB2);
      return (int ) 0; }
   strncpy(buffer_fn, fn+1, fn[0]); buffer_fn[fn[0]]='\0';
   local_fn = (*env)->NewStringUTF(env, buffer_fn);
   local_userMem1.p = userMem1;
   local_userMem2.p = userMem2;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_RunExecDLL(JNIEnv *env, jobject obj, jlong optPtr, jstring sysDir, jint AVerbose, jobjectArray Msg)
{
   int rc_gamsxRunExecDLL;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   u64_t local_optPtr;
   char *local_sysDir;
   jstring local_Msg;
   char buffer_Msg[256];
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_optPtr.i = optPtr;
   local_sysDir = (char *)(*env)->GetStringUTFChars(env, sysDir, NULL);
   buffer_Msg[0] = '\0';
   rc_gamsxRunExecDLL = gamsxRunExecDLL((gamsxHandle_t)pgamsx.p, local_optPtr.p, local_sysDir, AVerbose, buffer_Msg);
   (*env)->ReleaseStringUTFChars(env, sysDir, local_sysDir);
   local_Msg = (*env)->NewStringUTF(env, buffer_Msg);
   (*env)->SetObjectArrayElement(env, Msg, 0, local_Msg);
   return rc_gamsxRunExecDLL;
}

JNIEXPORT jboolean JNICALL Java_com_gams_api_gamsx_ShowError(JNIEnv *env, jobject obj, jstring fNameLog, jobjectArray errorLine, jobjectArray errorTyp, jobjectArray gmsLine)
{
   int rc_gamsxShowError;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   char *local_fNameLog;
   jstring local_errorLine;
   char buffer_errorLine[256];
   jstring local_errorTyp;
   char buffer_errorTyp[256];
   jstring local_gmsLine;
   char buffer_gmsLine[256];
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_fNameLog = (char *)(*env)->GetStringUTFChars(env, fNameLog, NULL);
   buffer_errorLine[0] = '\0';
   buffer_errorTyp[0] = '\0';
   buffer_gmsLine[0] = '\0';
   rc_gamsxShowError = gamsxShowError((gamsxHandle_t)pgamsx.p, local_fNameLog, buffer_errorLine, buffer_errorTyp, buffer_gmsLine);
   (*env)->ReleaseStringUTFChars(env, fNameLog, local_fNameLog);
   local_errorLine = (*env)->NewStringUTF(env, buffer_errorLine);
   (*env)->SetObjectArrayElement(env, errorLine, 0, local_errorLine);
   local_errorTyp = (*env)->NewStringUTF(env, buffer_errorTyp);
   (*env)->SetObjectArrayElement(env, errorTyp, 0, local_errorTyp);
   local_gmsLine = (*env)->NewStringUTF(env, buffer_gmsLine);
   (*env)->SetObjectArrayElement(env, gmsLine, 0, local_gmsLine);
   return rc_gamsxShowError;
}

JNIEXPORT void JNICALL Java_com_gams_api_gamsx_AddBreakPoint(JNIEnv *env, jobject obj, jstring fn, jint lineNr)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   char *local_fn;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return ;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_fn = (char *)(*env)->GetStringUTFChars(env, fn, NULL);
   gamsxAddBreakPoint((gamsxHandle_t)pgamsx.p, local_fn, lineNr);
   (*env)->ReleaseStringUTFChars(env, fn, local_fn);
}

JNIEXPORT void JNICALL Java_com_gams_api_gamsx_ClearBreakPoints(JNIEnv *env, jobject obj)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return ;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   gamsxClearBreakPoints((gamsxHandle_t)pgamsx.p);
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_SystemInfo(JNIEnv *env, jobject obj, jintArray NrSy, jintArray NrUel)
{
   int rc_gamsxSystemInfo;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   int *local_NrSy;
   int *local_NrUel;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_NrSy = (*env)->GetIntArrayElements(env, NrSy, NULL);
   local_NrUel = (*env)->GetIntArrayElements(env, NrUel, NULL);
   rc_gamsxSystemInfo = gamsxSystemInfo((gamsxHandle_t)pgamsx.p, local_NrSy, local_NrUel);
   (*env)->ReleaseIntArrayElements(env, NrSy, local_NrSy, 0);
   (*env)->ReleaseIntArrayElements(env, NrUel, local_NrUel, 0);
   return rc_gamsxSystemInfo;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_SymbolInfo(JNIEnv *env, jobject obj, jint SyNr, jobjectArray SyName, jobjectArray SyExplTxt, jintArray SyDim, jintArray SyTyp, jintArray SyCount, jintArray SyUserInfo)
{
   int rc_gamsxSymbolInfo;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   jstring local_SyName;
   char buffer_SyName[256];
   jstring local_SyExplTxt;
   char buffer_SyExplTxt[256];
   int *local_SyDim;
   int *local_SyTyp;
   int *local_SyCount;
   int *local_SyUserInfo;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   buffer_SyName[0] = '\0';
   buffer_SyExplTxt[0] = '\0';
   local_SyDim = (*env)->GetIntArrayElements(env, SyDim, NULL);
   local_SyTyp = (*env)->GetIntArrayElements(env, SyTyp, NULL);
   local_SyCount = (*env)->GetIntArrayElements(env, SyCount, NULL);
   local_SyUserInfo = (*env)->GetIntArrayElements(env, SyUserInfo, NULL);
   rc_gamsxSymbolInfo = gamsxSymbolInfo((gamsxHandle_t)pgamsx.p, SyNr, buffer_SyName, buffer_SyExplTxt, local_SyDim, local_SyTyp, local_SyCount, local_SyUserInfo);
   local_SyName = (*env)->NewStringUTF(env, buffer_SyName);
   (*env)->SetObjectArrayElement(env, SyName, 0, local_SyName);
   local_SyExplTxt = (*env)->NewStringUTF(env, buffer_SyExplTxt);
   (*env)->SetObjectArrayElement(env, SyExplTxt, 0, local_SyExplTxt);
   (*env)->ReleaseIntArrayElements(env, SyDim, local_SyDim, 0);
   (*env)->ReleaseIntArrayElements(env, SyTyp, local_SyTyp, 0);
   (*env)->ReleaseIntArrayElements(env, SyCount, local_SyCount, 0);
   (*env)->ReleaseIntArrayElements(env, SyUserInfo, local_SyUserInfo, 0);
   return rc_gamsxSymbolInfo;
}

JNIEXPORT jstring JNICALL Java_com_gams_api_gamsx_UelName(JNIEnv *env, jobject obj, jint uel, jobjectArray sst_result)
{
   char *rc_gamsxUelName;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   jstring local_sst;
   char buffer_sst[256];
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return NULL;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   buffer_sst[0] = '\0';
   rc_gamsxUelName = gamsxUelName((gamsxHandle_t)pgamsx.p, uel, buffer_sst);
   local_sst = (*env)->NewStringUTF(env, buffer_sst);
   (*env)->SetObjectArrayElement(env, sst_result, 0, local_sst);
   return (*env)->NewStringUTF(env, rc_gamsxUelName);
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_FindSymbol(JNIEnv *env, jobject obj, jstring SyName)
{
   int rc_gamsxFindSymbol;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   char *local_SyName;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_SyName = (char *)(*env)->GetStringUTFChars(env, SyName, NULL);
   rc_gamsxFindSymbol = gamsxFindSymbol((gamsxHandle_t)pgamsx.p, local_SyName);
   (*env)->ReleaseStringUTFChars(env, SyName, local_SyName);
   return rc_gamsxFindSymbol;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_DataReadRawStart(JNIEnv *env, jobject obj, jint SyNr, jintArray SyCount)
{
   int rc_gamsxDataReadRawStart;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   int *local_SyCount;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_SyCount = (*env)->GetIntArrayElements(env, SyCount, NULL);
   rc_gamsxDataReadRawStart = gamsxDataReadRawStart((gamsxHandle_t)pgamsx.p, SyNr, local_SyCount);
   (*env)->ReleaseIntArrayElements(env, SyCount, local_SyCount, 0);
   return rc_gamsxDataReadRawStart;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_DataReadRaw(JNIEnv *env, jobject obj, jintArray Elements, jdoubleArray Vals, jintArray FDim)
{
   int rc_gamsxDataReadRaw;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   int *local_Elements;
   double *local_Vals;
   int *local_FDim;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_Elements = (*env)->GetIntArrayElements(env, Elements, NULL);
   local_Vals = (*env)->GetDoubleArrayElements(env, Vals, NULL);
   local_FDim = (*env)->GetIntArrayElements(env, FDim, NULL);
   rc_gamsxDataReadRaw = gamsxDataReadRaw((gamsxHandle_t)pgamsx.p, local_Elements, local_Vals, local_FDim);
   (*env)->ReleaseIntArrayElements(env, Elements, local_Elements, 0);
   (*env)->ReleaseDoubleArrayElements(env, Vals, local_Vals, 0);
   (*env)->ReleaseIntArrayElements(env, FDim, local_FDim, 0);
   return rc_gamsxDataReadRaw;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_DataReadDone(JNIEnv *env, jobject obj)
{
   int rc_gamsxDataReadDone;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_gamsxDataReadDone = gamsxDataReadDone((gamsxHandle_t)pgamsx.p);
   return rc_gamsxDataReadDone;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_DataWriteRawStart(JNIEnv *env, jobject obj, jint SyNr, jboolean DoMerge)
{
   int rc_gamsxDataWriteRawStart;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_gamsxDataWriteRawStart = gamsxDataWriteRawStart((gamsxHandle_t)pgamsx.p, SyNr, DoMerge);
   return rc_gamsxDataWriteRawStart;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_DataWriteRaw(JNIEnv *env, jobject obj, jintArray Elements, jdoubleArray Vals)
{
   int rc_gamsxDataWriteRaw;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   int *local_Elements;
   double *local_Vals;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   local_Elements = (*env)->GetIntArrayElements(env, Elements, NULL);
   local_Vals = (*env)->GetDoubleArrayElements(env, Vals, NULL);
   rc_gamsxDataWriteRaw = gamsxDataWriteRaw((gamsxHandle_t)pgamsx.p, local_Elements, local_Vals);
   (*env)->ReleaseIntArrayElements(env, Elements, local_Elements, 0);
   (*env)->ReleaseDoubleArrayElements(env, Vals, local_Vals, 0);
   return rc_gamsxDataWriteRaw;
}

JNIEXPORT jint JNICALL Java_com_gams_api_gamsx_DataWriteDone(JNIEnv *env, jobject obj)
{
   int rc_gamsxDataWriteDone;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_gamsxDataWriteDone = gamsxDataWriteDone((gamsxHandle_t)pgamsx.p);
   return rc_gamsxDataWriteDone;
}

JNIEXPORT void JNICALL Java_com_gams_api_gamsx_RegisterCB1(JNIEnv *env, jobject obj, jstring CB1, jlong userMem)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   char *local_CB1;
   int   have_CB1 = 0;
   TBrkPCallBack1_t ptr_CB1 = NULL;
   u64_t local_userMem;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return ;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   if(CB1 != NULL)
   {
     local_CB1 = (char *)(*env)->GetStringUTFChars(env, CB1, NULL);
     if(strcmp(local_CB1,""))
       have_CB1=1;
   }
   if(have_CB1)
   {
     local_CB1 = (char *)(*env)->GetStringUTFChars(env, CB1, NULL);
     methodname_gamsxRegisterCB1_CB1 = getMethodName_(local_CB1);
     if(methodname_gamsxRegisterCB1_CB1 == NULL) printerr("Method name incomplete", local_CB1);
     classname_gamsxRegisterCB1_CB1 = getClassName_(local_CB1);
     if(classname_gamsxRegisterCB1_CB1 == NULL) printerr("Class name incomplete", local_CB1);
     sig_gamsxRegisterCB1_CB1 = "(Ljava/lang/String;IIJ)I";
     ptr_CB1=dll_gamsxRegisterCB1_CB1;
   }
   local_userMem.i = userMem;
   gamsxRegisterCB1((gamsxHandle_t)pgamsx.p, ptr_CB1, local_userMem.p);
   if(CB1 != NULL)
      (*env)->ReleaseStringUTFChars(env, CB1, local_CB1);
}

JNIEXPORT void JNICALL Java_com_gams_api_gamsx_RegisterCB2(JNIEnv *env, jobject obj, jstring CB2, jlong userMem1, jlong userMem2)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   char *local_CB2;
   int   have_CB2 = 0;
   TBrkPCallBack2_t ptr_CB2 = NULL;
   u64_t local_userMem1;
   u64_t local_userMem2;
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return ;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   if(CB2 != NULL)
   {
     local_CB2 = (char *)(*env)->GetStringUTFChars(env, CB2, NULL);
     if(strcmp(local_CB2,""))
       have_CB2=1;
   }
   if(have_CB2)
   {
     local_CB2 = (char *)(*env)->GetStringUTFChars(env, CB2, NULL);
     methodname_gamsxRegisterCB2_CB2 = getMethodName_(local_CB2);
     if(methodname_gamsxRegisterCB2_CB2 == NULL) printerr("Method name incomplete", local_CB2);
     classname_gamsxRegisterCB2_CB2 = getClassName_(local_CB2);
     if(classname_gamsxRegisterCB2_CB2 == NULL) printerr("Class name incomplete", local_CB2);
     sig_gamsxRegisterCB2_CB2 = "(Ljava/lang/String;IIJJ)I";
     ptr_CB2=dll_gamsxRegisterCB2_CB2;
   }
   local_userMem1.i = userMem1;
   local_userMem2.i = userMem2;
   gamsxRegisterCB2((gamsxHandle_t)pgamsx.p, ptr_CB2, local_userMem1.p, local_userMem2.p);
   if(CB2 != NULL)
      (*env)->ReleaseStringUTFChars(env, CB2, local_CB2);
}

JNIEXPORT jstring JNICALL Java_com_gams_api_gamsx_GetCB1(JNIEnv *env, jobject obj)
{
   TBrkPCallBack1_t rc_gamsxGetCB1;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return NULL;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_gamsxGetCB1 = gamsxGetCB1((gamsxHandle_t)pgamsx.p);
   ReturnName = 1;
   rc_gamsxGetCB1((char *) 0, (int ) 0, (int ) 0, (void *) 0);
   ReturnName = 0;
   return (*env)->NewStringUTF(env, ClassDotMethodName);
}

JNIEXPORT jstring JNICALL Java_com_gams_api_gamsx_GetCB2(JNIEnv *env, jobject obj)
{
   TBrkPCallBack2_t rc_gamsxGetCB2;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return NULL;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_gamsxGetCB2 = gamsxGetCB2((gamsxHandle_t)pgamsx.p);
   ReturnName = 1;
   rc_gamsxGetCB2((char *) 0, (int ) 0, (int ) 0, (void *) 0, (void *) 0);
   ReturnName = 0;
   return (*env)->NewStringUTF(env, ClassDotMethodName);
}

JNIEXPORT jlong JNICALL Java_com_gams_api_gamsx_GetCB1UM(JNIEnv *env, jobject obj)
{
   u64_t rc_gamsxGetCB1UM;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return (jlong) NULL;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_gamsxGetCB1UM.p = gamsxGetCB1UM((gamsxHandle_t)pgamsx.p);
   return rc_gamsxGetCB1UM.i;
}

JNIEXPORT jlong JNICALL Java_com_gams_api_gamsx_GetCB2UM1(JNIEnv *env, jobject obj)
{
   u64_t rc_gamsxGetCB2UM1;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return (jlong) NULL;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_gamsxGetCB2UM1.p = gamsxGetCB2UM1((gamsxHandle_t)pgamsx.p);
   return rc_gamsxGetCB2UM1.i;
}

JNIEXPORT jlong JNICALL Java_com_gams_api_gamsx_GetCB2UM2(JNIEnv *env, jobject obj)
{
   u64_t rc_gamsxGetCB2UM2;
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return (jlong) NULL;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   rc_gamsxGetCB2UM2.p = gamsxGetCB2UM2((gamsxHandle_t)pgamsx.p);
   return rc_gamsxGetCB2UM2.i;
}

JNIEXPORT void JNICALL Java_com_gams_api_gamsx_SWSet(JNIEnv *env, jobject obj, jint x)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   gamsxSWSet((gamsxHandle_t)pgamsx.p, x);
}

JNIEXPORT jboolean JNICALL Java_com_gams_api_gamsx_StepThrough(JNIEnv *env, jobject obj)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   return gamsxStepThrough((gamsxHandle_t)pgamsx.p);
}

JNIEXPORT void JNICALL Java_com_gams_api_gamsx_StepThroughSet(JNIEnv *env, jobject obj, jboolean x)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   gamsxStepThroughSet((gamsxHandle_t)pgamsx.p, x);
}

JNIEXPORT jboolean JNICALL Java_com_gams_api_gamsx_RunToEnd(JNIEnv *env, jobject obj)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   return gamsxRunToEnd((gamsxHandle_t)pgamsx.p);
}

JNIEXPORT void JNICALL Java_com_gams_api_gamsx_RunToEndSet(JNIEnv *env, jobject obj, jboolean x)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   gamsxRunToEndSet((gamsxHandle_t)pgamsx.p, x);
}

JNIEXPORT jboolean JNICALL Java_com_gams_api_gamsx_CB1Defined(JNIEnv *env, jobject obj)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   return gamsxCB1Defined((gamsxHandle_t)pgamsx.p);
}

JNIEXPORT jboolean JNICALL Java_com_gams_api_gamsx_CB2Defined(JNIEnv *env, jobject obj)
{
   jfieldID fid;
   u64_t pgamsx;
   jclass cls = (*env)->GetObjectClass(env, obj);
   fid = (*env)->GetFieldID(env, cls, "gamsxPtr", "J");
   if (fid == NULL) return 0;
   pgamsx.i = (*env)->GetLongField(env, obj, fid);
   return gamsxCB2Defined((gamsxHandle_t)pgamsx.p);
}
