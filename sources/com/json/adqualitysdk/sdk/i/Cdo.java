package com.json.adqualitysdk.sdk.i;

import android.media.AudioTrack;
import android.text.AndroidCharacter;
import android.util.TypedValue;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.do, reason: invalid class name */
/* JADX INFO: loaded from: classes4.dex */
public final class Cdo {
    private static int a = 113;
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5557d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5558e;

    private Cdo(String str, int i) {
        this.f5557d = str;
        this.f5558e = i;
    }

    private static String a(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - a);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Cdo m669(String str, int i) {
        int i2 = b + 73;
        c = i2 % 128;
        int i3 = i2 % 2;
        if (!r.m1033().m1037()) {
            return null;
        }
        Cdo cdo = new Cdo(str, i);
        int i4 = c + 47;
        b = i4 % 128;
        if (i4 % 2 == 0) {
            return cdo;
        }
        throw null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5557d);
        sb.append(a(171 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), true, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 1, AndroidCharacter.getMirror('0') - '/', "\u0000").intern());
        sb.append(this.f5558e);
        String string = sb.toString();
        int i = c + 3;
        b = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        return string;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int m670() {
        int i = c + 83;
        int i2 = i % 128;
        b = i2;
        int i3 = i % 2;
        int i4 = this.f5558e;
        int i5 = i2 + 35;
        c = i5 % 128;
        int i6 = i5 % 2;
        return i4;
    }
}
