package com.applovin.exoplayer2.c;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.c.f;
import com.applovin.exoplayer2.c.g;
import com.applovin.exoplayer2.c.i;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public abstract class j<I extends g, O extends i, E extends f> implements d<I, O, E> {
    private boolean cw;
    private int rA;
    private final Thread rS;
    private final Object rT = new Object();
    private final ArrayDeque<I> rU = new ArrayDeque<>();
    private final ArrayDeque<O> rV = new ArrayDeque<>();
    private final I[] rW;
    private final O[] rX;
    private int rY;
    private int rZ;

    @Nullable
    private I sa;

    @Nullable
    private E sb;
    private boolean sc;

    protected j(I[] iArr, O[] oArr) {
        this.rW = iArr;
        this.rY = iArr.length;
        for (int i = 0; i < this.rY; i++) {
            ((I[]) this.rW)[i] = ho();
        }
        this.rX = oArr;
        this.rZ = oArr.length;
        for (int i2 = 0; i2 < this.rZ; i2++) {
            ((O[]) this.rX)[i2] = hp();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: com.applovin.exoplayer2.c.j.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                j.this.run();
            }
        };
        this.rS = thread;
        thread.start();
    }

    private void a(O o) {
        o.clear();
        O[] oArr = this.rX;
        int i = this.rZ;
        this.rZ = i + 1;
        oArr[i] = o;
    }

    private void c(I i) {
        i.clear();
        I[] iArr = this.rW;
        int i2 = this.rY;
        this.rY = i2 + 1;
        iArr[i2] = i;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends com.applovin.exoplayer2.c.f */
    private void hk() throws f, E {
        E e2 = this.sb;
        if (e2 != null) {
            throw e2;
        }
    }

    private void hl() {
        if (hn()) {
            this.rT.notify();
        }
    }

    private boolean hm() throws InterruptedException {
        E e2;
        synchronized (this.rT) {
            while (!this.cw && !hn()) {
                this.rT.wait();
            }
            if (this.cw) {
                return false;
            }
            I iRemoveFirst = this.rU.removeFirst();
            O[] oArr = this.rX;
            int i = this.rZ - 1;
            this.rZ = i;
            O o = oArr[i];
            boolean z = this.sc;
            this.sc = false;
            if (iRemoveFirst.gY()) {
                o.bt(4);
            } else {
                if (iRemoveFirst.gX()) {
                    o.bt(Integer.MIN_VALUE);
                }
                try {
                    e2 = (E) a(iRemoveFirst, o, z);
                } catch (OutOfMemoryError e3) {
                    e2 = (E) a(e3);
                } catch (RuntimeException e4) {
                    e2 = (E) a(e4);
                }
                if (e2 != null) {
                    synchronized (this.rT) {
                        this.sb = e2;
                    }
                    return false;
                }
            }
            synchronized (this.rT) {
                if (this.sc) {
                    o.release();
                } else if (o.gX()) {
                    this.rA++;
                    o.release();
                } else {
                    o.rA = this.rA;
                    this.rA = 0;
                    this.rV.addLast(o);
                }
                c(iRemoveFirst);
            }
            return true;
        }
    }

    private boolean hn() {
        return !this.rU.isEmpty() && this.rZ > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void run() {
        do {
            try {
            } catch (InterruptedException e2) {
                throw new IllegalStateException(e2);
            }
        } while (hm());
    }

    @Nullable
    protected abstract E a(I i, O o, boolean z);

    protected abstract E a(Throwable th);

    @Override // com.applovin.exoplayer2.c.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final void D(I i) throws f {
        synchronized (this.rT) {
            hk();
            com.applovin.exoplayer2.l.a.checkArgument(i == this.sa);
            this.rU.addLast(i);
            hl();
            this.sa = null;
        }
    }

    protected final void bA(int i) {
        com.applovin.exoplayer2.l.a.checkState(this.rY == this.rW.length);
        for (I i2 : this.rW) {
            i2.by(i);
        }
    }

    @Override // com.applovin.exoplayer2.c.d
    public final void dI() {
        synchronized (this.rT) {
            this.sc = true;
            this.rA = 0;
            I i = this.sa;
            if (i != null) {
                c(i);
                this.sa = null;
            }
            while (!this.rU.isEmpty()) {
                c(this.rU.removeFirst());
            }
            while (!this.rV.isEmpty()) {
                this.rV.removeFirst().release();
            }
        }
    }

    @Override // com.applovin.exoplayer2.c.d
    @Nullable
    /* JADX INFO: renamed from: hi, reason: merged with bridge method [inline-methods] */
    public final I hc() throws f {
        I i;
        synchronized (this.rT) {
            hk();
            com.applovin.exoplayer2.l.a.checkState(this.sa == null);
            int i2 = this.rY;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.rW;
                int i3 = i2 - 1;
                this.rY = i3;
                i = iArr[i3];
            }
            this.sa = i;
        }
        return i;
    }

    @Override // com.applovin.exoplayer2.c.d
    @Nullable
    /* JADX INFO: renamed from: hj, reason: merged with bridge method [inline-methods] */
    public final O hd() throws f {
        synchronized (this.rT) {
            hk();
            if (this.rV.isEmpty()) {
                return null;
            }
            return this.rV.removeFirst();
        }
    }

    protected abstract I ho();

    protected abstract O hp();

    @Override // com.applovin.exoplayer2.c.d
    @CallSuper
    public void release() {
        synchronized (this.rT) {
            this.cw = true;
            this.rT.notify();
        }
        try {
            this.rS.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @CallSuper
    protected void releaseOutputBuffer(O o) {
        synchronized (this.rT) {
            a(o);
            hl();
        }
    }
}
