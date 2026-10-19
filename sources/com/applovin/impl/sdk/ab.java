package com.applovin.impl.sdk;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.sdk.r;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ab extends WebViewClient {
    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        HashMap map = new HashMap();
        map.put("top_main_method", "onRenderProcessGone");
        if (com.applovin.impl.sdk.utils.h.La()) {
            map.put(ShareConstants.FEED_SOURCE_PARAM, renderProcessGoneDetail.didCrash() ? AppMeasurement.CRASH_ORIGIN : "non_crash");
            map.put("details", "renderer_priority_at_exit=" + renderProcessGoneDetail.rendererPriorityAtExit());
        }
        n.aAC.Cs().a(r.a.WEB_VIEW_ERROR, map, ((Long) n.aAC.a(com.applovin.impl.sdk.c.b.aOj)).longValue());
        x.D("RenderProcessGoneHandlingWebViewClient", "onRenderProcessGone() handled");
        return true;
    }
}
