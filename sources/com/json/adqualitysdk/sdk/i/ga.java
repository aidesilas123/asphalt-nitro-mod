package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.json.adqualitysdk.sdk.i.iw;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ga implements gd {
    private static char[] a = {198, 210, 209, 200, 215, 213, 214, 146, 197, 220, 199, 196, 154, 145, 147};
    private static int b = 99;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5653d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5654e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5655f = 1;

    public static class d extends ga {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5656g = 56;
        private static int h = 0;
        private static int i = 1;

        private static String b(int i2, boolean z, int i3, int i4, String str) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (c.f35) {
                char[] cArr2 = new char[i4];
                c.f36 = 0;
                while (true) {
                    int i5 = c.f36;
                    if (i5 >= i4) {
                        break;
                    }
                    c.f37 = cArr[i5];
                    cArr2[c.f36] = (char) (c.f37 + i2);
                    int i6 = c.f36;
                    cArr2[i6] = (char) (cArr2[i6] - f5656g);
                    c.f36 = i6 + 1;
                }
                if (i3 > 0) {
                    c.f38 = i3;
                    char[] cArr3 = new char[i4];
                    System.arraycopy(cArr2, 0, cArr3, 0, i4);
                    int i7 = c.f38;
                    System.arraycopy(cArr3, 0, cArr2, i4 - i7, i7);
                    int i8 = c.f38;
                    System.arraycopy(cArr3, i8, cArr2, 0, i4 - i8);
                }
                if (z) {
                    char[] cArr4 = new char[i4];
                    c.f36 = 0;
                    while (true) {
                        int i9 = c.f36;
                        if (i9 >= i4) {
                            break;
                        }
                        cArr4[i9] = cArr2[(i4 - i9) - 1];
                        c.f36 = i9 + 1;
                    }
                    cArr2 = cArr4;
                }
                str2 = new String(cArr2);
            }
            return str2;
        }

        @Override // com.json.adqualitysdk.sdk.i.ga, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻐ */
        public final Class mo716() {
            int i2 = i;
            int i3 = i2 + 125;
            h = i3 % 128;
            int i4 = i3 % 2;
            int i5 = i2 + 75;
            h = i5 % 128;
            int i6 = i5 % 2;
            return PAGSdk.class;
        }

        @Override // com.json.adqualitysdk.sdk.i.ga, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻛ */
        public final String mo717() {
            int i2 = i + 51;
            h = i2 % 128;
            int i3 = i2 % 2;
            String strIntern = b(150 - Color.green(0), false, Process.getGidForName("") + 41, 43 - View.MeasureSpec.makeMeasureSpec(0, 0), "\uffd0\u0004\u001b\u0016\u0007\u0006\u0003\u0010\u0005\u0007\uffd0\u0015\u0006\r\uffd0\u0011\u0012\u0007\u0010\u0003\u0006\u0015\u0006\r\uffd0\u0003\u0012\u000b\uffd0\u000b\u0010\u000b\u0016\uffd0\ufff2￣￩\ufff5\u0006\r\u0005\u0011\u000f").intern();
            int i4 = i + 85;
            h = i4 % 128;
            int i5 = i4 % 2;
            return strIntern;
        }
    }

    public static class e extends ga {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static long f5657g = 1261722427610558538L;
        private static int h = 0;
        private static char i = 0;
        private static int j = 0;
        private static int k = 1;

        private static String b(String str, String str2, int i2, char c, String str3) {
            String str4;
            Object charArray = str3;
            if (str3 != null) {
                charArray = str3.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            Object charArray2 = str2;
            if (str2 != null) {
                charArray2 = str2.toCharArray();
            }
            char[] cArr2 = (char[]) charArray2;
            Object charArray3 = str;
            if (str != null) {
                charArray3 = str.toCharArray();
            }
            char[] cArr3 = (char[]) charArray3;
            synchronized (j.f124) {
                char[] cArr4 = (char[]) cArr3.clone();
                char[] cArr5 = (char[]) cArr2.clone();
                cArr4[0] = (char) (c ^ cArr4[0]);
                cArr5[2] = (char) (cArr5[2] + ((char) i2));
                int length = cArr.length;
                char[] cArr6 = new char[length];
                j.f125 = 0;
                while (true) {
                    int i3 = j.f125;
                    if (i3 < length) {
                        int i4 = (i3 + 2) % 4;
                        int i5 = (i3 + 3) % 4;
                        char c2 = (char) (((cArr4[i3 % 4] * 32718) + cArr5[i4]) % 65535);
                        j.f126 = c2;
                        cArr5[i5] = (char) (((cArr4[i5] * 32718) + cArr5[i4]) / 65535);
                        cArr4[i5] = c2;
                        int i6 = j.f125;
                        cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ f5657g) ^ ((long) h)) ^ ((long) i));
                        j.f125 = i6 + 1;
                    } else {
                        str4 = new String(cArr6);
                    }
                }
            }
            return str4;
        }

        @Override // com.json.adqualitysdk.sdk.i.ga, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻐ */
        public final Class mo716() {
            int i2 = k + 31;
            j = i2 % 128;
            if (i2 % 2 == 0) {
                return TTAdSdk.class;
            }
            throw null;
        }

        @Override // com.json.adqualitysdk.sdk.i.ga, com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻛ */
        public final String mo717() {
            int i2 = k + 113;
            j = i2 % 128;
            int i3 = i2 % 2;
            String strIntern = b("㓾\u0001ⳓ◌", "\uf04a\ueede觜ᆂ", View.getDefaultSize(0, 0) - 754974412, (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), "므抈Ᾱ∇째ₚ\uead3맲思頯濆孑\uf829귏ﰠ㊉䣙\udd4dﭶ뇈햘寭ꘟ쪓饔鞛訍렅羡攖䓽ŝꋠ먡\uea5d").intern();
            int i4 = j + 39;
            k = i4 % 128;
            int i5 = i4 % 2;
            return strIntern;
        }
    }

    private static String a(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
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
            char[] cArr2 = a;
            int i2 = b;
            if (f5653d) {
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
            if (c) {
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

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public abstract /* synthetic */ Class mo716();

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public abstract /* synthetic */ String mo717();

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(null, null, KeyEvent.normalizeMetaState(0) + 127, "\u0084\u0081\u0083\u008c\u008b\u0084\u0085\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0081\u0084\u0083\u0083\u0082\u0081").intern(), a(null, null, 127 - TextUtils.getOffsetBefore("", 0), "\u008f\u008e\u008d").intern());
        int i = f5654e + 61;
        f5655f = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bh bhVar = new bh(a(null, null, 127 - Gravity.getAbsoluteGravity(0, 0), "\u0084\u0081\u0083\u008c\u008b\u0084\u0085\u008a\u0089").intern());
        int i = f5654e + 47;
        f5655f = i % 128;
        if ((i % 2 == 0 ? 'b' : 'Z') == 'Z') {
            return bhVar;
        }
        int i2 = 24 / 0;
        return bhVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5654e + 61;
        f5655f = i % 128;
        String strIntern = a(null, null, (i % 2 == 0 ? 'T' : ' ') != 'T' ? (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 127 : 117 / (ViewConfiguration.getMinimumFlingVelocity() - 37), "\u0084\u0081\u0083\u008c\u008b\u0084\u0085\u008a\u0089").intern();
        int i2 = f5654e + 3;
        f5655f = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 23 : (char) 16) != 23) {
            return strIntern;
        }
        throw null;
    }
}
