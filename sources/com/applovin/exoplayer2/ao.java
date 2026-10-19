package com.applovin.exoplayer2;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class ao {
    private final com.applovin.exoplayer2.l.d bR;
    private int bs;
    private int cN;
    private final ba ci;
    private final b gR;
    private final a gS;

    @Nullable
    private Object gT;
    private Looper gU;
    private boolean gW;
    private boolean gX;
    private boolean gY;
    private boolean gZ;
    private long dX = C.TIME_UNSET;
    private boolean gV = true;

    public interface a {
        void a(ao aoVar);
    }

    public interface b {
        void a(int i, @Nullable Object obj) throws p;
    }

    public ao(a aVar, b bVar, ba baVar, int i, com.applovin.exoplayer2.l.d dVar, Looper looper) {
        this.gS = aVar;
        this.gR = bVar;
        this.ci = baVar;
        this.gU = looper;
        this.bR = dVar;
        this.cN = i;
    }

    public synchronized void B(boolean z) {
        this.gX = z | this.gX;
        this.gY = true;
        notifyAll();
    }

    public ao ad(int i) {
        com.applovin.exoplayer2.l.a.checkState(!this.gW);
        this.bs = i;
        return this;
    }

    public ba bf() {
        return this.ci;
    }

    public b cF() {
        return this.gR;
    }

    public int cG() {
        return this.bs;
    }

    @Nullable
    public Object cH() {
        return this.gT;
    }

    public Looper cI() {
        return this.gU;
    }

    public long cJ() {
        return this.dX;
    }

    public int cK() {
        return this.cN;
    }

    public boolean cL() {
        return this.gV;
    }

    public ao cM() {
        com.applovin.exoplayer2.l.a.checkState(!this.gW);
        if (this.dX == C.TIME_UNSET) {
            com.applovin.exoplayer2.l.a.checkArgument(this.gV);
        }
        this.gW = true;
        this.gS.a(this);
        return this;
    }

    public synchronized boolean cN() {
        return this.gZ;
    }

    public ao h(@Nullable Object obj) {
        com.applovin.exoplayer2.l.a.checkState(!this.gW);
        this.gT = obj;
        return this;
    }

    public synchronized boolean y(long j) throws InterruptedException, TimeoutException {
        boolean z;
        com.applovin.exoplayer2.l.a.checkState(this.gW);
        com.applovin.exoplayer2.l.a.checkState(this.gU.getThread() != Thread.currentThread());
        long jOK = this.bR.oK() + j;
        while (true) {
            z = this.gY;
            if (z || j <= 0) {
                break;
            }
            this.bR.oM();
            wait(j);
            j = jOK - this.bR.oK();
        }
        if (!z) {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.gX;
    }
}
