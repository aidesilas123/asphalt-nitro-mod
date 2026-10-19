package com.applovin.impl.sdk.e;

import android.net.Uri;
import android.webkit.WebView;
import com.applovin.impl.mediation.h;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class s extends d implements h.a {
    private com.applovin.impl.adview.d aUR;
    private AppLovinAdLoadListener agz;
    private final com.applovin.impl.sdk.ad.a ahO;

    private class a extends com.applovin.impl.adview.e {
        private a(com.applovin.impl.sdk.n nVar) {
            super(null, nVar);
        }

        private boolean b(String str, com.applovin.impl.sdk.c.b<String> bVar) {
            Iterator<String> it = s.this.sdk.b(bVar).iterator();
            while (it.hasNext()) {
                if (it.next().equalsIgnoreCase(str)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.applovin.impl.adview.e
        protected boolean e(WebView webView, String str) {
            com.applovin.impl.sdk.x xVar = s.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                s sVar = s.this;
                sVar.logger.g(sVar.tag, "Processing click on ad URL \"" + str + "\"");
            }
            if (str == null || !(webView instanceof com.applovin.impl.adview.d)) {
                return true;
            }
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if (!b(scheme, com.applovin.impl.sdk.c.b.aMK)) {
                return true;
            }
            if (b(host, com.applovin.impl.sdk.c.b.aML)) {
                com.applovin.impl.sdk.x xVar2 = s.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    s sVar2 = s.this;
                    sVar2.logger.f(sVar2.tag, "Ad load succeeded");
                }
                if (s.this.agz == null) {
                    return true;
                }
                s.this.agz.adReceived(s.this.ahO);
                s.this.agz = null;
                return true;
            }
            if (!b(host, com.applovin.impl.sdk.c.b.aMM)) {
                com.applovin.impl.sdk.x xVar3 = s.this.logger;
                if (!com.applovin.impl.sdk.x.Fn()) {
                    return true;
                }
                s sVar3 = s.this;
                sVar3.logger.i(sVar3.tag, "Unrecognized webview event");
                return true;
            }
            com.applovin.impl.sdk.x xVar4 = s.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                s sVar4 = s.this;
                sVar4.logger.f(sVar4.tag, "Ad load failed");
            }
            if (s.this.agz == null) {
                return true;
            }
            s.this.agz.failedToReceiveAd(204);
            s.this.agz = null;
            return true;
        }
    }

    public s(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskProcessJavaScriptTagAd", nVar);
        this.ahO = new com.applovin.impl.sdk.ad.a(jSONObject, jSONObject2, bVar, nVar);
        this.agz = appLovinAdLoadListener;
        nVar.CA().a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void zJ() {
        try {
            com.applovin.impl.adview.d dVar = new com.applovin.impl.adview.d(new a(this.sdk), this.sdk, rQ());
            this.aUR = dVar;
            dVar.loadDataWithBaseURL(this.ahO.Hn(), this.ahO.FB(), "text/html", null, "");
        } catch (Throwable th) {
            this.sdk.CA().b(this);
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to initialize WebView", th);
            }
            AppLovinAdLoadListener appLovinAdLoadListener = this.agz;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.failedToReceiveAd(-1);
                this.agz = null;
            }
        }
    }

    @Override // com.applovin.impl.mediation.h.a
    public void f(com.applovin.impl.mediation.b.a aVar) {
        if (aVar.xA().equalsIgnoreCase(this.ahO.GB())) {
            this.sdk.CA().b(this);
            AppLovinAdLoadListener appLovinAdLoadListener = this.agz;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.adReceived(this.ahO);
                this.agz = null;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Rendering AppLovin ad #" + this.ahO.getAdIdNumber());
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e.e0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.zJ();
            }
        });
    }
}
