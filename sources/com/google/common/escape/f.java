package com.google.common.escape;

import com.google.common.base.Preconditions;

/* JADX INFO: compiled from: UnicodeEscaper.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class f extends d {
    protected f() {
    }

    protected static int b(CharSequence charSequence, int i, int i2) {
        Preconditions.checkNotNull(charSequence);
        if (i >= i2) {
            throw new IndexOutOfBoundsException("Index exceeds specified range");
        }
        int i3 = i + 1;
        char cCharAt = charSequence.charAt(i);
        if (cCharAt < 55296 || cCharAt > 57343) {
            return cCharAt;
        }
        if (cCharAt > 56319) {
            String strValueOf = String.valueOf(charSequence);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 88);
            sb.append("Unexpected low surrogate character '");
            sb.append(cCharAt);
            sb.append("' with value ");
            sb.append((int) cCharAt);
            sb.append(" at index ");
            sb.append(i3 - 1);
            sb.append(" in '");
            sb.append(strValueOf);
            sb.append("'");
            throw new IllegalArgumentException(sb.toString());
        }
        if (i3 == i2) {
            return -cCharAt;
        }
        char cCharAt2 = charSequence.charAt(i3);
        if (Character.isLowSurrogate(cCharAt2)) {
            return Character.toCodePoint(cCharAt, cCharAt2);
        }
        String strValueOf2 = String.valueOf(charSequence);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 89);
        sb2.append("Expected low surrogate but got char '");
        sb2.append(cCharAt2);
        sb2.append("' with value ");
        sb2.append((int) cCharAt2);
        sb2.append(" at index ");
        sb2.append(i3);
        sb2.append(" in '");
        sb2.append(strValueOf2);
        sb2.append("'");
        throw new IllegalArgumentException(sb2.toString());
    }

    private static char[] e(char[] cArr, int i, int i2) {
        if (i2 < 0) {
            throw new AssertionError("Cannot increase internal buffer any further");
        }
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    protected abstract char[] c(int i);

    protected final String d(String str, int i) {
        int length = str.length();
        char[] cArrA = e.a();
        int i2 = 0;
        int length2 = 0;
        while (i < length) {
            int iB = b(str, i, length);
            if (iB < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] cArrC = c(iB);
            int i3 = (Character.isSupplementaryCodePoint(iB) ? 2 : 1) + i;
            if (cArrC != null) {
                int i4 = i - i2;
                int i5 = length2 + i4;
                int length3 = cArrC.length + i5;
                if (cArrA.length < length3) {
                    cArrA = e(cArrA, length2, length3 + (length - i) + 32);
                }
                if (i4 > 0) {
                    str.getChars(i2, i, cArrA, length2);
                    length2 = i5;
                }
                if (cArrC.length > 0) {
                    System.arraycopy(cArrC, 0, cArrA, length2, cArrC.length);
                    length2 += cArrC.length;
                }
                i2 = i3;
            }
            i = f(str, i3, length);
        }
        int i6 = length - i2;
        if (i6 > 0) {
            int i7 = i6 + length2;
            if (cArrA.length < i7) {
                cArrA = e(cArrA, length2, i7);
            }
            str.getChars(i2, length, cArrA, length2);
            length2 = i7;
        }
        return new String(cArrA, 0, length2);
    }

    protected abstract int f(CharSequence charSequence, int i, int i2);
}
