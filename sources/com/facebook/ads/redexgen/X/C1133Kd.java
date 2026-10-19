package com.facebook.ads.redexgen.X;

import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.RewardedVideoAd;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Kd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1133Kd {
    public static byte[] A00;

    static {
        A04();
    }

    public static int A00(YA ya, int i) {
        return C1123Jt.A00(ya).getInt(A01(0, 21, 2), i);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(YA ya, String str) {
        int iA00 = A00(ya, -1);
        if (iA00 == -1) {
            return null;
        }
        try {
            return new ExtraHints.Builder().extraData(A03(str, A01(47, 14, 49), Integer.valueOf(iA00))).build().getHints();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String A03(String str, String str2, Object obj) throws JSONException {
        String strA01 = A01(61, 2, 86);
        if (str != null) {
            strA01 = new JSONObject(str).getJSONObject(A01(42, 5, 31)).optString(A01(32, 10, 91), strA01);
        }
        JSONObject jSONObject = new JSONObject(strA01);
        jSONObject.put(str2, obj);
        return jSONObject.toString();
    }

    public static void A04() {
        A00 = new byte[]{121, 123, 110, 111, -120, 119, 126, 118, -120, 106, 109, 124, -120, 119, 120, -120, 108, 113, 106, 114, 119, -71, -73, -55, -71, -73, -70, -69, -70, -75, -73, -70, -25, -6, -10, -12, -29, -31, -26, -29, -10, -29, -82, -81, -76, -70, -71, -58, -57, -58, -69, -64, -71, -63, -58, -67, -68, -73, -71, -68, -53, -8, -6};
    }

    public static boolean A05(String str) throws JSONException {
        return str != null && new JSONObject(new JSONObject(str).getJSONObject(A01(42, 5, 31)).optString(A01(32, 10, 91), A01(61, 2, 86))).optBoolean(A01(21, 11, 47), false);
    }

    public final InterstitialAd A06(YA ya, String str, String str2) {
        if (ya == null) {
            return null;
        }
        try {
            InterstitialAd interstitialAd = new InterstitialAd(ya, str);
            interstitialAd.setExtraHints(new ExtraHints.Builder().extraData(A03(str2, A01(21, 11, 47), true)).build());
            return interstitialAd;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final RewardedVideoAd A07(YA ya, String str, String str2) {
        if (ya == null) {
            return null;
        }
        try {
            RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(ya, str);
            rewardedVideoAd.setExtraHints(new ExtraHints.Builder().extraData(A03(str2, A01(21, 11, 47), true)).build());
            return rewardedVideoAd;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final void A08(YA ya, boolean z) {
        String strA01 = A01(0, 21, 2);
        C1123Jt.A00(ya).edit().putInt(strA01, z ? 0 : C1123Jt.A00(ya).getInt(strA01, 0) + 1).apply();
    }

    public final boolean A09(YA ya, String str, int i) {
        if (i <= 0) {
            return false;
        }
        try {
            if (!A05(str)) {
                return A00(ya, i + (-1)) >= i + (-1);
            }
        } catch (JSONException unused) {
        }
        return false;
    }
}
