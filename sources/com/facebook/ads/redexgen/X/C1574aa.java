package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1574aa implements InterfaceC06600j {
    public static byte[] A08;
    public static String[] A09 = {"a8CS69kVNecuN9Nm4E1lChlBM", "ag8ss2YsLKCBvL1N8ZsAQ7i2G", "9IBuBVemd2S2dbE3BWmY83r4APvNrK7d", "ZoqrROBX", "uf7sNUy4ZjnbrmNcJuZuOOSXLwo6bRiZ", "LuNKGusWtlIWkNNSsxJCgMD8UDEcDleP", "s1ncMgVhGbgxvH35X0QQBiYqSsxlrK3j", "2ghFrXKxVbUZFk6auJt6qCgV8pKBUCZ9"};
    public final EnumC06590i A00;
    public final String A01;
    public final String A02;
    public final String A03;
    public final String A04;
    public final String A05;
    public final Collection<String> A06;
    public final Map<String, String> A07;

    static {
        A02();
    }

    public C1574aa(String str, String str2, EnumC06590i enumC06590i, Collection<String> collection, Map<String, String> map, String str3, String str4, String str5) {
        this.A04 = str;
        this.A01 = str2;
        this.A00 = enumC06590i;
        this.A06 = collection;
        this.A07 = map;
        this.A05 = str3;
        this.A02 = str4;
        this.A03 = str5;
    }

    public static C1574aa A00(C0978Dz c0978Dz, JSONObject jSONObject) {
        String strOptString = jSONObject.optString(A01(33, 6, 95));
        String strOptString2 = jSONObject.optString(A01(0, 18, 13));
        String strOptString3 = jSONObject.optString(A01(47, 10, 34));
        String strA02 = L0.A02(jSONObject, A01(18, 2, 2));
        EnumC06590i enumC06590iA00 = C06610k.A00(jSONObject);
        Collection<String> collectionA03 = C06610k.A03(c0978Dz, jSONObject);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(39, 8, 57));
        HashMap map = new HashMap();
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (true) {
                boolean zHasNext = itKeys.hasNext();
                if (A09[7].charAt(3) == 'o') {
                    throw new RuntimeException();
                }
                String[] strArr = A09;
                strArr[3] = "3pk8Rtt7";
                strArr[1] = "M9VcdiL4tfZ71WotJMHbX4yrU";
                if (!zHasNext) {
                    break;
                }
                String next = itKeys.next();
                map.put(next, jSONObjectOptJSONObject.optString(next));
            }
        }
        return new C1574aa(strOptString, strOptString2, enumC06590iA00, collectionA03, map, strOptString3, strA02, L0.A02(jSONObject, A01(20, 13, 58)));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A08 = new byte[]{9, Ascii.VT, Ascii.FS, 1, Ascii.RS, 9, Ascii.FS, 1, 7, 6, 55, Ascii.VT, 7, 5, 5, 9, 6, Ascii.FF, 4, 19, 58, 49, 60, 45, 38, 47, 43, 58, 59, 0, 60, 47, 50, 87, 91, 72, 81, 79, 74, 49, 57, 40, 61, 56, 61, 40, 61, 53, 34, 54, 50, 34, 52, 51, Ascii.CAN, 46, 35};
    }

    public final String A03() {
        return this.A01;
    }

    public final String A04() {
        return this.A04;
    }

    public final String A05() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final String A6N() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final Collection<String> A6g() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final EnumC06590i A77() {
        return this.A00;
    }
}
