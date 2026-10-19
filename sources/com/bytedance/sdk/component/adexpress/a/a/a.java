package com.bytedance.sdk.component.adexpress.a.a;

import com.bytedance.sdk.component.d.n;

/* JADX INFO: compiled from: AdapterInstance.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static a f645e = new a();
    private volatile b a;
    private volatile d b;
    private volatile c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile n f646d;

    private a() {
    }

    public static a a() {
        return f645e;
    }

    public void a(b bVar) {
        this.a = bVar;
    }

    public void a(c cVar) {
        this.c = cVar;
    }

    public void a(d dVar) {
        this.b = dVar;
    }

    public void a(n nVar) {
        this.f646d = nVar;
    }

    public b b() {
        return this.a;
    }

    public c c() {
        return this.c;
    }

    public d d() {
        return this.b;
    }

    public n e() {
        return this.f646d;
    }
}
