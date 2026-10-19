package com.fyber.inneractive.sdk.response;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.ImpressionData;
import com.fyber.inneractive.sdk.network.m;
import com.fyber.inneractive.sdk.network.n;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.q;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class k implements j {
    public final n a;

    public k(n nVar) {
        this.a = nVar;
    }

    @Override // com.fyber.inneractive.sdk.response.j
    public String a() {
        return this.a.e().toString();
    }

    public final String a(Map<String, String> map, m mVar) {
        String lowerCase = mVar.key.toLowerCase();
        String str = map.get(lowerCase);
        IAlog.a(this);
        int i = IAlog.a;
        IAlog.a(1, null, "%s %s : %s", "RESPONSE_HEADER", lowerCase, str);
        return str;
    }

    @Override // com.fyber.inneractive.sdk.response.j
    public void a(b bVar) {
        long j;
        bVar.a.B = false;
        IAConfigManager.M.x.f1956e = false;
        ImpressionData impressionData = new ImpressionData();
        Map<String, String> mapT = this.a.t();
        String strA = a(mapT, m.RETURNED_AD_TYPE);
        a(mapT, m.ERROR_CODE);
        String strA2 = a(mapT, m.SESSION_ID);
        String strA3 = a(mapT, m.CONTENT_ID);
        a(mapT, m.PUBLISHER_ID);
        String strA4 = a(mapT, m.WIDTH);
        String strA5 = a(mapT, m.HEIGHT);
        String strA6 = a(mapT, m.SDK_IMPRESSION_URL);
        String strA7 = a(mapT, m.SDK_CLICK_URL);
        String strA8 = a(mapT, m.AD_TIMEOUT);
        String strA9 = a(mapT, m.AD_COMPLETION_URL);
        bVar.b = a(mapT, m.AD_UNIT_ID);
        a(mapT, m.AD_UNIT_TYPE);
        String strA10 = a(mapT, m.AD_UNIT_DISPLAY_TYPE);
        String strA11 = a(mapT, m.AD_NETWORK);
        String strA12 = a(mapT, m.AD_NETWORK_ID);
        String strA13 = a(mapT, m.CREATIVE_ID);
        String strA14 = a(mapT, m.AD_DOMAIN);
        String strA15 = a(mapT, m.APP_BUNDLE);
        String strA16 = a(mapT, m.CAMPAIGN_ID);
        String strA17 = a(mapT, m.CPM_VALUE);
        String strA18 = a(mapT, m.CPM_CURRENCY);
        impressionData.setCpmValue(strA17);
        impressionData.setCurrency(strA18);
        String strA19 = a(mapT, m.BANNER_MRC_PERCENT);
        String strA20 = a(mapT, m.BANNER_MRC_DURATION);
        String strA21 = a(mapT, m.BANNER_MRC_IMPRESSION_URL);
        String strA22 = a(mapT, m.INTERSTITIAL_SKIP_MODE);
        String strA23 = a(mapT, m.IGNITE_INSTALL_URL);
        String strA24 = a(mapT, m.IGNITE_MODE);
        String strA25 = a(mapT, m.APP_BUNDLE_LAUNCHER);
        String strA26 = a(mapT, m.BRAND_BIDDER_SHOW_ENDCARD);
        String strA27 = a(mapT, m.BRAND_BIDDER_CTA_TEXT);
        String strA28 = a(mapT, m.MRAID_VIDEO_SIGNAL);
        if (bVar.b()) {
            bVar.a.p = mapT;
        }
        e eVar = bVar.a;
        eVar.getClass();
        try {
            j = Long.parseLong(strA8);
        } catch (NumberFormatException unused) {
            j = 20;
        }
        long j2 = j;
        eVar.b = j2;
        eVar.a = eVar.c + TimeUnit.MINUTES.toMillis(j2);
        impressionData.setImpressionId(strA2);
        impressionData.setDemandSource(strA11);
        e eVar2 = bVar.a;
        eVar2.f2719d = strA3;
        eVar2.y = strA15;
        if (!TextUtils.isEmpty(strA12)) {
            impressionData.setDemandId(Long.valueOf(strA12));
        }
        if (!TextUtils.isEmpty(strA)) {
            bVar.a.f2722g = Integer.valueOf(strA).intValue();
        }
        if (!TextUtils.isEmpty(strA4)) {
            bVar.a.f2720e = Integer.valueOf(strA4).intValue();
        }
        if (!TextUtils.isEmpty(strA5)) {
            bVar.a.f2721f = Integer.valueOf(strA5).intValue();
        }
        e eVar3 = bVar.a;
        eVar3.k = strA6;
        eVar3.l = strA7;
        eVar3.o = strA9;
        eVar3.m = bVar.b;
        try {
            eVar3.n = UnitDisplayType.fromValue(strA10);
        } catch (IllegalArgumentException unused2) {
            bVar.a.n = UnitDisplayType.INTERSTITIAL;
        }
        if (!TextUtils.isEmpty(strA13)) {
            impressionData.setCreativeId(strA13);
        }
        if (!TextUtils.isEmpty(strA14)) {
            impressionData.setAdvertiserDomain(strA14);
        }
        if (!TextUtils.isEmpty(strA16)) {
            impressionData.setCampaignId(strA16);
        }
        impressionData.setCountry(com.fyber.inneractive.sdk.util.j.g());
        e eVar4 = bVar.a;
        eVar4.r = impressionData;
        eVar4.t = q.a(strA19, 0);
        e eVar5 = bVar.a;
        float f2 = -1.0f;
        if (!TextUtils.isEmpty(strA20)) {
            try {
                f2 = Float.parseFloat(strA20);
            } catch (NumberFormatException unused3) {
            }
        }
        eVar5.u = f2;
        e eVar6 = bVar.a;
        eVar6.v = strA21;
        eVar6.w = q.a(strA22, -1);
        if (!TextUtils.isEmpty(strA23)) {
            bVar.a.E = strA23;
        }
        if (!TextUtils.isEmpty(strA24)) {
            bVar.a.a(com.fyber.inneractive.sdk.ignite.k.a(strA24));
        }
        if (!TextUtils.isEmpty(strA25)) {
            bVar.a.G = strA25;
        }
        if (!TextUtils.isEmpty(strA26)) {
            bVar.a.C = strA26;
        }
        if (!TextUtils.isEmpty(strA27)) {
            bVar.a.D = strA27;
        }
        bVar.a.H = "1".equals(strA28) || Boolean.parseBoolean(strA28);
    }
}
