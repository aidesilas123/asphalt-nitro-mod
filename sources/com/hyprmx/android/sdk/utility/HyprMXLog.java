package com.hyprmx.android.sdk.utility;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\tH\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 H\u0002J\b\u0010!\u001a\u00020\u001dH\u0002J\u0018\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u0012\u0010\"\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\u0018\u0010$\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u0018\u0010$\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0012\u0010$\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u0014H\u0007J\u0018\u0010'\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u0016\u0010'\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 J\u0012\u0010'\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\r\u0010(\u001a\u00020\u0014H\u0000¢\u0006\u0002\b)J\u0015\u0010\u0018\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u0014H\u0000¢\u0006\u0002\b+J\u0016\u0010,\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tJ\u0018\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0004H\u0002J \u0010-\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0004H\u0002J\u0006\u00100\u001a\u00020\u001dJ#\u00101\u001a\u00020\u00142\u0006\u00102\u001a\u0002032\u0006\u0010&\u001a\u00020\u0014H\u0080@ø\u0001\u0000¢\u0006\u0004\b4\u00105J\u001b\u00106\u001a\u00020\u001d2\u0006\u00102\u001a\u000203H\u0080@ø\u0001\u0000¢\u0006\u0004\b7\u00108J\u0012\u00109\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\u0018\u0010:\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u0016\u0010:\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 J\u0012\u0010:\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006;"}, d2 = {"Lcom/hyprmx/android/sdk/utility/HyprMXLog;", "", "()V", "DEBUG_LOG", "", "ERROR_LOG", "INFO_LOG", "MAX_LOG_SIZE", "PREF_ALL_LOGGING_ENABLED", "", "SEPARATOR_STR", "VERBOSE_LOG", "WARNING_LOG", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getIoDispatcher$HyprMX_Mobile_Android_SDK_release", "()Lkotlinx/coroutines/CoroutineDispatcher;", "setIoDispatcher$HyprMX_Mobile_Android_SDK_release", "(Lkotlinx/coroutines/CoroutineDispatcher;)V", "isLoggingOverrideFromServerEnabled", "", "isLoggingToLogcatEnabled", "logMessage", "Ljava/lang/StringBuffer;", "logToSystemOut", "loggedMessages", "getLoggedMessages$HyprMX_Mobile_Android_SDK_release", "()Ljava/lang/String;", "captureLog", "", "message", "throwable", "", "checkBuffer", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "tag", "e", "enableDebugLogs", b4.r, "i", "isLoggingEnabled", "isLoggingEnabled$HyprMX_Mobile_Android_SDK_release", com.json.mediationsdk.metadata.a.i, "logToSystemOut$HyprMX_Mobile_Android_SDK_release", "longDebugLog", "out", "msg", "logType", "resetLoggedMessages", "setAllLoggingEnabled", "context", "Landroid/content/Context;", "setAllLoggingEnabled$HyprMX_Mobile_Android_SDK_release", "(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setup", "setup$HyprMX_Mobile_Android_SDK_release", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "v", "w", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public final class HyprMXLog {
    private static final int DEBUG_LOG = 1;
    private static final int ERROR_LOG = 4;
    private static final int INFO_LOG = 2;
    private static final int MAX_LOG_SIZE = 800;
    public static final String PREF_ALL_LOGGING_ENABLED = "ALL_LOGGING_ENABLED_PREF";
    private static final String SEPARATOR_STR = " ---- @ ";
    private static final int VERBOSE_LOG = 0;
    private static final int WARNING_LOG = 3;
    private static boolean isLoggingOverrideFromServerEnabled;
    private static boolean isLoggingToLogcatEnabled;
    private static boolean logToSystemOut;
    public static final HyprMXLog INSTANCE = new HyprMXLog();
    private static final StringBuffer logMessage = new StringBuffer();
    private static CoroutineDispatcher ioDispatcher = Dispatchers.getIO();

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.HyprMXLog$setAllLoggingEnabled$2", f = "HyprMXLog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ Context b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, boolean z, Continuation continuation) {
            super(2, continuation);
            this.a = z;
            this.b = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new a(this.b, this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXLog hyprMXLog = HyprMXLog.INSTANCE;
            HyprMXLog.isLoggingOverrideFromServerEnabled = this.a;
            SharedPreferences.Editor editorEdit = this.b.getSharedPreferences("hyprmx_prefs_internal", 0).edit();
            editorEdit.putBoolean(HyprMXLog.PREF_ALL_LOGGING_ENABLED, this.a);
            return Boxing.boxBoolean(editorEdit.commit());
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.HyprMXLog$setup$2", f = "HyprMXLog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Continuation<? super b> continuation) {
            super(2, continuation);
            this.a = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new b(this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            SharedPreferences sharedPreferences = this.a.getSharedPreferences("hyprmx_prefs_internal", 0);
            HyprMXLog hyprMXLog = HyprMXLog.INSTANCE;
            HyprMXLog.isLoggingOverrideFromServerEnabled = sharedPreferences.getBoolean(HyprMXLog.PREF_ALL_LOGGING_ENABLED, false);
            return kotlin.v.a;
        }
    }

    private HyprMXLog() {
    }

    private final synchronized void captureLog(String message) {
        checkBuffer();
        logMessage.append(message + '\n');
    }

    private final synchronized void captureLog(String message, Throwable throwable) {
        checkBuffer();
        logMessage.append(message + ' ' + throwable + '\n');
    }

    private final void checkBuffer() {
        StringBuffer stringBuffer = logMessage;
        if (stringBuffer.length() > MAX_LOG_SIZE) {
            stringBuffer.delete(0, stringBuffer.length() - MAX_LOG_SIZE);
        }
    }

    public static final void d(String message) {
        if (message != null) {
            HyprMXLog hyprMXLog = INSTANCE;
            hyprMXLog.captureLog(message);
            if (hyprMXLog.isLoggingEnabled$HyprMX_Mobile_Android_SDK_release()) {
                hyprMXLog.out(message, 1);
            }
        }
    }

    public static final void d(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        HyprMXLog hyprMXLog = INSTANCE;
        hyprMXLog.captureLog(message);
        if (hyprMXLog.isLoggingEnabled$HyprMX_Mobile_Android_SDK_release()) {
            hyprMXLog.out(tag, message, 1);
        }
    }

    public static final void e(String message) {
        if (message != null) {
            HyprMXLog hyprMXLog = INSTANCE;
            hyprMXLog.captureLog(message);
            hyprMXLog.out(message, 4);
        }
    }

    public static final void e(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        HyprMXLog hyprMXLog = INSTANCE;
        hyprMXLog.captureLog(message);
        hyprMXLog.out(tag, message, 4);
    }

    public static final void e(String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        HyprMXLog hyprMXLog = INSTANCE;
        hyprMXLog.captureLog(message, throwable);
        hyprMXLog.out(message + '\n' + Log.getStackTraceString(throwable), 4);
    }

    public static final void e(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        String stackTraceString = Log.getStackTraceString(throwable);
        Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(throwable)");
        HyprMXLog hyprMXLog = INSTANCE;
        hyprMXLog.captureLog(stackTraceString);
        hyprMXLog.out(stackTraceString, 4);
    }

    public static final void enableDebugLogs(boolean enabled) {
        isLoggingToLogcatEnabled = enabled;
    }

    public static final void i(String message) {
        if (message != null) {
            HyprMXLog hyprMXLog = INSTANCE;
            hyprMXLog.captureLog(message);
            hyprMXLog.out(message, 2);
        }
    }

    public static final void i(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        HyprMXLog hyprMXLog = INSTANCE;
        hyprMXLog.captureLog(message);
        hyprMXLog.out(tag, message, 2);
    }

    private final void out(String msg, int logType) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        String className = stackTraceElement.getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "element.className");
        int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) className, ".", 0, false, 6, (Object) null) + 1;
        String className2 = stackTraceElement.getClassName();
        Intrinsics.checkNotNullExpressionValue(className2, "element.className");
        int iLastIndexOf$default2 = StringsKt__StringsKt.lastIndexOf$default((CharSequence) className2, "$", 0, false, 6, (Object) null);
        if (iLastIndexOf$default2 == -1) {
            iLastIndexOf$default2 = stackTraceElement.getClassName().length();
        }
        String className3 = stackTraceElement.getClassName();
        Intrinsics.checkNotNullExpressionValue(className3, "element.className");
        String strSubstring = className3.substring(iLastIndexOf$default, iLastIndexOf$default2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        out(strSubstring, msg + SEPARATOR_STR + stackTraceElement, logType);
    }

    private final void out(String tag, String msg, int logType) {
        if (logToSystemOut) {
            System.out.println((Object) (tag + " - " + msg + '\n'));
        }
        if (logType == 0) {
            Log.v(tag, msg);
            return;
        }
        if (logType == 1) {
            Log.d(tag, msg);
            return;
        }
        if (logType == 2) {
            Log.i(tag, msg);
        } else if (logType == 3) {
            Log.w(tag, msg);
        } else {
            if (logType != 4) {
                return;
            }
            Log.e(tag, msg);
        }
    }

    public static final void v(String message) {
        if (message != null) {
            HyprMXLog hyprMXLog = INSTANCE;
            hyprMXLog.captureLog(message);
            if (hyprMXLog.isLoggingEnabled$HyprMX_Mobile_Android_SDK_release()) {
                hyprMXLog.out(message, 0);
            }
        }
    }

    public static final void w(String message) {
        if (message != null) {
            HyprMXLog hyprMXLog = INSTANCE;
            hyprMXLog.captureLog(message);
            hyprMXLog.out(message, 3);
        }
    }

    public static final void w(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        HyprMXLog hyprMXLog = INSTANCE;
        hyprMXLog.captureLog(message);
        hyprMXLog.out(tag, message, 3);
    }

    public final CoroutineDispatcher getIoDispatcher$HyprMX_Mobile_Android_SDK_release() {
        return ioDispatcher;
    }

    public final String getLoggedMessages$HyprMX_Mobile_Android_SDK_release() {
        String string = logMessage.toString();
        Intrinsics.checkNotNullExpressionValue(string, "logMessage.toString()");
        return string;
    }

    public final void i(String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        captureLog(message, throwable);
        out(message + '\n' + Log.getStackTraceString(throwable), 2);
    }

    public final boolean isLoggingEnabled$HyprMX_Mobile_Android_SDK_release() {
        return isLoggingOverrideFromServerEnabled || isLoggingToLogcatEnabled;
    }

    public final void logToSystemOut$HyprMX_Mobile_Android_SDK_release(boolean enable) {
        logToSystemOut = enable;
    }

    public final void longDebugLog(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (message.length() <= 4000) {
            d(tag, message);
            return;
        }
        String strSubstring = message.substring(0, 4000);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        d(tag, strSubstring);
        String strSubstring2 = message.substring(4000);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
        longDebugLog(tag, strSubstring2);
    }

    public final synchronized void resetLoggedMessages() {
        StringBuffer stringBuffer = logMessage;
        stringBuffer.delete(0, stringBuffer.length());
    }

    public final Object setAllLoggingEnabled$HyprMX_Mobile_Android_SDK_release(Context context, boolean z, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(ioDispatcher, new a(context, z, null), continuation);
    }

    public final void setIoDispatcher$HyprMX_Mobile_Android_SDK_release(CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "<set-?>");
        ioDispatcher = coroutineDispatcher;
    }

    public final Object setup$HyprMX_Mobile_Android_SDK_release(Context context, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(ioDispatcher, new b(context, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    public final void w(String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        captureLog(message, throwable);
        out(message + '\n' + Log.getStackTraceString(throwable), 3);
    }
}
