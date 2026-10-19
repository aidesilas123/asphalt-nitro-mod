package com.google.zxing.common;

import java.util.List;

/* JADX INFO: compiled from: DecoderResult.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b {
    private final byte[] a;
    private int b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<byte[]> f4327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer f4329f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Integer f4330g;
    private Object h;
    private final int i;
    private final int j;
    private final int k;

    public b(byte[] bArr, String str, List<byte[]> list, String str2) {
        this(bArr, str, list, str2, -1, -1, 0);
    }

    public b(byte[] bArr, String str, List<byte[]> list, String str2, int i, int i2, int i3) {
        this.a = bArr;
        this.b = bArr == null ? 0 : bArr.length * 8;
        this.c = str;
        this.f4327d = list;
        this.f4328e = str2;
        this.i = i2;
        this.j = i;
        this.k = i3;
    }

    public void a(Integer num) {
        this.f4330g = num;
    }

    public void b(Integer num) {
        this.f4329f = num;
    }

    public void c(Object obj) {
        this.h = obj;
    }
}
