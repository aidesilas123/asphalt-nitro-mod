package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmutableLongArray implements Serializable {
    private static final ImmutableLongArray a = new ImmutableLongArray(new long[0]);
    private final long[] b;
    private final transient int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3948d;

    public static final class b {
        private long[] a;
        private int b = 0;

        b(int i) {
            this.a = new long[i];
        }

        private void e(int i) {
            int i2 = this.b + i;
            long[] jArr = this.a;
            if (i2 > jArr.length) {
                this.a = Arrays.copyOf(jArr, f(jArr.length, i2));
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

        public b a(long j) {
            e(1);
            long[] jArr = this.a;
            int i = this.b;
            jArr[i] = j;
            this.b = i + 1;
            return this;
        }

        public b b(Iterable<Long> iterable) {
            if (iterable instanceof Collection) {
                return c((Collection) iterable);
            }
            Iterator<Long> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next().longValue());
            }
            return this;
        }

        public b c(Collection<Long> collection) {
            e(collection.size());
            for (Long l : collection) {
                long[] jArr = this.a;
                int i = this.b;
                this.b = i + 1;
                jArr[i] = l.longValue();
            }
            return this;
        }

        public ImmutableLongArray d() {
            return this.b == 0 ? ImmutableLongArray.a : new ImmutableLongArray(this.a, 0, this.b);
        }
    }

    private ImmutableLongArray(long[] jArr) {
        this(jArr, 0, jArr.length);
    }

    private ImmutableLongArray(long[] jArr, int i, int i2) {
        this.b = jArr;
        this.c = i;
        this.f3948d = i2;
    }

    public static b builder() {
        return new b(10);
    }

    public static b builder(int i) {
        Preconditions.checkArgument(i >= 0, "Invalid initialCapacity: %s", i);
        return new b(i);
    }

    public static ImmutableLongArray copyOf(Iterable<Long> iterable) {
        return iterable instanceof Collection ? copyOf((Collection<Long>) iterable) : builder().b(iterable).d();
    }

    public static ImmutableLongArray copyOf(Collection<Long> collection) {
        return collection.isEmpty() ? a : new ImmutableLongArray(Longs.toArray(collection));
    }

    public static ImmutableLongArray copyOf(long[] jArr) {
        return jArr.length == 0 ? a : new ImmutableLongArray(Arrays.copyOf(jArr, jArr.length));
    }

    private boolean f() {
        return this.c > 0 || this.f3948d < this.b.length;
    }

    public static ImmutableLongArray of() {
        return a;
    }

    public static ImmutableLongArray of(long j) {
        return new ImmutableLongArray(new long[]{j});
    }

    public static ImmutableLongArray of(long j, long j2) {
        return new ImmutableLongArray(new long[]{j, j2});
    }

    public static ImmutableLongArray of(long j, long j2, long j3) {
        return new ImmutableLongArray(new long[]{j, j2, j3});
    }

    public static ImmutableLongArray of(long j, long j2, long j3, long j4) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4});
    }

    public static ImmutableLongArray of(long j, long j2, long j3, long j4, long j5) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4, j5});
    }

    public static ImmutableLongArray of(long j, long j2, long j3, long j4, long j5, long j6) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4, j5, j6});
    }

    public static ImmutableLongArray of(long j, long... jArr) {
        Preconditions.checkArgument(jArr.length <= 2147483646, "the total number of elements must fit in an int");
        long[] jArr2 = new long[jArr.length + 1];
        jArr2[0] = j;
        System.arraycopy(jArr, 0, jArr2, 1, jArr.length);
        return new ImmutableLongArray(jArr2);
    }

    public long d(int i) {
        Preconditions.checkElementIndex(i, g());
        return this.b[this.c + i];
    }

    public boolean e() {
        return this.f3948d == this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableLongArray)) {
            return false;
        }
        ImmutableLongArray immutableLongArray = (ImmutableLongArray) obj;
        if (g() != immutableLongArray.g()) {
            return false;
        }
        for (int i = 0; i < g(); i++) {
            if (d(i) != immutableLongArray.d(i)) {
                return false;
            }
        }
        return true;
    }

    public int g() {
        return this.f3948d - this.c;
    }

    public long[] h() {
        return Arrays.copyOfRange(this.b, this.c, this.f3948d);
    }

    public int hashCode() {
        int iHashCode = 1;
        for (int i = this.c; i < this.f3948d; i++) {
            iHashCode = (iHashCode * 31) + Longs.hashCode(this.b[i]);
        }
        return iHashCode;
    }

    public ImmutableLongArray i() {
        return f() ? new ImmutableLongArray(h()) : this;
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
            if (i >= this.f3948d) {
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
