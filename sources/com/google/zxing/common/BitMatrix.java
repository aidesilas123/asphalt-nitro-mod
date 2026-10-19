package com.google.zxing.common;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class BitMatrix implements Cloneable {
    private int a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f4316d;

    public BitMatrix(int i) {
        this(i, i);
    }

    public BitMatrix(int i, int i2) {
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.a = i;
        this.b = i2;
        int i3 = (i + 31) / 32;
        this.c = i3;
        this.f4316d = new int[i3 * i2];
    }

    private BitMatrix(int i, int i2, int i3, int[] iArr) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.f4316d = iArr;
    }

    private String b(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.b * (this.a + 1));
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.a; i2++) {
                sb.append(f(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public static BitMatrix parse(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        boolean[] zArr = new boolean[str.length()];
        int length = 0;
        int i = 0;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (length < str.length()) {
            if (str.charAt(length) == '\n' || str.charAt(length) == '\r') {
                if (i > i2) {
                    if (i3 == -1) {
                        i3 = i - i2;
                    } else if (i - i2 != i3) {
                        throw new IllegalArgumentException("row lengths do not match");
                    }
                    i4++;
                    i2 = i;
                }
                length++;
            } else {
                if (str.startsWith(str2, length)) {
                    length += str2.length();
                    zArr[i] = true;
                } else {
                    if (!str.startsWith(str3, length)) {
                        throw new IllegalArgumentException("illegal character encountered: " + str.substring(length));
                    }
                    length += str3.length();
                    zArr[i] = false;
                }
                i++;
            }
        }
        if (i > i2) {
            if (i3 == -1) {
                i3 = i - i2;
            } else if (i - i2 != i3) {
                throw new IllegalArgumentException("row lengths do not match");
            }
            i4++;
        }
        BitMatrix bitMatrix = new BitMatrix(i3, i4);
        for (int i5 = 0; i5 < i; i5++) {
            if (zArr[i5]) {
                bitMatrix.i(i5 % i3, i5 / i3);
            }
        }
        return bitMatrix;
    }

    public static BitMatrix parse(boolean[][] zArr) {
        int length = zArr.length;
        int length2 = zArr[0].length;
        BitMatrix bitMatrix = new BitMatrix(length2, length);
        for (int i = 0; i < length; i++) {
            boolean[] zArr2 = zArr[i];
            for (int i2 = 0; i2 < length2; i2++) {
                if (zArr2[i2]) {
                    bitMatrix.i(i2, i);
                }
            }
        }
        return bitMatrix;
    }

    public void d() {
        int length = this.f4316d.length;
        for (int i = 0; i < length; i++) {
            this.f4316d[i] = 0;
        }
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public BitMatrix clone() {
        return new BitMatrix(this.a, this.b, this.c, (int[]) this.f4316d.clone());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        return this.a == bitMatrix.a && this.b == bitMatrix.b && this.c == bitMatrix.c && Arrays.equals(this.f4316d, bitMatrix.f4316d);
    }

    public boolean f(int i, int i2) {
        return ((this.f4316d[(i2 * this.c) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public int g() {
        return this.b;
    }

    public int h() {
        return this.a;
    }

    public int hashCode() {
        int i = this.a;
        return (((((((i * 31) + i) * 31) + this.b) * 31) + this.c) * 31) + Arrays.hashCode(this.f4316d);
    }

    public void i(int i, int i2) {
        int i3 = (i2 * this.c) + (i / 32);
        int[] iArr = this.f4316d;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public void j(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 < 1 || i3 < 1) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.b || i5 > this.a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.c * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f4316d;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public String k(String str, String str2) {
        return b(str, str2, "\n");
    }

    public String toString() {
        return k("X ", "  ");
    }
}
