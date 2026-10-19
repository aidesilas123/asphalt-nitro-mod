package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.iw;
import com.vungle.ads.internal.network.VungleApiClient;

/* JADX INFO: loaded from: classes4.dex */
public abstract class gt implements gd {
    private static char[] a = {'c', 'o', 'n', 'e', 't', 'r', 's', '/', 'v', 'u', 'g', 'l', '7', '.', '0', 'd'};
    private static char b = 4;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5686d = 1;

    public static class a extends gt {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5687e = -1203443599;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5688f = 4;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5689g = -1489226058;
        private static byte[] h = {-75, -72, -85, -84, -40, -119, -88, -34, -117, -88, -76, -88, -88, -50, -41, 114, -88, -78, -89, -78, -66, -90, -17, 113, -70, -94, -85, -68, -96, -75, -76, -22, 106, -66, -78, -30, 120, -88, -76, -88, -88, -82, -9, 112, -83, -69, Ascii.ESC, 39, Ascii.ESC, Ascii.ESC, 33, 0, 0};
        private static short[] i = null;
        private static int j = 0;
        private static int k = 1;

        private static String b(int i2, int i3, byte b, short s, int i4) {
            String string;
            synchronized (n.f132) {
                StringBuilder sb = new StringBuilder();
                int i5 = f5688f;
                int i6 = i2 + i5;
                boolean z = i6 == -1;
                if (z) {
                    byte[] bArr = h;
                    i6 = bArr != null ? (byte) (bArr[f5687e + i4] + i5) : (short) (i[f5687e + i4] + i5);
                }
                if (i6 > 0) {
                    n.f136 = ((i4 + i6) - 2) + f5687e + (z ? 1 : 0);
                    n.f135 = b;
                    char c = (char) (i3 + f5689g);
                    n.f133 = c;
                    sb.append(c);
                    n.f134 = n.f133;
                    n.f137 = 1;
                    while (n.f137 < i6) {
                        byte[] bArr2 = h;
                        if (bArr2 != null) {
                            int i7 = n.f136;
                            n.f136 = i7 - 1;
                            n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                        } else {
                            short[] sArr = i;
                            int i8 = n.f136;
                            n.f136 = i8 - 1;
                            n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
                        }
                        sb.append(n.f133);
                        n.f134 = n.f133;
                        n.f137++;
                    }
                }
                string = sb.toString();
            }
            return string;
        }

        @Override // com.json.adqualitysdk.sdk.i.gt, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻐ */
        public final Class mo716() {
            int i2 = j + 111;
            int i3 = i2 % 128;
            k = i3;
            if ((i2 % 2 == 0 ? '2' : ':') == '2') {
                int i4 = 35 / 0;
            }
            int i5 = i3 + 59;
            j = i5 % 128;
            int i6 = i5 % 2;
            return VungleApiClient.class;
        }

        @Override // com.json.adqualitysdk.sdk.i.gt, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻛ */
        public final String mo717() {
            int i2 = j + 113;
            k = i2 % 128;
            String strIntern = (i2 % 2 != 0 ? b((ViewConfiguration.getPressedStateDuration() >> 16) + 43, 1489226157 - View.getDefaultSize(0, 0), (byte) (ViewConfiguration.getTapTimeout() >> 16), (short) (TextUtils.getCapsMode("", 0, 0) + 81), View.combineMeasuredStates(0, 0) + 1203443599) : b(85 % (ViewConfiguration.getPressedStateDuration() >>> 112), View.getDefaultSize(1, 1) + 1489226157, (byte) (ViewConfiguration.getTapTimeout() * 16), (short) (107 / TextUtils.getCapsMode("", 0, 0)), 1203443599 / View.combineMeasuredStates(0, 0))).intern();
            int i3 = j + 19;
            k = i3 % 128;
            int i4 = i3 % 2;
            return strIntern;
        }

