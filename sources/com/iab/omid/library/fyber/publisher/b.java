package com.iab.omid.library.fyber.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.WebView;
import com.iab.omid.library.fyber.adsession.AdSessionContext;
import com.iab.omid.library.fyber.adsession.VerificationScriptResource;
import com.iab.omid.library.fyber.internal.g;
import com.iab.omid.library.fyber.utils.c;
import com.iab.omid.library.fyber.utils.f;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WebView f4860f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f4861g = null;
    private final Map<String, VerificationScriptResource> h;
    private final String i;

    class a implements Runnable {
        private final WebView a;

        a() {
            this.a = b.this.f4860f;
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

    @Override // com.iab.omid.library.fyber.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.fyber.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.fyber.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new a(), Math.max(4000 - (this.f4861g == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f4861g.longValue(), TimeUnit.NANOSECONDS)), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS));
        this.f4860f = null;
    }

    @Override // com.iab.omid.library.fyber.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(com.iab.omid.library.fyber.internal.f.b().a());
        this.f4860f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f4860f.getSettings().setAllowContentAccess(false);
        a(this.f4860f);
        g.a().c(this.f4860f, this.i);
        for (String str : this.h.keySet()) {
            g.a().a(this.f4860f, this.h.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f4861g = Long.valueOf(f.b());
    }
}
