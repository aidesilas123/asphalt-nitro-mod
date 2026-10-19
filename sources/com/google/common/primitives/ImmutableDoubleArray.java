package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmutableDoubleArray implements Serializable {
    private static final ImmutableDoubleArray a = new ImmutableDoubleArray(new double[0]);
    private final double[] b;
    private final transient int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3946d;

    public static final class b {
        private double[] a;
        private int b = 0;

        b(int i) {
            this.a = new double[i];
        }

        private void e(int i) {
            int i2 = this.b + i;
            double[] dArr = this.a;
            if (i2 > dArr.length) {
                this.a = Arrays.copyOf(dArr, f(dArr.length, i2));
            }
        }

        private static int f(int i, int i2) {
            if (i2 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        public b a(double d2) {
            e(1);
            double[] dArr = this.a;
            int i = this.b;
            dArr[i] = d2;
            this.b = i + 1;
            return this;
        }

        public b b(Iterable<Double> iterable) {
            if (iterable instanceof Collection) {
                return c((Collection) iterable);
            }
            Iterator<Double> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next().doubleValue());
            }
            return this;
        }

        public b c(Collection<Double> collection) {
            e(collection.size());
            for (Double d2 : collection) {
                double[] dArr = this.a;
                int i = this.b;
                this.b = i + 1;
                dArr[i] = d2.doubleValue();
            }
            return this;
        }

        public ImmutableDoubleArray d() {
            return this.b == 0 ? ImmutableDoubleArray.a : new ImmutableDoubleArray(this.a, 0, this.b);
        }
    }

    private ImmutableDoubleArray(double[] dArr) {
        this(dArr, 0, dArr.length);
    }

    private ImmutableDoubleArray(double[] dArr, int i, int i2) {
        this.b = dArr;
        this.c = i;
        this.f3946d = i2;
    }

    public static b builder() {
        return new b(10);
    }

    public static b builder(int i) {
        Preconditions.checkArgument(i >= 0, "Invalid initialCapacity: %s", i);
        return new b(i);
    }

    public static ImmutableDoubleArray copyOf(Iterable<Double> iterable) {
        return iterable instanceof Collection ? copyOf((Collection<Double>) iterable) : builder().b(iterable).d();
    }

    public static ImmutableDoubleArray copyOf(Collection<Double> collection) {
        return collection.isEmpty() ? a : new ImmutableDoubleArray(Doubles.toArray(collection));
    }

    public static ImmutableDoubleArray copyOf(double[] dArr) {
        return dArr.length == 0 ? a : new ImmutableDoubleArray(Arrays.copyOf(dArr, dArr.length));
    }

    private static boolean d(double d2, double d3) {
        return Double.doubleToLongBits(d2) == Double.doubleToLongBits(d3);
    }

    private boolean g() {
        return this.c > 0 || this.f3946d < this.b.length;
    }

    public static ImmutableDoubleArray of() {
        return a;
    }

    public static ImmutableDoubleArray of(double d2) {
        return new ImmutableDoubleArray(new double[]{d2});
    }

    public static ImmutableDoubleArray of(double d2, double d3) {
        return new ImmutableDoubleArray(new double[]{d2, d3});
    }

    public static ImmutableDoubleArray of(double d2, double d3, double d4) {
        return new ImmutableDoubleArray(new double[]{d2, d3, d4});
    }

    public static ImmutableDoubleArray of(double d2, double d3, double d4, double d5) {
        return new ImmutableDoubleArray(new double[]{d2, d3, d4, d5});
    }

    public static ImmutableDoubleArray of(double d2, double d3, double d4, double d5, double d6) {
        return new ImmutableDoubleArray(new double[]{d2, d3, d4, d5, d6});
    }

    public static ImmutableDoubleArray of(double d2, double d3, double d4, double d5, double d6, double d7) {
        return new ImmutableDoubleArray(new double[]{d2, d3, d4, d5, d6, d7});
    }

    public static ImmutableDoubleArray of(double d2, double... dArr) {
        Preconditions.checkArgument(dArr.length <= 2147483646, "the total number of elements must fit in an int");
        double[] dArr2 = new double[dArr.length + 1];
        dArr2[0] = d2;
        System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
        return new ImmutableDoubleArray(dArr2);
    }

    public double e(int i) {
        Preconditions.checkElementIndex(i, h());
        return this.b[this.c + i];
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableDoubleArray)) {
            return false;
        }
        ImmutableDoubleArray immutableDoubleArray = (ImmutableDoubleArray) obj;
        if (h() != immutableDoubleArray.h()) {
            return false;
        }
        for (int i = 0; i < h(); i++) {
            if (!d(e(i), immutableDoubleArray.e(i))) {
                return false;
            }
        }
        return true;
    }

    public boolean f() {
        return this.f3946d == this.c;
    }

    public int h() {
        return this.f3946d - this.c;
    }

    public int hashCode() {
        int iHashCode = 1;
        for (int i = this.c; i < this.f3946d; i++) {
            iHashCode = (iHashCode * 31) + Doubles.hashCode(this.b[i]);
        }
        return iHashCode;
    }

    public double[] i() {
        return Arrays.copyOfRange(this.b, this.c, this.f3946d);
    }

    public ImmutableDoubleArray j() {
        return g() ? new ImmutableDoubleArray(i()) : this;
    }

    Object readResolve() {
        return f() ? a : this;
    }

    public String toString() {
        if (f()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(h() * 5);
        sb.append('[');
        sb.append(this.b[this.c]);
        int i = this.c;
        while (true) {
            i++;
            if (i >= this.f3946d) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(this.b[i]);
        }
    }

    Object writeReplace() {
        return j();
    }
}
