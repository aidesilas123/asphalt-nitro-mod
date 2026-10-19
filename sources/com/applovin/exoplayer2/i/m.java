package com.applovin.exoplayer2.i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.v;
import com.applovin.exoplayer2.w;
import com.applovin.exoplayer2.z1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class m extends com.applovin.exoplayer2.e implements Handler.Callback {
    private boolean IF;
    private boolean IG;

    @Nullable
    private final Handler Jd;

    @Nullable
    private g OA;

    @Nullable
    private j OB;

    @Nullable
    private k OC;

    @Nullable
    private k OD;
    private int OE;
    private long OF;
    private final l Ov;
    private final i Ow;
    private boolean Ox;
    private int Oy;

    @Nullable
    private v Oz;
    private final w W;

    public m(l lVar, @Nullable Looper looper) {
        this(lVar, looper, i.Ot);
    }

    public m(l lVar, @Nullable Looper looper, i iVar) {
        super(3);
        this.Ov = (l) com.applovin.exoplayer2.l.a.checkNotNull(lVar);
        this.Jd = looper == null ? null : ai.b(looper, this);
        this.Ow = iVar;
        this.W = new w();
        this.OF = C.TIME_UNSET;
    }

    private void a(h hVar) {
        q.c("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.Oz, hVar);
        mf();
        md();
    }

    private void k(List<a> list) {
        Handler handler = this.Jd;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            l(list);
        }
    }

    private void l(List<a> list) {
        this.Ov.e(list);
    }

    private void ma() {
        this.OB = null;
        this.OE = -1;
        k kVar = this.OC;
        if (kVar != null) {
            kVar.release();
            this.OC = null;
        }
        k kVar2 = this.OD;
        if (kVar2 != null) {
            kVar2.release();
            this.OD = null;
        }
    }

    private void mb() {
        ma();
        ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.OA)).release();
        this.OA = null;
        this.Oy = 0;
    }

    private void mc() {
        this.Ox = true;
        this.OA = this.Ow.x((v) com.applovin.exoplayer2.l.a.checkNotNull(this.Oz));
    }

    private void md() {
        mb();
        mc();
    }

    private long me() {
        if (this.OE == -1) {
            return Long.MAX_VALUE;
        }
        com.applovin.exoplayer2.l.a.checkNotNull(this.OC);
        if (this.OE >= this.OC.lX()) {
            return Long.MAX_VALUE;
        }
        return this.OC.ej(this.OE);
    }

    private void mf() {
        k(Collections.emptyList());
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(long j, boolean z) {
        mf();
        this.IF = false;
        this.IG = false;
        this.OF = C.TIME_UNSET;
        if (this.Oy != 0) {
            md();
        } else {
            ma();
            ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.OA)).dI();
        }
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(v[] vVarArr, long j, long j2) {
        this.Oz = vVarArr[0];
        if (this.OA != null) {
            this.Oy = 1;
        } else {
            mc();
        }
    }

    @Override // com.applovin.exoplayer2.e
    protected void ac() {
        this.Oz = null;
        this.OF = C.TIME_UNSET;
        mf();
        mb();
    }

    @Override // com.applovin.exoplayer2.as
    public int b(v vVar) {
        if (this.Ow.d(vVar)) {
            return z1.b(vVar.dR == 0 ? 4 : 2);
        }
        return u.aY(vVar.dz) ? z1.b(1) : z1.b(0);
    }

    public void bg(long j) {
        com.applovin.exoplayer2.l.a.checkState(U());
        this.OF = j;
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean cR() {
        return this.IG;
    }

    @Override // com.applovin.exoplayer2.ar
    public void g(long j, long j2) throws com.applovin.exoplayer2.c.f {
        boolean z;
        if (U()) {
            long j3 = this.OF;
            if (j3 != C.TIME_UNSET && j >= j3) {
                ma();
                this.IG = true;
            }
        }
        if (this.IG) {
            return;
        }
        if (this.OD == null) {
            ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.OA)).bd(j);
            try {
                this.OD = ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.OA)).hd();
            } catch (h e2) {
                a(e2);
                return;
            }
        }
        if (P() != 2) {
            return;
        }
        if (this.OC != null) {
            long jMe = me();
            z = false;
            while (jMe <= j) {
                this.OE++;
                jMe = me();
                z = true;
            }
        } else {
            z = false;
        }
        k kVar = this.OD;
        if (kVar != null) {
            if (kVar.gY()) {
                if (!z && me() == Long.MAX_VALUE) {
                    if (this.Oy == 2) {
                        md();
                    } else {
                        ma();
                        this.IG = true;
                    }
                }
            } else if (kVar.rJ <= j) {
                k kVar2 = this.OC;
                if (kVar2 != null) {
                    kVar2.release();
                }
                this.OE = kVar.be(j);
                this.OC = kVar;
                this.OD = null;
                z = true;
            }
        }
        if (z) {
            com.applovin.exoplayer2.l.a.checkNotNull(this.OC);
            k(this.OC.bf(j));
        }
        if (this.Oy == 2) {
            return;
        }
        while (!this.IF) {
            try {
                j jVarHc = this.OB;
                if (jVarHc == null) {
                    jVarHc = ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.OA)).hc();
                    if (jVarHc == null) {
                        return;
                    } else {
                        this.OB = jVarHc;
                    }
                }
                if (this.Oy == 1) {
                    jVarHc.bs(4);
                    ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.OA)).D(jVarHc);
                    this.OB = null;
                    this.Oy = 2;
                    return;
                }
                int iA = a(this.W, jVarHc, 0);
                if (iA == -4) {
                    if (jVarHc.gY()) {
                        this.IF = true;
                        this.Ox = false;
                    } else {
                        v vVar = this.W.dU;
                        if (vVar == null) {
                            return;
                        }
                        jVarHc.dD = vVar.dD;
                        jVarHc.hh();
                        this.Ox &= !jVarHc.gZ();
                    }
                    if (!this.Ox) {
                        ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.OA)).D(jVarHc);
                        this.OB = null;
                    }
                } else if (iA == -3) {
                    return;
                }
            } catch (h e3) {
                a(e3);
                return;
            }
        }
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        l((List) message.obj);
        return true;
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean isReady() {
        return true;
    }
}
