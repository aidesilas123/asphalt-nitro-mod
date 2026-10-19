package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public final class jz {
    private static char[] a = {'f', 210, 210, 205, 230, 251, 251, 'b', 219, '_', 151, 139, 162, 160, 133, 'k', 135, 143, 'w', 'r', 137, 135, '{', ';', 135, 268, 267, 279, 279, 263, 264, 243, 18, 'R', 190, 211, 210, 226, 226, 214};
    private static int b = 0;
    private static int c = 1;

    private static List<String> a(String str, String str2, boolean z) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(str2).matcher(str);
        while (true) {
            int i = 1;
            if (!(matcher.find())) {
                return arrayList;
            }
            int i2 = c + 45;
            b = i2 % 128;
            int i3 = i2 % 2;
            if ((matcher.groupCount() == 0 ? ',' : 'W') != 'W') {
                int i4 = b + 23;
                c = i4 % 128;
                int i5 = i4 % 2;
                arrayList.add(matcher.group());
                if (z) {
                    int i6 = b + 27;
                    c = i6 % 128;
                    if (i6 % 2 != 0) {
                        return arrayList;
                    }
                    throw null;
                }
            } else {
                while (i <= matcher.groupCount()) {
                    arrayList.add(matcher.group(i));
                    if ((z ? 'V' : '8') == 'V') {
                        return arrayList;
                    }
                    i++;
                    int i7 = c + 27;
                    b = i7 % 128;
                    int i8 = i7 % 2;
                }
            }
        }
    }

    private static String b(String str) {
        int i = c + 33;
        b = i % 128;
        int i2 = i % 2;
        if (!(!TextUtils.isEmpty(str))) {
            return str;
        }
        if (!str.startsWith(c(false, new int[]{23, 1, 24, 0}, "\u0000").intern())) {
            StringBuilder sb = new StringBuilder();
            sb.append(c(false, new int[]{24, 8, 176, 0}, "\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001").intern());
            sb.append(str);
            str = sb.toString();
            int i3 = b + 67;
            c = i3 % 128;
            int i4 = i3 % 2;
        }
        if (str.endsWith(c(true, new int[]{32, 1, 0, 1}, "\u0000").intern())) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(c(true, new int[]{33, 7, 123, 0}, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001").intern());
        return sb2.toString();
    }

    private static String c(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
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
    public static String m994(String str, String str2) {
        int i = b + 85;
        c = i % 128;
        int i2 = i % 2;
        String strSubstring = str.substring(0, str.length() - str2.length());
        int i3 = b + 27;
        c = i3 % 128;
        if (i3 % 2 != 0) {
            return strSubstring;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static boolean m995(String str) {
        int i = b + 81;
        c = i % 128;
        if (i % 2 == 0) {
            TextUtils.isEmpty(str);
            throw null;
        }
        if (!TextUtils.isEmpty(str)) {
            boolean zMatches = str.matches(c(true, new int[]{9, 14, 68, 5}, "\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0000").intern());
            int i2 = c + 103;
            b = i2 % 128;
            int i3 = i2 % 2;
            return zMatches;
        }
        int i4 = b + 105;
        c = i4 % 128;
        if (i4 % 2 != 0) {
            return false;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static List<String> m996(String str, String str2) {
        int i = c + 5;
        b = i % 128;
        if (i % 2 != 0) {
        }
        List<String> listA = a(str, str2, false);
        int i2 = c + 41;
        b = i2 % 128;
        int i3 = i2 % 2;
        return listA;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static boolean m997(String str, int i) {
        int i2 = c + 123;
        b = i2 % 128;
        int i3 = i2 % 2;
        if (!TextUtils.isEmpty(str)) {
            int i4 = c + 123;
            b = i4 % 128;
            int i5 = i4 % 2;
            if ((str.length() > 0 ? 'Z' : '^') != '^') {
                int i6 = c + 123;
                b = i6 % 128;
                int i7 = i6 % 2;
                if (str.length() <= i) {
                    int i8 = c + 83;
                    b = i8 % 128;
                    return !(i8 % 2 != 0);
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String m998(String str, String str2, boolean z) {
        int i = c;
        int i2 = i + 19;
        b = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
        if (!(!z)) {
            int i3 = i + 9;
            b = i3 % 128;
            int i4 = i3 % 2;
            str2 = b(str2);
        }
        List<String> listA = a(str, str2, true);
        if ((listA.size() > 0 ? (char) 1 : 'E') != 1) {
            return null;
        }
        int i5 = c + 5;
        b = i5 % 128;
        int i6 = i5 % 2;
        return listA.get(0);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static List<String> m999(String str, JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        int i = b + 63;
        c = i % 128;
        int i2 = i % 2;
        int i3 = 0;
        while (true) {
            if (!(i3 < jSONArray.length())) {
                return arrayList;
            }
            arrayList.addAll(a(str, jSONArray.optString(i3), false));
            i3++;
            int i4 = b + 67;
            c = i4 % 128;
            int i5 = i4 % 2;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static int m1000(String str, String str2) {
        int i = c + 103;
        b = i % 128;
        int i2 = i % 2;
        int i3 = 0;
        String[] strArrSplit = str.replaceAll(c(true, new int[]{0, 7, 159, 6}, "\u0001\u0001\u0000\u0001\u0000\u0001\u0000").intern(), "").split(c(false, new int[]{7, 2, 150, 1}, "\u0000\u0000").intern());
        String[] strArrSplit2 = str2.replaceAll(c(true, new int[]{0, 7, 159, 6}, "\u0001\u0001\u0000\u0001\u0000\u0001\u0000").intern(), "").split(c(false, new int[]{7, 2, 150, 1}, "\u0000\u0000").intern());
        while (i3 < strArrSplit.length && i3 < strArrSplit2.length) {
            if ((strArrSplit[i3].equals(strArrSplit2[i3]) ? 'b' : 'U') != 'b') {
                break;
            }
            i3++;
        }
        if (i3 < strArrSplit.length && i3 < strArrSplit2.length) {
            int i4 = b + 81;
            c = i4 % 128;
            int i5 = i4 % 2;
            return Integer.signum(Integer.valueOf(strArrSplit[i3]).compareTo(Integer.valueOf(strArrSplit2[i3])));
        }
        int iSignum = Integer.signum(strArrSplit.length - strArrSplit2.length);
        int i6 = b + 37;
        c = i6 % 128;
        if ((i6 % 2 == 0 ? 'b' : 'G') != 'b') {
            return iSignum;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1001(String str, JSONArray jSONArray, boolean z) {
        int i = c + 17;
        b = i % 128;
        int i2 = i % 2;
        int i3 = 0;
        while (true) {
            if ((i3 < jSONArray.length() ? '_' : 'F') == 'F') {
                int i4 = b + 117;
                c = i4 % 128;
                int i5 = i4 % 2;
                return null;
            }
            int i6 = b + 77;
            c = i6 % 128;
            if (i6 % 2 == 0) {
                m998(str, jSONArray.optString(i3), z);
                throw null;
            }
            String strM998 = m998(str, jSONArray.optString(i3), z);
            if (strM998 != null) {
                int i7 = c + 33;
                b = i7 % 128;
                int i8 = i7 % 2;
                return strM998;
            }
            i3++;
        }
    }
}
