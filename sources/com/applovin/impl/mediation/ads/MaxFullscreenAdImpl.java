package com.applovin.impl.mediation.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.b;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.f;
import com.applovin.impl.sdk.r;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class MaxFullscreenAdImpl extends com.applovin.impl.mediation.ads.a implements b.a, f.a {
    private final Object amY;
    private final a anm;
    private final com.applovin.impl.mediation.b ann;
    private com.applovin.impl.mediation.b.c ano;
    private c anp;
    private final AtomicBoolean anq;
    private final AtomicBoolean anr;
    private boolean ans;
    private boolean ant;
    private WeakReference<Activity> anu;
    private WeakReference<ViewGroup> anv;
    private WeakReference<Lifecycle> anw;
    protected final b listenerWrapper;

    public interface a {
        Activity getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b implements a.InterfaceC0060a, MaxAdListener, MaxAdRevenueListener, MaxRewardedAdListener {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd, boolean z, com.applovin.impl.mediation.b.c cVar, MaxError maxError) {
            MaxFullscreenAdImpl.this.d(maxAd);
            if (!z && cVar.yd() && MaxFullscreenAdImpl.this.sdk.CD().bw(MaxFullscreenAdImpl.this.adUnitId)) {
                AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.ux();
                    }
                });
                return;
            }
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxFullscreenAdImpl.this.adListener, maxAd, maxError, true, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, MaxError maxError) {
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxFullscreenAdImpl.this.adListener, str, maxError, true, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(MaxAd maxAd) {
            MaxFullscreenAdImpl.this.d(maxAd);
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.c(MaxFullscreenAdImpl.this.adListener, maxAd, true, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(MaxAd maxAd) {
            if (MaxFullscreenAdImpl.this.ant) {
                MaxFullscreenAdImpl.this.showAd();
                return;
            }
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxFullscreenAdImpl.this.adListener, maxAd, true, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void ux() {
            MaxFullscreenAdImpl.this.ant = true;
            MaxFullscreenAdImpl.this.loadAd(MaxFullscreenAdImpl.this.anm != null ? MaxFullscreenAdImpl.this.anm.getActivity() : null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(@NonNull MaxAd maxAd) {
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.d(MaxFullscreenAdImpl.this.adListener, maxAd, true, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(@NonNull final MaxAd maxAd, @NonNull final MaxError maxError) {
            final boolean z = MaxFullscreenAdImpl.this.ant;
            MaxFullscreenAdImpl.this.ant = false;
            final com.applovin.impl.mediation.b.c cVar = (com.applovin.impl.mediation.b.c) maxAd;
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(maxAd, z, cVar, maxError);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(@NonNull MaxAd maxAd) {
            MaxFullscreenAdImpl.this.ant = false;
            MaxFullscreenAdImpl.this.sdk.Cb().a((com.applovin.impl.mediation.b.c) maxAd);
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.b(MaxFullscreenAdImpl.this.adListener, maxAd, true, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(@NonNull final MaxAd maxAd) {
            MaxFullscreenAdImpl.this.ant = false;
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.e(maxAd);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(@NonNull final String str, @NonNull final MaxError maxError) {
            MaxFullscreenAdImpl.this.uu();
            MaxFullscreenAdImpl.this.a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(str, maxError);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(@NonNull final MaxAd maxAd) {
            com.applovin.impl.mediation.b.c cVar;
            synchronized (MaxFullscreenAdImpl.this.amY) {
                cVar = MaxFullscreenAdImpl.this.ano;
            }
            MaxFullscreenAdImpl.this.sdk.Cf().cI(MaxFullscreenAdImpl.this.adUnitId);
            MaxFullscreenAdImpl.this.i((com.applovin.impl.mediation.b.c) maxAd);
            if (!MaxFullscreenAdImpl.this.anq.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.a(c.READY, new Runnable() { // from class: com.applovin.impl.mediation.ads.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.f(maxAd);
                    }
                });
                return;
            }
            MaxFullscreenAdImpl.this.extraParameters.remove("expired_ad_ad_unit_id");
            if (MaxFullscreenAdImpl.this.anr.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.showAd();
            }
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdListener.onExpiredAdReloaded(expiredAd=" + cVar + ", newAd=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.expirationListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxFullscreenAdImpl.this.expirationListener, (MaxAd) cVar, maxAd, true, true);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(@NonNull String str) {
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxFullscreenAdImpl.this.requestListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxFullscreenAdImpl.this.requestListener, str, true, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.revenueListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxFullscreenAdImpl.this.revenueListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(@NonNull MaxAd maxAd) {
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxRewardedAdListener.onRewardedVideoCompleted(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.f(MaxFullscreenAdImpl.this.adListener, maxAd, true, true);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(@NonNull MaxAd maxAd) {
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxRewardedAdListener.onRewardedVideoStarted(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.e(MaxFullscreenAdImpl.this.adListener, maxAd, true, true);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward) {
            x xVar = MaxFullscreenAdImpl.this.logger;
            if (x.Fn()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.f(maxFullscreenAdImpl.tag, "MaxRewardedAdListener.onUserRewarded(ad=" + maxAd + ", reward=" + maxReward + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxFullscreenAdImpl.this.adListener, maxAd, maxReward, true, true);
        }
    }

    public enum c {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MaxFullscreenAdImpl(String str, MaxAdFormat maxAdFormat, a aVar, String str2, com.applovin.impl.sdk.n nVar) {
        super(str, maxAdFormat, str2, nVar);
        this.amY = new Object();
        this.ano = null;
        this.anp = c.IDLE;
        this.anq = new AtomicBoolean();
        this.anr = new AtomicBoolean();
        this.anu = new WeakReference<>(null);
        this.anv = new WeakReference<>(null);
        this.anw = new WeakReference<>(null);
        this.anm = aVar;
        this.listenerWrapper = new b();
        this.ann = new com.applovin.impl.mediation.b(nVar);
        nVar.Cv().a(this);
        x.D(str2, "Created new " + str2 + " (" + this + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, d.a aVar) {
        Context contextCF = activity;
        if (activity == null) {
            contextCF = this.sdk.CF() != null ? this.sdk.CF() : com.applovin.impl.sdk.n.getApplicationContext();
        }
        this.sdk.Cy().loadAd(this.adUnitId, null, this.adFormat, aVar, this.localExtraParameters, this.extraParameters, contextCF, this.listenerWrapper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0164 A[Catch: all -> 0x01c5, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000b, B:81:0x0164, B:83:0x016a, B:84:0x0191, B:88:0x01bc, B:85:0x0194, B:87:0x019a, B:9:0x0011, B:12:0x0017, B:14:0x001b, B:15:0x0023, B:17:0x0029, B:18:0x0042, B:23:0x004c, B:25:0x0056, B:28:0x005c, B:30:0x0060, B:31:0x0068, B:34:0x006e, B:36:0x0074, B:37:0x008d, B:42:0x0097, B:44:0x00a1, B:46:0x00a7, B:47:0x00b1, B:50:0x00b7, B:53:0x00bd, B:55:0x00c3, B:56:0x00dd, B:61:0x00e7, B:63:0x00f2, B:65:0x00f8, B:67:0x0105, B:68:0x010e, B:71:0x0113, B:73:0x0119, B:74:0x0133, B:76:0x0137, B:77:0x0140, B:79:0x0146), top: B:96:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0194 A[Catch: all -> 0x01c5, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000b, B:81:0x0164, B:83:0x016a, B:84:0x0191, B:88:0x01bc, B:85:0x0194, B:87:0x019a, B:9:0x0011, B:12:0x0017, B:14:0x001b, B:15:0x0023, B:17:0x0029, B:18:0x0042, B:23:0x004c, B:25:0x0056, B:28:0x005c, B:30:0x0060, B:31:0x0068, B:34:0x006e, B:36:0x0074, B:37:0x008d, B:42:0x0097, B:44:0x00a1, B:46:0x00a7, B:47:0x00b1, B:50:0x00b7, B:53:0x00bd, B:55:0x00c3, B:56:0x00dd, B:61:0x00e7, B:63:0x00f2, B:65:0x00f8, B:67:0x0105, B:68:0x010e, B:71:0x0113, B:73:0x0119, B:74:0x0133, B:76:0x0137, B:77:0x0140, B:79:0x0146), top: B:96:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.c r9, java.lang.Runnable r10) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.a(com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c, java.lang.Runnable):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Activity activity) {
        s(str, str2);
        this.ans = false;
        this.anu = new WeakReference<>(activity);
        this.sdk.Cy().showFullscreenAd(this.ano, activity, this.listenerWrapper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Activity activity, ViewGroup viewGroup, Lifecycle lifecycle) {
        s(str, str2);
        this.ans = true;
        this.anu = new WeakReference<>(activity);
        this.anv = new WeakReference<>(viewGroup);
        this.anw = new WeakReference<>(lifecycle);
        this.sdk.Cy().showFullscreenAd(this.ano, viewGroup, lifecycle, activity, this.listenerWrapper);
    }

    private boolean a(Activity activity, String str) {
        if (activity == null && MaxAdFormat.APP_OPEN != this.adFormat) {
            throw new IllegalArgumentException("Attempting to show ad without a valid activity.");
        }
        if (this.anp == c.DESTROYED) {
            boolean zB = u.b(com.applovin.impl.sdk.n.getApplicationContext(), this.sdk);
            this.sdk.Cs().a(r.a.INTEGRATION_ERROR, "attemptingToShowDestroyedAd", "debug=" + zB);
            if (zB) {
                throw new IllegalStateException("Attempting to show ad that is destroyed for ad unit ID: " + this.adUnitId);
            }
        }
        if (!isReady()) {
            String str2 = "Attempting to show ad before it is ready - please check ad readiness using " + this.tag + "#isReady()";
            x.H(this.tag, str2);
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-24, str2);
            com.applovin.impl.mediation.i iVar = new com.applovin.impl.mediation.i(this.adUnitId, this.adFormat, str);
            if (x.Fn()) {
                this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + iVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) iVar, (MaxError) maxErrorImpl, true, true);
            if (this.ano != null) {
                this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.ano);
            }
            return false;
        }
        Long l = (Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJM);
        Long l2 = (Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJG);
        if (l.longValue() > 0 && (this.ano.getTimeToLiveMillis() < l2.longValue() || this.anq.get())) {
            this.anr.set(true);
            this.sdk.BO().a(new ab(this.sdk, "handleShowOnLoadTimeoutError", new Runnable() { // from class: com.applovin.impl.mediation.ads.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.uv();
                }
            }), q.b.BACKGROUND, l.longValue());
            return false;
        }
        if (u.ai(com.applovin.impl.sdk.n.getApplicationContext()) != 0 && this.sdk.getSettings().shouldFailAdDisplayIfDontKeepActivitiesIsEnabled()) {
            if (u.b(com.applovin.impl.sdk.n.getApplicationContext(), this.sdk)) {
                throw new IllegalStateException("Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
            }
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJX)).booleanValue()) {
                x.H(this.tag, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-5602, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                if (x.Fn()) {
                    this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.ano + ", error=" + maxErrorImpl2 + "), listener=" + this.adListener);
                }
                com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) this.ano, (MaxError) maxErrorImpl2, true, true);
                this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl2, this.ano);
                return false;
            }
        }
        if (this.sdk.Cf().Fb() || this.sdk.Cf().Fc()) {
            x.H(this.tag, "Attempting to show ad when another fullscreen ad is already showing");
            MaxErrorImpl maxErrorImpl3 = new MaxErrorImpl(-23, "Attempting to show ad when another fullscreen ad is already showing");
            if (x.Fn()) {
                this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.ano + ", error=" + maxErrorImpl3 + "), listener=" + this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) this.ano, (MaxError) maxErrorImpl3, true, true);
            this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl3, this.ano);
            return false;
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJE)).booleanValue() && !com.applovin.impl.sdk.utils.i.aa(com.applovin.impl.sdk.n.getApplicationContext())) {
            x.H(this.tag, "Attempting to show ad with no internet connection");
            MaxErrorImpl maxErrorImpl4 = new MaxErrorImpl(-1009);
            if (x.Fn()) {
                this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.ano + ", error=" + maxErrorImpl4 + "), listener=" + this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) this.ano, (MaxError) maxErrorImpl4, true, true);
            this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl4, this.ano);
            return false;
        }
        String str3 = this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.BLOCK_FULLSCREEN_ADS_SHOWING_IF_ACTIVITY_FINISHING);
        if ((!(StringUtils.isValidString(str3) && Boolean.valueOf(str3).booleanValue()) && !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJF)).booleanValue()) || activity == null || !activity.isFinishing()) {
            return true;
        }
        x.H(this.tag, "Attempting to show ad when activity is finishing");
        MaxErrorImpl maxErrorImpl5 = new MaxErrorImpl(-5601, "Attempting to show ad when activity is finishing");
        if (x.Fn()) {
            this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.ano + ", error=" + maxErrorImpl5 + "), listener=" + this.adListener);
        }
        com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) this.ano, (MaxError) maxErrorImpl5, true, true);
        this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl5, this.ano);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void bD(String str) {
        com.applovin.impl.mediation.b.c cVar = this.ano;
        d(cVar);
        MaxErrorImpl maxErrorImpl = new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str);
        if (x.Fn()) {
            this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + cVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
        }
        com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) cVar, (MaxError) maxErrorImpl, true, true);
        this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void bE(String str) {
        com.applovin.impl.mediation.b.c cVar = this.ano;
        d(cVar);
        MaxErrorImpl maxErrorImpl = new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str);
        if (x.Fn()) {
            this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + cVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
        }
        com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) cVar, (MaxError) maxErrorImpl, true, true);
        this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(MaxAd maxAd) {
        this.sdk.Cb().a((com.applovin.impl.mediation.b.c) maxAd);
        this.ann.tS();
        ut();
        this.sdk.CC().m((com.applovin.impl.mediation.b.a) maxAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(com.applovin.impl.mediation.b.c cVar) {
        if (!this.sdk.Cb().a(cVar, this)) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Loaded an expired ad, running expire logic...");
            }
            onAdExpired(cVar);
            return;
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "Handle ad loaded for regular ad: " + cVar);
        }
        this.ano = cVar;
    }

    private void s(String str, String str2) {
        this.ann.b(this.ano);
        this.ano.setPlacement(str);
        this.ano.setCustomData(str2);
        this.sdk.Co().V(this.ano);
        if (x.Fn()) {
            this.logger.f(this.tag, "Showing ad for '" + this.adUnitId + "'; loaded ad: " + this.ano + "...");
        }
        g(this.ano);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAd() {
        Activity activityCF = this.anu.get();
        if (activityCF == null) {
            activityCF = this.sdk.CF();
        }
        Activity activity = activityCF;
        if (this.ans) {
            showAd(this.ano.getPlacement(), this.ano.yG(), this.anv.get(), this.anw.get(), activity);
        } else {
            showAd(this.ano.getPlacement(), this.ano.yG(), activity);
        }
    }

    private void ut() {
        com.applovin.impl.mediation.b.c cVar;
        synchronized (this.amY) {
            cVar = this.ano;
            this.ano = null;
        }
        this.sdk.Cy().destroyAd(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uu() {
        com.applovin.impl.mediation.b.c cVar;
        if (this.anq.compareAndSet(true, false)) {
            synchronized (this.amY) {
                cVar = this.ano;
                this.ano = null;
            }
            this.sdk.Cy().destroyAd(cVar);
            this.extraParameters.remove("expired_ad_ad_unit_id");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void uv() {
        if (this.anr.compareAndSet(true, false)) {
            x.H(this.tag, "Failed to show an ad. Failed to load an ad in time to show.");
            this.sdk.Cf().cG(this.adUnitId);
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-24, "Failed to show an ad. Failed to load an ad in time to show.");
            com.applovin.impl.mediation.i iVar = new com.applovin.impl.mediation.i(this.adUnitId, this.adFormat, this.ano.getPlacement());
            if (x.Fn()) {
                this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + iVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) iVar, (MaxError) maxErrorImpl, true, true);
            if (this.ano != null) {
                this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.ano);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void uw() {
        synchronized (this.amY) {
            if (this.ano != null) {
                if (x.Fn()) {
                    this.logger.f(this.tag, "Destroying ad for '" + this.adUnitId + "'; current ad: " + this.ano + "...");
                }
                this.sdk.Cy().destroyAd(this.ano);
            }
        }
        this.sdk.Cv().b(this);
        this.ann.tS();
        super.destroy();
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        a(c.DESTROYED, new Runnable() { // from class: com.applovin.impl.mediation.ads.q
            @Override // java.lang.Runnable
            public final void run() {
                this.a.uw();
            }
        });
    }

    public boolean isReady() {
        boolean z;
        synchronized (this.amY) {
            com.applovin.impl.mediation.b.c cVar = this.ano;
            z = cVar != null && cVar.isReady() && this.anp == c.READY;
        }
        if (!z) {
            this.sdk.Cf().cG(this.adUnitId);
        }
        return z;
    }

    public void loadAd(Activity activity) {
        loadAd(activity, d.a.PUBLISHER_INITIATED);
    }

    public void loadAd(final Activity activity, final d.a aVar) {
        if (x.Fn()) {
            this.logger.f(this.tag, "Loading ad for '" + this.adUnitId + "'...");
        }
        if (this.anp == c.DESTROYED) {
            boolean zB = u.b(com.applovin.impl.sdk.n.getApplicationContext(), this.sdk);
            this.sdk.Cs().a(r.a.INTEGRATION_ERROR, "attemptingToLoadDestroyedAd", "debug=" + zB);
            if (zB) {
                throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
            }
        }
        if (!isReady()) {
            a(c.LOADING, new Runnable() { // from class: com.applovin.impl.mediation.ads.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(activity, aVar);
                }
            });
            return;
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "An ad is already loaded for '" + this.adUnitId + "'");
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "MaxAdListener.onAdLoaded(ad=" + this.ano + "), listener=" + this.adListener);
        }
        com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) this.ano, true, true);
    }

    @Override // com.applovin.impl.sdk.b.a
    public void onAdExpired(com.applovin.impl.sdk.ad.g gVar) {
        if (x.Fn()) {
            this.logger.f(this.tag, "Ad expired " + getAdUnitId());
        }
        this.anq.set(true);
        a aVar = this.anm;
        Activity activity = aVar != null ? aVar.getActivity() : null;
        if (activity == null && (activity = this.sdk.BM().Az()) == null) {
            uu();
            this.listenerWrapper.onAdLoadFailed(this.adUnitId, MaxAdapterError.MISSING_ACTIVITY);
        } else {
            this.extraParameters.put("expired_ad_ad_unit_id", getAdUnitId());
            this.sdk.Cy().loadAd(this.adUnitId, null, this.adFormat, d.a.EXPIRED, this.localExtraParameters, this.extraParameters, activity, this.listenerWrapper);
        }
    }

    @Override // com.applovin.impl.sdk.f.a
    public void onCreativeIdGenerated(String str, String str2) {
        com.applovin.impl.mediation.b.c cVar = this.ano;
        if (cVar == null || !cVar.xA().equalsIgnoreCase(str)) {
            return;
        }
        this.ano.bV(str2);
        com.applovin.impl.sdk.utils.m.a(this.adReviewListener, str2, this.ano);
    }

    public void showAd(final String str, final String str2, final Activity activity) {
        List<String> listXk = this.sdk.CE().xk();
        if (!this.sdk.CE().xj() || listXk == null || listXk.contains(this.ano.yA())) {
            if (activity == null) {
                activity = this.sdk.CF();
            }
            if (a(activity, str)) {
                a(c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(str, str2, activity);
                    }
                });
                return;
            }
            return;
        }
        final String str3 = "Attempting to show ad from <" + this.ano.yA() + "> which is not in the list of selected ad networks " + listXk;
        x.H(this.tag, str3);
        a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.h
            @Override // java.lang.Runnable
            public final void run() {
                this.a.bE(str3);
            }
        });
    }

    public void showAd(final String str, final String str2, final ViewGroup viewGroup, final Lifecycle lifecycle, Activity activity) {
        if (viewGroup == null || lifecycle == null) {
            x.H(this.tag, "Attempting to show ad with null containerView or lifecycle.");
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, "Attempting to show ad with null containerView or lifecycle.");
            if (x.Fn()) {
                this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.ano + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) this.ano, (MaxError) maxErrorImpl, true, true);
            this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.ano);
            return;
        }
        if (!viewGroup.isShown() && ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJY)).booleanValue()) {
            x.H(this.tag, "Attempting to show ad when containerView and/or its ancestors are not visible");
            MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-1, "Attempting to show ad when containerView and/or its ancestors are not visible");
            com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) this.ano, (MaxError) maxErrorImpl2, true, true);
            this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl2, this.ano);
            return;
        }
        List<String> listXk = this.sdk.CE().xk();
        if (!this.sdk.CE().xj() || listXk == null || listXk.contains(this.ano.yA())) {
            if (activity == null) {
                activity = this.sdk.CF();
            }
            final Activity activity2 = activity;
            if (a(activity2, str)) {
                a(c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(str, str2, activity2, viewGroup, lifecycle);
                    }
                });
                return;
            }
            return;
        }
        final String str3 = "Attempting to show ad from <" + this.ano.yA() + "> which is not in the list of selected ad networks " + listXk;
        x.H(this.tag, str3);
        a(c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.i
            @Override // java.lang.Runnable
            public final void run() {
                this.a.bD(str3);
            }
        });
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.tag);
        sb.append("{adUnitId='");
        sb.append(this.adUnitId);
        sb.append('\'');
        sb.append(", adListener=");
        Object obj = this.adListener;
        if (obj == this.anm) {
            obj = "this";
        }
        sb.append(obj);
        sb.append(", revenueListener=");
        sb.append(this.revenueListener);
        sb.append(", requestListener");
        sb.append(this.requestListener);
        sb.append(", adReviewListener");
        sb.append(this.adReviewListener);
        sb.append(", isReady=");
        sb.append(isReady());
        sb.append('}');
        return sb.toString();
    }
}
