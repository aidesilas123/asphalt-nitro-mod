package com.json;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.model.InterstitialPlacement;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.sdk.InterstitialListener;
import com.json.mediationsdk.sdk.OfferwallListener;
import com.json.mediationsdk.sdk.RewardedVideoListener;
import com.json.mediationsdk.sdk.SegmentListener;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import java.util.Date;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class y8 implements RewardedVideoListener, InterstitialListener, k7, SegmentListener {
    private RewardedVideoListener a;
    private InterstitialListener b;
    private OfferwallListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SegmentListener f6742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v f6743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private InterstitialPlacement f6744f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6745g = null;
    protected long h;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.b.onInterstitialAdReady();
        }
    }

    class b implements Runnable {
        final /* synthetic */ IronSourceError a;

        b(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.b.onInterstitialAdLoadFailed(this.a);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.b.onInterstitialAdOpened();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.b.onInterstitialAdShowSucceeded();
        }
    }

    class e implements Runnable {
        final /* synthetic */ IronSourceError a;

        e(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.b.onInterstitialAdShowFailed(this.a);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.b.onInterstitialAdClicked();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.b.onInterstitialAdClosed();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.c.onOfferwallOpened();
        }
    }

    class i implements Runnable {
        final /* synthetic */ IronSourceError a;

        i(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.c.onOfferwallShowFailed(this.a);
        }
    }

    class j implements Runnable {
        final /* synthetic */ IronSourceError a;

        j(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.c.onGetOfferwallCreditsFailed(this.a);
        }
    }

    class k implements Runnable {
        final /* synthetic */ String a;

        k(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextUtils.isEmpty(this.a)) {
                return;
            }
            y8.this.f6742d.onSegmentReceived(this.a);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.c.onOfferwallClosed();
        }
    }

    class m implements Runnable {
        final /* synthetic */ boolean a;

        m(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.c.onOfferwallAvailable(this.a);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.a.onRewardedVideoAdOpened();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.a.onRewardedVideoAdClosed();
        }
    }

    class p implements Runnable {
        final /* synthetic */ boolean a;

        p(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.a.onRewardedVideoAvailabilityChanged(this.a);
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.a.onRewardedVideoAdStarted();
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.a.onRewardedVideoAdEnded();
        }
    }

    class s implements Runnable {
        final /* synthetic */ Placement a;

        s(Placement placement) {
            this.a = placement;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.a.onRewardedVideoAdRewarded(this.a);
        }
    }

    class t implements Runnable {
        final /* synthetic */ Placement a;

        t(Placement placement) {
            this.a = placement;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.a.onRewardedVideoAdClicked(this.a);
        }
    }

    class u implements Runnable {
        final /* synthetic */ IronSourceError a;

        u(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            y8.this.a.onRewardedVideoAdShowFailed(this.a);
        }
    }

    private class v extends Thread {
        private Handler a;

        private v() {
        }

        /* synthetic */ v(y8 y8Var, k kVar) {
            this();
        }

        public Handler a() {
            return this.a;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            this.a = new Handler();
            Looper.loop();
        }
    }

    public y8() {
        v vVar = new v(this, null);
        this.f6743e = vVar;
        vVar.start();
        this.h = new Date().getTime();
    }

    public void a(IronSourceError ironSourceError, Map<String, Object> map) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoAdShowFailed(" + ironSourceError.toString() + ")", 1);
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, ironSourceError.getErrorCode());
            mediationAdditionalData.put("reason", ironSourceError.getErrorMessage());
            if (!TextUtils.isEmpty(this.f6745g)) {
                mediationAdditionalData.put("placement", this.f6745g);
            }
            if (map != null) {
                for (String str : map.keySet()) {
                    mediationAdditionalData.put(str, map.get(str));
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        cb.i().a(new a4(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, mediationAdditionalData));
        if (c(this.a)) {
            b(new u(ironSourceError));
        }
    }

    public void a(InterstitialPlacement interstitialPlacement) {
        this.f6744f = interstitialPlacement;
    }

    public void a(InterstitialListener interstitialListener) {
        this.b = interstitialListener;
    }

    public void a(OfferwallListener offerwallListener) {
        this.c = offerwallListener;
    }

    public void a(RewardedVideoListener rewardedVideoListener) {
        this.a = rewardedVideoListener;
    }

    public void a(SegmentListener segmentListener) {
        this.f6742d = segmentListener;
    }

    public void a(String str) {
        this.f6745g = str;
    }

    @Override // com.json.k7
    public void a(boolean z, IronSourceError ironSourceError) {
        String str = "onOfferwallAvailable(isAvailable: " + z + ")";
        if (ironSourceError != null) {
            str = str + ", error: " + ironSourceError.getErrorMessage();
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put("status", String.valueOf(z));
            if (ironSourceError != null) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, ironSourceError.getErrorCode());
                mediationAdditionalData.put("reason", ironSourceError.getErrorMessage());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        cb.i().a(new a4(302, mediationAdditionalData));
        if (c(this.c)) {
            b(new m(z));
        }
    }

    public void a(boolean z, Map<String, Object> map) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAvailabilityChanged(available:" + z + ")", 1);
        long time = new Date().getTime() - this.h;
        this.h = new Date().getTime();
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put("duration", time);
            if (map != null) {
                for (String str : map.keySet()) {
                    mediationAdditionalData.put(str, map.get(str));
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        cb.i().a(new a4(z ? IronSourceConstants.RV_CALLBACK_AVAILABILITY_TRUE : IronSourceConstants.RV_CALLBACK_AVAILABILITY_FALSE, mediationAdditionalData));
        if (c(this.a)) {
            b(new p(z));
        }
    }

    protected void b(Runnable runnable) {
        Handler handlerA;
        v vVar = this.f6743e;
        if (vVar == null || (handlerA = vVar.a()) == null) {
            return;
        }
        handlerA.post(runnable);
    }

    protected boolean c(Object obj) {
        return (obj == null || this.f6743e == null) ? false : true;
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onGetOfferwallCreditsFailed(IronSourceError ironSourceError) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onGetOfferwallCreditsFailed(" + ironSourceError + ")", 1);
        if (c(this.c)) {
            b(new j(ironSourceError));
        }
    }

    @Override // com.json.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdClicked() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdClicked()", 1);
        if (c(this.b)) {
            b(new f());
        }
    }

    @Override // com.json.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdClosed()", 1);
        if (c(this.b)) {
            b(new g());
        }
    }

    @Override // com.json.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdLoadFailed(" + ironSourceError + ")", 1);
        if (c(this.b)) {
            b(new b(ironSourceError));
        }
    }

    @Override // com.json.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdOpened()", 1);
        if (c(this.b)) {
            b(new c());
        }
    }

    @Override // com.json.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdReady() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdReady()", 1);
        if (c(this.b)) {
            b(new a());
        }
    }

    @Override // com.json.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdShowFailed(" + ironSourceError + ")", 1);
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, ironSourceError.getErrorCode());
            InterstitialPlacement interstitialPlacement = this.f6744f;
            if (interstitialPlacement != null && !TextUtils.isEmpty(interstitialPlacement.getPlacementName())) {
                mediationAdditionalData.put("placement", this.f6744f.getPlacementName());
            }
            if (ironSourceError.getErrorMessage() != null) {
                mediationAdditionalData.put("reason", ironSourceError.getErrorMessage());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        q7.i().a(new a4(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, mediationAdditionalData));
        if (c(this.b)) {
            b(new e(ironSourceError));
        }
    }

    @Override // com.json.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdShowSucceeded() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdShowSucceeded()", 1);
        if (c(this.b)) {
            b(new d());
        }
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public boolean onOfferwallAdCredited(int i2, int i3, boolean z) {
        OfferwallListener offerwallListener = this.c;
        boolean zOnOfferwallAdCredited = offerwallListener != null ? offerwallListener.onOfferwallAdCredited(i2, i3, z) : false;
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallAdCredited(credits:" + i2 + ", totalCredits:" + i3 + ", totalCreditsFlag:" + z + "):" + zOnOfferwallAdCredited, 1);
        return zOnOfferwallAdCredited;
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onOfferwallAvailable(boolean z) {
        a(z, (IronSourceError) null);
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onOfferwallClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallClosed()", 1);
        if (c(this.c)) {
            b(new l());
        }
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onOfferwallOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallOpened()", 1);
        if (c(this.c)) {
            b(new h());
        }
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onOfferwallShowFailed(IronSourceError ironSourceError) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallShowFailed(" + ironSourceError + ")", 1);
        if (c(this.c)) {
            b(new i(ironSourceError));
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdClicked(Placement placement) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdClicked(" + placement.getPlacementName() + ")", 1);
        if (c(this.a)) {
            b(new t(placement));
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdClosed()", 1);
        if (c(this.a)) {
            b(new o());
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdEnded() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdEnded()", 1);
        if (c(this.a)) {
            b(new r());
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdOpened()", 1);
        if (c(this.a)) {
            b(new n());
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdRewarded(Placement placement) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdRewarded(" + placement.toString() + ")", 1);
        if (c(this.a)) {
            b(new s(placement));
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        a(ironSourceError, (Map<String, Object>) null);
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdStarted() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdStarted()", 1);
        if (c(this.a)) {
            b(new q());
        }
    }

    @Override // com.json.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAvailabilityChanged(boolean z) {
        a(z, (Map<String, Object>) null);
    }

    @Override // com.json.mediationsdk.sdk.SegmentListener
    public void onSegmentReceived(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onSegmentReceived(" + str + ")", 1);
        if (c(this.f6742d)) {
            b(new k(str));
        }
    }
}
