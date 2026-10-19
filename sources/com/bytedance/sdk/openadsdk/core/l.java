package com.bytedance.sdk.openadsdk.core;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: InitHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class l {
    public static volatile boolean a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static long f1546e;
    public static AtomicBoolean b = new AtomicBoolean(false);
    public static long c = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile int f1547f = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static float f1545d = 1.0f;
    private static volatile Handler h = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile HandlerThread f1548g = new HandlerThread("csj_init_handle", 10);

    static {
        f1548g.start();
        f1546e = System.currentTimeMillis();
    }

    public static long a() {
        return f1546e;
    }

    public static void a(int i) {
        f1547f = i;
    }

    public static void a(long j) {
        f1546e = j;
    }

    public static Handler b() {
        if (f1548g == null || !f1548g.isAlive()) {
            synchronized (l.class) {
                if (f1548g == null || !f1548g.isAlive()) {
                    f1548g = new HandlerThread("csj_init_handle", -1);
                    f1548g.start();
                    h = new Handler(f1548g.getLooper());
                }
            }
        } else if (h == null) {
            synchronized (l.class) {
                if (h == null) {
                    h = new Handler(f1548g.getLooper());
                }
            }
        }
        return h;
    }

    public static Handler c() {
        return new Handler(Looper.getMainLooper());
    }

    public static int d() {
        return f1547f;
    }

    public static boolean e() {
        return d() == 1;
    }

    public static void f() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - c <= 10000) {
            return;
        }
        c = jElapsedRealtime;
        com.bytedance.sdk.openadsdk.utils.aa.a(new com.bytedance.sdk.component.g.h("onSharedPreferenceChanged") { // from class: com.bytedance.sdk.openadsdk.core.l.1
            @Override // java.lang.Runnable
            public void run() {
                String strC = com.bytedance.sdk.openadsdk.core.settings.o.c(o.a());
                if (TextUtils.equals(strC, com.bytedance.sdk.openadsdk.core.settings.o.a)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.settings.o.aj().a(6, true);
                com.bytedance.sdk.openadsdk.core.settings.o.a = strC;
            }
        });
    }
}
