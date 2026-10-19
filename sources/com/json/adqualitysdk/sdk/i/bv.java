package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.az;
import com.my.target.ads.Reward;
import com.my.target.common.MyTargetVersion;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bv extends az {
    private static boolean A = true;
    private static int B = 0;
    private static int C = 1;
    private static char t = 42462;
    private static char u = 36079;
    private static char v = 61080;
    private static char w = 13549;
    private static char[] x = {'X', 132, '_', 'l', '}', 'r', 'p', Ascii.MAX, 'N', 'z', 'y', 'q', 't', 'a', '~', 'L', 'n', 129, 'P', 'o', 'O', 128, 'T', 'w', ']', 130, '^', 133, 'W', '{'};
    private static int y = 11;
    private static boolean z = true;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bv.k((Reward) list.get(0));
        }
    }

    public bv(String str) {
        super(str);
    }

    static /* synthetic */ String k(Reward reward) {
        int i = C + 47;
        B = i % 128;
        if ((i % 2 != 0 ? '\f' : (char) 27) == '\f') {
            m(reward);
            throw null;
        }
        String strM = m(reward);
        int i2 = C + 105;
        B = i2 % 128;
        int i3 = i2 % 2;
        return strM;
    }

    private static String l(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
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
            char[] cArr2 = x;
            int i2 = y;
            if (A) {
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
            if (z) {
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

    private static String m(Reward reward) {
        int i = B + 115;
        C = i % 128;
        boolean z2 = i % 2 == 0;
        String str = reward.type;
        if (z2) {
            int i2 = 60 / 0;
        }
        int i3 = C + 41;
        B = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 15 : '@') == '@') {
            return str;
        }
        throw null;
    }

    private static String n(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i2 = o.f138;
                if (i2 < cArr.length) {
                    cArr3[0] = cArr[i2];
                    cArr3[1] = cArr[i2 + 1];
                    int i3 = 58224;
                    for (int i4 = 0; i4 < 16; i4++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + v)) ^ ((cArr3[0] >>> 5) + w)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + t)) ^ ((cArr3[1] >>> 5) + u)));
                        i3 -= 40503;
                    }
                    int i5 = o.f138;
                    cArr2[i5] = cArr3[0];
                    cArr2[i5 + 1] = cArr3[1];
                    o.f138 = i5 + 2;
                } else {
                    str2 = new String(cArr2, 0, i);
                }
            }
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(l(null, null, 126 - ExpandableListView.getPackedPositionChild(0L), "\u0087\u009e\u0082\u0083\u0094\u0085\u0084\u009a\u0087\u0099\u0088\u0087\u0086").intern(), new a());
        int i = B + 93;
        C = i % 128;
        if ((i % 2 == 0 ? 'M' : ']') != 'M') {
            return map;
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0106  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 908
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bv.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = B + 19;
        C = i % 128;
        try {
            try {
                return (String) (i % 2 != 0 ? MyTargetVersion.class.getDeclaredField(n("ꜵ蒈ㄏ\uec5e⃞穫읁＃", 7 - Color.alpha(0)).intern()) : MyTargetVersion.class.getDeclaredField(n("ꜵ蒈ㄏ\uec5e⃞穫읁＃", 92 % Color.alpha(1)).intern())).get(null);
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
            return hq.m770().m771().m775(MyTargetVersion.class, n("皣坽缾\udf08\u09bbႻ瀦푷쭎︩샊恱", 13 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))).intern());
        }
    }
}
