package com.json.adqualitysdk.sdk.i;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes4.dex */
public class t {
    private static Handler a = null;
    private static Handler b = null;
    private static long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5991d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char f5992e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5993f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5994g = 1;

    static {
        b();
        a = new Handler(Looper.getMainLooper());
        int i = f5994g + 99;
        f5993f = i % 128;
        int i2 = i % 2;
    }

    private static boolean a() {
        int i = f5994g + 57;
        f5993f = i % 128;
        if (i % 2 != 0) {
            Looper.myLooper();
            Looper.getMainLooper();
            throw null;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            int i2 = f5993f + 125;
            f5994g = i2 % 128;
            if (i2 % 2 != 0) {
                return false;
            }
            throw null;
        }
        int i3 = f5994g + 123;
        f5993f = i3 % 128;
        if ((i3 % 2 != 0 ? '/' : '4') != '/') {
            return true;
        }
        throw null;
    }

    static void b() {
        c = 0L;
        f5991d = 0;
        f5992e = (char) 32931;
    }

    private static String c(char c2, String str, String str2, String str3, int i) {
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
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ c) ^ ((long) f5991d)) ^ ((long) f5992e));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m1039(il ilVar) {
        if ((a() ? '\t' : '1') != '1') {
            int i = f5994g + 117;
            f5993f = i % 128;
            int i2 = i % 2;
            m1045().post(ilVar);
            return;
        }
        ilVar.run();
        int i3 = f5994g + 33;
        f5993f = i3 % 128;
        if ((i3 % 2 != 0 ? 'J' : (char) 23) != 'J') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m1040(il ilVar, long j) {
        int i = f5994g + 15;
        f5993f = i % 128;
        int i2 = i % 2;
        m1043().postDelayed(ilVar, j);
        int i3 = f5993f + 23;
        f5994g = i3 % 128;
        if ((i3 % 2 == 0 ? '@' : 'E') == 'E') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m1041(il ilVar) {
        int i = f5994g + 113;
        f5993f = i % 128;
        if ((i % 2 != 0 ? '`' : ')') != '`') {
            m1043().post(ilVar);
        } else {
            m1043().post(ilVar);
            int i2 = 57 / 0;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m1042(il ilVar, long j) {
        int i = f5994g + 83;
        f5993f = i % 128;
        if (i % 2 != 0) {
            m1045().postDelayed(ilVar, j);
            throw null;
        }
        m1045().postDelayed(ilVar, j);
        int i2 = f5994g + 69;
        f5993f = i2 % 128;
        if ((i2 % 2 != 0 ? 'G' : 'I') != 'G') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Handler m1043() {
        int i = f5994g;
        int i2 = i + 47;
        f5993f = i2 % 128;
        int i3 = i2 % 2;
        Handler handler = a;
        int i4 = i + 67;
        f5993f = i4 % 128;
        int i5 = i4 % 2;
        return handler;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1044(il ilVar) {
        int i = f5993f + 103;
        f5994g = i % 128;
        if (!(i % 2 != 0)) {
            m1045().post(ilVar);
            throw null;
        }
        m1045().post(ilVar);
        int i2 = f5993f + 115;
        f5994g = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Handler m1045() {
        Handler handler;
        synchronized (t.class) {
            if (b == null) {
                HandlerThread handlerThread = new HandlerThread(c((char) ExpandableListView.getPackedPositionGroup(0L), "ꑢ㋹瞀\uf330", "\u0000\u0000\u0000\u0000", "똚默뙛穷捫ڡ鮨颺ｂⅰ", Drawable.resolveOpacity(0, 0)).intern());
                handlerThread.start();
                b = new Handler(handlerThread.getLooper());
            }
            handler = b;
        }
        return handler;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1046(il ilVar) {
        int i = f5994g + 87;
        f5993f = i % 128;
        int i2 = i % 2;
        if (a()) {
            ilVar.run();
            return;
        }
        m1041(ilVar);
        int i3 = f5993f + 1;
        f5994g = i3 % 128;
        int i4 = i3 % 2;
    }
}
