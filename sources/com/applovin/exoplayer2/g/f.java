package com.applovin.exoplayer2.g;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.applovin.exoplayer2.w;
import com.applovin.exoplayer2.z1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f extends com.applovin.exoplayer2.e implements Handler.Callback {
    private boolean IF;
    private boolean IG;
    private final c Jb;
    private final e Jc;

    @Nullable
    private final Handler Jd;
    private final d Je;

    @Nullable
    private b Jf;
    private long Jg;

    @Nullable
    private a Jh;
    private long dD;

    public f(e eVar, @Nullable Looper looper) {
        this(eVar, looper, c.Ja);
    }

    public f(e eVar, @Nullable Looper looper, c cVar) {
        super(5);
        this.Jc = (e) com.applovin.exoplayer2.l.a.checkNotNull(eVar);
        this.Jd = looper == null ? null : ai.b(looper, this);
        this.Jb = (c) com.applovin.exoplayer2.l.a.checkNotNull(cVar);
        this.Je = new d();
        this.Jg = C.TIME_UNSET;
    }

    private void a(a aVar, List<a.InterfaceC0038a> list) {
        for (int i = 0; i < aVar.kD(); i++) {
            v vVarKE = aVar.de(i).kE();
            if (vVarKE == null || !this.Jb.d(vVarKE)) {
                list.add(aVar.de(i));
            } else {
                b bVarS = this.Jb.s(vVarKE);
                byte[] bArr = (byte[]) com.applovin.exoplayer2.l.a.checkNotNull(aVar.de(i).kF());
                this.Je.clear();
                this.Je.by(bArr.length);
                ((ByteBuffer) ai.R(this.Je.rH)).put(bArr);
                this.Je.hh();
                a aVarA = bVarS.a(this.Je);
                if (aVarA != null) {
                    a(aVarA, list);
                }
            }
        }
    }

    private boolean aP(long j) {
        boolean z;
        a aVar = this.Jh;
        if (aVar == null || this.Jg > j) {
            z = false;
        } else {
            h(aVar);
            this.Jh = null;
            this.Jg = C.TIME_UNSET;
            z = true;
        }
        if (this.IF && this.Jh == null) {
            this.IG = true;
        }
        return z;
    }

    private void h(a aVar) {
        Handler handler = this.Jd;
        if (handler != null) {
            handler.obtainMessage(0, aVar).sendToTarget();
        } else {
            i(aVar);
        }
    }

    private void i(a aVar) {
        this.Jc.a(aVar);
    }

    private void kG() {
        if (this.IF || this.Jh != null) {
            return;
        }
        this.Je.clear();
        w wVarAe = ae();
        int iA = a(wVarAe, this.Je, 0);
        if (iA != -4) {
            if (iA == -5) {
                this.dD = ((v) com.applovin.exoplayer2.l.a.checkNotNull(wVarAe.dU)).dD;
                return;
            }
            return;
        }
        if (this.Je.gY()) {
            this.IF = true;
            return;
        }
        d dVar = this.Je;
        dVar.dD = this.dD;
        dVar.hh();
        a aVarA = ((b) ai.R(this.Jf)).a(this.Je);
        if (aVarA != null) {
            ArrayList arrayList = new ArrayList(aVarA.kD());
            a(aVarA, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            this.Jh = new a(arrayList);
            this.Jg = this.Je.rJ;
        }
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(long j, boolean z) {
        this.Jh = null;
        this.Jg = C.TIME_UNSET;
        this.IF = false;
        this.IG = false;
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(v[] vVarArr, long j, long j2) {
        this.Jf = this.Jb.s(vVarArr[0]);
    }

    @Override // com.applovin.exoplayer2.e
    protected void ac() {
        this.Jh = null;
        this.Jg = C.TIME_UNSET;
        this.Jf = null;
    }

    @Override // com.applovin.exoplayer2.as
    public int b(v vVar) {
        if (this.Jb.d(vVar)) {
            return z1.b(vVar.dR == 0 ? 4 : 2);
        }
        return z1.b(0);
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean cR() {
        return this.IG;
    }

    @Override // com.applovin.exoplayer2.ar
    public void g(long j, long j2) {
        boolean zAP = true;
        while (zAP) {
            kG();
            zAP = aP(j);
        }
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        i((a) message.obj);
        return true;
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean isReady() {
        return true;
    }
}
