package com.applovin.exoplayer2.l;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Charsets;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    private int limit;
    private int oX;
    private byte[] tf;

    public y() {
        this.tf = ai.ada;
    }

    public y(int i) {
        this.tf = new byte[i];
        this.limit = i;
    }

    public y(byte[] bArr) {
        this.tf = bArr;
        this.limit = bArr.length;
    }

    public y(byte[] bArr, int i) {
        this.tf = bArr;
        this.limit = i;
    }

    public void I(byte[] bArr) {
        l(bArr, bArr.length);
    }

    public void U(int i) {
        l(pl() < i ? new byte[i] : this.tf, i);
    }

    @Nullable
    public String b(char c) {
        if (pj() == 0) {
            return null;
        }
        int i = this.oX;
        while (i < this.limit && this.tf[i] != c) {
            i++;
        }
        byte[] bArr = this.tf;
        int i2 = this.oX;
        String strT = ai.t(bArr, i2, i - i2);
        this.oX = i;
        if (i < this.limit) {
            this.oX = i + 1;
        }
        return strT;
    }

    public String b(int i, Charset charset) {
        String str = new String(this.tf, this.oX, i, charset);
        this.oX += i;
        return str;
    }

    public void bj(int i) {
        if (i > pl()) {
            this.tf = Arrays.copyOf(this.tf, i);
        }
    }

    public void f(x xVar, int i) {
        r(xVar.tf, 0, i);
        xVar.fx(0);
    }

    public void fA(int i) {
        a.checkArgument(i >= 0 && i <= this.tf.length);
        this.limit = i;
    }

    public String fB(int i) {
        return b(i, Charsets.UTF_8);
    }

    public String fC(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.oX;
        int i3 = (i2 + i) - 1;
        String strT = ai.t(this.tf, i2, (i3 >= this.limit || this.tf[i3] != 0) ? i : i - 1);
        this.oX += i;
        return strT;
    }

    public void fx(int i) {
        a.checkArgument(i >= 0 && i <= this.limit);
        this.oX = i;
    }

    public void fz(int i) {
        fx(this.oX + i);
    }

    public byte[] hO() {
        return this.tf;
    }

    public int il() {
        return this.oX;
    }

    public void l(byte[] bArr, int i) {
        this.tf = bArr;
        this.limit = i;
        this.oX = 0;
    }

    public long pA() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        long j = ((long) bArr[i]) & 255;
        int i3 = i2 + 1;
        this.oX = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 8);
        int i4 = i3 + 1;
        this.oX = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 16);
        int i5 = i4 + 1;
        this.oX = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 24);
        int i6 = i5 + 1;
        this.oX = i6;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 32);
        int i7 = i6 + 1;
        this.oX = i7;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 40);
        int i8 = i7 + 1;
        this.oX = i8;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 48);
        this.oX = i8 + 1;
        return j7 | ((((long) bArr[i8]) & 255) << 56);
    }

    public int pB() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = (bArr[i] & 255) << 8;
        int i4 = i2 + 1;
        this.oX = i4;
        int i5 = (bArr[i2] & 255) | i3;
        this.oX = i4 + 2;
        return i5;
    }

    public int pC() {
        return (po() << 21) | (po() << 14) | (po() << 7) | po();
    }

    public int pD() {
        int iPx = px();
        if (iPx >= 0) {
            return iPx;
        }
        throw new IllegalStateException("Top bit not zero: " + iPx);
    }

    public int pE() {
        int iPy = py();
        if (iPy >= 0) {
            return iPy;
        }
        throw new IllegalStateException("Top bit not zero: " + iPy);
    }

    public long pF() {
        long jPz = pz();
        if (jPz >= 0) {
            return jPz;
        }
        throw new IllegalStateException("Top bit not zero: " + jPz);
    }

    public float pG() {
        return Float.intBitsToFloat(px());
    }

    public double pH() {
        return Double.longBitsToDouble(pz());
    }

    @Nullable
    public String pI() {
        return b((char) 0);
    }

    @Nullable
    public String pJ() {
        if (pj() == 0) {
            return null;
        }
        int i = this.oX;
        while (i < this.limit && !ai.fG(this.tf[i])) {
            i++;
        }
        int i2 = this.oX;
        if (i - i2 >= 3) {
            byte[] bArr = this.tf;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.oX = i2 + 3;
            }
        }
        byte[] bArr2 = this.tf;
        int i3 = this.oX;
        String strT = ai.t(bArr2, i3, i - i3);
        this.oX = i;
        int i4 = this.limit;
        if (i == i4) {
            return strT;
        }
        byte[] bArr3 = this.tf;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.oX = i5;
            if (i5 == i4) {
                return strT;
            }
        }
        int i6 = this.oX;
        if (bArr3[i6] == 10) {
            this.oX = i6 + 1;
        }
        return strT;
    }

    public long pK() {
        int i;
        int i2;
        long j = this.tf[this.oX];
        int i3 = 7;
        while (true) {
            if (i3 < 0) {
                break;
            }
            int i4 = 1 << i3;
            if ((((long) i4) & j) != 0) {
                i3--;
            } else if (i3 < 6) {
                j &= (long) (i4 - 1);
                i2 = 7 - i3;
            } else if (i3 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
        }
        for (i = 1; i < i2; i++) {
            byte b = this.tf[this.oX + i];
            if ((b & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
            }
            j = (j << 6) | ((long) (b & 63));
        }
        this.oX += i2;
        return j;
    }

    public int pj() {
        return this.limit - this.oX;
    }

    public int pk() {
        return this.limit;
    }

    public int pl() {
        return this.tf.length;
    }

    public int pm() {
        return this.tf[this.oX] & 255;
    }

    public char pn() {
        byte[] bArr = this.tf;
        int i = this.oX;
        return (char) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public int po() {
        byte[] bArr = this.tf;
        int i = this.oX;
        this.oX = i + 1;
        return bArr[i] & 255;
    }

    public int pp() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.oX = i2 + 1;
        return (bArr[i2] & 255) | i3;
    }

    public int pq() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = bArr[i] & 255;
        this.oX = i2 + 1;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public short pr() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.oX = i2 + 1;
        return (short) ((bArr[i2] & 255) | i3);
    }

    public short ps() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = bArr[i] & 255;
        this.oX = i2 + 1;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    public int pt() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = (bArr[i] & 255) << 16;
        int i4 = i2 + 1;
        this.oX = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.oX = i4 + 1;
        return (bArr[i4] & 255) | i5;
    }

    public int pu() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = ((bArr[i] & 255) << 24) >> 8;
        int i4 = i2 + 1;
        this.oX = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.oX = i4 + 1;
        return (bArr[i4] & 255) | i5;
    }

    public long pv() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        long j = (((long) bArr[i]) & 255) << 24;
        int i3 = i2 + 1;
        this.oX = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 16);
        int i4 = i3 + 1;
        this.oX = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 8);
        this.oX = i4 + 1;
        return j3 | (((long) bArr[i4]) & 255);
    }

    public long pw() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        long j = ((long) bArr[i]) & 255;
        int i3 = i2 + 1;
        this.oX = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 8);
        int i4 = i3 + 1;
        this.oX = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 16);
        this.oX = i4 + 1;
        return j3 | ((((long) bArr[i4]) & 255) << 24);
    }

    public int px() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i2 + 1;
        this.oX = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 16);
        int i6 = i4 + 1;
        this.oX = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.oX = i6 + 1;
        return (bArr[i6] & 255) | i7;
    }

    public int py() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        int i3 = bArr[i] & 255;
        int i4 = i2 + 1;
        this.oX = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        int i6 = i4 + 1;
        this.oX = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.oX = i6 + 1;
        return ((bArr[i6] & 255) << 24) | i7;
    }

    public long pz() {
        byte[] bArr = this.tf;
        int i = this.oX;
        int i2 = i + 1;
        this.oX = i2;
        long j = (((long) bArr[i]) & 255) << 56;
        int i3 = i2 + 1;
        this.oX = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 48);
        int i4 = i3 + 1;
        this.oX = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 40);
        int i5 = i4 + 1;
        this.oX = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 32);
        int i6 = i5 + 1;
        this.oX = i6;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 24);
        int i7 = i6 + 1;
        this.oX = i7;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 16);
        int i8 = i7 + 1;
        this.oX = i8;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 8);
        this.oX = i8 + 1;
        return j7 | (((long) bArr[i8]) & 255);
    }

    public void r(byte[] bArr, int i, int i2) {
        System.arraycopy(this.tf, this.oX, bArr, i, i2);
        this.oX += i2;
    }
}
