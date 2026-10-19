package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public class jt {
    private static long a = 2900596993930536594L;
    private static int b = 0;
    private static int c = 1;

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private static byte[] b(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        int i = 0;
        while (true) {
            if ((i < length ? 'V' : 'U') != 'V') {
                break;
            }
            int i2 = b + 19;
            c = i2 % 128;
            int i3 = i2 % 2;
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
            i += 2;
        }
        int i4 = b + 9;
        c = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return bArr;
        }
        int i5 = 30 / 0;
        return bArr;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static long m948() {
        int i = c + 83;
        b = i % 128;
        if ((i % 2 != 0 ? 'I' : 'c') != 'I') {
            return Calendar.getInstance().getTimeInMillis();
        }
        int i2 = 27 / 0;
        return Calendar.getInstance().getTimeInMillis();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m949(String str, String str2, String str3, String str4) {
        CipherInputStream cipherInputStream;
        StringBuilder sb = new StringBuilder();
        try {
            byte[] bArrDecode = Base64.decode(str.getBytes(), 0);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrDecode, 16, bArrDecode.length);
            try {
                try {
                    byte[] bArrB = b(str3);
                    byte[] bArrB2 = b(str4);
                    Cipher cipher = Cipher.getInstance(a("ꛓ㋨躿ᨀ\uf62d䏫\udfabꬄܺ郮沧\uf874呓⇱북े\ue506绔쪒Ꙙ", 37951 - ExpandableListView.getPackedPositionType(0L)).intern());
                    cipher.init(2, SecretKeyFactory.getInstance(a("ꛂﾕᑝ괊쏏ᢟ년혼泾藊\uda61猫觪⸡䝡鶯㊀䭎\ue01cی徳\uf468\u0d51ꏢ\uf8a8ᅬ랽첚敎먆탊榚蹡✻", (Process.myPid() >> 22) + 22853).intern(), a("ꛐब", TextUtils.getOffsetBefore("", 0) + 45053).intern()).generateSecret(new PBEKeySpec(str2.toCharArray(), bArrB2, 1, 256)), new IvParameterSpec(bArrB, 0, cipher.getBlockSize()));
                    cipherInputStream = new CipherInputStream(new ByteArrayInputStream(bArrCopyOfRange), cipher);
                } catch (Throwable unused) {
                }
                try {
                    a("ꛇᜣ씞댐愾", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 45540).intern();
                    byte[] bArr = new byte[8192];
                    int i = cipherInputStream.read(bArr);
                    while (i >= 0) {
                        sb.append(new String(bArr, 0, i, a("ꛇᜣ씞댐愾", TextUtils.lastIndexOf("", '0', 0, 0) + 45542).intern()));
                        i = cipherInputStream.read(bArr);
                        int i2 = c + 65;
                        b = i2 % 128;
                        int i3 = i2 % 2;
                    }
                    cipherInputStream.close();
                    int i4 = b + 125;
                    c = i4 % 128;
                    int i5 = i4 % 2;
                } catch (Throwable th) {
                    th = th;
                    try {
                        jy.m987(a("ꛓ髟\ude91ኜ噗訳츍Ϲ䞣뮶ｼ㌸眒ꣴ", AndroidCharacter.getMirror('0') + 15353).intern(), a("ꛗꡑ뮂諮鰤\uefc7ﻐ쀠퍹⋙㐁ݹᚪ᠆歒窪䶢张꺔뇃茯鉹\ue5c3", 3762 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern(), th, false);
                        if (cipherInputStream != null) {
                            cipherInputStream.close();
                        }
                        return sb.toString();
                    } catch (Throwable th2) {
                        if (cipherInputStream != null) {
                            try {
                                cipherInputStream.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cipherInputStream = null;
            }
        } catch (Throwable th4) {
            jy.m987(a("ꛓ髟\ude91ኜ噗訳츍Ϲ䞣뮶ｼ㌸眒ꣴ", KeyEvent.getDeadChar(0, 0) + 15401).intern(), a("ꛗ\udf43喦쨔䁬욝缣\uf595毯\ue048暸鳺ᕘ讲X虻㳇딢\u2b96ꇲ♞岹튰䭖솶䘞ﱳ", (ViewConfiguration.getWindowTouchSlop() >> 8) + 31139).intern(), th4, false);
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static List m950(List list, List list2) {
        HashSet hashSet = new HashSet(list);
        if (!(list2 == null)) {
            int i = c + 41;
            b = i % 128;
            int i2 = i % 2;
            hashSet.addAll(list2);
            int i3 = c + 67;
            b = i3 % 128;
            int i4 = i3 % 2;
        }
        return new ArrayList(hashSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT >= 11 ? 'V' : 'T') != 'T') goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
    
        r3.executeOnExecutor(android.os.AsyncTask.THREAD_POOL_EXECUTOR, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        r3.execute(r4);
        r3 = com.json.adqualitysdk.sdk.i.jt.b + 123;
        com.json.adqualitysdk.sdk.i.jt.c = r3 % 128;
        r3 = r3 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT < 70) != false) goto L17;
     */
    @android.annotation.TargetApi(3)
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m951(android.os.AsyncTask<java.lang.Object, java.lang.Object, java.lang.Object> r3, java.lang.Object... r4) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.jt.c
            r1 = 11
            int r0 = r0 + r1
            int r2 = r0 % 128
            com.json.adqualitysdk.sdk.i.jt.b = r2
            int r0 = r0 % 2
            if (r0 == 0) goto L19
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 70
            if (r0 < r1) goto L15
            r0 = 0
            goto L16
        L15:
            r0 = 1
        L16:
            if (r0 == 0) goto L26
            goto L2c
        L19:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 84
            if (r0 < r1) goto L22
            r0 = 86
            goto L24
        L22:
            r0 = 84
        L24:
            if (r0 == r2) goto L2c
        L26:
            java.util.concurrent.Executor r0 = android.os.AsyncTask.THREAD_POOL_EXECUTOR
            r3.executeOnExecutor(r0, r4)
            return
        L2c:
            r3.execute(r4)
            int r3 = com.json.adqualitysdk.sdk.i.jt.b
            int r3 = r3 + 123
            int r4 = r3 % 128
            com.json.adqualitysdk.sdk.i.jt.c = r4
            int r3 = r3 % 2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.jt.m951(android.os.AsyncTask, java.lang.Object[]):void");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static long m952() {
        int i = c + 37;
        b = i % 128;
        if (i % 2 != 0) {
            SystemClock.elapsedRealtime();
            throw null;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i2 = b + 83;
        c = i2 % 128;
        if ((i2 % 2 == 0 ? 'C' : 'F') != 'C') {
            return jElapsedRealtime;
        }
        throw null;
    }
}
