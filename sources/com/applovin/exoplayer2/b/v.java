package com.applovin.exoplayer2.b;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class v {
    private final int dL;
    private final float gD;
    private final float gE;
    private final int mT;
    private final float mU;
    private final int mV;
    private final int mW;
    private final int mX;
    private final short[] mY;
    private short[] mZ;
    private int na;
    private short[] nb;
    private int nc;
    private short[] nd;
    private int ne;
    private int nf;
    private int ng;
    private int nh;
    private int ni;
    private int nj;
    private int nk;
    private int nl;

    public v(int i, int i2, float f2, float f3, int i3) {
        this.mT = i;
        this.dL = i2;
        this.gD = f2;
        this.gE = f3;
        this.mU = i / i3;
        this.mV = i / 400;
        int i4 = i / 65;
        this.mW = i4;
        int i5 = i4 * 2;
        this.mX = i5;
        this.mY = new short[i5];
        this.mZ = new short[i5 * i2];
        this.nb = new short[i5 * i2];
        this.nd = new short[i5 * i2];
    }

    private int a(short[] sArr, int i) {
        int iA;
        int i2 = this.mT;
        int i3 = i2 > 4000 ? i2 / 4000 : 1;
        if (this.dL == 1 && i3 == 1) {
            iA = a(sArr, i, this.mV, this.mW);
        } else {
            c(sArr, i, i3);
            int iA2 = a(this.mY, 0, this.mV / i3, this.mW / i3);
            if (i3 != 1) {
                int i4 = iA2 * i3;
                int i5 = i3 * 4;
                int i6 = i4 - i5;
                int i7 = i4 + i5;
                int i8 = this.mV;
                if (i6 < i8) {
                    i6 = i8;
                }
                int i9 = this.mW;
                if (i7 > i9) {
                    i7 = i9;
                }
                if (this.dL == 1) {
                    iA = a(sArr, i, i6, i7);
                } else {
                    c(sArr, i, 1);
                    iA = a(this.mY, 0, i6, i7);
                }
            } else {
                iA = iA2;
            }
        }
        int i10 = n(this.nk, this.nl) ? this.ni : iA;
        this.nj = this.nk;
        this.ni = iA;
        return i10;
    }

    private int a(short[] sArr, int i, float f2, int i2) {
        int i3;
        if (f2 >= 2.0f) {
            i3 = (int) (i2 / (f2 - 1.0f));
        } else {
            this.nh = (int) ((i2 * (2.0f - f2)) / (f2 - 1.0f));
            i3 = i2;
        }
        short[] sArrA = a(this.nb, this.nc, i3);
        this.nb = sArrA;
        a(i3, this.dL, sArrA, this.nc, sArr, i, sArr, i + i2);
        this.nc += i3;
        return i3;
    }

    private int a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.dL;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int iAbs = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                iAbs += Math.abs(sArr[i4 + i9] - sArr[(i4 + i2) + i9]);
            }
            if (iAbs * i7 < i5 * i2) {
                i7 = i2;
                i5 = iAbs;
            }
            if (iAbs * i6 > i8 * i2) {
                i6 = i2;
                i8 = iAbs;
            }
            i2++;
        }
        this.nk = i5 / i7;
        this.nl = i8 / i6;
        return i7;
    }

    private void a(float f2, int i) {
        int i2;
        int i3;
        if (this.nc == i) {
            return;
        }
        int i4 = this.mT;
        int i5 = (int) (i4 / f2);
        while (true) {
            if (i5 <= 16384 && i4 <= 16384) {
                break;
            }
            i5 /= 2;
            i4 /= 2;
        }
        aN(i);
        int i6 = 0;
        while (true) {
            int i7 = this.ne;
            if (i6 >= i7 - 1) {
                aO(i7 - 1);
                return;
            }
            while (true) {
                i2 = this.nf;
                int i8 = (i2 + 1) * i5;
                i3 = this.ng;
                if (i8 <= i3 * i4) {
                    break;
                }
                this.nb = a(this.nb, this.nc, 1);
                int i9 = 0;
                while (true) {
                    int i10 = this.dL;
                    if (i9 < i10) {
                        this.nb[(this.nc * i10) + i9] = b(this.nd, (i10 * i6) + i9, i4, i5);
                        i9++;
                    }
                }
                this.ng++;
                this.nc++;
            }
            int i11 = i2 + 1;
            this.nf = i11;
            if (i11 == i4) {
                this.nf = 0;
                com.applovin.exoplayer2.l.a.checkState(i3 == i5);
                this.ng = 0;
            }
            i6++;
        }
    }

    private static void a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    private short[] a(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.dL;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    private void aL(int i) {
        int i2 = this.na - i;
        short[] sArr = this.mZ;
        int i3 = this.dL;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.na = i2;
    }

    private int aM(int i) {
        int iMin = Math.min(this.mX, this.nh);
        b(this.mZ, i, iMin);
        this.nh -= iMin;
        return iMin;
    }

    private void aN(int i) {
        int i2 = this.nc - i;
        short[] sArrA = a(this.nd, this.ne, i2);
        this.nd = sArrA;
        short[] sArr = this.nb;
        int i3 = this.dL;
        System.arraycopy(sArr, i * i3, sArrA, this.ne * i3, i3 * i2);
        this.nc = i;
        this.ne += i2;
    }

    private void aO(int i) {
        if (i == 0) {
            return;
        }
        short[] sArr = this.nd;
        int i2 = this.dL;
        System.arraycopy(sArr, i * i2, sArr, 0, (this.ne - i) * i2);
        this.ne -= i;
    }

    private int b(short[] sArr, int i, float f2, int i2) {
        int i3;
        if (f2 < 0.5f) {
            i3 = (int) ((i2 * f2) / (1.0f - f2));
        } else {
            this.nh = (int) ((i2 * ((2.0f * f2) - 1.0f)) / (1.0f - f2));
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] sArrA = a(this.nb, this.nc, i4);
        this.nb = sArrA;
        int i5 = this.dL;
        System.arraycopy(sArr, i * i5, sArrA, this.nc * i5, i5 * i2);
        a(i3, this.dL, this.nb, this.nc + i2, sArr, i + i2, sArr, i);
        this.nc += i4;
        return i3;
    }

    private short b(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[i + this.dL];
        int i4 = this.ng * i2;
        int i5 = this.nf;
        int i6 = i5 * i3;
        int i7 = (i5 + 1) * i3;
        int i8 = i7 - i4;
        int i9 = i7 - i6;
        return (short) (((s * i8) + ((i9 - i8) * s2)) / i9);
    }

    private void b(short[] sArr, int i, int i2) {
        short[] sArrA = a(this.nb, this.nc, i2);
        this.nb = sArrA;
        int i3 = this.dL;
        System.arraycopy(sArr, i * i3, sArrA, this.nc * i3, i3 * i2);
        this.nc += i2;
    }

    private void c(short[] sArr, int i, int i2) {
        int i3 = this.mX / i2;
        int i4 = this.dL;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.mY[i7] = (short) (i8 / i5);
        }
    }

    private void eP() {
        int i = this.nc;
        float f2 = this.gD;
        float f3 = this.gE;
        float f4 = f2 / f3;
        float f5 = this.mU * f3;
        double d2 = f4;
        if (d2 > 1.00001d || d2 < 0.99999d) {
            k(f4);
        } else {
            b(this.mZ, 0, this.na);
            this.na = 0;
        }
        if (f5 != 1.0f) {
            a(f5, i);
        }
    }

    private void k(float f2) {
        int iA;
        int i = this.na;
        if (i < this.mX) {
            return;
        }
        int i2 = 0;
        do {
            if (this.nh > 0) {
                iA = aM(i2);
            } else {
                int iA2 = a(this.mZ, i2);
                iA = ((double) f2) > 1.0d ? iA2 + a(this.mZ, i2, f2, iA2) : b(this.mZ, i2, f2, iA2);
            }
            i2 += iA;
        } while (this.mX + i2 <= i);
        aL(i2);
    }

    private boolean n(int i, int i2) {
        return i != 0 && this.ni != 0 && i2 <= i * 3 && i * 2 > this.nj * 3;
    }

    public void a(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i = this.dL;
        int i2 = iRemaining / i;
        short[] sArrA = a(this.mZ, this.na, i2);
        this.mZ = sArrA;
        shortBuffer.get(sArrA, this.na * this.dL, ((i * i2) * 2) / 2);
        this.na += i2;
        eP();
    }

    public void b(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.dL, this.nc);
        shortBuffer.put(this.nb, 0, this.dL * iMin);
        int i = this.nc - iMin;
        this.nc = i;
        short[] sArr = this.nb;
        int i2 = this.dL;
        System.arraycopy(sArr, iMin * i2, sArr, 0, i * i2);
    }

    public void dG() {
        int i;
        int i2 = this.na;
        float f2 = this.gD;
        float f3 = this.gE;
        int i3 = this.nc + ((int) ((((i2 / (f2 / f3)) + this.ne) / (this.mU * f3)) + 0.5f));
        this.mZ = a(this.mZ, i2, (this.mX * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.mX;
            int i5 = this.dL;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.mZ[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.na += i * 2;
        eP();
        if (this.nc > i3) {
            this.nc = i3;
        }
        this.na = 0;
        this.nh = 0;
        this.ne = 0;
    }

    public void dI() {
        this.na = 0;
        this.nc = 0;
        this.ne = 0;
        this.nf = 0;
        this.ng = 0;
        this.nh = 0;
        this.ni = 0;
        this.nj = 0;
        this.nk = 0;
        this.nl = 0;
    }

    public int eN() {
        return this.na * this.dL * 2;
    }

    public int eO() {
        return this.nc * this.dL * 2;
    }
}
