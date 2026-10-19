package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmutableIntArray implements Serializable {
    private static final ImmutableIntArray a = new ImmutableIntArray(new int[0]);
    private final int[] b;
    private final transient int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3947d;

    public static final class b {
        private int[] a;
        private int b = 0;

        b(int i) {
            this.a = new int[i];
        }

        private void e(int i) {
            int i2 = this.b + i;
            int[] iArr = this.a;
            if (i2 > iArr.length) {
                this.a = Arrays.copyOf(iArr, f(iArr.length, i2));
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

        public b a(int i) {
            e(1);
            int[] iArr = this.a;
            int i2 = this.b;
            iArr[i2] = i;
            this.b = i2 + 1;
            return this;
        }

        public b b(Iterable<Integer> iterable) {
            if (iterable instanceof Collection) {
                return c((Collection) iterable);
            }
            Iterator<Integer> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next().intValue());
            }
            return this;
        }

        public b c(Collection<Integer> collection) {
            e(collection.size());
            for (Integer num : collection) {
                int[] iArr = this.a;
                int i = this.b;
                this.b = i + 1;
                iArr[i] = num.intValue();
            }
            return this;
        }

        public ImmutableIntArray d() {
            return this.b == 0 ? ImmutableIntArray.a : new ImmutableIntArray(this.a, 0, this.b);
        }
    }

    private ImmutableIntArray(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    private ImmutableIntArray(int[] iArr, int i, int i2) {
        this.b = iArr;
        this.c = i;
        this.f3947d = i2;
    }

    public static b builder() {
        return new b(10);
    }

    public static b builder(int i) {
        Preconditions.checkArgument(i >= 0, "Invalid initialCapacity: %s", i);
        return new b(i);
    }

    public static ImmutableIntArray copyOf(Iterable<Integer> iterable) {
        return iterable instanceof Collection ? copyOf((Collection<Integer>) iterable) : builder().b(iterable).d();
    }

    public static ImmutableIntArray copyOf(Collection<Integer> collection) {
        return collection.isEmpty() ? a : new ImmutableIntArray(Ints.toArray(collection));
    }

    public static ImmutableIntArray copyOf(int[] iArr) {
        return iArr.length == 0 ? a : new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
    }

    private boolean f() {
        return this.c > 0 || this.f3947d < this.b.length;
    }

    public static ImmutableIntArray of() {
        return a;
    }

    public static ImmutableIntArray of(int i) {
        return new ImmutableIntArray(new int[]{i});
    }

    public static ImmutableIntArray of(int i, int i2) {
        return new ImmutableIntArray(new int[]{i, i2});
    }

    public static ImmutableIntArray of(int i, int i2, int i3) {
        return new ImmutableIntArray(new int[]{i, i2, i3});
    }

    public static ImmutableIntArray of(int i, int i2, int i3, int i4) {
        return new ImmutableIntArray(new int[]{i, i2, i3, i4});
    }

    public static ImmutableIntArray of(int i, int i2, int i3, int i4, int i5) {
        return new ImmutableIntArray(new int[]{i, i2, i3, i4, i5});
    }

    public static ImmutableIntArray of(int i, int i2, int i3, int i4, int i5, int i6) {
        return new ImmutableIntArray(new int[]{i, i2, i3, i4, i5, i6});
    }

    public static ImmutableIntArray of(int i, int... iArr) {
        Preconditions.checkArgument(iArr.length <= 2147483646, "the total number of elements must fit in an int");
        int[] iArr2 = new int[iArr.length + 1];
        iArr2[0] = i;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new ImmutableIntArray(iArr2);
    }

    public int d(int i) {
        Preconditions.checkElementIndex(i, g());
        return this.b[this.c + i];
    }

    public boolean e() {
        return this.f3947d == this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableIntArray)) {
            return false;
        }
        ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
        if (g() != immutableIntArray.g()) {
            return false;
        }
        for (int i = 0; i < g(); i++) {
            if (d(i) != immutableIntArray.d(i)) {
                return false;
            }
        }
        return true;
    }

    public int g() {
        return this.f3947d - this.c;
    }

    public int[] h() {
        return Arrays.copyOfRange(this.b, this.c, this.f3947d);
    }

    public int hashCode() {
        int iHashCode = 1;
        for (int i = this.c; i < this.f3947d; i++) {
            iHashCode = (iHashCode * 31) + Ints.hashCode(this.b[i]);
        }
        return iHashCode;
    }

    public ImmutableIntArray i() {
        return f() ? new ImmutableIntArray(h()) : this;
    }

    Object readResolve() {
        return e() ? a : this;
    }

    public String toString() {
        if (e()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(g() * 5);
        sb.append('[');
        sb.append(this.b[this.c]);
        int i = this.c;
        while (true) {
            i++;
            if (i >= this.f3947d) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(this.b[i]);
        }
    }

    Object writeReplace() {
        return i();
    }
}
