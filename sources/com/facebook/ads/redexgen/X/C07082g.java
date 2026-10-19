package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2g, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C07082g<E> implements Cloneable {
    public static byte[] A04;
    public static final Object A05;
    public int A00;
    public boolean A01;
    public long[] A02;
    public Object[] A03;

    static {
        A05();
        A05 = new Object();
    }

    public C07082g() {
        this(10);
    }

    public C07082g(int i) {
        this.A01 = false;
        if (i == 0) {
            this.A02 = C07072f.A01;
            this.A03 = C07072f.A02;
        } else {
            int iA00 = C07072f.A00(i);
            this.A02 = new long[iA00];
            this.A03 = new Object[iA00];
        }
        this.A00 = 0;
    }

    private final long A00(int i) {
        if (this.A01) {
            A04();
        }
        return this.A02[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C07082g<E> clone() {
        C07082g<E> c07082g = null;
        try {
            c07082g = (C07082g) super.clone();
            c07082g.A02 = (long[]) this.A02.clone();
            c07082g.A03 = (Object[]) this.A03.clone();
            return c07082g;
        } catch (CloneNotSupportedException unused) {
            return c07082g;
        }
    }

    private final E A02(long j, E e2) {
        E e3;
        int iA03 = C07072f.A03(this.A02, this.A00, j);
        return (iA03 < 0 || (e3 = (E) this.A03[iA03]) == A05) ? e2 : e3;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        int i = this.A00;
        int i2 = 0;
        long[] jArr = this.A02;
        Object[] objArr = this.A03;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != A05) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.A01 = false;
        this.A00 = i2;
    }

    public static void A05() {
        A04 = new byte[]{19, 79, 83, 82, 72, Ascii.ESC, 118, 90, 75, Ascii.DC2, 91, 87, 51, 53};
    }

    public final int A06() {
        if (this.A01) {
            A04();
        }
        return this.A00;
    }

    public final E A07(int i) {
        if (this.A01) {
            A04();
        }
        return (E) this.A03[i];
    }

    public final E A08(long j) {
        return A02(j, null);
    }

    public final void A09() {
        int i = this.A00;
        Object[] objArr = this.A03;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.A00 = 0;
        this.A01 = false;
    }

    public final void A0A(int i) {
        Object[] objArr = this.A03;
        Object obj = objArr[i];
        Object obj2 = A05;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.A01 = true;
        }
    }

    public final void A0B(long j, E e2) {
        int iA03 = C07072f.A03(this.A02, this.A00, j);
        if (iA03 >= 0) {
            this.A03[iA03] = e2;
            return;
        }
        int iA032 = iA03 ^ (-1);
        int i = this.A00;
        if (iA032 < i) {
            Object[] objArr = this.A03;
            if (objArr[iA032] == A05) {
                this.A02[iA032] = j;
                objArr[iA032] = e2;
                return;
            }
        }
        if (this.A01 && i >= this.A02.length) {
            A04();
            iA032 = C07072f.A03(this.A02, this.A00, j) ^ (-1);
        }
        int i2 = this.A00;
        if (i2 >= this.A02.length) {
            int iA00 = C07072f.A00(i2 + 1);
            long[] jArr = new long[iA00];
            Object[] objArr2 = new Object[iA00];
            long[] jArr2 = this.A02;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.A03;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.A02 = jArr;
            this.A03 = objArr2;
        }
        int i3 = this.A00;
        if (i3 - iA032 != 0) {
            long[] jArr3 = this.A02;
            System.arraycopy(jArr3, iA032, jArr3, iA032 + 1, i3 - iA032);
            Object[] objArr4 = this.A03;
            System.arraycopy(objArr4, iA032, objArr4, iA032 + 1, this.A00 - iA032);
        }
        this.A02[iA032] = j;
        this.A03[iA032] = e2;
        this.A00++;
    }

    public final String toString() {
        if (A06() <= 0) {
            return A03(12, 2, 126);
        }
        StringBuilder sb = new StringBuilder(this.A00 * 28);
        sb.append('{');
        for (int i = 0; i < this.A00; i++) {
            if (i > 0) {
                sb.append(A03(10, 2, 65));
            }
            sb.append(A00(i));
            sb.append(com.json.b4.R);
            E eA07 = A07(i);
            if (eA07 != this) {
                sb.append(eA07);
            } else {
                sb.append(A03(0, 10, 13));
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
