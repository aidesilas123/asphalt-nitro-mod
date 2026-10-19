package com.google.common.math;

import com.google.common.base.Preconditions;
import java.lang.Comparable;
import java.lang.Number;
import java.math.RoundingMode;

/* JADX INFO: compiled from: ToDoubleRounder.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class d<X extends Number & Comparable<X>> {

    /* JADX INFO: compiled from: ToDoubleRounder.java */
    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            a = iArr;
            try {
                iArr[RoundingMode.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[RoundingMode.HALF_EVEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[RoundingMode.HALF_DOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[RoundingMode.HALF_UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[RoundingMode.FLOOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[RoundingMode.CEILING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[RoundingMode.UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[RoundingMode.UNNECESSARY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    d() {
    }

    abstract X a(X x, X x2);

    final double b(X x, RoundingMode roundingMode) {
        Number numberE;
        double dNextUp;
        Preconditions.checkNotNull(x, "x");
        Preconditions.checkNotNull(roundingMode, "mode");
        double dC = c(x);
        if (Double.isInfinite(dC)) {
            switch (a.a[roundingMode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return ((double) d(x)) * Double.MAX_VALUE;
                case 5:
                    return dC == Double.POSITIVE_INFINITY ? Double.MAX_VALUE : Double.NEGATIVE_INFINITY;
                case 6:
                    return dC == Double.POSITIVE_INFINITY ? Double.POSITIVE_INFINITY : -1.7976931348623157E308d;
                case 7:
                    return dC;
                case 8:
                    String strValueOf = String.valueOf(x);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 44);
                    sb.append(strValueOf);
                    sb.append(" cannot be represented precisely as a double");
                    throw new ArithmeticException(sb.toString());
            }
        }
        Number numberE2 = e(dC, RoundingMode.UNNECESSARY);
        int iCompareTo = ((Comparable) x).compareTo(numberE2);
        int[] iArr = a.a;
        switch (iArr[roundingMode.ordinal()]) {
            case 1:
                return d(x) >= 0 ? iCompareTo >= 0 ? dC : com.google.common.math.a.f(dC) : iCompareTo <= 0 ? dC : Math.nextUp(dC);
            case 2:
            case 3:
            case 4:
                if (iCompareTo >= 0) {
                    dNextUp = Math.nextUp(dC);
                    if (dNextUp == Double.POSITIVE_INFINITY) {
                        return dC;
                    }
                    numberE = e(dNextUp, RoundingMode.CEILING);
                } else {
                    double dF = com.google.common.math.a.f(dC);
                    if (dF == Double.NEGATIVE_INFINITY) {
                        return dC;
                    }
                    Number numberE3 = e(dF, RoundingMode.FLOOR);
                    numberE = numberE2;
                    numberE2 = numberE3;
                    dNextUp = dC;
                    dC = dF;
                }
                int iCompareTo2 = ((Comparable) a(x, numberE2)).compareTo(a(numberE, x));
                if (iCompareTo2 < 0) {
                    return dC;
                }
                if (iCompareTo2 > 0) {
                    return dNextUp;
                }
                int i = iArr[roundingMode.ordinal()];
                if (i == 2) {
                    return (Double.doubleToRawLongBits(dC) & 1) == 0 ? dC : dNextUp;
                }
                if (i == 3) {
                    return d(x) >= 0 ? dC : dNextUp;
                }
                if (i == 4) {
                    return d(x) >= 0 ? dNextUp : dC;
                }
                throw new AssertionError("impossible");
            case 5:
                return iCompareTo >= 0 ? dC : com.google.common.math.a.f(dC);
            case 6:
                return iCompareTo <= 0 ? dC : Math.nextUp(dC);
            case 7:
                return d(x) >= 0 ? iCompareTo <= 0 ? dC : Math.nextUp(dC) : iCompareTo >= 0 ? dC : com.google.common.math.a.f(dC);
            case 8:
                b.k(iCompareTo == 0);
                return dC;
            default:
                throw new AssertionError("impossible");
        }
    }

    abstract double c(X x);

    abstract int d(X x);

    abstract X e(double d2, RoundingMode roundingMode);
}
