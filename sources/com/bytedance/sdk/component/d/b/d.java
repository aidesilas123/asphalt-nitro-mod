package com.bytedance.sdk.component.d.b;

import com.bytedance.sdk.component.d.f;
import com.bytedance.sdk.component.d.g;
import java.util.Map;

/* JADX INFO: compiled from: HttpResponse.java */
/* JADX INFO: loaded from: classes2.dex */
public class d<T> implements f {
    Map<String, String> a;
    private int b;
    private T c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f933e;

    public d(int i, T t, String str) {
        this.b = i;
        this.c = t;
        this.f932d = str;
    }

    public d(int i, T t, String str, Map<String, String> map) {
        this(i, t, str);
        this.a = map;
    }

    @Override // com.bytedance.sdk.component.d.f
    public g a() {
        return this.f933e;
    }

    public void a(g gVar) {
        this.f933e = gVar;
    }

    @Override // com.bytedance.sdk.component.d.f
    public int b() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.d.f
    public T c() {
        return this.c;
    }

    @Override // com.bytedance.sdk.component.d.f
    public String d() {
        return this.f932d;
    }

    @Override // com.bytedance.sdk.component.d.f
    public Map<String, String> e() {
        return this.a;
    }
}
