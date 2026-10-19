package com.json;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class n3 {
    private static n3 a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6440g;
    private final e5 h;

    private n3(Context context) {
        e5 e5VarC = e9.h().c();
        this.h = e5VarC;
        this.b = e5VarC.g();
        this.c = e5VarC.e();
        this.f6437d = e5VarC.l();
        this.f6438e = e5VarC.o();
        this.f6439f = e5VarC.k();
        this.f6440g = e5VarC.j(context);
    }

    public static n3 b(Context context) {
        if (a == null) {
            a = new n3(context);
        }
        return a;
    }

    public static void g() {
        a = null;
    }

    public float a(Context context) {
        return this.h.m(context);
    }

    public int a() {
        return this.f6439f;
    }

    public String b() {
        return this.f6440g;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.f6437d;
    }

    public String f() {
        return this.f6438e;
    }
}
