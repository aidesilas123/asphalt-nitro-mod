package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.l.ai;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class e implements i {
    private final com.applovin.exoplayer2.k.g ua;
    private final long ub;
    private long uc;
    private int ue;
    private int uf;
    private byte[] ud = new byte[65536];
    private final byte[] tZ = new byte[4096];

    public e(com.applovin.exoplayer2.k.g gVar, long j, long j2) {
        this.ua = gVar;
        this.uc = j;
        this.ub = j2;
    }

    private int a(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i4 = this.ua.read(bArr, i + i3, i2 - i3);
        if (i4 != -1) {
            return i3 + i4;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    private void bJ(int i) {
        int i2 = this.ue + i;
        byte[] bArr = this.ud;
        if (i2 > bArr.length) {
            this.ud = Arrays.copyOf(this.ud, ai.k(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    private int bK(int i) {
        int iMin = Math.min(this.uf, i);
        bL(iMin);
        return iMin;
    }

    private void bL(int i) {
        int i2 = this.uf - i;
        this.uf = i2;
        this.ue = 0;
        byte[] bArr = this.ud;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.ud = bArr2;
    }

    private void bM(int i) {
        if (i != -1) {
            this.uc += (long) i;
        }
    }

    private int d(byte[] bArr, int i, int i2) {
        int i3 = this.uf;
        if (i3 == 0) {
            return 0;
        }
        int iMin = Math.min(i3, i2);
        System.arraycopy(this.ud, 0, bArr, i, iMin);
        bL(iMin);
        return iMin;
    }

    @Override // com.applovin.exoplayer2.e.i
    public void a(byte[] bArr, int i, int i2) throws IOException {
        a(bArr, i, i2, false);
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int iD = d(bArr, i, i2);
        while (iD < i2 && iD != -1) {
            iD = a(bArr, i, i2, iD, z);
        }
        bM(iD);
        return iD != -1;
    }

    @Override // com.applovin.exoplayer2.e.i
    public int b(byte[] bArr, int i, int i2) throws IOException {
        int iMin;
        bJ(i2);
        int i3 = this.uf;
        int i4 = this.ue;
        int i5 = i3 - i4;
        if (i5 == 0) {
            iMin = a(this.ud, i4, i2, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.uf += iMin;
        } else {
            iMin = Math.min(i2, i5);
        }
        System.arraycopy(this.ud, this.ue, bArr, i, iMin);
        this.ue += iMin;
        return iMin;
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!j(i2, z)) {
            return false;
        }
        System.arraycopy(this.ud, this.ue - i2, bArr, i, i2);
        return true;
    }

    @Override // com.applovin.exoplayer2.e.i
    public int bG(int i) throws IOException {
        int iBK = bK(i);
        if (iBK == 0) {
            byte[] bArr = this.tZ;
            iBK = a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        bM(iBK);
        return iBK;
    }

    @Override // com.applovin.exoplayer2.e.i
    public void bH(int i) throws IOException {
        i(i, false);
    }

    @Override // com.applovin.exoplayer2.e.i
    public void bI(int i) throws IOException {
        j(i, false);
    }

    @Override // com.applovin.exoplayer2.e.i
    public void c(byte[] bArr, int i, int i2) throws IOException {
        b(bArr, i, i2, false);
    }

    public boolean i(int i, boolean z) throws IOException {
        int iBK = bK(i);
        while (iBK < i && iBK != -1) {
            iBK = a(this.tZ, -iBK, Math.min(i, this.tZ.length + iBK), iBK, z);
        }
        bM(iBK);
        return iBK != -1;
    }

    @Override // com.applovin.exoplayer2.e.i
    public void ic() {
        this.ue = 0;
    }

    @Override // com.applovin.exoplayer2.e.i
    public long id() {
        return this.uc + ((long) this.ue);
    }

    @Override // com.applovin.exoplayer2.e.i
    public long ie() {
        return this.uc;
    }

    @Override // com.applovin.exoplayer2.e.i
    /* JADX INFO: renamed from: if */
    public long mo28if() {
        return this.ub;
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean j(int i, boolean z) throws IOException {
        bJ(i);
        int iA = this.uf - this.ue;
        while (iA < i) {
            iA = a(this.ud, this.ue, i, iA, z);
            if (iA == -1) {
                return false;
            }
            this.uf = this.ue + iA;
        }
        this.ue += i;
        return true;
    }

    @Override // com.applovin.exoplayer2.e.i, com.applovin.exoplayer2.k.g
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int iD = d(bArr, i, i2);
        if (iD == 0) {
            iD = a(bArr, i, i2, 0, true);
        }
        bM(iD);
        return iD;
    }
}
