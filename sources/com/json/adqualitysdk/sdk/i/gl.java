package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.bs;
import com.json.adqualitysdk.sdk.i.iw;
import com.mbridge.msdk.MBridgeSDK;
import com.mintegral.msdk.MIntegralSDK;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class gl {

    public static class b implements gd {
        private static char[] a = {220, 232, 230, 167, 219, 235, 226, 221, 224, 222, 236, 228, 198, 187, 204, 189, 196, 231, 237, 168, 218, 229, 176, 169};
        private static int b = 121;
        private static boolean c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f5669d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5670e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5671f = 1;

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
                if (f5669d) {
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
        public final Class mo716() {
            int i = f5670e + 75;
            int i2 = i % 128;
            f5671f = i2;
            int i3 = i % 2;
            int i4 = i2 + 49;
            f5670e = i4 % 128;
            int i5 = i4 % 2;
            return MBridgeSDK.class;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻛ */
        public final String mo717() {
            int i = f5670e + 117;
            f5671f = i % 128;
            String strIntern = a(null, null, (i % 2 == 0 ? 'E' : 'R') != 'E' ? 126 - TextUtils.lastIndexOf("", '0', 0) : 92 / TextUtils.lastIndexOf("", 'L', 1), "\u0091\u0090\u008f\u008a\u0089\u0088\u0087\u0086\u008e\u008d\u0084\u008c\u0088\u008b\u0083\u0084\u008a\u0089\u0088\u0087\u0086\u0085\u0083\u0084\u0083\u0082\u0081").intern();
            int i2 = f5670e + 121;
            f5671f = i2 % 128;
            if (!(i2 % 2 == 0)) {
                return strIntern;
            }
            throw null;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ｋ */
        public final iw.e mo718() {
            iw.e eVar = new iw.e(a(null, null, (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 127, "\u0096\u0095\u0086\u0089\u008a\u0093\u0092\u0087\u0083\u0094\u008b\u0086\u0082\u0093\u0081\u008a\u0092\u0092\u0082\u0081").intern(), a(null, null, View.MeasureSpec.getSize(0) + 127, "\u0098\u0084\u0097").intern());
            int i = f5671f + 55;
            f5670e = i % 128;
            if (!(i % 2 != 0)) {
                return eVar;
            }
            int i2 = 92 / 0;
            return eVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﾇ */
        public final az mo719() {
            bs.a aVar = new bs.a(a(null, null, (ViewConfiguration.getWindowTouchSlop() >> 8) + 127, "\u0096\u0095\u0086\u0089\u008a\u0093\u0092\u0087\u0083").intern());
            int i = f5670e + 33;
            f5671f = i % 128;
            if (i % 2 != 0) {
                return aVar;
            }
            int i2 = 92 / 0;
            return aVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﾒ */
        public final String mo720() {
            int i = f5670e + 9;
            f5671f = i % 128;
            return a(null, null, !(i % 2 == 0) ? (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 127 : 109 >>> (TypedValue.complexToFloat(1) > 0.0f ? 1 : (TypedValue.complexToFloat(1) == 0.0f ? 0 : -1)), "\u0096\u0095\u0086\u0089\u008a\u0093\u0092\u0087\u0083").intern();
        }
    }

    public static class e implements gd {
        private static long a = 0;
        private static int b = 0;
        private static char c = 18025;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5672d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5673e = 1;

        private static String a(String str, String str2, int i, char c2, String str3) {
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
                cArr4[0] = (char) (c2 ^ cArr4[0]);
                cArr5[2] = (char) (cArr5[2] + ((char) i));
                int length = cArr.length;
                char[] cArr6 = new char[length];
                j.f125 = 0;
                while (true) {
                    int i2 = j.f125;
                    if (i2 < length) {
                        int i3 = (i2 + 2) % 4;
                        int i4 = (i2 + 3) % 4;
                        char c3 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                        j.f126 = c3;
                        cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                        cArr4[i4] = c3;
                        int i5 = j.f125;
                        cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ a) ^ ((long) b)) ^ ((long) c));
                        j.f125 = i5 + 1;
                    } else {
                        str4 = new String(cArr6);
                    }
                }
            }
            return str4;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻐ */
        public final Class mo716() {
            int i = f5673e + 59;
            f5672d = i % 128;
            if ((i % 2 != 0 ? ')' : '.') != ')') {
                return MIntegralSDK.class;
            }
            throw null;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻛ */
        public final String mo717() {
            int i = f5672d + 45;
            f5673e = i % 128;
            int i2 = i % 2;
            String strIntern = a("ड़\ueceb斀\udce5", "\u0000\u0000\u0000\u0000", (-2131956983) - KeyEvent.normalizeMetaState(0), (char) (58725 - View.resolveSize(0, 0)), "ﯜ墬鎟蜅˃휤\uf6e1\ud801০ꮴ\uf3f6ꊊᅏ㰩Ť㿩莵ᡴ滌깃뻞䷉奈꣣涡䱺ᒈ⬁뎿柒뛰").intern();
            int i3 = f5672d + 115;
            f5673e = i3 % 128;
            if (i3 % 2 == 0) {
                throw null;
            }
            return strIntern;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ｋ */
        public final iw.e mo718() {
            iw.e eVar = new iw.e(a("鯳р\ue37a爅", "\u0000\u0000\u0000\u0000", TextUtils.indexOf("", "", 0, 0), (char) (ViewConfiguration.getJumpTapTimeout() >> 16), "ṯ₍សⲁ宑⌧\udc2e\ua8dc拼ﯗ䕫\uec4d\u05f7댰랟ᭊⲿ⤇㝙ᅁ").intern(), a("낐ۖꏓ淜", "\u0000\u0000\u0000\u0000", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 754526545, (char) (KeyEvent.getDeadChar(0, 0) + 56483), "ⳡꈱ仁").intern());
            int i = f5673e + 79;
            f5672d = i % 128;
            int i2 = i % 2;
            return eVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﾇ */
        public final az mo719() {
            bs.d dVar = new bs.d(a("\u2ef9鞰砵ꕭ", "\u0000\u0000\u0000\u0000", (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 899133486, (char) Drawable.resolveOpacity(0, 0), "崄믱Ἓ唨\ue7b4鑱ฟꅁ鏛").intern());
            int i = f5672d + 3;
            f5673e = i % 128;
            if (!(i % 2 == 0)) {
                return dVar;
            }
            int i2 = 36 / 0;
            return dVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﾒ */
        public final String mo720() {
            int i = f5673e + 111;
            f5672d = i % 128;
            return ((i % 2 != 0 ? (char) 31 : '9') != '9' ? a("\u2ef9鞰砵ꕭ", "\u0000\u0000\u0000\u0000", 899133485 >>> (ExpandableListView.getPackedPositionForChild(1, 1) > 1L ? 1 : (ExpandableListView.getPackedPositionForChild(1, 1) == 1L ? 0 : -1)), (char) (ViewConfiguration.getScrollBarSize() << 19), "崄믱Ἓ唨\ue7b4鑱ฟꅁ鏛") : a("\u2ef9鞰砵ꕭ", "\u0000\u0000\u0000\u0000", 899133485 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) (ViewConfiguration.getScrollBarSize() >> 8), "崄믱Ἓ唨\ue7b4鑱ฟꅁ鏛")).intern();
        }
    }

    public gl() {
    }

    public gl(Context context) {
        context.getApplicationContext();
    }
}
