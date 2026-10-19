package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.ISAdQualitySegment;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class an {
    private static char[] a = {262, 248, 263, 242, 250, 256, 257, 244, 255, 265, 259, 268, 252, 264, 246, 247};
    private static int b = 147;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5215d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5216e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5217f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ag f5218g;

    public an(ag agVar) {
        this.f5218g = agVar;
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
            if (f5215d) {
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

    private static JSONObject b(ISAdQualitySegment iSAdQualitySegment) {
        JSONObject jSONObject = new JSONObject(iSAdQualitySegment.getCustomData());
        try {
            if (!TextUtils.isEmpty(iSAdQualitySegment.getName())) {
                jSONObject.put(a(null, null, (ViewConfiguration.getTouchSlop() >> 8) + 127, "\u0086\u0087\u0085\u0081").intern(), iSAdQualitySegment.getName());
            }
            if ((iSAdQualitySegment.getAge() != -1 ? '@' : (char) 11) == '@') {
                jSONObject.put(a(null, null, Process.getGidForName("") + 128, "\u0082\u0085\u0088\u0081").intern(), iSAdQualitySegment.getAge());
            }
            if (!TextUtils.isEmpty(iSAdQualitySegment.getGender())) {
                int i = f5216e + 67;
                f5217f = i % 128;
                jSONObject.put((i % 2 == 0 ? '\f' : 'S') != 'S' ? a(null, null, View.MeasureSpec.getMode(1) + 86, "\u0087\u0082\u0085\u0081").intern() : a(null, null, 127 - View.MeasureSpec.getMode(0), "\u0087\u0082\u0085\u0081").intern(), iSAdQualitySegment.getGender());
            }
            if (iSAdQualitySegment.getLevel() != -1) {
                int i2 = f5216e + 71;
                f5217f = i2 % 128;
                int i3 = i2 % 2;
                jSONObject.put(a(null, null, 127 - KeyEvent.normalizeMetaState(0), "\u0089\u008a\u0089\u0081").intern(), iSAdQualitySegment.getLevel());
            }
            if (iSAdQualitySegment.getIsPaying() != null) {
                jSONObject.put(a(null, null, (ViewConfiguration.getDoubleTapTimeout() >> 16) + 127, "\u008c\u0088\u008b\u0081").intern(), iSAdQualitySegment.getIsPaying().get());
            }
            if (iSAdQualitySegment.getInAppPurchasesTotal() != -1.0d) {
                int i4 = f5217f + 11;
                f5216e = i4 % 128;
                jSONObject.put((i4 % 2 != 0 ? '%' : '-') != '%' ? a(null, null, View.MeasureSpec.getSize(0) + 127, "\u0083\u008b\u0088\u008d\u0081").intern() : a(null, null, View.MeasureSpec.getSize(0) * 80, "\u0083\u008b\u0088\u008d\u0081").intern(), iSAdQualitySegment.getInAppPurchasesTotal());
                int i5 = f5217f + 95;
                f5216e = i5 % 128;
                int i6 = i5 % 2;
            }
            if ((iSAdQualitySegment.getUserCreationDate() != 0 ? '\n' : '8') != '8') {
                jSONObject.put(a(null, null, 126 - ((byte) KeyEvent.getModifierMetaStateMask()), "\u0090\u008f\u008e\u0081").intern(), iSAdQualitySegment.getUserCreationDate());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m302(ISAdQualitySegment iSAdQualitySegment) {
        ag agVar;
        int mirror;
        int i = f5216e + 111;
        f5217f = i % 128;
        if ((i % 2 == 0 ? '\b' : 'W') != 'W') {
            agVar = this.f5218g;
            mirror = AndroidCharacter.getMirror('O') * '}';
        } else {
            agVar = this.f5218g;
            mirror = AndroidCharacter.getMirror('0') + 'O';
        }
        agVar.m257(a(null, null, mirror, "\u0083\u0087\u0082\u0086\u0085\u0082\u0081\u0084\u0083\u0082\u0081").intern(), b(iSAdQualitySegment));
    }
}
