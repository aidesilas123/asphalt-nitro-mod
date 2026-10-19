package com.json.adqualitysdk.sdk.i;

import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.json.adqualitysdk.sdk.i.az;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.AppNode;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.v0;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class cd extends az {
    private static int[] t = {1504574948, -766297402, -836926867, -1995890054, 867613835, -992860917, -1094536568, 769363743, -730286926, -605311619, -1986915547, -2080187940, -336827555, -1119752818, 746441852, -700661180, 13249872, -249330126};
    private static char[] u = {130, 254, 254, 236, 228, 228, 236, 140, 262, 262, 278, 284, 289, 294, 289, 268, '[', 181, 186, 175, 176, 193, 169, '7', 'g', 'Q', 'S', 'R', 'Y', 'k', 'i', '9', 'k', 'i', 'i', 'l', 's', 'n', 'Z', 'X', 'R', 'Y', 'k', 'i', 'n', 'g', 'Q', ' ', 'Y', 'k', 'i', 'n', 'g', 'Q', 'S', 'o', 'q', '^', '[', 'e', 217, 239, 246, 241, 243, 236, 231, 239, 246, '2', 'R', 'S', 'l', 'j', 'Q', 262, 249, 258, 249, 264, 263, 253, 224, 248, 213, 249, 263, 245, 214, 'i', 192, 197, 215, 211, 217, 216, 217, 221, 218, 222, 203, '(', '^', 'f', 'b', 'd', 'i', 'i', 'i', 'q', 149, 280, 280, 298, 298, 305, 303, 306, 308, 289, '7', 'q', 'e', 'd', 'k', 'R', 'S', 'h', 'i', 148, 299, 287, 287, 299, 292, 291, 290, 280, 280, 285, 268, 273, 292, 289, '3', 'm', 'n', 'k', 'a', '\\', 'R', 'Z', 'l', '3', 'f', 'l', 'Z', 'X', 'p', '\\', 'V', '3', 'f', 'l', '[', 'R', 'b', 'e', 'f', 'c', 'a', 'g', 'h', '[', '[', 'j', 'n', 'f', 'b', 'd', 'i', 'i', 'i', 'q', 'd', 'c', 'o', '3', 'f', 'l', 'd', '\\', 'i', 'n', 'n', 'f', 'j', 'l', '\\', '\\', 'l', 't', 'n', 'k', 'j', 'm', 148, 302, 290, 283, 302, 300, 297, 299, 292, 292, 285, 287, 294, 292, 298};
    private static int v = 0;
    private static int w = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cd.s((AdPayload.CacheableReplacement) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cd.r((AdPayload.AdUnit) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cd.t((AppNode) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cd.k((AdPayload) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cd.u((Placement) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(cd.z((Placement) list.get(0)));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cd.v((AdPayload.AdUnit) list.get(0));
        }
    }

    public cd(String str) {
        super(str);
    }

    static /* synthetic */ AdPayload.AdUnit k(AdPayload adPayload) {
        int i = v + 99;
        w = i % 128;
        if ((i % 2 == 0 ? '?' : 'S') == 'S') {
            return q(adPayload);
        }
        q(adPayload);
        throw null;
    }

    private static String l(AdPayload.AdUnit adUnit) {
        int i = w + 35;
        v = i % 128;
        int i2 = i % 2;
        String campaign = adUnit.getCampaign();
        int i3 = v + 125;
        w = i3 % 128;
        int i4 = i3 % 2;
        return campaign;
    }

    private static String m(Placement placement) {
        int i = w + 35;
        v = i % 128;
        char c2 = i % 2 != 0 ? '\b' : 'b';
        String referenceId = placement.getReferenceId();
        if (c2 != 'b') {
            int i2 = 8 / 0;
        }
        return referenceId;
    }

    private static AdPayload.TemplateSettings n(AdPayload.AdUnit adUnit) {
        int i = w + 59;
        v = i % 128;
        int i2 = i % 2;
        AdPayload.TemplateSettings templateSettings = adUnit.getTemplateSettings();
        int i3 = v + 121;
        w = i3 % 128;
        int i4 = i3 % 2;
        return templateSettings;
    }

    private static String o(AppNode appNode) {
        int i = w + 105;
        v = i % 128;
        if (i % 2 != 0) {
            appNode.getAppId();
            throw null;
        }
        String appId = appNode.getAppId();
        int i2 = v + 29;
        w = i2 % 128;
        if (i2 % 2 != 0) {
            return appId;
        }
        throw null;
    }

    private static String p(int[] iArr, int i) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) t.clone();
            com.json.adqualitysdk.sdk.i.b.f34 = 0;
            while (true) {
                int i2 = com.json.adqualitysdk.sdk.i.b.f34;
                if (i2 < iArr.length) {
                    cArr[0] = (char) (iArr[i2] >> 16);
                    cArr[1] = (char) iArr[i2];
                    cArr[2] = (char) (iArr[i2 + 1] >> 16);
                    cArr[3] = (char) iArr[i2 + 1];
                    com.json.adqualitysdk.sdk.i.b.f31 = (cArr[0] << 16) + cArr[1];
                    com.json.adqualitysdk.sdk.i.b.f32 = (cArr[2] << 16) + cArr[3];
                    com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                    for (int i3 = 0; i3 < 16; i3++) {
                        int i4 = com.json.adqualitysdk.sdk.i.b.f31 ^ iArr2[i3];
                        com.json.adqualitysdk.sdk.i.b.f31 = i4;
                        com.json.adqualitysdk.sdk.i.b.f32 = com.json.adqualitysdk.sdk.i.b.m391(i4) ^ com.json.adqualitysdk.sdk.i.b.f32;
                        int i5 = com.json.adqualitysdk.sdk.i.b.f31;
                        com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                        com.json.adqualitysdk.sdk.i.b.f32 = i5;
                    }
                    int i6 = com.json.adqualitysdk.sdk.i.b.f31;
                    com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                    com.json.adqualitysdk.sdk.i.b.f32 = i6;
                    com.json.adqualitysdk.sdk.i.b.f32 = i6 ^ iArr2[16];
                    com.json.adqualitysdk.sdk.i.b.f31 ^= iArr2[17];
                    int i7 = com.json.adqualitysdk.sdk.i.b.f32;
                    int i8 = com.json.adqualitysdk.sdk.i.b.f31;
                    cArr[0] = (char) (i8 >>> 16);
                    cArr[1] = (char) i8;
                    int i9 = com.json.adqualitysdk.sdk.i.b.f32;
                    cArr[2] = (char) (i9 >>> 16);
                    cArr[3] = (char) i9;
                    com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                    int i10 = com.json.adqualitysdk.sdk.i.b.f34;
                    cArr2[i10 << 1] = cArr[0];
                    cArr2[(i10 << 1) + 1] = cArr[1];
                    cArr2[(i10 << 1) + 2] = cArr[2];
                    cArr2[(i10 << 1) + 3] = cArr[3];
                    com.json.adqualitysdk.sdk.i.b.f34 = i10 + 2;
                } else {
                    str = new String(cArr2, 0, i);
                }
            }
        }
        return str;
    }

    private static AdPayload.AdUnit q(AdPayload adPayload) {
        int i = v + 19;
        w = i % 128;
        if (i % 2 == 0) {
            adPayload.adUnit();
            throw null;
        }
        AdPayload.AdUnit adUnit = adPayload.adUnit();
        int i2 = w + 95;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 3 : 'E') != 3) {
            return adUnit;
        }
        throw null;
    }

    static /* synthetic */ String r(AdPayload.AdUnit adUnit) {
        int i = v + 49;
        w = i % 128;
        boolean z = i % 2 == 0;
        String strL = l(adUnit);
        if (z) {
            int i2 = 38 / 0;
        }
        int i3 = v + 43;
        w = i3 % 128;
        int i4 = i3 % 2;
        return strL;
    }

    static /* synthetic */ String s(AdPayload.CacheableReplacement cacheableReplacement) {
        int i = w + 33;
        v = i % 128;
        int i2 = i % 2;
        String strX = x(cacheableReplacement);
        int i3 = w + 123;
        v = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return strX;
        }
        throw null;
    }

    static /* synthetic */ String t(AppNode appNode) {
        int i = w + 81;
        v = i % 128;
        int i2 = i % 2;
        String strO = o(appNode);
        int i3 = v + 43;
        w = i3 % 128;
        int i4 = i3 % 2;
        return strO;
    }

    static /* synthetic */ String u(Placement placement) {
        int i = v + 85;
        w = i % 128;
        if (i % 2 != 0) {
            return m(placement);
        }
        m(placement);
        throw null;
    }

    static /* synthetic */ AdPayload.TemplateSettings v(AdPayload.AdUnit adUnit) {
        int i = v + 13;
        w = i % 128;
        if (!(i % 2 == 0)) {
            return n(adUnit);
        }
        n(adUnit);
        throw null;
    }

    private static boolean w(Placement placement) {
        int i = v + 95;
        w = i % 128;
        boolean z = i % 2 != 0;
        boolean zIsRewardedVideo = placement.isRewardedVideo();
        if (!z) {
            int i2 = 67 / 0;
        }
        return zIsRewardedVideo;
    }

    private static String x(AdPayload.CacheableReplacement cacheableReplacement) {
        int i = v + 79;
        w = i % 128;
        if ((i % 2 == 0 ? 'B' : (char) 20) != 20) {
            cacheableReplacement.getUrl();
            throw null;
        }
        String url = cacheableReplacement.getUrl();
        int i2 = v + 123;
        w = i2 % 128;
        int i3 = i2 % 2;
        return url;
    }

    private static String y(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
        String str2;
        Object bytes = str;
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        synchronized (i.f67) {
            int i = iArr[0];
            int i2 = iArr[1];
            int i3 = iArr[2];
            int i4 = iArr[3];
            char[] cArr = new char[i2];
            System.arraycopy(u, i, cArr, 0, i2);
            if (bArr != null) {
                char[] cArr2 = new char[i2];
                i.f68 = 0;
                char c2 = 0;
                while (true) {
                    int i5 = i.f68;
                    if (i5 >= i2) {
                        break;
                    }
                    if (bArr[i5] == 1) {
                        cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                    } else {
                        cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                    }
                    c2 = cArr2[i5];
                    i.f68 = i5 + 1;
                }
                cArr = cArr2;
            }
            if (i4 > 0) {
                char[] cArr3 = new char[i2];
                System.arraycopy(cArr, 0, cArr3, 0, i2);
                int i6 = i2 - i4;
                System.arraycopy(cArr3, 0, cArr, i6, i4);
                System.arraycopy(cArr3, i4, cArr, 0, i6);
            }
            if (z) {
                char[] cArr4 = new char[i2];
                i.f68 = 0;
                while (true) {
                    int i7 = i.f68;
                    if (i7 >= i2) {
                        break;
                    }
                    cArr4[i7] = cArr[(i2 - i7) - 1];
                    i.f68 = i7 + 1;
                }
                cArr = cArr4;
            }
            if (i3 > 0) {
                i.f68 = 0;
                while (true) {
                    int i8 = i.f68;
                    if (i8 >= i2) {
                        break;
                    }
                    cArr[i8] = (char) (cArr[i8] - iArr[2]);
                    i.f68 = i8 + 1;
                }
            }
            str2 = new String(cArr);
        }
        return str2;
    }

    static /* synthetic */ boolean z(Placement placement) {
        int i = v + 17;
        w = i % 128;
        if (i % 2 != 0) {
            return w(placement);
        }
        w(placement);
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(y(true, new int[]{144, 9, 0, 1}, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001").intern(), new d());
        map.put(y(false, new int[]{153, 8, 0, 0}, "\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001").intern(), new c());
        map.put(y(false, new int[]{161, 26, 0, 0}, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000").intern(), new a());
        map.put(p(new int[]{-17807192, 802735407, -1421617277, 508446047, -1934409520, -1627632106}, 10 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern(), new b());
        map.put(p(new int[]{1308556228, 1524927629, 1463229761, 1130668756, 449395045, -618116002, 1307688639, 2008335930}, (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 13).intern(), new e());
        map.put(y(false, new int[]{187, 19, 0, 0}, "\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000").intern(), new g());
        map.put(y(false, new int[]{206, 15, PsExtractor.AUDIO_STREAM, 0}, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000").intern(), new f());
        int i = w + 121;
        v = i % 128;
        int i2 = i % 2;
        return map;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﮐ */
    public final String mo378() {
        int i = w + 47;
        v = i % 128;
        int i2 = i % 2;
        try {
            String strM775 = hq.m770().m771().m775(v0.class, p(new int[]{-1153852169, -1054132230, 1597431224, 1314222573, -1021105210, -1648037090, 825167134, 1651657058}, TextUtils.getOffsetBefore("", 0) + 14).intern());
            int i3 = w + 49;
            v = i3 % 128;
            int i4 = i3 % 2;
            return strM775;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x020d  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r18) {
        /*
            Method dump skipped, instruction units count: 1754
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cd.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    final String mo385() {
        int i = w + 69;
        v = i % 128;
        int i2 = i % 2;
        try {
            String str = mo378().split(p(new int[]{-1430776302, 1136407481}, 1 - View.MeasureSpec.getSize(0)).intern())[0];
            int i3 = v + 61;
            w = i3 % 128;
            if (i3 % 2 == 0) {
                throw null;
            }
            return str;
        } catch (Throwable unused) {
            return null;
        }
    }
}
