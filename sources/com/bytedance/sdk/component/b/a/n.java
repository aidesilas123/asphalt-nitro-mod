package com.bytedance.sdk.component.b.a;

/* JADX INFO: compiled from: RequestBody.java */
/* JADX INFO: loaded from: classes.dex */
public class n {
    public i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a f930f;

    /* JADX INFO: compiled from: RequestBody.java */
    public enum a {
        STRING_TYPE,
        BYTE_ARRAY_TYPE
    }

    public n() {
    }

    public n(i iVar, String str, a aVar) {
        this.c = iVar;
        this.f928d = str;
        this.f930f = aVar;
    }

    public n(i iVar, byte[] bArr, a aVar) {
        this.c = iVar;
        this.f929e = bArr;
        this.f930f = aVar;
    }

    public static n a(i iVar, String str) {
        return new n(iVar, str, a.STRING_TYPE);
    }

    public static n a(i iVar, byte[] bArr) {
        return new n(iVar, bArr, a.BYTE_ARRAY_TYPE);
    }

    public String a() {
        return this.f928d;
    }
}
