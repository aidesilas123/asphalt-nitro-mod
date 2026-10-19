package com.applovin.exoplayer2.l;

import androidx.core.view.MotionEventCompat;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class x {
    public byte[] tf;
    private int uW;
    private int uX;
    private int uY;

    public x() {
        this.tf = ai.ada;
    }

    public x(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public x(byte[] bArr, int i) {
        this.tf = bArr;
        this.uW = i;
    }

    private void im() {
        int i;
        int i2 = this.uX;
        a.checkState(i2 >= 0 && (i2 < (i = this.uW) || (i2 == i && this.uY == 0)));
    }

    public void I(byte[] bArr) {
        l(bArr, bArr.length);
    }

    public void K(int i, int i2) {
        if (i2 < 32) {
            i &= (1 << i2) - 1;
        }
        int iMin = Math.min(8 - this.uY, i2);
        int i3 = this.uY;
        int i4 = (8 - i3) - iMin;
        int i5 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i3) | ((1 << i4) - 1);
        byte[] bArr = this.tf;
        int i6 = this.uX;
        bArr[i6] = (byte) (i5 & bArr[i6]);
        int i7 = i2 - iMin;
        bArr[i6] = (byte) (((i >>> i7) << i4) | bArr[i6]);
        int i8 = i6 + 1;
        while (i7 > 8) {
            this.tf[i8] = (byte) (i >>> (i7 - 8));
            i7 -= 8;
            i8++;
        }
        int i9 = 8 - i7;
        byte[] bArr2 = this.tf;
        bArr2[i8] = (byte) (bArr2[i8] & ((1 << i9) - 1));
        bArr2[i8] = (byte) (((i & ((1 << i7) - 1)) << i9) | bArr2[i8]);
        bR(i2);
        im();
    }

    public String a(int i, Charset charset) {
        byte[] bArr = new byte[i];
        r(bArr, 0, i);
        return new String(bArr, charset);
    }

    public void ar(y yVar) {
        l(yVar.hO(), yVar.pk());
        fx(yVar.il() * 8);
    }

    public int bQ(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.uY += i;
        int i3 = 0;
        while (true) {
            i2 = this.uY;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.uY = i4;
            byte[] bArr = this.tf;
            int i5 = this.uX;
            this.uX = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.tf;
        int i6 = this.uX;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.uY = 0;
            this.uX = i6 + 1;
        }
        im();
        return i7;
    }

    public void bR(int i) {
        int i2 = i / 8;
        int i3 = this.uX + i2;
        this.uX = i3;
        int i4 = this.uY + (i - (i2 * 8));
        this.uY = i4;
        if (i4 > 7) {
            this.uX = i3 + 1;
            this.uY = i4 - 8;
        }
        im();
    }

    public void fx(int i) {
        int i2 = i / 8;
        this.uX = i2;
        this.uY = i - (i2 * 8);
        im();
    }

    public long fy(int i) {
        return i <= 32 ? ai.fH(bQ(i)) : ai.O(bQ(i - 32), bQ(32));
    }

    public void fz(int i) {
        a.checkState(this.uY == 0);
        this.uX += i;
        im();
    }

    public boolean ik() {
        boolean z = (this.tf[this.uX] & (128 >> this.uY)) != 0;
        ph();
        return z;
    }

    public int il() {
        return (this.uX * 8) + this.uY;
    }

    public void l(byte[] bArr, int i) {
        this.tf = bArr;
        this.uX = 0;
        this.uY = 0;
        this.uW = i;
    }

    public int pf() {
        return ((this.uW - this.uX) * 8) - this.uY;
    }

    public int pg() {
        a.checkState(this.uY == 0);
        return this.uX;
    }

    public void ph() {
        int i = this.uY + 1;
        this.uY = i;
        if (i == 8) {
            this.uY = 0;
            this.uX++;
        }
        im();
    }

    public void pi() {
        if (this.uY == 0) {
            return;
        }
        this.uY = 0;
        this.uX++;
        im();
    }

    public void q(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.tf;
            int i4 = this.uX;
            int i5 = i4 + 1;
            this.uX = i5;
            byte b = bArr2[i4];
            int i6 = this.uY;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        bArr[i3] = (byte) (bArr[i3] & (255 >> i7));
        int i8 = this.uY;
        if (i8 + i7 > 8) {
            int i9 = bArr[i3];
            byte[] bArr3 = this.tf;
            int i10 = this.uX;
            this.uX = i10 + 1;
            bArr[i3] = (byte) (i9 | ((bArr3[i10] & 255) << i8));
            this.uY = i8 - 8;
        }
        int i11 = this.uY + i7;
        this.uY = i11;
        byte[] bArr4 = this.tf;
        int i12 = this.uX;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i12]) >> (8 - i11)) << (8 - i7))) | bArr[i3]);
        if (i11 == 8) {
            this.uY = 0;
            this.uX = i12 + 1;
        }
        im();
    }

    public void r(byte[] bArr, int i, int i2) {
        a.checkState(this.uY == 0);
        System.arraycopy(this.tf, this.uX, bArr, i, i2);
        this.uX += i2;
        im();
    }
}
