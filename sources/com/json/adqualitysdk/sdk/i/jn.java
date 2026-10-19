package com.json.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class jn implements ji {
    private static Map<WebView, jn> a = new WeakHashMap();
    private String b;
    private jo c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set<ji> f5927e = new HashSet();

    final class a extends WebViewClient {
        private boolean a = false;
        private boolean b = false;
        private String c = null;

        a() {
        }

        private boolean a() {
            jl jlVarM930 = jn.this.c.m930();
            return (jlVarM930.mo721() == null || jlVarM930.mo721().getClass().equals(WebViewClient.class)) ? false : true;
        }

        private boolean b(WebView webView) {
            if (this.a && this.b) {
                return true;
            }
            return (webView.getOriginalUrl() == null || this.c == null || webView.getOriginalUrl().equals(this.c)) ? false : true;
        }

        private boolean c(WebView webView, String str) {
            if (!str.startsWith(jn.this.b)) {
                return false;
            }
            this.c = webView.getOriginalUrl();
            String strSubstring = str.substring(jn.this.b.length());
            jn jnVar = jn.this;
            jnVar.mo247(webView, jnVar.b, strSubstring);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            jn.this.mo245(webView);
            this.a = false;
            this.b = true;
            if (this.c == null) {
                this.c = webView.getOriginalUrl();
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            jn.this.mo245(webView);
            this.a = true;
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(api = 24)
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (c(webView, str)) {
                return true;
            }
            if (this.c == null) {
                this.c = webView.getOriginalUrl();
            }
            jn.this.mo248(webView, str, b(webView));
            this.b = true;
            this.a = false;
            if (a() || !jn.this.f5926d) {
                return false;
            }
            return kb.m1017(webView, str);
        }
    }

    final class b extends WebChromeClient {
        private boolean a = false;

        b() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            jn.this.mo246(webView, str2);
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            if (i != 100 || this.a) {
                return;
            }
            this.a = true;
            jn.this.mo245(webView);
        }
    }

    private jn(WebView webView, String str, boolean z) {
        this.b = str;
        jo joVar = new jo(webView);
        this.c = joVar;
        this.f5926d = z;
        joVar.m931(new a());
        this.c.m929(new b());
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static jn m919(WebView webView, String str, boolean z) {
        jn jnVar = a.get(webView);
        if (jnVar != null) {
            return jnVar;
        }
        jn jnVar2 = new jn(webView, str, z);
        a.put(webView, jnVar2);
        return jnVar2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final WebView m920() {
        return this.c.m928();
    }

    @Override // com.json.adqualitysdk.sdk.i.ji
    /* JADX INFO: renamed from: ﻐ */
    public final void mo245(WebView webView) {
        for (ji jiVar : new HashSet(this.f5927e)) {
            if (jiVar != null) {
                jiVar.mo245(webView);
            }
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.ji
    /* JADX INFO: renamed from: ﻐ */
    public final void mo246(WebView webView, String str) {
        for (ji jiVar : new HashSet(this.f5927e)) {
            if (jiVar != null) {
                jiVar.mo246(webView, str);
            }
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.ji
    /* JADX INFO: renamed from: ﻐ */
    public final void mo247(WebView webView, String str, String str2) {
        for (ji jiVar : new HashSet(this.f5927e)) {
            if (jiVar != null) {
                jiVar.mo247(webView, str, str2);
            }
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m921() {
        this.c.m931(new a());
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m922(ji jiVar) {
        this.f5927e.add(jiVar);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final jl m923() {
        return this.c.m930();
    }

    @Override // com.json.adqualitysdk.sdk.i.ji
    /* JADX INFO: renamed from: ﾇ */
    public final void mo248(WebView webView, String str, boolean z) {
        for (ji jiVar : new HashSet(this.f5927e)) {
            if (jiVar != null) {
                jiVar.mo248(webView, str, z);
            }
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean m924() {
        return this.c.m927();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m925() {
        this.c.m929(new b());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m926(ji jiVar) {
        this.f5927e.remove(jiVar);
    }
}
