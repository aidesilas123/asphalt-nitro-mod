package com.google.zxing.aztec.encoder;

/* JADX INFO: compiled from: Token.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class f {
    static final f a = new d(null, 0, 0);
    private final f b;

    f(f fVar) {
        this.b = fVar;
    }

    final f a(int i, int i2) {
        return new d(this, i, i2);
    }

    final f b(int i, int i2) {
        return new b(this, i, i2);
    }

    abstract void c(com.google.zxing.common.a aVar, byte[] bArr);

    final f d() {
        return this.b;
    }
}
