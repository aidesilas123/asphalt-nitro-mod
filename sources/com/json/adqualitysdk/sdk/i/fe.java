package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class fe extends ez<String> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int[] f5617f = {1176686854, -1190314454, -2042637518, -247229723, 1287659375, 1981133585, 653699317, -1510778662, -723356254, 528327424, 962560969, 371848115, 1881084091, -313926487, 2011731574, 1104898721, -1025824778, 1724055437};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5618g = 0;
    private static int h = 1;

    public fe(String str, Cdo cdo) {
        super(dq.m680(str), cdo);
    }

    private static String c(int[] iArr, int i) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) f5617f.clone();
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

    @Override // com.json.adqualitysdk.sdk.i.ez
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(c(new int[]{-953720979, -1794107816}, View.MeasureSpec.getMode(0) + 1).intern());
        sb.append(super.toString());
        sb.append(c(new int[]{-953720979, -1794107816}, 1 - (Process.myTid() >> 22)).intern());
        String string = sb.toString();
        int i = f5618g + 79;
        h = i % 128;
        int i2 = i % 2;
        return string;
    }
}
