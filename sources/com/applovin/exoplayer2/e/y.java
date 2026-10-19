package com.applovin.exoplayer2.e;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    private final byte[] tf;
    private final int uW;
    private int uX;
    private int uY;

    public y(byte[] bArr) {
        this.tf = bArr;
        this.uW = bArr.length;
    }

    private void im() {
        int i;
        int i2 = this.uX;
        com.applovin.exoplayer2.l.a.checkState(i2 >= 0 && (i2 < (i = this.uW) || (i2 == i && this.uY == 0)));
    }

    public int bQ(int i) {
        int i2 = this.uX;
        int iMin = Math.min(i, 8 - this.uY);
        int i3 = i2 + 1;
        int i4 = ((this.tf[i2] & 255) >> this.uY) & (255 >> (8 - iMin));
        while (iMin < i) {
            i4 |= (this.tf[i3] & 255) << iMin;
            iMin += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        bR(i);
        return i5;
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

    public boolean ik() {
        boolean z = (((this.tf[this.uX] & 255) >> this.uY) & 1) == 1;
        bR(1);
        return z;
    }

    public int il() {
        return (this.uX * 8) + this.uY;
    }
}
