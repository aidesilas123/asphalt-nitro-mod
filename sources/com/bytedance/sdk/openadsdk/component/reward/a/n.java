package com.bytedance.sdk.openadsdk.component.reward.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.aa;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import org.json.JSONObject;

/* JADX INFO: compiled from: VastEndCardManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class n implements com.bytedance.sdk.openadsdk.i.g {
    private final Activity a;
    private final q b;
    private SSWebView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f1340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.b.g f1342f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1343g;
    private volatile boolean h;
    private final a i;
    private int j;

    public n(a aVar) {
        this.i = aVar;
        this.b = aVar.a;
        this.a = aVar.V;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void a(int i, int i2) {
        if (i == 0 || i2 == 0 || this.f1340d == null) {
            return;
        }
        int iC = ad.c((Context) this.a);
        int iD = ad.d((Context) this.a);
        if (i / i2 <= iC / iD) {
            iC = (int) Math.ceil(r5 * r4);
        } else {
            iD = (int) Math.ceil(r5 / r4);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f1340d.getLayoutParams();
        layoutParams.width = iC;
        layoutParams.height = iD;
        this.f1340d.setLayoutParams(layoutParams);
        this.f1340d.setOnClickListener(this.f1342f);
        this.f1340d.setOnTouchListener(this.f1342f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final String str) {
        if (this.h) {
            return;
        }
        this.h = true;
        final String strK = this.b.au() != null ? this.b.au().k() : "";
        if (i == Integer.MAX_VALUE) {
            com.bytedance.sdk.openadsdk.b.c.b(this.b, strK, "load_vast_endcard_success", (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.b.c.a(new com.bytedance.sdk.component.g.h("load_vast_endcard_fail") { // from class: com.bytedance.sdk.openadsdk.component.reward.a.n.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("reason_code", i);
                        jSONObject.put("error_code", i);
                        String str2 = str;
                        if (str2 != null) {
                            jSONObject.put("url", str2);
                        }
                        com.bytedance.sdk.openadsdk.b.c.b(n.this.b, strK, "load_vast_endcard_fail", jSONObject);
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    private void a(SSWebView sSWebView) {
        sSWebView.setVerticalScrollBarEnabled(false);
        sSWebView.setHorizontalScrollBarEnabled(false);
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        q qVar;
        if (str == null || (qVar = this.b) == null || qVar.au() == null || this.f1342f == null) {
            return false;
        }
        this.b.au().g(str);
        this.f1342f.onClick(this.c);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        a(Integer.MAX_VALUE, (String) null);
    }

    private void e() {
        this.c.c_();
        a(this.c);
        this.c.setDisplayZoomControls(false);
        this.c.setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.n.4
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (i == 100) {
                    n.this.d();
                }
            }
        });
        this.c.setWebViewClient(new SSWebView.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.n.5
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                n.this.d();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (Build.VERSION.SDK_INT < 21 || !webResourceRequest.isForMainFrame()) {
                    return;
                }
                n.this.a(webResourceResponse.getStatusCode(), webResourceRequest.getUrl() != null ? webResourceRequest.getUrl().toString() : null);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (n.this.a(str)) {
                    return true;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        });
    }

    public void a() {
        DeviceUtils.AudioInfoReceiver.a(this);
        this.j = DeviceUtils.f();
        if (this.b.au() != null) {
            this.f1342f = new com.bytedance.sdk.openadsdk.core.b.g("VAST_END_CARD", this.b.au()) { // from class: com.bytedance.sdk.openadsdk.component.reward.a.n.1
                @Override // com.bytedance.sdk.openadsdk.core.b.g
                public void a() {
                }
            };
            com.bytedance.sdk.openadsdk.core.g.c cVarC = this.b.au().c();
            if (cVarC != null) {
                final String strE = cVarC.e();
                if (!TextUtils.isEmpty(strE)) {
                    this.f1341e = true;
                    this.f1340d = (ImageView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.h);
                    a(cVarC.b(), cVarC.c());
                    com.bytedance.sdk.openadsdk.f.d.a(strE).a(cVarC.b()).b(cVarC.c()).d(ad.d(o.a())).c(ad.c(o.a())).a(u.BITMAP).a(new com.bytedance.sdk.openadsdk.f.b(this.b, strE, new com.bytedance.sdk.component.d.o<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.n.2
                        @Override // com.bytedance.sdk.component.d.o
                        public void a(int i, String str, @Nullable Throwable th) {
                            if (n.this.f1340d != null) {
                                n.this.f1340d.setVisibility(8);
                            }
                            n.this.a(-2, strE);
                        }

                        @Override // com.bytedance.sdk.component.d.o
                        public void a(com.bytedance.sdk.component.d.k<Bitmap> kVar) {
                            if (n.this.f1340d == null || kVar == null) {
                                return;
                            }
                            Bitmap bitmapB = kVar.b();
                            if (bitmapB == null) {
                                n.this.a(-1, strE);
                                return;
                            }
                            n.this.f1340d.setImageBitmap(bitmapB);
                            n.this.f1343g = true;
                            n.this.d();
                        }
                    }));
                    return;
                }
                SSWebView sSWebView = (SSWebView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.i);
                this.c = sSWebView;
                if (sSWebView == null) {
                    return;
                }
                e();
                String strD = cVarC.d();
                if (strD != null) {
                    this.f1341e = true;
                    if (strD.startsWith(ProxyConfig.MATCH_HTTP)) {
                        this.c.a_(strD);
                        return;
                    }
                    String strA = com.bytedance.sdk.openadsdk.core.g.e.a(strD);
                    String str = TextUtils.isEmpty(strA) ? strD : strA;
                    this.c.setDefaultTextEncodingName("UTF -8");
                    this.c.a(null, str, "text/html", C.UTF8_NAME, null);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.i.g
    public void a(int i) {
        int i2 = this.j;
        if (i2 == 0 && i > 0) {
            this.b.au().a().i(this.i.G.g());
        } else if (i2 > 0 && i == 0) {
            this.b.au().a().h(this.i.G.g());
        }
        this.j = i;
    }

    public void a(com.bytedance.sdk.openadsdk.core.b.e eVar) {
        com.bytedance.sdk.openadsdk.core.b.g gVar = this.f1342f;
        if (gVar != null) {
            gVar.a(eVar);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public boolean a(l lVar) {
        com.bytedance.sdk.openadsdk.core.g.c cVarC;
        if (!this.f1341e) {
            return false;
        }
        ImageView imageView = this.f1340d;
        if (imageView == null || !this.f1343g) {
            SSWebView sSWebView = this.c;
            if (sSWebView != null) {
                sSWebView.setVisibility(0);
                if (this.c.getWebView() != null) {
                    this.c.getWebView().setOnTouchListener(this.f1342f);
                }
            }
        } else {
            imageView.setVisibility(0);
        }
        q qVar = this.b;
        if (qVar == null || qVar.au() == null || (cVarC = this.b.au().c()) == null) {
            return true;
        }
        cVarC.b(lVar != null ? lVar.g() : -1L);
        return true;
    }

    public void b() {
        DeviceUtils.AudioInfoReceiver.b(this);
        SSWebView sSWebView = this.c;
        if (sSWebView != null) {
            aa.a(sSWebView.getWebView());
        }
    }

    public boolean c() {
        if (!this.f1341e) {
            return false;
        }
        ImageView imageView = this.f1340d;
        if (imageView != null) {
            imageView.performClick();
            return true;
        }
        SSWebView sSWebView = this.c;
        if (sSWebView == null) {
            return false;
        }
        this.f1342f.onClick(sSWebView);
        return true;
    }
}
