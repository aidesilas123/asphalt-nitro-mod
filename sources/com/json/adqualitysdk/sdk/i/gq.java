package com.json.adqualitysdk.sdk.i;

import android.graphics.drawable.Drawable;
import android.text.AndroidCharacter;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.iw;
import java.io.UnsupportedEncodingException;
import tv.superawesome.sdk.publisher.AwesomeAds;

/* JADX INFO: loaded from: classes4.dex */
public final class gq implements gd {
    private static char[] a = {205, 207, 135, 204, 206, 201, 190, 203, 186, 208, 200, 198, 189, 196, 187, 197, 194, 193, 154, 188, 199, 136, 144, 137};
    private static int b = 89;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5679d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5680e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5681f = 1;

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
            if (f5679d) {
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
        int i = f5680e + 31;
        int i2 = i % 128;
        f5681f = i2;
        if (i % 2 == 0) {
            throw null;
        }
        int i3 = i2 + 5;
        f5680e = i3 % 128;
        if (i3 % 2 == 0) {
            return AwesomeAds.class;
        }
        int i4 = 42 / 0;
        return AwesomeAds.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5680e + 95;
        f5681f = i % 128;
        int i2 = i % 2;
        String strIntern = a(null, null, 127 - (ViewConfiguration.getPressedStateDuration() >> 16), "\u0084\u008d\u0093\u0087\u008c\u008b\u0084\u0087\u008a\u0093\u0083\u0088\u0087\u0092\u0084\u0091\u0090\u008f\u0085\u0086\u0083\u008e\u008d\u0084\u0083\u0087\u008c\u008b\u0084\u0087\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081").intern();
        int i3 = f5681f + 17;
        f5680e = i3 % 128;
        if (i3 % 2 == 0) {
            return strIntern;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(null, null, 175 - AndroidCharacter.getMirror('0'), "\u0087\u008c\u008b\u0084\u0087\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0096\u0084\u0088\u008b\u0081\u0094\u0087\u0095\u0095\u008b\u0094").intern(), a(null, null, (ViewConfiguration.getEdgeSlop() >> 16) + 127, "\u0098\u0083\u0097").intern());
        int i = f5680e + 5;
        f5681f = i % 128;
        if ((i % 2 == 0 ? (char) 28 : (char) 11) != 28) {
            return eVar;
        }
        int i2 = 10 / 0;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        by byVar = new by(a(null, null, Drawable.resolveOpacity(0, 0) + 127, "\u0087\u008c\u008b\u0084\u0087\u008a\u0089\u0088\u0087\u0086\u0085\u0084").intern());
        int i = f5681f + 27;
        f5680e = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        return byVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5680e + 121;
        f5681f = i % 128;
        int i2 = i % 2;
        String strIntern = a(null, null, (ViewConfiguration.getTapTimeout() >> 16) + 127, "\u0087\u008c\u008b\u0084\u0087\u008a\u0089\u0088\u0087\u0086\u0085\u0084").intern();
        int i3 = f5681f + 61;
        f5680e = i3 % 128;
        if ((i3 % 2 != 0 ? 'T' : '7') == '7') {
            return strIntern;
        }
        throw null;
    }
}
