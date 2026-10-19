package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.b;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DspHtmlWebView extends SSWebView implements b.c {
    protected boolean a;
    protected boolean b;
    AtomicBoolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    AtomicBoolean f1618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o f1619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f1620f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q f1621g;
    private String h;
    private int i;
    private List<String> j;
    private b k;
    private int l;
    private long m;

    static class a extends SSWebView.a {
        public static final Set<String> a = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.a.1
            {
                add(".jpeg");
                add(".png");
                add(".bmp");
                add(".gif");
                add(".jpg");
                add(".webp");
            }
        };
        b.c b;

        public a(b.c cVar) {
            this.b = cVar;
        }

        private void a(String str) {
            int iLastIndexOf;
            b.c cVar;
            if (!TextUtils.isEmpty(str) && (iLastIndexOf = str.lastIndexOf(".")) > 0) {
                if (!a.contains(str.substring(iLastIndexOf).toLowerCase()) || (cVar = this.b) == null) {
                    return;
                }
                cVar.b(str);
            }
        }

        private void a(String str, int i, String str2) {
            b.c cVar = this.b;
            if (cVar != null) {
                cVar.a(106, i);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            b.c cVar = this.b;
            if (cVar != null) {
                cVar.a();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            if (Build.VERSION.SDK_INT < 21) {
                a(str2, i, str);
                a(str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (Build.VERSION.SDK_INT < 21 || webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return;
            }
            a(webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (webResourceRequest == null || webResourceResponse == null || Build.VERSION.SDK_INT < 21 || webResourceRequest.getUrl() == null) {
                return;
            }
            if (webResourceRequest.isForMainFrame()) {
                a(webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode(), "");
            }
            a(webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.b.a(str);
            return true;
        }
    }

    public interface b {
        View a();

        void a(int i, int i2);

        void a(View view, int i);

        View b();

        void b_();
    }

    public static class c {
        protected int a = 0;
        private com.bytedance.sdk.openadsdk.core.g.f b = com.bytedance.sdk.openadsdk.core.g.f.a();

        c() {
        }

        public void a() {
            com.bytedance.sdk.openadsdk.core.g.f fVar;
            int i = this.a;
            if (i != 0 && i != 4 && (fVar = this.b) != null) {
                fVar.d();
            }
            this.a = 4;
            this.b = null;
        }

        public void a(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
            com.bytedance.sdk.openadsdk.core.g.f fVar = this.b;
            if (fVar != null) {
                fVar.a(view, friendlyObstructionPurpose);
            }
        }

        public void a(WebView webView) {
            if (webView != null && this.a == 0) {
                if (this.b == null) {
                    this.b = com.bytedance.sdk.openadsdk.core.g.f.a();
                }
                this.b.a(webView);
                this.b.b();
                this.a = 1;
            }
        }

        public void a(boolean z) {
            com.bytedance.sdk.openadsdk.core.g.f fVar;
            if (this.a == 1 && z && (fVar = this.b) != null) {
                fVar.c();
                this.a = 3;
            }
        }

        public void b() {
            a();
        }
    }

    public DspHtmlWebView(Context context) {
        super(context);
        this.a = false;
        this.b = false;
        this.c = new AtomicBoolean(false);
        this.f1618d = new AtomicBoolean(false);
        this.i = 0;
    }

    private void q() {
        if (this.j == null) {
            com.bytedance.sdk.openadsdk.b.c.b(this.f1621g, this.h, "dsp_html_success_url", (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.b.c.a(new com.bytedance.sdk.component.g.h("dsp_html_error_url") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DspHtmlWebView.this.j != null && DspHtmlWebView.this.f1618d.compareAndSet(false, true)) {
                            JSONObject jSONObject = new JSONObject();
                            JSONArray jSONArray = new JSONArray();
                            Iterator it = DspHtmlWebView.this.j.iterator();
                            while (it.hasNext()) {
                                jSONArray.put((String) it.next());
                            }
                            jSONObject.put("url", jSONArray);
                            com.bytedance.sdk.openadsdk.b.c.b(DspHtmlWebView.this.f1621g, DspHtmlWebView.this.h, "dsp_html_error_url", jSONObject);
                            DspHtmlWebView.this.j = null;
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.b.c
    public void a() {
        if (this.c.compareAndSet(false, true)) {
            this.a = true;
            this.f1620f.a(getWebView());
            this.f1620f.a(this.b);
            o();
            q();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.b.c
    public void a(int i, int i2) {
        b bVar = this.k;
        if (bVar != null) {
            bVar.a(i, i2);
        }
        this.i = i2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error_code", i2);
            jSONObject.put("render_duration", SystemClock.elapsedRealtime() - this.m);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.b.c.b(this.f1621g, this.h, "render_html_fail", jSONObject);
    }

    public void a(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
        this.f1620f.a(view, friendlyObstructionPurpose);
    }

    public void a(q qVar, b bVar, String str) {
        this.k = bVar;
        this.f1621g = qVar;
        this.h = str;
        this.f1620f = new c();
        this.f1619e = new o(getContext());
        setWebViewClient(new a(this));
        setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                DspHtmlWebView.this.l = i;
                super.onProgressChanged(webView, i);
                if (i >= 100) {
                    DspHtmlWebView.this.a();
                }
            }
        });
        com.bytedance.sdk.component.utils.h.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.2
            @Override // java.lang.Runnable
            @SuppressLint({"ClickableViewAccessibility"})
            public void run() {
                WebView webView = DspHtmlWebView.this.getWebView();
                if (webView != null) {
                    webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.2.1
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            DspHtmlWebView.this.f1619e.onTouchEvent(motionEvent);
                            return false;
                        }
                    });
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.b.c
    public void a(String str) {
        String str2;
        String str3;
        View view;
        if (TextUtils.isEmpty(str) || this.f1621g == null || !this.f1619e.b()) {
            return;
        }
        int iA = ac.a(this.h);
        View view2 = null;
        if (com.bytedance.sdk.component.utils.o.a(str) || !(this.f1621g.ab() == null || TextUtils.isEmpty(this.f1621g.ab().a()))) {
            str2 = str;
        } else {
            com.bytedance.sdk.openadsdk.core.model.j jVar = new com.bytedance.sdk.openadsdk.core.model.j();
            jVar.a(str);
            this.f1621g.a(jVar);
            str2 = null;
        }
        this.f1621g.a(true);
        boolean zA = false;
        q qVar = this.f1621g;
        if (qVar == null || qVar.ab() == null || TextUtils.isEmpty(this.f1621g.ab().a()) || (zA = z.a(getContext(), this.f1621g, iA, this.h, true, (Map<String, Object>) null)) || TextUtils.isEmpty(this.f1621g.ab().b())) {
            str3 = str2;
        } else {
            String strB = this.f1621g.ab().b();
            com.bytedance.sdk.openadsdk.b.c.a(this.f1621g, this.h, "open_fallback_url", (Map<String, Object>) null);
            str3 = strB;
        }
        if (!zA) {
            if (TextUtils.isEmpty(str3)) {
                return;
            } else {
                z.a(getContext(), this.f1621g, iA, (PAGNativeAd) null, (PangleAd) null, this.h, true, str3);
            }
        }
        if (this.f1619e != null) {
            b bVar = this.k;
            if (bVar != null) {
                View viewA = bVar.a();
                View viewB = this.k.b();
                this.k.a(this, 2);
                view2 = viewB;
                view = viewA;
            } else {
                view = null;
            }
            com.bytedance.sdk.openadsdk.core.model.i iVarA = this.f1619e.a(getContext(), view2, view);
            HashMap map = new HashMap();
            map.put("click_scence", 1);
            com.bytedance.sdk.openadsdk.b.c.a(CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.f1621g, iVarA, this.h, true, (Map<String, Object>) map, this.f1619e.b() ? 1 : 2);
        }
        o oVar = this.f1619e;
        if (oVar != null) {
            oVar.a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.b.c
    public void b(String str) {
        if (this.j == null) {
            this.j = new ArrayList();
        }
        this.j.add(str);
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView
    public void l() {
        super.l();
        this.f1620f.b();
    }

    public void o() {
        b bVar = this.k;
        if (bVar != null) {
            bVar.b_();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_duration", SystemClock.elapsedRealtime() - this.m);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.b.c.b(this.f1621g, this.h, "render_html_success", jSONObject);
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.a) {
            this.f1620f.a(getWebView());
        }
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rate", this.l / 100.0f);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.b.c.b(this.f1621g, this.h, "load_rate", jSONObject);
        this.f1620f.a();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        boolean z = i == 0;
        this.b = z;
        this.f1620f.a(z);
    }

    public void p() {
        this.c.set(false);
        String strAw = this.f1621g.aw();
        if (TextUtils.isEmpty(strAw)) {
            return;
        }
        String strA = com.bytedance.sdk.openadsdk.core.g.e.a(strAw);
        String str = TextUtils.isEmpty(strA) ? strAw : strA;
        this.i = 0;
        a(null, str, "text/html", C.UTF8_NAME, null);
        this.m = SystemClock.elapsedRealtime();
    }
}
