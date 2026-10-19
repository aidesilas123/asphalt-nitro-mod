package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1115Jk {
    public static C1115Jk A00;
    public static byte[] A01;
    public static String[] A02 = {"Nd0aIJaSSdT6golxDxmvfQ8KGIhkioAs", "ixyRHf3ginhO64aTdthArc1g6ok2H3", "GbO21nRDfLqDtubwMBv4WZcS7UdykcI0", "mXXayHEFxYYogLv80iNIAWV0V8DSaho2", "P31SQSGtrqVfDfZK9ecLZSYzpsOr4NmF", "LoLWC0hqSx9uRqEUKclND68NLRAhrZnk", "BjBhbLG4paZ7rOUqjAFqxmQoWglNay8W", "K86adGKhBwKF7i3Zzr1zFaSNRf7F"};

    static {
        A05();
        A00 = new C1115Jk();
    }

    public static synchronized C1115Jk A00() {
        return A00;
    }

    private U6 A01(YA ya, JSONObject jSONObject, long j) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONArray(A04(151, 10, 78)).getJSONObject(0);
        C8G c8gA00 = C8G.A00(jSONObject2.getJSONObject(A04(115, 10, 70)));
        String strOptString = jSONObject2.optString(A04(130, 14, 18));
        String strOptString2 = jSONObject2.optString(A04(0, 19, 98));
        String strA04 = A04(100, 15, 87);
        C8F c8f = new C8F(c8gA00, strOptString, strOptString2, jSONObject2.has(strA04) ? jSONObject2.optString(strA04) : null);
        String strA042 = A04(26, 3, 57);
        if (jSONObject2.has(strA042)) {
            JSONArray jSONArray = jSONObject2.getJSONArray(strA042);
            int i = 0;
            while (true) {
                int length = jSONArray.length();
                String[] strArr = A02;
                if (strArr[5].charAt(22) == strArr[0].charAt(22)) {
                    String[] strArr2 = A02;
                    strArr2[5] = "EVHdYwJmDBIkQbvU6cH0jf8LCXZeDjo6";
                    strArr2[0] = "LqKeHeP2dtVwdsKCNOcbJj8gANtIspsD";
                    if (i >= length) {
                        break;
                    }
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    C1096Ip.A06(ya, jSONObject3, j, null);
                    String strOptString3 = jSONObject3.optString(A04(19, 7, 39));
                    String strOptString4 = jSONObject3.optString(A04(85, 15, 63));
                    JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject(A04(63, 4, 116));
                    JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray(A04(161, 8, 90));
                    if (jSONObjectOptJSONObject != null) {
                        c8f.A0B(new C8D(strOptString3, strOptString4, jSONObjectOptJSONObject, jSONArrayOptJSONArray));
                    } else {
                        ya.A0E().A4p(AdErrorType.UNKNOWN_ERROR.getErrorCode(), A04(67, 18, 82));
                    }
                    i++;
                } else {
                    throw new RuntimeException();
                }
            }
        }
        String strA043 = A04(47, 12, 116);
        if (jSONObject2.has(strA043)) {
            c8f.A0C(jSONObject2.getJSONObject(strA043));
        }
        return new U6(c8f, jSONObject.optString(A04(29, 18, 1)));
    }

    private U5 A02(JSONObject jSONObject) {
        return new U5(jSONObject.optString(A04(144, 7, 21), A04(0, 0, 87)), jSONObject.optInt(A04(59, 4, 3), 0), null);
    }

    private U5 A03(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONArray(A04(151, 10, 78)).getJSONObject(0);
            return new U5(jSONObject.optString(A04(144, 7, 21), A04(0, 0, 87)), jSONObject.optInt(A04(59, 4, 3), 0), new C8F(C8G.A00(jSONObject2.getJSONObject(A04(115, 10, 70))), jSONObject2.optString(A04(130, 14, 18)), jSONObject2.optString(A04(0, 19, 98)), null));
        } catch (JSONException unused) {
            return A02(jSONObject);
        }
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 119);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A01 = new byte[]{116, 113, 74, 103, 112, 101, 122, 103, 97, 124, 123, 114, 74, 118, 122, 123, 115, 124, 114, 49, 52, 49, 32, 36, 53, 34, 47, 42, 61, Ascii.ETB, Ascii.CAN, 41, 0, Ascii.ETB, Ascii.SUB, Ascii.US, Ascii.DC2, Ascii.ETB, 2, Ascii.US, Ascii.EM, Ascii.CAN, 41, 3, 3, Ascii.US, Ascii.DC2, 96, 107, 98, 106, 109, 92, 115, 98, 113, 98, 110, 112, Ascii.ETB, Ascii.ESC, Ascii.DLE, 17, 103, 98, 119, 98, 65, 68, 81, 68, 106, 71, 79, 64, 70, 81, 5, 76, 86, 5, 75, 80, 73, 73, 44, 41, 60, 41, Ascii.ETB, 37, 39, 44, 45, 36, Ascii.ETB, 60, 49, 56, 45, 68, 67, 76, Ascii.DEL, 84, 69, 83, 84, Ascii.DEL, 67, 79, 78, 70, 73, 71, 85, 84, 87, 88, 95, 88, 69, 88, 94, 95, 74, 93, 93, 64, 93, 3, 0, 4, 17, Ascii.DLE, Ascii.ETB, 0, 58, 6, 10, Ascii.VT, 3, Ascii.FF, 2, Ascii.SI, 7, 17, 17, 3, 5, 7, 73, 85, 88, 90, 92, 84, 92, 87, 77, 74, 89, 95, 76, 78, 70, 72, 95, 94, 69, 72, 65, 84};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.C1117Jm A06(com.facebook.ads.redexgen.X.YA r8, java.lang.String r9, long r10) throws org.json.JSONException {
        /*
            r7 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 != 0) goto L5a
            org.json.JSONObject r4 = new org.json.JSONObject
            r4.<init>(r9)
            r2 = 169(0xa9, float:2.37E-43)
            r1 = 4
            r0 = 70
            java.lang.String r0 = A04(r2, r1, r0)
            java.lang.String r6 = r4.optString(r0)
            int r5 = r6.hashCode()
            r2 = 125(0x7d, float:1.75E-43)
            r1 = 5
            r0 = 88
            java.lang.String r3 = A04(r2, r1, r0)
            switch(r5) {
                case 96432: goto L37;
                case 96784904: goto L48;
                default: goto L28;
            }
        L28:
            r0 = -1
        L29:
            switch(r0) {
                case 0: goto L50;
                case 1: goto L55;
                default: goto L2c;
            }
        L2c:
            org.json.JSONObject r0 = r4.optJSONObject(r3)
            if (r0 == 0) goto L5a
            com.facebook.ads.redexgen.X.U5 r0 = r7.A02(r0)
            return r0
        L37:
            r2 = 26
            r1 = 3
            r0 = 57
            java.lang.String r0 = A04(r2, r1, r0)
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L28
            r0 = 0
            goto L29
        L48:
            boolean r0 = r6.equals(r3)
            if (r0 == 0) goto L28
            r0 = 1
            goto L29
        L50:
            com.facebook.ads.redexgen.X.U6 r0 = r7.A01(r8, r4, r10)
            return r0
        L55:
            com.facebook.ads.redexgen.X.U5 r0 = r7.A03(r4)
            return r0
        L5a:
            com.facebook.ads.redexgen.X.Jl r1 = com.facebook.ads.redexgen.X.EnumC1116Jl.A04
            com.facebook.ads.redexgen.X.Jm r0 = new com.facebook.ads.redexgen.X.Jm
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1115Jk.A06(com.facebook.ads.redexgen.X.YA, java.lang.String, long):com.facebook.ads.redexgen.X.Jm");
    }
}
