package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.BloomFilter;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
abstract class BloomFilterStrategies implements BloomFilter.c {
    public static final BloomFilterStrategies a = new a("MURMUR128_MITZ_32", 0);
    public static final BloomFilterStrategies b = new BloomFilterStrategies("MURMUR128_MITZ_64", 1) { // from class: com.google.common.hash.BloomFilterStrategies.b
        {
            a aVar = null;
        }

        private long f(byte[] bArr) {
            return Longs.fromBytes(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long g(byte[] bArr) {
            return Longs.fromBytes(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean l(T t, k<? super T> kVar, int i, LockFreeBitArray lockFreeBitArray) {
            long jA = lockFreeBitArray.a();
            byte[] bArrJ = Hashing.murmur3_128().f(t, kVar).j();
            long jF = f(bArrJ);
            long jG = g(bArrJ);
            for (int i2 = 0; i2 < i; i2++) {
                if (!lockFreeBitArray.b((Long.MAX_VALUE & jF) % jA)) {
                    return false;
                }
                jF += jG;
            }
            return true;
        }
    };
    private static final /* synthetic */ BloomFilterStrategies[] c = e();

    static final class LockFreeBitArray {
        final AtomicLongArray a;
        private final p b;

        LockFreeBitArray(long j) {
            Preconditions.checkArgument(j > 0, "data length is zero!");
            this.a = new AtomicLongArray(Ints.checkedCast(LongMath.divide(j, 64L, RoundingMode.CEILING)));
            this.b = LongAddables.create();
        }

        LockFreeBitArray(long[] jArr) {
            Preconditions.checkArgument(jArr.length > 0, "data length is zero!");
            this.a = new AtomicLongArray(jArr);
            this.b = LongAddables.create();
            long jBitCount = 0;
            for (long j : jArr) {
                jBitCount += (long) Long.bitCount(j);
            }
            this.b.a(jBitCount);
        }

        public static long[] toPlainArray(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = atomicLongArray.get(i);
            }
            return jArr;
        }

        long a() {
            return ((long) this.a.length()) * 64;
        }

        boolean b(long j) {
            return ((1 << ((int) j)) & this.a.get((int) (j >>> 6))) != 0;
        }

        void c(int i, long j) {
            long j2;
            long j3;
            boolean z;
            while (true) {
                j2 = this.a.get(i);
                j3 = j2 | j;
                if (j2 == j3) {
                    z = false;
                    break;
                } else if (this.a.compareAndSet(i, j2, j3)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                this.b.a(Long.bitCount(j3) - Long.bitCount(j2));
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof LockFreeBitArray) {
                return Arrays.equals(toPlainArray(this.a), toPlainArray(((LockFreeBitArray) obj).a));
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(toPlainArray(this.a));
        }
    }

    enum a extends BloomFilterStrategies {
        a(String str, int i) {
            super(str, i, null);
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean l(T t, k<? super T> kVar, int i, LockFreeBitArray lockFreeBitArray) {
            long jA = lockFreeBitArray.a();
            long jE = Hashing.murmur3_128().f(t, kVar).e();
            int i2 = (int) jE;
            int i3 = (int) (jE >>> 32);
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 = ~i5;
                }
                if (!lockFreeBitArray.b(((long) i5) % jA)) {
                    return false;
                }
            }
            return true;
        }
    }

    private BloomFilterStrategies(String str, int i) {
    }

    /* synthetic */ BloomFilterStrategies(String str, int i, a aVar) {
        this(str, i);
    }

    private static /* synthetic */ BloomFilterStrategies[] e() {
        return new BloomFilterStrategies[]{a, b};
    }

    public static BloomFilterStrategies valueOf(String str) {
        return (BloomFilterStrategies) Enum.valueOf(BloomFilterStrategies.class, str);
    }

    public static BloomFilterStrategies[] values() {
        return (BloomFilterStrategies[]) c.clone();
    }
}
