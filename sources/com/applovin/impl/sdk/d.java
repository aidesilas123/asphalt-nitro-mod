package com.applovin.impl.sdk;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private final x logger;
    private final n sdk;
    private final Map<com.applovin.impl.sdk.ad.d, z> alu = new HashMap();
    private final Map<com.applovin.impl.sdk.ad.d, z> ayW = new HashMap();
    private final Object ayV = new Object();

    d(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        for (com.applovin.impl.sdk.ad.d dVar : com.applovin.impl.sdk.ad.d.FT()) {
            this.alu.put(dVar, new z());
            this.ayW.put(dVar, new z());
        }
    }

    private z d(com.applovin.impl.sdk.ad.d dVar) {
        z zVar;
        synchronized (this.ayV) {
            zVar = this.alu.get(dVar);
            if (zVar == null) {
                zVar = new z();
                this.alu.put(dVar, zVar);
            }
        }
        return zVar;
    }

    private z e(com.applovin.impl.sdk.ad.d dVar) {
        z zVar;
        synchronized (this.ayV) {
            zVar = this.ayW.get(dVar);
            if (zVar == null) {
                zVar = new z();
                this.ayW.put(dVar, zVar);
            }
        }
        return zVar;
    }

    private z f(com.applovin.impl.sdk.ad.d dVar) {
        synchronized (this.ayV) {
            z zVarE = e(dVar);
            if (zVarE.Fq() > 0) {
                return zVarE;
            }
            return d(dVar);
        }
    }

    @Nullable
    public AppLovinAdImpl a(com.applovin.impl.sdk.ad.d dVar) {
        com.applovin.impl.sdk.ad.f fVar;
        synchronized (this.ayV) {
            z zVarD = d(dVar);
            if (zVarD.Fq() > 0) {
                e(dVar).c(zVarD.Fr());
                fVar = new com.applovin.impl.sdk.ad.f(dVar, this.sdk);
            } else {
                fVar = null;
            }
        }
        if (fVar != null) {
            if (x.Fn()) {
                this.logger.f("AdPreloadManager", "Retrieved ad of zone " + dVar + "...");
            }
        } else if (x.Fn()) {
            this.logger.f("AdPreloadManager", "Unable to retrieve ad of zone " + dVar + "...");
        }
        return fVar;
    }

    void a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.ayV) {
            d(appLovinAdImpl.getAdZone()).c(appLovinAdImpl);
            if (x.Fn()) {
                this.logger.f("AdPreloadManager", "Ad enqueued: " + appLovinAdImpl);
            }
        }
    }

    @Nullable
    public AppLovinAdImpl b(com.applovin.impl.sdk.ad.d dVar) {
        AppLovinAdImpl appLovinAdImplFr;
        synchronized (this.ayV) {
            appLovinAdImplFr = f(dVar).Fr();
        }
        return appLovinAdImplFr;
    }

    public void b(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.ayV) {
            f(appLovinAdImpl.getAdZone()).d(appLovinAdImpl);
        }
    }

    public AppLovinAdBase c(com.applovin.impl.sdk.ad.d dVar) {
        AppLovinAdImpl appLovinAdImplFs;
        synchronized (this.ayV) {
            appLovinAdImplFs = f(dVar).Fs();
        }
        return appLovinAdImplFs;
    }
}
