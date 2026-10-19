package com.google.zxing.aztec.encoder;

/* JADX INFO: compiled from: BinaryShiftToken.java */
/* JADX INFO: loaded from: classes3.dex */
final class b extends f {
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4273d;

    b(f fVar, int i, int i2) {
        super(fVar);
        this.c = i;
        this.f4273d = i2;
    }

    @Override // com.google.zxing.aztec.encoder.f
    public void c(com.google.zxing.common.a aVar, byte[] bArr) {
        int i = this.f4273d;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0 || (i2 == 31 && i <= 62)) {
                aVar.e(31, 5);
                if (i > 62) {
                    aVar.e(i - 31, 16);
                } else if (i2 == 0) {
                    aVar.e(Math.min(i, 31), 5);
                } else {
                    aVar.e(i - 31, 5);
                }
            }
            aVar.e(bArr[this.c + i2], 8);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(this.c);
        sb.append("::");
        sb.append((this.c + this.f4273d) - 1);
        sb.append('>');
        return sb.toString();
    }
}
