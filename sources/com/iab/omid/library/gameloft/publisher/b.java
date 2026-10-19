package com.iab.omid.library.gameloft.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.WebView;
import com.iab.omid.library.gameloft.adsession.VerificationScriptResource;
import com.iab.omid.library.gameloft.b.c;
import com.iab.omid.library.gameloft.b.d;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {
    private WebView a;
    private List<VerificationScriptResource> b;
    private final String c;

    public b(List<VerificationScriptResource> list, String str) {
        this.b = list;
        this.c = str;
    }

    @Override // com.iab.omid.library.gameloft.publisher.AdSessionStatePublisher
    public void a() {
        super.a();
        i();
    }

    @Override // com.iab.omid.library.gameloft.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.gameloft.publisher.b.1
            private WebView b;

            {
                this.b = b.this.a;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.b.destroy();
            }
        }, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
        this.a = null;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void i() {
        WebView webView = new WebView(c.a().b());
        this.a = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.a);
        d.a().a(this.a, this.c);
        Iterator<VerificationScriptResource> it = this.b.iterator();
        while (it.hasNext()) {
            d.a().b(this.a, it.next().getResourceUrl().toExternalForm());
        }
    }
}
