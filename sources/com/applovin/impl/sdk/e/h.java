package com.applovin.impl.sdk.e;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.annotation.Nullable;
import com.applovin.impl.b.a;
import com.applovin.impl.b.i;
import com.applovin.impl.sdk.e.c;
import com.applovin.impl.sdk.e.f;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class h extends f {
    private final com.applovin.impl.b.a vastAd;

    public h(com.applovin.impl.b.a aVar, com.applovin.impl.sdk.n nVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheVastAd", aVar, nVar, appLovinAdLoadListener);
        this.vastAd = aVar;
    }

    private void Ku() {
        if (Kj()) {
            return;
        }
        if (!this.vastAd.Md()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Companion ad caching disabled. Skipping...");
                return;
            }
            return;
        }
        com.applovin.impl.b.d dVarLX = this.vastAd.LX();
        if (dVarLX == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "No companion ad provided. Skipping...");
                return;
            }
            return;
        }
        com.applovin.impl.b.i iVarMo = dVarLX.Mo();
        if (iVarMo == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Failed to retrieve non-video resources from companion ad. Skipping...");
                return;
            }
            return;
        }
        Uri uriMB = iVarMo.MB();
        String string = uriMB != null ? uriMB.toString() : "";
        String strMC = iVarMo.MC();
        if (!URLUtil.isValidUrl(string) && !StringUtils.isValidString(strMC)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.h(this.tag, "Companion ad does not have any resources attached. Skipping...");
                return;
            }
            return;
        }
        if (iVarMo.MA() == i.a.STATIC) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Caching static companion ad at " + string + "...");
            }
            Uri uriB = b(string, Collections.emptyList(), false);
            if (uriB != null) {
                iVarMo.u(uriB);
                this.vastAd.aN(true);
                return;
            } else {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "Failed to cache static companion ad");
                    return;
                }
                return;
            }
        }
        if (iVarMo.MA() != i.a.HTML) {
            if (iVarMo.MA() == i.a.IFRAME && com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Skip caching of iFrame resource...");
                return;
            }
            return;
        }
        if (!StringUtils.isValidString(string)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Caching provided HTML for companion ad. No fetch required. HTML: " + strMC);
            }
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPJ)).booleanValue()) {
                strMC = dv(strMC);
            }
            iVarMo.dR(a(strMC, Collections.emptyList(), this.vastAd));
            this.vastAd.aN(true);
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Begin caching HTML companion ad. Fetching from " + string + "...");
        }
        String strDt = dt(string);
        if (StringUtils.isValidString(strDt)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "HTML fetched. Caching HTML now...");
            }
            iVarMo.dR(a(strDt, Collections.emptyList(), this.vastAd));
            this.vastAd.aN(true);
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i(this.tag, "Unable to load companion ad resources from " + string);
        }
    }

    private void Kv() {
        com.applovin.impl.b.o oVarLV;
        Uri uriFI;
        if (Kj()) {
            return;
        }
        if (!this.vastAd.Me()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Video caching disabled. Skipping...");
                return;
            }
            return;
        }
        if (this.vastAd.LU() == null || (oVarLV = this.vastAd.LV()) == null || (uriFI = oVarLV.FI()) == null) {
            return;
        }
        Uri uriA = a(uriFI.toString(), Collections.emptyList(), false);
        if (uriA != null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Video file successfully cached into: " + uriA);
            }
            oVarLV.j(uriA);
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i(this.tag, "Failed to cache video file: " + oVarLV);
        }
    }

    private void Kw() {
        String strMb;
        if (Kj()) {
            return;
        }
        if (this.vastAd.Mc() != null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Begin caching HTML template. Fetching from " + this.vastAd.Mc() + "...");
            }
            strMb = c(this.vastAd.Mc().toString(), this.vastAd.Gx());
        } else {
            strMb = this.vastAd.Mb();
        }
        if (!StringUtils.isValidString(strMb)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Unable to load HTML template");
                return;
            }
            return;
        }
        String strA = a(strMb, this.vastAd.Gx(), this.aiL);
        if (this.vastAd.shouldInjectOpenMeasurementScriptDuringCaching() && this.vastAd.isOpenMeasurementEnabled()) {
            strA = this.sdk.Cp().dl(strA);
        }
        this.vastAd.dO(strA);
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Finish caching HTML template " + this.vastAd.Mb() + " for ad #" + this.vastAd.getAdIdNumber());
        }
    }

    private void Kx() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching play & pause images...");
        }
        Uri uriC = c(this.aiL.Ht(), "play");
        if (uriC != null) {
            this.aiL.l(uriC);
        }
        Uri uriC2 = c(this.aiL.Hu(), CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        if (uriC2 != null) {
            this.aiL.m(uriC2);
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Ad updated with playImageFilename = " + this.aiL.Ht() + ", pauseImageFilename = " + this.aiL.Hu());
        }
    }

    @Nullable
    private a Kz() {
        if (!this.vastAd.Md()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Companion ad caching disabled. Skipping...");
            }
            return null;
        }
        com.applovin.impl.b.d dVarLX = this.vastAd.LX();
        if (dVarLX == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "No companion ad provided. Skipping...");
            }
            return null;
        }
        final com.applovin.impl.b.i iVarMo = dVarLX.Mo();
        if (iVarMo == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Failed to retrieve non-video resources from companion ad. Skipping...");
            }
            return null;
        }
        Uri uriMB = iVarMo.MB();
        String string = uriMB != null ? uriMB.toString() : "";
        String strMC = iVarMo.MC();
        if (URLUtil.isValidUrl(string) || StringUtils.isValidString(strMC)) {
            if (iVarMo.MA() == i.a.STATIC) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f(this.tag, "Caching static companion ad at " + string + "...");
                }
                return new c(string, this.vastAd, Collections.emptyList(), false, this.aHi, this.sdk, new c.a() { // from class: com.applovin.impl.sdk.e.h.3
                    @Override // com.applovin.impl.sdk.e.c.a
                    public void q(@Nullable Uri uri) {
                        if (uri != null) {
                            iVarMo.u(uri);
                            h.this.vastAd.aN(true);
                            return;
                        }
                        com.applovin.impl.sdk.x xVar = h.this.logger;
                        if (com.applovin.impl.sdk.x.Fn()) {
                            h hVar = h.this;
                            hVar.logger.i(hVar.tag, "Failed to cache static companion ad");
                        }
                    }
                });
            }
            if (iVarMo.MA() == i.a.HTML) {
                if (!StringUtils.isValidString(string)) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.f(this.tag, "Caching provided HTML for companion ad. No fetch required. HTML: " + strMC);
                    }
                    return a(strMC, Collections.emptyList(), new f.a() { // from class: com.applovin.impl.sdk.e.h.5
                        @Override // com.applovin.impl.sdk.e.f.a
                        public void du(String str) {
                            iVarMo.dR(str);
                            h.this.vastAd.aN(true);
                        }
                    });
                }
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f(this.tag, "Begin caching HTML companion ad. Fetching from " + string + "...");
                }
                String strDt = dt(string);
                if (StringUtils.isValidString(strDt)) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.f(this.tag, "HTML fetched. Caching HTML now...");
                    }
                    return a(strDt, Collections.emptyList(), new f.a() { // from class: com.applovin.impl.sdk.e.h.4
                        @Override // com.applovin.impl.sdk.e.f.a
                        public void du(String str) {
                            iVarMo.dR(str);
                            h.this.vastAd.aN(true);
                        }
                    });
                }
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "Unable to load companion ad resources from " + string);
                }
            } else if (iVarMo.MA() == i.a.IFRAME && com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Skip caching of iFrame resource...");
            }
        } else if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.h(this.tag, "Companion ad does not have any resources attached. Skipping...");
        }
        return null;
    }

    private String dv(String str) {
        String strReplace = str;
        for (String str2 : StringUtils.getRegexMatches(StringUtils.match(str, (String) this.sdk.a(com.applovin.impl.sdk.c.b.aPK)), 1)) {
            if (!TextUtils.isEmpty(str2)) {
                if (this.aiL.shouldCancelHtmlCachingIfShown() && this.aiL.hasShown()) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.f(this.tag, "Cancelling HTML JavaScript caching due to ad being shown already");
                    }
                    this.aHi.JS();
                    return str;
                }
                Uri uriB = b(str2, Collections.emptyList(), false);
                if (uriB != null) {
                    strReplace = strReplace.replace(str2, uriB.toString());
                    this.aiL.k(uriB);
                    this.aHi.JT();
                } else {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.i(this.tag, "Failed to cache JavaScript resource: " + str2);
                    }
                    this.aHi.JU();
                }
            }
        }
        return strReplace;
    }

    @Nullable
    protected c KA() {
        final com.applovin.impl.b.o oVarLV;
        Uri uriFI;
        if (!this.vastAd.Me()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Video caching disabled. Skipping...");
            }
            return null;
        }
        if (this.vastAd.LU() == null || (oVarLV = this.vastAd.LV()) == null || (uriFI = oVarLV.FI()) == null) {
            return null;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching video file " + oVarLV + " creative...");
        }
        return a(uriFI.toString(), Collections.emptyList(), false, new c.a() { // from class: com.applovin.impl.sdk.e.h.6
            @Override // com.applovin.impl.sdk.e.c.a
            public void q(@Nullable Uri uri) {
                if (uri != null) {
                    com.applovin.impl.sdk.x xVar = h.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        h hVar = h.this;
                        hVar.logger.f(hVar.tag, "Video file successfully cached into: " + uri);
                    }
                    oVarLV.j(uri);
                    return;
                }
                com.applovin.impl.sdk.x xVar2 = h.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    h hVar2 = h.this;
                    hVar2.logger.i(hVar2.tag, "Failed to cache video file: " + oVarLV);
                }
            }
        });
    }

    @Nullable
    protected b KB() {
        if (!TextUtils.isEmpty(this.vastAd.Mb())) {
            return a(this.vastAd.Mb(), this.vastAd.Gx(), new f.a() { // from class: com.applovin.impl.sdk.e.h.7
                @Override // com.applovin.impl.sdk.e.f.a
                public void du(String str) {
                    if (h.this.vastAd.shouldInjectOpenMeasurementScriptDuringCaching() && h.this.vastAd.isOpenMeasurementEnabled()) {
                        str = h.this.sdk.Cp().dl(str);
                    }
                    h.this.vastAd.dO(str);
                    com.applovin.impl.sdk.x xVar = h.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        h hVar = h.this;
                        hVar.logger.f(hVar.tag, "Finish caching HTML template " + h.this.vastAd.Mb() + " for ad #" + h.this.vastAd.getAdIdNumber());
                    }
                }
            });
        }
        if (!com.applovin.impl.sdk.x.Fn()) {
            return null;
        }
        this.logger.f(this.tag, "Unable to load HTML template");
        return null;
    }

    @Override // com.applovin.impl.sdk.e.f
    void Kn() {
        this.vastAd.getAdEventTracker().IM();
        super.Kn();
    }

    @Override // com.applovin.impl.sdk.e.f
    void Ko() {
        this.vastAd.getAdEventTracker().IK();
        super.Ko();
    }

    protected List<c> Ky() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching play & pause images...");
        }
        ArrayList arrayList = new ArrayList();
        if (this.aiL.Ht() != null) {
            arrayList.add(a(this.aiL.Ht().toString(), new c.a() { // from class: com.applovin.impl.sdk.e.h.1
                @Override // com.applovin.impl.sdk.e.c.a
                public void q(@Nullable Uri uri) {
                    h.this.aiL.l(uri);
                    com.applovin.impl.sdk.x xVar = h.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        h hVar = h.this;
                        hVar.logger.f(hVar.tag, "Ad updated with playImageUri = " + uri);
                    }
                }
            }));
        }
        if (this.aiL.Hu() != null) {
            arrayList.add(a(this.aiL.Hu().toString(), new c.a() { // from class: com.applovin.impl.sdk.e.h.2
                @Override // com.applovin.impl.sdk.e.c.a
                public void q(@Nullable Uri uri) {
                    h.this.aiL.m(uri);
                    com.applovin.impl.sdk.x xVar = h.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        h hVar = h.this;
                        hVar.logger.f(hVar.tag, "Ad updated with pauseImageUri = " + uri);
                    }
                }
            }));
        }
        return arrayList;
    }

    @Override // com.applovin.impl.sdk.e.f, java.lang.Runnable
    public void run() {
        super.run();
        boolean zFF = this.vastAd.FF();
        if (com.applovin.impl.sdk.x.Fn()) {
            com.applovin.impl.sdk.x xVar = this.logger;
            String str = this.tag;
            StringBuilder sb = new StringBuilder();
            sb.append("Begin caching for VAST ");
            sb.append(zFF ? "streaming " : "");
            sb.append("ad #");
            sb.append(this.aiL.getAdIdNumber());
            sb.append("...");
            xVar.f(str, sb.toString());
        }
        if (zFF) {
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLQ)).booleanValue()) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(Kl());
                arrayList.addAll(Ky());
                K(arrayList);
                if (this.vastAd.LR()) {
                    Ko();
                    ArrayList arrayList2 = new ArrayList();
                    a aVarKz = Kz();
                    if (aVarKz != null) {
                        arrayList2.add(aVarKz);
                    }
                    b bVarKB = KB();
                    if (bVarKB != null) {
                        arrayList2.add(bVarKB);
                    }
                    c cVarKA = KA();
                    if (cVarKA != null) {
                        arrayList2.add(cVarKA);
                    }
                    K(arrayList2);
                } else {
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    if (this.vastAd.LQ() == a.b.COMPANION_AD) {
                        a aVarKz2 = Kz();
                        if (aVarKz2 != null) {
                            arrayList3.add(aVarKz2);
                        }
                        b bVarKB2 = KB();
                        if (bVarKB2 != null) {
                            arrayList3.add(bVarKB2);
                        }
                        K(arrayList3);
                        Ko();
                        c cVarKA2 = KA();
                        if (cVarKA2 != null) {
                            arrayList4.add(cVarKA2);
                        }
                        K(arrayList4);
                    } else {
                        c cVarKA3 = KA();
                        if (cVarKA3 != null) {
                            arrayList3.add(cVarKA3);
                        }
                        K(arrayList3);
                        Ko();
                        a aVarKz3 = Kz();
                        if (aVarKz3 != null) {
                            arrayList4.add(aVarKz3);
                        }
                        b bVarKB3 = KB();
                        if (bVarKB3 != null) {
                            arrayList4.add(bVarKB3);
                        }
                        K(arrayList4);
                    }
                }
            } else {
                Km();
                Kx();
                if (this.vastAd.LR()) {
                    Ko();
                }
                a.b bVarLQ = this.vastAd.LQ();
                a.b bVar = a.b.COMPANION_AD;
                if (bVarLQ == bVar) {
                    Ku();
                    Kw();
                } else {
                    Kv();
                }
                if (!this.vastAd.LR()) {
                    Ko();
                }
                if (this.vastAd.LQ() == bVar) {
                    Kv();
                } else {
                    Ku();
                    Kw();
                }
            }
        } else if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLQ)).booleanValue()) {
            ArrayList arrayList5 = new ArrayList();
            arrayList5.addAll(Ky());
            arrayList5.addAll(Kl());
            a aVarKz4 = Kz();
            if (aVarKz4 != null) {
                arrayList5.add(aVarKz4);
            }
            c cVarKA4 = KA();
            if (cVarKA4 != null) {
                arrayList5.add(cVarKA4);
            }
            b bVarKB4 = KB();
            if (bVarKB4 != null) {
                arrayList5.add(bVarKB4);
            }
            K(arrayList5);
            Ko();
        } else {
            Km();
            Kx();
            Ku();
            Kv();
            Kw();
            Ko();
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Finished caching VAST ad #" + this.vastAd.getAdIdNumber());
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.vastAd.getCreatedAtMillis();
        com.applovin.impl.sdk.d.d.a(this.vastAd, this.sdk);
        com.applovin.impl.sdk.d.d.a(jCurrentTimeMillis, this.vastAd, this.sdk);
        b(this.vastAd);
        this.vastAd.FH();
        Ki();
    }
}
