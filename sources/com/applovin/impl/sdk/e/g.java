package com.applovin.impl.sdk.e;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.c;
import com.applovin.impl.sdk.e.f;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class g extends f {
    private final com.applovin.impl.sdk.ad.a aTR;
    private boolean aTS;
    private boolean aTT;

    public g(com.applovin.impl.sdk.ad.a aVar, com.applovin.impl.sdk.n nVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheAppLovinAd", aVar, nVar, appLovinAdLoadListener);
        this.aTR = aVar;
    }

    private void Kq() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching HTML resources...");
        }
        String strA = a(this.aTR.FB(), this.aTR.Gx(), this.aTR);
        if (this.aTR.shouldInjectOpenMeasurementScriptDuringCaching() && this.aTR.isOpenMeasurementEnabled()) {
            strA = this.sdk.Cp().dl(strA);
        }
        this.aTR.cP(strA);
        this.aTR.aN(true);
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Finish caching non-video resources for ad #" + this.aTR.getAdIdNumber());
        }
        this.logger.C(this.tag, "Ad updated with cachedHTML = " + this.aTR.FB());
    }

    private void Kr() {
        Uri uriDr;
        if (Kj() || (uriDr = dr(this.aTR.FJ())) == null) {
            return;
        }
        if (this.aTR.Hz()) {
            this.aTR.cP(this.aTR.FB().replaceFirst(this.aTR.FE(), uriDr.toString()));
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Replaced video URL with cached video URI in HTML for web video ad");
            }
        }
        this.aTR.FH();
        this.aTR.j(uriDr);
    }

    @Nullable
    private c Ks() {
        return b(this.aTR.FJ(), new c.a() { // from class: com.applovin.impl.sdk.e.g.1
            @Override // com.applovin.impl.sdk.e.c.a
            public void q(@Nullable Uri uri) {
                if (uri != null) {
                    if (g.this.aTR.Hz()) {
                        g.this.aTR.cP(g.this.aTR.FB().replaceFirst(g.this.aTR.FE(), uri.toString()));
                        com.applovin.impl.sdk.x xVar = g.this.logger;
                        if (com.applovin.impl.sdk.x.Fn()) {
                            g gVar = g.this;
                            gVar.logger.f(gVar.tag, "Replaced video URL with cached video URI in HTML for web video ad");
                        }
                    }
                    g.this.aTR.FH();
                    g.this.aTR.j(uri);
                }
            }
        });
    }

    @Nullable
    private b Kt() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching HTML resources...");
        }
        return a(this.aTR.FB(), this.aTR.Gx(), new f.a() { // from class: com.applovin.impl.sdk.e.g.2
            @Override // com.applovin.impl.sdk.e.f.a
            public void du(String str) {
                if (g.this.aTR.shouldInjectOpenMeasurementScriptDuringCaching() && g.this.aTR.isOpenMeasurementEnabled()) {
                    str = g.this.sdk.Cp().dl(str);
                }
                g.this.aTR.cP(str);
                g.this.aTR.aN(true);
                com.applovin.impl.sdk.x xVar = g.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    g gVar = g.this;
                    gVar.logger.f(gVar.tag, "Finish caching non-video resources for ad #" + g.this.aTR.getAdIdNumber());
                }
                g gVar2 = g.this;
                gVar2.logger.C(gVar2.tag, "Ad updated with cachedHTML = " + g.this.aTR.FB());
            }
        });
    }

    public void bg(boolean z) {
        this.aTS = z;
    }

    public void bh(boolean z) {
        this.aTT = z;
    }

    @Override // com.applovin.impl.sdk.e.f, java.lang.Runnable
    public void run() {
        super.run();
        boolean zFF = this.aTR.FF();
        boolean z = this.aTT;
        if (zFF || z) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Begin caching for streaming ad #" + this.aTR.getAdIdNumber() + "...");
            }
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLQ)).booleanValue()) {
                K(Kl());
                ArrayList arrayList = new ArrayList();
                if (!zFF) {
                    Ko();
                    b bVarKt = Kt();
                    if (bVarKt != null) {
                        arrayList.add(bVarKt);
                    }
                } else if (this.aTS) {
                    Ko();
                    b bVarKt2 = Kt();
                    if (bVarKt2 != null) {
                        arrayList.add(bVarKt2);
                    }
                    c cVarKs = Ks();
                    if (cVarKs != null) {
                        arrayList.add(cVarKs);
                    }
                } else {
                    b bVarKt3 = Kt();
                    if (bVarKt3 != null) {
                        K(Arrays.asList(bVarKt3));
                    }
                    Ko();
                    c cVarKs2 = Ks();
                    if (cVarKs2 != null) {
                        arrayList.add(cVarKs2);
                    }
                }
                K(arrayList);
                Ko();
            } else {
                Km();
                if (zFF) {
                    if (this.aTS) {
                        Ko();
                    }
                    Kq();
                    if (!this.aTS) {
                        Ko();
                    }
                    Kr();
                } else {
                    Ko();
                    Kq();
                }
            }
        } else {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Begin processing for non-streaming ad #" + this.aTR.getAdIdNumber() + "...");
            }
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLQ)).booleanValue()) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(Kl());
                b bVarKt4 = Kt();
                if (bVarKt4 != null) {
                    arrayList2.add(bVarKt4);
                }
                c cVarKs3 = Ks();
                if (cVarKs3 != null) {
                    arrayList2.add(cVarKs3);
                }
                K(arrayList2);
                Ko();
            } else {
                Km();
                Kq();
                Kr();
                Ko();
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.aTR.getCreatedAtMillis();
        com.applovin.impl.sdk.d.d.a(this.aTR, this.sdk);
        com.applovin.impl.sdk.d.d.a(jCurrentTimeMillis, this.aTR, this.sdk);
        b(this.aTR);
        Ki();
    }
}
