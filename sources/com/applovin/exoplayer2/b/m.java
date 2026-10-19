package com.applovin.exoplayer2.b;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.b.f;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class m extends l {

    @Nullable
    private int[] kV;

    @Nullable
    private int[] kW;

    m() {
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void ad() {
        this.kW = null;
        this.kV = null;
    }

    @Override // com.applovin.exoplayer2.b.l
    public f.a b(f.a aVar) throws f.b {
        int[] iArr = this.kV;
        if (iArr == null) {
            return f.a.jP;
        }
        if (aVar.jQ != 2) {
            throw new f.b(aVar);
        }
        boolean z = aVar.dL != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= aVar.dL) {
                throw new f.b(aVar);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new f.a(aVar.dM, iArr.length, 2) : f.a.jP;
    }

    public void c(@Nullable int[] iArr) {
        this.kV = iArr;
    }

    @Override // com.applovin.exoplayer2.b.f
    public void d(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) com.applovin.exoplayer2.l.a.checkNotNull(this.kW);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferAz = az(((iLimit - iPosition) / this.kO.jR) * this.kP.jR);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                byteBufferAz.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.kO.jR;
        }
        byteBuffer.position(iLimit);
        byteBufferAz.flip();
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void eg() {
        this.kW = this.kV;
    }
}
