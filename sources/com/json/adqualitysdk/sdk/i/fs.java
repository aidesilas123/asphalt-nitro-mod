package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.adcolony.sdk.AdColony;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class fs implements gd {
    private static int[] a = {1216820654, -1669622671, -1421970984, -1572425489, 817560776, 310764495, -1345318181, -2088656715, -1015866249, -142813983, -137355763, -276557054, 566723107, 1681877798, 1520638506, 1457083850, 55457999, 1709082455};
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
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final Class mo716() {
        int i = b + 33;
        c = i % 128;
        if ((i % 2 == 0 ? '1' : ']') == ']') {
            return AdColony.class;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String mo717() {
        int i = c + 5;
        b = i % 128;
        return (i % 2 != 0 ? a(new int[]{-1635363024, 248718797, 1848514911, 75267228, -851019787, -953347341, 823790366, 1953080773, -500587176, 835461410, 2055634151, 252419517, -1001970532, 1254409373}, TextUtils.indexOf((CharSequence) "", ',') + 59) : a(new int[]{-1635363024, 248718797, 1848514911, 75267228, -851019787, -953347341, 823790366, 1953080773, -500587176, 835461410, 2055634151, 252419517, -1001970532, 1254409373}, TextUtils.indexOf((CharSequence) "", '0') + 26)).intern();
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(new int[]{1301359522, 1381048955, -1368068634, 1575094327, -148587222, 802459821, 407446848, 1655075715, 927089160, -1649216616}, 18 - TextUtils.indexOf((CharSequence) "", '0')).intern(), a(new int[]{-1463993398, 949542844}, 2 - TextUtils.indexOf((CharSequence) "", '0', 0)).intern());
        int i = b + 101;
        c = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final az mo719() {
        bc bcVar = new bc(a(new int[]{1848514911, 75267228, -851019787, -953347341}, TextUtils.indexOf("", "") + 8).intern());
        int i = b + 37;
        c = i % 128;
        int i2 = i % 2;
        return bcVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String mo720() {
        int i = c + 45;
        b = i % 128;
        int i2 = i % 2;
        String strIntern = a(new int[]{1848514911, 75267228, -851019787, -953347341}, 7 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern();
        int i3 = c + 13;
        b = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
