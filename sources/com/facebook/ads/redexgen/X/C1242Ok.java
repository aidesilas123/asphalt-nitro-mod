package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ok, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1242Ok {
    public static byte[] A00;
    public static String[] A01 = {"CXRchRuqobcH0303RF", "0PvsG2xJSmQLgGTcWH9EYe7sEgRs7pRt", "Ep2muPcKb5OPprn584rkOKVS7ZwPor7u", "ESdTFl6hgzo0PrNou", "ifIc3126Iu24LMQAqXU9MKX3mrrg1qWL", "gYyPZy3RrUjZ7", "cRp6DEQTFSLuVCLvwOm8", "Iag0U1Rq9Q0ZydVPffrz8fjunI2ky4CH"};

    static {
        A04();
    }

    public static WebResourceResponse A00(YA ya, WebResourceRequest webResourceRequest, Uri uri, String str, HashMap<String, String> map) throws IOException {
        String strA02;
        String strA022 = A02(85, 5, 49);
        C1412Uz c1412UzA0F = QN.A05(ya.A01()).A0F(ya);
        C6Q.A0H(ya, uri.toString());
        try {
            C1243Ol c1243Ol = new C1243Ol(ya.A01(), uri, c1412UzA0F);
            int iAvailable = c1243Ol.available();
            if (iAvailable <= 0) {
                A05(ya, 1, new Pair[]{new Pair(A02(61, 9, 77), String.valueOf(iAvailable))});
                return null;
            }
            String strA03 = A03(webResourceRequest.getRequestHeaders());
            if (strA03 == null) {
                ya.A0E().A5J();
                A06(map, iAvailable);
                return new WebResourceResponse(str, null, 200, A02(44, 2, 15), map, c1243Ol);
            }
            try {
                C1241Oj c1241OjA01 = A01(strA03);
                if (c1241OjA01.A03) {
                    int i = c1241OjA01.A01;
                    int i2 = c1241OjA01.A00 == -1 ? iAvailable - 1 : c1241OjA01.A00;
                    A06(map, iAvailable);
                    map.put(A02(31, 13, 81), A02(75, 6, 17) + i + A02(1, 1, 52) + i2 + A02(2, 1, 110) + iAvailable);
                    ya.A0E().A5J();
                    return new WebResourceResponse(str, null, 206, A02(46, 15, 36), map, c1243Ol);
                }
                Pair[] pairArr = new Pair[1];
                if (c1241OjA01.A02 != null) {
                    strA02 = c1241OjA01.A02;
                } else {
                    if (A01[2].charAt(11) != 'P') {
                        throw new RuntimeException();
                    }
                    A01[0] = "OMRpqA07uUbGIz9l3e";
                    strA02 = A02(90, 4, 76);
                }
                pairArr[0] = new Pair(A02(94, 5, 44), strA02);
                A05(ya, 0, pairArr);
                return null;
            } catch (NumberFormatException e2) {
                A05(ya, 3, new Pair[]{new Pair(strA022, e2.toString())});
                return null;
            }
        } catch (IOException e3) {
            A05(ya, 2, new Pair[]{new Pair(strA022, e3.toString())});
            return null;
        }
    }

    public static C1241Oj A01(String str) {
        if (str == null) {
            C1241Oj c1241Oj = new C1241Oj();
            c1241Oj.A03 = false;
            c1241Oj.A02 = null;
            return c1241Oj;
        }
        String[] strArrSplit = str.split(A02(3, 1, 90));
        if (strArrSplit.length >= 2) {
            if (A02(70, 5, 60).equals(strArrSplit[0].toLowerCase(Locale.US).trim())) {
                if (strArrSplit[1].trim().split(A02(0, 1, 2)).length != 1) {
                    C1241Oj c1241Oj2 = new C1241Oj();
                    c1241Oj2.A03 = false;
                    c1241Oj2.A02 = str;
                    return c1241Oj2;
                }
                String[] strArrSplit2 = strArrSplit[1].trim().split(A02(1, 1, 52));
                C1241Oj c1241Oj3 = new C1241Oj();
                c1241Oj3.A03 = true;
                c1241Oj3.A02 = str;
                c1241Oj3.A01 = TextUtils.isEmpty(strArrSplit2[0]) ? 0 : Integer.parseInt(strArrSplit2[0]);
                if (strArrSplit2.length > 1) {
                    c1241Oj3.A00 = TextUtils.isEmpty(strArrSplit2[1]) ? -1 : Integer.parseInt(strArrSplit2[1]);
                } else {
                    c1241Oj3.A00 = -1;
                }
                return c1241Oj3;
            }
        }
        C1241Oj c1241Oj4 = new C1241Oj();
        c1241Oj4.A03 = false;
        c1241Oj4.A02 = str;
        return c1241Oj4;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 91);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A03(Map<String, String> map) {
        for (String str : map.keySet()) {
            if (A02(94, 5, 44).equals(str.toLowerCase(Locale.US))) {
                return map.get(str);
            }
        }
        return null;
    }

    public static void A04() {
        A00 = new byte[]{-119, -68, -8, -14, -50, -16, -16, -14, -3, 1, -70, -33, -18, -5, -12, -14, 0, -46, -2, -3, 3, -12, -3, 3, -68, -37, -12, -3, -10, 3, -9, -17, Ascii.ESC, Ascii.SUB, 32, 17, Ascii.SUB, 32, -39, -2, Ascii.CR, Ascii.SUB, 19, 17, -71, -75, -49, -32, -15, -13, -24, -32, -21, -97, -62, -18, -19, -13, -28, -19, -13, 9, Ascii.RS, 9, 17, Ascii.DC4, 9, 10, Ascii.DC4, Ascii.CR, -7, Ascii.DLE, Ascii.VT, -4, 10, -50, -27, -32, -47, -33, -116, 4, Ascii.DLE, 5, 6, -15, -2, -2, -5, -2, Ascii.NAK, Ascii.FS, 19, 19, -7, -24, -11, -18, -20};
    }

    public static void A05(YA ya, int i, Pair<String, String>[] pairArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A02(81, 4, 70), i);
            for (Pair<String, String> pair : pairArr) {
                jSONObject.put((String) pair.first, pair.second);
            }
        } catch (JSONException unused) {
        }
        ya.A0E().A5I(jSONObject.toString());
    }

    public static void A06(HashMap<String, String> map, int i) {
        map.put(A02(4, 13, 50), A02(70, 5, 60));
        map.put(A02(17, 14, 52), String.valueOf(i));
    }
}
