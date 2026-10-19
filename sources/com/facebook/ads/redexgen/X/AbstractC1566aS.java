package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1566aS extends C1C implements Serializable {
    public static JSONObject A0F = null;
    public static byte[] A0G = null;
    public static String[] A0H = {"1gqRR9im7tmNjhPy8NnQpjCX4rd8Ielc", "ZkOx7RNEMabKvQ7fgN15WIbWDw11JZFu", "ifeh8sROmLFDdOYqa0sy0eFfj5RHH1gU", "fnDzwAhU6GMUs0cCq2fTQuWEzv5lBJki", "OVtNfYqIZ80xqW4zrHdkYxbTKYgYXHc", "chIpxbYwiAOd1RIHlv8aEwW7ihQHRwI", "GnSiEcQE", "uApEYGhuY9oy1RN675k2bDQ9FUD4oA7y"};
    public static final LinkedHashMap<String, String> A0I;
    public static final long serialVersionUID = -5352540727250859603L;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public AnonymousClass19 A05;
    public C1R A06;
    public C1U A07;
    public C1X A08;
    public C06791d A09;
    public String A0A;
    public final List<C1D> A0D;
    public boolean A0B = false;
    public boolean A0C = false;
    public final Map<String, String> A0E = new HashMap();

    static {
        A09();
        A0I = new LinkedHashMap<>(10, 0.75f, false);
    }

    public AbstractC1566aS(List<C1D> list) {
        this.A0D = list;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A06(String str) {
        return A0I.get(str);
    }

    private HashMap<String, String> A07(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A05(175, 18, 123));
        HashMap<String, String> map = new HashMap<>();
        if (jSONObjectOptJSONObject == null) {
            return map;
        }
        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
        while (itKeys.hasNext()) {
            try {
                String next = itKeys.next();
                map.put(next, jSONObjectOptJSONObject.getString(next));
            } catch (JSONException unused) {
            }
        }
        return map;
    }

    public static List<C1D> A08(JSONObject jSONObject, YA ya, C1P c1p) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A05(101, 8, 125));
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            return C1L.A01(jSONArrayOptJSONArray, jSONObject, ya, c1p);
        }
        ArrayList arrayList = new ArrayList();
        C1D c1dA00 = C1D.A00(jSONObject);
        c1p.A3J(c1dA00, jSONObject);
        arrayList.add(c1dA00);
        return arrayList;
    }

    public static void A09() {
        String[] strArr = A0H;
        if (strArr[2].charAt(14) == strArr[1].charAt(14)) {
            throw new RuntimeException();
        }
        A0H[5] = "bfB1pGz3pHLReaUGKuLSmGsyYLYBAtW";
        A0G = new byte[]{40, 45, Ascii.SYN, 42, 33, 38, 32, 42, 44, 58, Ascii.SYN, 37, 32, 39, 34, Ascii.SYN, 60, 59, 37, 118, 121, 72, 123, 120, 112, 120, 72, 99, 110, 103, 114, 81, 69, 68, 95, 83, 92, 89, 83, 91, 111, 83, 95, 69, 94, 68, 84, 95, 71, 94, 111, 68, 89, 93, 85, 89, 77, 76, 87, 91, 84, 81, 91, 83, 103, 91, 76, 89, 103, 76, 81, 85, 93, 37, 49, 48, 43, 39, 40, 45, 39, 47, Ascii.ESC, 34, 40, 37, 50, 43, 54, 0, 2, 0, Ascii.VT, 6, 60, 2, Ascii.DLE, Ascii.DLE, 6, Ascii.ETB, Ascii.DLE, 34, 32, 51, 46, 52, 50, 36, 45, 9, 2, Ascii.VT, 3, 4, 53, Ascii.VT, Ascii.SO, Ascii.EM, 53, Ascii.FF, Ascii.CAN, Ascii.SI, Ascii.ESC, Ascii.US, Ascii.SI, 4, 9, 19, 102, 106, 104, 43, 99, 100, 102, 96, 103, 106, 106, 110, 43, 100, 97, 118, 43, 108, 107, 113, 96, 119, 118, 113, 108, 113, 108, 100, 105, 43, 99, 108, 107, 108, 118, 109, 90, 100, 102, 113, 108, 115, 108, 113, 124, 81, 70, 35, 52, 43, Ascii.CAN, 38, 55, 55, Ascii.CAN, 37, 40, 50, 41, 35, Ascii.CAN, 50, 53, 43, 52, 82, 86, 0, 85, 107, 83, 68, 107, 91, 66, 81, 70, 88, 85, 77, 107, 71, 81, 87, 65, 70, 81, 107, 64, 91, 95, 81, 90, 10, 0, Ascii.FF, Ascii.CR, 45, 42, 55, 48, 37, 40, 40, Ascii.ESC, 54, 33, 34, 33, 54, 54, 33, 54, 91, 92, 70, 87, 64, 65, 70, 91, 70, 91, 83, 94, 78, 67, 76, 70, 81, 65, 67, 82, 71, 73, 68, 92, 74, 80, 81, 108, 115, 110, 104, 110, 125, 117, 104, 50, 37, 55, 33, 50, 36, 37, 36, Ascii.US, 54, 41, 36, 37, 47, 59, 32, 39, 61, 36, 44, Ascii.ETB, 36, 39, 47, Ascii.ETB, 41, 38, 49, Ascii.ETB, 33, 41, 42, Ascii.ETB, 43, 36, 33, 43, 35, Ascii.ETB, 39, 38, 43, 45, 112, 109, 112, 104, 97, Ascii.EM, Ascii.RS, 0};
    }

    private void A0A(int i) {
        this.A00 = i;
    }

    private final void A0B(int i) {
        this.A04 = i;
    }

    private void A0C(AnonymousClass19 anonymousClass19) {
        this.A05 = anonymousClass19;
    }

    private final void A0D(C1R c1r) {
        this.A06 = c1r;
    }

    private void A0E(C1U c1u) {
        this.A07 = c1u;
    }

    private final void A0F(C1X c1x) {
        this.A08 = c1x;
    }

    private void A0G(C06791d c06791d) {
        this.A09 = c06791d;
    }

    private void A0H(String str) {
        this.A0A = str;
    }

    public final int A0p() {
        return this.A00;
    }

    public final int A0q() {
        return this.A01;
    }

    public final int A0r() {
        return this.A02;
    }

    public final int A0s() {
        return this.A03;
    }

    public final int A0t() {
        return this.A04;
    }

    public final AnonymousClass19 A0u() {
        return this.A05;
    }

    public final C1D A0v() {
        return this.A0D.get(0);
    }

    public final C1D A0w(int i) {
        if (i < 0 || i >= this.A0D.size()) {
            return null;
        }
        return this.A0D.get(i);
    }

    public final C1R A0x() {
        return this.A06;
    }

    public final C1U A0y() {
        return this.A07;
    }

    public final C1X A0z() {
        return this.A08;
    }

    public final C06791d A10() {
        return this.A09;
    }

    public final String A11() {
        return this.A0A;
    }

    public final String A12(String str) {
        return this.A0E.get(str);
    }

    public final List<C1D> A13() {
        return Collections.unmodifiableList(this.A0D);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000f A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A14(com.facebook.ads.redexgen.X.InterfaceC1173Lt r8) {
        /*
            r7 = this;
            java.lang.String r3 = r7.A0O()
            int r0 = r3.hashCode()
            switch(r0) {
                case -1364000502: goto L27;
                case 604727084: goto L59;
                default: goto Lb;
            }
        Lb:
            r0 = -1
        Lc:
            switch(r0) {
                case 0: goto L10;
                case 1: goto L1d;
                default: goto Lf;
            }
        Lf:
            return
        L10:
            r2 = 128(0x80, float:1.8E-43)
            r1 = 45
            r0 = 57
            java.lang.String r0 = A05(r2, r1, r0)
            r8.A3z(r0)
        L1d:
            com.facebook.ads.redexgen.X.Pm r0 = com.facebook.ads.redexgen.X.EnumC1270Pm.A08
            java.lang.String r0 = r0.A02()
            r8.A3z(r0)
            goto Lf
        L27:
            r6 = 276(0x114, float:3.87E-43)
            r5 = 14
            r4 = 124(0x7c, float:1.74E-43)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1566aS.A0H
            r0 = 2
            r1 = r2[r0]
            r0 = 1
            r2 = r2[r0]
            r0 = 14
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L6b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC1566aS.A0H
            java.lang.String r1 = "ynfghRupyY8lJ5WDqUPqAC0JO3E4ojqs"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "OEwRxUcpVPGJQFz3LRrAkRkf0LWdVsmf"
            r0 = 0
            r2[r0] = r1
            java.lang.String r0 = A05(r6, r5, r4)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 1
            goto Lc
        L59:
            r2 = 241(0xf1, float:3.38E-43)
            r1 = 12
            r0 = 14
            java.lang.String r0 = A05(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 0
            goto Lc
        L6b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1566aS.A14(com.facebook.ads.redexgen.X.Lt):void");
    }

    public final void A15(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        A0D(C1R.A00(jSONObject.optJSONObject(A05(225, 16, 120))));
        A0F = jSONObject.optJSONObject(A05(89, 12, 95));
        C1W c1wA06 = new C1W().A06(jSONObject.optString(A05(319, 5, 56)));
        String strA05 = A05(221, 4, 95);
        A0F(c1wA06.A05(jSONObject.optJSONObject(strA05) != null ? jSONObject.optJSONObject(strA05).optString(A05(324, 3, 80)) : A05(0, 0, 70)).A04(jSONObject.optString(A05(0, 19, 117))).A07(C1Y.A03(jSONObject)).A08());
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(A05(262, 6, 25));
        if (jSONObjectOptJSONObject2 != null) {
            String strA052 = A05(268, 8, 32);
            if (A0H[5].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0H;
            strArr[2] = "L9OC0yGJthGch16tOTqUcqcE9MnsMaz6";
            strArr[1] = "n6CgIEssquLp46jPM2UWfBhL1rINMjIc";
            jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(strA052);
        } else {
            jSONObjectOptJSONObject = null;
        }
        A0C(new AnonymousClass19(C1M.A01(jSONObjectOptJSONObject), C1M.A01(jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONObject(A05(253, 9, 30)) : null)));
        A0G(C1Y.A01(jSONObject));
        A0E(C1Y.A00(jSONObject));
        A0A(jSONObject.optInt(A05(19, 12, 43), 0));
        A0B(jSONObject.optInt(A05(109, 19, 86), -1));
        this.A0E.putAll(A07(jSONObject));
        this.A03 = jSONObject.optInt(A05(55, 18, 4), 0);
        this.A01 = jSONObject.optInt(A05(73, 16, 120), 1);
        this.A0C = jSONObject.optBoolean(A05(290, 29, 116), false);
        this.A02 = jSONObject.optInt(A05(31, 24, 12), this.A03);
        String strOptString = jSONObject.optString(A05(173, 2, 14));
        A0H(strOptString);
        A0I.put(strOptString, jSONObject.optString(A05(193, 28, 8)));
        A0b(jSONObject);
    }

    public final void A16(boolean z) {
        this.A0B = z;
    }

    public final boolean A17() {
        return this.A0B;
    }

    public final boolean A18() {
        return this.A0C;
    }
}
