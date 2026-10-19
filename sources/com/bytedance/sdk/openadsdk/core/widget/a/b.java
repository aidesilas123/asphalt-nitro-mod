package com.bytedance.sdk.openadsdk.core.widget.a;

import android.content.MutableContextWrapper;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.x;
import com.bytedance.sdk.openadsdk.utils.l;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: PreLoadWebView.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements a {
    private static volatile b c;
    x a;
    private SSWebView b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicInteger f1743d = new AtomicInteger(o.d().Z());

    private void a(SSWebView sSWebView) {
        if (sSWebView == null || sSWebView.getWebView() == null) {
            return;
        }
        try {
            c.a(o.a()).a(false).a(sSWebView.getWebView());
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            sSWebView.a(true);
            sSWebView.j();
            sSWebView.setUserAgentString(l.a(sSWebView.getWebView(), BuildConfig.VERSION_CODE));
            if (Build.VERSION.SDK_INT >= 21) {
                sSWebView.setMixedContentMode(0);
            }
            sSWebView.setJavaScriptEnabled(true);
            sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
            sSWebView.setDomStorageEnabled(true);
            sSWebView.setDatabaseEnabled(true);
            sSWebView.setAppCacheEnabled(true);
            sSWebView.setAllowFileAccess(false);
            sSWebView.setSupportZoom(true);
            sSWebView.setBuiltInZoomControls(true);
            sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            sSWebView.setUseWideViewPort(true);
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.e("PreLoadWebView", e2.toString());
        }
    }

    public static b b() {
        if (c == null) {
            synchronized (com.bytedance.sdk.component.adexpress.d.e.class) {
                if (c == null) {
                    c = new b();
                }
            }
        }
        return c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.a.a
    public void a() {
        com.bytedance.sdk.component.adexpress.d.e.a().a(this.b);
        com.bytedance.sdk.component.utils.l.a("PreLoadWebView", "preload finish", Integer.valueOf(this.f1743d.get()));
        this.f1743d.decrementAndGet();
        if (this.f1743d.get() != 0) {
            c();
        }
    }

    public void c() {
        com.bytedance.sdk.component.utils.l.a("PreLoadWebView", "preload start", Integer.valueOf(this.f1743d.get()));
        String strE = com.bytedance.sdk.component.adexpress.a.b.a.e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            SSWebView sSWebView = new SSWebView(new MutableContextWrapper(o.a()));
            this.b = sSWebView;
            if (sSWebView.getWebView() == null) {
                return;
            }
            this.b.setWebViewClient(new WebViewClient() { // from class: com.bytedance.sdk.openadsdk.core.widget.a.b.1
                @Override // android.webkit.WebViewClient
                public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                    return true;
                }
            });
            a(this.b);
            Uri uriBuild = Uri.parse(strE).buildUpon().appendQueryParameter("isPreLoad", "1").build();
            x xVar = new x(o.a());
            this.a = xVar;
            xVar.b(this.b).a(this).a(this.b);
            if (Build.VERSION.SDK_INT >= 17) {
                com.bytedance.sdk.component.adexpress.d.e.a().a(this.b, this.a);
            }
            this.b.a_(uriBuild.toString());
        } catch (Exception unused) {
        }
    }
}
