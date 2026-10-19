package com.bytedance.sdk.openadsdk.component.e;

import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: TTAppOpenAdCallBackResult.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private int a;
    private int b;
    private q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1291f;

    public b(int i, int i2, int i3, String str) {
        this.a = i;
        this.b = i2;
        this.f1289d = i3;
        this.f1290e = str;
    }

    public b(int i, int i2, q qVar) {
        this.a = i;
        this.b = i2;
        this.c = qVar;
    }

    public void a(boolean z) {
        this.f1291f = z;
    }

    public boolean a() {
        return this.f1291f;
    }

    public int b() {
        return this.a;
    }

    public int c() {
        return this.b;
    }

    public q d() {
        return this.c;
    }

    public int e() {
        return this.f1289d;
    }

    public String f() {
        return this.f1290e;
    }
}
