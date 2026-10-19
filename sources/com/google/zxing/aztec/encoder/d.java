package com.google.zxing.aztec.encoder;

/* JADX INFO: compiled from: SimpleToken.java */
/* JADX INFO: loaded from: classes3.dex */
final class d extends f {
    private final short c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final short f4277d;

    d(f fVar, int i, int i2) {
        super(fVar);
        this.c = (short) i;
        this.f4277d = (short) i2;
    }

    @Override // com.google.zxing.aztec.encoder.f
    void c(com.google.zxing.common.a aVar, byte[] bArr) {
        aVar.e(this.c, this.f4277d);
    }

    public String toString() {
        short s = this.c;
        short s2 = this.f4277d;
        return '<' + Integer.toBinaryString((s & ((1 << s2) - 1)) | (1 << s2) | (1 << this.f4277d)).substring(1) + '>';
    }
}
