package com.json.adqualitysdk.sdk.i;

import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.os.Process;
import android.text.AndroidCharacter;
import android.view.View;
import android.view.ViewConfiguration;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.AdUnit;
import com.inmobi.sdk.InMobiSdk;
import com.json.adqualitysdk.sdk.i.az;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bq extends az {
    private static int w = 0;
    private static int x = 1;
    private static int[] t = {-1733757972, -766178040, -1738301762, -1149592467, -574511779, 1005347887, -888582686, 1665100370, 821302852, 981988521, 2091589146, 1572917847, -1466704209, -1877841183, 428231127, -1884960159, -829556332, 783059017};
    private static char v = 7;
    private static char[] u = {'c', 'o', 'm', '.', 'i', 'n', 'b', 'r', 'e', 'd', 'g', 'I', 'M', 'A', 't', 'v', 'y', 'a', 's', 'k', 'u', 'p', 'T', 'R', 'P', 'B', 'q', 'N', 'l', 'V', 'w', 'E', 'L', 'C', '_', 'Y', 'F', 'U', 'S', 'D', 'K', 'O', 'W', 'f', 'h', 'j', 'x', 'z', '{'};

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bq.l((String) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bq.k((String) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bq.q((AdContainer) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bq.m416((String) list.get(0));
        }
    }

    public bq(String str) {
        super(str);
    }

    static /* synthetic */ Enum k(String str) {
        int i = x + 59;
        w = i % 128;
        if (i % 2 != 0) {
            n(str);
            throw null;
        }
        Enum enumN = n(str);
        int i2 = w + 89;
        x = i2 % 128;
        int i3 = i2 % 2;
        return enumN;
    }

    static /* synthetic */ Enum l(String str) {
        int i = w + 29;
        x = i % 128;
        int i2 = i % 2;
        Enum enumM415 = m415(str);
        int i3 = w + 41;
        x = i3 % 128;
        int i4 = i3 % 2;
        return enumM415;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.Enum m(java.lang.String r6) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.bq.x
            int r0 = r0 + 111
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.bq.w = r1
            int r0 = r0 % 2
            r0 = -1
            int r1 = r6.hashCode()
            r2 = -1097819034(0xffffffffbe909c66, float:-0.28244323)
            r3 = 1
            r4 = 0
            if (r1 == r2) goto L45
            r2 = 1554700484(0x5caad8c4, float:3.8471266E17)
            if (r1 == r2) goto L1c
            goto L75
        L1c:
            r1 = 48
            java.lang.String r2 = ""
            int r1 = android.text.TextUtils.indexOf(r2, r1, r4)
            int r1 = r1 + 101
            byte r1 = (byte) r1
            int r2 = android.graphics.Color.argb(r4, r4, r4, r4)
            int r2 = 21 - r2
            java.lang.String r5 = "\u0019\u001f\f\"!\n\"\u0018\u001b\u001d\u0015$\u001f& \r\u0019\"\r\u0019©"
            java.lang.String r1 = p(r1, r5, r2)
            java.lang.String r1 = r1.intern()
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L3f
            r6 = 1
            goto L40
        L3f:
            r6 = 0
        L40:
            if (r6 == r3) goto L43
            goto L75
        L43:
            r0 = 0
            goto L75
        L45:
            int r1 = android.view.KeyEvent.normalizeMetaState(r4)
            int r1 = r1 + 112
            byte r1 = (byte) r1
            int r2 = android.graphics.Color.alpha(r4)
            int r2 = r2 + 25
            java.lang.String r5 = "\u0019\u001f\f\"!\n\"\u0018\u001b\u001d\u0015$\u001f&\u001d)'\u001e\u001f'\u001e\u001aµµ¾"
            java.lang.String r1 = p(r1, r5, r2)
            java.lang.String r1 = r1.intern()
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L64
            r6 = 1
            goto L65
        L64:
            r6 = 0
        L65:
            if (r6 == 0) goto L75
            int r6 = com.json.adqualitysdk.sdk.i.bq.w
            int r6 = r6 + 67
            int r0 = r6 % 128
            com.json.adqualitysdk.sdk.i.bq.x = r0
            int r6 = r6 % 2
            if (r6 != 0) goto L74
            goto L43
        L74:
            r0 = 1
        L75:
            if (r0 == 0) goto L90
            if (r0 == r3) goto L7b
            r6 = 0
            return r6
        L7b:
            com.inmobi.ads.AdContainer$RenderingProperties$PlacementType r6 = com.inmobi.ads.AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN
            int r0 = com.json.adqualitysdk.sdk.i.bq.x
            int r0 = r0 + 77
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.bq.w = r1
            int r0 = r0 % 2
            if (r0 == 0) goto L8f
            r0 = 85
            int r0 = r0 / r4
            return r6
        L8d:
            r6 = move-exception
            throw r6
        L8f:
            return r6
        L90:
            com.inmobi.ads.AdContainer$RenderingProperties$PlacementType r6 = com.inmobi.ads.AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bq.m(java.lang.String):java.lang.Enum");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.Enum n(java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bq.n(java.lang.String):java.lang.Enum");
    }

    private static String o(int[] iArr, int i) {
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

    private static String p(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = u;
            char c2 = v;
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

    static /* synthetic */ Object q(AdContainer adContainer) {
        int i = x + 125;
        w = i % 128;
        boolean z = i % 2 != 0;
        Object objR = r(adContainer);
        if (z) {
            int i2 = 62 / 0;
        }
        int i3 = x + 111;
        w = i3 % 128;
        int i4 = i3 % 2;
        return objR;
    }

    private static Object r(AdContainer adContainer) {
        int i = w + 27;
        x = i % 128;
        int i2 = i % 2;
        Object dataModel = adContainer.getDataModel();
        int i3 = x + 5;
        w = i3 % 128;
        int i4 = i3 % 2;
        return dataModel;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    private static Enum m415(String str) {
        int i = -1;
        int iHashCode = str.hashCode();
        if (iHashCode != 556003820) {
            if (iHashCode == 556062505) {
                if ((str.equals(o(new int[]{1985295152, -1052411059, 1628667443, 2073242482, -1592353600, 2086661802, 155422749, 1805997619, -1960143325, -962086970, -1587182421, 457462541}, ((Process.getThreadPriority(0) + 20) >> 6) + 23).intern()) ? 1 : 0) == 1) {
                    i = 1;
                }
            } else if (iHashCode == 1382961856 && str.equals(p((byte) (88 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))), "\u000b)!\r\t\u001b)&\u001b\u001f\u0015$\u001f&\u001e)\u001a)\"00\u0015", AndroidCharacter.getMirror('0') - 26).intern())) {
                i = 2;
            }
        } else if (str.equals(o(new int[]{1985295152, -1052411059, 1628667443, 2073242482, -1592353600, 2086661802, 155422749, 1805997619, -39593882, -1406793811, 1589580472, 1921587928}, View.getDefaultSize(0, 0) + 23).intern())) {
            int i2 = w + 111;
            x = i2 % 128;
            i = (i2 % 2 != 0 ? 1 : 0) ^ 1;
        }
        if (i == 0) {
            return AdUnit.AdMarkupType.AD_MARKUP_TYPE_INM_HTML;
        }
        if (i == 1) {
            return AdUnit.AdMarkupType.AD_MARKUP_TYPE_INM_JSON;
        }
        if (i != 2) {
            return null;
        }
        AdUnit.AdMarkupType adMarkupType = AdUnit.AdMarkupType.AD_MARKUP_TYPE_UNKNOWN;
        int i3 = x + 1;
        w = i3 % 128;
        if ((i3 % 2 != 0 ? 'D' : '^') == '^') {
            return adMarkupType;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    static /* synthetic */ Enum m416(String str) {
        int i = x + 11;
        w = i % 128;
        if ((i % 2 != 0 ? '4' : (char) 19) == '4') {
            m(str);
            throw null;
        }
        Enum enumM = m(str);
        int i2 = x + 19;
        w = i2 % 128;
        int i3 = i2 % 2;
        return enumM;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(o(new int[]{301868760, 249560965, -1297127038, 1522074267, -2108309892, -39594096, 1100307468, 1671473336, -607788869, -727930491}, View.combineMeasuredStates(0, 0) + 20).intern(), new d());
        map.put(p((byte) (ImageFormat.getBitsPerPixel(0) + 68), "\u000b\t\u0014\u0007\n\r\u000e\n\u0014\u000e\u0016\u0017\u000e\u0017\n\u001d\u0006\u0013°", (ViewConfiguration.getPressedStateDuration() >> 16) + 19).intern(), new a());
        map.put(o(new int[]{-1085196257, -2109002466, 1065217568, 269948481, 489341626, -111371889}, (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 12).intern(), new c());
        map.put(o(new int[]{-1622650807, -1913182923, 1586299856, 1303068212, -726364897, -68761401, 1081641092, 1892105277, -1019403483, -688227897}, 'A' - AndroidCharacter.getMirror('0')).intern(), new b());
        int i = x + 19;
        w = i % 128;
        int i2 = i % 2;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0334  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r22) {
        /*
            Method dump skipped, instruction units count: 1278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bq.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = x + 47;
        w = i % 128;
        int i2 = i % 2;
        String version = InMobiSdk.getVersion();
        int i3 = w + 121;
        x = i3 % 128;
        int i4 = i3 % 2;
        return version;
    }
}
