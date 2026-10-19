package kotlin.random;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: Random.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\b'\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H&J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J$\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016¨\u0006\u0018"}, d2 = {"Lkotlin/random/Random;", "", "()V", "nextBits", "", "bitCount", "nextBoolean", "", "nextBytes", "", "array", "fromIndex", "toIndex", "size", "nextDouble", "", "until", TypedValues.TransitionType.S_FROM, "nextFloat", "", "nextInt", "nextLong", "", "Default", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
public abstract class Random {
    public static final a a = new a(null);
    private static final Random b = PlatformImplementationsKt.a.b();

    /* JADX INFO: compiled from: Random.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u001cB\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0019H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lkotlin/random/Random$Default;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "defaultRandom", "nextBits", "", "bitCount", "nextBoolean", "", "nextBytes", "", "array", "fromIndex", "toIndex", "size", "nextDouble", "", "until", TypedValues.TransitionType.S_FROM, "nextFloat", "", "nextInt", "nextLong", "", "writeReplace", "", "Serialized", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
    public static final class a extends Random implements Serializable {

        /* JADX INFO: renamed from: kotlin.random.Random$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Random.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lkotlin/random/Random$Default$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "serialVersionUID", "", "readResolve", "", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
        private static final class C0501a implements Serializable {
            public static final C0501a a = new C0501a();
            private static final long serialVersionUID = 0;

            private C0501a() {
            }

            private final Object readResolve() {
                return Random.a;
            }
        }

        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        private final Object writeReplace() {
            return C0501a.a;
        }

        @Override // kotlin.random.Random
        public int a(int i) {
            return Random.b.a(i);
        }

        @Override // kotlin.random.Random
        public boolean c() {
            return Random.b.c();
        }

        @Override // kotlin.random.Random
        public byte[] d(int i) {
            return Random.b.d(i);
        }

        @Override // kotlin.random.Random
        public byte[] e(byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.b.e(array);
        }

        @Override // kotlin.random.Random
        public byte[] f(byte[] array, int i, int i2) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.b.f(array, i, i2);
        }

        @Override // kotlin.random.Random
        public double g() {
            return Random.b.g();
        }

        @Override // kotlin.random.Random
        public float h() {
            return Random.b.h();
        }

        @Override // kotlin.random.Random
        public int i() {
            return Random.b.i();
        }

        @Override // kotlin.random.Random
        public int j(int i) {
            return Random.b.j(i);
        }

        @Override // kotlin.random.Random
        public int k(int i, int i2) {
            return Random.b.k(i, i2);
        }

        @Override // kotlin.random.Random
        public long m() {
            return Random.b.m();
        }

        @Override // kotlin.random.Random
        public long n(long j, long j2) {
            return Random.b.n(j, j2);
        }
    }

    public static /* synthetic */ byte[] nextBytes$default(Random random, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: nextBytes");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return random.f(bArr, i, i2);
    }

    public abstract int a(int i);

    public boolean c() {
        return a(1) != 0;
    }

    public byte[] d(int i) {
        return e(new byte[i]);
    }

    public byte[] e(byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return f(array, 0, array.length);
    }

    public byte[] f(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (!(new IntRange(0, array.length).l(i) && new IntRange(0, array.length).l(i2))) {
            throw new IllegalArgumentException(("fromIndex (" + i + ") or toIndex (" + i2 + ") are out of range: 0.." + array.length + '.').toString());
        }
        if (!(i <= i2)) {
            throw new IllegalArgumentException(("fromIndex (" + i + ") must be not greater than toIndex (" + i2 + ").").toString());
        }
        int i3 = (i2 - i) / 4;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i();
            array[i] = (byte) i5;
            array[i + 1] = (byte) (i5 >>> 8);
            array[i + 2] = (byte) (i5 >>> 16);
            array[i + 3] = (byte) (i5 >>> 24);
            i += 4;
        }
        int i6 = i2 - i;
        int iA = a(i6 * 8);
        for (int i7 = 0; i7 < i6; i7++) {
            array[i + i7] = (byte) (iA >>> (i7 * 8));
        }
        return array;
    }

    public double g() {
        return PlatformRandomKt.doubleFromParts(a(26), a(27));
    }

    public float h() {
        return a(24) / 1.6777216E7f;
    }

    public int i() {
        return a(32);
    }

    public int j(int i) {
        return k(0, i);
    }

    public int k(int i, int i2) {
        int i3;
        int i4;
        int iA;
        int i5;
        boolean z;
        RandomKt.checkRangeBounds(i, i2);
        int i6 = i2 - i;
        if (i6 > 0 || i6 == Integer.MIN_VALUE) {
            if (((-i6) & i6) == i6) {
                iA = a(RandomKt.fastLog2(i6));
            } else {
                do {
                    i3 = i() >>> 1;
                    i4 = i3 % i6;
                } while ((i3 - i4) + (i6 - 1) < 0);
                iA = i4;
            }
            return i + iA;
        }
        do {
            i5 = i();
            z = false;
            if (i <= i5 && i5 < i2) {
                z = true;
            }
        } while (!z);
        return i5;
    }

    public long m() {
        return (((long) i()) << 32) + ((long) i());
    }

    public long n(long j, long j2) {
        long jM;
        boolean z;
        long jM2;
        long j3;
        long jA;
        int i;
        RandomKt.checkRangeBounds(j, j2);
        long j4 = j2 - j;
        if (j4 <= 0) {
            do {
                jM = m();
                z = false;
                if (j <= jM && jM < j2) {
                    z = true;
                }
            } while (!z);
            return jM;
        }
        if (((-j4) & j4) == j4) {
            int i2 = (int) j4;
            int i3 = (int) (j4 >>> 32);
            if (i2 != 0) {
                i = a(RandomKt.fastLog2(i2));
            } else if (i3 == 1) {
                i = i();
            } else {
                jA = (((long) a(RandomKt.fastLog2(i3))) << 32) + (((long) i()) & 4294967295L);
            }
            jA = ((long) i) & 4294967295L;
        } else {
            do {
                jM2 = m() >>> 1;
                j3 = jM2 % j4;
            } while ((jM2 - j3) + (j4 - 1) < 0);
            jA = j3;
        }
        return j + jA;
    }
}
