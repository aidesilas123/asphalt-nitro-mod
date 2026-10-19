package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.b4;

/* JADX INFO: loaded from: classes4.dex */
public class ia {
    private static final byte[] a;
    private static final byte[] b;
    private static /* synthetic */ boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char[] f5753d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char f5754e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5755f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5756g = 1;

    static {
        e();
        int i = f5755f;
        int i2 = i + 27;
        f5756g = i2 % 128;
        int i3 = i2 % 2;
        int i4 = i + 111;
        f5756g = i4 % 128;
        int i5 = i4 % 2;
        c = true;
        a = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        b = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -9, -9, -9, -9, -9, -9, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};
    }

    private ia() {
    }

    private static byte[] a(byte[] bArr, int i) throws hy {
        int i2 = f5755f + 125;
        f5756g = i2 % 128;
        int i3 = i2 % 2;
        byte[] bArrG = g(bArr, 0, i, b);
        int i4 = f5756g + 125;
        f5755f = i4 % 128;
        int i5 = i4 % 2;
        return bArrG;
    }

    private static byte[] b(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3 = ((i2 + 2) / 3) << 2;
        int i4 = i3 + (i3 / Integer.MAX_VALUE);
        byte[] bArr3 = new byte[i4];
        int i5 = i2 - 2;
        int i6 = f5756g + 111;
        f5755f = i6 % 128;
        int i7 = i6 % 2;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < i5) {
            int i11 = f5755f + 81;
            f5756g = i11 % 128;
            int i12 = i11 % 2;
            int i13 = ((bArr[i8] << Ascii.CAN) >>> 8) | ((bArr[i8 + 1] << Ascii.CAN) >>> 16) | ((bArr[i8 + 2] << Ascii.CAN) >>> 24);
            bArr3[i9] = bArr2[i13 >>> 18];
            int i14 = i9 + 1;
            bArr3[i14] = bArr2[(i13 >>> 12) & 63];
            bArr3[i9 + 2] = bArr2[(i13 >>> 6) & 63];
            bArr3[i9 + 3] = bArr2[i13 & 63];
            i10 += 4;
            if ((i10 == Integer.MAX_VALUE ? '@' : '\f') != '\f') {
                bArr3[i9 + 4] = 10;
                i9 = i14;
                i10 = 0;
            }
            i8 += 3;
            i9 += 4;
        }
        if (i8 < i2) {
            h(bArr, i8, i2 - i8, bArr3, i9, bArr2);
            if (!(i10 + 4 != Integer.MAX_VALUE)) {
                bArr3[i9 + 4] = 10;
                i9++;
            }
            i9 += 4;
        }
        if (c || i9 == i4) {
            return bArr3;
        }
        throw new AssertionError();
    }

    private static String c(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = f5753d;
            char c2 = f5754e;
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

    private static String d(byte[] bArr, int i, byte[] bArr2) {
        byte[] bArrB = b(bArr, 0, i, bArr2);
        String str = new String(bArrB, 0, bArrB.length);
        int i2 = f5755f + 125;
        f5756g = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        return str;
    }

    static void e() {
        f5754e = (char) 6;
        f5753d = new char[]{'i', 'n', 'v', 'a', 'l', 'd', ' ', 'p', 'g', 'b', 'y', 't', 'e', '\'', b4.R, 'o', 'f', 's', 'c', 'u', 'h', 'r', 'B', '6', '4', ':', '(', 'm', ')', 'j', 'k', 'q', 'w', 'x', 'z', '{'};
    }

    private static int f(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        if (bArr[2] == 61) {
            int i2 = f5756g;
            int i3 = i2 + 69;
            f5755f = i3 % 128;
            int i4 = i3 % 2;
            bArr2[i] = (byte) ((((bArr3[bArr[1]] << Ascii.CAN) >>> 12) | ((bArr3[bArr[0]] << Ascii.CAN) >>> 6)) >>> 16);
            int i5 = i2 + 51;
            f5755f = i5 % 128;
            int i6 = i5 % 2;
            return 1;
        }
        if (bArr[3] == 61) {
            int i7 = ((bArr3[bArr[2]] << Ascii.CAN) >>> 18) | ((bArr3[bArr[0]] << Ascii.CAN) >>> 6) | ((bArr3[bArr[1]] << Ascii.CAN) >>> 12);
            bArr2[i] = (byte) (i7 >>> 16);
            bArr2[i + 1] = (byte) (i7 >>> 8);
            return 2;
        }
        int i8 = ((bArr3[bArr[3]] << Ascii.CAN) >>> 24) | ((bArr3[bArr[0]] << Ascii.CAN) >>> 6) | ((bArr3[bArr[1]] << Ascii.CAN) >>> 12) | ((bArr3[bArr[2]] << Ascii.CAN) >>> 18);
        bArr2[i] = (byte) (i8 >> 16);
        bArr2[i + 1] = (byte) (i8 >> 8);
        bArr2[i + 2] = (byte) i8;
        return 3;
    }

    private static byte[] g(byte[] bArr, int i, int i2, byte[] bArr2) throws hy {
        byte[] bArr3 = new byte[((i2 * 3) / 4) + 2];
        byte[] bArr4 = new byte[4];
        int i3 = 0;
        int i4 = 0;
        int iF = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            byte b2 = (byte) (bArr[i3] & Ascii.DEL);
            byte b3 = bArr2[b2];
            if (b3 < -5) {
                StringBuilder sb = new StringBuilder();
                sb.append(c((byte) ((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 101), "\u0015\u0004\u0000\u000b\u0015\u0004\f\r\u0012\u001d\f\u0006\u0007\r\u0017\u0007\f\u0018\u0015\u0002\u001b\t\u0017\u0006\u000f\u0012\t\u0000\u0006\u0007", 30 - Color.red(0)).intern());
                sb.append(i3);
                sb.append(c((byte) (69 - Color.green(0)), "\u0018\u0007", View.MeasureSpec.getSize(0) + 2).intern());
                sb.append((int) bArr[i3]);
                sb.append(c((byte) (70 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))), "\u001d\u0002\u0012\u0018\u0003\u0018\u0004\u0005p", (ViewConfiguration.getPressedStateDuration() >> 16) + 9).intern());
                throw new hy(sb.toString());
            }
            int i5 = f5756g + 55;
            int i6 = i5 % 128;
            f5755f = i6;
            int i7 = i5 % 2;
            if ((b3 >= -1 ? (char) 21 : (char) 18) != 18) {
                int i8 = i6 + 29;
                f5756g = i8 % 128;
                int i9 = i8 % 2;
                if (b2 == 61) {
                    int i10 = i6 + 115;
                    f5756g = i10 % 128;
                    int i11 = i10 % 2;
                    int i12 = i2 - i3;
                    byte b4 = (byte) (bArr[i2 - 1] & Ascii.DEL);
                    if (i4 == 0 || i4 == 1) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(c((byte) ((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 93), "\u0001\u0002\u0003\u0004\u0005\u0001\u0000\u000b\t\u0001ÁÁ\u0001\u0002\t\u0007\n\u000b\u0006\u0011\u0007\f\u000f\u000e\t\u0000\u0006\u0007\n\u000b\u0006\u0011\t\fÃÃ\f\r\u0006\u0007", (ViewConfiguration.getWindowTouchSlop() >> 8) + 40).intern());
                        sb2.append(i3);
                        throw new hy(sb2.toString());
                    }
                    if ((i4 == 3 && i12 > 2) || (i4 == 4 && i12 > 1)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(c((byte) (16 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)), "\t\u0001tt\u0001\u0002\t\u0007\n\u000b\u0006\u0011\u0007\f\u000f\u000e\n\f\u0004\u0005\f\r\n\u0010\u000b\f\u0002\u0006\u0002\u0004\u0005\u0010\f\u0012\u0002\u0000\t\f\f\n\r\u0000\u0015\f\u0000\u0011\u0000\u000b\u0003\u0004\u0001\u0016\u0012\f\u0005\t\t\fvv\f\r\u0006\u0007", 64 - Color.green(0)).intern());
                        sb3.append(i3);
                        throw new hy(sb3.toString());
                    }
                    if (!(b4 == 61) && b4 != 10) {
                        throw new hy(c((byte) ((Process.myTid() >> 22) + 6), "\r\u0000\u0015\f\u0000\u0011\u0000\u000b\u0003\u0004\u0001\u0016\u0012\f\u0015\u0002\f\u000b\u0001\u0002\u0003\u0004\u0005\u0001\u0000\u000b\t\u0017\u0004\u0001\u0005\u0001\u0002\u0007\u0007\n\u000b\u0006k", 38 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern());
                    }
                } else {
                    int i13 = i4 + 1;
                    bArr4[i4] = b2;
                    if (i13 == 4) {
                        int i14 = i6 + 73;
                        f5756g = i14 % 128;
                        if (i14 % 2 == 0) {
                            iF /= f(bArr4, bArr3, iF, bArr2);
                            i4 = 1;
                        } else {
                            iF += f(bArr4, bArr3, iF, bArr2);
                            i4 = 0;
                        }
                    } else {
                        i4 = i13;
                    }
                }
            }
            i3++;
        }
        if (i4 != 0) {
            if (i4 == 1) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(c((byte) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 119), "\f\u0005\u0002\u0007\u0000\u0010\u0007\u0006\u001b\t\u0001\u0005\u0001\u0002\t\u0007\u0013\u0015\t\u001b\u0000\u0015\u0006\u0011\u0012\t\u0005\t\t\fÞÞ\f\r\u0006\u0007", 36 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern());
                sb4.append(i2 - 1);
                throw new hy(sb4.toString());
            }
            bArr4[i4] = 61;
            iF += f(bArr4, bArr3, iF, bArr2);
        }
        byte[] bArr5 = new byte[iF];
        System.arraycopy(bArr3, 0, bArr5, 0, iF);
        return bArr5;
    }

    private static byte[] h(byte[] bArr, int i, int i2, byte[] bArr2, int i3, byte[] bArr3) {
        int i4;
        int i5;
        int i6 = f5756g + 97;
        int i7 = i6 % 128;
        f5755f = i7;
        int i8 = i6 % 2;
        if (!(i2 > 0)) {
            int i9 = i7 + 79;
            f5756g = i9 % 128;
            int i10 = i9 % 2;
            i4 = 0;
        } else {
            i4 = (bArr[i] << Ascii.CAN) >>> 8;
        }
        if (!(i2 <= 1)) {
            int i11 = f5756g + 51;
            f5755f = i11 % 128;
            int i12 = i11 % 2;
            i5 = (bArr[i + 1] << Ascii.CAN) >>> 16;
        } else {
            int i13 = i7 + 67;
            f5756g = i13 % 128;
            int i14 = i13 % 2;
            i5 = 0;
        }
        int i15 = i5 | i4 | (i2 > 2 ? (bArr[i + 2] << Ascii.CAN) >>> 24 : 0);
        if (i2 == 1) {
            bArr2[i3] = bArr3[i15 >>> 18];
            bArr2[i3 + 1] = bArr3[(i15 >>> 12) & 63];
            bArr2[i3 + 2] = 61;
            bArr2[i3 + 3] = 61;
            return bArr2;
        }
        if (i2 == 2) {
            bArr2[i3] = bArr3[i15 >>> 18];
            bArr2[i3 + 1] = bArr3[(i15 >>> 12) & 63];
            bArr2[i3 + 2] = bArr3[(i15 >>> 6) & 63];
            bArr2[i3 + 3] = 61;
            return bArr2;
        }
        if (i2 != 3) {
            return bArr2;
        }
        bArr2[i3] = bArr3[i15 >>> 18];
        bArr2[i3 + 1] = bArr3[(i15 >>> 12) & 63];
        bArr2[i3 + 2] = bArr3[(i15 >>> 6) & 63];
        bArr2[i3 + 3] = bArr3[i15 & 63];
        return bArr2;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static String m824(byte[] bArr) {
        int i = f5755f + 73;
        f5756g = i % 128;
        int i2 = i % 2;
        String strD = d(bArr, bArr.length, a);
        int i3 = f5755f + 115;
        f5756g = i3 % 128;
        if ((i3 % 2 == 0 ? '\"' : (char) 16) == 16) {
            return strD;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m825(String str) throws hy {
        int i = f5755f + 77;
        f5756g = i % 128;
        if ((i % 2 == 0 ? 'C' : '\n') != 'C') {
            byte[] bytes = str.getBytes();
            return a(bytes, bytes.length);
        }
        byte[] bytes2 = str.getBytes();
        a(bytes2, bytes2.length);
        throw null;
    }
}
