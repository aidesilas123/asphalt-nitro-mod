package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.util.Pair;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ug, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1393Ug implements InterfaceC1084Id {
    public static byte[] A02;
    public static String[] A03 = {"4VJF", "NMiFc9mQHDdEdTYDts8ebbMyjIljV2c0", "gJxI4lQggzgG7l1t48TOLBAVsZm4smpW", "RC", "7emK", "VnvWTQ3PSRLSSOUq71E5D", "jZ42e8scbVg896gjqaujwC7", "gj"};
    public static final String A04;
    public Y9 A00;
    public InterfaceC1466Xe A01;

    static {
        A05();
        A04 = C1393Ug.class.getSimpleName();
    }

    public C1393Ug(Y9 y9, InterfaceC1466Xe interfaceC1466Xe) {
        this.A00 = y9;
        this.A01 = interfaceC1466Xe;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A03;
            if (strArr[0].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "6iaNxoAqzoeupDn53l2Cm";
            strArr2[6] = "N7vye13Dqewush4C3JTfsv4";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
            i4++;
        }
    }

    public static JSONArray A01(Y9 y9, JSONArray jSONArray, JSONArray jSONArray2) {
        int length = jSONArray != null ? 0 + jSONArray.length() : 0;
        if (jSONArray2 != null) {
            length += jSONArray2.length();
        }
        return A02(y9, jSONArray, jSONArray2, length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f9, code lost:
    
        if (r22 <= 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fb, code lost:
    
        if (r4 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fd, code lost:
    
        r9.put(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0100, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0101, code lost:
    
        if (r6 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0103, code lost:
    
        r9.put(r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONArray A02(com.facebook.ads.redexgen.X.Y9 r19, org.json.JSONArray r20, org.json.JSONArray r21, int r22) {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1393Ug.A02(com.facebook.ads.redexgen.X.Y9, org.json.JSONArray, org.json.JSONArray, int):org.json.JSONArray");
    }

    private JSONObject A03() {
        JSONArray jSONArrayA03;
        JSONObject jSONObjectA5u = this.A01.A5u();
        JSONArray jSONArrayA5t = this.A01.A5t();
        if (IR.A0P(this.A00) && (jSONArrayA03 = C08437z.A03(this.A00)) != null && jSONArrayA03.length() > 0) {
            Y9 y9 = this.A00;
            String[] strArr = A03;
            if (strArr[7].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[1] = "DqeH9SIpXFi3b8zfs8mhzwqF8zVFhPmm";
            strArr2[2] = "TV1z9woSYeZeWz7dxNs9KlrMFeTbS55S";
            jSONArrayA5t = A01(y9, jSONArrayA03, jSONArrayA5t);
        }
        JSONObject jSONObject = null;
        if (jSONArrayA5t != null) {
            try {
                jSONObject = new JSONObject();
                if (jSONObjectA5u != null) {
                    jSONObject.put(A00(439, 6, 32), jSONObjectA5u);
                }
                jSONObject.put(A00(387, 6, 28), jSONArrayA5t);
            } catch (JSONException unused) {
                return null;
            }
        }
        return jSONObject;
    }

    private JSONObject A04(int i) {
        int iA08;
        JSONArray jSONArrayA04;
        Pair<JSONObject, JSONArray> pairA80 = this.A01.A80(i);
        JSONObject jSONObject = (JSONObject) pairA80.first;
        JSONArray jSONArrayA02 = (JSONArray) pairA80.second;
        if (IR.A0P(this.A00) && (jSONArrayA04 = C08437z.A04(this.A00, (iA08 = IR.A08(this.A00)))) != null && jSONArrayA04.length() > 0) {
            jSONArrayA02 = A02(this.A00, jSONArrayA04, jSONArrayA02, i + iA08);
        }
        JSONObject jSONObject2 = null;
        if (jSONArrayA02 != null) {
            try {
                jSONObject2 = new JSONObject();
                if (jSONObject != null) {
                    jSONObject2.put(A00(439, 6, 32), jSONObject);
                }
                jSONObject2.put(A00(387, 6, 28), jSONArrayA02);
            } catch (JSONException unused) {
                return null;
            }
        }
        return jSONObject2;
    }

    public static void A05() {
        A02 = new byte[]{Ascii.NAK, 83, 90, 71, Ascii.NAK, 80, 67, 80, 91, 65, 124, 81, Ascii.NAK, 60, 111, 105, Ascii.DEL, Ascii.DEL, 121, 111, 111, 122, 105, 112, 112, 101, 50, 110, 101, 68, 77, 68, 85, 68, 69, 1, 68, 87, 68, 79, 85, 82, 1, 68, 89, 66, 68, 68, 69, 68, 69, 1, 83, 68, 85, 83, 88, 1, 77, 72, 76, 72, 85, Ascii.SI, 1, 98, 78, 84, 79, 85, Ascii.ESC, 1, 72, 123, 104, 99, 121, 45, 121, 116, 125, 104, 45, 125, Ascii.DEL, 98, 110, 104, 126, 126, 104, 105, 45, 111, 116, 45, 121, 101, 104, 45, 126, 104, Ascii.DEL, 123, 104, Ascii.DEL, 55, 45, 84, 115, 123, 126, 119, 118, 50, 102, 125, 50, 98, 115, 96, 97, 119, 50, 115, 124, 50, 119, 100, 119, 124, 102, 50, 123, 124, 50, 119, 100, 119, 124, 102, 97, 50, 115, 96, 96, 115, 107, 50, 116, 125, 96, 50, 118, 123, 97, 98, 115, 102, 113, 122, 50, 116, 115, 123, 126, 103, 96, 119, 60, 65, 119, 96, 100, 119, 96, 50, 98, 96, 125, 113, 119, 97, 97, 119, 118, 50, 119, 100, 119, 124, 102, 91, 118, 50, 50, 4, 19, Ascii.ETB, 4, 19, 65, 19, 4, Ascii.NAK, Ascii.DC4, 19, Ascii.SI, 4, 5, 65, Ascii.SI, Ascii.SO, Ascii.SI, 76, 19, 4, Ascii.NAK, 19, Ascii.CAN, 0, 3, Ascii.CR, 4, 65, 4, 19, 19, Ascii.SO, 19, 65, 2, Ascii.SO, 5, 4, 65, 42, Ascii.FS, Ascii.VT, Ascii.SI, Ascii.FS, Ascii.VT, 89, Ascii.VT, Ascii.FS, Ascii.CR, Ascii.FF, Ascii.VT, Ascii.ETB, Ascii.FS, Ascii.GS, 89, Ascii.VT, Ascii.FS, Ascii.CR, Ascii.VT, 0, Ascii.CAN, Ascii.ESC, Ascii.NAK, Ascii.FS, 89, Ascii.FS, Ascii.VT, Ascii.VT, Ascii.SYN, Ascii.VT, 89, Ascii.SUB, Ascii.SYN, Ascii.GS, Ascii.FS, 89, 86, 109, 98, 97, 111, 102, 35, 119, 108, 35, 115, 98, 113, 112, 102, 35, 103, 102, 97, 118, 100, 79, 108, 100, 70, 117, 102, 109, 119, 35, 98, 119, 35, 6, 61, 50, 49, 63, 54, 115, 39, 60, 115, 35, 50, 33, 32, 54, 115, 54, 37, 54, 61, 39, 115, 50, 39, 115, 111, 84, 91, 88, 86, 95, Ascii.SUB, 78, 85, Ascii.SUB, 74, 91, 72, 73, 95, Ascii.SUB, 73, 95, 72, 76, 95, 72, Ascii.SUB, 72, 95, 73, 74, 85, 84, 73, 95, Ascii.SUB, 91, 78, Ascii.SUB, 74, 85, 73, 83, 78, 83, 85, 84, Ascii.SUB, 80, 92, 87, 86, 104, 109, 120, 109, 110, 109, Ascii.DEL, 105, 17, 2, 17, Ascii.SUB, 0, 7, 6, 5, 1, Ascii.DC4, Ascii.NAK, Ascii.DC2, 5, 77, 3, Ascii.SI, Ascii.SO, 6, 9, 7, 77, 5, Ascii.SYN, 5, Ascii.SO, Ascii.DC4, 77, Ascii.CR, 1, 7, 9, 3, 33, 34, 38, 51, 50, 53, 34, Ascii.CAN, 36, 40, 41, 33, 46, 32, 44, 33, 71, 90, 94, 86, 60, 39, 35, 45, 38, 59};
    }

    private void A06(String str) {
        if (C08437z.A0I(str)) {
            C08437z.A0B(this.A00, str);
        } else {
            this.A01.A8c(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1084Id
    public final JSONObject A4X() {
        int iA0F = IR.A0F(this.A00);
        return iA0F > 0 ? A04(iA0F) : A03();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1084Id
    public final boolean A8y() {
        int iA0F = IR.A0F(this.A00);
        return iA0F >= 1 && this.A01.A6s() + C08437z.A00(this.A00) > iA0F;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1084Id
    public final void AAT() {
        int iA4F = this.A01.A4F(IR.A0G(this.A00));
        if (iA4F > 0) {
            this.A00.A07().A9M(A00(379, 8, 100), C08417x.A10, new C08427y(A00(28, 44, 73) + iA4F));
        }
        Y9 y9 = this.A00;
        String[] strArr = A03;
        if (strArr[5].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[5] = "bzDkK7DGlCk2AgYUikBmx";
        strArr2[6] = "oAHu9PBino36rPxONmBwiLk";
        C08437z.A0F(y9);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1084Id
    public final void AB3(JSONArray jSONArray) {
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                A06(jSONArray.getJSONObject(i).getString(A00(433, 2, 45)));
            } catch (JSONException e2) {
                if (this.A00.A04().A8o()) {
                    String str = A04;
                    String[] strArr = A03;
                    if (strArr[5].length() == strArr[6].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A03;
                    strArr2[1] = "UiT9WvgcUGvh4UJIWCcVV8uUv9KhPAuj";
                    strArr2[2] = "iCLGRVxWINjUDSHIa5c9b6YKh720uR79";
                    Log.e(str, A00(108, 62, 122), e2);
                } else {
                    continue;
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1084Id
    public final boolean AB5(JSONArray jSONArray) {
        String strA00 = A00(27, 1, 40);
        boolean z = true;
        boolean zA0P = IR.A0P(this.A00);
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(A00(433, 2, 45));
                if (A00(393, 26, 8).equals(string)) {
                    IP.A0Q(this.A00).A2S(jSONObject.getString(A00(419, 14, 47)));
                    this.A00.A03().AA1();
                } else {
                    int i2 = jSONObject.getInt(A00(375, 4, 91));
                    if (i2 == 1) {
                        if (this.A00.A04().A8o()) {
                            String str = A00(170, 25, 122) + string + A00(13, 14, 116);
                            String strA6v = this.A01.A6v(string);
                            if (strA6v != null) {
                                String str2 = A00(72, 36, 101) + strA6v;
                            }
                        }
                        if (!this.A01.A4z(string) && zA0P) {
                            C08437z.A0D(string);
                        }
                    } else {
                        String strA002 = A00(0, 13, 93);
                        if (i2 >= 1000 && i2 < 2000) {
                            if (this.A00.A04().A8o()) {
                                Log.e(A04, A00(236, 37, 17) + i2 + strA002 + string + strA00);
                            }
                            A06(string);
                            z = false;
                        } else if (i2 >= 2000 && i2 < 3000) {
                            if (this.A00.A04().A8o()) {
                                Log.e(A04, A00(195, 41, 9) + i2 + strA002 + string + strA00);
                            }
                            if (!this.A01.A4z(string) && zA0P) {
                                C08437z.A0D(string);
                            }
                        }
                    }
                }
            } catch (JSONException e2) {
                if (this.A00.A04().A8o()) {
                    Log.e(A04, A00(331, 44, 82) + i + strA00, e2);
                }
                z = false;
            }
        }
        return z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1084Id
    public final void ACd() {
        this.A01.A4G();
        C08437z.A07(this.A00);
    }
}
