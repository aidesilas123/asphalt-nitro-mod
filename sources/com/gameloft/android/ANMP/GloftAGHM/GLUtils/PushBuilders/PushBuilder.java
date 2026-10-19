package com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PushBuilder {
    Context a;
    String b = null;
    String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    PendingIntent f2793d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    PendingIntent f2794e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f2795f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f2796g = 0;
    boolean h = true;
    int i = 0;
    String[] j = null;
    int k = 0;
    int l = 0;
    boolean m = false;
    boolean n = false;
    boolean o = false;
    String p = null;
    int q = 0;

    public PushBuilder(Context context) {
        this.a = context;
    }

    public static PushBuilder getBuilder(Context context) {
        int i = Build.VERSION.SDK_INT;
        return i < 11 ? new a(context) : i < 16 ? new b(context) : i >= 26 ? new d(context) : new c(context);
    }

    public abstract Notification a();

    public void b(boolean z) {
        this.h = z;
    }

    public void c(String str) {
        this.p = str;
    }

    public void d(PendingIntent pendingIntent) {
        this.f2793d = pendingIntent;
    }

    public void e(PendingIntent pendingIntent) {
        this.f2794e = pendingIntent;
    }

    public void f(String str) {
        this.b = str;
    }

    public void g(int i) {
        this.q = i;
    }

    public void h(int i) {
        this.i = i;
    }

    public void i(String[] strArr) {
        this.j = strArr;
    }

    public void j(long j) {
        this.f2796g = j;
    }

    public void k(String str) {
        this.c = str;
    }
}
