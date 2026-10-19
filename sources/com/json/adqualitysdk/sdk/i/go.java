package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.text.TextUtils;
import com.json.adqualitysdk.sdk.i.iw;
import com.qq.e.comm.managers.GDTAdSdk;

/* JADX INFO: loaded from: classes4.dex */
public final class go implements gd {
    private static int[] a = {-265975686, -1901909343, -137111556, 807586548, 575587404, -1355023338, -1058422774, -1214297184, 900722114, -2100067170, -2068567594, -1392433920, 429424711, -387008534, 382641532, 670491794, 1320170190, -623956742};
    private static int b = 0;
    private static int c = 1;

    private static String a(int[] iArr, int i) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) a.clone();
            b.f34 = 0;
            while (true) {
                int i2 = b.f34;
                if (i2 < iArr.length) {
                    cArr[0] = (char) (iArr[i2] >> 16);
                    cArr[1] = (char) iArr[i2];
                    cArr[2] = (char) (iArr[i2 + 1] >> 16);
                    cArr[3] = (char) iArr[i2 + 1];
                    b.f31 = (cArr[0] << 16) + cArr[1];
                    b.f32 = (cArr[2] << 16) + cArr[3];
                    b.m390(iArr2);
                    for (int i3 = 0; i3 < 16; i3++) {
                        int i4 = b.f31 ^ iArr2[i3];
                        b.f31 = i4;
                        b.f32 = b.m391(i4) ^ b.f32;
                        int i5 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i5;
                    }
                    int i6 = b.f31;
                    b.f31 = b.f32;
                    b.f32 = i6;
                    b.f32 = i6 ^ iArr2[16];
                    b.f31 ^= iArr2[17];
                    int i7 = b.f32;
                    int i8 = b.f31;
                    cArr[0] = (char) (i8 >>> 16);
                    cArr[1] = (char) i8;
                    int i9 = b.f32;
                    cArr[2] = (char) (i9 >>> 16);
                    cArr[3] = (char) i9;
                    b.m390(iArr2);
                    int i10 = b.f34;
                    cArr2[i10 << 1] = cArr[0];
                    cArr2[(i10 << 1) + 1] = cArr[1];
                    cArr2[(i10 << 1) + 2] = cArr[2];
                    cArr2[(i10 << 1) + 3] = cArr[3];
                    b.f34 = i10 + 2;
                } else {
                    str = new String(cArr2, 0, i);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = c;
        int i2 = i + 103;
        b = i2 % 128;
        if (!(i2 % 2 == 0)) {
            throw null;
        }
        int i3 = i + 13;
        b = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return GDTAdSdk.class;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = c + 41;
        b = i % 128;
        int i2 = i % 2;
        String strIntern = a(new int[]{1343431720, 1951627858, 2064900992, -1855903051, 1918597948, 900235132, -1148643805, 818621269, -1486733522, 1734827126, 1166951874, 633839542, 1897439239, 1661639609, 1105024101, -579071083}, TextUtils.getOffsetBefore("", 0) + 31).intern();
        int i3 = b + 37;
        c = i3 % 128;
        if (!(i3 % 2 == 0)) {
            return strIntern;
        }
        int i4 = 36 / 0;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(new int[]{1403448548, -1650786126, 1241470350, 773251868, 1440351175, -915706289, -1001167086, 608335689, 1647935105, 1609109572}, 18 - (Process.myPid() >> 22)).intern(), a(new int[]{-360692733, 1166349143}, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 2).intern());
        int i = b + 67;
        c = i % 128;
        if ((i % 2 == 0 ? 'Q' : ':') == ':') {
            return eVar;
        }
        int i2 = 48 / 0;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bx bxVar = new bx(a(new int[]{-161639493, -1045465267, 737814807, -485781753}, 7 - Color.alpha(0)).intern());
        int i = c + 123;
        b = i % 128;
        if ((i % 2 != 0 ? '-' : (char) 30) == 30) {
            return bxVar;
        }
        int i2 = 71 / 0;
        return bxVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = b + 61;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a(new int[]{-161639493, -1045465267, 737814807, -485781753}, 6 - TextUtils.indexOf((CharSequence) "", '0')).intern();
        int i3 = c + 55;
        b = i3 % 128;
        if (i3 % 2 == 0) {
            return strIntern;
        }
        throw null;
    }
}
