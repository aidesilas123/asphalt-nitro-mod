package com.bytedance.sdk.openadsdk.core.model;

import com.bytedance.sdk.openadsdk.utils.ab;

/* JADX INFO: compiled from: TTAppOpenAdReportModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class v {
    public boolean a;
    public long b;
    private ab c = ab.b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ab f1605d = ab.b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f1606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1607f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f1608g;
    private long h;
    private long i;
    private long j;
    private int k;

    public ab a() {
        return this.c;
    }

    public void a(int i) {
        this.k = i;
    }

    public void a(long j) {
        this.j = j;
    }

    public void a(ab abVar) {
        this.c = abVar;
    }

    public void a(ab abVar, ab abVar2, int i, ab abVar3) {
        this.f1606e = abVar.a(this.c);
        this.f1607f = abVar2.a(abVar);
        this.f1608g = i;
        this.h = abVar3.a(abVar2);
    }

    public long b() {
        return this.f1606e;
    }

    public void b(ab abVar) {
        this.f1605d = abVar;
        this.i = abVar.a(this.c);
    }

    public long c() {
        return this.f1607f;
    }

    public long d() {
        return this.f1608g;
    }

    public long e() {
        return this.h;
    }

    public long f() {
        return this.i;
    }

    public long g() {
        return this.j;
    }

    public int h() {
        return this.k;
    }
}
