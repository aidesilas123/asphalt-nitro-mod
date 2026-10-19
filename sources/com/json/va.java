package com.json;

import com.json.environment.thread.IronSourceThreadManager;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener;
import com.json.mediationsdk.sdk.RewardedVideoListener;
import com.json.mediationsdk.sdk.RewardedVideoManualListener;

/* JADX INFO: loaded from: classes2.dex */
public class va extends v1 {
    private static final va b = new va();
    private RewardedVideoListener c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LevelPlayRewardedVideoBaseListener f6695d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LevelPlayRewardedVideoBaseListener f6696e;

    class a implements Runnable {
        final /* synthetic */ AdInfo a;

        a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6696e != null) {
                va.this.f6696e.onAdClosed(va.this.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + va.this.a(this.a));
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                va.this.c.onRewardedVideoAdClosed();
                va.this.g("onRewardedVideoAdClosed()");
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
            if (va.this.f6695d != null) {
                va.this.f6695d.onAdClosed(va.this.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + va.this.a(this.a));
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ AdInfo b;

        d(boolean z, AdInfo adInfo) {
            this.a = z;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            IronLog ironLog;
            String str;
            if (va.this.f6696e != null) {
                if (this.a) {
                    ((LevelPlayRewardedVideoListener) va.this.f6696e).onAdAvailable(va.this.a(this.b));
                    ironLog = IronLog.CALLBACK;
                    str = "onAdAvailable() adInfo = " + va.this.a(this.b);
                } else {
                    ((LevelPlayRewardedVideoListener) va.this.f6696e).onAdUnavailable();
                    ironLog = IronLog.CALLBACK;
                    str = "onAdUnavailable()";
                }
                ironLog.info(str);
            }
        }
    }

    class e implements Runnable {
        final /* synthetic */ boolean a;

        e(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                va.this.c.onRewardedVideoAvailabilityChanged(this.a);
                va.this.g("onRewardedVideoAvailabilityChanged() available=" + this.a);
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ AdInfo b;

        f(boolean z, AdInfo adInfo) {
            this.a = z;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            IronLog ironLog;
            String str;
            if (va.this.f6695d != null) {
                if (this.a) {
                    ((LevelPlayRewardedVideoListener) va.this.f6695d).onAdAvailable(va.this.a(this.b));
                    ironLog = IronLog.CALLBACK;
                    str = "onAdAvailable() adInfo = " + va.this.a(this.b);
                } else {
                    ((LevelPlayRewardedVideoListener) va.this.f6695d).onAdUnavailable();
                    ironLog = IronLog.CALLBACK;
                    str = "onAdUnavailable()";
                }
                ironLog.info(str);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                va.this.c.onRewardedVideoAdStarted();
                va.this.g("onRewardedVideoAdStarted()");
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                va.this.c.onRewardedVideoAdEnded();
                va.this.g("onRewardedVideoAdEnded()");
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ Placement a;
        final /* synthetic */ AdInfo b;

        i(Placement placement, AdInfo adInfo) {
            this.a = placement;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6696e != null) {
                va.this.f6696e.onAdRewarded(this.a, va.this.a(this.b));
                IronLog.CALLBACK.info("onAdRewarded() placement = " + this.a + ", adInfo = " + va.this.a(this.b));
            }
        }
    }

    class j implements Runnable {
        final /* synthetic */ Placement a;

        j(Placement placement) {
            this.a = placement;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                va.this.c.onRewardedVideoAdRewarded(this.a);
                va.this.g("onRewardedVideoAdRewarded(" + this.a + ")");
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
            if (va.this.f6696e != null) {
                ((LevelPlayRewardedVideoManualListener) va.this.f6696e).onAdReady(va.this.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + va.this.a(this.a));
            }
        }
    }

    class l implements Runnable {
        final /* synthetic */ Placement a;
        final /* synthetic */ AdInfo b;

        l(Placement placement, AdInfo adInfo) {
            this.a = placement;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6695d != null) {
                va.this.f6695d.onAdRewarded(this.a, va.this.a(this.b));
                IronLog.CALLBACK.info("onAdRewarded() placement = " + this.a + ", adInfo = " + va.this.a(this.b));
            }
        }
    }

    class m implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        m(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6696e != null) {
                va.this.f6696e.onAdShowFailed(this.a, va.this.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + va.this.a(this.b) + ", error = " + this.a.getErrorMessage());
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
            if (va.this.c != null) {
                va.this.c.onRewardedVideoAdShowFailed(this.a);
                va.this.g("onRewardedVideoAdShowFailed() error=" + this.a.getErrorMessage());
            }
        }
    }

    class o implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        o(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6695d != null) {
                va.this.f6695d.onAdShowFailed(this.a, va.this.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + va.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    class p implements Runnable {
        final /* synthetic */ Placement a;
        final /* synthetic */ AdInfo b;

        p(Placement placement, AdInfo adInfo) {
            this.a = placement;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6696e != null) {
                va.this.f6696e.onAdClicked(this.a, va.this.a(this.b));
                IronLog.CALLBACK.info("onAdClicked() placement = " + this.a + ", adInfo = " + va.this.a(this.b));
            }
        }
    }

    class q implements Runnable {
        final /* synthetic */ Placement a;

        q(Placement placement) {
            this.a = placement;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                va.this.c.onRewardedVideoAdClicked(this.a);
                va.this.g("onRewardedVideoAdClicked(" + this.a + ")");
            }
        }
    }

    class r implements Runnable {
        final /* synthetic */ Placement a;
        final /* synthetic */ AdInfo b;

        r(Placement placement, AdInfo adInfo) {
            this.a = placement;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6695d != null) {
                va.this.f6695d.onAdClicked(this.a, va.this.a(this.b));
                IronLog.CALLBACK.info("onAdClicked() placement = " + this.a + ", adInfo = " + va.this.a(this.b));
            }
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                ((RewardedVideoManualListener) va.this.c).onRewardedVideoAdReady();
                va.this.g("onRewardedVideoAdReady()");
            }
        }
    }

    class t implements Runnable {
        final /* synthetic */ AdInfo a;

        t(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6695d != null) {
                ((LevelPlayRewardedVideoManualListener) va.this.f6695d).onAdReady(va.this.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + va.this.a(this.a));
            }
        }
    }

    class u implements Runnable {
        final /* synthetic */ IronSourceError a;

        u(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6696e != null) {
                ((LevelPlayRewardedVideoManualListener) va.this.f6696e).onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class v implements Runnable {
        final /* synthetic */ IronSourceError a;

        v(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                ((RewardedVideoManualListener) va.this.c).onRewardedVideoAdLoadFailed(this.a);
                va.this.g("onRewardedVideoAdLoadFailed() error=" + this.a.getErrorMessage());
            }
        }
    }

    class w implements Runnable {
        final /* synthetic */ IronSourceError a;

        w(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6695d != null) {
                ((LevelPlayRewardedVideoManualListener) va.this.f6695d).onAdLoadFailed(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class x implements Runnable {
        final /* synthetic */ AdInfo a;

        x(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6696e != null) {
                va.this.f6696e.onAdOpened(va.this.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + va.this.a(this.a));
            }
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.c != null) {
                va.this.c.onRewardedVideoAdOpened();
                va.this.g("onRewardedVideoAdOpened()");
            }
        }
    }

    class z implements Runnable {
        final /* synthetic */ AdInfo a;

        z(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (va.this.f6695d != null) {
                va.this.f6695d.onAdOpened(va.this.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + va.this.a(this.a));
            }
        }
    }

    private va() {
    }

    public static va a() {
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public void a(IronSourceError ironSourceError) {
        if (this.f6696e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new u(ironSourceError));
            return;
        }
        RewardedVideoListener rewardedVideoListener = this.c;
        if (rewardedVideoListener != null && (rewardedVideoListener instanceof RewardedVideoManualListener)) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new v(ironSourceError));
        }
        LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener = this.f6695d;
        if (levelPlayRewardedVideoBaseListener == null || !(levelPlayRewardedVideoBaseListener instanceof LevelPlayRewardedVideoManualListener)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new w(ironSourceError));
    }

    public void a(IronSourceError ironSourceError, AdInfo adInfo) {
        if (this.f6696e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new m(ironSourceError, adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n(ironSourceError));
        }
        if (this.f6695d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new o(ironSourceError, adInfo));
        }
    }

    public void a(Placement placement, AdInfo adInfo) {
        if (this.f6696e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new p(placement, adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new q(placement));
        }
        if (this.f6695d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new r(placement, adInfo));
        }
    }

    public void a(LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener) {
        this.f6695d = levelPlayRewardedVideoBaseListener;
    }

    public void a(RewardedVideoListener rewardedVideoListener) {
        this.c = rewardedVideoListener;
    }

    public void a(boolean z2, AdInfo adInfo) {
        if (this.f6696e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(z2, adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(z2));
        }
        LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener = this.f6695d;
        if (levelPlayRewardedVideoBaseListener == null || !(levelPlayRewardedVideoBaseListener instanceof LevelPlayRewardedVideoListener)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(z2, adInfo));
    }

    public void b() {
        if (this.f6696e == null && this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h());
        }
    }

    public void b(AdInfo adInfo) {
        if (this.f6696e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b());
        }
        if (this.f6695d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(adInfo));
        }
    }

    public void b(Placement placement, AdInfo adInfo) {
        if (this.f6696e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(placement, adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(placement));
        }
        if (this.f6695d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l(placement, adInfo));
        }
    }

    public void b(LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener) {
        this.f6696e = levelPlayRewardedVideoBaseListener;
    }

    public void c() {
        if (this.f6696e == null && this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g());
        }
    }

    public void c(AdInfo adInfo) {
        if (this.f6696e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new x(adInfo));
            return;
        }
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new y());
        }
        if (this.f6695d != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new z(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.f6696e != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(adInfo));
            return;
        }
        RewardedVideoListener rewardedVideoListener = this.c;
        if (rewardedVideoListener != null && (rewardedVideoListener instanceof RewardedVideoManualListener)) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new s());
        }
        LevelPlayRewardedVideoBaseListener levelPlayRewardedVideoBaseListener = this.f6695d;
        if (levelPlayRewardedVideoBaseListener == null || !(levelPlayRewardedVideoBaseListener instanceof LevelPlayRewardedVideoManualListener)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new t(adInfo));
    }
}
