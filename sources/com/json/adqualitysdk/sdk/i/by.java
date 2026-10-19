package com.json.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.az;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import tv.superawesome.lib.samodelspace.saad.SAAd;
import tv.superawesome.sdk.publisher.SABannerAd;
import tv.superawesome.sdk.publisher.SAInterface;
import tv.superawesome.sdk.publisher.SAVersion;
import tv.superawesome.sdk.publisher.SAVideoAd;

/* JADX INFO: loaded from: classes4.dex */
public final class by extends az {
    private static int A = 1;
    private static int u = 201;
    private static boolean v = true;
    private static boolean w = true;
    private static int z;
    private static char[] t = {295, 293, 301, 292, 247, 294, 244, 237, 284, 266, 287, 306, 302, 312, 317, 319, 316, 318, 313, 315, 298, 320, 310, 308, 299, 309, 305, 274, 311, 281, 322, 268, 277, 300, 278, 304, 288, 285, 271, 267, 275};
    private static char[] x = {23067, 26514, 8513, 58132, 44233, 28300, 10309, 59938, 47046, 29086, 19475, 29107, 14157, 62723, 47811, 30862, 15984, 64527, 41411, 26516, 9545, 60189, 43234, 28288, 11355, 53791, 38863, 21915, 6993, 55557, 57490, 56639, 39913, 22933, 5721, 54303, 37588, 20667, 3413, 51999, 35284, 18335, 'S', 15870, 31543, 47443, 63112, 13534, 29192, 45130, 60812, 11230, 26882, 42844, 58517, 8927, 24627, 40533, 'S', 15870, 31528, 47444, 63128, 13534, 29205, 45176, 60827, 11203, 26911, 42819, 58525, 8903, 24587, 27995, 20710, 5759, 54369, 39846, 23012, 7984, 56676, 32950, 18159, 1084, 51817, 35252, 20465, 3384, 62256, 46764, 29924, 14890, 63532, 49075, 32241, 8999, 57706, 42158, 27387, 10273, 61039, 44517, 37855, 20748, 5976, 55974, 39124, 24084, 7261, 50098, 33239, 18177, 1375, 51329, 36561, 19469, 12867, 8890, 7962, 23012, 39850, 54378, 5671, 20697, 37542, 53098, 2365, 19424, 34228, 50756, '/', 17135, 48310, 63857, 15155, 30193, 47026, 61562, 12842, 27855, 44723, 60286, 9507, 9253, 6533, 24443, 40245, 54005, 4280, 22086, 37945, 51701, 4002, 19839, 33579, 49371, 1712, 17520, 47657, 65518, 15788, 29550, 45357, 63205, 13493, 'I', 15849, 31511, 47449, 63129, 13524, 29226, 45141, 60825, 11214, 26899, 42823, 58551, 8924, 24604, 40517, 56194, 6592, 22274, 38209, 53897, 4313, 20006, 35904, 51611, 2003, 17667, 33611, 49281, 65233, 'A', 15835, 31528, 47444, 63128, 13534, 29205, 45161, 60820, 11222, 26895, 42832, 58502, 8944, 24605, 40543, 56196, 6621, 22273, 38209, 53888, 4302, 19992, 35967, 51585, 1986, 17681, 'S', 15870, 31539, 47452, 63122, 13530, 29213, 45148, 60828, 11254, 26898, 42851, 58525, 8918, 24581, 't', 15817, 31568, 47438, 63113, 13515, 29215, 45131, 60825, 11200, 26899, 42822, 58523, 8926, 24599, 40479, 56195, 6603, 22277, 38147, 53916, 4318, 19976, 35909, 51585, 2004, 17678, 33600, 49302, 65165, 15375, 31296, 46990, 62974, 13113, 29048, 44728, 60597, 10761, 26712, 42389, 58358, 8504, 24436, 40115, 56054, 6198, 22096, 37812, 53710, 3885, 19833, 35493, 51453, 1571, 17533, 33201, 'S', 15870, 31549, 47432, 63119, 13519, 29205, 45140, 60847, 11218, 26900, 42851, 58525, 8918, 24581, 21051, 28577, 10578, 60206, 42211, 26294, 8266, 57890, 49140, 31148, 15199, 62764, 46844, 28832, 12920, 52287, 35272, 19367, 1405, 50995, 33009, 17076, 'A', 15835, 31528, 47444, 63129, 13516, 29232, 45144, 60814, 11222, 26917, 42838, 58502, 8922, 24578, 40517, 56242, 6621, 22279, 38217, 53899, 4302, 20006, 35904, 51611, 2003, 17667, 33611, 49281, 65233, 19502, 29059, 14165, 62721, 47826, 30866, 15942, 64544, 18357, 31256, 15580, 65214, 45422, 29500, 13813, 63411, 43629, 45984, 36365, 51423, 2731, 17788, 34616, 49638, 932, 24184, 38945, 'S', 15870, 31543, 47443, 63112, 13534, 29192, 45151, 60825, 11220, 26899, 'S', 15870, 31547, 47435, 63129, 13525, 29198};
    private static long y = 8065907023078768063L;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return by.k((SAAd) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            by.l((SABannerAd) list.get(0), (SAInterface) list.get(1));
            return null;
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return by.m();
        }
    }

    public by(String str) {
        super(str);
    }

    static /* synthetic */ JSONObject k(SAAd sAAd) {
        int i = A + 111;
        z = i % 128;
        if ((i % 2 != 0 ? 'H' : '%') == 'H') {
            q(sAAd);
            throw null;
        }
        JSONObject jSONObjectQ = q(sAAd);
        int i2 = z + 67;
        A = i2 % 128;
        if ((i2 % 2 == 0 ? '1' : 'G') == 'G') {
            return jSONObjectQ;
        }
        throw null;
    }

    static /* synthetic */ void l(SABannerAd sABannerAd, SAInterface sAInterface) {
        int i = A + 23;
        z = i % 128;
        char c2 = i % 2 != 0 ? 'T' : (char) 24;
        n(sABannerAd, sAInterface);
        if (c2 != 24) {
            int i2 = 15 / 0;
        }
    }

    static /* synthetic */ SAInterface m() {
        int i = z + 33;
        A = i % 128;
        if (i % 2 != 0) {
            return o();
        }
        o();
        throw null;
    }

    private static void n(SABannerAd sABannerAd, SAInterface sAInterface) {
        int i = z + 67;
        A = i % 128;
        int i2 = i % 2;
        sABannerAd.setListener(sAInterface);
        int i3 = z + 57;
        A = i3 % 128;
        int i4 = i3 % 2;
    }

    private static SAInterface o() {
        int i = z + 59;
        A = i % 128;
        int i2 = i % 2;
        SAInterface listener = SAVideoAd.getListener();
        int i3 = A + 29;
        z = i3 % 128;
        if ((i3 % 2 != 0 ? 'b' : 'O') != 'b') {
            return listener;
        }
        throw null;
    }

    private static String p(int i, int i2, char c2) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) x[i2 + i3]) ^ (((long) i3) * y)) ^ ((long) c2));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    private static JSONObject q(SAAd sAAd) {
        int i = z + 7;
        A = i % 128;
        int i2 = i % 2;
        JSONObject jSONObjectWriteToJson = sAAd.writeToJson();
        int i3 = A + 113;
        z = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
        return jSONObjectWriteToJson;
    }

    private static String r(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
        Object bytes = str2;
        if (str2 != null) {
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (k.f131) {
            char[] cArr2 = t;
            int i2 = u;
            if (w) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i3 = k.f130;
                    int i4 = k.f129 - 1;
                    int i5 = k.f130;
                    cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                    k.f130 = i5 + 1;
                }
                return new String(cArr3);
            }
            if (v) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i6 = k.f130;
                    int i7 = k.f129 - 1;
                    int i8 = k.f130;
                    cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                    k.f130 = i8 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i9 = k.f130;
                int i10 = k.f129 - 1;
                int i11 = k.f130;
                cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                k.f130 = i11 + 1;
            }
            return new String(cArr5);
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(r(null, null, KeyEvent.getDeadChar(0, 0) + 127, "\u009d\u008e\u0091©\u008e¦\u008d\u008f\u008c\u0094¥\u0083\u0095").intern(), new a());
        map.put(r(null, null, (ViewConfiguration.getEdgeSlop() >> 16) + 127, "\u0094\u008d\u009d\u008d\u008f\u0091\u008c¡\u0083\u008a\u008e\u008d\u0083\u008c\u008b\u008f\u008d¤").intern(), new c());
        map.put(r(null, null, ExpandableListView.getPackedPositionChild(0L) + 128, "\u0094\u008d\u009d\u008d\u008f\u0091\u008c¡\u0094\u008d\u009d\u009d\u0095¨\u008f\u008d\u0091").intern(), new b());
        int i = A + 67;
        z = i % 128;
        int i2 = i % 2;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02e2  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 1746
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.by.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = A + 97;
        z = i % 128;
        int i2 = i % 2;
        try {
            String sDKVersionNumber = SAVersion.getSDKVersionNumber();
            int i3 = z + 69;
            A = i3 % 128;
            int i4 = i3 % 2;
            return sDKVersionNumber;
        } catch (Throwable unused) {
            return hq.m770().m771().m775(SAVersion.class, r(null, null, 127 - KeyEvent.normalizeMetaState(0), "\u0088\u0083\u0082\u0087\u0086\u0085\u0083\u0082\u0084\u0083\u0082\u0081").intern());
        }
    }
}
