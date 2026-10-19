package com.applovin.impl.sdk;

import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class af {

    @Nullable
    private static WebView aFY;
    private static final Object aFZ = new Object();
    private static final AtomicBoolean aGa = new AtomicBoolean();
    private static String ta;

    static {
        if (Fz()) {
            ta = (String) com.applovin.impl.sdk.c.e.b(com.applovin.impl.sdk.c.d.aRP, "", n.getApplicationContext());
            return;
        }
        ta = "";
        com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.aRP, (Object) null, n.getApplicationContext());
        com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.aRQ, (Object) null, n.getApplicationContext());
    }

    public static void A(final n nVar) {
        if (Fz() || aGa.getAndSet(true)) {
            return;
        }
        if (com.applovin.impl.sdk.utils.h.KV()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.o0
                @Override // java.lang.Runnable
                public final void run() {
                    af.C(nVar);
                }
            });
        } else {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.n0
                @Override // java.lang.Runnable
                public final void run() {
                    af.B(nVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B(n nVar) {
        try {
            z(nVar);
            synchronized (aFZ) {
                ta = aFY.getSettings().getUserAgentString();
                com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.aRP, ta, n.getApplicationContext());
                com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.aRQ, Build.VERSION.RELEASE, n.getApplicationContext());
            }
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("WebViewDataCollector", "Failed to collect user agent", th);
            }
            nVar.Cs().d("WebViewDataCollector", "collectUserAgent", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C(n nVar) {
        try {
            synchronized (aFZ) {
                ta = WebSettings.getDefaultUserAgent(n.getApplicationContext());
                com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.aRP, ta, n.getApplicationContext());
                com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.aRQ, Build.VERSION.RELEASE, n.getApplicationContext());
            }
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("WebViewDataCollector", "Failed to collect user agent", th);
            }
            nVar.Cs().d("WebViewDataCollector", "collectUserAgent", th);
        }
    }

    public static String Fy() {
        String str;
        synchronized (aFZ) {
            str = ta;
        }
        return str;
    }

    public static boolean Fz() {
        boolean zEquals;
        synchronized (aFZ) {
            zEquals = Build.VERSION.RELEASE.equals((String) com.applovin.impl.sdk.c.e.b(com.applovin.impl.sdk.c.d.aRQ, "", n.getApplicationContext()));
        }
        return zEquals;
    }

    public static void z(n nVar) {
    }
}
