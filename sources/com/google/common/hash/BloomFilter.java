package com.google.common.hash;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.hash.BloomFilterStrategies;
import com.google.common.math.LongMath;
import com.google.common.primitives.UnsignedBytes;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public final class BloomFilter<T> implements com.google.common.base.k<T>, Serializable {
    private final BloomFilterStrategies.LockFreeBitArray a;
    private final int b;
    private final k<? super T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f3878d;

    private static class b<T> implements Serializable {
        private static final long serialVersionUID = 1;
        final long[] a;
        final int b;
        final k<? super T> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final c f3879d;

        b(BloomFilter<T> bloomFilter) {
            this.a = BloomFilterStrategies.LockFreeBitArray.toPlainArray(((BloomFilter) bloomFilter).a.a);
            this.b = ((BloomFilter) bloomFilter).b;
            this.c = ((BloomFilter) bloomFilter).c;
            this.f3879d = ((BloomFilter) bloomFilter).f3878d;
        }

        Object readResolve() {
            return new BloomFilter(new BloomFilterStrategies.LockFreeBitArray(this.a), this.b, this.c, this.f3879d);
        }
    }

    interface c extends Serializable {
        <T> boolean l(T t, k<? super T> kVar, int i, BloomFilterStrategies.LockFreeBitArray lockFreeBitArray);
    }

    private BloomFilter(BloomFilterStrategies.LockFreeBitArray lockFreeBitArray, int i, k<? super T> kVar, c cVar) {
        Preconditions.checkArgument(i > 0, "numHashFunctions (%s) must be > 0", i);
        Preconditions.checkArgument(i <= 255, "numHashFunctions (%s) must be <= 255", i);
        this.a = (BloomFilterStrategies.LockFreeBitArray) Preconditions.checkNotNull(lockFreeBitArray);
        this.b = i;
        this.c = (k) Preconditions.checkNotNull(kVar);
        this.f3878d = (c) Preconditions.checkNotNull(cVar);
    }

    public static <T> BloomFilter<T> create(k<? super T> kVar, int i) {
        return create(kVar, i);
    }

    public static <T> BloomFilter<T> create(k<? super T> kVar, int i, double d2) {
        return create(kVar, i, d2);
    }

    public static <T> BloomFilter<T> create(k<? super T> kVar, long j) {
        return create(kVar, j, 0.03d);
    }

    public static <T> BloomFilter<T> create(k<? super T> kVar, long j, double d2) {
        return e(kVar, j, d2, BloomFilterStrategies.b);
    }

    static <T> BloomFilter<T> e(k<? super T> kVar, long j, double d2, c cVar) {
        Preconditions.checkNotNull(kVar);
        Preconditions.checkArgument(j >= 0, "Expected insertions (%s) must be >= 0", j);
        Preconditions.checkArgument(d2 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d2));
        Preconditions.checkArgument(d2 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d2));
        Preconditions.checkNotNull(cVar);
        if (j == 0) {
            j = 1;
        }
        long jG = g(j, d2);
        try {
            return new BloomFilter<>(new BloomFilterStrategies.LockFreeBitArray(jG), h(j, jG), kVar, cVar);
        } catch (IllegalArgumentException e2) {
            StringBuilder sb = new StringBuilder(57);
            sb.append("Could not create BloomFilter of ");
            sb.append(jG);
            sb.append(" bits");
            throw new IllegalArgumentException(sb.toString(), e2);
        }
    }

    static long g(long j, double d2) {
        if (d2 == 0.0d) {
            d2 = Double.MIN_VALUE;
        }
        return (long) (((-j) * Math.log(d2)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    static int h(long j, long j2) {
        return Math.max(1, (int) Math.round((j2 / j) * Math.log(2.0d)));
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, k<? super T> kVar) throws IOException {
        int i;
        int i2;
        Preconditions.checkNotNull(inputStream, "InputStream");
        Preconditions.checkNotNull(kVar, "Funnel");
        byte b2 = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte b3 = dataInputStream.readByte();
            try {
                i2 = UnsignedBytes.toInt(dataInputStream.readByte());
                try {
                    int i3 = dataInputStream.readInt();
                    try {
                        BloomFilterStrategies bloomFilterStrategies = BloomFilterStrategies.values()[b3];
                        BloomFilterStrategies.LockFreeBitArray lockFreeBitArray = new BloomFilterStrategies.LockFreeBitArray(LongMath.checkedMultiply(i3, 64L));
                        for (int i4 = 0; i4 < i3; i4++) {
                            lockFreeBitArray.c(i4, dataInputStream.readLong());
                        }
                        return new BloomFilter<>(lockFreeBitArray, i2, kVar, bloomFilterStrategies);
                    } catch (RuntimeException e2) {
                        e = e2;
                        b2 = b3;
                        i = i3;
                        StringBuilder sb = new StringBuilder(134);
                        sb.append("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ");
                        sb.append((int) b2);
                        sb.append(" numHashFunctions: ");
                        sb.append(i2);
                        sb.append(" dataLength: ");
                        sb.append(i);
                        throw new IOException(sb.toString(), e);
                    }
                } catch (RuntimeException e3) {
                    e = e3;
                    b2 = b3;
                    i = -1;
                    StringBuilder sb2 = new StringBuilder(134);
                    sb2.append("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ");
                    sb2.append((int) b2);
                    sb2.append(" numHashFunctions: ");
                    sb2.append(i2);
                    sb2.append(" dataLength: ");
                    sb2.append(i);
                    throw new IOException(sb2.toString(), e);
                }
            } catch (RuntimeException e4) {
                e = e4;
                i2 = -1;
            }
        } catch (RuntimeException e5) {
            e = e5;
            i = -1;
            i2 = -1;
        }
    }

    private Object writeReplace() {
        return new b(this);
    }

    @Override // com.google.common.base.k
    @Deprecated
    public boolean apply(T t) {
        return f(t);
    }

    @Override // com.google.common.base.k
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        return this.b == bloomFilter.b && this.c.equals(bloomFilter.c) && this.a.equals(bloomFilter.a) && this.f3878d.equals(bloomFilter.f3878d);
    }

    public boolean f(T t) {
        return this.f3878d.l(t, this.c, this.b, this.a);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), this.c, this.f3878d, this.a);
    }
}