        @Override // com.json.adqualitysdk.sdk.i.gt, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﾇ */
        public final az mo719() {
            cd cdVar = new cd(b(Color.blue(0) + 2, 1489226176 - TextUtils.getOffsetAfter("", 0), (byte) (MotionEvent.axisFromString("") + 1), (short) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) - 33), ExpandableListView.getPackedPositionGroup(0L) + 1203443645).intern());
            int i2 = j + 83;
            k = i2 % 128;
            int i3 = i2 % 2;
            return cdVar;
        }
    }

    public static class b extends gt {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static char f5690e = 54456;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static char f5691f = 44420;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static char f5692g = 47024;
        private static char h = 14640;
        private static int i = 0;
        private static int j = 1;

        private static String b(String str, int i2) {
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
                    int i3 = o.f138;
                    if (i3 < cArr.length) {
                        cArr3[0] = cArr[i3];
                        cArr3[1] = cArr[i3 + 1];
                        int i4 = 58224;
                        for (int i5 = 0; i5 < 16; i5++) {
                            cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + f5692g)) ^ ((cArr3[0] >>> 5) + h)));
                            cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + f5690e)) ^ ((cArr3[1] >>> 5) + f5691f)));
                            i4 -= 40503;
                        }
                        int i6 = o.f138;
                        cArr2[i6] = cArr3[0];
                        cArr2[i6 + 1] = cArr3[1];
                        o.f138 = i6 + 2;
                    } else {
                        str2 = new String(cArr2, 0, i2);
                    }
                }
            }
            return str2;
        }

        @Override // com.json.adqualitysdk.sdk.i.gt, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻐ */
        public final Class mo716() {
            int i2 = j + 35;
            i = i2 % 128;
            if ((i2 % 2 != 0 ? (char) 29 : 'R') == 'R') {
                return com.vungle.warren.VungleApiClient.class;
            }
            throw null;
        }

        @Override // com.json.adqualitysdk.sdk.i.gt, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻛ */
        public final String mo717() {
            int i2 = j + 51;
            i = i2 % 128;
            return b("쥔\ue206痢⺟\ud89aƏ쁥ဇ狃斠갟嶘\u001f⹈褋ٌ켷냂춟ഺ쁥ဇ狃斠\ue845윫穞籍㒩穬芅꽟폈\uf80e", !(i2 % 2 == 0) ? 95 - View.resolveSize(0, 0) : View.resolveSize(0, 0) + 33).intern();
        }

        @Override // com.json.adqualitysdk.sdk.i.gt, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﾇ */
        public final az mo719() {
            ce ceVar = new ce(b("\ud89aƏ쁥ဇ狃斠", 5 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern());
            int i2 = i + 49;
            j = i2 % 128;
            int i3 = i2 % 2;
            return ceVar;
        }
    }

    private static String a(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = a;
            char c2 = b;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b2);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i3 = (g.f59 * c2) + g.f55;
                            int i4 = (g.f61 * c2) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i6 = (g.f59 * c2) + g.f55;
                            int i7 = (g.f61 * c2) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c2) + g.f57;
                            int i10 = (g.f61 * c2) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public abstract /* synthetic */ Class mo716();

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public abstract /* synthetic */ String mo717();

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a((byte) (TextUtils.getCapsMode("", 0, 0) + 28), "\u0001\u0002\u008a\u008a\u0000\u0001\u0005\u0000\u0006\u0007\u0004\u000b\n\u0001\u000b\b\u0081", 17 - TextUtils.getCapsMode("", 0, 0)).intern(), a((byte) (85 - TextUtils.getOffsetBefore("", 0)), "\r\u000e\u0085", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 2).intern());
        int i = c + 5;
        f5686d = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public abstract /* synthetic */ az mo719();

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = c + 97;
        f5686d = i % 128;
        int i2 = i % 2;
        String strIntern = a((byte) (View.resolveSizeAndState(0, 0, 0) + 102), "\t\n\u0006\u000e\u000f\u0007", 6 - (ViewConfiguration.getTouchSlop() >> 8)).intern();
        int i3 = c + 11;
        f5686d = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
