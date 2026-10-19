package com.google.android.gms.internal.consent_sdk;

import android.annotation.TargetApi;
import android.os.Build;
import android.webkit.WebView;
import androidx.annotation.GuardedBy;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcu {

    @GuardedBy("WebViewUtil.class")
    private static Boolean zza;

    private zzcu() {
    }

    @TargetApi(19)
    public static void zza(WebView webView, String str) {
        boolean zBooleanValue;
        if (Build.VERSION.SDK_INT >= 19) {
            synchronized (zzcu.class) {
                if (zza == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        zza = Boolean.TRUE;
                    } catch (IllegalStateException unused) {
                        zza = Boolean.FALSE;
                    }
                }
                zBooleanValue = zza.booleanValue();
            }
            if (zBooleanValue) {
                webView.evaluateJavascript(str, null);
                return;
            }
        }
        webView.loadUrl("javascript:".concat(str));
    }
}
