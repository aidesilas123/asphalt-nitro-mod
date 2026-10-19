package com.hyprmx.android.sdk.p002assert;

import android.os.Looper;
import com.hyprmx.android.sdk.analytics.b;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.s;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a {
    public static void a(ThreadAssert threadAssert) {
        b clientErrorController;
        if (!Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper()) || (clientErrorController = threadAssert.getClientErrorController()) == null) {
            return;
        }
        clientErrorController.a(s.HYPRErrorTypeSDKInternalError, d(threadAssert, "Background Thread"), 5);
    }

    public static void b(ThreadAssert threadAssert) {
        b clientErrorController;
        if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper()) || (clientErrorController = threadAssert.getClientErrorController()) == null) {
            return;
        }
        clientErrorController.a(s.HYPRErrorTypeSDKInternalError, d(threadAssert, "Main"), 5);
    }

    public static void c(ThreadAssert threadAssert, String str) {
        HyprMXLog.e(str);
        b clientErrorController = threadAssert.getClientErrorController();
        if (clientErrorController != null) {
            clientErrorController.a(s.HYPRErrorTypeShouldNeverHappen, "THIS SHOULD NEVER BE CALLED! " + str, 5);
        }
    }

    public static String d(ThreadAssert threadAssert, String str) {
        int lineNumber;
        String className;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String methodName = null;
        if (stackTrace.length > 4) {
            StackTraceElement stackTraceElement = stackTrace[4];
            methodName = stackTraceElement.getMethodName();
            className = stackTraceElement.getClassName();
            lineNumber = stackTraceElement.getLineNumber();
        } else {
            lineNumber = -1;
            className = null;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str2 = String.format("Method %s must called on the %s Thread. But was calling on the %s thread. Class: %s, line: %d", Arrays.copyOf(new Object[]{methodName, str, Thread.currentThread().getName(), className, Integer.valueOf(lineNumber)}, 5));
        Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
        return str2;
    }
}
