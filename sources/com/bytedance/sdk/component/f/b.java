package com.bytedance.sdk.component.f;

import com.bytedance.sdk.component.b.a.j;
import java.io.File;
import java.util.Map;

/* JADX INFO: compiled from: NetResponse.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    final int a;
    final String b;
    final Map<String, String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f1043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f1044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final long f1045f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    j f1046g;
    private final boolean i;
    private File h = null;
    private byte[] j = null;

    public b(boolean z, int i, String str, Map<String, String> map, String str2, long j, long j2) {
        this.i = z;
        this.a = i;
        this.b = str;
        this.c = map;
        this.f1043d = str2;
        this.f1044e = j;
        this.f1045f = j2;
    }

    public int a() {
        return this.a;
    }

    public void a(j jVar) {
        this.f1046g = jVar;
    }

    public void a(File file) {
        this.h = file;
    }

    public void a(byte[] bArr) {
        this.j = bArr;
    }

    public String b() {
        return this.b;
    }

    public Map<String, String> c() {
        return this.c;
    }

    public String d() {
        return this.f1043d;
    }

    public File e() {
        return this.h;
    }

    public boolean f() {
        return this.i;
    }

    public long g() {
        return this.f1044e - this.f1045f;
    }
}
