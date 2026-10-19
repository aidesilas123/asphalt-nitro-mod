package com.google.common.net;

import com.google.common.base.Preconditions;
import com.google.common.escape.f;

/* JADX INFO: compiled from: PercentEscaper.java */
/* JADX INFO: loaded from: classes3.dex */
public final class c extends f {
    private static final char[] b = {'+'};
    private static final char[] c = "0123456789ABCDEF".toCharArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f3942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean[] f3943e;

    public c(String str, boolean z) {
        Preconditions.checkNotNull(str);
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        String strConcat = str.concat("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
        if (z && strConcat.contains(" ")) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        this.f3942d = z;
        this.f3943e = g(strConcat);
    }

    private static boolean[] g(String str) {
        char[] charArray = str.toCharArray();
        int iMax = -1;
        for (char c2 : charArray) {
            iMax = Math.max((int) c2, iMax);
        }
        boolean[] zArr = new boolean[iMax + 1];
        for (char c3 : charArray) {
            zArr[c3] = true;
        }
        return zArr;
    }

    @Override // com.google.common.escape.d
    public String a(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            boolean[] zArr = this.f3943e;
            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                return d(str, i);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.f
    protected char[] c(int i) {
        boolean[] zArr = this.f3943e;
        if (i < zArr.length && zArr[i]) {
            return null;
        }
        if (i == 32 && this.f3942d) {
            return b;
        }
        if (i <= 127) {
            char[] cArr = c;
            return new char[]{'%', cArr[i >>> 4], cArr[i & 15]};
        }
        if (i <= 2047) {
            char[] cArr2 = c;
            char[] cArr3 = {'%', cArr2[(i >>> 4) | 12], cArr2[i & 15], '%', cArr2[(i & 3) | 8], cArr2[i & 15]};
            int i2 = i >>> 4;
            int i3 = i2 >>> 2;
            return cArr3;
        }
        if (i <= 65535) {
            char[] cArr4 = c;
            char[] cArr5 = {'%', 'E', cArr4[i >>> 2], '%', cArr4[(i & 3) | 8], cArr4[i & 15], '%', cArr4[(i & 3) | 8], cArr4[i & 15]};
            int i4 = i >>> 4;
            int i5 = i4 >>> 2;
            int i6 = i5 >>> 4;
            return cArr5;
        }
        if (i > 1114111) {
            StringBuilder sb = new StringBuilder(43);
            sb.append("Invalid unicode character value ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        char[] cArr6 = c;
        char[] cArr7 = {'%', 'F', cArr6[(i >>> 2) & 7], '%', cArr6[(i & 3) | 8], cArr6[i & 15], '%', cArr6[(i & 3) | 8], cArr6[i & 15], '%', cArr6[(i & 3) | 8], cArr6[i & 15]};
        int i7 = i >>> 4;
        int i8 = i7 >>> 2;
        int i9 = i8 >>> 4;
        int i10 = i9 >>> 2;
        int i11 = i10 >>> 4;
        return cArr7;
    }

    @Override // com.google.common.escape.f
    protected int f(CharSequence charSequence, int i, int i2) {
        Preconditions.checkNotNull(charSequence);
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            boolean[] zArr = this.f3943e;
            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                break;
            }
            i++;
        }
        return i;
    }
}
