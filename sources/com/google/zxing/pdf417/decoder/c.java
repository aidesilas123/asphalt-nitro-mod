package com.google.zxing.pdf417.decoder;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: compiled from: BoundingBox.java */
/* JADX INFO: loaded from: classes3.dex */
final class c {
    private final BitMatrix a;
    private final ResultPoint b;
    private final ResultPoint c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ResultPoint f4390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ResultPoint f4391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4392f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f4393g;
    private final int h;
    private final int i;

    c(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) throws NotFoundException {
        boolean z = resultPoint == null || resultPoint2 == null;
        boolean z2 = resultPoint3 == null || resultPoint4 == null;
        if (z && z2) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (z) {
            resultPoint = new ResultPoint(0.0f, resultPoint3.c());
            resultPoint2 = new ResultPoint(0.0f, resultPoint4.c());
        } else if (z2) {
            resultPoint3 = new ResultPoint(bitMatrix.h() - 1, resultPoint.c());
            resultPoint4 = new ResultPoint(bitMatrix.h() - 1, resultPoint2.c());
        }
        this.a = bitMatrix;
        this.b = resultPoint;
        this.c = resultPoint2;
        this.f4390d = resultPoint3;
        this.f4391e = resultPoint4;
        this.f4392f = (int) Math.min(resultPoint.b(), resultPoint2.b());
        this.f4393g = (int) Math.max(resultPoint3.b(), resultPoint4.b());
        this.h = (int) Math.min(resultPoint.c(), resultPoint3.c());
        this.i = (int) Math.max(resultPoint2.c(), resultPoint4.c());
    }

    c(c cVar) {
        this.a = cVar.a;
        this.b = cVar.b;
        this.c = cVar.c;
        this.f4390d = cVar.f4390d;
        this.f4391e = cVar.f4391e;
        this.f4392f = cVar.f4392f;
        this.f4393g = cVar.f4393g;
        this.h = cVar.h;
        this.i = cVar.i;
    }

    static c j(c cVar, c cVar2) throws NotFoundException {
        return cVar == null ? cVar2 : cVar2 == null ? cVar : new c(cVar.a, cVar.b, cVar.c, cVar2.f4390d, cVar2.f4391e);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    com.google.zxing.pdf417.decoder.c a(int r13, int r14, boolean r15) throws com.google.zxing.NotFoundException {
        /*
            r12 = this;
            com.google.zxing.ResultPoint r0 = r12.b
            com.google.zxing.ResultPoint r1 = r12.c
            com.google.zxing.ResultPoint r2 = r12.f4390d
            com.google.zxing.ResultPoint r3 = r12.f4391e
            if (r13 <= 0) goto L29
            if (r15 == 0) goto Le
            r4 = r0
            goto Lf
        Le:
            r4 = r2
        Lf:
            float r5 = r4.c()
            int r5 = (int) r5
            int r5 = r5 - r13
            if (r5 >= 0) goto L18
            r5 = 0
        L18:
            com.google.zxing.ResultPoint r13 = new com.google.zxing.ResultPoint
            float r4 = r4.b()
            float r5 = (float) r5
            r13.<init>(r4, r5)
            if (r15 == 0) goto L26
            r8 = r13
            goto L2a
        L26:
            r10 = r13
            r8 = r0
            goto L2b
        L29:
            r8 = r0
        L2a:
            r10 = r2
        L2b:
            if (r14 <= 0) goto L5b
            if (r15 == 0) goto L32
            com.google.zxing.ResultPoint r13 = r12.c
            goto L34
        L32:
            com.google.zxing.ResultPoint r13 = r12.f4391e
        L34:
            float r0 = r13.c()
            int r0 = (int) r0
            int r0 = r0 + r14
            com.google.zxing.common.BitMatrix r14 = r12.a
            int r14 = r14.g()
            if (r0 < r14) goto L4a
            com.google.zxing.common.BitMatrix r14 = r12.a
            int r14 = r14.g()
            int r0 = r14 + (-1)
        L4a:
            com.google.zxing.ResultPoint r14 = new com.google.zxing.ResultPoint
            float r13 = r13.b()
            float r0 = (float) r0
            r14.<init>(r13, r0)
            if (r15 == 0) goto L58
            r9 = r14
            goto L5c
        L58:
            r11 = r14
            r9 = r1
            goto L5d
        L5b:
            r9 = r1
        L5c:
            r11 = r3
        L5d:
            com.google.zxing.pdf417.decoder.c r13 = new com.google.zxing.pdf417.decoder.c
            com.google.zxing.common.BitMatrix r7 = r12.a
            r6 = r13
            r6.<init>(r7, r8, r9, r10, r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.c.a(int, int, boolean):com.google.zxing.pdf417.decoder.c");
    }

    ResultPoint b() {
        return this.c;
    }

    ResultPoint c() {
        return this.f4391e;
    }

    int d() {
        return this.f4393g;
    }

    int e() {
        return this.i;
    }

    int f() {
        return this.f4392f;
    }

    int g() {
        return this.h;
    }

    ResultPoint h() {
        return this.b;
    }

    ResultPoint i() {
        return this.f4390d;
    }
}
