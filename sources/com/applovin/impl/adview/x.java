package com.applovin.impl.adview;

import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.ab;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class x extends ab {
    private WeakReference<a> aip;
    private final com.applovin.impl.sdk.x logger;

    public interface a {
        void a(Uri uri, w wVar);

        void a(w wVar);

        void a(w wVar, @Nullable Bundle bundle);

        void b(Uri uri, w wVar);

        void b(w wVar);

        void c(w wVar);
    }

    public x(com.applovin.impl.sdk.n nVar) {
        this.logger = nVar.BN();
    }

    private void f(WebView webView, String str) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("WebViewButtonClient", "Processing click on ad URL \"" + str + "\"");
        }
        if (str == null || !(webView instanceof w)) {
            return;
        }
        w wVar = (w) webView;
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String host = uri.getHost();
        String path = uri.getPath();
        a aVar = this.aip.get();
        if ("applovin".equalsIgnoreCase(scheme) && "com.applovin.sdk".equalsIgnoreCase(host) && aVar != null) {
            if ("/track_click".equals(path)) {
                aVar.a(wVar);
                return;
            }
            if ("/close_ad".equals(path)) {
                aVar.b(wVar);
                return;
            }
            if ("/skip_ad".equals(path)) {
                aVar.c(wVar);
                return;
            }
            if ("/direct_download".equals(path)) {
                aVar.a(wVar, com.applovin.impl.sdk.utils.s.t(uri));
                return;
            }
            if ("/load_url".equals(path)) {
                aVar.a(uri, wVar);
                return;
            }
            if ("/template_error".equals(path)) {
                aVar.b(uri, wVar);
                return;
            }
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.h("WebViewButtonClient", "Unknown URL: " + str);
            }
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.h("WebViewButtonClient", "Path: " + path);
            }
        }
    }

    public void a(WeakReference<a> weakReference) {
        this.aip = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        f(webView, str);
        return true;
    }
}
