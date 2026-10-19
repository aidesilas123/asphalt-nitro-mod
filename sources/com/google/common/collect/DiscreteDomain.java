package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DiscreteDomain<C extends Comparable> {
    final boolean a;

    private static final class b extends DiscreteDomain<BigInteger> implements Serializable {
        private static final b b = new b();
        private static final BigInteger c = BigInteger.valueOf(Long.MIN_VALUE);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final BigInteger f3562d = BigInteger.valueOf(Long.MAX_VALUE);
        private static final long serialVersionUID = 0;

        b() {
            super(true);
        }

        private Object readResolve() {
            return b;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public long a(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(c).min(f3562d).longValue();
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public BigInteger e(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public BigInteger f(BigInteger bigInteger, long j) {
            z.c(j, "distance");
            return bigInteger.add(BigInteger.valueOf(j));
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public BigInteger g(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }
    }

    private static final class c extends DiscreteDomain<Integer> implements Serializable {
        private static final c b = new c();
        private static final long serialVersionUID = 0;

        c() {
            super(true);
        }

        private Object readResolve() {
            return b;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public long a(Integer num, Integer num2) {
            return ((long) num2.intValue()) - ((long) num.intValue());
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Integer c() {
            return Integer.MAX_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public Integer d() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public Integer e(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue + 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public Integer f(Integer num, long j) {
            z.c(j, "distance");
            return Integer.valueOf(Ints.checkedCast(num.longValue() + j));
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public Integer g(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    private static final class d extends DiscreteDomain<Long> implements Serializable {
        private static final d b = new d();
        private static final long serialVersionUID = 0;

        d() {
            super(true);
        }

        private Object readResolve() {
            return b;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public long a(Long l, Long l2) {
            long jLongValue = l2.longValue() - l.longValue();
            if (l2.longValue() > l.longValue() && jLongValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l2.longValue() >= l.longValue() || jLongValue <= 0) {
                return jLongValue;
            }
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Long c() {
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public Long d() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public Long e(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue + 1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public Long f(Long l, long j) {
            z.c(j, "distance");
            long jLongValue = l.longValue() + j;
            if (jLongValue < 0) {
                Preconditions.checkArgument(l.longValue() < 0, "overflow");
            }
            return Long.valueOf(jLongValue);
        }

        @Override // com.google.common.collect.DiscreteDomain
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public Long g(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue - 1);
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }
    }

    protected DiscreteDomain() {
        this(false);
    }

    private DiscreteDomain(boolean z) {
        this.a = z;
    }

    public static DiscreteDomain<BigInteger> bigIntegers() {
        return b.b;
    }

    public static DiscreteDomain<Integer> integers() {
        return c.b;
    }

    public static DiscreteDomain<Long> longs() {
        return d.b;
    }

    public abstract long a(C c2, C c3);

    public C c() {
        throw new NoSuchElementException();
    }

    public C d() {
        throw new NoSuchElementException();
    }

    public abstract C e(C c2);

    C f(C c2, long j) {
        z.c(j, "distance");
        C c3 = c2;
        for (long j2 = 0; j2 < j; j2++) {
            c3 = (C) e(c3);
            if (c3 == null) {
                String strValueOf = String.valueOf(c2);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 51);
                sb.append("overflowed computing offset(");
                sb.append(strValueOf);
                sb.append(", ");
                sb.append(j);
                sb.append(")");
                throw new IllegalArgumentException(sb.toString());
            }
        }
        return c3;
    }

    public abstract C g(C c2);
}
