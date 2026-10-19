package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.b.f;
import com.applovin.exoplayer2.l.ai;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class x extends l {
    private int ns;
    private int nt;
    private boolean nu;
    private int nv;
    private byte[] nw = ai.ada;
    private int nx;
    private long ny;

    @Override // com.applovin.exoplayer2.b.l
    protected void ad() {
        this.nw = ai.ada;
    }

    @Override // com.applovin.exoplayer2.b.l
    public f.a b(f.a aVar) throws f.b {
        if (aVar.jQ != 2) {
            throw new f.b(aVar);
        }
        this.nu = true;
        return (this.ns == 0 && this.nt == 0) ? f.a.jP : aVar;
    }

    @Override // com.applovin.exoplayer2.b.l, com.applovin.exoplayer2.b.f
    public boolean cR() {
        return super.cR() && this.nx == 0;
    }

    @Override // com.applovin.exoplayer2.b.f
    public void d(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i = iLimit - iPosition;
        if (i == 0) {
            return;
        }
        int iMin = Math.min(i, this.nv);
        this.ny += (long) (iMin / this.kO.jR);
        this.nv -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.nv > 0) {
            return;
        }
        int i2 = i - iMin;
        int length = (this.nx + i2) - this.nw.length;
        ByteBuffer byteBufferAz = az(length);
        int iK = ai.k(length, 0, this.nx);
        byteBufferAz.put(this.nw, 0, iK);
        int iK2 = ai.k(length - iK, 0, i2);
        byteBuffer.limit(byteBuffer.position() + iK2);
        byteBufferAz.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i3 = i2 - iK2;
        int i4 = this.nx - iK;
        this.nx = i4;
        byte[] bArr = this.nw;
        System.arraycopy(bArr, iK, bArr, 0, i4);
        byteBuffer.get(this.nw, this.nx, i3);
        this.nx += i3;
        byteBufferAz.flip();
    }

    @Override // com.applovin.exoplayer2.b.l, com.applovin.exoplayer2.b.f
    public ByteBuffer dH() {
        int i;
        if (super.cR() && (i = this.nx) > 0) {
            az(i).put(this.nw, 0, this.nx).flip();
            this.nx = 0;
        }
        return super.dH();
    }

    public void eQ() {
        this.ny = 0L;
    }

    public long eR() {
        return this.ny;
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void ef() {
        if (this.nu) {
            int i = this.nx;
            if (i > 0) {
                this.ny += (long) (i / this.kO.jR);
            }
            this.nx = 0;
        }
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void eg() {
        if (this.nu) {
            this.nu = false;
            int i = this.nt;
            int i2 = this.kO.jR;
            this.nw = new byte[i * i2];
            this.nv = this.ns * i2;
        }
        this.nx = 0;
    }

    public void o(int i, int i2) {
        this.ns = i;
        this.nt = i2;
    }
}
