package com.bytedance.sdk.openadsdk.utils;

import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: ThreadUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class aa {
    public static ScheduledExecutorService a() {
        return com.bytedance.sdk.component.g.f.f();
    }

    public static void a(com.bytedance.sdk.component.g.h hVar) {
        com.bytedance.sdk.component.g.f.a(hVar);
    }

    public static void a(com.bytedance.sdk.component.g.h hVar, int i) {
        if (hVar == null) {
            return;
        }
        com.bytedance.sdk.component.g.f.a(hVar, 5, i);
    }

    public static void a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (e()) {
            runnable.run();
        } else {
            com.bytedance.sdk.openadsdk.core.l.c().post(runnable);
        }
    }

    public static ExecutorService b() {
        return com.bytedance.sdk.component.g.f.j();
    }

    public static void b(com.bytedance.sdk.component.g.h hVar) {
        com.bytedance.sdk.component.g.f.b(hVar);
    }

    public static void b(com.bytedance.sdk.component.g.h hVar, int i) {
        if (hVar == null) {
            return;
        }
        com.bytedance.sdk.component.g.f.b(hVar, i);
    }

    public static ExecutorService c() {
        return com.bytedance.sdk.component.g.f.d();
    }

    public static void c(com.bytedance.sdk.component.g.h hVar) {
        if (hVar == null) {
            return;
        }
        com.bytedance.sdk.component.g.f.c(hVar);
    }

    public static void c(com.bytedance.sdk.component.g.h hVar, int i) {
        if (hVar == null) {
            return;
        }
        com.bytedance.sdk.component.g.f.c(hVar, i);
    }

    public static ExecutorService d() {
        return com.bytedance.sdk.component.g.f.b();
    }

    public static void d(com.bytedance.sdk.component.g.h hVar) {
        if (hVar == null) {
            return;
        }
        com.bytedance.sdk.component.g.f.e(hVar);
    }

    public static boolean e() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static boolean f() {
        return "csj_log".equals(Thread.currentThread().getName());
    }

    public static ExecutorService g() {
        return com.bytedance.sdk.component.g.f.c();
    }
}
