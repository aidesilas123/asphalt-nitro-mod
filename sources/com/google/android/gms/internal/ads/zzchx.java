package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzchx extends zzchy {
    public zzchx(zzcgv zzcgvVar, zzayp zzaypVar, boolean z, @Nullable zzefa zzefaVar) {
        super(zzcgvVar, zzaypVar, z, zzefaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzchc, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzN(webView, str, null);
    }
}
