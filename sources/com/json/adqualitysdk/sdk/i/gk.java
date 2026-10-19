package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.iw;
import com.json.mediationsdk.IronSource;

/* JADX INFO: loaded from: classes4.dex */
public final class gk implements gd {
    private static int[] a = {-502998214, -1573513199, -294923119, -1470937631, -525786875, 1507505987, -789269615, -556488749, -1237712247, 1420614278, -457701999, -927610975, -1518972302, -364041780, 1138945090, 2048143376, -2098389670, 1102761399};
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
        int i = b + 57;
        c = i % 128;
        if (i % 2 != 0) {
            return IronSource.class;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = c + 77;
        b = i % 128;
        int i2 = i % 2;
        String strIntern = a(new int[]{1323330009, 32914512, 147086945, 939245725, -47135136, 2019225391, -1772561223, 186382779, -892877559, -530152024, -768668846, -580639258, 1947545644, -903430093, -1973034793, 773209777, -2111352804, -1902904246, 769801339, 2025422723}, 38 - Color.blue(0)).intern();
        int i3 = b + 39;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(new int[]{-2125043937, 1234246397, 1925831181, 13235645, 204110531, -1023525539, -1382615683, -349205537, 230231624, 884917416, -1427228691, -336081586}, (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 22).intern(), a(new int[]{-993972194, -107941475}, 3 - Color.alpha(0)).intern());
        int i = c + 97;
        b = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bn bnVar = new bn(a(new int[]{147086945, 939245725, -47135136, 2019225391, 769801339, 2025422723}, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 9).intern());
        int i = b + 95;
        c = i % 128;
        if ((i % 2 == 0 ? 'Z' : (char) 5) != 'Z') {
            return bnVar;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = b + 83;
        c = i % 128;
        String strIntern = ((i % 2 == 0 ? '-' : 'K') != '-' ? a(new int[]{147086945, 939245725, -47135136, 2019225391, 769801339, 2025422723}, 10 - Color.argb(0, 0, 0, 0)) : a(new int[]{147086945, 939245725, -47135136, 2019225391, 769801339, 2025422723}, 124 >> Color.argb(1, 1, 1, 0))).intern();
        int i2 = c + 47;
        b = i2 % 128;
        int i3 = i2 % 2;
        return strIntern;
    }
}
