package com.applovin.exoplayer2.d;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.common.a.ax;
import com.applovin.exoplayer2.d.c;
import com.applovin.exoplayer2.k.q;
import com.applovin.exoplayer2.k.t;
import com.applovin.exoplayer2.l.ai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d implements i {

    @GuardedBy("lock")
    private ab.d eL;
    private final Object rT = new Object();

    @GuardedBy("lock")
    private h sY;

    @Nullable
    private t.b sZ;

    @Nullable
    private String ta;

    @RequiresApi(18)
    private h b(ab.d dVar) {
        t.b bVarAO = this.sZ;
        if (bVarAO == null) {
            bVarAO = new q.a().aO(this.ta);
        }
        Uri uri = dVar.ez;
        p pVar = new p(uri == null ? null : uri.toString(), dVar.eD, bVarAO);
        ax<Map.Entry<String, String>> it = dVar.eA.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            pVar.c(next.getKey(), next.getValue());
        }
        c cVarA = new c.a().a(dVar.ey, o.tq).K(dVar.eB).L(dVar.eC).e(com.applovin.exoplayer2.common.b.c.f(dVar.eE)).a(pVar);
        cVarA.a(0, dVar.bW());
        return cVarA;
    }

    @Override // com.applovin.exoplayer2.d.i
    public h a(ab abVar) {
        h hVar;
        com.applovin.exoplayer2.l.a.checkNotNull(abVar.ea);
        ab.d dVar = abVar.ea.eL;
        if (dVar == null || ai.acV < 18) {
            return h.ti;
        }
        synchronized (this.rT) {
            if (!ai.r(dVar, this.eL)) {
                this.eL = dVar;
                this.sY = b(dVar);
            }
            hVar = (h) com.applovin.exoplayer2.l.a.checkNotNull(this.sY);
        }
        return hVar;
    }
}
