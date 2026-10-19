package com.applovin.impl.sdk.a;

import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.internal.security.CertificateUtil;
import com.iab.omid.library.applovin.adsession.AdEvents;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.ErrorType;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    protected AdSession aIA;
    protected AdEvents aIB;
    protected final AppLovinAdBase aIy;
    protected boolean aIz;
    protected final com.applovin.impl.sdk.x logger;
    protected final com.applovin.impl.sdk.n sdk;
    protected final String tag;

    public b(AppLovinAdBase appLovinAdBase) {
        this.aIy = appLovinAdBase;
        this.sdk = appLovinAdBase.getSdk();
        this.logger = appLovinAdBase.getSdk().BN();
        String str = "AdEventTracker:" + appLovinAdBase.getAdIdNumber();
        if (StringUtils.isValidString(appLovinAdBase.getDspName())) {
            str = str + CertificateUtil.DELIMITER + appLovinAdBase.getDspName();
        }
        this.tag = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void IN() {
        this.aIz = false;
        this.aIA.finish();
        this.aIA = null;
        this.aIB = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void IO() {
        this.aIB.impressionOccurred();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void IP() {
        this.aIB.loaded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view, List list) {
        this.aIA.registerAdView(view);
        this.aIA.removeAllFriendlyObstructions();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar.IQ() != null) {
                try {
                    this.aIA.addFriendlyObstruction(dVar.IQ(), dVar.IR(), dVar.IS());
                } catch (Throwable th) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.c(this.tag, "Failed to add friendly obstruction (" + dVar + ")", th);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str, Runnable runnable) {
        try {
            if (this.aIz) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f(this.tag, "Running operation: " + str);
                }
                runnable.run();
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to run operation: " + str, th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void dk(String str) {
        this.aIA.error(ErrorType.VIDEO, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(WebView webView) {
        AdSessionContext adSessionContextH;
        if (!this.aIy.isOpenMeasurementEnabled()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.g(this.tag, "Skip starting session - Open Measurement disabled");
                return;
            }
            return;
        }
        if (this.aIA != null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.h(this.tag, "Attempting to start session again for ad: " + this.aIy);
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Starting session");
        }
        AdSessionConfiguration adSessionConfigurationII = II();
        if (adSessionConfigurationII == null || (adSessionContextH = h(webView)) == null) {
            return;
        }
        try {
            AdSession adSessionCreateAdSession = AdSession.createAdSession(adSessionConfigurationII, adSessionContextH);
            this.aIA = adSessionCreateAdSession;
            try {
                this.aIB = AdEvents.createAdEvents(adSessionCreateAdSession);
                a(this.aIA);
                this.aIA.start();
                this.aIz = true;
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f(this.tag, "Session started");
                }
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.c(this.tag, "Failed to create ad events", th);
                }
            }
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to create session", th2);
            }
        }
    }

    @Nullable
    protected abstract AdSessionConfiguration II();

    public void IJ() {
        i(null);
    }

    public void IK() {
        b("track loaded", new Runnable() { // from class: com.applovin.impl.sdk.a.j
            @Override // java.lang.Runnable
            public final void run() {
                this.a.IP();
            }
        });
    }

    public void IL() {
        b("track impression event", new Runnable() { // from class: com.applovin.impl.sdk.a.l
            @Override // java.lang.Runnable
            public final void run() {
                this.a.IO();
            }
        });
    }

    public void IM() {
        b("stop session", new Runnable() { // from class: com.applovin.impl.sdk.a.k
            @Override // java.lang.Runnable
            public final void run() {
                this.a.IN();
            }
        });
    }

    public void a(final View view, final List<d> list) {
        b("update main view: " + view, new Runnable() { // from class: com.applovin.impl.sdk.a.n
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(view, list);
            }
        });
    }

    protected void a(AdSession adSession) {
    }

    protected void b(final String str, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.h
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d(str, runnable);
            }
        });
    }

    public void dj(final String str) {
        b("track error", new Runnable() { // from class: com.applovin.impl.sdk.a.m
            @Override // java.lang.Runnable
            public final void run() {
                this.a.dk(str);
            }
        });
    }

    @Nullable
    protected abstract AdSessionContext h(@Nullable WebView webView);

    public void i(@Nullable final WebView webView) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.i
            @Override // java.lang.Runnable
            public final void run() {
                this.a.j(webView);
            }
        });
    }

    public void x(View view) {
        a(view, Collections.emptyList());
    }
}
