package com.tapjoy.internal;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class c1 implements Serializable, Comparable {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final c1 b = new c1((byte[]) new byte[0].clone());
    public final byte[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public transient int f7874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient String f7875e;

    public c1(byte[] bArr) {
        this.c = bArr;
    }

    public byte a(int i) {
        return this.c[i];
    }

    public String a() {
        byte[] bArr = this.c;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = a;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & Ascii.SI];
        }
        return new String(cArr);
    }

    public void b(n nVar) {
        byte[] bArr = this.c;
        nVar.e(bArr, bArr.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002d A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int compareTo(java.lang.Object r8) {
        /*
            r7 = this;
            com.tapjoy.internal.c1 r8 = (com.tapjoy.internal.c1) r8
            int r0 = r7.f()
            int r1 = r8.f()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L10:
            if (r4 >= r2) goto L26
            byte r5 = r7.a(r4)
            r5 = r5 & 255(0xff, float:3.57E-43)
            byte r6 = r8.a(r4)
            r6 = r6 & 255(0xff, float:3.57E-43)
            if (r5 != r6) goto L23
            int r4 = r4 + 1
            goto L10
        L23:
            if (r5 >= r6) goto L2d
            goto L2b
        L26:
            if (r0 != r1) goto L29
            goto L2e
        L29:
            if (r0 >= r1) goto L2d
        L2b:
            r3 = -1
            goto L2e
        L2d:
            r3 = 1
        L2e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.c1.compareTo(java.lang.Object):int");
    }

    public boolean e(int i, byte[] bArr, int i2, int i3) {
        boolean z;
        if (i >= 0) {
            byte[] bArr2 = this.c;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3) {
                Charset charset = sa.a;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        z = true;
                        break;
                    }
                    if (bArr2[i4 + i] != bArr[i4 + i2]) {
                        z = false;
                        break;
                    }
                    i4++;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c1) {
            c1 c1Var = (c1) obj;
            int iF = c1Var.f();
            byte[] bArr = this.c;
            if (iF == bArr.length && c1Var.e(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int f() {
        return this.c.length;
    }

    public c1 g() {
        byte[] bArr = this.c;
        if (64 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.c.length + ")");
        }
        if (64 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, 64);
        return new c1(bArr2);
    }

    public String h() {
        String str = this.f7875e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.c, sa.a);
        this.f7875e = str2;
        return str2;
    }

    public int hashCode() {
        int i = this.f7874d;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.c);
        this.f7874d = iHashCode;
        return iHashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
    
        r3 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.c1.toString():java.lang.String");
    }
}
