package com.bytedance.sdk.openadsdk.core;

import androidx.annotation.MainThread;

/* JADX INFO: compiled from: SingleAppData.java */
/* JADX INFO: loaded from: classes2.dex */
public class s {
    private static s a;
    private com.bytedance.sdk.openadsdk.core.model.a b;
    private com.bytedance.sdk.openadsdk.core.model.q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.apiImpl.d.a f1667d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.apiImpl.b.b f1668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.apiImpl.c.b f1669f;

    private s() {
    }

    @MainThread
    public static s a() {
        if (a == null) {
            a = new s();
        }
        return a;
    }

    public void a(com.bytedance.sdk.openadsdk.apiImpl.b.b bVar) {
        this.f1668e = bVar;
    }

    public void a(com.bytedance.sdk.openadsdk.apiImpl.c.b bVar) {
        this.f1669f = bVar;
    }

    public void a(com.bytedance.sdk.openadsdk.apiImpl.d.a aVar) {
        this.f1667d = aVar;
    }

    public void a(com.bytedance.sdk.openadsdk.core.model.a aVar) {
        this.b = aVar;
    }

    public void a(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        this.c = qVar;
    }

    public com.bytedance.sdk.openadsdk.core.model.q b() {
        return this.c;
    }

    public com.bytedance.sdk.openadsdk.apiImpl.d.a c() {
        return this.f1667d;
    }

    public com.bytedance.sdk.openadsdk.apiImpl.b.b d() {
        return this.f1668e;
    }

    public com.bytedance.sdk.openadsdk.apiImpl.c.b e() {
        return this.f1669f;
    }

    public void f() {
        this.c = null;
        this.b = null;
        this.f1667d = null;
        this.f1668e = null;
        this.f1669f = null;
    }

    public com.bytedance.sdk.openadsdk.core.model.a g() {
        return this.b;
    }
}
