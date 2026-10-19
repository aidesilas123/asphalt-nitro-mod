package com.json;

import com.json.environment.thread.IronSourceThreadManager;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.sdk.BannerListener;
import com.json.mediationsdk.sdk.LevelPlayBannerListener;

/* JADX INFO: loaded from: classes2.dex */
public class f1 extends v1 {
    private static final f1 b = new f1();
    private BannerListener c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LevelPlayBannerListener f6101d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LevelPlayBannerListener f6102e = null;

    class a implements Runnable {
        final /* synthetic */ AdInfo a;

        a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.f6102e != null) {
                f1.this.f6102e.onAdScreenDismissed(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdScreenDismissed() adInfo = " + f1.this.a(this.a));
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.c != null) {
                f1.this.c.onBannerAdScreenDismissed();
                IronLog.CALLBACK.info("onBannerAdScreenDismissed()");
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
            if (f1.this.f6101d != null) {
                f1.this.f6101d.onAdScreenDismissed(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdScreenDismissed() adInfo = " + f1.this.a(this.a));
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
            if (f1.this.f6102e != null) {
                f1.this.f6102e.onAdLeftApplication(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdLeftApplication() adInfo = " + f1.this.a(this.a));
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.c != null) {
                f1.this.c.onBannerAdLeftApplication();
                IronLog.CALLBACK.info("onBannerAdLeftApplication()");
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
            if (f1.this.f6101d != null) {
                f1.this.f6101d.onAdLeftApplication(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdLeftApplication() adInfo = " + f1.this.a(this.a));
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ AdInfo a;

        g(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.f6102e != null) {
                f1.this.f6102e.onAdClicked(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + f1.this.a(this.a));
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.c != null) {
                f1.this.c.onBannerAdClicked();
                IronLog.CALLBACK.info("onBannerAdClicked()");
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ AdInfo a;

        i(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.f6101d != null) {
                f1.this.f6101d.onAdClicked(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + f1.this.a(this.a));
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
            if (f1.this.f6102e != null) {
                f1.this.f6102e.onAdLoaded(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdLoaded() adInfo = " + f1.this.a(this.a));
            }
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.c != null) {
                f1.this.c.onBannerAdLoaded();
                IronLog.CALLBACK.info("onBannerAdLoaded()");
            }
        }
    }

    class l implements Runnable {
        final /* synthetic */ AdInfo a;

        l(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.f6101d != null) {
                f1.this.f6101d.onAdLoaded(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdLoaded() adInfo = " + f1.this.a(this.a));
            }
        }
    }

    class m implements Runnable {
        final /* synthetic */ IronSourceError a;

        m(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.f6102e != null) {
                f1.this.f6102e.onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class n implements Runnable {
        final /* synthetic */ IronSourceError a;

        n(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.c != null) {
                f1.this.c.onBannerAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onBannerAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class o implements Runnable {
        final /* synthetic */ IronSourceError a;

        o(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.f6101d != null) {
                f1.this.f6101d.onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class p implements Runnable {
        final /* synthetic */ AdInfo a;

        p(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.f6102e != null) {
                f1.this.f6102e.onAdScreenPresented(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdScreenPresented() adInfo = " + f1.this.a(this.a));
            }
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.c != null) {
                f1.this.c.onBannerAdScreenPresented();
                IronLog.CALLBACK.info("onBannerAdScreenPresented()");
            }
        }
    }

    class r implements Runnable {
        final /* synthetic */ AdInfo a;

        r(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f1.this.f6101d != null) {
                f1.this.f6101d.onAdScreenPresented(f1.this.a(this.a));
                IronLog.CALLBACK.info("onAdScreenPresented() adInfo = " + f1.this.a(this.a));
            }
        }
    }

    private f1() {
    }

    public static f1 a() {
        return b;
    }

    public void a(AdInfo adInfo, boolean z) {
        if (this.f6102e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(adInfo));
            return;
        }
        if (this.c != null && !z) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k());
        }
        if (this.f6101d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l(adInfo));
        }
    }

    public void a(IronSourceError ironSourceError, boolean z) {
        if (this.f6102e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new m(ironSourceError));
            return;
        }
        if (this.c != null && !z) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n(ironSourceError));
        }
        if (this.f6101d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new o(ironSourceError));
        }
    }

    public void a(BannerListener bannerListener) {
        this.c = bannerListener;
    }

    public void a(LevelPlayBannerListener levelPlayBannerListener) {
        this.f6101d = levelPlayBannerListener;
    }

    public LevelPlayBannerListener b() {
        return this.f6101d;
    }

    public void b(AdInfo adInfo) {
        if (this.f6102e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h());
        }
        if (this.f6101d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(adInfo));
        }
    }

    public void b(LevelPlayBannerListener levelPlayBannerListener) {
        this.f6102e = levelPlayBannerListener;
    }

    public BannerListener c() {
        return this.c;
    }

    public void c(AdInfo adInfo) {
        if (this.f6102e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e());
        }
        if (this.f6101d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.f6102e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b());
        }
        if (this.f6101d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(adInfo));
        }
    }

    public void e(AdInfo adInfo) {
        if (this.f6102e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new p(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new q());
        }
        if (this.f6101d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new r(adInfo));
        }
    }
}
