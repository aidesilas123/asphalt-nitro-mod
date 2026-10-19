package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.14, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass14 {
    public static byte[] A00;
    public static String[] A01 = {"qHmRz", "buvn2cesYrN8zmkoMAJdpkbnyQRY3iAF", "x7vS8I9TWcDRkC3QyQGWlMzhObF4g2wW", "AIjy2jeTbkREqnWnmOA9dVfWABJZ", "IfUpOWHYsX9n2UOxpamTmBNI3XVXxi7a", "s9Ktc", "3piv7SWQV7vtTtwTZRFeo4G9v1NaSSob", "iW7v8IxehIW1LC67DBoujqNPrB3dw9pM"};

    static {
        A03();
    }

    public static AnonymousClass12 A00(YA ya, JSONObject jSONObject, String str) {
        return A01(ya, jSONObject, str, false, -1, 0);
    }

    public static AnonymousClass12 A01(YA ya, JSONObject jSONObject, String str, boolean z, int i, int i2) {
        if (jSONObject == null) {
            return new AnonymousClass12();
        }
        C1138Ki.A02(ya, A02(0, 23, 77));
        String strOptString = jSONObject.optString(A02(371, 10, 84));
        int iOptInt = jSONObject.optInt(A02(116, 12, 73), 0);
        String strOptString2 = jSONObject.optString(A02(253, 13, 84));
        String strA02 = L0.A02(jSONObject, A02(266, 12, 117));
        Uri uriA00 = TextUtils.isEmpty(strA02) ? null : C1132Kc.A00(strA02);
        String strA022 = L0.A02(jSONObject, A02(128, 4, 27));
        String strA01 = LF.A01(strA022);
        String strA023 = L0.A02(jSONObject, A02(101, 15, 115));
        String strA024 = L0.A02(jSONObject, A02(485, 5, 93));
        String strA025 = L0.A02(jSONObject, A02(477, 8, 5));
        String strA026 = L0.A02(jSONObject, A02(278, 8, 19));
        String strA027 = L0.A02(jSONObject, A02(431, 14, 38));
        String strA028 = L0.A02(jSONObject, A02(295, 16, 116));
        String strA029 = L0.A02(jSONObject, A02(445, 21, 93));
        String strA0210 = L0.A02(jSONObject, A02(87, 14, 42));
        String strA0211 = L0.A02(jSONObject, A02(351, 20, 77));
        String strA0212 = L0.A02(jSONObject, A02(335, 16, 70));
        String strA0213 = L0.A02(jSONObject, A02(318, 17, 98));
        String strA0214 = L0.A02(jSONObject, A02(132, 14, 22));
        C1004Ez c1004EzA02 = C1004Ez.A02(jSONObject, ya);
        J4 j4A00 = J4.A00(jSONObject.optJSONObject(A02(286, 4, 64)));
        J4 j4A002 = J4.A00(jSONObject.optJSONObject(A02(290, 5, 93)));
        J5 j5A00 = J5.A00(jSONObject.optJSONObject(A02(466, 11, 125)));
        String strA0215 = L0.A02(jSONObject, A02(490, 15, 84));
        boolean zOptBoolean = jSONObject.optBoolean(A02(238, 15, 6));
        boolean zOptBoolean2 = jSONObject.optBoolean(A02(219, 19, 21));
        int iOptInt2 = jSONObject.optInt(A02(TTAdConstant.LANDING_PAGE_TYPE_CODE, 25, 21), 4);
        int iOptInt3 = jSONObject.optInt(A02(381, 25, 112), 0);
        int iOptInt4 = jSONObject.optInt(A02(569, 31, 30), 0);
        int iOptInt5 = jSONObject.optInt(A02(600, 26, 108), 1000);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(53, 15, 6));
        J4 j4A003 = jSONObjectOptJSONObject != null ? J4.A00(jSONObjectOptJSONObject) : null;
        String strA0216 = L0.A02(jSONObject, A02(68, 19, 17));
        EnumC06590i enumC06590iA00 = C06610k.A00(jSONObject);
        Collection<String> collectionA03 = C06610k.A03(ya, jSONObject);
        String strA0217 = L0.A02(jSONObject, A02(560, 9, 56));
        long jOptLong = jSONObject.optLong(A02(536, 24, 95), -1L);
        String strA0218 = L0.A02(jSONObject, A02(IronSourceError.ERROR_NON_EXISTENT_INSTANCE, 9, 77));
        String strA0219 = A02(505, 22, 61);
        J9 j9 = !jSONObject.has(strA0219) ? J9.A03 : jSONObject.optBoolean(strA0219) ? J9.A05 : J9.A04;
        boolean zOptBoolean3 = jSONObject.optBoolean(A02(FacebookRequestErrorClassification.EC_INVALID_TOKEN, 29, 72));
        int iOptInt6 = jSONObject.optInt(A02(154, 36, 110), 100);
        ArrayList arrayList = null;
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A02(146, 8, 0));
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                int length = jSONArrayOptJSONArray.length();
                ArrayList arrayList2 = new ArrayList(length);
                for (int i3 = 0; i3 < length; i3++) {
                    try {
                        arrayList2.add(A01(ya, jSONArrayOptJSONArray.getJSONObject(i3), str, true, i3, length));
                    } catch (JSONException e2) {
                        e = e2;
                        if (A01[6].charAt(19) != 'e') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A01;
                        strArr[0] = "nA4Cb";
                        strArr[5] = "npWbY";
                        arrayList = arrayList2;
                        ya.A07().A9M(A02(311, 7, 91), C08417x.A29, new C08427y(e));
                        Log.e(C1581ah.A0C, A02(23, 30, 50), e);
                        return new AnonymousClass12(strA0216, strA01, strA022, strA023, strA024, strA025, strA026, strA027, strA028, strA029, strA0210, strA0211, strA0212, strA0213, strA0214, j4A003, c1004EzA02, j4A00, j4A002, j5A00, strA0217, strA0218, jOptLong, j9, z, i, i2, arrayList, str, strOptString, iOptInt, strOptString2, uriA00, strA0215, zOptBoolean, zOptBoolean2, iOptInt3, iOptInt2, iOptInt4, iOptInt5, enumC06590iA00, collectionA03, iOptInt6, zOptBoolean3);
                    }
                }
                arrayList = arrayList2;
            }
        } catch (JSONException e3) {
            e = e3;
        }
        return new AnonymousClass12(strA0216, strA01, strA022, strA023, strA024, strA025, strA026, strA027, strA028, strA029, strA0210, strA0211, strA0212, strA0213, strA0214, j4A003, c1004EzA02, j4A00, j4A002, j5A00, strA0217, strA0218, jOptLong, j9, z, i, i2, arrayList, str, strOptString, iOptInt, strOptString2, uriA00, strA0215, zOptBoolean, zOptBoolean2, iOptInt3, iOptInt2, iOptInt4, iOptInt5, enumC06590iA00, collectionA03, iOptInt6, zOptBoolean3);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 112);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-2, 50, 33, 38, 34, 43, 32, 34, -35, Ascii.VT, 34, 49, 52, 44, 47, 40, -35, 9, 44, Ascii.RS, 33, 34, 33, -9, Ascii.DLE, 3, 4, Ascii.SO, 7, -62, Ascii.SYN, 17, -62, Ascii.DC2, 3, Ascii.DC4, Ascii.NAK, 7, -62, 5, 3, Ascii.DC4, 17, Ascii.ETB, Ascii.NAK, 7, Ascii.SO, -62, 6, 3, Ascii.SYN, 3, -48, -41, -38, -43, -39, -34, -27, -33, -39, -37, -23, -43, -33, -39, -27, -28, -30, -27, -32, -28, -23, -16, -22, -28, -26, -12, -32, -19, -22, -17, -20, -32, -10, -13, -19, -5, -2, -7, Ascii.SO, Ascii.FF, -5, 8, Ascii.CR, 6, -5, Ascii.SO, 3, 9, 8, 68, 71, 89, 72, 85, 87, 76, 86, 72, 85, 66, 81, 68, 80, 72, Ascii.SUB, 39, Ascii.CAN, 37, 40, 32, 40, Ascii.CAN, 45, 50, 41, Ascii.RS, -19, -6, -17, 4, -23, -25, -14, -14, -27, -6, -11, -27, -25, -23, -6, -17, -11, -12, -45, -47, -30, -33, -27, -29, -43, -36, 65, 77, 76, 82, 63, 71, 76, 67, 80, 61, 84, 71, 67, 85, 63, 64, 71, 74, 71, 82, 87, 61, 65, 70, 67, 65, 73, 61, 71, 76, 82, 67, 80, 84, 63, 74, Ascii.ESC, 39, 38, 44, Ascii.EM, 33, 38, Ascii.GS, 42, Ascii.ETB, 46, 33, Ascii.GS, 47, Ascii.EM, Ascii.SUB, 33, 36, 33, 44, 49, Ascii.ETB, Ascii.GS, 38, Ascii.EM, Ascii.SUB, 36, Ascii.GS, Ascii.FS, -22, -13, -26, -25, -15, -22, -28, -8, -13, -26, -11, -8, -19, -12, -7, -28, -15, -12, -20, -37, -28, -41, -40, -30, -37, -43, -20, -33, -37, -19, -43, -30, -27, -35, 41, 50, 39, 54, 61, 52, 56, 41, 40, 35, 39, 52, 49, 75, 71, 70, 73, 68, 72, 84, 82, 82, 70, 83, 73, -21, -24, -28, -25, -17, -20, -15, -24, Ascii.EM, 19, Ascii.US, Ascii.RS, 54, 58, 46, 52, 50, 80, 77, 82, 79, 67, 72, 73, 87, 71, 86, 77, 84, 88, 77, 83, 82, 59, 44, 61, 62, 52, 57, 50, 66, 51, 71, 69, 55, 49, 70, 68, 51, 64, 69, 62, 51, 70, 59, 65, 64, 38, 34, Ascii.ETB, 47, Ascii.NAK, 42, 40, Ascii.ETB, 36, 41, 34, Ascii.ETB, 42, Ascii.US, 37, 36, 45, 47, 44, 42, 44, 49, 34, 33, Ascii.FS, 49, 47, Ascii.RS, 43, 48, 41, Ascii.RS, 49, 38, 44, 43, 54, 41, 53, 57, 41, 55, 56, 35, 45, 40, 83, 78, 65, 80, 83, 72, 79, 84, 63, 67, 79, 77, 80, 82, 69, 83, 83, 63, 81, 85, 65, 76, 73, 84, 89, -8, -13, -26, -11, -8, -19, -12, -7, -28, -15, -12, -20, -28, -23, -22, -15, -26, -2, -28, -8, -22, -24, -12, -13, -23, 9, 5, -7, -1, -9, 2, -11, -7, 5, 4, 10, -5, Ascii.SO, 10, 64, 61, 60, 59, 64, 60, 63, 50, 49, 44, 65, 63, 46, 59, 64, 57, 46, 65, 54, 60, 59, 96, 97, 78, 95, 76, 95, 78, 97, 86, 91, 84, -24, -22, -41, -23, -34, -23, -31, -38, 65, 54, 65, 57, 50, 57, 55, 41, 40, 35, 54, 41, 52, 51, 54, 56, 35, 57, 54, 48, 35, Ascii.SYN, 17, Ascii.DC2, Ascii.FS, Ascii.FF, Ascii.SO, 34, 33, Ascii.FS, Ascii.GS, Ascii.EM, Ascii.SO, 38, Ascii.FF, Ascii.DC2, Ascii.ESC, Ascii.SO, Ascii.SI, Ascii.EM, Ascii.DC2, 17, 51, 38, 33, 34, 44, Ascii.FS, 42, 45, 33, 69, 56, 51, 52, 62, 46, 63, 65, 52, 59, 62, 48, 51, 46, 66, 56, 73, 52, 46, 49, 72, 67, 52, 66, Ascii.RS, 17, Ascii.FF, Ascii.CR, Ascii.ETB, 7, Ascii.GS, Ascii.SUB, Ascii.DC4, 4, -9, -13, 5, -17, -16, -9, -6, -9, 2, 7, -19, -15, -10, -13, -15, -7, -19, -9, -4, -9, 2, -9, -17, -6, -19, -14, -13, -6, -17, 7, 82, 69, 65, 83, 61, 62, 69, 72, 69, 80, 85, 59, 63, 68, 65, 63, 71, 59, 69, 74, 80, 65, 78, 82, 61, 72};
        String[] strArr = A01;
        if (strArr[1].charAt(29) != strArr[4].charAt(29)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "aYUm7";
        strArr2[5] = "aSssW";
    }
}
