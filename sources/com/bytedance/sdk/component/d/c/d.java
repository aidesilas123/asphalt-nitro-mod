package com.bytedance.sdk.component.d.c;

import com.bytedance.sdk.component.d.k;
import java.util.Map;

/* JADX INFO: compiled from: ImageResponse.java */
/* JADX INFO: loaded from: classes2.dex */
public class d<T> implements k {
    private String a;
    private String b;
    private T c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private T f969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f971f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, String> f972g;
    private boolean h;
    private boolean i;
    private com.bytedance.sdk.component.d.g j;
    private int k;

    public d a(c cVar, T t) {
        this.c = t;
        this.a = cVar.e();
        this.b = cVar.a();
        this.f970e = cVar.b();
        this.f971f = cVar.c();
        this.i = cVar.o();
        this.j = cVar.p();
        this.k = cVar.q();
        return this;
    }

    public d a(c cVar, T t, Map<String, String> map, boolean z) {
        this.f972g = map;
        this.h = z;
        return a(cVar, t);
    }

    @Override // com.bytedance.sdk.component.d.k
    public String a() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.d.k
    public void a(Object obj) {
        this.f969d = this.c;
        this.c = obj;
    }

    @Override // com.bytedance.sdk.component.d.k
    public T b() {
        return this.c;
    }

    @Override // com.bytedance.sdk.component.d.k
    public T c() {
        return this.f969d;
    }

    @Override // com.bytedance.sdk.component.d.k
    public Map<String, String> d() {
        return this.f972g;
    }

    @Override // com.bytedance.sdk.component.d.k
    public boolean e() {
        return this.i;
    }

    @Override // com.bytedance.sdk.component.d.k
    public int f() {
        return this.k;
    }
}
