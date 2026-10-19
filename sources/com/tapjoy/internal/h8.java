package com.tapjoy.internal;

import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class h8 extends c1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient byte[][] f7910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final transient int[] f7911g;

    public h8(n nVar, int i) {
        super(null);
        sa.a(nVar.b, 0L, i);
        r7 r7Var = nVar.a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = r7Var.c;
            int i6 = r7Var.b;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            r7Var = r7Var.f7986f;
        }
        this.f7910f = new byte[i4][];
        this.f7911g = new int[i4 * 2];
        r7 r7Var2 = nVar.a;
        int i7 = 0;
        while (i2 < i) {
            byte[][] bArr = this.f7910f;
            bArr[i7] = r7Var2.a;
            int i8 = r7Var2.c;
            int i9 = r7Var2.b;
            int i10 = (i8 - i9) + i2;
            i2 = i10 > i ? i : i10;
            int[] iArr = this.f7911g;
            iArr[i7] = i2;
            iArr[bArr.length + i7] = i9;
            r7Var2.f7984d = true;
            i7++;
            r7Var2 = r7Var2.f7986f;
        }
    }

    @Override // com.tapjoy.internal.c1
    public final byte a(int i) {
        sa.a(this.f7911g[this.f7910f.length - 1], i, 1L);
        int iBinarySearch = Arrays.binarySearch(this.f7911g, 0, this.f7910f.length, i + 1);
        if (iBinarySearch < 0) {
            iBinarySearch = ~iBinarySearch;
        }
        int i2 = iBinarySearch != 0 ? this.f7911g[iBinarySearch - 1] : 0;
        int[] iArr = this.f7911g;
        byte[][] bArr = this.f7910f;
        return bArr[iBinarySearch][(i - i2) + iArr[bArr.length + iBinarySearch]];
    }

    @Override // com.tapjoy.internal.c1
    public final String a() {
        return i().a();
    }

    @Override // com.tapjoy.internal.c1
    public final void b(n nVar) {
        int length = this.f7910f.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f7911g;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            r7 r7Var = new r7(this.f7910f[i], i3, (i3 + i4) - i2);
            r7 r7Var2 = nVar.a;
            if (r7Var2 == null) {
                r7Var.f7987g = r7Var;
                r7Var.f7986f = r7Var;
                nVar.a = r7Var;
            } else {
                r7 r7Var3 = r7Var2.f7987g;
                r7Var3.getClass();
                r7Var.f7987g = r7Var3;
                r7Var.f7986f = r7Var3.f7986f;
                r7Var3.f7986f.f7987g = r7Var;
                r7Var3.f7986f = r7Var;
            }
            i++;
            i2 = i4;
        }
        nVar.b += (long) i2;
    }

    @Override // com.tapjoy.internal.c1
    public final boolean e(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > f() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int iBinarySearch = Arrays.binarySearch(this.f7911g, 0, this.f7910f.length, i + 1);
        if (iBinarySearch < 0) {
            iBinarySearch = ~iBinarySearch;
        }
        while (true) {
            boolean z = true;
            if (i3 <= 0) {
                return true;
            }
            int i4 = iBinarySearch == 0 ? 0 : this.f7911g[iBinarySearch - 1];
            int iMin = Math.min(i3, ((this.f7911g[iBinarySearch] - i4) + i4) - i);
            int[] iArr = this.f7911g;
            byte[][] bArr2 = this.f7910f;
            int i5 = (i - i4) + iArr[bArr2.length + iBinarySearch];
            byte[] bArr3 = bArr2[iBinarySearch];
            Charset charset = sa.a;
            int i6 = 0;
            while (true) {
                if (i6 >= iMin) {
                    break;
                }
                if (bArr3[i6 + i5] != bArr[i6 + i2]) {
                    z = false;
                    break;
                }
                i6++;
            }
            if (!z) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iBinarySearch++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.tapjoy.internal.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r12) {
        /*
            r11 = this;
            r0 = 1
            if (r12 != r11) goto L4
            return r0
        L4:
            boolean r1 = r12 instanceof com.tapjoy.internal.c1
            r2 = 0
            if (r1 == 0) goto L66
            com.tapjoy.internal.c1 r12 = (com.tapjoy.internal.c1) r12
            int r1 = r12.f()
            int r3 = r11.f()
            if (r1 != r3) goto L66
            int r1 = r11.f()
            int r3 = r11.f()
            int r3 = r3 - r1
            if (r3 >= 0) goto L21
            goto L5a
        L21:
            int[] r3 = r11.f7911g
            byte[][] r4 = r11.f7910f
            int r4 = r4.length
            int r3 = java.util.Arrays.binarySearch(r3, r2, r4, r0)
            if (r3 < 0) goto L2d
            goto L2e
        L2d:
            int r3 = ~r3
        L2e:
            r4 = 0
            r5 = 0
        L30:
            if (r1 <= 0) goto L62
            if (r3 != 0) goto L36
            r6 = 0
            goto L3c
        L36:
            int[] r6 = r11.f7911g
            int r7 = r3 + (-1)
            r6 = r6[r7]
        L3c:
            int[] r7 = r11.f7911g
            r7 = r7[r3]
            int r7 = r7 - r6
            int r7 = r7 + r6
            int r7 = r7 - r5
            int r7 = java.lang.Math.min(r1, r7)
            int[] r8 = r11.f7911g
            byte[][] r9 = r11.f7910f
            int r10 = r9.length
            int r10 = r10 + r3
            r8 = r8[r10]
            int r6 = r5 - r6
            int r6 = r6 + r8
            r8 = r9[r3]
            boolean r6 = r12.e(r4, r8, r6, r7)
            if (r6 != 0) goto L5c
        L5a:
            r12 = 0
            goto L63
        L5c:
            int r5 = r5 + r7
            int r4 = r4 + r7
            int r1 = r1 - r7
            int r3 = r3 + 1
            goto L30
        L62:
            r12 = 1
        L63:
            if (r12 == 0) goto L66
            goto L67
        L66:
            r0 = 0
        L67:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.h8.equals(java.lang.Object):boolean");
    }

    @Override // com.tapjoy.internal.c1
    public final int f() {
        return this.f7911g[this.f7910f.length - 1];
    }

    @Override // com.tapjoy.internal.c1
    public final c1 g() {
        return i().g();
    }

    @Override // com.tapjoy.internal.c1
    public final String h() {
        return i().h();
    }

    @Override // com.tapjoy.internal.c1
    public final int hashCode() {
        int i = this.f7874d;
        if (i != 0) {
            return i;
        }
        int length = this.f7910f.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.f7910f[i2];
            int[] iArr = this.f7911g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i3) + i5;
            while (i5 < i7) {
                i4 = (i4 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i3 = i6;
        }
        this.f7874d = i4;
        return i4;
    }

    public final c1 i() {
        int[] iArr = this.f7911g;
        byte[][] bArr = this.f7910f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.f7911g;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.f7910f[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return new c1(bArr2);
    }

    @Override // com.tapjoy.internal.c1
    public final String toString() {
        return i().toString();
    }
}
