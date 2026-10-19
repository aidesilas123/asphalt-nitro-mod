package com.iab.omid.library.vungle.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.vungle.adsession.AdSessionContext;
import com.iab.omid.library.vungle.adsession.VerificationScriptResource;
import com.iab.omid.library.vungle.internal.g;
import com.iab.omid.library.vungle.utils.c;
import com.iab.omid.library.vungle.utils.f;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WebView f5073f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f5074g = null;
    private final Map<String, VerificationScriptResource> h;
    private final String i;

    class a extends WebViewClient {
        String a = "OMID NativeBridge WebViewClient";

        a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w(this.a, "WebView renderer gone: " + renderProcessGoneDetail.toString());
            if (b.this.getWebView() != webView) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            Log.w(this.a, "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
            b.this.a((WebView) null);
            webView.destroy();
            return true;
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.vungle.publisher.b$b, reason: collision with other inner class name */
    class RunnableC0327b implements Runnable {
        private final WebView a;

        RunnableC0327b() {
            this.a = b.this.f5073f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.destroy();
        }
    }

    public b(Map<String, VerificationScriptResource> map, String str) {
        this.h = map;
        this.i = str;
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.vungle.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new RunnableC0327b(), Math.max(4000 - (this.f5074g == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f5074g.longValue(), TimeUnit.NANOSECONDS)), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS));
        this.f5073f = null;
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(com.iab.omid.library.vungle.internal.f.b().a());
        this.f5073f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f5073f.getSettings().setAllowContentAccess(false);
        this.f5073f.getSettings().setAllowFileAccess(false);
        this.f5073f.setWebViewClient(new a());
        a(this.f5073f);
        g.a().c(this.f5073f, this.i);
        for (String str : this.h.keySet()) {
            g.a().a(this.f5073f, this.h.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f5074g = Long.valueOf(f.b());
    }
}
