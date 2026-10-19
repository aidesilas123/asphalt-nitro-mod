package com.json.adqualitysdk.sdk.i;

import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.az;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jp.maio.sdk.android.MaioAds;
import jp.maio.sdk.android.MaioAdsListenerInterface;

/* JADX INFO: loaded from: classes4.dex */
public final class bo extends az {
    private static char[] t = {Ascii.MAX, 265, 279, 286, 266, 260, 285, 293, 278, 294, 287, 287, 296, 249, 279, 244, 300, 295, 284, 297, 284, 295, 278, 244, 289, 280, 280, 'p', 227, 197, 195, 221, 219, 226, 196, 198, 225, 221, 194, 189, 221, 223, 225, 230, 226, 220, 191, 173, 200, 203, 211, 230, 226, 229, 225, 224, 225, 219, 223, 205, 200, 225, 228, 229, 229, 228, 236, 225, 220, 209, 222, 209, 220, 203, 169, 204, 169, 204, 205, 219, 201, 170, 212, 213, 220, 176, Ascii.MAX, 247, 246, 254, 249, 245, 215, 213, 239, 237, 244, 214, 216, 243, 239, 212, 207, 239, 241, 243, 248, 244, 238, 209, 195, 230, 248, 244, 223, 217, 242, 244, 236, 218, 218, 218, 218, 243, 246, 'I', 146, 150, 149, 152, 161, 158, 137, 140, 153, 128, 134, 154, 147, 133, '&', '_', 'k', 'i', 'i', 'l', 's', 'n', 'Z', '_', 'k', 'R', 'X', 'l', 'e', '7', 'i', 'l', 's', 'n', 'Z', '_', 'k', 'R', 'X', 'l', 'e', 'W', 'Y', 'd', 'b', 'c', 'l', 'k', 'l', 'q', '[', ']', 'k', '{', 239, 239, 227, 218, 232, 239, 219, 213, 238, 226, 221, 241, 246, 239, 236, 236, 238};
    private static int u = 0;
    private static int v = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bo.m((MaioAdsListenerInterface) list.get(0));
            return null;
        }
    }

    public bo(String str) {
        super(str);
    }

    private static String k(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
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
            System.arraycopy(t, i, cArr, 0, i2);
            if (bArr != null) {
                char[] cArr2 = new char[i2];
                i.f68 = 0;
                char c = 0;
                while (true) {
                    int i5 = i.f68;
                    if (i5 >= i2) {
                        break;
                    }
                    if (bArr[i5] == 1) {
                        cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c);
                    } else {
                        cArr2[i5] = (char) ((cArr[i5] << 1) - c);
                    }
                    c = cArr2[i5];
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

    private static void l(MaioAdsListenerInterface maioAdsListenerInterface) {
        int i = u + 69;
        v = i % 128;
        char c = i % 2 == 0 ? '\\' : (char) 31;
        MaioAds.setMaioAdsListener(maioAdsListenerInterface);
        if (c != '\\') {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void m(MaioAdsListenerInterface maioAdsListenerInterface) {
        int i = v + 95;
        u = i % 128;
        int i2 = i % 2;
        l(maioAdsListenerInterface);
        int i3 = u + 9;
        v = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 18 : '0') != 18) {
            return;
        }
        int i4 = 21 / 0;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(k(false, new int[]{179, 18, 131, 0}, "\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001").intern(), new a());
        int i = u + 81;
        v = i % 128;
        int i2 = i % 2;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f7  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r8) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bo.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = v + 21;
        u = i % 128;
        int i2 = i % 2;
        String sdkVersion = MaioAds.getSdkVersion();
        int i3 = u + 21;
        v = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
        return sdkVersion;
    }
}
