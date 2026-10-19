package com.applovin.exoplayer2.l;

/* JADX INFO: loaded from: classes.dex */
public final class z {
    private byte[] tf;
    private int uW;
    private int uX;
    private int uY;

    public z(byte[] bArr, int i, int i2) {
        s(bArr, i, i2);
    }

    private boolean fE(int i) {
        if (2 <= i && i < this.uW) {
            byte[] bArr = this.tf;
            if (bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    private void im() {
        int i;
        int i2 = this.uX;
        a.checkState(i2 >= 0 && (i2 < (i = this.uW) || (i2 == i && this.uY == 0)));
    }

    private int pO() {
        int i = 0;
        while (!ik()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? bQ(i) : 0);
    }

    public int bQ(int i) {
        int i2;
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
            i3 |= (bArr[i5] & 255) << i4;
            if (!fE(i5 + 1)) {
                i = 1;
            }
            this.uX = i5 + i;
        }
        byte[] bArr2 = this.tf;
        int i6 = this.uX;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.uY = 0;
            this.uX = i6 + (fE(i6 + 1) ? 2 : 1);
        }
        im();
        return i7;
    }

    public void bR(int i) {
        int i2 = this.uX;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.uX = i4;
        int i5 = this.uY + (i - (i3 * 8));
        this.uY = i5;
        if (i5 > 7) {
            this.uX = i4 + 1;
            this.uY = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 > this.uX) {
                im();
                return;
            } else if (fE(i2)) {
                this.uX++;
                i2 += 2;
            }
        }
    }

    public boolean fD(int i) {
        int i2 = this.uX;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.uY + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        while (true) {
            i2++;
            if (i2 > i4 || i4 >= this.uW) {
                break;
            }
            if (fE(i2)) {
                i4++;
                i2 += 2;
            }
        }
        int i6 = this.uW;
        if (i4 >= i6) {
            return i4 == i6 && i5 == 0;
        }
        return true;
    }

    public boolean ik() {
        boolean z = (this.tf[this.uX] & (128 >> this.uY)) != 0;
        ph();
        return z;
    }

    public boolean pL() {
        int i = this.uX;
        int i2 = this.uY;
        int i3 = 0;
        while (this.uX < this.uW && !ik()) {
            i3++;
        }
        boolean z = this.uX == this.uW;
        this.uX = i;
        this.uY = i2;
        return !z && fD((i3 * 2) + 1);
    }

    public int pM() {
        return pO();
    }

    public int pN() {
        int iPO = pO();
        return (iPO % 2 == 0 ? -1 : 1) * ((iPO + 1) / 2);
    }

    public void ph() {
        int i = this.uY + 1;
        this.uY = i;
        if (i == 8) {
            this.uY = 0;
            int i2 = this.uX;
            this.uX = i2 + (fE(i2 + 1) ? 2 : 1);
        }
        im();
    }

    public void s(byte[] bArr, int i, int i2) {
        this.tf = bArr;
        this.uX = i;
        this.uW = i2;
        this.uY = 0;
        im();
    }
}
