package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.gameloft.adsmanager.JavaUtils;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.a9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1547a9 implements Ji {
    public static byte[] A0D;
    public static String[] A0E = {"4yJhIog9RzpC9w4XHjq79o6hmz2pMXrt", "bLneqHgNlbzxjE", "P7gevZ65hMGDm5VmgpkLcWEi46YxYduR", "Pajg2XTKXpS0pN0AoGLcPnQoa2IWF6Z7", "YyJRdl3XxpBTstTmsw", "OvgbPt0JG7dlaj99kqPbJKVmb9CPKTVr", "21VbiQWRKHmC0d4xB3zoTsbqXtN2ZOxw", "Q3Y9mBD7X4l0uaedlY7FP5X0xCsXbtIX"};
    public static final Handler A0F;
    public static final C06690t A0G = null;
    public static final C1114Jj A0H = null;
    public static final String A0I;
    public InterfaceC06640o A00;
    public InterfaceC06640o A01;
    public C8F A04;
    public C1112Jg A05;
    public AbstractC06650p A06;
    public final C06931r A07;
    public final InterfaceC1086If A08;
    public final C06690t A09;
    public final C1114Jj A0A;
    public final YA A0B;
    public volatile boolean A0C;
    public long A03 = -1;
    public String A02 = null;

    static {
        A07();
        LX.A02();
        A0I = AbstractC1547a9.class.getSimpleName();
        A0F = new Handler(Looper.getMainLooper());
    }

    public AbstractC1547a9(YA ya, C06931r c06931r) {
        this.A0B = ya;
        this.A07 = c06931r;
        C1114Jj c1114Jj = A0H;
        if (c1114Jj != null) {
            this.A0A = c1114Jj;
        } else {
            this.A0A = new C1114Jj(ya);
        }
        this.A0A.A0P(this);
        C06690t c06690t = A0G;
        if (c06690t != null) {
            this.A09 = c06690t;
        } else {
            this.A09 = new C06690t();
        }
        DynamicLoaderFactory.makeLoader(ya).getInitApi().onAdLoadInvoked(ya);
        this.A08 = ya.A09();
        ya.A0E().A4n();
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A0D = new byte[]{75, 110, 107, 122, 126, 111, 120, 42, 110, 101, 111, 121, 42, 100, 101, 126, 42, 111, 114, 99, 121, 126, 78, 107, 110, Ascii.DEL, 123, 106, 125, 47, 102, 124, 47, 97, 122, 99, 99, 47, 39, 108, 103, 110, 102, 97, 47, 97, 96, 123, 47, 99, 96, 110, 107, 106, 107, 38, 57, Ascii.FS, Ascii.EM, 8, Ascii.FF, Ascii.GS, 10, 88, 17, Ascii.VT, 88, Ascii.SYN, Ascii.CR, Ascii.DC4, Ascii.DC4, 88, 80, Ascii.ESC, Ascii.DLE, Ascii.EM, 17, Ascii.SYN, Ascii.GS, Ascii.FS, 81, 45, 8, Ascii.CR, Ascii.FS, Ascii.CAN, 9, Ascii.RS, 76, 5, Ascii.US, 76, 2, Ascii.EM, 0, 0, 76, 68, 2, 3, 76, Ascii.SI, 4, Ascii.CR, 5, 2, 69, 78, 107, 110, Ascii.DEL, 123, 106, 125, 47, 102, 124, 47, 97, 122, 99, 99, 47, 96, 97, 47, 124, 123, 110, 125, 123, 78, 107, 5, 36, 107, 38, 36, 57, 46, 107, 42, 47, 107, 40, 42, 37, 47, 34, 47, 42, 63, 46, 56, 101, 122, 95, 66, 67, 74, Ascii.CR, 76, 73, 76, 93, 89, 72, 95, Ascii.CR, 89, 84, 93, 72, 3, 46, 43, 111, 46, 35, 61, 42, 46, 43, 54, 111, 60, 59, 46, 61, 59, 42, 43, 94, 91, 76, 52, 37, 60, Ascii.SUB, 17, Ascii.CAN, Ascii.DLE, Ascii.ETB, 38, 9, Ascii.CAN, Ascii.VT, Ascii.CAN, Ascii.DC4, 10, 76, 91, 74, 79, 90, 79, 97, 76, 68, 75, 77, 90, Ascii.SO, 71, 93, Ascii.SO, 64, 91, 66, 66, 38, 45, 32, 49, 58, 51, 55, 38, 39, Ascii.FS, 42, 39, 122, 113, 105, 118, 109, 112, 113, 114, 122, 113, 107, 63, 118, 108, 63, 122, 114, 111, 107, 102, 38, 50, 37, 49, 53, 37, 46, 35, 57, Ascii.US, 35, 33, 48, 48, 41, 46, 39, Ascii.FS, Ascii.ESC, 3, Ascii.DC4, Ascii.EM, Ascii.FS, 17, 85, 5, Ascii.EM, Ascii.DC4, Ascii.SYN, Ascii.DLE, Ascii.CAN, Ascii.DLE, Ascii.ESC, 1, 85, Ascii.FS, Ascii.ESC, 85, 7, Ascii.DLE, 6, 5, Ascii.SUB, Ascii.ESC, 6, Ascii.DLE, 10, 9, 7, 2, 57, Ascii.DC2, Ascii.SI, Ascii.VT, 3, 57, Ascii.VT, Ascii.NAK, 44, 59, 47, 43, 59, 45, 42, 1, 55, 58};
    }

    private void A08(U6 u6) {
        C8F c8fA00 = u6.A00();
        if (c8fA00 == null || c8fA00.A05() == null) {
            String strA06 = A06(279, 29, 125);
            JG jg = new JG(AdErrorType.NO_AD_PLACEMENT, strA06);
            this.A0B.A0E().A4p(jg.A03().getErrorCode(), strA06);
            AbstractC06650p abstractC06650p = this.A06;
            if (abstractC06650p != null) {
                abstractC06650p.A0G(jg);
                return;
            }
            return;
        }
        this.A04 = c8fA00;
        this.A00 = null;
        C8F c8f = this.A04;
        JSONObject jSONObjectA0A = c8f.A0A();
        String strA062 = A06(195, 3, 93);
        if (jSONObjectA0A == null) {
            C8D c8dA04 = c8f.A04();
            if (!A0C(c8f, c8dA04)) {
                return;
            }
            if (this.A00 == null) {
                this.A0B.A07().A9M(strA062, C08417x.A0a, new C08427y(A06(81, 26, 100), c8dA04.A02()));
                ABH(JG.A00(AdErrorType.INTERNAL_ERROR));
                return;
            }
            A0N(this.A00, c8f, c8dA04, new C06941s(c8dA04.A04(), c8f.A05(), this.A07.A09, c8f.A05().A0C()));
        } else {
            ArrayList arrayList = new ArrayList();
            C8D c8dA042 = c8f.A04();
            do {
                if (arrayList.isEmpty()) {
                    if (!A0C(c8f, c8dA042)) {
                        return;
                    } else {
                        arrayList.add(c8dA042);
                    }
                } else if (A0B(c8dA042)) {
                    arrayList.add(c8dA042);
                }
                c8dA042 = c8f.A04();
            } while (c8dA042 != null);
            if (this.A00 == null) {
                this.A0B.A07().A9M(strA062, C08417x.A0a, new C08427y(A06(56, 25, 112), ((C8D) arrayList.get(0)).A02()));
                ABH(JG.A00(AdErrorType.INTERNAL_ERROR));
                return;
            }
            boolean z = false;
            try {
                if (arrayList.size() > 1 && this.A00.AFs()) {
                    JSONObject jSONObject = new JSONObject();
                    JSONArray jSONArray = new JSONArray();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(((C8D) it.next()).A04());
                    }
                    jSONObject.put(A06(PsExtractor.AUDIO_STREAM, 3, 55), jSONArray);
                    jSONObject.put(A06(198, 12, 113), c8f.A0A());
                    A0N(this.A00, c8f, c8dA042, new C06941s(jSONObject, c8f.A05(), this.A07.A09, c8f.A05().A0C()));
                    z = true;
                }
            } catch (Exception unused) {
                z = false;
            }
            if (!z) {
                if (arrayList.isEmpty()) {
                    JG jgA01 = JG.A01(AdErrorType.NO_FILL, A06(0, 0, 73));
                    this.A0B.A0E().A4p(jgA01.A03().getErrorCode(), A06(133, 22, 67));
                    AbstractC06650p abstractC06650p2 = this.A06;
                    if (abstractC06650p2 != null) {
                        abstractC06650p2.A0G(jgA01);
                        return;
                    }
                    return;
                }
                InterfaceC06640o interfaceC06640o = this.A00;
                String[] strArr = A0E;
                if (strArr[4].length() == strArr[1].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[0] = "F2ixlBYVHNYJB4bAHADqJrSynawwg1yM";
                strArr2[5] = "djkwyiiWLTaQwWMcVWQWfq0o8Ww2Jgo9";
                if (interfaceC06640o == null) {
                    this.A0B.A07().A9M(strA062, C08417x.A0a, new C08427y(A06(22, 34, 7), ((C8D) arrayList.get(0)).A02()));
                    ABH(JG.A00(AdErrorType.INTERNAL_ERROR));
                    return;
                }
                C8D c8d = (C8D) arrayList.get(0);
                A0N(this.A00, c8f, c8d, new C06941s(c8d.A04(), c8f.A05(), this.A07.A09, c8f.A05().A0C()));
            }
        }
        C06951t.A08(this.A0B.A01(), c8f);
    }

    private final void A09(String str, AdExperienceType adExperienceType) {
        this.A0B.A0E().A4q(str != null);
        this.A03 = System.currentTimeMillis();
        if (Build.VERSION.SDK_INT < 17) {
            ABH(new JG(AdErrorType.API_NOT_SUPPORTED, A06(0, 0, 73)));
            return;
        }
        try {
            C1112Jg c1112JgA01 = this.A07.A01(this.A0B, new JQ(this.A0B, str, this.A07.A09, this.A07.A08), adExperienceType);
            this.A05 = c1112JgA01;
            if (A0E[6].charAt(21) == '6') {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[4] = "3q2wB1pMY3UXfOrLgu";
            strArr[1] = "CsXqAZILgfX2KA";
            this.A0A.A0O(c1112JgA01);
        } catch (JH e2) {
            ABH(JG.A02(e2));
        }
    }

    private void A0A(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.A02 = jSONObject.optString(A06(230, 12, 75));
            C06710v.A01(this.A0B).A0O(jSONObject);
        }
    }

    private boolean A0B(C8D c8d) {
        return (c8d == null || c8d.A04() == null) ? false : true;
    }

    private boolean A0C(C8F c8f, C8D c8d) {
        String strA06 = A06(0, 0, 73);
        if (c8d == null) {
            JG jgA01 = JG.A01(AdErrorType.NO_FILL, strA06);
            this.A0B.A0E().A4p(jgA01.A03().getErrorCode(), A06(133, 22, 67));
            AbstractC06650p abstractC06650p = this.A06;
            if (abstractC06650p != null) {
                abstractC06650p.A0G(jgA01);
            }
            return false;
        }
        String strA02 = c8d.A02();
        InterfaceC06640o interfaceC06640oA00 = this.A09.A00(this.A0B, c8f.A05().A0D());
        if (interfaceC06640oA00 == null) {
            this.A0B.A07().A9M(A06(195, 3, 93), C08417x.A0a, new C08427y(A06(0, 22, 2), strA02));
            ABH(JG.A00(AdErrorType.INTERNAL_ERROR));
            return false;
        }
        if (this.A07.A00() != interfaceC06640oA00.A7W()) {
            JG jgA012 = JG.A01(AdErrorType.INTERNAL_ERROR, strA06);
            this.A0B.A0E().A4p(jgA012.A03().getErrorCode(), A06(155, 19, 37));
            AbstractC06650p abstractC06650p2 = this.A06;
            if (abstractC06650p2 != null) {
                abstractC06650p2.A0G(jgA012);
            }
            return false;
        }
        this.A00 = interfaceC06640oA00;
        String[] strArr = A0E;
        if (strArr[4].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[0] = "MKxF4EMWgzzLH5X7HNcHVA2i4zdAiZz9";
        strArr2[5] = "4tfdEW2uI31voJBW941pIR5b1aNGKiQe";
        JSONObject jSONObjectA04 = c8d.A04();
        if (jSONObjectA04 == null) {
            String strA062 = A06(212, 18, 38);
            JG jgA013 = JG.A01(AdErrorType.UNKNOWN_ERROR, strA062);
            this.A0B.A0E().A4p(jgA013.A03().getErrorCode(), strA062);
            AbstractC06650p abstractC06650p3 = this.A06;
            if (abstractC06650p3 != null) {
                abstractC06650p3.A0G(jgA013);
            }
            return false;
        }
        String strOptString = jSONObjectA04.optString(A06(JavaUtils.Constants.BANNER_WIDTH_DP, 10, 86));
        this.A0B.A0E().AFS(strOptString);
        this.A0B.A0C(strOptString);
        Y9 y9A00 = C7R.A00();
        if (y9A00 != null) {
            y9A00.A0C(strOptString);
        }
        A0A(jSONObjectA04.optJSONObject(A06(262, 17, 72)));
        if (this.A05 != null) {
            return true;
        }
        String strA063 = A06(242, 20, 23);
        JG jgA014 = JG.A01(AdErrorType.UNKNOWN_ERROR, strA063);
        this.A0B.A0E().A4p(jgA014.A03().getErrorCode(), strA063);
        AbstractC06650p abstractC06650p4 = this.A06;
        if (abstractC06650p4 != null) {
            abstractC06650p4.A0G(jgA014);
        }
        return false;
    }

    public final long A0D() {
        C8F c8f = this.A04;
        if (c8f != null) {
            return c8f.A03();
        }
        return -1L;
    }

    public final Handler A0E() {
        return A0F;
    }

    public C1C A0F() {
        return ((AbstractC1570aW) this.A01).A0H();
    }

    public final C8G A0G() {
        C8F c8f = this.A04;
        if (c8f == null) {
            return null;
        }
        return c8f.A05();
    }

    public final void A0H() {
        String strA6N;
        this.A0B.A0E().A2m(LM.A01(this.A03));
        InterfaceC06640o interfaceC06640o = this.A01;
        if (interfaceC06640o == null || (strA6N = interfaceC06640o.A6N()) == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(A06(308, 12, 110), LM.A04(this.A03));
        new C1094In(strA6N, this.A08).A04(EnumC1093Im.A08, map);
    }

    public final void A0I() {
        InterfaceC06640o interfaceC06640o = this.A01;
        String strA06 = A06(195, 3, 93);
        if (interfaceC06640o == null) {
            String strA062 = A06(107, 26, 7);
            this.A0B.A07().A9M(strA06, C08417x.A0Q, new C08427y(strA062));
            AdErrorType adErrorType = AdErrorType.INTERNAL_ERROR;
            this.A0B.A0E().A4p(adErrorType.getErrorCode(), strA062);
            AbstractC06650p abstractC06650p = this.A06;
            if (abstractC06650p != null) {
                abstractC06650p.A0G(JG.A01(adErrorType, adErrorType.getDefaultErrorMessage()));
            }
            this.A0B.A0E().A4s();
            return;
        }
        if (!this.A0C) {
            if (!TextUtils.isEmpty(this.A01.A6N())) {
                this.A08.A9h(this.A01.A6N());
            }
            this.A0B.A0E().A4t();
            this.A0C = true;
            A0L();
            return;
        }
        String strA063 = A06(174, 18, 71);
        this.A0B.A07().A9M(strA06, C08417x.A0M, new C08427y(strA063));
        AdErrorType adErrorType2 = AdErrorType.AD_ALREADY_STARTED;
        this.A0B.A0E().A4p(adErrorType2.getErrorCode(), strA063);
        AbstractC06650p abstractC06650p2 = this.A06;
        if (abstractC06650p2 != null) {
            abstractC06650p2.A0G(JG.A01(adErrorType2, adErrorType2.getDefaultErrorMessage()));
        }
        this.A0B.A0E().A4r();
    }

    public final void A0J() {
        A0T(false);
    }

    public final void A0K() {
        if (this.A02 != null) {
            C06710v.A01(this.A0B).A0N(this.A02);
        }
    }

    public abstract void A0L();

    public final void A0M(InterfaceC06640o interfaceC06640o) {
        if (interfaceC06640o != null) {
            interfaceC06640o.onDestroy();
        }
    }

    public abstract void A0N(InterfaceC06640o interfaceC06640o, C8F c8f, C8D c8d, C06941s c06941s);

    public final void A0O(AbstractC06650p abstractC06650p) {
        this.A06 = abstractC06650p;
    }

    public final void A0P(C06941s c06941s) {
        this.A0B.A0E().A4m();
        String strOptString = c06941s.A03().optString(A06(210, 2, 39));
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        new C1094In(strOptString, this.A08).A04(EnumC1093Im.A04, null);
    }

    public void A0Q(String str) {
        A09(str, null);
    }

    public final void A0R(String str) {
        A0Q(str);
    }

    public final void A0S(String str, AdExperienceType adExperienceType) {
        A09(str, adExperienceType);
    }

    public void A0T(boolean z) {
        if (z || this.A0C) {
            this.A0B.A0E().A4u();
            A0M(this.A01);
            this.A0C = false;
        }
    }

    public final boolean A0U() {
        C8F c8f = this.A04;
        return c8f == null || c8f.A0D();
    }

    @Override // com.facebook.ads.redexgen.X.Ji
    public final synchronized void ABH(JG jg) {
        A0E().post(new C1548aA(this, jg));
    }

    @Override // com.facebook.ads.redexgen.X.Ji
    public final synchronized void AD5(U6 u6) {
        try {
            A08(u6);
        } catch (Exception e2) {
            this.A0B.A07().A9M(A06(195, 3, 93), C08417x.A0T, new C08427y(e2));
        }
    }
}
