package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitMatrix;

/* JADX INFO: compiled from: AztecCode.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a {
    private boolean a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BitMatrix f4272e;

    public BitMatrix a() {
        return this.f4272e;
    }

    public void b(int i) {
        this.f4271d = i;
    }

    public void c(boolean z) {
        this.a = z;
    }

    public void d(int i) {
        this.c = i;
    }

    public void e(BitMatrix bitMatrix) {
        this.f4272e = bitMatrix;
    }

    public void f(int i) {
        this.b = i;
    }
}
