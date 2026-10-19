package com.json.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class aj {
    private static char[] a = {133, 274, 260, 257, 278, 281, 272, 269, 270, 266, 268, ';', 'm', 'k', 'r', 'k', 'f', 'h', 'n', 's', 'l', 'k', 'b', '[', 'd', 'd', 'g', 'w', 232, 234, 236, 228, 225, 225, 216, 223, 232, 233, 240, 235, 229, 227, 232, 237, 238, '`', 165, 173, 200, 195, 193, 196, 196, 196, 205, 208, 199, 191, 192, 191, 197, 205, 199, 196, 195, 191, 198, 202, 170, 176, 203, 195, 201, 205, 200, 198, 196, 198, 200, 195, 193, 196, 196, 180, 189, 208, 199, 191, 192, 191, 197, 205, 183, 180, 195, 191, 198, 186, 154, 174, 206, 198, 201, 206, 203};
    private static int b = 0;
    private static int c = 1;

    private static String a(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
        String str2;
        Object bytes = str;
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        synchronized (i.f67) {
            int i = iArr[0];
            int i2 = iArr[1];
            int i3 = iArr[2];
            int i4 = iArr[3];
            char[] cArr = new char[i2];
            System.arraycopy(a, i, cArr, 0, i2);
            if (bArr != null) {
                char[] cArr2 = new char[i2];
                i.f68 = 0;
                char c2 = 0;
                while (true) {
                    int i5 = i.f68;
                    if (i5 >= i2) {
                        break;
                    }
                    if (bArr[i5] == 1) {
                        cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c2);
                    } else {
                        cArr2[i5] = (char) ((cArr[i5] << 1) - c2);
                    }
                    c2 = cArr2[i5];
                    i.f68 = i5 + 1;
                }
                cArr = cArr2;
            }
            if (i4 > 0) {
                char[] cArr3 = new char[i2];
                System.arraycopy(cArr, 0, cArr3, 0, i2);
                int i6 = i2 - i4;
                System.arraycopy(cArr3, 0, cArr, i6, i4);
                System.arraycopy(cArr3, i4, cArr, 0, i6);
            }
            if (z) {
                char[] cArr4 = new char[i2];
                i.f68 = 0;
                while (true) {
                    int i7 = i.f68;
                    if (i7 >= i2) {
                        break;
                    }
                    cArr4[i7] = cArr[(i2 - i7) - 1];
                    i.f68 = i7 + 1;
                }
                cArr = cArr4;
            }
            if (i3 > 0) {
                i.f68 = 0;
                while (true) {
                    int i8 = i.f68;
                    if (i8 >= i2) {
                        break;
                    }
                    cArr[i8] = (char) (cArr[i8] - iArr[2]);
                    i.f68 = i8 + 1;
                }
            }
            str2 = new String(cArr);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static void m277(Object obj, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        int i = b + 53;
        c = i % 128;
        try {
            if ((i % 2 == 0 ? '(' : '\r') != '\r') {
                String strIntern = a(false, new int[]{11, 16, 0, 3}, "\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000").intern();
                Object[] objArr = new Object[3];
                objArr[1] = broadcastReceiver;
                objArr[1] = intentFilter;
                Method methodM967 = jw.m967(obj, strIntern, Arrays.asList(objArr));
                Object[] objArr2 = new Object[4];
                objArr2[0] = broadcastReceiver;
                objArr2[0] = intentFilter;
                methodM967.invoke(obj, objArr2);
            } else {
                jw.m967(obj, a(false, new int[]{11, 16, 0, 3}, "\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000").intern(), Arrays.asList(broadcastReceiver, intentFilter)).invoke(obj, broadcastReceiver, intentFilter);
            }
            int i2 = c + 71;
            b = i2 % 128;
            if ((i2 % 2 != 0 ? (char) 30 : (char) 25) != 30) {
            } else {
                throw null;
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m278(Context context) {
        Object objInvoke;
        int i = b + 39;
        c = i % 128;
        try {
            if (i % 2 != 0) {
                objInvoke = jw.m967(m280(), a(false, new int[]{0, 11, 166, 10}, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000").intern(), Arrays.asList(context)).invoke(null, context);
            } else {
                Class clsM280 = m280();
                String strIntern = a(true, new int[]{0, 11, 166, 10}, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000").intern();
                Object[] objArr = new Object[1];
                objArr[1] = context;
                Method methodM967 = jw.m967(clsM280, strIntern, Arrays.asList(objArr));
                Object[] objArr2 = new Object[1];
                objArr2[1] = context;
                objInvoke = methodM967.invoke(null, objArr2);
            }
            int i2 = c + 75;
            b = i2 % 128;
            int i3 = i2 % 2;
            return objInvoke;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m279(Object obj, BroadcastReceiver broadcastReceiver) {
        int i = c + 35;
        b = i % 128;
        try {
            if ((i % 2 != 0 ? '6' : (char) 19) != '6') {
                jw.m967(obj, a(true, new int[]{27, 18, 125, 0}, "\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001").intern(), Arrays.asList(broadcastReceiver)).invoke(obj, broadcastReceiver);
            } else {
                String strIntern = a(true, new int[]{27, 18, 125, 0}, "\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001").intern();
                Object[] objArr = new Object[0];
                objArr[1] = broadcastReceiver;
                Method methodM967 = jw.m967(obj, strIntern, Arrays.asList(objArr));
                Object[] objArr2 = new Object[1];
                objArr2[1] = broadcastReceiver;
                methodM967.invoke(obj, objArr2);
            }
            int i2 = b + 15;
            c = i2 % 128;
            int i3 = i2 % 2;
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Class m280() {
        int i = b + 33;
        c = i % 128;
        int i2 = i % 2;
        Class clsM971 = jw.m971(a(true, new int[]{45, 60, 93, 32}, "\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001").intern(), false);
        int i3 = c + 29;
        b = i3 % 128;
        int i4 = i3 % 2;
        return clsM971;
    }
}
