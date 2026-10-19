package com.applovin.impl.mediation.debugger.a;

import androidx.annotation.Nullable;
import com.amazon.device.ads.DTBAdSize;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.gameloft.adsmanager.JavaUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private final String aoj;

    @Nullable
    private final DTBAdSize aok;

    private enum a {
        VIDEO,
        DISPLAY,
        INTERSTITIAL
    }

    public b(String str, @Nullable JSONObject jSONObject, MaxAdFormat maxAdFormat) {
        this.aoj = str;
        this.aok = a(JsonUtils.getInt(jSONObject, "type", a(maxAdFormat).ordinal()), maxAdFormat, str);
    }

    @Nullable
    private DTBAdSize a(int i, MaxAdFormat maxAdFormat, String str) {
        try {
            if (a.VIDEO.ordinal() == i) {
                return new DTBAdSize.DTBVideo(JavaUtils.Constants.BANNER_WIDTH_DP, 480, str);
            }
            if (a.DISPLAY.ordinal() == i) {
                return new DTBAdSize(maxAdFormat.getSize().getWidth(), maxAdFormat.getSize().getHeight(), str);
            }
            if (a.INTERSTITIAL.ordinal() == i) {
                return new DTBAdSize.DTBInterstitialAdSize(str);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private a a(MaxAdFormat maxAdFormat) {
        return maxAdFormat.isAdViewAd() ? a.DISPLAY : a.INTERSTITIAL;
    }

    @Nullable
    public DTBAdSize uF() {
        return this.aok;
    }
}
