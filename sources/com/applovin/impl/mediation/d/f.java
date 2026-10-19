package com.applovin.impl.mediation.d;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.MaxAdWaterfallInfoImpl;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MaxMediatedNetworkInfoImpl;
import com.applovin.impl.mediation.MaxNetworkResponseInfoImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f extends com.applovin.impl.sdk.e.d {
    private static final AtomicBoolean awA = new AtomicBoolean();
    private final List<MaxNetworkResponseInfo> akY;
    private final String awV;
    private final MaxAdFormat awW;
    private final JSONObject awX;
    private final List<com.applovin.impl.mediation.b.a> awY;
    private final a.InterfaceC0060a awZ;
    private final WeakReference<Context> axa;
    private long startTimeMillis;

    private class a extends com.applovin.impl.sdk.e.d {
        private final com.applovin.impl.mediation.b.a aml;
        private final int axb;
        private final List<com.applovin.impl.mediation.b.a> axc;
        private final long startTimeMillis;

        a(int i, List<com.applovin.impl.mediation.b.a> list) {
            super(f.this.tag, f.this.sdk, f.this.awV);
            this.startTimeMillis = SystemClock.elapsedRealtime();
            this.axb = i;
            this.aml = list.get(i);
            this.axc = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.applovin.impl.mediation.b.a aVar, MaxNetworkResponseInfo.AdLoadState adLoadState, long j, @Nullable MaxError maxError) {
            f.this.akY.add(new MaxNetworkResponseInfoImpl(adLoadState, new MaxMediatedNetworkInfoImpl(com.applovin.impl.mediation.e.c.a(aVar.vt(), this.sdk)), aVar.getCredentials(), aVar.isBidding(), j, maxError));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void ch(String str) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x.Fn()) {
                this.logger.f(this.tag, "Loading ad " + (this.axb + 1) + " of " + this.axc.size() + " from " + this.aml.yA() + " for " + f.this.awW.getLabel() + " ad unit " + f.this.awV);
            }
            ch("started to load ad");
            Context context = (Context) f.this.axa.get();
            this.sdk.Cy().loadThirdPartyMediatedAd(f.this.awV, this.aml, context instanceof Activity ? (Activity) context : this.sdk.CF(), new com.applovin.impl.mediation.e.a(f.this.awZ) { // from class: com.applovin.impl.mediation.d.f.a.1
                @Override // com.applovin.impl.mediation.e.a, com.applovin.mediation.MaxAdListener
                public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - a.this.startTimeMillis;
                    x unused = ((com.applovin.impl.sdk.e.d) a.this).logger;
                    if (x.Fn()) {
                        ((com.applovin.impl.sdk.e.d) a.this).logger.f(((com.applovin.impl.sdk.e.d) a.this).tag, "Ad failed to load in " + jElapsedRealtime + " ms for " + f.this.awW.getLabel() + " ad unit " + f.this.awV + " with error: " + maxError);
                    }
                    a.this.ch("failed to load ad: " + maxError.getCode());
                    a aVar = a.this;
                    aVar.a(aVar.aml, MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD, jElapsedRealtime, maxError);
                    if (a.this.axb >= a.this.axc.size() - 1) {
                        f.this.a(new MaxErrorImpl(-5001, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."));
                    } else {
                        a aVar2 = a.this;
                        ((com.applovin.impl.sdk.e.d) a.this).sdk.BO().a(f.this.new a(aVar2.axb + 1, a.this.axc), com.applovin.impl.mediation.e.c.f(f.this.awW));
                    }
                }

                @Override // com.applovin.impl.mediation.e.a, com.applovin.mediation.MaxAdListener
                public void onAdLoaded(@NonNull MaxAd maxAd) {
                    a.this.ch("loaded ad");
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - a.this.startTimeMillis;
                    x unused = ((com.applovin.impl.sdk.e.d) a.this).logger;
                    if (x.Fn()) {
                        ((com.applovin.impl.sdk.e.d) a.this).logger.f(((com.applovin.impl.sdk.e.d) a.this).tag, "Ad loaded in " + jElapsedRealtime + "ms for " + f.this.awW.getLabel() + " ad unit " + f.this.awV);
                    }
                    com.applovin.impl.mediation.b.a aVar = (com.applovin.impl.mediation.b.a) maxAd;
                    a.this.a(aVar, MaxNetworkResponseInfo.AdLoadState.AD_LOADED, jElapsedRealtime, null);
                    int i = a.this.axb;
                    while (true) {
                        i++;
                        if (i >= a.this.axc.size()) {
                            f.this.h(aVar);
                            return;
                        } else {
                            a aVar2 = a.this;
                            aVar2.a((com.applovin.impl.mediation.b.a) aVar2.axc.get(i), MaxNetworkResponseInfo.AdLoadState.AD_LOAD_NOT_ATTEMPTED, -1L, null);
                        }
                    }
                }
            });
        }
    }

    f(String str, MaxAdFormat maxAdFormat, Map<String, Object> map, JSONObject jSONObject, Context context, com.applovin.impl.sdk.n nVar, a.InterfaceC0060a interfaceC0060a) {
        super("TaskProcessMediationWaterfall", nVar, str);
        this.awV = str;
        this.awW = maxAdFormat;
        this.awX = jSONObject;
        this.awZ = interfaceC0060a;
        this.axa = new WeakReference<>(context);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, CampaignUnit.JSON_KEY_ADS, new JSONArray());
        this.awY = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            this.awY.add(com.applovin.impl.mediation.b.a.a(i, map, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, nVar));
        }
        this.akY = new ArrayList(this.awY.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(MaxError maxError) {
        if (maxError.getCode() == 204) {
            this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTj);
        } else if (maxError.getCode() == -5001) {
            this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTk);
        } else {
            this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTl);
        }
        ArrayList arrayList = new ArrayList(this.akY.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : this.akY) {
            if (maxNetworkResponseInfo.getAdLoadState() == MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD) {
                arrayList.add(maxNetworkResponseInfo);
            }
        }
        if (arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder("======FAILED AD LOADS======");
            sb.append("\n");
            int i = 0;
            while (i < arrayList.size()) {
                MaxNetworkResponseInfo maxNetworkResponseInfo2 = (MaxNetworkResponseInfo) arrayList.get(i);
                i++;
                sb.append(i);
                sb.append(") ");
                sb.append(maxNetworkResponseInfo2.getMediatedNetwork().getName());
                sb.append("\n");
                sb.append("..code: ");
                sb.append(maxNetworkResponseInfo2.getError().getCode());
                sb.append("\n");
                sb.append("..message: ");
                sb.append(maxNetworkResponseInfo2.getError().getMessage());
                sb.append("\n");
            }
            ((MaxErrorImpl) maxError).setAdLoadFailureInfo(sb.toString());
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.startTimeMillis;
        if (x.Fn()) {
            this.logger.g(this.tag, "Waterfall failed in " + jElapsedRealtime + "ms for " + this.awW.getLabel() + " ad unit " + this.awV + " with error: " + maxError);
        }
        ((MaxErrorImpl) maxError).setWaterfall(new MaxAdWaterfallInfoImpl(null, JsonUtils.getString(this.awX, "waterfall_name", ""), JsonUtils.getString(this.awX, "waterfall_test_name", ""), jElapsedRealtime, this.akY));
        com.applovin.impl.sdk.utils.m.a(this.awZ, this.awV, maxError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(com.applovin.impl.mediation.b.a aVar) {
        this.sdk.CC().l(aVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.startTimeMillis;
        if (x.Fn()) {
            this.logger.g(this.tag, "Waterfall loaded in " + jElapsedRealtime + "ms from " + aVar.yA() + " for " + this.awW.getLabel() + " ad unit " + this.awV);
        }
        aVar.setWaterfall(new MaxAdWaterfallInfoImpl(aVar, jElapsedRealtime, this.akY));
        com.applovin.impl.sdk.utils.m.a((MaxAdListener) this.awZ, (MaxAd) aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void zJ() {
        u.a("MAX SDK Not Initialized In Test Mode", "Test ads may not load. Please force close and restart the app if you experience issues.", this.sdk.CF());
    }

    @Override // java.lang.Runnable
    public void run() {
        this.startTimeMillis = SystemClock.elapsedRealtime();
        if (this.awX.optBoolean("is_testing", false) && !this.sdk.CE().isEnabled() && awA.compareAndSet(false, true)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.d.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.zJ();
                }
            });
        }
        if (this.awY.size() > 0) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Starting waterfall for " + this.awW.getLabel() + " ad unit " + this.awV + " with " + this.awY.size() + " ad(s)...");
            }
            this.sdk.BO().b(new a(0, this.awY));
            return;
        }
        if (x.Fn()) {
            this.logger.h(this.tag, "No ads were returned from the server for " + this.awW.getLabel() + " ad unit " + this.awV);
        }
        u.a(this.awV, this.awW, this.awX, this.sdk);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.awX, "settings", new JSONObject());
        long j = JsonUtils.getLong(jSONObject, "alfdcs", 0L);
        final MaxErrorImpl maxErrorImpl = new MaxErrorImpl(204, "MAX returned no eligible ads from any mediated networks for this app/device.");
        if (j <= 0) {
            a(maxErrorImpl);
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(j);
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.d.p
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(maxErrorImpl);
            }
        };
        if (JsonUtils.getBoolean(jSONObject, "alfdcs_iba", Boolean.FALSE).booleanValue()) {
            com.applovin.impl.sdk.utils.f.a(millis, this.sdk, runnable);
        } else {
            AppLovinSdkUtils.runOnUiThreadDelayed(runnable, millis);
        }
    }
}
