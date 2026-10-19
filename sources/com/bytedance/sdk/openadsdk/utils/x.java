package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: TTCrashHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public class x implements Thread.UncaughtExceptionHandler {
    private final Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();
    private String b;

    private x() {
        Thread.setDefaultUncaughtExceptionHandler(this);
        b();
    }

    public static x a() {
        return new x();
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0116 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x010e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.lang.Thread r19, java.lang.Throwable r20) {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.x.a(java.lang.Thread, java.lang.Throwable):void");
    }

    private void b() {
        Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
        if (contextA == null) {
            return;
        }
        try {
            File file = new File(contextA.getFilesDir(), "TTCache");
            file.mkdirs();
            this.b = file.getPath();
        } catch (Throwable unused) {
        }
    }

    private void c() {
        try {
            Method methodA = com.bytedance.sdk.component.utils.w.a("com.bytedance.sdk.openadsdk.TTC2Proxy", "a", Context.class);
            if (methodA != null) {
                methodA.invoke(null, com.bytedance.sdk.openadsdk.core.o.a());
            }
        } catch (Throwable unused) {
        }
        try {
            Method methodA2 = com.bytedance.sdk.component.utils.w.a("com.bytedance.sdk.openadsdk.TTC3Proxy", "a", Context.class);
            if (methodA2 != null) {
                methodA2.invoke(null, com.bytedance.sdk.openadsdk.core.o.a());
            }
        } catch (Throwable unused2) {
        }
        try {
            com.bytedance.sdk.openadsdk.core.settings.o.aj().a();
        } catch (Throwable unused3) {
        }
        try {
            com.bytedance.sdk.component.adexpress.a.b.a.b();
        } catch (Throwable unused4) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String string;
        try {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        } catch (Throwable unused) {
        }
        if (string != null ? string.contains(AdSlot.class.getPackage().getName()) : false) {
            a(thread, th);
        }
        com.bytedance.sdk.component.g.f.a(false);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
