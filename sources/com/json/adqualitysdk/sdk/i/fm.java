package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.ViewConfiguration;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class fm extends fk {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char[] f5629e = {227, 214, 229, 230, 223, 145, 172};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5630f = 113;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f5631g = true;
    private static boolean h = true;
    private static int i = 0;
    private static int j = 1;

    public fm(dx dxVar) {
        super(dxVar);
    }

    private static String c(int[] iArr, String str, int i2, String str2) throws UnsupportedEncodingException {
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
            char[] cArr2 = f5629e;
            int i3 = f5630f;
            if (h) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i4 = k.f130;
                    int i5 = k.f129 - 1;
                    int i6 = k.f130;
                    cArr3[i4] = (char) (cArr2[bArr[i5 - i6] + i2] - i3);
                    k.f130 = i6 + 1;
                }
                return new String(cArr3);
            }
            if (f5631g) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i7 = k.f130;
                    int i8 = k.f129 - 1;
                    int i9 = k.f130;
                    cArr4[i7] = (char) (cArr2[cArr[i8 - i9] - i2] - i3);
                    k.f130 = i9 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i10 = k.f130;
                int i11 = k.f129 - 1;
                int i12 = k.f130;
                cArr5[i10] = (char) (cArr2[iArr[i11 - i12] - i2] - i3);
                k.f130 = i12 + 1;
            }
            return new String(cArr5);
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.fk
    public final String toString() {
        int i2 = j + 97;
        i = i2 % 128;
        if (i2 % 2 != 0) {
            b();
            throw null;
        }
        if (b() == null) {
            return c(null, null, (ViewConfiguration.getPressedStateDuration() >> 16) + 127, "\u0087\u0085\u0081\u0084\u0083\u0082\u0081").intern();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(c(null, null, 127 - TextUtils.getOffsetBefore("", 0), "\u0086\u0085\u0081\u0084\u0083\u0082\u0081").intern());
        sb.append(super.toString());
        String string = sb.toString();
        int i3 = i + 63;
        j = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
        return string;
    }

    @Override // com.json.adqualitysdk.sdk.i.fk, com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    public final dp mo714(dr drVar, cj cjVar) {
        int i2 = i + 123;
        j = i2 % 128;
        int i3 = i2 % 2;
        dp dpVarMo714 = super.mo714(drVar, cjVar);
        dpVarMo714.m676(true);
        int i4 = i + 121;
        j = i4 % 128;
        int i5 = i4 % 2;
        return dpVarMo714;
    }
}
