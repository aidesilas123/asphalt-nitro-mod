package com.applovin.impl.sdk;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.b;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final WeakReference<com.applovin.impl.sdk.ad.g> ayS;
    private final WeakReference<b.a> ayT;

    @Nullable
    private com.applovin.impl.sdk.utils.r ayU;
    private final n sdk;

    private c(com.applovin.impl.sdk.ad.g gVar, b.a aVar, n nVar) {
        this.ayS = new WeakReference<>(gVar);
        this.ayT = new WeakReference<>(aVar);
        this.sdk = nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AF() {
        AE();
        this.sdk.Cb().a(this);
    }

    public static c a(com.applovin.impl.sdk.ad.g gVar, b.a aVar, n nVar) {
        c cVar = new c(gVar, aVar, nVar);
        cVar.bJ(gVar.getTimeToLiveMillis());
        return cVar;
    }

    @Nullable
    public com.applovin.impl.sdk.ad.g AD() {
        return this.ayS.get();
    }

    public void AE() {
        tT();
        com.applovin.impl.sdk.ad.g gVarAD = AD();
        if (gVarAD == null) {
            return;
        }
        gVarAD.setExpired();
        b.a aVar = this.ayT.get();
        if (aVar == null) {
            return;
        }
        aVar.onAdExpired(gVarAD);
    }

    public void bJ(long j) {
        tT();
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aMc)).booleanValue() || !this.sdk.Ce().isApplicationPaused()) {
            this.ayU = com.applovin.impl.sdk.utils.r.b(j, this.sdk, new Runnable() { // from class: com.applovin.impl.sdk.p0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.AF();
                }
            });
        }
    }

    public void tT() {
        com.applovin.impl.sdk.utils.r rVar = this.ayU;
        if (rVar != null) {
            rVar.tT();
            this.ayU = null;
        }
    }
}
