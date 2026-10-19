package com.google.common.math;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import com.json.b4;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class DoubleMath {
    private static final double a = Math.log(2.0d);
    static final double[] b = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

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
                a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private DoubleMath() {
    }

    private static double a(double d2) {
        Preconditions.checkArgument(com.google.common.math.a.d(d2));
        return d2;
    }

    static double b(double d2, RoundingMode roundingMode) {
        if (!com.google.common.math.a.d(d2)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (a.a[roundingMode.ordinal()]) {
            case 1:
                b.k(isMathematicalInteger(d2));
                return d2;
            case 2:
                return (d2 >= 0.0d || isMathematicalInteger(d2)) ? d2 : ((long) d2) - 1;
            case 3:
                return (d2 <= 0.0d || isMathematicalInteger(d2)) ? d2 : ((long) d2) + 1;
            case 4:
                return d2;
            case 5:
                if (isMathematicalInteger(d2)) {
                    return d2;
                }
                return ((long) d2) + ((long) (d2 > 0.0d ? 1 : -1));
            case 6:
                return Math.rint(d2);
            case 7:
                double dRint = Math.rint(d2);
                return Math.abs(d2 - dRint) == 0.5d ? d2 + Math.copySign(0.5d, d2) : dRint;
            case 8:
                double dRint2 = Math.rint(d2);
                return Math.abs(d2 - dRint2) == 0.5d ? d2 : dRint2;
            default:
                throw new AssertionError();
        }
    }

    public static double factorial(int i) {
        b.e(b4.p, i);
        if (i > 170) {
            return Double.POSITIVE_INFINITY;
        }
        double d2 = 1.0d;
        int i2 = i & (-16);
        while (true) {
            i2++;
            if (i2 > i) {
                return d2 * b[i >> 4];
            }
            d2 *= (double) i2;
        }
    }

    public static int fuzzyCompare(double d2, double d3, double d4) {
        if (fuzzyEquals(d2, d3, d4)) {
            return 0;
        }
        if (d2 < d3) {
            return -1;
        }
        if (d2 > d3) {
            return 1;
        }
        return Booleans.compare(Double.isNaN(d2), Double.isNaN(d3));
    }

    public static boolean fuzzyEquals(double d2, double d3, double d4) {
        b.d("tolerance", d4);
        return Math.copySign(d2 - d3, 1.0d) <= d4 || d2 == d3 || (Double.isNaN(d2) && Double.isNaN(d3));
    }

    public static boolean isMathematicalInteger(double d2) {
        return com.google.common.math.a.d(d2) && (d2 == 0.0d || 52 - Long.numberOfTrailingZeros(com.google.common.math.a.c(d2)) <= Math.getExponent(d2));
    }

    public static boolean isPowerOfTwo(double d2) {
        if (d2 <= 0.0d || !com.google.common.math.a.d(d2)) {
            return false;
        }
        long jC = com.google.common.math.a.c(d2);
        return (jC & (jC - 1)) == 0;
    }

    public static double log2(double d2) {
        return Math.log(d2) / a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int log2(double r5, java.math.RoundingMode r7) {
        /*
            r0 = 0
            r1 = 1
            r2 = 0
            int r4 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r4 <= 0) goto L10
            boolean r2 = com.google.common.math.a.d(r5)
            if (r2 == 0) goto L10
            r2 = 1
            goto L11
        L10:
            r2 = 0
        L11:
            java.lang.String r3 = "x must be positive and finite"
            com.google.common.base.Preconditions.checkArgument(r2, r3)
            int r2 = java.lang.Math.getExponent(r5)
            boolean r3 = com.google.common.math.a.e(r5)
            if (r3 != 0) goto L2b
            r0 = 4841369599423283200(0x4330000000000000, double:4.503599627370496E15)
            double r5 = r5 * r0
            int r5 = log2(r5, r7)
            int r5 = r5 + (-52)
            return r5
        L2b:
            int[] r3 = com.google.common.math.DoubleMath.a.a
            int r7 = r7.ordinal()
            r7 = r3[r7]
            switch(r7) {
                case 1: goto L63;
                case 2: goto L6a;
                case 3: goto L5c;
                case 4: goto L52;
                case 5: goto L4a;
                case 6: goto L3c;
                case 7: goto L3c;
                case 8: goto L3c;
                default: goto L36;
            }
        L36:
            java.lang.AssertionError r5 = new java.lang.AssertionError
            r5.<init>()
            throw r5
        L3c:
            double r5 = com.google.common.math.a.g(r5)
            double r5 = r5 * r5
            r3 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 <= 0) goto L6a
            r0 = 1
            goto L6a
        L4a:
            if (r2 < 0) goto L4d
            r0 = 1
        L4d:
            boolean r5 = isPowerOfTwo(r5)
            goto L59
        L52:
            if (r2 >= 0) goto L55
            r0 = 1
        L55:
            boolean r5 = isPowerOfTwo(r5)
        L59:
            r5 = r5 ^ r1
            r0 = r0 & r5
            goto L6a
        L5c:
            boolean r5 = isPowerOfTwo(r5)
            r0 = r5 ^ 1
            goto L6a
        L63:
            boolean r5 = isPowerOfTwo(r5)
            com.google.common.math.b.k(r5)
        L6a:
            if (r0 == 0) goto L6e
            int r2 = r2 + 1
        L6e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.DoubleMath.log2(double, java.math.RoundingMode):int");
    }

    @Deprecated
    public static double mean(Iterable<? extends Number> iterable) {
        return mean(iterable.iterator());
    }

    @Deprecated
    public static double mean(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext(), "Cannot take mean of 0 values");
        double dA = a(it.next().doubleValue());
        long j = 1;
        while (it.hasNext()) {
            j++;
            dA += (a(it.next().doubleValue()) - dA) / j;
        }
        return dA;
    }

    @Deprecated
    public static double mean(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0, "Cannot take mean of 0 values");
        double dA = a(dArr[0]);
        long j = 1;
        for (int i = 1; i < dArr.length; i++) {
            a(dArr[i]);
            j++;
            dA += (dArr[i] - dA) / j;
        }
        return dA;
    }

    @Deprecated
    public static double mean(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0, "Cannot take mean of 0 values");
        long j = 0;
        for (int i : iArr) {
            j += (long) i;
        }
        return j / ((double) iArr.length);
    }

    @Deprecated
    public static double mean(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0, "Cannot take mean of 0 values");
        double d2 = jArr[0];
        long j = 1;
        for (int i = 1; i < jArr.length; i++) {
            j++;
            d2 += (jArr[i] - d2) / j;
        }
        return d2;
    }

    public static BigInteger roundToBigInteger(double d2, RoundingMode roundingMode) {
        double dB = b(d2, roundingMode);
        if ((dB < 9.223372036854776E18d) && ((-9.223372036854776E18d) - dB < 1.0d)) {
            return BigInteger.valueOf((long) dB);
        }
        BigInteger bigIntegerShiftLeft = BigInteger.valueOf(com.google.common.math.a.c(dB)).shiftLeft(Math.getExponent(dB) - 52);
        return dB < 0.0d ? bigIntegerShiftLeft.negate() : bigIntegerShiftLeft;
    }

    public static int roundToInt(double d2, RoundingMode roundingMode) {
        double dB = b(d2, roundingMode);
        b.a((dB < 2.147483648E9d) & (dB > -2.147483649E9d), d2, roundingMode);
        return (int) dB;
    }

    public static long roundToLong(double d2, RoundingMode roundingMode) {
        double dB = b(d2, roundingMode);
        b.a(((-9.223372036854776E18d) - dB < 1.0d) & (dB < 9.223372036854776E18d), d2, roundingMode);
        return (long) dB;
    }
}
