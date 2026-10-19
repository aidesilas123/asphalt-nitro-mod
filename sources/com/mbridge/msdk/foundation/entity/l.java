package com.mbridge.msdk.foundation.entity;

/* JADX INFO: compiled from: ReportData.java */
/* JADX INFO: loaded from: classes4.dex */
public final class l {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f7084f;

    public l() {
    }

    public l(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.f7082d = str4;
    }

    public final String a() {
        return this.f7082d;
    }

    public final void a(int i) {
        this.f7083e = i;
    }

    public final void a(long j) {
        this.f7084f = j;
    }

    public final void a(String str) {
        this.a = str;
    }

    public final String b() {
        return this.a;
    }

    public final void b(String str) {
        this.b = str;
    }

    public final String c() {
        return this.b;
    }

    public final void c(String str) {
        this.c = str;
    }

    public final String d() {
        return this.c;
    }

    public final int e() {
        return this.f7083e;
    }

    public final long f() {
        return this.f7084f;
    }
}
