package com.google.zxing.aztec.encoder;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: compiled from: State.java */
/* JADX INFO: loaded from: classes3.dex */
final class e {
    static final e a = new e(f.a, 0, 0, 0);
    private final int b;
    private final f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4280f;

    private e(f fVar, int i, int i2, int i3) {
        this.c = fVar;
        this.b = i;
        this.f4278d = i2;
        this.f4279e = i3;
        this.f4280f = c(i2);
    }

    private static int c(int i) {
        if (i > 62) {
            return 21;
        }
        if (i > 31) {
            return 20;
        }
        return i > 0 ? 10 : 0;
    }

    e a(int i) {
        f fVarA = this.c;
        int i2 = this.b;
        int i3 = this.f4279e;
        if (i2 == 4 || i2 == 2) {
            int i4 = c.b[i2][0];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            fVarA = fVarA.a(i5, i6);
            i3 += i6;
            i2 = 0;
        }
        int i7 = this.f4278d;
        e eVar = new e(fVarA, i2, i7 + 1, i3 + ((i7 == 0 || i7 == 31) ? 18 : i7 == 62 ? 9 : 8));
        return eVar.f4278d == 2078 ? eVar.d(i + 1) : eVar;
    }

    e b(int i) {
        f fVarA;
        f fVar = j(4, 0).c;
        int length = 3;
        if (i < 0) {
            fVarA = fVar.a(0, 3);
        } else {
            if (i > 999999) {
                throw new IllegalArgumentException("ECI code must be between 0 and 999999");
            }
            byte[] bytes = Integer.toString(i).getBytes(StandardCharsets.ISO_8859_1);
            f fVarA2 = fVar.a(bytes.length, 3);
            for (byte b : bytes) {
                fVarA2 = fVarA2.a((b - 48) + 2, 4);
            }
            length = 3 + (bytes.length * 4);
            fVarA = fVarA2;
        }
        return new e(fVarA, this.b, 0, this.f4279e + length);
    }

    e d(int i) {
        int i2 = this.f4278d;
        return i2 == 0 ? this : new e(this.c.b(i - i2, i2), this.b, 0, this.f4279e);
    }

    int e() {
        return this.f4278d;
    }

    int f() {
        return this.f4279e;
    }

    int g() {
        return this.b;
    }

    boolean h(e eVar) {
        int i = this.f4279e + (c.b[this.b][eVar.b] >> 16);
        int i2 = this.f4278d;
        int i3 = eVar.f4278d;
        if (i2 < i3) {
            i += eVar.f4280f - this.f4280f;
        } else if (i2 > i3 && i3 > 0) {
            i += 10;
        }
        return i <= eVar.f4279e;
    }

    e i(int i, int i2) {
        int i3 = this.f4279e;
        f fVarA = this.c;
        int i4 = this.b;
        if (i != i4) {
            int i5 = c.b[i4][i];
            int i6 = 65535 & i5;
            int i7 = i5 >> 16;
            fVarA = fVarA.a(i6, i7);
            i3 += i7;
        }
        int i8 = i == 2 ? 4 : 5;
        return new e(fVarA.a(i2, i8), i, 0, i3 + i8);
    }

    e j(int i, int i2) {
        f fVar = this.c;
        int i3 = this.b;
        int i4 = i3 == 2 ? 4 : 5;
        return new e(fVar.a(c.f4274d[i3][i], i4).a(i2, 5), this.b, 0, this.f4279e + i4 + 5);
    }

    com.google.zxing.common.a k(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        for (f fVarD = d(bArr.length).c; fVarD != null; fVarD = fVarD.d()) {
            arrayList.add(fVarD);
        }
        com.google.zxing.common.a aVar = new com.google.zxing.common.a();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((f) arrayList.get(size)).c(aVar, bArr);
        }
        return aVar;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", c.a[this.b], Integer.valueOf(this.f4279e), Integer.valueOf(this.f4278d));
    }
}
