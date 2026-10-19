package com.fyber.inneractive.sdk.measurement.tracker;

import android.webkit.WebView;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.util.IAlog;
import com.iab.omid.library.fyber.adsession.AdEvents;
import com.iab.omid.library.fyber.adsession.AdSessionConfiguration;
import com.iab.omid.library.fyber.adsession.CreativeType;
import com.iab.omid.library.fyber.adsession.ImpressionType;
import com.iab.omid.library.fyber.adsession.Owner;
import com.iab.omid.library.fyber.adsession.Partner;

/* JADX INFO: loaded from: classes2.dex */
public class a extends c {
    public a(Partner partner, WebView webView, q qVar) {
        super(partner, webView, qVar);
    }

    @Override // com.fyber.inneractive.sdk.measurement.a.InterfaceC0164a
    public void a() {
        AdEvents adEvents;
        if (this.f2058d || this.a == null || (adEvents = this.b) == null) {
            return;
        }
        this.f2058d = true;
        try {
            adEvents.impressionOccurred();
        } catch (Throwable th) {
            a(th);
        }
    }

    @Override // com.fyber.inneractive.sdk.measurement.tracker.c
    public void a(WebView webView) {
        super.a(webView);
        AdEvents adEventsCreateAdEvents = AdEvents.createAdEvents(this.a);
        this.b = adEventsCreateAdEvents;
        adEventsCreateAdEvents.loaded();
    }

    @Override // com.fyber.inneractive.sdk.measurement.a.InterfaceC0164a
    public void b() {
        IAlog.e("%s Unsupported functionality for non video MRAID ads", IAlog.a(this));
    }

    @Override // com.fyber.inneractive.sdk.measurement.tracker.c
    public AdSessionConfiguration c() {
        try {
            return AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.UNSPECIFIED, Owner.NATIVE, Owner.NONE, false);
        } catch (Throwable th) {
            a(th);
            return null;
        }
    }
}
