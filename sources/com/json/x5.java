package com.json;

import com.json.environment.thread.IronSourceThreadManager;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.sdk.InterstitialListener;
import com.json.mediationsdk.sdk.LevelPlayInterstitialListener;

/* JADX INFO: loaded from: classes2.dex */
public class x5 extends v1 {
    private static final x5 b = new x5();
    private InterstitialListener c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LevelPlayInterstitialListener f6724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LevelPlayInterstitialListener f6725e;

    class a implements Runnable {
        final /* synthetic */ AdInfo a;

        a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6725e != null) {
                x5.this.f6725e.onAdClosed(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.c != null) {
                x5.this.c.onInterstitialAdClosed();
                x5.this.e("onInterstitialAdClosed()");
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ AdInfo a;

        c(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6724d != null) {
                x5.this.f6724d.onAdClosed(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ AdInfo a;

        d(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6725e != null) {
                x5.this.f6725e.onAdShowSucceeded(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdShowSucceeded() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.c != null) {
                x5.this.c.onInterstitialAdShowSucceeded();
                x5.this.e("onInterstitialAdShowSucceeded()");
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ AdInfo a;

        f(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6724d != null) {
                x5.this.f6724d.onAdShowSucceeded(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdShowSucceeded() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        g(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6725e != null) {
                x5.this.f6725e.onAdShowFailed(this.a, x5.this.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + x5.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    class h implements Runnable {
        final /* synthetic */ IronSourceError a;

        h(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.c != null) {
                x5.this.c.onInterstitialAdShowFailed(this.a);
                x5.this.e("onInterstitialAdShowFailed() error=" + this.a.getErrorMessage());
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        i(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6724d != null) {
                x5.this.f6724d.onAdShowFailed(this.a, x5.this.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + x5.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    class j implements Runnable {
        final /* synthetic */ AdInfo a;

        j(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6725e != null) {
                x5.this.f6725e.onAdClicked(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class k implements Runnable {
        final /* synthetic */ AdInfo a;

        k(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6725e != null) {
                x5.this.f6725e.onAdReady(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.c != null) {
                x5.this.c.onInterstitialAdClicked();
                x5.this.e("onInterstitialAdClicked()");
            }
        }
    }

    class m implements Runnable {
        final /* synthetic */ AdInfo a;

        m(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6724d != null) {
                x5.this.f6724d.onAdClicked(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.c != null) {
                x5.this.c.onInterstitialAdReady();
                x5.this.e("onInterstitialAdReady()");
            }
        }
    }

    class o implements Runnable {
        final /* synthetic */ AdInfo a;

        o(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6724d != null) {
                x5.this.f6724d.onAdReady(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class p implements Runnable {
        final /* synthetic */ IronSourceError a;

        p(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6725e != null) {
                x5.this.f6725e.onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class q implements Runnable {
        final /* synthetic */ IronSourceError a;

        q(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.c != null) {
                x5.this.c.onInterstitialAdLoadFailed(this.a);
                x5.this.e("onInterstitialAdLoadFailed() error=" + this.a.getErrorMessage());
            }
        }
    }

    class r implements Runnable {
        final /* synthetic */ IronSourceError a;

        r(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6724d != null) {
                x5.this.f6724d.onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class s implements Runnable {
        final /* synthetic */ AdInfo a;

        s(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6725e != null) {
                x5.this.f6725e.onAdOpened(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.c != null) {
                x5.this.c.onInterstitialAdOpened();
                x5.this.e("onInterstitialAdOpened()");
            }
        }
    }

    class u implements Runnable {
        final /* synthetic */ AdInfo a;

        u(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x5.this.f6724d != null) {
                x5.this.f6724d.onAdOpened(x5.this.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + x5.this.a(this.a));
            }
        }
    }

    private x5() {
    }

    public static synchronized x5 a() {
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public void a(IronSourceError ironSourceError) {
        if (this.f6725e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new p(ironSourceError));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new q(ironSourceError));
        }
        if (this.f6724d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new r(ironSourceError));
        }
    }

    public void a(IronSourceError ironSourceError, AdInfo adInfo) {
        if (this.f6725e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(ironSourceError, adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(ironSourceError));
        }
        if (this.f6724d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(ironSourceError, adInfo));
        }
    }

    public synchronized void a(InterstitialListener interstitialListener) {
        this.c = interstitialListener;
    }

    public synchronized void a(LevelPlayInterstitialListener levelPlayInterstitialListener) {
        this.f6724d = levelPlayInterstitialListener;
    }

    public synchronized InterstitialListener b() {
        return this.c;
    }

    public void b(AdInfo adInfo) {
        if (this.f6725e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l());
        }
        if (this.f6724d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new m(adInfo));
        }
    }

    public synchronized void b(LevelPlayInterstitialListener levelPlayInterstitialListener) {
        this.f6725e = levelPlayInterstitialListener;
    }

    public void c(AdInfo adInfo) {
        if (this.f6725e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b());
        }
        if (this.f6724d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.f6725e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new s(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new t());
        }
        if (this.f6724d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new u(adInfo));
        }
    }

    public void e(AdInfo adInfo) {
        if (this.f6725e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n());
        }
        if (this.f6724d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new o(adInfo));
        }
    }

    public void f(AdInfo adInfo) {
        if (this.f6725e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e());
        }
        if (this.f6724d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(adInfo));
        }
    }
}
