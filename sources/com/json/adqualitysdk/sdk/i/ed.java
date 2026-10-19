package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ed extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int[] f5598e = {623092986, 465787335, 186590346, 74398509, -713281265, -115144165, 993392363, -1145451439, -688186798, -923307636, -923929141, -1927481041, 924150170, 1120472938, -2066056817, 1367627573, 1662534666, 484684338};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5599f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5600g = 1;
    private dx h;
    private dx i;

    public ed(dx dxVar, dx dxVar2, Cdo cdo) {
        super(cdo);
        this.h = dxVar;
        this.i = dxVar2;
    }

    private static String c(int[] iArr, int i) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) f5598e.clone();
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

    public boolean equals(Object obj) {
        if ((this == obj ? (char) 24 : '\\') == 24) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ed edVar = (ed) obj;
            dx dxVar = this.h;
            if (dxVar == null ? edVar.h != null : !dxVar.equals(edVar.h)) {
                return false;
            }
            dx dxVar2 = this.i;
            if (dxVar2 != null) {
                int i = f5600g + 85;
                f5599f = i % 128;
                boolean z = i % 2 != 0;
                dx dxVar3 = edVar.i;
                if (!z) {
                    return dxVar2.equals(dxVar3);
                }
                dxVar2.equals(dxVar3);
                throw null;
            }
            if (edVar.i == null) {
                return true;
            }
            int i2 = f5600g + 3;
            f5599f = i2 % 128;
            int i3 = i2 % 2;
        }
        return false;
    }

    public int hashCode() {
        int iHashCode;
        int i = f5599f;
        int i2 = i + 79;
        f5600g = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        dx dxVar = this.h;
        if ((dxVar != null ? '?' : (char) 17) != '?') {
            iHashCode = 0;
        } else {
            int i3 = i + 9;
            f5600g = i3 % 128;
            if (i3 % 2 == 0) {
                dxVar.hashCode();
                throw null;
            }
            iHashCode = dxVar.hashCode();
        }
        int i4 = iHashCode * 31;
        dx dxVar2 = this.i;
        return i4 + ((dxVar2 != null ? '8' : '9') != '9' ? dxVar2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h);
        sb.append(c(new int[]{1093892438, -1714861045}, TextUtils.indexOf("", "", 0) + 1).intern());
        sb.append(mo709());
        sb.append(c(new int[]{1093892438, -1714861045}, 1 - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern());
        sb.append(this.i);
        String string = sb.toString();
        int i = f5599f + 67;
        f5600g = i % 128;
        if ((i % 2 == 0 ? '^' : '.') != '^') {
            return string;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final dx m708() {
        int i = f5599f;
        int i2 = i + 11;
        f5600g = i2 % 128;
        int i3 = i2 % 2;
        dx dxVar = this.i;
        int i4 = i + 59;
        f5600g = i4 % 128;
        int i5 = i4 % 2;
        return dxVar;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public abstract String mo709();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final dx m710() {
        int i = f5599f + 101;
        int i2 = i % 128;
        f5600g = i2;
        if (!(i % 2 != 0)) {
            throw null;
        }
        dx dxVar = this.h;
        int i3 = i2 + 3;
        f5599f = i3 % 128;
        if (i3 % 2 == 0) {
            return dxVar;
        }
        int i4 = 93 / 0;
        return dxVar;
    }
}
