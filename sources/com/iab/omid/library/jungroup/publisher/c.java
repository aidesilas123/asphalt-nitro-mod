package com.iab.omid.library.jungroup.publisher;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.jungroup.adsession.k;
import com.iab.omid.library.jungroup.adsession.l;
import com.iab.omid.library.jungroup.b.d;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends com.iab.omid.library.jungroup.publisher.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WebView f4967f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Long f4968g = null;
    public final Map<String, k> h;
    public final String i;

    public class a implements Runnable {
        public final WebView a;

        public a(c cVar) {
            this.a = cVar.f4967f;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.a.destroy();
        }
    }

    public c(String str, Map map) {
        this.h = map;
        this.i = str;
    }

    @Override // com.iab.omid.library.jungroup.publisher.a
    public final void a() {
        WebView webView = new WebView(d.b.a);
        this.f4967f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.f4967f);
        WebView webView2 = this.f4967f;
        String str = this.i;
        if (webView2 != null && !TextUtils.isEmpty(str)) {
            webView2.loadUrl("javascript: " + str);
        }
        for (String str2 : this.h.keySet()) {
            String externalForm = this.h.get(str2).b.toExternalForm();
            WebView webView3 = this.f4967f;
            if (externalForm != null && !TextUtils.isEmpty(str2)) {
                String strReplace = "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};this.omidVerificationProperties.injectionId = '%INJECTION_ID%';var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str2);
                if (webView3 != null && !TextUtils.isEmpty(strReplace)) {
                    webView3.loadUrl("javascript: " + strReplace);
                }
            }
        }
        this.f4968g = Long.valueOf(System.nanoTime());
    }

    @Override // com.iab.omid.library.jungroup.publisher.a
    public final void a(l lVar, com.iab.omid.library.jungroup.adsession.d dVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapUnmodifiableMap = Collections.unmodifiableMap(dVar.f4944d);
        for (String str : mapUnmodifiableMap.keySet()) {
            com.iab.omid.library.jungroup.d.b.a(jSONObject, str, (k) mapUnmodifiableMap.get(str));
        }
        a(lVar, dVar, jSONObject);
    }

    @Override // com.iab.omid.library.jungroup.publisher.a
    public final void b() {
        this.a.clear();
        new Handler().postDelayed(new a(this), Math.max(4000 - (this.f4968g == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f4968g.longValue(), TimeUnit.NANOSECONDS)), AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS));
        this.f4967f = null;
    }
}
