package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y<K, T> implements p<K, T> {
    private static int b = 224;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f6046d = true;
    private static short[] i = null;
    private static int j = 0;
    private static int k = 1;
    private p<K, T> l;
    private p<K, T> m = new a();
    private static char[] a = {289, 324, 256, 329, 339, 336, 332, 321, 345, 325, 282, 344, 340, 338, 323, 331, 342, 343, 328, 296, 334, 304, 335};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f6047e = 548127730;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f6048f = 113;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f6049g = 1730748667;
    private static byte[] h = {111, -95, -30, Ascii.ESC, 86, 85, -92, -18, Ascii.DC4, 87, 82, -96, 82, 85, -95, -21, Ascii.DC4, -117, -84, -95, 87, 80, 90, Ascii.DLE, -17, 112, -72, 120, 119, -111, 111, 59, -61, 126, 114, Ascii.CAN, -40, -41, 49, -49, -101, 109, 32, 37, -33, 32, -20, 102, -104, -29, -32, Ascii.NAK, 86, -80, Ascii.SUB, Ascii.NAK, -13, Ascii.CR, 89, -91, -27, Ascii.EM, -23, Ascii.SI, -32, -17, 19, 95, -78, Ascii.US, -31, Ascii.FS, 49, 0, 0, 0, 0, 0, 0};

    final class a implements p<K, T> {
        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final void mo226(JSONObject jSONObject, K k, T t) {
        }

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻐ */
        public final void mo227(JSONObject jSONObject, K k, Object obj, T t) {
        }

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﻛ */
        public final void mo228(JSONObject jSONObject, K k, T t) {
        }

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ｋ */
        public final void mo229(JSONObject jSONObject, K k, T t) {
        }

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final void mo230(JSONObject jSONObject, K k, T t) {
        }

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾇ */
        public final void mo231(JSONObject jSONObject, K k, Object obj, T t) {
        }

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final void mo232(JSONObject jSONObject, K k, T t) {
        }

        @Override // com.json.adqualitysdk.sdk.i.p
        /* JADX INFO: renamed from: ﾒ */
        public final void mo233(JSONObject jSONObject, K k, Object obj, T t) {
        }
    }

    private static String a(int[] iArr, int i2, String str, String str2) throws UnsupportedEncodingException {
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
            int i3 = b;
            if (f6046d) {
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
            if (c) {
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

    private JSONObject b(JSONObject jSONObject, T t) {
        int i2 = k + 27;
        j = i2 % 128;
        try {
        } catch (JSONException e2) {
            m.m1032(a(null, 126 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), null, "\u0089\u008c\u0097\u008e\u0096\u008e\u008a\u0087\u0082\u0095\u0088\u0094\u0082\u0081").intern(), d((-88) - Color.green(0), (-1730748597) - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (byte) ((ViewConfiguration.getScrollDefaultDelay() >> 16) + 28), (short) (1 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), (-548127682) - TextUtils.lastIndexOf("", '0', 0)).intern(), e2);
        }
        if (i2 % 2 != 0) {
            jSONObject.has(ib.f123);
            throw null;
        }
        if ((!jSONObject.has(ib.f123) ? ':' : '6') != '6') {
            jSONObject.put(ib.f123, mo223(t));
        }
        if (!jSONObject.has(ib.f115)) {
            jSONObject.put(ib.f115, jt.m948());
        }
        int i3 = k + 13;
        j = i3 % 128;
        if (i3 % 2 == 0) {
            return jSONObject;
        }
        throw null;
    }

    private p<K, T> c() {
        p<K, T> pVar = this.l;
        if ((pVar != null ? 'P' : (char) 7) != 7) {
            int i2 = k + 55;
            j = i2 % 128;
            int i3 = i2 % 2;
            return pVar;
        }
        p<K, T> pVar2 = this.m;
        int i4 = j + 69;
        k = i4 % 128;
        if ((i4 % 2 == 0 ? 'Z' : '>') != 'Z') {
            return pVar2;
        }
        throw null;
    }

    private static String d(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = f6048f;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = h;
                i6 = bArr != null ? (byte) (bArr[f6047e + i4] + i5) : (short) (i[f6047e + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + f6047e + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i3 + f6049g);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = h;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = i;
                        int i8 = n.f136;
                        n.f136 = i8 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
                    }
                    sb.append(n.f133);
                    n.f134 = n.f133;
                    n.f137++;
                }
            }
            string = sb.toString();
        }
        return string;
    }

    private void e(String str, JSONObject jSONObject) {
        String strIntern = a(null, 127 - Color.blue(0), null, "\u0089\u008c\u0097\u008e\u0096\u008e\u008a\u0087\u0082\u0095\u0088\u0094\u0082\u0081").intern();
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getName());
        sb.append(d((ViewConfiguration.getJumpTapTimeout() >> 16) - 110, TextUtils.lastIndexOf("", '0', 0, 0) - 1730748634, (byte) (MotionEvent.axisFromString("") - 106), (short) View.getDefaultSize(0, 0), View.MeasureSpec.getSize(0) - 548127683).intern());
        sb.append(str);
        m.m1022(strIntern, sb.toString(), jSONObject);
        int i2 = j + 111;
        k = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻐ */
    protected abstract String mo223(T t);

    @Override // com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﻐ */
    public void mo226(JSONObject jSONObject, K k2, T t) {
        JSONObject jSONObjectB;
        int keyRepeatTimeout;
        int i2 = k + 69;
        j = i2 % 128;
        if ((i2 % 2 != 0 ? 'F' : 'X') != 'X') {
            jSONObjectB = b(jSONObject, t);
            keyRepeatTimeout = 79 << (ViewConfiguration.getKeyRepeatTimeout() / 43);
        } else {
            jSONObjectB = b(jSONObject, t);
            keyRepeatTimeout = (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 127;
        }
        e(a(null, keyRepeatTimeout, null, "\u008b\u0088\u008e\u008d\u008c\u008a\u0083\u0082\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0082\u0083\u0082\u0081").intern(), jSONObjectB);
        c().mo226(jSONObjectB, k2, t);
    }

    @Override // com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﻐ */
    public final void mo227(JSONObject jSONObject, K k2, Object obj, T t) {
        int i2 = k + 77;
        j = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectB = b(jSONObject, t);
        e(d((-104) - ExpandableListView.getPackedPositionChild(0L), (-1730748581) - TextUtils.indexOf((CharSequence) "", '0', 0), (byte) ((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 126), (short) (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), TextUtils.getTrimmedLength("") - 548127704).intern(), jSONObjectB);
        c().mo227(jSONObjectB, k2, obj, t);
        int i4 = k + 99;
        j = i4 % 128;
        if (!(i4 % 2 != 0)) {
        } else {
            throw null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﻛ */
    public final void mo228(JSONObject jSONObject, K k2, T t) {
        JSONObject jSONObjectB;
        int iIndexOf;
        int i2 = j + 45;
        k = i2 % 128;
        if (i2 % 2 == 0) {
            jSONObjectB = b(jSONObject, t);
            iIndexOf = 94 % TextUtils.indexOf("", "", 0, 1);
        } else {
            jSONObjectB = b(jSONObject, t);
            iIndexOf = TextUtils.indexOf("", "", 0, 0) + 127;
        }
        e(a(null, iIndexOf, null, "\u008b\u0082\u008a\u0093\u008f\u0088\u008d\u008d\u0088\u0083\u0092\u008a\u0084\u0091").intern(), jSONObjectB);
        c().mo228(jSONObjectB, k2, t);
    }

    @Override // com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ｋ */
    public void mo229(JSONObject jSONObject, K k2, T t) {
        JSONObject jSONObjectB;
        int bitsPerPixel;
        int i2 = k + 31;
        j = i2 % 128;
        if (!(i2 % 2 != 0)) {
            jSONObjectB = b(jSONObject, t);
            bitsPerPixel = 126 - ImageFormat.getBitsPerPixel(0);
        } else {
            jSONObjectB = b(jSONObject, t);
            bitsPerPixel = 10 << ImageFormat.getBitsPerPixel(0);
        }
        e(a(null, bitsPerPixel, null, "\u008b\u0082\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0082\u0083\u0082\u0081").intern(), jSONObjectB);
        c().mo229(jSONObjectB, k2, t);
    }

    @Override // com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﾇ */
    public final void mo230(JSONObject jSONObject, K k2, T t) {
        int i2 = j + 119;
        k = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectB = b(jSONObject, t);
        e(d((-100) - ExpandableListView.getPackedPositionGroup(0L), (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) - 1730748600, (byte) ((-34) - (ViewConfiguration.getTouchSlop() >> 8)), (short) (ViewConfiguration.getJumpTapTimeout() >> 16), (-548127695) - TextUtils.indexOf("", "", 0, 0)).intern(), jSONObjectB);
        c().mo230(jSONObjectB, k2, t);
        int i4 = k + 87;
        j = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﾇ */
    public final void mo231(JSONObject jSONObject, K k2, Object obj, T t) {
        int i2 = k + 17;
        j = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectB = b(jSONObject, t);
        e(a(null, Color.alpha(0) + 127, null, "\u008b\u0082\u008a\u0090\u008f\u0084\u0087\u008f\u0083\u0082\u0081").intern(), jSONObjectB);
        c().mo231(jSONObjectB, k2, obj, t);
        int i4 = j + 19;
        k = i4 % 128;
        if ((i4 % 2 == 0 ? '\"' : '.') != '\"') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1070(p<K, T> pVar) {
        int i2 = k + 23;
        j = i2 % 128;
        char c2 = i2 % 2 != 0 ? '6' : (char) 7;
        this.l = pVar;
        if (c2 == 7) {
        } else {
            throw null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﾒ */
    public final void mo232(JSONObject jSONObject, K k2, T t) {
        int i2 = j + 103;
        k = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectB = b(jSONObject, t);
        e(d((-104) - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (-1730748603) - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (byte) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 82), (short) TextUtils.indexOf("", ""), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 548127713).intern(), jSONObjectB);
        c().mo232(jSONObjectB, k2, t);
        int i4 = k + 91;
        j = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.json.adqualitysdk.sdk.i.p
    /* JADX INFO: renamed from: ﾒ */
    public final void mo233(JSONObject jSONObject, K k2, Object obj, T t) {
        int i2 = k + 35;
        j = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectB = b(jSONObject, t);
        e(d((-94) - Color.blue(0), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) - 1730748603, (byte) ((-89) - TextUtils.lastIndexOf("", '0')), (short) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (ViewConfiguration.getKeyRepeatTimeout() >> 16) - 548127730).intern(), jSONObjectB);
        c().mo233(jSONObjectB, k2, obj, t);
        int i4 = j + 113;
        k = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 89 / 0;
        }
    }
}
