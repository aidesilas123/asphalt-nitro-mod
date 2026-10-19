package com.facebook.ads.redexgen.X;

import androidx.core.view.MotionEventCompat;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1061Hg {
    public byte[] A00;
    public int A01;
    public int A02;
    public int A03;

    public C1061Hg() {
    }

    public C1061Hg(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public C1061Hg(byte[] bArr, int i) {
        this.A00 = bArr;
        this.A02 = i;
    }

    private void A00() {
        int i;
        int i2 = this.A03;
        HI.A04(i2 >= 0 && (i2 < (i = this.A02) || (i2 == i && this.A01 == 0)));
    }

    public final int A01() {
        return ((this.A02 - this.A03) * 8) - this.A01;
    }

    public final int A02() {
        HI.A04(this.A01 == 0);
        return this.A03;
    }

    public final int A03() {
        return (this.A03 * 8) + this.A01;
    }

    public final int A04(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        int i3 = 0;
        this.A01 += i;
        while (true) {
            i2 = this.A01;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.A01 = i4;
            byte[] bArr = this.A00;
            int i5 = this.A03;
            this.A03 = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.A00;
        int i6 = this.A03;
        int i7 = (i3 | ((bArr2[i6] & 255) >> (8 - i2))) & ((-1) >>> (32 - i));
        if (i2 == 8) {
            this.A01 = 0;
            this.A03 = i6 + 1;
        }
        A00();
        return i7;
    }

    public final void A05() {
        if (this.A01 == 0) {
            return;
        }
        this.A01 = 0;
        this.A03++;
        A00();
    }

    public final void A06() {
        int i = this.A01 + 1;
        this.A01 = i;
        if (i == 8) {
            this.A01 = 0;
            this.A03++;
        }
        A00();
    }

    public final void A07(int i) {
        int i2 = i / 8;
        this.A03 = i2;
        this.A01 = i - (i2 * 8);
        A00();
    }

    public final void A08(int i) {
        int i2 = i / 8;
        int i3 = this.A03 + i2;
        this.A03 = i3;
        int i4 = this.A01 + (i - (i2 * 8));
        this.A01 = i4;
        if (i4 > 7) {
            this.A03 = i3 + 1;
            this.A01 = i4 - 8;
        }
        A00();
    }

    public final void A09(int i) {
        HI.A04(this.A01 == 0);
        this.A03 += i;
        A00();
    }

    public final void A0A(int i, int i2) {
        if (i2 < 32) {
            i &= (1 << i2) - 1;
        }
        int iMin = Math.min(8 - this.A01, i2);
        int i3 = this.A01;
        int i4 = (8 - i3) - iMin;
        int i5 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i3) | ((1 << i4) - 1);
        byte[] bArr = this.A00;
        int i6 = this.A03;
        byte b = (byte) (bArr[i6] & i5);
        bArr[i6] = b;
        bArr[i6] = (byte) (b | ((i >>> (i2 - iMin)) << i4));
        int i7 = i2 - iMin;
        int i8 = i6 + 1;
        while (i7 > 8) {
            this.A00[i8] = (byte) (i >>> (i7 - 8));
            i7 -= 8;
            i8++;
        }
        int i9 = 8 - i7;
        byte[] bArr2 = this.A00;
        byte b2 = (byte) (bArr2[i8] & ((1 << i9) - 1));
        bArr2[i8] = b2;
        bArr2[i8] = (byte) (b2 | ((i & ((1 << i7) - 1)) << i9));
        A08(i2);
        A00();
    }

    public final void A0B(byte[] bArr) {
        A0C(bArr, bArr.length);
    }

    public final void A0C(byte[] bArr, int i) {
        this.A00 = bArr;
        this.A03 = 0;
        this.A01 = 0;
        this.A02 = i;
    }

    public final void A0D(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.A00;
            int i4 = this.A03;
            int i5 = i4 + 1;
            this.A03 = i5;
            byte b = bArr2[i4];
            int i6 = this.A01;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        bArr[i3] = (byte) (bArr[i3] & (255 >> i7));
        int i8 = this.A01;
        if (i8 + i7 > 8) {
            int i9 = bArr[i3];
            byte[] bArr3 = this.A00;
            int i10 = this.A03;
            this.A03 = i10 + 1;
            bArr[i3] = (byte) (i9 | ((bArr3[i10] & 255) << i8));
            this.A01 = i8 - 8;
        }
        int i11 = this.A01 + i7;
        this.A01 = i11;
        byte[] bArr4 = this.A00;
        int i12 = this.A03;
        bArr[i3] = (byte) (bArr[i3] | ((byte) (((255 & bArr4[i12]) >> (8 - i11)) << (8 - i7))));
        if (i11 == 8) {
            this.A01 = 0;
            this.A03 = i12 + 1;
        }
        A00();
    }

    public final void A0E(byte[] bArr, int i, int i2) {
        HI.A04(this.A01 == 0);
        System.arraycopy(this.A00, this.A03, bArr, i, i2);
        this.A03 += i2;
        A00();
    }

    public final boolean A0F() {
        boolean z = (this.A00[this.A03] & (128 >> this.A01)) != 0;
        A06();
        return z;
    }
}
