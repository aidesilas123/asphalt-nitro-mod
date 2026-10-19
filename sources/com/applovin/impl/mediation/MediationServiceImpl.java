package com.applovin.impl.mediation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.b.g;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.u;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MediationServiceImpl implements AppLovinBroadcastManager.Receiver {
    private final AtomicReference<JSONObject> amE = new AtomicReference<>();
    private final com.applovin.impl.sdk.x logger;
    private final com.applovin.impl.sdk.n sdk;

    public class a implements a.InterfaceC0060a, MaxAdListener, MaxAdRevenueListener, MaxAdViewAdListener, MaxRewardedAdListener {
        private final com.applovin.impl.mediation.b.a amK;
        private a.InterfaceC0060a amL;

        public a(com.applovin.impl.mediation.b.a aVar, a.InterfaceC0060a interfaceC0060a) {
            this.amK = aVar;
            this.amL = interfaceC0060a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            if (maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.sdk.Cf().ac(maxAd);
            }
            com.applovin.impl.sdk.utils.m.c(this.amL, maxAd);
        }

        public void a(a.InterfaceC0060a interfaceC0060a) {
            this.amL = interfaceC0060a;
        }

        public void a(@NonNull MaxAd maxAd, @Nullable Bundle bundle) {
            this.amK.S(bundle);
            this.amK.xN();
            MediationServiceImpl.this.d(this.amK);
            com.applovin.impl.sdk.utils.m.a((MaxAdListener) this.amL, maxAd);
        }

        public void a(@NonNull MaxAd maxAd, @NonNull MaxError maxError, @Nullable Bundle bundle) {
            this.amK.S(bundle);
            MediationServiceImpl.this.b(this.amK, maxError, this.amL);
            if ((maxAd.getFormat() == MaxAdFormat.REWARDED || maxAd.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) && (maxAd instanceof com.applovin.impl.mediation.b.c)) {
                ((com.applovin.impl.mediation.b.c) maxAd).yg();
            }
        }

        public void a(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward, @Nullable Bundle bundle) {
            this.amK.S(bundle);
            com.applovin.impl.sdk.utils.m.a(this.amL, maxAd, maxReward);
            MediationServiceImpl.this.sdk.BO().a(new com.applovin.impl.mediation.d.g((com.applovin.impl.mediation.b.c) maxAd, MediationServiceImpl.this.sdk), q.b.MEDIATION_REWARD);
        }

        public void b(@NonNull MaxAd maxAd, @Nullable Bundle bundle) {
            this.amK.S(bundle);
            com.applovin.impl.sdk.x unused = MediationServiceImpl.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                MediationServiceImpl.this.logger.f("MediationService", "Scheduling impression for ad via callback...");
            }
            MediationServiceImpl.this.processCallbackAdImpressionPostback(this.amK, this.amL);
            MediationServiceImpl.this.sdk.BR().a(com.applovin.impl.sdk.d.f.aSU);
            MediationServiceImpl.this.sdk.BR().a(com.applovin.impl.sdk.d.f.aSX);
            if (!maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.sdk.Ch().a(this.amK, "DID_DISPLAY");
                com.applovin.impl.sdk.utils.m.b(this.amL, maxAd);
                return;
            }
            com.applovin.impl.mediation.b.c cVar = (com.applovin.impl.mediation.b.c) maxAd;
            if (cVar.yk()) {
                MediationServiceImpl.this.sdk.Ch().a(this.amK, "DID_DISPLAY");
                MediationServiceImpl.this.sdk.Cf().ab(this.amK);
                com.applovin.impl.sdk.utils.m.b(this.amL, maxAd);
                return;
            }
            com.applovin.impl.sdk.x unused2 = MediationServiceImpl.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                com.applovin.impl.sdk.x xVar = MediationServiceImpl.this.logger;
                StringBuilder sb = new StringBuilder();
                sb.append("Received ad display callback before attempting show");
                sb.append(cVar.xF() ? " for hybrid ad" : "");
                xVar.h("MediationService", sb.toString());
            }
        }

        public void c(@NonNull final MaxAd maxAd, @Nullable Bundle bundle) {
            this.amK.S(bundle);
            MediationServiceImpl.this.sdk.Ch().a((com.applovin.impl.mediation.b.a) maxAd, "DID_HIDE");
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(maxAd);
                }
            }, maxAd instanceof com.applovin.impl.mediation.b.c ? ((com.applovin.impl.mediation.b.c) maxAd).yc() : 0L);
        }

        public void d(@NonNull MaxAd maxAd, @Nullable Bundle bundle) {
            this.amK.S(bundle);
            MediationServiceImpl.this.a(this.amK, this.amL);
            com.applovin.impl.sdk.utils.m.d(this.amL, maxAd);
        }

        public void e(@NonNull MaxAd maxAd, @Nullable Bundle bundle) {
            this.amK.S(bundle);
            com.applovin.impl.sdk.utils.m.g(this.amL, maxAd);
        }

        public void f(@NonNull MaxAd maxAd, @Nullable Bundle bundle) {
            this.amK.S(bundle);
            com.applovin.impl.sdk.utils.m.h(this.amL, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(@NonNull MaxAd maxAd) {
            d(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(@NonNull MaxAd maxAd) {
            f(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(@NonNull MaxAd maxAd, @NonNull MaxError maxError) {
            a(maxAd, maxError, (Bundle) null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(@NonNull MaxAd maxAd) {
            b(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(@NonNull MaxAd maxAd) {
            e(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(@NonNull MaxAd maxAd) {
            c(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
            this.amK.xN();
            MediationServiceImpl.this.a(this.amK, maxError, this.amL);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(@NonNull MaxAd maxAd) {
            a(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(@NonNull String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(@NonNull MaxAd maxAd) {
            com.applovin.impl.sdk.utils.m.f(this.amL, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(@NonNull MaxAd maxAd) {
            com.applovin.impl.sdk.utils.m.e(this.amL, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(@NonNull MaxAd maxAd, @NonNull MaxReward maxReward) {
            a(maxAd, maxReward, (Bundle) null);
        }
    }

    public MediationServiceImpl(com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.b.a aVar, a.InterfaceC0060a interfaceC0060a) {
        this.sdk.Ch().a(aVar, "DID_CLICKED");
        this.sdk.Ch().a(aVar, "DID_CLICK");
        if (aVar.xz().endsWith(CampaignEx.JSON_NATIVE_VIDEO_CLICK)) {
            this.sdk.Ch().j(aVar);
            com.applovin.impl.sdk.utils.m.a((MaxAdRevenueListener) interfaceC0060a, (MaxAd) aVar);
        }
        HashMap map = new HashMap(1);
        String strEmptyIfNull = StringUtils.emptyIfNull(this.sdk.Bz());
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOA)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mclick", map, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.b.a aVar, MaxError maxError, MaxAdListener maxAdListener) {
        a(maxError, aVar);
        destroyAd(aVar);
        com.applovin.impl.sdk.utils.m.a(maxAdListener, aVar.getAdUnitId(), maxError);
    }

    private void a(com.applovin.impl.mediation.b.c cVar, a.InterfaceC0060a interfaceC0060a) {
        this.sdk.Cf().aM(false);
        a(cVar, (MaxAdListener) interfaceC0060a);
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("MediationService", "Scheduling impression for ad manually...");
        }
        processRawAdImpressionPostback(cVar, interfaceC0060a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.mediation.b.c cVar, g gVar, Activity activity, a.InterfaceC0060a interfaceC0060a) {
        cVar.aH(true);
        h(cVar);
        gVar.a(cVar, activity);
        a(cVar, interfaceC0060a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.mediation.b.c cVar, g gVar, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity, a.InterfaceC0060a interfaceC0060a) {
        cVar.aH(true);
        h(cVar);
        gVar.a(cVar, viewGroup, lifecycle, activity);
        a(cVar, interfaceC0060a);
    }

    private void a(final com.applovin.impl.mediation.b.c cVar, final MaxAdListener maxAdListener) {
        final Long l = (Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJL);
        if (l.longValue() <= 0) {
            return;
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.k
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(cVar, l, maxAdListener);
            }
        }, l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.mediation.b.c cVar, Long l, MaxAdListener maxAdListener) {
        if (cVar.xO().get()) {
            return;
        }
        String str = "Ad (" + cVar.yB() + ") has not been displayed after " + l + "ms. Failing ad display...";
        com.applovin.impl.sdk.x.H("MediationService", str);
        b(cVar, new MaxErrorImpl(-1, str), maxAdListener);
        this.sdk.Cf().ac(cVar);
    }

    private void a(MaxError maxError, com.applovin.impl.mediation.b.a aVar) {
        HashMap map = new HashMap(3);
        map.put("{LOAD_TIME_MS}", String.valueOf(aVar.xJ()));
        if (aVar.getFormat().isFullscreenAd()) {
            u.a aVarCH = this.sdk.Cf().cH(aVar.getAdUnitId());
            map.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(aVarCH.Ff()));
            map.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(aVarCH.Fe()));
        }
        a("mlerr", map, maxError, aVar);
    }

    private void a(MaxError maxError, com.applovin.impl.mediation.b.a aVar, boolean z) {
        a("mierr", Collections.EMPTY_MAP, maxError, aVar, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.applovin.impl.mediation.b.h hVar, g gVar) {
        HashMap map = new HashMap(2);
        CollectionUtils.putStringIfValid("{ADAPTER_VERSION}", gVar.getAdapterVersion(), map);
        CollectionUtils.putStringIfValid("{SDK_VERSION}", gVar.getSdkVersion(), map);
        a("serr", map, new MaxErrorImpl(str), hVar);
    }

    private void a(String str, Map<String, String> map, com.applovin.impl.mediation.b.f fVar) {
        a(str, map, (MaxError) null, fVar);
    }

    private void a(String str, Map<String, String> map, MaxError maxError, com.applovin.impl.mediation.b.f fVar) {
        a(str, map, maxError, fVar, true);
    }

    private void a(String str, Map<String, String> map, MaxError maxError, com.applovin.impl.mediation.b.f fVar, boolean z) {
        Map map2 = CollectionUtils.map(map);
        map2.put("{PLACEMENT}", z ? StringUtils.emptyIfNull(fVar.getPlacement()) : "");
        map2.put("{CUSTOM_DATA}", z ? StringUtils.emptyIfNull(fVar.yG()) : "");
        if (fVar instanceof com.applovin.impl.mediation.b.a) {
            map2.put("{CREATIVE_ID}", z ? StringUtils.emptyIfNull(((com.applovin.impl.mediation.b.a) fVar).getCreativeId()) : "");
        }
        this.sdk.BO().a(new com.applovin.impl.mediation.d.d(str, map2, maxError, fVar, this.sdk, z), q.b.MEDIATION_POSTBACKS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.applovin.impl.mediation.b.a aVar, MaxError maxError, MaxAdListener maxAdListener) {
        this.sdk.Ch().a(aVar, "DID_FAIL_DISPLAY");
        a(maxError, aVar, true);
        if (aVar.xO().compareAndSet(false, true)) {
            com.applovin.impl.sdk.utils.m.a(maxAdListener, aVar, maxError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.applovin.impl.mediation.b.a aVar) {
        this.sdk.Ch().a(aVar, "DID_LOAD");
        if (aVar.xz().endsWith("load")) {
            this.sdk.Ch().j(aVar);
        }
        HashMap map = new HashMap(3);
        map.put("{LOAD_TIME_MS}", String.valueOf(aVar.xJ()));
        if (aVar.getFormat().isFullscreenAd()) {
            u.a aVarCH = this.sdk.Cf().cH(aVar.getAdUnitId());
            map.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(aVarCH.Ff()));
            map.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(aVarCH.Fe()));
        }
        a("load", map, aVar);
    }

    private g g(com.applovin.impl.mediation.b.c cVar) {
        g gVarXC = cVar.xC();
        if (gVarXC != null) {
            return gVarXC;
        }
        this.sdk.Cf().aM(false);
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.h("MediationService", "Failed to show " + cVar + ": adapter not found");
        }
        com.applovin.impl.sdk.x.H("MediationService", "There may be an integration problem with the adapter for Ad Unit ID '" + cVar.getAdUnitId() + "'. Please check if you have a supported version of that SDK integrated into your project.");
        throw new IllegalStateException("Could not find adapter for provided ad");
    }

    private void h(com.applovin.impl.mediation.b.c cVar) {
        if (cVar.getFormat() == MaxAdFormat.REWARDED || cVar.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) {
            this.sdk.BO().a(new com.applovin.impl.mediation.d.h(cVar, this.sdk), q.b.MEDIATION_REWARD);
        }
    }

    public void collectSignal(final String str, MaxAdFormat maxAdFormat, final com.applovin.impl.mediation.b.h hVar, Context context, final g.a aVar) {
        if (hVar == null) {
            throw new IllegalArgumentException("No spec specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        final g gVarA = this.sdk.Cw().a(hVar, hVar.yL());
        if (gVarA == null) {
            aVar.a(com.applovin.impl.mediation.b.g.a(hVar, "Could not load adapter"));
            return;
        }
        Activity activityCF = context instanceof Activity ? (Activity) context : this.sdk.CF();
        MaxAdapterParametersImpl maxAdapterParametersImplA = MaxAdapterParametersImpl.a(hVar, str, maxAdFormat);
        this.sdk.Cx().a(hVar, activityCF);
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        MaxSignalCollectionListener maxSignalCollectionListener = new MaxSignalCollectionListener() { // from class: com.applovin.impl.mediation.MediationServiceImpl.1
            @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
            public void onSignalCollected(String str2) {
                com.applovin.impl.sdk.x unused = MediationServiceImpl.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    MediationServiceImpl.this.logger.f("MediationService", "Signal collection successful from: " + gVarA.getName() + " for Ad Unit ID: " + str + " with signal: \"" + str2 + "\"");
                }
                aVar.a(com.applovin.impl.mediation.b.g.a(hVar, gVarA, str2, SystemClock.elapsedRealtime() - jElapsedRealtime));
                gVarA.destroy();
            }

            @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
            public void onSignalCollectionFailed(String str2) {
                com.applovin.impl.sdk.x unused = MediationServiceImpl.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    MediationServiceImpl.this.logger.i("MediationService", "Signal collection failed from: " + gVarA.getName() + " for Ad Unit ID: " + str + " with error message: \"" + str2 + "\"");
                }
                MediationServiceImpl.this.a(str2, hVar, gVarA);
                aVar.a(com.applovin.impl.mediation.b.g.b(hVar, gVarA, str2, SystemClock.elapsedRealtime() - jElapsedRealtime));
                gVarA.destroy();
            }
        };
        if (!hVar.yK()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("MediationService", "Collecting signal for adapter: " + gVarA.getName());
            }
            gVarA.a(maxAdapterParametersImplA, hVar, activityCF, maxSignalCollectionListener);
            return;
        }
        if (this.sdk.Cx().b(hVar)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("MediationService", "Collecting signal for now-initialized adapter: " + gVarA.getName());
            }
            gVarA.a(maxAdapterParametersImplA, hVar, activityCF, maxSignalCollectionListener);
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i("MediationService", "Skip collecting signal for not-initialized adapter: " + gVarA.getName());
        }
        aVar.a(com.applovin.impl.mediation.b.g.a(hVar, "Adapter not initialized yet"));
    }

    public void destroyAd(MaxAd maxAd) {
        if (maxAd instanceof com.applovin.impl.mediation.b.a) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.g("MediationService", "Destroying " + maxAd);
            }
            com.applovin.impl.mediation.b.a aVar = (com.applovin.impl.mediation.b.a) maxAd;
            g gVarXC = aVar.xC();
            if (gVarXC != null) {
                gVarXC.destroy();
                aVar.xQ();
            }
            this.sdk.Cv().cv(aVar.xA());
        }
    }

    public JSONObject getAndResetCustomPostBodyData() {
        return this.amE.getAndSet(null);
    }

    public void loadAd(String str, @Nullable String str2, MaxAdFormat maxAdFormat, d.a aVar, Map<String, Object> map, Map<String, Object> map2, Context context, a.InterfaceC0060a interfaceC0060a) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No Ad Unit ID specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        if (interfaceC0060a == null) {
            throw new IllegalArgumentException("No listener specified");
        }
        if (TextUtils.isEmpty(this.sdk.getMediationProvider())) {
            com.applovin.impl.sdk.x.H("AppLovinSdk", "Mediation provider is null. Please set AppLovin SDK mediation provider via AppLovinSdk.getInstance(context).setMediationProvider()");
        }
        if (!this.sdk.isEnabled()) {
            com.applovin.impl.sdk.x.F("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.sdk.Bl();
        if (str.length() != 16 && !str.startsWith("test_mode") && !this.sdk.getSdkKey().startsWith("05TMD")) {
            com.applovin.impl.sdk.x.H("MediationService", "Please double-check the ad unit " + str + " for " + maxAdFormat.getLabel() + " : " + Log.getStackTraceString(new Throwable("")));
        }
        if (!this.sdk.g(maxAdFormat)) {
            this.sdk.BH();
            com.applovin.impl.sdk.utils.m.a((MaxAdRequestListener) interfaceC0060a, str, true, true);
            this.sdk.CD().a(str, str2, maxAdFormat, aVar, map, map2, context, interfaceC0060a);
            return;
        }
        com.applovin.impl.sdk.x.H("MediationService", "Ad load failed due to disabled ad format " + maxAdFormat.getLabel());
        com.applovin.impl.sdk.utils.m.a(interfaceC0060a, str, new MaxErrorImpl(-1, "Disabled ad format " + maxAdFormat.getLabel()));
    }

    public void loadThirdPartyMediatedAd(String str, com.applovin.impl.mediation.b.a aVar, Activity activity, a.InterfaceC0060a interfaceC0060a) {
        if (aVar == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("MediationService", "Loading " + aVar + "...");
        }
        this.sdk.Ch().a(aVar, "WILL_LOAD");
        g gVarC = this.sdk.Cw().c(aVar);
        if (gVarC != null) {
            MaxAdapterParametersImpl maxAdapterParametersImplA = MaxAdapterParametersImpl.a(aVar);
            this.sdk.Cx().a(aVar, activity);
            com.applovin.impl.mediation.b.a aVarK = aVar.k(gVarC);
            gVarC.a(str, aVarK);
            aVarK.xL();
            gVarC.a(str, maxAdapterParametersImplA, aVarK, activity, new a(aVarK, interfaceC0060a));
            return;
        }
        String str2 = "Failed to load " + aVar + ": adapter not loaded";
        com.applovin.impl.sdk.x.H("MediationService", str2);
        a(aVar, new MaxErrorImpl(-5001, str2), interfaceC0060a);
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction())) {
            Object objFd = this.sdk.Cf().Fd();
            if (objFd instanceof com.applovin.impl.mediation.b.a) {
                a((MaxError) MaxAdapterError.WEBVIEW_ERROR, (com.applovin.impl.mediation.b.a) objFd, true);
            }
        }
    }

    public void processAdDisplayErrorPostbackForUserError(MaxError maxError, com.applovin.impl.mediation.b.a aVar) {
        a(maxError, aVar, false);
    }

    public void processAdLossPostback(com.applovin.impl.mediation.b.a aVar, @Nullable Float f2) {
        String string = f2 != null ? f2.toString() : "";
        HashMap map = new HashMap(1);
        map.put("{MBR}", string);
        a("mloss", map, aVar);
    }

    public void processAdapterInitializationPostback(com.applovin.impl.mediation.b.f fVar, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        HashMap map = new HashMap(2);
        map.put("{INIT_STATUS}", String.valueOf(initializationStatus.getCode()));
        map.put("{INIT_TIME_MS}", String.valueOf(j));
        a("minit", map, new MaxErrorImpl(str), fVar);
    }

    public void processCallbackAdImpressionPostback(com.applovin.impl.mediation.b.a aVar, a.InterfaceC0060a interfaceC0060a) {
        if (aVar.xz().endsWith("cimp")) {
            this.sdk.Ch().j(aVar);
            com.applovin.impl.sdk.utils.m.a((MaxAdRevenueListener) interfaceC0060a, (MaxAd) aVar);
        }
        HashMap map = new HashMap(1);
        String strEmptyIfNull = StringUtils.emptyIfNull(this.sdk.Bz());
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOA)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mcimp", map, aVar);
    }

    public void processRawAdImpressionPostback(com.applovin.impl.mediation.b.a aVar, a.InterfaceC0060a interfaceC0060a) {
        this.sdk.Ch().a(aVar, "WILL_DISPLAY");
        if (aVar.xz().endsWith("mimp")) {
            this.sdk.Ch().j(aVar);
            com.applovin.impl.sdk.utils.m.a((MaxAdRevenueListener) interfaceC0060a, (MaxAd) aVar);
        }
        HashMap map = new HashMap(2);
        if (aVar instanceof com.applovin.impl.mediation.b.c) {
            map.put("{TIME_TO_SHOW_MS}", String.valueOf(((com.applovin.impl.mediation.b.c) aVar).ya()));
        }
        String strEmptyIfNull = StringUtils.emptyIfNull(this.sdk.Bz());
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOA)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mimp", map, aVar);
    }

    public void processViewabilityAdImpressionPostback(com.applovin.impl.mediation.b.e eVar, long j, a.InterfaceC0060a interfaceC0060a) {
        if (eVar.xz().endsWith("vimp")) {
            this.sdk.Ch().j(eVar);
            com.applovin.impl.sdk.utils.m.a((MaxAdRevenueListener) interfaceC0060a, (MaxAd) eVar);
        }
        HashMap map = new HashMap(3);
        map.put("{VIEWABILITY_FLAGS}", String.valueOf(j));
        map.put("{USED_VIEWABILITY_TIMER}", String.valueOf(eVar.yw()));
        String strEmptyIfNull = StringUtils.emptyIfNull(this.sdk.Bz());
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOA)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mvimp", map, eVar);
    }

    public void setCustomPostBodyData(JSONObject jSONObject) {
        this.amE.set(jSONObject);
    }

    public void showFullscreenAd(final com.applovin.impl.mediation.b.c cVar, final Activity activity, final a.InterfaceC0060a interfaceC0060a) {
        if (cVar == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity == null && MaxAdFormat.APP_OPEN != cVar.getFormat()) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.sdk.Cf().aM(true);
        final g gVarG = g(cVar);
        long jYb = cVar.yb();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("MediationService", "Showing ad " + cVar.getAdUnitId() + " with delay of " + jYb + "ms...");
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.m
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(cVar, gVarG, activity, interfaceC0060a);
            }
        }, jYb);
    }

    public void showFullscreenAd(final com.applovin.impl.mediation.b.c cVar, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity, final a.InterfaceC0060a interfaceC0060a) {
        if (cVar == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.sdk.Cf().aM(true);
        final g gVarG = g(cVar);
        long jYb = cVar.yb();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("MediationService", "Showing ad " + cVar.getAdUnitId() + " with delay of " + jYb + "ms...");
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.j
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(cVar, gVarG, viewGroup, lifecycle, activity, interfaceC0060a);
            }
        }, jYb);
    }
}
