package com.applovin.exoplayer2.j;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    @Nullable
    private a VC;

    @Nullable
    private com.applovin.exoplayer2.k.d bO;

    public interface a {
    }

    public abstract void J(@Nullable Object obj);

    public abstract k a(as[] asVarArr, ad adVar, p.a aVar, ba baVar) throws com.applovin.exoplayer2.p;

    public final void a(a aVar, com.applovin.exoplayer2.k.d dVar) {
        this.VC = aVar;
        this.bO = dVar;
    }

    public boolean nh() {
        return false;
    }

    protected final com.applovin.exoplayer2.k.d nq() {
        return (com.applovin.exoplayer2.k.d) com.applovin.exoplayer2.l.a.checkNotNull(this.bO);
    }
}
