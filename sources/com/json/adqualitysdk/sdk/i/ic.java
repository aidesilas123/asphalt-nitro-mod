package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.media.AudioTrack;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class ic {
    private static char[] a = {'a', 'n', 'd', 'r', 'o', 'i', '_', 'I', 'S', 'K', 'E', 'V', 'A', ' ', 'O', 'b', 's', 'c', 'u', 'e', 'h', 'P', 'f', 'C', 'l', '\'', 't', 'N', 'D', 'R', '.', 'U', 'g', 'k', 'v', 'm'};
    private static char b = 6;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5758d = 1;

    private static String a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(b((byte) (TextUtils.lastIndexOf("", '0', 0, 0) + 83), "\u000e\u001c\u0005\u0004\u0012\u001f\"# \u0000´", 11 - Color.blue(0)).intern(), 0);
        String string = sharedPreferences.getString(b((byte) (Color.argb(0, 0, 0, 0) + 126), "\u0016\n\u0005\"\u001e\u0006\u001f!\u0019\u0007\u0015\u0001\u0002\u0018\u0014\u0001\u0000\u0003", (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 17).intern(), null);
        if (!(TextUtils.isEmpty(string))) {
            return string;
        }
        int i = f5758d + 77;
        c = i % 128;
        int i2 = i % 2;
        String string2 = UUID.randomUUID().toString();
        sharedPreferences.edit().putString(b((byte) (125 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)), "\u0016\n\u0005\"\u001e\u0006\u001f!\u0019\u0007\u0015\u0001\u0002\u0018\u0014\u0001\u0000\u0003", 18 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern(), string2).commit();
        int i3 = c + 33;
        f5758d = i3 % 128;
        int i4 = i3 % 2;
        return string2;
    }

    private static String b(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = a;
            char c2 = b;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b2);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i3 = (g.f59 * c2) + g.f55;
                            int i4 = (g.f61 * c2) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i6 = (g.f59 * c2) + g.f55;
                            int i7 = (g.f61 * c2) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c2) + g.f57;
                            int i10 = (g.f61 * c2) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    private static void c(String str, String str2) {
        int i = f5758d + 71;
        c = i % 128;
        int i2 = i % 2;
        m.m1031(str, str2);
        int i3 = f5758d + 7;
        c = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m826(android.content.Context r10) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.ic.c
            int r0 = r0 + 101
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ic.f5758d = r1
            int r0 = r0 % 2
            r1 = 19
            if (r0 != 0) goto L11
            r0 = 98
            goto L13
        L11:
            r0 = 19
        L13:
            java.lang.String r2 = "\u0001\u0002\u0003\u0004\u0005\u0000\u0000\b\u0000\u0003"
            r3 = 0
            r5 = 0
            if (r0 == r1) goto L48
            android.content.Context r0 = r10.getApplicationContext()
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = 74
            long r6 = android.os.SystemClock.elapsedRealtime()
            r8 = 1
            int r9 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            int r1 = r1 % r9
            byte r1 = (byte) r1
            r6 = 91
            int r7 = android.view.KeyEvent.normalizeMetaState(r5)
            int r6 = r6 >>> r7
            java.lang.String r1 = b(r1, r2, r6)
            java.lang.String r1 = r1.intern()
            java.lang.String r0 = android.provider.Settings.Secure.getString(r0, r1)
            if (r0 != 0) goto L44
            r1 = 1
            goto L45
        L44:
            r1 = 0
        L45:
            if (r1 == r8) goto L6d
            goto Lb2
        L48:
            android.content.Context r0 = r10.getApplicationContext()
            android.content.ContentResolver r0 = r0.getContentResolver()
            long r6 = android.os.SystemClock.elapsedRealtime()
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            int r1 = r1 + 10
            byte r1 = (byte) r1
            int r6 = android.view.KeyEvent.normalizeMetaState(r5)
            int r6 = 10 - r6
            java.lang.String r1 = b(r1, r2, r6)
            java.lang.String r1 = r1.intern()
            java.lang.String r0 = android.provider.Settings.Secure.getString(r0, r1)
            if (r0 != 0) goto Lb2
        L6d:
            int r0 = com.json.adqualitysdk.sdk.i.ic.c
            int r0 = r0 + 105
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ic.f5758d = r1
            int r0 = r0 % 2
            java.lang.String r0 = ""
            int r0 = android.text.TextUtils.getOffsetBefore(r0, r5)
            int r0 = r0 + 115
            byte r0 = (byte) r0
            long r1 = android.view.ViewConfiguration.getZoomControlsTimeout()
            java.lang.String r6 = "\b\t\n\u000b\u000b\u0006\r\u000e\u000f\u0010\u0011\f\u0015\u0000\u0014\u0001\u000e\u001a\u0001\u0004\u0014\u0001\u001b\t\u0014\u0017\u0015\u0001\u0019\u0007\r\u0017æ"
            java.lang.String r7 = "\u0016\u0005\u0018\u001e\u0003\u0002\u001a\u001b\u0010\u0013\u0014\u0019\u000e\u0017\u000e\r\u001c\u001d\u001a\u0011\n\u0019\u0007\b\u0018\"\u0013\u0001\u0011\u0004\u0002\u001f\u000e\u001f\u0019\u0007\u0015\u0001\u0002\u0018\u0014\u0001\u0011\u0001\u0000 "
            int r8 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            int r8 = r8 + 32
            java.lang.String r0 = b(r0, r6, r8)
            java.lang.String r0 = r0.intern()
            int r1 = android.graphics.Color.green(r5)
            int r1 = r1 + 29
            byte r1 = (byte) r1
            long r5 = android.os.Process.getElapsedCpuTime()
            int r2 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            int r2 = 47 - r2
            java.lang.String r1 = b(r1, r7, r2)
            java.lang.String r1 = r1.intern()
            c(r0, r1)
            java.lang.String r0 = a(r10)
        Lb2:
            int r10 = com.json.adqualitysdk.sdk.i.ic.f5758d
            int r10 = r10 + 73
            int r1 = r10 % 128
            com.json.adqualitysdk.sdk.i.ic.c = r1
            int r10 = r10 % 2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ic.m826(android.content.Context):java.lang.String");
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m827(String str, String str2) {
        int i = c + 73;
        f5758d = i % 128;
        char c2 = i % 2 == 0 ? '_' : '!';
        m.m1019(str, str2);
        if (c2 == '!') {
        } else {
            throw null;
        }
    }
}
