package com.iab.omid.library.kidoznet.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.WebView;
import com.iab.omid.library.kidoznet.adsession.AdSessionContext;
import com.iab.omid.library.kidoznet.adsession.VerificationScriptResource;
import com.iab.omid.library.kidoznet.internal.g;
import com.iab.omid.library.kidoznet.utils.c;
import com.iab.omid.library.kidoznet.utils.f;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WebView f5001f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f5002g = null;
    private final Map<String, VerificationScriptResource> h;
    private final String i;

    class a implements Runnable {
        private final WebView a;

        a() {
            this.a = b.this.f5001f;
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

    @Override // com.iab.omid.library.kidoznet.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.kidoznet.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.kidoznet.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new a(), Math.max(4000 - (this.f5002g == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f5002g.longValue(), TimeUnit.NANOSECONDS)), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS));
        this.f5001f = null;
    }

    @Override // com.iab.omid.library.kidoznet.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(com.iab.omid.library.kidoznet.internal.f.b().a());
        this.f5001f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f5001f.getSettings().setAllowContentAccess(false);
        a(this.f5001f);
        g.a().c(this.f5001f, this.i);
        for (String str : this.h.keySet()) {
            g.a().a(this.f5001f, this.h.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f5002g = Long.valueOf(f.b());
    }
}
