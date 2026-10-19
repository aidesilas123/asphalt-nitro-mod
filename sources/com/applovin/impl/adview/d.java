package com.applovin.impl.adview;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.applovin.impl.b.i;
import com.applovin.impl.sdk.ab;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d extends i {

    @Nullable
    private static WebView agI;
    private boolean agJ;
    private boolean agK;
    private final List<String> agL;
    private final Object agM;
    private com.applovin.impl.sdk.d.d agj;
    private com.applovin.impl.sdk.ad.e agq;
    private final com.applovin.impl.sdk.x logger;
    private final com.applovin.impl.sdk.n sdk;

    /* JADX INFO: renamed from: com.applovin.impl.adview.d$1, reason: invalid class name */
    class AnonymousClass1 extends ab {
        AnonymousClass1() {
        }

        @Override // com.applovin.impl.sdk.ab, android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView == d.agI) {
                d.agI.destroy();
                WebView unused = d.agI = null;
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.m0
                    @Override // java.lang.Runnable
                    public final void run() {
                        d.rp();
                    }
                });
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
    }

    public d(e eVar, com.applovin.impl.sdk.n nVar, Context context) {
        super(context);
        this.agL = new ArrayList();
        this.agM = new Object();
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        this.sdk = nVar;
        this.logger = nVar.BN();
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setWebViewClient(eVar != null ? eVar : new ab());
        setWebChromeClient(new c(eVar != null ? eVar.rr() : null, nVar));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
        if (com.applovin.impl.sdk.utils.h.Lc() && ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aQt)).booleanValue()) {
            setWebViewRenderProcessClient(new f(nVar).rt());
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.adview.o0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return d.a(view, motionEvent);
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.applovin.impl.adview.p0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.a.h(view);
            }
        });
    }

    public static void a(final com.applovin.impl.sdk.network.i iVar, final com.applovin.impl.sdk.n nVar, final AppLovinPostbackListener appLovinPostbackListener) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.n0
            @Override // java.lang.Runnable
            public final void run() {
                d.a(iVar, appLovinPostbackListener, nVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.network.i iVar, AppLovinPostbackListener appLovinPostbackListener, com.applovin.impl.sdk.n nVar) {
        String strZL = iVar.zL();
        rn();
        if (agI == null) {
            appLovinPostbackListener.onPostbackFailure(strZL, -1);
            return;
        }
        if (iVar.HR() != null) {
            strZL = StringUtils.appendQueryParameters(strZL, iVar.HR(), ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aOb)).booleanValue());
        }
        String str = "al_firePostback('" + strZL + "');";
        if (com.applovin.impl.sdk.utils.h.KW()) {
            agI.evaluateJavascript(str, null);
        } else {
            agI.loadUrl("javascript:" + str);
        }
        appLovinPostbackListener.onPostbackSuccess(strZL);
    }

    private void a(String str, String str2, String str3, com.applovin.impl.sdk.n nVar, com.applovin.impl.b.a aVar) {
        String strN = n(str3, str);
        if (StringUtils.isValidString(strN)) {
            if (aVar.LM() && aVar.isOpenMeasurementEnabled() && !aVar.shouldInjectOpenMeasurementScriptDuringCaching()) {
                strN = nVar.Cp().dl(strN);
            }
            String str4 = strN;
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AdWebView", "Rendering webview for VAST ad with resourceContents : " + str4);
            }
            loadDataWithBaseURL(str2, str4, "text/html", null, "");
            return;
        }
        String strN2 = n((String) nVar.a(com.applovin.impl.sdk.c.b.aPq), str);
        if (!StringUtils.isValidString(strN2)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AdWebView", "Rendering webview for VAST ad with resourceURL : " + str);
            }
            loadUrl(str);
            return;
        }
        if (aVar.LM() && aVar.isOpenMeasurementEnabled()) {
            strN2 = nVar.Cp().dl(strN2);
        }
        String str5 = strN2;
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AdWebView", "Rendering webview for VAST ad with resourceContents : " + str5);
        }
        loadDataWithBaseURL(str2, str5, "text/html", null, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (view.hasFocus()) {
            return false;
        }
        view.requestFocus();
        return false;
    }

    private void b(com.applovin.impl.sdk.ad.e eVar) {
        Boolean boolSw;
        loadUrl(AndroidWebViewClient.BLANK_PAGE);
        int iHq = this.agq.Hq();
        if (iHq >= 0) {
            setLayerType(iHq, null);
        }
        if (com.applovin.impl.sdk.utils.h.KV()) {
            getSettings().setMediaPlaybackRequiresUserGesture(eVar.Hm());
        }
        if (com.applovin.impl.sdk.utils.h.KW() && eVar.Ho()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        y yVarHp = eVar.Hp();
        if (yVarHp != null) {
            WebSettings settings = getSettings();
            WebSettings.PluginState pluginStateSj = yVarHp.sj();
            if (pluginStateSj != null) {
                settings.setPluginState(pluginStateSj);
            }
            Boolean boolSk = yVarHp.sk();
            if (boolSk != null) {
                settings.setAllowFileAccess(boolSk.booleanValue());
            }
            Boolean boolSl = yVarHp.sl();
            if (boolSl != null) {
                settings.setLoadWithOverviewMode(boolSl.booleanValue());
            }
            Boolean boolSm = yVarHp.sm();
            if (boolSm != null) {
                settings.setUseWideViewPort(boolSm.booleanValue());
            }
            Boolean boolSn = yVarHp.sn();
            if (boolSn != null) {
                settings.setAllowContentAccess(boolSn.booleanValue());
            }
            Boolean boolSo = yVarHp.so();
            if (boolSo != null) {
                settings.setBuiltInZoomControls(boolSo.booleanValue());
            }
            Boolean boolSp = yVarHp.sp();
            if (boolSp != null) {
                settings.setDisplayZoomControls(boolSp.booleanValue());
            }
            Boolean boolSq = yVarHp.sq();
            if (boolSq != null) {
                settings.setSaveFormData(boolSq.booleanValue());
            }
            Boolean boolSr = yVarHp.sr();
            if (boolSr != null) {
                settings.setGeolocationEnabled(boolSr.booleanValue());
            }
            Boolean boolSs = yVarHp.ss();
            if (boolSs != null) {
                settings.setNeedInitialFocus(boolSs.booleanValue());
            }
            Boolean boolSt = yVarHp.st();
            if (boolSt != null) {
                settings.setAllowFileAccessFromFileURLs(boolSt.booleanValue());
            }
            Boolean boolSu = yVarHp.su();
            if (boolSu != null) {
                settings.setAllowUniversalAccessFromFileURLs(boolSu.booleanValue());
            }
            Boolean boolSx = yVarHp.sx();
            if (boolSx != null) {
                settings.setLoadsImagesAutomatically(boolSx.booleanValue());
            }
            Boolean boolSy = yVarHp.sy();
            if (boolSy != null) {
                settings.setBlockNetworkImage(boolSy.booleanValue());
            }
            if (com.applovin.impl.sdk.utils.h.KX()) {
                Integer numSi = yVarHp.si();
                if (numSi != null) {
                    settings.setMixedContentMode(numSi.intValue());
                }
                if (com.applovin.impl.sdk.utils.h.KY()) {
                    Boolean boolSv = yVarHp.sv();
                    if (boolSv != null) {
                        settings.setOffscreenPreRaster(boolSv.booleanValue());
                    }
                    if (!com.applovin.impl.sdk.utils.h.Lf() || (boolSw = yVarHp.sw()) == null) {
                        return;
                    }
                    settings.setAlgorithmicDarkeningAllowed(boolSw.booleanValue());
                }
            }
        }
    }

    private void br(String str) {
        try {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AdWebView", "Forwarding \"" + str + "\" to ad template");
            }
            loadUrl(str);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c("AdWebView", "Unable to forward to template", th);
            }
            this.sdk.Cs().d("AdWebView", str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean h(View view) {
        if (!com.applovin.impl.sdk.x.Fn()) {
            return true;
        }
        this.logger.f("AdWebView", "Received a LongClick event.");
        return true;
    }

    private String n(String str, String str2) {
        if (StringUtils.isValidString(str)) {
            return str.replace("{SOURCE}", str2);
        }
        return null;
    }

    private void rm() {
        synchronized (this.agM) {
            Iterator<String> it = this.agL.iterator();
            while (it.hasNext()) {
                br(it.next());
            }
            this.agL.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void rn() {
        if (agI != null) {
            return;
        }
        WebView webViewB = com.applovin.impl.sdk.utils.u.b(com.applovin.impl.sdk.n.getApplicationContext(), "postbacks");
        agI = webViewB;
        if (webViewB == null) {
            return;
        }
        webViewB.getSettings().setJavaScriptEnabled(true);
        agI.loadData("<html><head>\n<script type=\"text/javascript\">\n    window.al_firePostback = function(postback) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = postback;\n    }, 100);\n};\n</script></head>\n<body></body></html>", "text/html", C.UTF8_NAME);
        agI.setWebViewClient(new AnonymousClass1());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void rp() {
        rn();
    }

    public void a(com.applovin.impl.sdk.ad.e eVar) {
        if (this.agJ) {
            com.applovin.impl.sdk.x.H("AdWebView", "Ad can not be loaded in a destroyed webview");
            return;
        }
        this.agq = eVar;
        try {
            b(eVar);
            if (com.applovin.impl.sdk.utils.u.c(eVar.getSize())) {
                setVisibility(0);
            }
            if (eVar instanceof com.applovin.impl.sdk.ad.a) {
                com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) eVar;
                String strFB = aVar.FB();
                if (!aVar.shouldInjectOpenMeasurementScriptDuringCaching() && aVar.isOpenMeasurementEnabled()) {
                    strFB = this.sdk.Cp().dl(strFB);
                }
                if (com.applovin.impl.sdk.utils.u.al(com.applovin.impl.sdk.n.getApplicationContext())) {
                    strFB = com.applovin.impl.sdk.utils.u.dH(strFB);
                }
                loadDataWithBaseURL(eVar.Hn(), strFB, "text/html", null, "");
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f("AdWebView", "AppLovinAd rendered");
                    return;
                }
                return;
            }
            if (eVar instanceof com.applovin.impl.b.a) {
                com.applovin.impl.b.a aVar2 = (com.applovin.impl.b.a) eVar;
                com.applovin.impl.b.d dVarLX = aVar2.LX();
                if (dVarLX == null) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.f("AdWebView", "No companion ad provided.");
                        return;
                    }
                    return;
                }
                com.applovin.impl.b.i iVarMo = dVarLX.Mo();
                Uri uriMB = iVarMo.MB();
                String string = uriMB != null ? uriMB.toString() : "";
                String strMC = iVarMo.MC();
                String strMb = aVar2.Mb();
                if (!StringUtils.isValidString(string) && !StringUtils.isValidString(strMC)) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.i("AdWebView", "Unable to load companion ad. No resources provided.");
                        return;
                    }
                    return;
                }
                if (iVarMo.MA() == i.a.STATIC) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.f("AdWebView", "Rendering WebView for static VAST ad");
                    }
                    String strN = n((String) this.sdk.a(com.applovin.impl.sdk.c.b.aPp), string);
                    if (aVar2.LM() && aVar2.isOpenMeasurementEnabled() && aVar2.LN()) {
                        strN = this.sdk.Cp().dl(strN);
                    }
                    loadDataWithBaseURL(eVar.Hn(), strN, "text/html", null, "");
                    return;
                }
                if (iVarMo.MA() == i.a.HTML) {
                    if (!StringUtils.isValidString(strMC)) {
                        if (StringUtils.isValidString(string)) {
                            if (com.applovin.impl.sdk.x.Fn()) {
                                this.logger.f("AdWebView", "Preparing to load HTML VAST ad resourceUri");
                            }
                            a(string, eVar.Hn(), strMb, this.sdk, aVar2);
                            return;
                        }
                        return;
                    }
                    String strN2 = n(strMb, strMC);
                    if (StringUtils.isValidString(strN2)) {
                        strMC = strN2;
                    }
                    if (aVar2.LM() && aVar2.isOpenMeasurementEnabled() && !aVar2.shouldInjectOpenMeasurementScriptDuringCaching()) {
                        strMC = this.sdk.Cp().dl(strMC);
                    }
                    String str = strMC;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.f("AdWebView", "Rendering WebView for HTML VAST ad with resourceContents: " + str);
                    }
                    loadDataWithBaseURL(eVar.Hn(), str, "text/html", null, "");
                    return;
                }
                if (iVarMo.MA() != i.a.IFRAME) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.i("AdWebView", "Failed to render VAST companion ad of invalid type");
                        return;
                    }
                    return;
                }
                if (StringUtils.isValidString(string)) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.f("AdWebView", "Preparing to load iFrame VAST ad resourceUri");
                    }
                    a(string, eVar.Hn(), strMb, this.sdk, aVar2);
                    return;
                }
                if (StringUtils.isValidString(strMC)) {
                    String strN3 = n(strMb, strMC);
                    if (StringUtils.isValidString(strN3)) {
                        strMC = strN3;
                    }
                    if (aVar2.LM() && aVar2.isOpenMeasurementEnabled() && !aVar2.shouldInjectOpenMeasurementScriptDuringCaching()) {
                        strMC = this.sdk.Cp().dl(strMC);
                    }
                    String str2 = strMC;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.f("AdWebView", "Rendering WebView for iFrame VAST ad with resourceContents: " + str2);
                    }
                    loadDataWithBaseURL(eVar.Hn(), str2, "text/html", null, "");
                }
            }
        } catch (Throwable th) {
            throw new RuntimeException("Unable to render AppLovin ad (" + (eVar != null ? String.valueOf(eVar.getAdIdNumber()) : "null") + ") - " + th);
        }
    }

    public void bq(String str) {
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQS)).booleanValue()) {
            br(str);
        } else {
            if (this.agK) {
                br(str);
                return;
            }
            synchronized (this.agL) {
                this.agL.add(str);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.agJ = true;
        this.agK = false;
        super.destroy();
    }

    com.applovin.impl.sdk.ad.e getCurrentAd() {
        return this.agq;
    }

    public com.applovin.impl.sdk.d.d getStatsManagerHelper() {
        return this.agj;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void setAdHtmlLoaded(boolean z) {
        this.agK = z;
        if (z && ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQS)).booleanValue()) {
            rm();
        }
    }

    public void setStatsManagerHelper(com.applovin.impl.sdk.d.d dVar) {
        this.agj = dVar;
    }
}
