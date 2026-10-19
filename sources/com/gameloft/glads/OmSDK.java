package com.gameloft.glads;

import android.content.Context;
import android.webkit.WebView;
import com.iab.omid.library.gameloft.Omid;
import com.iab.omid.library.gameloft.adsession.AdEvents;
import com.iab.omid.library.gameloft.adsession.AdSession;
import com.iab.omid.library.gameloft.adsession.AdSessionConfiguration;
import com.iab.omid.library.gameloft.adsession.AdSessionContext;
import com.iab.omid.library.gameloft.adsession.Owner;
import com.iab.omid.library.gameloft.adsession.Partner;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class OmSDK {
    boolean isVideo;
    long parent;
    static AtomicBoolean analyticsStarted = new AtomicBoolean(false);
    static boolean activated = false;
    static Partner partner = null;
    AdSessionContext sessionContext = null;
    AdSessionConfiguration sessionConfig = null;
    AdSession adSession = null;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ Context b;

        a(String str, Context context) {
            this.a = str;
            this.b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean zActivateWithOmidApiVersion = Omid.activateWithOmidApiVersion(this.a, this.b);
                OmSDK.activated = zActivateWithOmidApiVersion;
                if (zActivateWithOmidApiVersion) {
                    OmSDK.partner = Partner.createPartner("Gameloft", OmSDK.NativeGetPartnerVersion());
                }
                OmSDK.NativeOnSDKActivated(OmSDK.activated);
            } catch (Exception | UnsatisfiedLinkError unused) {
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ Object a;

        b(Object obj) {
            this.a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webViewGetWebView = ((AndroidWebView) this.a).GetWebView();
            try {
                OmSDK.this.sessionContext = AdSessionContext.createHtmlAdSessionContext(OmSDK.partner, webViewGetWebView, "");
                OmSDK omSDK = OmSDK.this;
                if (omSDK.isVideo) {
                    Owner owner = Owner.JAVASCRIPT;
                    omSDK.sessionConfig = AdSessionConfiguration.createAdSessionConfiguration(owner, owner, false);
                } else {
                    omSDK.sessionConfig = AdSessionConfiguration.createAdSessionConfiguration(Owner.NATIVE, null, false);
                }
            } catch (Exception unused) {
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ Object a;

        c(Object obj) {
            this.a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            OmSDK.this.HandleStopTracking();
            try {
                WebView webViewGetWebView = ((AndroidWebView) this.a).GetWebView();
                OmSDK omSDK = OmSDK.this;
                omSDK.adSession = AdSession.createAdSession(omSDK.sessionConfig, omSDK.sessionContext);
                OmSDK.this.adSession.registerAdView(webViewGetWebView);
                OmSDK.this.adSession.start();
                OmSDK omSDK2 = OmSDK.this;
                if (omSDK2.isVideo) {
                    return;
                }
                AdEvents.createAdEvents(omSDK2.adSession).impressionOccurred();
            } catch (Exception unused) {
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            OmSDK.this.HandleStopTracking();
        }
    }

    public OmSDK(long j) {
        this.parent = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void HandleStopTracking() {
        AdSession adSession = this.adSession;
        if (adSession != null) {
            adSession.finish();
            this.adSession = null;
        }
    }

    public static native String NativeGetPartnerVersion();

    public static native void NativeOnSDKActivated(boolean z);

    public static void StartAnalytics() {
        if (analyticsStarted.compareAndSet(false, true)) {
            String version = Omid.getVersion();
            Context contextGetContext = Utils.GetContext();
            if (version == null || contextGetContext == null) {
                return;
            }
            Utils.RunOnMainThreadAsync(new a(version, contextGetContext));
        }
    }

    public void Init(boolean z) {
        this.isVideo = z;
    }

    public void OnCreateWebView(Object obj) {
        Utils.RunOnMainThread(new b(obj));
    }

    public void OnStartTracking(Object obj) {
        Utils.RunOnMainThread(new c(obj));
    }

    public void StopTracking() {
        Utils.RunOnMainThread(new d());
    }
}
