package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class hc extends gv<View.OnTouchListener> implements View.OnTouchListener {
    private static char[] b = {344, 375, 349, 376, 382, 364, 369, 341, 370, 380, 381, 366, 379, 333, 362, 334, 297, 374, 363};
    private static int c = 265;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5713d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f5714e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5715f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5716g = 1;
    private c h;

    public interface c {
        /* JADX INFO: renamed from: ﾒ */
        boolean mo568(hc hcVar, View view, MotionEvent motionEvent);
    }

    public hc(View.OnTouchListener onTouchListener, c cVar) {
        super(onTouchListener);
        this.h = cVar;
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
            char[] cArr2 = b;
            int i2 = c;
            if (f5714e) {
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
            if (f5713d) {
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

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i = f5715f + 105;
        f5716g = i % 128;
        int i2 = i % 2;
        try {
            this.h.mo568(this, view, motionEvent);
        } catch (Throwable th) {
            jy.m987(a(null, null, TextUtils.indexOf("", "", 0) + 127, "\u008d\u0084\u008b\u008f\u008d\u0084\u0086\u008c\u008e\u008d\u008c\u0082\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081").intern(), a(null, null, 126 - TextUtils.indexOf((CharSequence) "", '0'), "\u0087\u0086\u0085\u0084\u0083\u0082\u0084\u0091\u008d\u008c\u0082\u008c\u008b\u008a\u0089\u0088\u0093\u0083\u0092\u0091\u0082\u0089\u0091\u008d\u0084\u008d\u008d\u0090").intern(), th, false);
        }
        if (mo406() == null) {
            return false;
        }
        int i3 = f5716g + 53;
        f5715f = i3 % 128;
        if (i3 % 2 == 0) {
            return mo406().onTouch(view, motionEvent);
        }
        boolean zOnTouch = mo406().onTouch(view, motionEvent);
        int i4 = 3 / 0;
        return zOnTouch;
    }
}
