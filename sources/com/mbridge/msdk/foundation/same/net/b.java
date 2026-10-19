package com.mbridge.msdk.foundation.same.net;

/* JADX INFO: compiled from: DefaultRetryPolicy.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b implements m {
    private int a;
    private int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7133d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7134e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7135f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7136g;
    private int h;

    public b() {
        this(30000, 0);
    }

    public b(int i, int i2) {
        this.f7133d = 2;
        this.f7134e = 0;
        this.f7135f = 0;
        this.f7136g = 0;
        this.h = 0;
        this.a = i <= 0 ? 30000 : i;
        this.c = i2;
    }

    public b(int i, int i2, int i3, int i4, int i5) {
        this.f7133d = 2;
        this.f7134e = 0;
        this.f7135f = 0;
        this.f7136g = 0;
        this.h = 0;
        this.f7134e = Math.max(i, 0);
        this.f7135f = Math.max(i2, 0);
        this.f7136g = Math.max(i3, 0);
        this.h = Math.max(i4, 0);
        this.c = Math.max(i5, 0);
    }

    public b(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f7133d = 2;
        this.f7134e = 0;
        this.f7135f = 0;
        this.f7136g = 0;
        this.h = 0;
        this.f7134e = Math.max(i, 0);
        this.f7135f = Math.max(i2, 0);
        this.f7136g = Math.max(i3, 0);
        this.h = Math.max(i4, 0);
        this.c = Math.max(i5, 0);
        this.f7133d = i6;
    }

    @Override // com.mbridge.msdk.foundation.same.net.m
    public final int a() {
        return this.c;
    }

    @Override // com.mbridge.msdk.foundation.same.net.m
    public final boolean a(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        int i = this.b + 1;
        this.b = i;
        return i <= this.c;
    }

    @Override // com.mbridge.msdk.foundation.same.net.m
    public final int b() {
        return this.a;
    }

    @Override // com.mbridge.msdk.foundation.same.net.m
    public final int c() {
        return this.f7134e;
    }

    @Override // com.mbridge.msdk.foundation.same.net.m
    public final int d() {
        return this.f7135f;
    }

    @Override // com.mbridge.msdk.foundation.same.net.m
    public final int e() {
        return this.f7136g;
    }

    @Override // com.mbridge.msdk.foundation.same.net.m
    public final int f() {
        return this.h;
    }
}
