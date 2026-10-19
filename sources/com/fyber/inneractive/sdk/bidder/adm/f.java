package com.fyber.inneractive.sdk.bidder.adm;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.bidder.adm.AdmParametersOuterClass$AdmParameters;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.ImpressionData;
import com.fyber.inneractive.sdk.factories.b;
import com.fyber.inneractive.sdk.ignite.k;
import com.fyber.inneractive.sdk.network.n;
import com.fyber.inneractive.sdk.network.n0;
import com.fyber.inneractive.sdk.network.q0;
import com.fyber.inneractive.sdk.network.s0;
import com.fyber.inneractive.sdk.response.j;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.m;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class f implements j {
    public AdmParametersOuterClass$AdmParameters a;
    public final String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1914d;

    public interface a {
    }

    public f(String str, String str2) {
        this.b = str;
        this.f1914d = str2;
    }

    public static void a(f fVar, a aVar, s sVar) {
        AdmParametersOuterClass$AdmParameters admParametersOuterClass$AdmParameters = fVar.a;
        com.fyber.inneractive.sdk.response.e eVar = null;
        String markupUrl = (admParametersOuterClass$AdmParameters == null || !admParametersOuterClass$AdmParameters.hasMarkupUrl()) ? null : fVar.a.getMarkupUrl();
        if (TextUtils.isEmpty(markupUrl)) {
            m.b.post(new e(fVar, aVar));
            return;
        }
        try {
            AdmParametersOuterClass$AdmParameters admParametersOuterClass$AdmParameters2 = fVar.a;
            int iA = admParametersOuterClass$AdmParameters2 != null ? admParametersOuterClass$AdmParameters2.getAdType().a() : AdmParametersOuterClass$AdmParameters.a.OTHER.a();
            com.fyber.inneractive.sdk.response.a aVarA = com.fyber.inneractive.sdk.response.a.a(iA);
            if (aVarA == null) {
                aVarA = com.fyber.inneractive.sdk.response.a.RETURNED_ADTYPE_MRAID;
            }
            com.fyber.inneractive.sdk.response.b bVarA = b.a.a.a(aVarA);
            if (bVarA != null) {
                bVarA.a((n) null);
                fVar.a(bVarA);
                eVar = bVarA.a;
            } else {
                IAlog.a("failed parse adm network request with no input stream - received ad type %s does not have an appropriate parser", Integer.valueOf(iA));
            }
        } catch (Exception e2) {
            IAlog.a("failed parse adm network request with no input stream", e2, new Object[0]);
        }
        com.fyber.inneractive.sdk.response.e eVar2 = eVar;
        n0 n0Var = new n0(new c(fVar, aVar, eVar2), markupUrl, fVar, sVar, eVar2);
        n0Var.f2105d = new d(fVar);
        IAConfigManager.M.s.a.offer(n0Var);
        n0Var.a(q0.QUEUED);
    }

    public static boolean a(f fVar, Exception exc) {
        fVar.getClass();
        return (exc instanceof s0) && ((s0) exc).a == 404;
    }

    @Override // com.fyber.inneractive.sdk.response.j
    public String a() {
        return this.c;
    }

    @Override // com.fyber.inneractive.sdk.response.j
    public void a(com.fyber.inneractive.sdk.response.b bVar) {
        String str;
        String appBundleId;
        String str2;
        String string;
        Integer num;
        String str3;
        String str4;
        long j;
        int pixelPercent;
        int pixelDuration;
        String pixelImpressionUrl;
        bVar.a.B = true;
        IAConfigManager.M.x.f1956e = true;
        ImpressionData impressionData = new ImpressionData();
        AdmParametersOuterClass$AdmParameters admParametersOuterClass$AdmParameters = this.a;
        if (admParametersOuterClass$AdmParameters == null) {
            return;
        }
        int iA = admParametersOuterClass$AdmParameters.getAdType().a();
        if (this.a.hasErrorMessage()) {
            this.a.getErrorMessage();
        }
        String sessionId = this.a.hasSessionId() ? this.a.getSessionId() : null;
        Long lValueOf = this.a.hasContentId() ? Long.valueOf(this.a.getContentId()) : null;
        if (this.a.hasPublisherId()) {
            this.a.getPublisherId();
        }
        Integer numValueOf = this.a.hasAdWidth() ? Integer.valueOf(this.a.getAdWidth()) : null;
        Integer numValueOf2 = this.a.hasAdHeight() ? Integer.valueOf(this.a.getAdHeight()) : null;
        String sdkImpressionUrl = this.a.hasSdkImpressionUrl() ? this.a.getSdkImpressionUrl() : null;
        String sdkClickUrl = this.a.hasSdkClickUrl() ? this.a.getSdkClickUrl() : null;
        Integer numValueOf3 = this.a.hasAdExpirationInterval() ? Integer.valueOf(this.a.getAdExpirationInterval()) : null;
        String adCompletionUrl = this.a.hasAdCompletionUrl() ? this.a.getAdCompletionUrl() : null;
        bVar.b = this.a.hasAdUnitId() ? this.a.getAdUnitId() : null;
        this.a.getAdUnitType().name().toLowerCase();
        String lowerCase = this.a.hasAdUnitId() ? this.a.getAdUnitDisplayType().name().toLowerCase() : null;
        String adNetworkName = this.a.hasAdNetworkName() ? this.a.getAdNetworkName() : null;
        Long lValueOf2 = this.a.hasAdNetworkId() ? Long.valueOf(this.a.getAdNetworkId()) : null;
        String creativeId = this.a.hasCreativeId() ? this.a.getCreativeId() : null;
        String adDomain = this.a.hasAdDomain() ? this.a.getAdDomain() : null;
        if (this.a.hasAppBundleId()) {
            appBundleId = this.a.getAppBundleId();
            str = lowerCase;
        } else {
            str = lowerCase;
            appBundleId = null;
        }
        String campaignId = this.a.hasCampaignId() ? this.a.getCampaignId() : null;
        if (this.a.hasPricingValue()) {
            string = Double.toString(this.a.getPricingValue());
            str2 = adCompletionUrl;
        } else {
            str2 = adCompletionUrl;
            string = null;
        }
        String strValueOf = this.a.hasSpotId() ? String.valueOf(this.a.getSpotId()) : null;
        impressionData.setCpmValue(string);
        impressionData.setCurrency("USD");
        if (this.a.hasMrcData()) {
            if (this.a.getMrcData().hasPixelPercent()) {
                pixelPercent = this.a.getMrcData().getPixelPercent();
                str4 = sdkClickUrl;
            } else {
                str4 = sdkClickUrl;
                pixelPercent = 0;
            }
            if (this.a.getMrcData().hasPixelDuration()) {
                pixelDuration = this.a.getMrcData().getPixelDuration();
                str3 = sdkImpressionUrl;
            } else {
                str3 = sdkImpressionUrl;
                pixelDuration = -1;
            }
            if (this.a.getMrcData().hasPixelImpressionUrl()) {
                pixelImpressionUrl = this.a.getMrcData().getPixelImpressionUrl();
                num = numValueOf2;
            } else {
                num = numValueOf2;
                pixelImpressionUrl = null;
            }
            com.fyber.inneractive.sdk.response.e eVar = bVar.a;
            eVar.t = pixelPercent;
            eVar.u = pixelDuration;
            eVar.v = pixelImpressionUrl;
        } else {
            num = numValueOf2;
            str3 = sdkImpressionUrl;
            str4 = sdkClickUrl;
        }
        Boolean boolValueOf = this.a.hasSkipMode() ? Boolean.valueOf(this.a.getSkipMode()) : null;
        if (bVar.b()) {
            bVar.a.q = this.a.toString();
        }
        com.fyber.inneractive.sdk.response.e eVar2 = bVar.a;
        String string2 = numValueOf3 != null ? numValueOf3.toString() : "";
        eVar2.getClass();
        try {
            j = Long.parseLong(string2);
        } catch (NumberFormatException unused) {
            j = 20;
        }
        long j2 = j;
        eVar2.b = j2;
        Integer num2 = numValueOf;
        Boolean bool = boolValueOf;
        eVar2.a = eVar2.c + TimeUnit.MINUTES.toMillis(j2);
        impressionData.setImpressionId(sessionId);
        impressionData.setDemandSource(adNetworkName);
        bVar.a.f2719d = lValueOf != null ? lValueOf.toString() : "";
        bVar.a.getClass();
        bVar.a.getClass();
        com.fyber.inneractive.sdk.response.e eVar3 = bVar.a;
        eVar3.y = appBundleId;
        eVar3.z = this.f1914d;
        eVar3.A = strValueOf;
        if (lValueOf2 != null) {
            impressionData.setDemandId(lValueOf2);
        }
        com.fyber.inneractive.sdk.response.e eVar4 = bVar.a;
        eVar4.f2722g = iA;
        if (num2 != null) {
            eVar4.f2720e = num2.intValue();
        }
        if (num != null) {
            bVar.a.f2721f = num.intValue();
        }
        com.fyber.inneractive.sdk.response.e eVar5 = bVar.a;
        eVar5.k = str3;
        eVar5.l = str4;
        eVar5.o = str2;
        eVar5.m = bVar.b;
        try {
            eVar5.n = UnitDisplayType.fromValue(str);
        } catch (IllegalArgumentException unused2) {
            bVar.a.n = UnitDisplayType.INTERSTITIAL;
        }
        if (!TextUtils.isEmpty(creativeId)) {
            impressionData.setCreativeId(creativeId);
        }
        if (!TextUtils.isEmpty(adDomain)) {
            impressionData.setAdvertiserDomain(adDomain);
        }
        if (!TextUtils.isEmpty(campaignId)) {
            impressionData.setCampaignId(campaignId);
        }
        impressionData.setCountry(com.fyber.inneractive.sdk.util.j.g());
        bVar.a.r = impressionData;
        bVar.a.w = bool == null ? -1 : bool.booleanValue() ? 1 : 0;
        String igniteInstallUrl = this.a.hasIgniteInstallUrl() ? this.a.getIgniteInstallUrl() : null;
        if (!TextUtils.isEmpty(igniteInstallUrl)) {
            bVar.a.E = igniteInstallUrl;
        }
        com.fyber.inneractive.sdk.response.e eVar6 = bVar.a;
        k kVar = k.NONE;
        AdmParametersOuterClass$AdmParameters admParametersOuterClass$AdmParameters2 = this.a;
        if (admParametersOuterClass$AdmParameters2 != null) {
            AdmParametersOuterClass$AdmParameters.f igniteMode = admParametersOuterClass$AdmParameters2.hasIgniteMode() ? this.a.getIgniteMode() : null;
            if (igniteMode != null && !igniteMode.equals(AdmParametersOuterClass$AdmParameters.f.NONE)) {
                kVar = igniteMode.equals(AdmParametersOuterClass$AdmParameters.f.SINGLETAP) ? k.SINGLE_TAP : k.TRUE_SINGLE_TAP;
            }
        }
        eVar6.a(kVar);
        String igniteLauncherActivity = this.a.hasIgniteLauncherActivity() ? this.a.getIgniteLauncherActivity() : null;
        if (!TextUtils.isEmpty(igniteLauncherActivity)) {
            bVar.a.G = igniteLauncherActivity;
        }
        Boolean boolValueOf2 = this.a.hasBrandBidderDontShowEndcard() ? Boolean.valueOf(this.a.getBrandBidderDontShowEndcard()) : null;
        if (boolValueOf2 != null) {
            bVar.a.C = boolValueOf2.booleanValue() ? "1" : "0";
        }
        String brandBidderCtaText = this.a.getBrandBidderCtaText();
        if (!TextUtils.isEmpty(brandBidderCtaText)) {
            bVar.a.D = brandBidderCtaText;
        }
        Boolean boolValueOf3 = this.a.hasMraidVideoOMSignal() ? Boolean.valueOf(this.a.getMraidVideoOMSignal()) : null;
        if (boolValueOf3 != null) {
            bVar.a.H = boolValueOf3.booleanValue();
        }
    }

    public int b() {
        AdmParametersOuterClass$AdmParameters admParametersOuterClass$AdmParameters = this.a;
        return admParametersOuterClass$AdmParameters != null ? admParametersOuterClass$AdmParameters.getAdType().a() : AdmParametersOuterClass$AdmParameters.a.OTHER.a();
    }
}
