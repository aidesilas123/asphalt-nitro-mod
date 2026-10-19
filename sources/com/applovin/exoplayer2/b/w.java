package com.applovin.exoplayer2.b;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.b.f;
import com.applovin.exoplayer2.l.ai;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class w implements f {
    private float gD = 1.0f;
    private float gE = 1.0f;
    private f.a kO;
    private f.a kP;
    private f.a kQ;
    private f.a kR;
    private ByteBuffer kS;
    private ByteBuffer kT;
    private boolean kU;
    private int nm;
    private boolean nn;

    @Nullable
    private v no;
    private ShortBuffer np;
    private long nq;
    private long nr;

    public w() {
        f.a aVar = f.a.jP;
        this.kQ = aVar;
        this.kR = aVar;
        this.kO = aVar;
        this.kP = aVar;
        ByteBuffer byteBuffer = f.jO;
        this.kS = byteBuffer;
        this.np = byteBuffer.asShortBuffer();
        this.kT = byteBuffer;
        this.nm = -1;
    }

    public long U(long j) {
        if (this.nr < PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            return (long) (((double) this.gD) * j);
        }
        long jEN = this.nq - ((long) ((v) com.applovin.exoplayer2.l.a.checkNotNull(this.no)).eN());
        int i = this.kP.dM;
        int i2 = this.kO.dM;
        return i == i2 ? ai.e(j, jEN, this.nr) : ai.e(j, jEN * ((long) i), this.nr * ((long) i2));
    }

    @Override // com.applovin.exoplayer2.b.f
    public void Y() {
        this.gD = 1.0f;
        this.gE = 1.0f;
        f.a aVar = f.a.jP;
        this.kQ = aVar;
        this.kR = aVar;
        this.kO = aVar;
        this.kP = aVar;
        ByteBuffer byteBuffer = f.jO;
        this.kS = byteBuffer;
        this.np = byteBuffer.asShortBuffer();
        this.kT = byteBuffer;
        this.nm = -1;
        this.nn = false;
        this.no = null;
        this.nq = 0L;
        this.nr = 0L;
        this.kU = false;
    }

    @Override // com.applovin.exoplayer2.b.f
    public f.a a(f.a aVar) throws f.b {
        if (aVar.jQ != 2) {
            throw new f.b(aVar);
        }
        int i = this.nm;
        if (i == -1) {
            i = aVar.dM;
        }
        this.kQ = aVar;
        f.a aVar2 = new f.a(i, aVar.dL, 2);
        this.kR = aVar2;
        this.nn = true;
        return aVar2;
    }

    @Override // com.applovin.exoplayer2.b.f
    public boolean cR() {
        v vVar;
        return this.kU && ((vVar = this.no) == null || vVar.eO() == 0);
    }

    @Override // com.applovin.exoplayer2.b.f
    public void d(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            v vVar = (v) com.applovin.exoplayer2.l.a.checkNotNull(this.no);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.nq += (long) iRemaining;
            vVar.a(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // com.applovin.exoplayer2.b.f
    public void dG() {
        v vVar = this.no;
        if (vVar != null) {
            vVar.dG();
        }
        this.kU = true;
    }

    @Override // com.applovin.exoplayer2.b.f
    public ByteBuffer dH() {
        int iEO;
        v vVar = this.no;
        if (vVar != null && (iEO = vVar.eO()) > 0) {
            if (this.kS.capacity() < iEO) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iEO).order(ByteOrder.nativeOrder());
                this.kS = byteBufferOrder;
                this.np = byteBufferOrder.asShortBuffer();
            } else {
                this.kS.clear();
                this.np.clear();
            }
            vVar.b(this.np);
            this.nr += (long) iEO;
            this.kS.limit(iEO);
            this.kT = this.kS;
        }
        ByteBuffer byteBuffer = this.kT;
        this.kT = f.jO;
        return byteBuffer;
    }

    @Override // com.applovin.exoplayer2.b.f
    public void dI() {
        if (isActive()) {
            f.a aVar = this.kQ;
            this.kO = aVar;
            f.a aVar2 = this.kR;
            this.kP = aVar2;
            if (this.nn) {
                this.no = new v(aVar.dM, aVar.dL, this.gD, this.gE, aVar2.dM);
            } else {
                v vVar = this.no;
                if (vVar != null) {
                    vVar.dI();
                }
            }
        }
        this.kT = f.jO;
        this.nq = 0L;
        this.nr = 0L;
        this.kU = false;
    }

    @Override // com.applovin.exoplayer2.b.f
    public boolean isActive() {
        return this.kR.dM != -1 && (Math.abs(this.gD - 1.0f) >= 1.0E-4f || Math.abs(this.gE - 1.0f) >= 1.0E-4f || this.kR.dM != this.kQ.dM);
    }

    public void l(float f2) {
        if (this.gD != f2) {
            this.gD = f2;
            this.nn = true;
        }
    }

    public void m(float f2) {
        if (this.gE != f2) {
            this.gE = f2;
            this.nn = true;
        }
    }
}
