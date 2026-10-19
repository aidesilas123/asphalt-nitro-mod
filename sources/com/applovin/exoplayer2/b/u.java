package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.b.f;
import com.applovin.exoplayer2.l.ai;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class u extends l {
    private int Z;
    private boolean iV;
    private int jR;
    private final long mK;
    private final long mL;
    private final short mM;
    private byte[] mN;
    private byte[] mO;
    private int mP;
    private int mQ;
    private boolean mR;
    private long mS;

    public u() {
        this(150000L, 20000L, (short) 1024);
    }

    public u(long j, long j2, short s) {
        com.applovin.exoplayer2.l.a.checkArgument(j2 <= j);
        this.mK = j;
        this.mL = j2;
        this.mM = s;
        byte[] bArr = ai.ada;
        this.mN = bArr;
        this.mO = bArr;
    }

    private void a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int iMin = Math.min(byteBuffer.remaining(), this.mQ);
        int i2 = this.mQ - iMin;
        System.arraycopy(bArr, i - i2, this.mO, 0, i2);
        byteBuffer.position(byteBuffer.limit() - iMin);
        byteBuffer.get(this.mO, i2, iMin);
    }

    private int aa(long j) {
        return (int) ((j * ((long) this.kO.dM)) / 1000000);
    }

    private void c(byte[] bArr, int i) {
        az(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.mR = true;
        }
    }

    private void f(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.mN.length));
        int iK = k(byteBuffer);
        if (iK == byteBuffer.position()) {
            this.Z = 1;
        } else {
            byteBuffer.limit(iK);
            i(byteBuffer);
        }
        byteBuffer.limit(iLimit);
    }

    private void g(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iJ = j(byteBuffer);
        int iPosition = iJ - byteBuffer.position();
        byte[] bArr = this.mN;
        int length = bArr.length;
        int i = this.mP;
        int i2 = length - i;
        if (iJ < iLimit && iPosition < i2) {
            c(bArr, i);
            this.mP = 0;
            this.Z = 0;
            return;
        }
        int iMin = Math.min(iPosition, i2);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.mN, this.mP, iMin);
        int i3 = this.mP + iMin;
        this.mP = i3;
        byte[] bArr2 = this.mN;
        if (i3 == bArr2.length) {
            if (this.mR) {
                c(bArr2, this.mQ);
                this.mS += (long) ((this.mP - (this.mQ * 2)) / this.jR);
            } else {
                this.mS += (long) ((i3 - this.mQ) / this.jR);
            }
            a(byteBuffer, this.mN, this.mP);
            this.mP = 0;
            this.Z = 2;
        }
        byteBuffer.limit(iLimit);
    }

    private void h(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iJ = j(byteBuffer);
        byteBuffer.limit(iJ);
        this.mS += (long) (byteBuffer.remaining() / this.jR);
        a(byteBuffer, this.mO, this.mQ);
        if (iJ < iLimit) {
            c(this.mO, this.mQ);
            this.Z = 0;
            byteBuffer.limit(iLimit);
        }
    }

    private void i(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        az(iRemaining).put(byteBuffer).flip();
        if (iRemaining > 0) {
            this.mR = true;
        }
    }

    private int j(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position(); iPosition < byteBuffer.limit(); iPosition += 2) {
            if (Math.abs((int) byteBuffer.getShort(iPosition)) > this.mM) {
                int i = this.jR;
                return i * (iPosition / i);
            }
        }
        return byteBuffer.limit();
    }

    private int k(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        do {
            iLimit -= 2;
            if (iLimit < byteBuffer.position()) {
                return byteBuffer.position();
            }
        } while (Math.abs((int) byteBuffer.getShort(iLimit)) <= this.mM);
        int i = this.jR;
        return ((iLimit / i) * i) + i;
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void ad() {
        this.iV = false;
        this.mQ = 0;
        byte[] bArr = ai.ada;
        this.mN = bArr;
        this.mO = bArr;
    }

    @Override // com.applovin.exoplayer2.b.l
    public f.a b(f.a aVar) throws f.b {
        if (aVar.jQ == 2) {
            return this.iV ? aVar : f.a.jP;
        }
        throw new f.b(aVar);
    }

    @Override // com.applovin.exoplayer2.b.f
    public void d(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !ee()) {
            int i = this.Z;
            if (i == 0) {
                f(byteBuffer);
            } else if (i == 1) {
                g(byteBuffer);
            } else {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                h(byteBuffer);
            }
        }
    }

    public long eM() {
        return this.mS;
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void ef() {
        int i = this.mP;
        if (i > 0) {
            c(this.mN, i);
        }
        if (this.mR) {
            return;
        }
        this.mS += (long) (this.mQ / this.jR);
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void eg() {
        if (this.iV) {
            this.jR = this.kO.jR;
            int iAa = aa(this.mK) * this.jR;
            if (this.mN.length != iAa) {
                this.mN = new byte[iAa];
            }
            int iAa2 = aa(this.mL) * this.jR;
            this.mQ = iAa2;
            if (this.mO.length != iAa2) {
                this.mO = new byte[iAa2];
            }
        }
        this.Z = 0;
        this.mS = 0L;
        this.mP = 0;
        this.mR = false;
    }

    @Override // com.applovin.exoplayer2.b.l, com.applovin.exoplayer2.b.f
    public boolean isActive() {
        return this.iV;
    }

    public void setEnabled(boolean z) {
        this.iV = z;
    }
}
