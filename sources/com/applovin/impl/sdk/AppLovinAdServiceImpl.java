package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.ad.c;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.b;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinAdServiceImpl implements b.a, AppLovinAdService {
    private final Map<com.applovin.impl.sdk.ad.d, c> als;
    private final Object alt = new Object();
    private final Map<String, String> azs = new HashMap();
    private final AtomicReference<JSONObject> azt = new AtomicReference<>();
    private final x logger;
    private final n sdk;

    private class a implements com.applovin.impl.sdk.ad.i {
        private AppLovinAdLoadListener avU;

        public a(AppLovinAdLoadListener appLovinAdLoadListener) {
            this.avU = appLovinAdLoadListener;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            if (!(appLovinAd instanceof com.applovin.impl.sdk.ad.f)) {
                AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
                AppLovinAdServiceImpl.this.sdk.Ca().a(appLovinAdImpl);
                if (appLovinAdImpl.canExpire()) {
                    AppLovinAdServiceImpl.this.sdk.Cb().a(appLovinAdImpl, AppLovinAdServiceImpl.this);
                }
                appLovinAd = new com.applovin.impl.sdk.ad.f(appLovinAdImpl.getAdZone(), AppLovinAdServiceImpl.this.sdk);
            }
            AppLovinAdLoadListener appLovinAdLoadListener = this.avU;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.adReceived(appLovinAd);
            } else if (((Boolean) AppLovinAdServiceImpl.this.sdk.a(com.applovin.impl.sdk.c.b.aKF)).booleanValue()) {
                throw new IllegalStateException("Unable to notify listener about ad load");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            failedToReceiveAdV2(new AppLovinError(i, ""));
        }

        @Override // com.applovin.impl.sdk.ad.i
        public void failedToReceiveAdV2(AppLovinError appLovinError) {
            AppLovinAdServiceImpl.this.b(appLovinError, this.avU);
            this.avU = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b implements com.applovin.impl.sdk.ad.i {
        private final int alS;
        private final com.applovin.impl.sdk.ad.d azA;
        private final c azB;

        private b(com.applovin.impl.sdk.ad.d dVar, c cVar) {
            this.azA = dVar;
            this.azB = cVar;
            if (Boolean.parseBoolean(AppLovinAdServiceImpl.this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES))) {
                this.alS = -1;
            } else {
                this.alS = ((Integer) AppLovinAdServiceImpl.this.sdk.a(com.applovin.impl.sdk.c.b.aKJ)).intValue();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void AS() {
            AppLovinAdServiceImpl.this.a(this.azA, this);
        }

        private boolean b(@Nullable AppLovinAdSize appLovinAdSize) {
            return appLovinAdSize == null ? ((Boolean) AppLovinAdServiceImpl.this.sdk.a(com.applovin.impl.sdk.c.b.aKL)).booleanValue() : AppLovinAdServiceImpl.this.sdk.b(com.applovin.impl.sdk.c.b.aKK).contains(appLovinAdSize.getLabel());
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            if (!(appLovinAd instanceof com.applovin.impl.sdk.ad.f)) {
                AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
                AppLovinAdServiceImpl.this.sdk.Ca().a(appLovinAdImpl);
                if (appLovinAdImpl.canExpire()) {
                    AppLovinAdServiceImpl.this.sdk.Cb().a(appLovinAdImpl, AppLovinAdServiceImpl.this);
                }
                appLovinAd = new com.applovin.impl.sdk.ad.f(appLovinAdImpl.getAdZone(), AppLovinAdServiceImpl.this.sdk);
            }
            Collection collectionEmptySet = Collections.emptySet();
            synchronized (this.azB.azC) {
                if (!this.azB.azE) {
                    collectionEmptySet = new HashSet(this.azB.azF);
                    this.azB.azF.clear();
                }
                c cVar = this.azB;
                cVar.alU = 0;
                cVar.azD = false;
                cVar.azE = false;
            }
            Iterator it = collectionEmptySet.iterator();
            while (it.hasNext()) {
                AppLovinAdServiceImpl.this.a(appLovinAd, (AppLovinAdLoadListener) it.next());
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            failedToReceiveAdV2(new AppLovinError(i, ""));
        }

        @Override // com.applovin.impl.sdk.ad.i
        public void failedToReceiveAdV2(AppLovinError appLovinError) {
            c cVar;
            int i;
            Collections.emptySet();
            synchronized (this.azB.azC) {
                AppLovinAdSize size = this.azA.getSize();
                if (!b(size) || (i = (cVar = this.azB).alU) >= this.alS) {
                    HashSet hashSet = new HashSet(this.azB.azF);
                    this.azB.azF.clear();
                    c cVar2 = this.azB;
                    cVar2.alU = 0;
                    cVar2.azD = false;
                    cVar2.azE = false;
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        AppLovinAdServiceImpl.this.b(appLovinError, (AppLovinAdLoadListener) it.next());
                    }
                } else {
                    int i2 = i + 1;
                    cVar.alU = i2;
                    int iPow = (int) Math.pow(2.0d, i2);
                    x unused = AppLovinAdServiceImpl.this.logger;
                    if (x.Fn()) {
                        AppLovinAdServiceImpl.this.logger.f("AppLovinAdService", "Failed to load ad of zone {" + this.azA.mQ() + "} with size " + size + ". Current retry attempt: " + this.azB.alU + " of " + this.alS + ". Retrying again in " + iPow + " seconds...");
                    }
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.c0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.a.AS();
                        }
                    }, TimeUnit.SECONDS.toMillis(iPow));
                }
            }
        }
    }

    private static class c {
        int alU;
        final Object azC;
        boolean azD;
        boolean azE;
        final Collection<AppLovinAdLoadListener> azF;

        private c() {
            this.azC = new Object();
            this.azF = new HashSet();
        }

        @NonNull
        public String toString() {
            return "AdLoadState{, isWaitingForAd=" + this.azD + ", isReloadingExpiredAd=" + this.azE + ", pendingAdListeners=" + this.azF + '}';
        }
    }

    AppLovinAdServiceImpl(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        HashMap map = new HashMap(6);
        this.als = map;
        map.put(com.applovin.impl.sdk.ad.d.FU(), new c());
        map.put(com.applovin.impl.sdk.ad.d.FV(), new c());
        map.put(com.applovin.impl.sdk.ad.d.FW(), new c());
        map.put(com.applovin.impl.sdk.ad.d.FX(), new c());
        map.put(com.applovin.impl.sdk.ad.d.FY(), new c());
        map.put(com.applovin.impl.sdk.ad.d.FZ(), new c());
    }

    @Nullable
    private Uri a(Uri uri, String str) {
        try {
            return Uri.parse(uri.getQueryParameter(str));
        } catch (Throwable th) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().h("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
            }
            this.sdk.Cs().d("AppLovinAdService", "buildDeepLinkPlusUrl", th);
            return null;
        }
    }

    private String a(String str, long j, int i, String str2, boolean z) {
        try {
            if (!StringUtils.isValidString(str)) {
                return null;
            }
            if (i < 0 || i > 100) {
                i = 0;
            }
            return Uri.parse(str).buildUpon().appendQueryParameter("et_s", Long.toString(j)).appendQueryParameter("pv", Integer.toString(i)).appendQueryParameter("vid_ts", str2).appendQueryParameter("uvs", Boolean.toString(z)).build().toString();
        } catch (Throwable th) {
            if (x.Fn()) {
                this.logger.c("AppLovinAdService", "Unknown error parsing the video end url: " + str, th);
            }
            this.sdk.Cs().d("AppLovinAdService", "buildVideoEndUrl", th);
            return null;
        }
    }

    private String a(String str, long j, long j2, List<Long> list, boolean z, int i) {
        if (!StringUtils.isValidString(str)) {
            return null;
        }
        Uri.Builder builderAppendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("et_ms", Long.toString(j)).appendQueryParameter("vs_ms", Long.toString(j2));
        if (list != null && list.size() > 0) {
            builderAppendQueryParameter.appendQueryParameter("ec_ms", list.toString());
        }
        if (i != i.aAb) {
            builderAppendQueryParameter.appendQueryParameter("musw_ch", Boolean.toString(z));
            builderAppendQueryParameter.appendQueryParameter("musw_st", Boolean.toString(i.gx(i)));
        }
        return builderAppendQueryParameter.build().toString();
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.e eVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.b bVar) {
        if (com.applovin.impl.sdk.utils.s.a(uri, appLovinAdView.getContext(), this.sdk)) {
            com.applovin.impl.sdk.utils.m.c(bVar.qQ(), eVar, appLovinAdView);
        }
        bVar.qX();
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.e eVar, @Nullable AppLovinAdView appLovinAdView, @Nullable com.applovin.impl.adview.b bVar, Context context, n nVar) {
        if (uri == null || !StringUtils.isValidString(uri.getQuery())) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("AppLovinAdService", "Failed to execute Deep Link+ command - no query parameters found");
                return;
            }
            return;
        }
        Uri uriA = a(uri, "primaryUrl");
        List<Uri> listB = b(uri, "primaryTrackingUrl");
        Uri uriA2 = a(uri, "fallbackUrl");
        List<Uri> listB2 = b(uri, "fallbackTrackingUrl");
        if (uriA == null && uriA2 == null) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("AppLovinAdService", "Failed to parse both primary and backup URLs for Deep Link+ command");
                return;
            }
            return;
        }
        if (!a(uriA, "primary", listB, eVar, appLovinAdView, bVar, context, nVar)) {
            a(uriA2, "backup", listB2, eVar, appLovinAdView, bVar, context, nVar);
        }
        if (bVar != null) {
            bVar.qX();
        }
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.adview.b bVar, final com.applovin.impl.adview.activity.b.a aVar) {
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Forwarding click " + uri);
        }
        eVar.setMaxAdValue("forwarding_clicked_url", uri.toString());
        String str = this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.CLOSE_AD_ON_FORWARDING_CLICK_SCHEME);
        if (StringUtils.isValidString(str) && Boolean.parseBoolean(str)) {
            if (aVar != null) {
                AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.f(aVar);
                    }
                });
            } else {
                if (bVar == null || com.applovin.impl.sdk.utils.u.c(eVar.getSize())) {
                    return;
                }
                if (x.Fn()) {
                    this.logger.f("AppLovinAdService", "Closing ad after forwarding click");
                }
                bVar.qU();
            }
        }
    }

    private void a(AppLovinError appLovinError, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (appLovinAdLoadListener instanceof com.applovin.impl.sdk.ad.i) {
            ((com.applovin.impl.sdk.ad.i) appLovinAdLoadListener).failedToReceiveAdV2(appLovinError);
        } else {
            appLovinAdLoadListener.failedToReceiveAd(appLovinError.getCode());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.d dVar, b bVar) {
        AppLovinAdImpl appLovinAdImplA = this.sdk.Ca().a(dVar);
        if (appLovinAdImplA == null || appLovinAdImplA.isExpired()) {
            a(new com.applovin.impl.sdk.e.n(dVar, bVar, this.sdk));
            return;
        }
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Using pre-loaded ad: " + appLovinAdImplA + " for " + dVar);
        }
        bVar.adReceived(appLovinAdImplA);
    }

    private void a(com.applovin.impl.sdk.ad.d dVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (dVar == null) {
            throw new IllegalArgumentException("No zone specified");
        }
        if (appLovinAdLoadListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("AppLovinAdService", "Loading next ad of zone {" + dVar + "}...");
        }
        c cVarG = g(dVar);
        synchronized (cVarG.azC) {
            cVarG.azF.add(appLovinAdLoadListener);
            if (!cVarG.azD) {
                cVarG.azD = true;
                a(dVar, new b(dVar, cVarG));
            } else if (x.Fn()) {
                this.logger.f("AppLovinAdService", "Already waiting on an ad load...");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.e eVar, Uri uri, com.applovin.impl.adview.activity.b.a aVar, Context context) {
        if (cx(uri.getScheme())) {
            a(uri, eVar, (com.applovin.impl.adview.b) null, aVar);
        } else if (com.applovin.impl.sdk.utils.s.s(uri)) {
            a(uri, eVar, (AppLovinAdView) null, (com.applovin.impl.adview.b) null, context, this.sdk);
        } else {
            com.applovin.impl.sdk.utils.s.a(uri, context, this.sdk);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.e eVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.b bVar, Uri uri) {
        if (cx(uri.getScheme())) {
            a(uri, eVar, bVar, (com.applovin.impl.adview.activity.b.a) null);
        } else if (com.applovin.impl.sdk.utils.s.s(uri)) {
            a(uri, eVar, appLovinAdView, bVar, appLovinAdView.getContext(), this.sdk);
        } else {
            a(uri, eVar, appLovinAdView, bVar);
        }
    }

    private void a(com.applovin.impl.sdk.d.a aVar) {
        if (StringUtils.isValidString(aVar.JK())) {
            this.sdk.Cu().a(com.applovin.impl.sdk.network.h.ID().dd(aVar.JK()).de(StringUtils.isValidString(aVar.Iv()) ? aVar.Iv() : null).o(aVar.HS()).aV(false).aY(aVar.Ix()).IF());
        } else if (x.Fn()) {
            this.logger.h("AppLovinAdService", "Requested a postback dispatch for a null URL; nothing to do...");
        }
    }

    private void a(com.applovin.impl.sdk.e.d dVar) {
        if (!this.sdk.isEnabled()) {
            x.F("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.sdk.Bl();
        this.sdk.BO().a(dVar, q.b.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AppLovinAd appLovinAd, final AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.e0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(appLovinAdLoadListener, appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAdLoadListener appLovinAdLoadListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdLoadListener.adReceived(appLovinAd);
        } catch (Throwable th) {
            x.e("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
            this.sdk.Cs().d("AppLovinAdService", "notifyAdLoadedCallback", th);
        }
    }

    private boolean a(Uri uri, String str, List<Uri> list, com.applovin.impl.sdk.ad.e eVar, @Nullable AppLovinAdView appLovinAdView, @Nullable com.applovin.impl.adview.b bVar, Context context, n nVar) {
        nVar.BN();
        if (x.Fn()) {
            nVar.BN().f("AppLovinAdService", "Opening " + str + " URL: " + uri);
        }
        boolean zA = com.applovin.impl.sdk.utils.s.a(uri, context, nVar);
        if (zA) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().f("AppLovinAdService", "URL opened successfully, dispatching tracking URLs: " + list);
            }
            Iterator<Uri> it = list.iterator();
            while (it.hasNext()) {
                nVar.Ct().dispatchPostbackAsync(it.next().toString(), null);
            }
            if (bVar != null) {
                com.applovin.impl.sdk.utils.m.c(bVar.qQ(), eVar, appLovinAdView);
            }
        } else {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("AppLovinAdService", "URL failed to open");
            }
        }
        return zA;
    }

    private List<Uri> b(Uri uri, String str) {
        List<String> queryParameters = uri.getQueryParameters(str);
        ArrayList arrayList = new ArrayList(queryParameters.size());
        Iterator<String> it = queryParameters.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(Uri.parse(it.next()));
            } catch (Throwable th) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().h("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
                }
                this.sdk.Cs().d("AppLovinAdService", "buildDeepLinkPlusUrlList", th);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AppLovinError appLovinError, final AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.d0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c(appLovinError, appLovinAdLoadListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(AppLovinError appLovinError, AppLovinAdLoadListener appLovinAdLoadListener) {
        try {
            a(appLovinError, appLovinAdLoadListener);
        } catch (Throwable th) {
            x.e("AppLovinAdService", "Unable to notify listener about ad load failure", th);
            StringBuilder sb = new StringBuilder();
            sb.append("notifyAdLoadFailedCallback");
            sb.append(appLovinAdLoadListener instanceof com.applovin.impl.sdk.ad.i ? "V2" : "");
            this.sdk.Cs().d("AppLovinAdService", sb.toString(), th);
        }
    }

    private boolean cx(String str) {
        String str2 = this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.FORWARDING_CLICK_SCHEME);
        return StringUtils.isValidString(str2) && StringUtils.isValidString(str) && str.equalsIgnoreCase(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(com.applovin.impl.adview.activity.b.a aVar) {
        if (aVar != null) {
            if (x.Fn()) {
                this.logger.f("AppLovinAdService", "Dismissing ad after forwarding click");
            }
            aVar.dismiss();
        }
    }

    private c g(com.applovin.impl.sdk.ad.d dVar) {
        c cVar;
        synchronized (this.alt) {
            cVar = this.als.get(dVar);
            if (cVar == null) {
                cVar = new c();
                this.als.put(dVar, cVar);
            }
        }
        return cVar;
    }

    public void addCustomQueryParams(Map<String, String> map) {
        synchronized (this.azs) {
            this.azs.putAll(map);
        }
    }

    public AppLovinAd dequeueAd(com.applovin.impl.sdk.ad.d dVar) {
        AppLovinAdImpl appLovinAdImplB = this.sdk.Ca().b(dVar);
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Dequeued ad: " + appLovinAdImplB + " for zone: " + dVar + "...");
        }
        return appLovinAdImplB;
    }

    public JSONObject getAndResetCustomPostBody() {
        return this.azt.getAndSet(null);
    }

    public Map<String, String> getAndResetCustomQueryParams() {
        Map<String, String> map;
        synchronized (this.azs) {
            map = CollectionUtils.map(this.azs);
            this.azs.clear();
        }
        return map;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public String getBidToken() {
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "getBidToken()");
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        String bidToken = this.sdk.BV() != null ? this.sdk.BV().getBidToken() : this.sdk.BS().getBidToken();
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        if (StringUtils.isValidString(bidToken) && x.Fn()) {
            this.logger.f("AppLovinAdService", "Successfully retrieved bid token");
        }
        return bidToken;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        a(com.applovin.impl.sdk.ad.d.a(appLovinAdSize, AppLovinAdType.REGULAR), appLovinAdLoadListener);
    }

    public void loadNextAd(String str, AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Loading next ad of zone {" + str + "} with size " + appLovinAdSize);
        }
        a(com.applovin.impl.sdk.ad.d.a(appLovinAdSize, AppLovinAdType.REGULAR, str), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForAdToken(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        String strTrim = str != null ? str.trim() : null;
        if (TextUtils.isEmpty(strTrim)) {
            x.H("AppLovinAdService", "Empty ad token");
            a(new AppLovinError(-8, "Empty ad token"), appLovinAdLoadListener);
            return;
        }
        com.applovin.impl.sdk.ad.c cVar = new com.applovin.impl.sdk.ad.c(strTrim, this.sdk);
        AppLovinAdLoadListener aVar = ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKE)).booleanValue() ? new a(appLovinAdLoadListener) : appLovinAdLoadListener;
        if (cVar.FP() == c.a.REGULAR) {
            if (x.Fn()) {
                this.logger.f("AppLovinAdService", "Loading next ad for token: " + cVar);
            }
            a(new com.applovin.impl.sdk.e.o(cVar, aVar, this.sdk));
            return;
        }
        if (cVar.FP() != c.a.AD_RESPONSE_JSON) {
            AppLovinError appLovinError = new AppLovinError(-8, "Invalid token type");
            x.H("AppLovinAdService", "Invalid token type");
            a(appLovinError, appLovinAdLoadListener);
            return;
        }
        JSONObject jSONObjectFR = cVar.FR();
        if (jSONObjectFR == null) {
            String str2 = "Unable to retrieve ad response JSON from token: " + cVar.mQ();
            AppLovinError appLovinError2 = new AppLovinError(-8, str2);
            x.H("AppLovinAdService", str2);
            a(appLovinError2, appLovinAdLoadListener);
            return;
        }
        com.applovin.impl.sdk.utils.i.j(jSONObjectFR, this.sdk);
        com.applovin.impl.sdk.utils.i.i(jSONObjectFR, this.sdk);
        com.applovin.impl.sdk.utils.i.k(jSONObjectFR, this.sdk);
        g.o(this.sdk);
        if (JsonUtils.getJSONArray(jSONObjectFR, CampaignUnit.JSON_KEY_ADS, new JSONArray()).length() > 0) {
            if (x.Fn()) {
                this.logger.f("AppLovinAdService", "Rendering ad for token: " + cVar);
            }
            a(new com.applovin.impl.sdk.e.r(jSONObjectFR, com.applovin.impl.sdk.utils.u.l(jSONObjectFR, this.sdk), com.applovin.impl.sdk.ad.b.DECODED_AD_TOKEN_JSON, aVar, this.sdk));
            return;
        }
        if (x.Fn()) {
            this.logger.i("AppLovinAdService", "No ad returned from the server for token: " + cVar);
        }
        a(AppLovinError.NO_FILL, appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneId(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No zone id specified");
        }
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Loading next ad of zone {" + str + "}");
        }
        a(com.applovin.impl.sdk.ad.d.cQ(str), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneIds(List<String> list, AppLovinAdLoadListener appLovinAdLoadListener) {
        List<String> listRemoveTrimmedEmptyStrings = CollectionUtils.removeTrimmedEmptyStrings(list);
        if (listRemoveTrimmedEmptyStrings == null || listRemoveTrimmedEmptyStrings.isEmpty()) {
            x.H("AppLovinAdService", "No zones were provided");
            b(new AppLovinError(-7, ""), appLovinAdLoadListener);
            return;
        }
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Loading next ad for zones: " + listRemoveTrimmedEmptyStrings);
        }
        a(new com.applovin.impl.sdk.e.m(listRemoveTrimmedEmptyStrings, appLovinAdLoadListener, this.sdk));
    }

    public void loadNextIncentivizedAd(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Loading next incentivized ad of zone {" + str + "}");
        }
        a(com.applovin.impl.sdk.ad.d.cR(str), appLovinAdLoadListener);
    }

    public void maybeSubmitPersistentPostbacks(List<com.applovin.impl.sdk.d.a> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<com.applovin.impl.sdk.d.a> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    @Override // com.applovin.impl.sdk.b.a
    public void onAdExpired(com.applovin.impl.sdk.ad.g gVar) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) gVar;
        com.applovin.impl.sdk.ad.d adZone = appLovinAdImpl.getAdZone();
        if (x.Fn()) {
            this.logger.h("AppLovinAdService", "Ad expired for zone: " + adZone);
        }
        this.sdk.Ca().b(appLovinAdImpl);
        if (this.sdk.Br() || !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aMe)).booleanValue()) {
            return;
        }
        c cVarG = g(adZone);
        synchronized (cVarG.azC) {
            if (!cVarG.azD) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().f("AppLovinAdService", "Reloading ad after expiration for zone {" + adZone + "}...");
                }
                cVarG.azD = true;
                cVarG.azE = true;
                a(adZone, new b(adZone, cVarG));
            } else if (x.Fn()) {
                this.logger.f("AppLovinAdService", "Cancelled expired ad reload. Already waiting on an ad load...");
            }
        }
    }

    public void setCustomPostBody(JSONObject jSONObject) {
        this.azt.set(jSONObject);
    }

    @NonNull
    public String toString() {
        return "AppLovinAdService{adLoadStates=" + this.als + '}';
    }

    public void trackAndLaunchClick(final com.applovin.impl.sdk.ad.e eVar, final AppLovinAdView appLovinAdView, final com.applovin.impl.adview.b bVar, final Uri uri, @Nullable MotionEvent motionEvent, boolean z, @Nullable Bundle bundle) {
        if (eVar == null) {
            if (x.Fn()) {
                this.logger.i("AppLovinAdService", "Unable to track ad view click. No ad specified");
                return;
            }
            return;
        }
        if (bundle == null || !Boolean.parseBoolean(bundle.getString("skip_click_tracking"))) {
            if (x.Fn()) {
                this.logger.f("AppLovinAdService", "Tracking click on an ad...");
            }
            boolean z2 = bundle != null && Boolean.parseBoolean(bundle.getString("install_click"));
            maybeSubmitPersistentPostbacks(eVar.a(motionEvent, z, z2));
            if (this.sdk.BW() != null) {
                this.sdk.BW().a(eVar.d(motionEvent, false, z2), motionEvent);
            }
        } else if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Skipping tracking for click on an ad...");
        }
        if (appLovinAdView == null || uri == null) {
            if (x.Fn()) {
                this.logger.i("AppLovinAdService", "Unable to launch click - adView has been prematurely destroyed");
            }
        } else if (eVar.isDirectDownloadEnabled()) {
            this.sdk.Cr().startDirectInstallOrDownloadProcess(eVar, bundle, new ArrayService.DirectDownloadListener() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.2
                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onAppDetailsDismissed() {
                    if (bVar != null) {
                        AppLovinAdServiceImpl.this.sdk.Ce().resumeForClick();
                        com.applovin.impl.sdk.utils.m.b(bVar.qQ(), eVar, appLovinAdView);
                    }
                }

                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onAppDetailsDisplayed() {
                    AppLovinAdServiceImpl.this.sdk.Ce().pauseForClick();
                    com.applovin.impl.adview.b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.qX();
                        com.applovin.impl.sdk.utils.m.a(bVar.qQ(), eVar, appLovinAdView);
                    }
                }

                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onFailure() {
                    x unused = AppLovinAdServiceImpl.this.logger;
                    if (x.Fn()) {
                        AppLovinAdServiceImpl.this.logger.f("AppLovinAdService", "Could not execute Direct Install/Direct Download - falling back to normal click logic");
                    }
                    AppLovinAdServiceImpl.this.a(eVar, appLovinAdView, bVar, uri);
                }
            });
        } else {
            a(eVar, appLovinAdView, bVar, uri);
        }
    }

    public void trackAndLaunchVideoClick(final com.applovin.impl.sdk.ad.e eVar, final Uri uri, MotionEvent motionEvent, @Nullable Bundle bundle, final com.applovin.impl.adview.activity.b.a aVar, final Context context) {
        if (eVar == null) {
            if (x.Fn()) {
                this.logger.i("AppLovinAdService", "Unable to track video click. No ad specified");
                return;
            }
            return;
        }
        if (bundle == null || !Boolean.parseBoolean(bundle.getString("skip_click_tracking"))) {
            if (x.Fn()) {
                this.logger.f("AppLovinAdService", "Tracking VIDEO click on an ad...");
            }
            boolean z = bundle != null && Boolean.parseBoolean(bundle.getString("install_click"));
            maybeSubmitPersistentPostbacks(eVar.a(motionEvent, z));
            if (this.sdk.BW() != null) {
                this.sdk.BW().a(eVar.d(motionEvent, true, z), motionEvent);
            }
        } else if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Skipping tracking for VIDEO click on an ad...");
        }
        if (eVar.isDirectDownloadEnabled()) {
            this.sdk.Cr().startDirectInstallOrDownloadProcess(eVar, bundle, new ArrayService.DirectDownloadListener() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.1
                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onAppDetailsDismissed() {
                    AppLovinAdServiceImpl.this.sdk.Ce().resumeForClick();
                }

                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onAppDetailsDisplayed() {
                    AppLovinAdServiceImpl.this.sdk.Ce().pauseForClick();
                }

                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onFailure() {
                    x unused = AppLovinAdServiceImpl.this.logger;
                    if (x.Fn()) {
                        AppLovinAdServiceImpl.this.logger.f("AppLovinAdService", "Could not execute Direct Install/Direct Download - falling back to normal click logic");
                    }
                    AppLovinAdServiceImpl.this.a(eVar, uri, aVar, context);
                }
            });
        } else {
            a(eVar, uri, aVar, context);
        }
    }

    public void trackAppKilled(com.applovin.impl.sdk.ad.e eVar) {
        if (eVar == null) {
            if (x.Fn()) {
                this.logger.i("AppLovinAdService", "Unable to track app killed. No ad specified");
                return;
            }
            return;
        }
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Tracking app killed during ad...");
        }
        List<com.applovin.impl.sdk.d.a> listHi = eVar.Hi();
        if (listHi != null && !listHi.isEmpty()) {
            for (com.applovin.impl.sdk.d.a aVar : listHi) {
                a(new com.applovin.impl.sdk.d.a(aVar.JK(), aVar.Iv()));
            }
            return;
        }
        if (x.Fn()) {
            this.logger.h("AppLovinAdService", "Unable to track app killed during AD #" + eVar.getAdIdNumber() + ". Missing app killed tracking URL.");
        }
    }

    public void trackFullScreenAdClosed(com.applovin.impl.sdk.ad.e eVar, long j, List<Long> list, long j2, boolean z, int i) {
        if (eVar == null) {
            if (x.Fn()) {
                this.logger.i("AppLovinAdService", "Unable to track ad closed. No ad specified.");
                return;
            }
            return;
        }
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Tracking ad closed...");
        }
        List<com.applovin.impl.sdk.d.a> listHh = eVar.Hh();
        if (listHh == null || listHh.isEmpty()) {
            if (x.Fn()) {
                this.logger.h("AppLovinAdService", "Unable to track ad closed for AD #" + eVar.getAdIdNumber() + ". Missing ad close tracking URL." + eVar.getAdIdNumber());
                return;
            }
            return;
        }
        for (com.applovin.impl.sdk.d.a aVar : listHh) {
            String strA = a(aVar.JK(), j, j2, list, z, i);
            String strA2 = a(aVar.Iv(), j, j2, list, z, i);
            if (StringUtils.isValidString(strA)) {
                a(new com.applovin.impl.sdk.d.a(strA, strA2));
            } else if (x.Fn()) {
                this.logger.i("AppLovinAdService", "Failed to parse url: " + aVar.JK());
            }
        }
    }

    public void trackImpression(com.applovin.impl.sdk.ad.e eVar) {
        if (eVar == null) {
            if (x.Fn()) {
                this.logger.i("AppLovinAdService", "Unable to track impression click. No ad specified");
            }
        } else {
            if (x.Fn()) {
                this.logger.f("AppLovinAdService", "Tracking impression on ad...");
            }
            maybeSubmitPersistentPostbacks(eVar.Hj());
            if (this.sdk.BW() != null) {
                this.sdk.BW().I(eVar.getPrivacySandboxImpressionAttributionUrls());
            }
        }
    }

    public void trackVideoEnd(com.applovin.impl.sdk.ad.e eVar, long j, int i, boolean z) {
        if (eVar == null) {
            if (x.Fn()) {
                this.logger.i("AppLovinAdService", "Unable to track video end. No ad specified");
                return;
            }
            return;
        }
        if (x.Fn()) {
            this.logger.f("AppLovinAdService", "Tracking video end on ad...");
        }
        List<com.applovin.impl.sdk.d.a> listHg = eVar.Hg();
        if (listHg == null || listHg.isEmpty()) {
            if (x.Fn()) {
                this.logger.h("AppLovinAdService", "Unable to submit persistent postback for AD #" + eVar.getAdIdNumber() + ". Missing video end tracking URL.");
                return;
            }
            return;
        }
        String string = Long.toString(System.currentTimeMillis());
        for (com.applovin.impl.sdk.d.a aVar : listHg) {
            if (StringUtils.isValidString(aVar.JK())) {
                String strA = a(aVar.JK(), j, i, string, z);
                String strA2 = a(aVar.Iv(), j, i, string, z);
                if (strA != null) {
                    a(new com.applovin.impl.sdk.d.a(strA, strA2));
                } else if (x.Fn()) {
                    this.logger.i("AppLovinAdService", "Failed to parse url: " + aVar.JK());
                }
            } else if (x.Fn()) {
                this.logger.h("AppLovinAdService", "Requested a postback dispatch for an empty video end URL; nothing to do...");
            }
        }
    }
}
