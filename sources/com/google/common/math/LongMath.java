package com.google.common.math;

import com.applovin.exoplayer2.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import com.google.common.primitives.UnsignedLongs;
import com.json.b4;
import com.json.mediationsdk.l;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes3.dex */
public final class LongMath {
    static final byte[] a = {19, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, 17, 17, 17, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.CR, Ascii.CR, Ascii.CR, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.VT, Ascii.VT, Ascii.VT, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0};
    static final long[] b = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, C.NANOS_PER_SECOND, 10000000000L, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};
    static final long[] c = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, 3162277660L, 31622776601L, 316227766016L, 3162277660168L, 31622776601683L, 316227766016837L, 3162277660168379L, 31622776601683793L, 316227766016837933L, 3162277660168379331L};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final long[] f3924d = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f3925e = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 3810779, 121977, 16175, 4337, 1733, 887, 534, 361, 265, 206, 169, 143, 125, 111, 101, 94, 88, 83, 79, 76, 74, 72, 70, 69, 68, 67, 67, 66, 66, 66, 66};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int[] f3926f = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 2642246, 86251, 11724, 3218, 1313, 684, 419, 287, 214, 169, 139, 119, 105, 95, 87, 81, 76, 73, 70, 68, 66, 64, 63, 62, 62, 61, 61, 61};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long[][] f3927g = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class MillerRabinTester {
        public static final MillerRabinTester a = new a("SMALL", 0);
        public static final MillerRabinTester b = new b(l.b, 1);
        private static final /* synthetic */ MillerRabinTester[] c = e();

        enum a extends MillerRabinTester {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            long f(long j, long j2, long j3) {
                return (j * j2) % j3;
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            long h(long j, long j2) {
                return (j * j) % j2;
            }
        }

        enum b extends MillerRabinTester {
            b(String str, int i) {
                super(str, i, null);
            }

            private long k(long j, long j2, long j3) {
                long j4 = j + j2;
                return j >= j3 - j2 ? j4 - j3 : j4;
            }

            private long m(long j, long j2) {
                int i = 32;
                do {
                    int iMin = Math.min(i, Long.numberOfLeadingZeros(j));
                    j = UnsignedLongs.remainder(j << iMin, j2);
                    i -= iMin;
                } while (i > 0);
                return j;
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            long f(long j, long j2, long j3) {
                long j4 = j >>> 32;
                long j5 = j2 >>> 32;
                long j6 = j & 4294967295L;
                long j7 = j2 & 4294967295L;
                long jM = m(j4 * j5, j3) + (j4 * j7);
                if (jM < 0) {
                    jM = UnsignedLongs.remainder(jM, j3);
                }
                Long.signum(j6);
                return k(m(jM + (j5 * j6), j3), UnsignedLongs.remainder(j6 * j7, j3), j3);
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            long h(long j, long j2) {
                long j3 = j >>> 32;
                long j4 = j & 4294967295L;
                long jM = m(j3 * j3, j2);
                long jRemainder = j3 * j4 * 2;
                if (jRemainder < 0) {
                    jRemainder = UnsignedLongs.remainder(jRemainder, j2);
                }
                return k(m(jM + jRemainder, j2), UnsignedLongs.remainder(j4 * j4, j2), j2);
            }
        }

        private MillerRabinTester(String str, int i) {
        }

        /* synthetic */ MillerRabinTester(String str, int i, a aVar) {
            this(str, i);
        }

        private static /* synthetic */ MillerRabinTester[] e() {
            return new MillerRabinTester[]{a, b};
        }

        private long g(long j, long j2, long j3) {
            long jF = 1;
            while (j2 != 0) {
                if ((j2 & 1) != 0) {
                    jF = f(jF, j, j3);
                }
                j = h(j, j3);
                j2 >>= 1;
            }
            return jF;
        }

        static boolean i(long j, long j2) {
            return (j2 <= 3037000499L ? a : b).j(j, j2);
        }

        private boolean j(long j, long j2) {
            long j3 = j2 - 1;
            int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j3);
            long j4 = j3 >> iNumberOfTrailingZeros;
            long j5 = j % j2;
            if (j5 == 0) {
                return true;
            }
            long jG = g(j5, j4, j2);
            if (jG == 1) {
                return true;
            }
            int i = 0;
            while (jG != j3) {
                i++;
                if (i == iNumberOfTrailingZeros) {
                    return false;
                }
                jG = h(jG, j2);
            }
            return true;
        }

        public static MillerRabinTester valueOf(String str) {
            return (MillerRabinTester) Enum.valueOf(MillerRabinTester.class, str);
        }

        public static MillerRabinTester[] values() {
            return (MillerRabinTester[]) c.clone();
        }

        abstract long f(long j, long j2, long j3);

        abstract long h(long j, long j2);
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private LongMath() {
    }

    static boolean a(long j) {
        return ((long) ((int) j)) == j;
    }

    static int b(long j, long j2) {
        return (int) ((~(~(j - j2))) >>> 63);
    }

    public static long binomial(int i, int i2) {
        b.e(b4.p, i);
        b.e(CampaignEx.JSON_KEY_AD_K, i2);
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        long jD = 1;
        if (i2 == 0) {
            return 1L;
        }
        if (i2 == 1) {
            return i;
        }
        long[] jArr = f3924d;
        if (i < jArr.length) {
            return jArr[i] / (jArr[i2] * jArr[i - i2]);
        }
        int[] iArr = f3925e;
        if (i2 >= iArr.length || i > iArr[i2]) {
            return Long.MAX_VALUE;
        }
        int[] iArr2 = f3926f;
        if (i2 < iArr2.length && i <= iArr2[i2]) {
            int i3 = i - 1;
            long j = i;
            for (int i4 = 2; i4 <= i2; i4++) {
                j = (j * ((long) i3)) / ((long) i4);
                i3--;
            }
            return j;
        }
        long j2 = i;
        int iLog2 = log2(j2, RoundingMode.CEILING);
        int i5 = i - 1;
        int i6 = iLog2;
        long j3 = j2;
        int i7 = 2;
        long j4 = 1;
        while (i7 <= i2) {
            i6 += iLog2;
            if (i6 < 63) {
                j3 *= (long) i5;
                j4 *= (long) i7;
            } else {
                jD = d(jD, j3, j4);
                j3 = i5;
                j4 = i7;
                i6 = iLog2;
            }
            i7++;
            i5--;
        }
        return d(jD, j3, j4);
    }

    static int c(long j) {
        byte b2 = a[Long.numberOfLeadingZeros(j)];
        return b2 - b(j, b[b2]);
    }

    public static long ceilingPowerOfTwo(long j) {
        b.i("x", j);
        if (j <= 4611686018427387904L) {
            return 1 << (-Long.numberOfLeadingZeros(j - 1));
        }
        StringBuilder sb = new StringBuilder(70);
        sb.append("ceilingPowerOfTwo(");
        sb.append(j);
        sb.append(") is not representable as a long");
        throw new ArithmeticException(sb.toString());
    }

    public static long checkedAdd(long j, long j2) {
        long j3 = j + j2;
        b.c(((j ^ j2) < 0) | ((j ^ j3) >= 0), "checkedAdd", j, j2);
        return j3;
    }

    public static long checkedMultiply(long j, long j2) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j2);
        if (iNumberOfLeadingZeros > 65) {
            return j * j2;
        }
        b.c(iNumberOfLeadingZeros >= 64, "checkedMultiply", j, j2);
        b.c((j >= 0) | (j2 != Long.MIN_VALUE), "checkedMultiply", j, j2);
        long j3 = j * j2;
        b.c(j == 0 || j3 / j == j2, "checkedMultiply", j, j2);
        return j3;
    }

    public static long checkedPow(long j, int i) {
        int i2 = i;
        b.e("exponent", i2);
        if ((j >= -2) && (j <= 2)) {
            int i3 = (int) j;
            if (i3 == -2) {
                b.c(i2 < 64, "checkedPow", j, i2);
                return (i2 & 1) == 0 ? 1 << i2 : (-1) << i2;
            }
            if (i3 == -1) {
                return (i2 & 1) == 0 ? 1L : -1L;
            }
            if (i3 == 0) {
                return i2 == 0 ? 1L : 0L;
            }
            if (i3 == 1) {
                return 1L;
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            b.c(i2 < 63, "checkedPow", j, i2);
            return 1 << i2;
        }
        long jCheckedMultiply = 1;
        long j2 = j;
        while (i2 != 0) {
            if (i2 == 1) {
                return checkedMultiply(jCheckedMultiply, j2);
            }
            if ((i2 & 1) != 0) {
                jCheckedMultiply = checkedMultiply(jCheckedMultiply, j2);
            }
            long j3 = jCheckedMultiply;
            int i4 = i2 >> 1;
            if (i4 > 0) {
                b.c(-3037000499L <= j2 && j2 <= 3037000499L, "checkedPow", j2, i4);
                j2 *= j2;
            }
            jCheckedMultiply = j3;
            i2 = i4;
        }
        return jCheckedMultiply;
    }

    public static long checkedSubtract(long j, long j2) {
        long j3 = j - j2;
        b.c(((j ^ j2) >= 0) | ((j ^ j3) >= 0), "checkedSubtract", j, j2);
        return j3;
    }

    static long d(long j, long j2, long j3) {
        if (j == 1) {
            return j2 / j3;
        }
        long jGcd = gcd(j, j3);
        return (j / jGcd) * (j2 / (j3 / jGcd));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long divide(long r9, long r11, java.math.RoundingMode r13) {
        /*
            com.google.common.base.Preconditions.checkNotNull(r13)
            long r0 = r9 / r11
            long r2 = r11 * r0
            long r2 = r9 - r2
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L10
            return r0
        L10:
            long r9 = r9 ^ r11
            r7 = 63
            long r9 = r9 >> r7
            int r10 = (int) r9
            r9 = 1
            r10 = r10 | r9
            int[] r7 = com.google.common.math.LongMath.a.a
            int r8 = r13.ordinal()
            r7 = r7[r8]
            r8 = 0
            switch(r7) {
                case 1: goto L50;
                case 2: goto L57;
                case 3: goto L4d;
                case 4: goto L58;
                case 5: goto L4a;
                case 6: goto L29;
                case 7: goto L29;
                case 8: goto L29;
                default: goto L23;
            }
        L23:
            java.lang.AssertionError r9 = new java.lang.AssertionError
            r9.<init>()
            throw r9
        L29:
            long r2 = java.lang.Math.abs(r2)
            long r11 = java.lang.Math.abs(r11)
            long r11 = r11 - r2
            long r2 = r2 - r11
            int r11 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r11 != 0) goto L47
            java.math.RoundingMode r11 = java.math.RoundingMode.HALF_UP
            if (r13 == r11) goto L58
            java.math.RoundingMode r11 = java.math.RoundingMode.HALF_EVEN
            if (r13 != r11) goto L57
            r11 = 1
            long r11 = r11 & r0
            int r13 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r13 == 0) goto L57
            goto L58
        L47:
            if (r11 <= 0) goto L57
            goto L58
        L4a:
            if (r10 <= 0) goto L57
            goto L58
        L4d:
            if (r10 >= 0) goto L57
            goto L58
        L50:
            if (r6 != 0) goto L53
            goto L54
        L53:
            r9 = 0
        L54:
            com.google.common.math.b.k(r9)
        L57:
            r9 = 0
        L58:
            if (r9 == 0) goto L5c
            long r9 = (long) r10
            long r0 = r0 + r9
        L5c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.LongMath.divide(long, long, java.math.RoundingMode):long");
    }

    public static long factorial(int i) {
        b.e(b4.p, i);
        long[] jArr = f3924d;
        if (i < jArr.length) {
            return jArr[i];
        }
        return Long.MAX_VALUE;
    }

    public static long floorPowerOfTwo(long j) {
        b.i("x", j);
        return 1 << (63 - Long.numberOfLeadingZeros(j));
    }

    public static long gcd(long j, long j2) {
        b.f("a", j);
        b.f(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, j2);
        if (j == 0) {
            return j2;
        }
        if (j2 == 0) {
            return j;
        }
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long jNumberOfTrailingZeros = j >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j2);
        long j3 = j2 >> iNumberOfTrailingZeros2;
        while (jNumberOfTrailingZeros != j3) {
            long j4 = jNumberOfTrailingZeros - j3;
            long j5 = (j4 >> 63) & j4;
            long j6 = (j4 - j5) - j5;
            j3 += j5;
            jNumberOfTrailingZeros = j6 >> Long.numberOfTrailingZeros(j6);
        }
        return jNumberOfTrailingZeros << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros2);
    }

    public static boolean isPowerOfTwo(long j) {
        return (j > 0) & ((j & (j - 1)) == 0);
    }

    public static boolean isPrime(long j) {
        if (j < 2) {
            b.f(b4.p, j);
            return false;
        }
        if (j < 66) {
            return ((722865708377213483 >> (((int) j) + (-2))) & 1) != 0;
        }
        if (((-545925251) & (1 << ((int) (j % 30)))) != 0 || j % 7 == 0 || j % 11 == 0 || j % 13 == 0) {
            return false;
        }
        if (j < 289) {
            return true;
        }
        for (long[] jArr : f3927g) {
            if (j <= jArr[0]) {
                for (int i = 1; i < jArr.length; i++) {
                    if (!MillerRabinTester.i(jArr[i], j)) {
                        return false;
                    }
                }
                return true;
            }
        }
        throw new AssertionError();
    }

    public static int log10(long j, RoundingMode roundingMode) {
        int iB;
        b.i("x", j);
        int iC = c(j);
        long j2 = b[iC];
        switch (a.a[roundingMode.ordinal()]) {
            case 1:
                b.k(j == j2);
            case 2:
            case 3:
                return iC;
            case 4:
            case 5:
                iB = b(j2, j);
                return iC + iB;
            case 6:
            case 7:
            case 8:
                iB = b(c[iC], j);
                return iC + iB;
            default:
                throw new AssertionError();
        }
    }

    public static int log2(long j, RoundingMode roundingMode) {
        b.i("x", j);
        switch (a.a[roundingMode.ordinal()]) {
            case 1:
                b.k(isPowerOfTwo(j));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 64 - Long.numberOfLeadingZeros(j - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j);
                return (63 - iNumberOfLeadingZeros) + b((-5402926248376769404) >>> iNumberOfLeadingZeros, j);
            default:
                throw new AssertionError("impossible");
        }
        return 63 - Long.numberOfLeadingZeros(j);
    }

    public static long mean(long j, long j2) {
        return (j & j2) + ((j ^ j2) >> 1);
    }

    public static int mod(long j, int i) {
        return (int) mod(j, i);
    }

    public static long mod(long j, long j2) {
        if (j2 <= 0) {
            throw new ArithmeticException("Modulus must be positive");
        }
        long j3 = j % j2;
        return j3 >= 0 ? j3 : j3 + j2;
    }

    public static long pow(long j, int i) {
        b.e("exponent", i);
        if (-2 > j || j > 2) {
            long j2 = 1;
            while (i != 0) {
                if (i == 1) {
                    return j2 * j;
                }
                j2 *= (i & 1) == 0 ? 1L : j;
                j *= j;
                i >>= 1;
            }
            return j2;
        }
        int i2 = (int) j;
        if (i2 == -2) {
            if (i < 64) {
                return (i & 1) == 0 ? 1 << i : -(1 << i);
            }
            return 0L;
        }
        if (i2 == -1) {
            return (i & 1) == 0 ? 1L : -1L;
        }
        if (i2 == 0) {
            return i == 0 ? 1L : 0L;
        }
        if (i2 == 1) {
            return 1L;
        }
        if (i2 != 2) {
            throw new AssertionError();
        }
        if (i < 64) {
            return 1 << i;
        }
        return 0L;
    }

    public static double roundToDouble(long j, RoundingMode roundingMode) {
        double dNextUp;
        long jCeil;
        double d2 = j;
        long jFloor = (long) d2;
        int iCompare = jFloor == Long.MAX_VALUE ? -1 : Longs.compare(j, jFloor);
        int[] iArr = a.a;
        switch (iArr[roundingMode.ordinal()]) {
            case 1:
                b.k(iCompare == 0);
                return d2;
            case 2:
                return j >= 0 ? iCompare >= 0 ? d2 : com.google.common.math.a.f(d2) : iCompare <= 0 ? d2 : Math.nextUp(d2);
            case 3:
                return iCompare >= 0 ? d2 : com.google.common.math.a.f(d2);
            case 4:
                return j >= 0 ? iCompare <= 0 ? d2 : Math.nextUp(d2) : iCompare >= 0 ? d2 : com.google.common.math.a.f(d2);
            case 5:
                return iCompare <= 0 ? d2 : Math.nextUp(d2);
            case 6:
            case 7:
            case 8:
                if (iCompare >= 0) {
                    dNextUp = Math.nextUp(d2);
                    jCeil = (long) Math.ceil(dNextUp);
                } else {
                    double dF = com.google.common.math.a.f(d2);
                    jFloor = (long) Math.floor(dF);
                    dNextUp = d2;
                    d2 = dF;
                    jCeil = jFloor;
                }
                long j2 = j - jFloor;
                long j3 = jCeil - j;
                if (jCeil == Long.MAX_VALUE) {
                    j3++;
                }
                int iCompare2 = Longs.compare(j2, j3);
                if (iCompare2 < 0) {
                    return d2;
                }
                if (iCompare2 > 0) {
                    return dNextUp;
                }
                int i = iArr[roundingMode.ordinal()];
                if (i == 6) {
                    return j >= 0 ? d2 : dNextUp;
                }
                if (i == 7) {
                    return j >= 0 ? dNextUp : d2;
                }
                if (i == 8) {
                    return (com.google.common.math.a.c(d2) & 1) == 0 ? d2 : dNextUp;
                }
                throw new AssertionError("impossible");
            default:
                throw new AssertionError("impossible");
        }
    }

    public static long saturatedAdd(long j, long j2) {
        long j3 = j + j2;
        return (((j2 ^ j) > 0L ? 1 : ((j2 ^ j) == 0L ? 0 : -1)) < 0) | ((j ^ j3) >= 0) ? j3 : ((j3 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    public static long saturatedMultiply(long j, long j2) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j2);
        if (iNumberOfLeadingZeros > 65) {
            return j * j2;
        }
        long j3 = ((j ^ j2) >>> 63) + Long.MAX_VALUE;
        if ((iNumberOfLeadingZeros < 64) || ((j2 == Long.MIN_VALUE) & (j < 0))) {
            return j3;
        }
        long j4 = j * j2;
        return (j == 0 || j4 / j == j2) ? j4 : j3;
    }

    public static long saturatedPow(long j, int i) {
        b.e("exponent", i);
        long jSaturatedMultiply = 1;
        if (!(j >= -2) || !(j <= 2)) {
            long j2 = ((j >>> 63) & ((long) (i & 1))) + Long.MAX_VALUE;
            while (i != 0) {
                if (i == 1) {
                    return saturatedMultiply(jSaturatedMultiply, j);
                }
                if ((i & 1) != 0) {
                    jSaturatedMultiply = saturatedMultiply(jSaturatedMultiply, j);
                }
                i >>= 1;
                if (i > 0) {
                    if ((-3037000499L > j) || (j > 3037000499L)) {
                        return j2;
                    }
                    j *= j;
                }
            }
            return jSaturatedMultiply;
        }
        int i2 = (int) j;
        if (i2 == -2) {
            return i >= 64 ? ((long) (i & 1)) + Long.MAX_VALUE : (i & 1) == 0 ? 1 << i : (-1) << i;
        }
        if (i2 == -1) {
            return (i & 1) == 0 ? 1L : -1L;
        }
        if (i2 == 0) {
            return i == 0 ? 1L : 0L;
        }
        if (i2 == 1) {
            return 1L;
        }
        if (i2 != 2) {
            throw new AssertionError();
        }
        if (i >= 63) {
            return Long.MAX_VALUE;
        }
        return 1 << i;
    }

    public static long saturatedSubtract(long j, long j2) {
        long j3 = j - j2;
        return (((j2 ^ j) > 0L ? 1 : ((j2 ^ j) == 0L ? 0 : -1)) >= 0) | ((j ^ j3) >= 0) ? j3 : ((j3 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    public static long sqrt(long j, RoundingMode roundingMode) {
        b.f("x", j);
        if (a(j)) {
            return IntMath.sqrt((int) j, roundingMode);
        }
        long jSqrt = (long) Math.sqrt(j);
        long j2 = jSqrt * jSqrt;
        switch (a.a[roundingMode.ordinal()]) {
            case 1:
                b.k(j2 == j);
                return jSqrt;
            case 2:
            case 3:
                return j < j2 ? jSqrt - 1 : jSqrt;
            case 4:
            case 5:
                return j > j2 ? jSqrt + 1 : jSqrt;
            case 6:
            case 7:
            case 8:
                long j3 = jSqrt - ((long) (j >= j2 ? 0 : 1));
                return j3 + ((long) b((j3 * j3) + j3, j));
            default:
                throw new AssertionError();
        }
    }
}
