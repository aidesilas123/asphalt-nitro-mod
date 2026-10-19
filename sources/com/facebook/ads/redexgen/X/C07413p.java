package com.facebook.ads.redexgen.X;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3p, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C07413p implements InterfaceC1035Ge, RB {
    public static byte[] A0A;
    public static String[] A0B = {"5Oiv1GLvIq7zEHzIHOTPzi3kaYzi9CKu", "OYJ8Vha7o3AKqeq5fQgjy4YAYzCEKBrH", "4fHxCa0vWIAizdOtLSYViH6HX8wZM136", "7SeobKfCaIBp1RCtBr0PVzHsRPnznuT1", "fOxTiSwrZex6", "3vZIMeafrjOpHP1eiyT8MHuy7IIJRNdQ", "XI5vdZH0G6FndxBvW8fNBqRq2FpLqBJ1", "pJZH6qXQIaEu24ksEJ9XliOUqsc1pAkZ"};
    public final C7S A00;
    public final C7j A01;
    public final InterfaceC1291Qh A02;
    public final RC A03;
    public final RK A04;
    public final RL A05;
    public final String A06;
    public final Map<R7, C1040Gl> A09 = new HashMap();
    public final Map<R7, C4E> A08 = new HashMap();
    public final List<RP> A07 = new ArrayList();

    static {
        A05();
    }

    public C07413p(C7S c7s, C7j c7j, InterfaceC1291Qh interfaceC1291Qh, String str, RL rl, RK rk, RA ra) {
        this.A00 = c7s;
        this.A01 = c7j;
        this.A02 = interfaceC1291Qh;
        this.A06 = str;
        this.A05 = rl;
        this.A04 = rk;
        this.A03 = ra.A4S(this);
    }

    public static int A00(JSONObject jSONObject) throws JSONException {
        int i = jSONObject.getJSONObject(A01(335, 7, 80)).getInt(A01(426, 16, 50));
        if (i > 0) {
            return i;
        }
        throw new JSONException(String.format(Locale.US, A01(129, 24, 117), Integer.valueOf(i)));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 17);
        }
        return new String(bArrCopyOfRange);
    }

    private Set<RO> A02(JSONObject jSONObject) throws JSONException {
        HashSet hashSet = new HashSet();
        JSONObject jSONObject2 = jSONObject.getJSONObject(A01(349, 8, 91));
        JSONObject jSONObject3 = jSONObject.getJSONObject(A01(298, 7, 38));
        for (final C1040Gl c1040Gl : this.A09.values()) {
            switch (RN.A01[RT.A00(jSONObject2.getString(c1040Gl.A73().A03())).ordinal()]) {
                case 1:
                    final JSONObject jSONObject4 = jSONObject3.getJSONObject(c1040Gl.A73().A03()).getJSONObject(A01(312, 4, 17));
                    final JSONObject jSONObjectOptJSONObject = jSONObject3.getJSONObject(c1040Gl.A73().A03()).optJSONObject(A01(316, 11, 48));
                    hashSet.add(new G3(c1040Gl, jSONObject4, jSONObjectOptJSONObject) { // from class: com.facebook.ads.redexgen.X.3u
                        public final JSONObject A00;
                        public final JSONObject A01;

                        {
                            RT rt = RT.A03;
                            this.A00 = jSONObject4;
                            this.A01 = jSONObjectOptJSONObject;
                        }

                        @Override // com.facebook.ads.redexgen.X.G3, com.facebook.ads.redexgen.X.RO
                        public final void A3V(Map<R6, RT> map, Map<InterfaceC1036Gf, RG> map2) {
                            super.A00.A05(this.A00, this.A01);
                            super.A3V(map, map2);
                        }
                    });
                    break;
                case 2:
                    hashSet.add(new G3(c1040Gl) { // from class: com.facebook.ads.redexgen.X.3t
                        {
                            RT rt = RT.A04;
                        }
                    });
                    break;
                default:
                    throw new AssertionError();
            }
        }
        for (final C4E c4e : this.A08.values()) {
            switch (RN.A00[RG.A00(jSONObject2.getString(c4e.A73().A03())).ordinal()]) {
                case 1:
                    hashSet.add(new GD(c4e) { // from class: com.facebook.ads.redexgen.X.3v
                        {
                            RG rg = RG.A04;
                        }
                    });
                    break;
                case 2:
                    hashSet.add(new GD(c4e) { // from class: com.facebook.ads.redexgen.X.3s
                        {
                            RG rg = RG.A05;
                        }

                        @Override // com.facebook.ads.redexgen.X.GD, com.facebook.ads.redexgen.X.RO
                        public final void A3V(Map<R6, RT> map, Map<InterfaceC1036Gf, RG> map2) {
                            this.A01.A06();
                            super.A3V(map, map2);
                        }
                    });
                    break;
                default:
                    throw new AssertionError();
            }
        }
        return hashSet;
    }

    private JSONObject A03(Map<R6, RS> map, Map<InterfaceC1036Gf, RF> map2, Map<InterfaceC1036Gf, JSONObject> map3, Map<InterfaceC1036Gf, JSONObject> map4) throws JSONException {
        String strA01;
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<R6, RS> entry : map.entrySet()) {
            jSONObject.put(entry.getKey().A73().A03(), entry.getValue().A02());
        }
        for (Map.Entry<InterfaceC1036Gf, RF> entry2 : map2.entrySet()) {
            jSONObject.put(entry2.getKey().A73().A03(), entry2.getValue().A02());
        }
        JSONObject jSONObject2 = new JSONObject();
        Iterator<Map.Entry<R6, RS>> it = map.entrySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            strA01 = A01(316, 11, 48);
            if (!zHasNext) {
                break;
            }
            Map.Entry<R6, RS> next = it.next();
            if (next.getValue() == RS.A04) {
                JSONObject jSONObject3 = new JSONObject();
                R6 key = next.getKey();
                jSONObject2.put(key.A73().A03(), jSONObject3);
                if (next.getKey().A73().A04()) {
                    jSONObject3.put(strA01, key.A6y());
                } else {
                    jSONObject3.put(strA01, JSONObject.NULL);
                }
                jSONObject2.put(key.A73().A03(), jSONObject3);
            }
        }
        for (Map.Entry<InterfaceC1036Gf, RF> entry3 : map2.entrySet()) {
            JSONObject jSONObject4 = new JSONObject();
            InterfaceC1036Gf key2 = entry3.getKey();
            jSONObject4.put(strA01, map4.get(entry3.getKey()));
            if (entry3.getValue() == RF.A05) {
                jSONObject4.put(A01(312, 4, 17), map3.get(key2));
                jSONObject2.put(key2.A73().A03(), jSONObject4);
            } else {
                String strA03 = key2.A73().A03();
                String[] strArr = A0B;
                if (strArr[1].charAt(20) == strArr[6].charAt(20)) {
                    throw new RuntimeException();
                }
                A0B[5] = "j6hI8A69HBwx3QyEu85lNgwu8aXeWQ7U";
                jSONObject2.put(strA03, jSONObject4);
            }
        }
        JSONObject jSONObject5 = new JSONObject();
        for (Map.Entry<String, String> entry4 : this.A05.A6p().entrySet()) {
            if (entry4.getValue() != null) {
                jSONObject5.put(entry4.getKey(), entry4.getValue());
            }
        }
        JSONObject jSONObject6 = new JSONObject();
        jSONObject6.put(A01(342, 7, 85), jSONObject);
        jSONObject6.put(A01(298, 7, 38), jSONObject2);
        jSONObject6.put(A01(305, 7, 33), jSONObject5);
        return jSONObject6;
    }

    private void A04() throws Throwable {
        Map<R6, RS> map = new HashMap<>();
        Map<InterfaceC1036Gf, RF> map2 = new HashMap<>();
        Map<InterfaceC1036Gf, JSONObject> map3 = new HashMap<>();
        Map<InterfaceC1036Gf, JSONObject> map4 = new HashMap<>();
        synchronized (this) {
            for (R6 r6 : this.A09.values()) {
                if (r6.A90()) {
                    map.put(r6, RS.A04);
                } else {
                    map.put(r6, RS.A03);
                }
            }
            AtomicReference<JSONObject> atomicReference = new AtomicReference<>();
            AtomicReference<JSONObject> atomicReference2 = new AtomicReference<>();
            for (C4E c4e : this.A08.values()) {
                if (c4e.A90()) {
                    if (c4e.A07(atomicReference, atomicReference2)) {
                        map2.put(c4e, RF.A05);
                        map3.put(c4e, atomicReference.get());
                    } else {
                        map2.put(c4e, RF.A04);
                    }
                    map4.put(c4e, atomicReference2.get());
                }
            }
            Iterator<RP> it = this.A07.iterator();
            if (it.hasNext()) {
                it.next();
                throw new NullPointerException(A01(TTAdConstant.DEEPLINK_FALLBACK_CODE, 22, 80));
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference3 = new AtomicReference();
        AtomicReference atomicReference4 = new AtomicReference();
        JSONObject jSONObjectA03 = A03(map, map2, map3, map4);
        String.format(Locale.US, A01(188, 33, 55), this.A06, jSONObjectA03.toString(2));
        this.A02.ADq(this.A06, (A01(327, 8, 88) + URLEncoder.encode(jSONObjectA03.toString())).getBytes(), new GI(this, atomicReference3, atomicReference4, countDownLatch));
        while (countDownLatch.getCount() > 0) {
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
            }
        }
        synchronized (this) {
            if (atomicReference4.get() != null) {
                throw ((Throwable) atomicReference4.get());
            }
            Set<RO> setA02 = A02((JSONObject) atomicReference3.get());
            HashMap map5 = new HashMap();
            HashMap map6 = new HashMap();
            Iterator<RO> it2 = setA02.iterator();
            while (it2.hasNext()) {
                it2.next().A3V(map5, map6);
            }
            this.A03.A5g(A00((JSONObject) atomicReference3.get()));
            Iterator<RP> it3 = this.A07.iterator();
            if (it3.hasNext()) {
                it3.next();
                throw new NullPointerException(A01(381, 23, 105));
            }
        }
    }

    public static void A05() {
        A0A = new byte[]{101, -82, -72, 101, -73, -86, -72, -71, -73, -82, -88, -71, -86, -87, 115, 101, -104, -80, -82, -75, -75, -82, -77, -84, 101, -72, -66, -77, -88, -48, -1, -1, -81, -8, -3, -81, -15, -16, -14, -6, -10, 1, -2, 4, -3, -13, -67, -54, -24, -11, -11, -10, -5, -89, -22, -7, -20, -24, -5, -20, -89, -6, -20, -7, -3, -20, -7, -89, -23, -4, -11, -21, -13, -20, -89, -2, -16, -5, -17, -89, -11, -10, -11, -76, -6, -20, -7, -3, -20, -7, -89, -10, -2, -11, -20, -21, -89, -23, -4, -11, -21, -13, -20, -89, -48, -53, -85, -56, -37, -56, -121, -41, -39, -42, -54, -52, -38, -38, -48, -43, -50, -121, -42, -41, -37, -48, -42, -43, -121, -49, -12, -4, -25, -14, -17, -22, -90, -8, -21, -20, -8, -21, -7, -18, -90, -6, -17, -13, -21, -64, -90, -85, -22, -79, -56, -38, -125, -42, -56, -43, -39, -56, -43, -112, -46, -38, -47, -56, -57, -125, -59, -40, -47, -57, -49, -56, -125, -58, -43, -56, -60, -41, -56, -57, -99, -125, -120, -42, -101, -63, -74, -85, -80, -70, -73, -74, -79, -62, -87, -68, -79, -73, -74, 104, -70, -83, -71, -67, -83, -69, -68, 104, -68, -73, 104, 109, -69, -126, 82, 109, -69, -88, -50, -61, -72, -67, -57, -60, -61, -66, -49, -74, -55, -66, -60, -61, 117, -57, -70, -56, -59, -60, -61, -56, -70, -113, 95, 122, -56, 114, -104, -115, -126, -121, -111, -114, -115, -120, -103, -128, -109, -120, -114, -115, 63, -111, -108, -115, 63, -123, -128, -120, -117, -124, -125, 90, 63, -123, -114, -111, -126, -120, -115, -122, 63, -120, -115, 63, 68, -125, 63, -110, -124, -126, -114, -115, -125, -110, -103, -84, -91, -101, -93, -100, -86, -107, -95, -96, -90, -105, -86, -90, -122, -125, -106, -125, -89, -86, -81, -88, -90, -77, -79, -77, -86, -81, -75, -39, -54, -30, -43, -40, -54, -51, -90, -45, -58, -57, -45, -58, -44, -55, -40, -53, -41, -37, -53, -39, -38, -34, -47, -33, -36, -37, -38, -33, -47, -59, -73, -60, -56, -73, -60, -95, -55, -64, -73, -74, -108, -57, -64, -74, -66, -73, -107, -60, -73, -77, -58, -73, -74, -19, -13, -24, -35, -30, -20, -23, -24, -29, -12, -37, -18, -29, -23, -24, -64, -29, -24, -29, -19, -30, -33, -34, -44, -38, -49, -60, -55, -45, -48, -49, -54, -37, -62, -43, -54, -48, -49, -76, -43, -62, -45, -43, -58, -59, -73, -92, -75, -86, -88, -73, -94, -75, -88, -87, -75, -88, -74, -85, -94, -74};
    }

    public static void A06(String str, AtomicReference<JSONObject> atomicReference, AtomicReference<Throwable> atomicReference2) {
        String.format(Locale.US, A01(221, 28, 68), str);
        try {
            atomicReference.set((JSONObject) new JSONTokener(str).nextValue());
        } catch (ClassCastException | JSONException e2) {
            atomicReference2.set(e2);
        }
    }

    private synchronized void A08(Throwable th) {
        Iterator<RP> it = this.A07.iterator();
        if (it.hasNext()) {
            it.next();
            new HashMap();
            new HashMap();
            throw new NullPointerException(A01(381, 23, 105));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1035Ge
    public final synchronized R6 A4e(R7 r7) {
        if (r7.A02() != R9.A03) {
            throw new IllegalArgumentException(A01(47, 59, 118));
        }
        if (this.A09.containsKey(r7)) {
            return this.A09.get(r7);
        }
        C1040Gl c1040Gl = new C1040Gl(r7);
        this.A09.put(r7, c1040Gl);
        Iterator<RP> it = this.A07.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException(A01(357, 24, 65));
        }
        String.format(Locale.US, A01(153, 35, 82), r7);
        return c1040Gl;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1035Ge, com.facebook.ads.redexgen.X.C7Y
    public final void A5i() {
        this.A03.A5h();
    }

    @Override // com.facebook.ads.redexgen.X.RB
    public final void AEp() {
        if (this.A01.A92()) {
            String str = A01(106, 23, 86) + this.A01.A6c().A07() + A01(0, 29, 52);
            A08(new RR());
            return;
        }
        try {
            if (IP.A1d(this.A00) && !this.A00.A03().A8t()) {
                throw new IllegalStateException(A01(29, 18, 126));
            }
            A04();
        } catch (Throwable th) {
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            Integer numValueOf = Integer.valueOf(this.A04.A01());
            if (A0B[5].charAt(3) != 'I') {
                throw new RuntimeException();
            }
            String[] strArr = A0B;
            strArr[2] = "JEtZyGAVdUTB5WRsJGoBqRot3n7K2sjz";
            strArr[3] = "em0I48mZsoEuthzWerVnjSUWeJS3cW5z";
            objArr[0] = numValueOf;
            String.format(locale, A01(249, 49, 14), objArr);
            A08(th);
            this.A03.A5g(this.A04.A01());
        }
    }
}
