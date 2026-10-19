package com.mbridge.msdk.mbbanner.common.a;

/* JADX INFO: compiled from: BannerRequestInfo.java */
/* JADX INFO: loaded from: classes4.dex */
public class b {
    private static final String a = "b";
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7267g = false;

    public b(String str, int i) {
        this.b = str;
        this.c = i;
    }

    public final String a() {
        return this.b;
    }

    public final void a(String str) {
        this.f7264d = str;
    }

    public final void a(boolean z) {
        this.f7267g = z;
    }

    public final int b() {
        return this.c;
    }

    public final void b(String str) {
        this.f7265e = str;
    }

    public final String c() {
        return this.f7264d;
    }

    public final void c(String str) {
        this.f7266f = str;
    }

    public final String d() {
        return this.f7265e;
    }

    public final String e() {
        return this.f7266f;
    }

    public final boolean f() {
        return this.f7267g;
    }
}
