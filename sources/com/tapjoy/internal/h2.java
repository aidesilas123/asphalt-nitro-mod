package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class h2 {
    public final Context a;
    public final SharedPreferences b;
    public final o3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o3 f7906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final u1 f7907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final u1 f7908f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final o3 f7909g;
    public final u1 h;
    public final b3 i;
    public final b3 j;
    public final b3 k;
    public final b3 l;
    public final o3 m;
    public final u1 n;
    public final r3 o;
    public final b3 p;
    public final r3 q;
    public final o3 r;
    public final u1 s;
    public final o3 t;
    public final o3 u;
    public final c v;
    public final c w;
    public final o3 x;

    public h2(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("fiverocks", 0);
        this.b = sharedPreferences;
        this.c = new o3(sharedPreferences, "sdk");
        this.f7906d = new o3(sharedPreferences, "ir");
        this.f7907e = new u1(sharedPreferences, "fql", 0);
        this.f7908f = new u1(sharedPreferences, "fq", 0);
        this.f7909g = new o3(sharedPreferences, "push");
        this.h = new u1(sharedPreferences, "ss", 0);
        this.i = new b3(sharedPreferences, "std");
        this.j = new b3(sharedPreferences, "slt");
        this.k = new b3(sharedPreferences, "sst");
        this.l = new b3(sharedPreferences, "sld");
        this.m = new o3(sharedPreferences, "ptc");
        this.n = new u1(sharedPreferences, "pc", 0);
        this.o = new r3(sharedPreferences, "ptp");
        this.p = new b3(sharedPreferences, "lpt");
        this.q = new r3(sharedPreferences, "plp");
        this.r = new o3(sharedPreferences, "ui");
        this.s = new u1(sharedPreferences, "ul", -1);
        this.t = new o3(sharedPreferences, "utags");
        this.u = new o3(sharedPreferences, "idfa");
        this.v = new c(sharedPreferences, "idfa.optout");
        this.w = new c(sharedPreferences, "push.optout");
        this.x = new o3(sharedPreferences, "appId");
    }

    public final String a() {
        File file;
        String string = this.b.getString("ir", null);
        if (string != null) {
            if (string.length() > 0) {
                return string;
            }
            return null;
        }
        Context context = this.a;
        synchronized (v1.class) {
            if (v1.c == null) {
                v1.c = context.getDir("fiverocks", 0);
            }
            file = v1.c;
        }
        File file2 = new File(file, "referrer");
        if (file2.exists()) {
            try {
                string = g7.a(file2);
            } catch (IOException unused) {
            }
        }
        this.b.edit().putString("ir", string != null ? string : "").apply();
        if (string == null || string.length() <= 0) {
            return null;
        }
        return string;
    }

    public final long b() {
        File file;
        String strA;
        long jLastModified = this.b.getLong("it", 0L);
        if (jLastModified == 0) {
            Context context = this.a;
            try {
                jLastModified = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (jLastModified <= 0) {
                jLastModified = 0;
            }
            if (jLastModified == 0) {
                Context context2 = this.a;
                v1 v1Var = v1.a;
                synchronized (v1.class) {
                    if (v1.c == null) {
                        v1.c = context2.getDir("fiverocks", 0);
                    }
                    file = v1.c;
                }
                jLastModified = new File(file, "install").lastModified();
                if (jLastModified == 0) {
                    Context context3 = this.a;
                    try {
                        strA = r9.a(context3.getPackageManager().getApplicationInfo(context3.getPackageName(), 0).sourceDir);
                    } catch (PackageManager.NameNotFoundException unused2) {
                        strA = null;
                    }
                    jLastModified = new File(strA).lastModified();
                    if (jLastModified == 0) {
                        jLastModified = System.currentTimeMillis();
                    }
                }
            }
            this.b.edit().putLong("it", jLastModified).apply();
        }
        return jLastModified;
    }
}
