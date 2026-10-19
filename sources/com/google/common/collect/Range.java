package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
public final class Range<C extends Comparable> extends j2 implements com.google.common.base.k<C>, Serializable {
    private static final Range<Comparable> a = new Range<>(e0.g(), e0.e());
    private static final long serialVersionUID = 0;
    final e0<C> b;
    final e0<C> c;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[BoundType.values().length];
            a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static class b implements com.google.common.base.f<Range, e0> {
        static final b a = new b();

        b() {
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e0 apply(Range range) {
            return range.b;
        }
    }

    private static class c extends Ordering<Range<?>> implements Serializable {
        static final Ordering<Range<?>> a = new c();
        private static final long serialVersionUID = 0;

        private c() {
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public int compare(Range<?> range, Range<?> range2) {
            return ComparisonChain.start().d(range.b, range2.b).d(range.c, range2.c).e();
        }
    }

    private Range(e0<C> e0Var, e0<C> e0Var2) {
        this.b = (e0) Preconditions.checkNotNull(e0Var);
        this.c = (e0) Preconditions.checkNotNull(e0Var2);
        if (e0Var.compareTo(e0Var2) > 0 || e0Var == e0.e() || e0Var2 == e0.g()) {
            String strValueOf = String.valueOf(r(e0Var, e0Var2));
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid range: ".concat(strValueOf) : new String("Invalid range: "));
        }
    }

    public static <C extends Comparable<?>> Range<C> all() {
        return (Range<C>) a;
    }

    public static <C extends Comparable<?>> Range<C> atLeast(C c2) {
        return d(e0.h(c2), e0.e());
    }

    public static <C extends Comparable<?>> Range<C> atMost(C c2) {
        return d(e0.g(), e0.f(c2));
    }

    static int b(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static <C extends Comparable<?>> Range<C> closed(C c2, C c3) {
        return d(e0.h(c2), e0.f(c3));
    }

    public static <C extends Comparable<?>> Range<C> closedOpen(C c2, C c3) {
        return d(e0.h(c2), e0.h(c3));
    }

    static <C extends Comparable<?>> Range<C> d(e0<C> e0Var, e0<C> e0Var2) {
        return new Range<>(e0Var, e0Var2);
    }

    public static <C extends Comparable<?>> Range<C> downTo(C c2, BoundType boundType) {
        int i = a.a[boundType.ordinal()];
        if (i == 1) {
            return greaterThan(c2);
        }
        if (i == 2) {
            return atLeast(c2);
        }
        throw new AssertionError();
    }

    public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> iterable) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (Ordering.natural().equals(comparator) || comparator == null) {
                return closed((Comparable) sortedSet.first(), (Comparable) sortedSet.last());
            }
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) Preconditions.checkNotNull(it.next());
        Comparable comparable2 = comparable;
        while (it.hasNext()) {
            Comparable comparable3 = (Comparable) Preconditions.checkNotNull(it.next());
            comparable = (Comparable) Ordering.natural().c(comparable, comparable3);
            comparable2 = (Comparable) Ordering.natural().b(comparable2, comparable3);
        }
        return closed(comparable, comparable2);
    }

    public static <C extends Comparable<?>> Range<C> greaterThan(C c2) {
        return d(e0.f(c2), e0.e());
    }

    static <C extends Comparable<?>> com.google.common.base.f<Range<C>, e0<C>> k() {
        return b.a;
    }

    public static <C extends Comparable<?>> Range<C> lessThan(C c2) {
        return d(e0.g(), e0.h(c2));
    }

    public static <C extends Comparable<?>> Range<C> open(C c2, C c3) {
        return d(e0.f(c2), e0.h(c3));
    }

    public static <C extends Comparable<?>> Range<C> openClosed(C c2, C c3) {
        return d(e0.f(c2), e0.f(c3));
    }

    static <C extends Comparable<?>> Ordering<Range<C>> p() {
        return (Ordering<Range<C>>) c.a;
    }

    private static String r(e0<?> e0Var, e0<?> e0Var2) {
        StringBuilder sb = new StringBuilder(16);
        e0Var.j(sb);
        sb.append("..");
        e0Var2.k(sb);
        return sb.toString();
    }

    public static <C extends Comparable<?>> Range<C> range(C c2, BoundType boundType, C c3, BoundType boundType2) {
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        BoundType boundType3 = BoundType.OPEN;
        return d(boundType == boundType3 ? e0.f(c2) : e0.h(c2), boundType2 == boundType3 ? e0.h(c3) : e0.f(c3));
    }

    public static <C extends Comparable<?>> Range<C> singleton(C c2) {
        return closed(c2, c2);
    }

    public static <C extends Comparable<?>> Range<C> upTo(C c2, BoundType boundType) {
        int i = a.a[boundType.ordinal()];
        if (i == 1) {
            return lessThan(c2);
        }
        if (i == 2) {
            return atMost(c2);
        }
        throw new AssertionError();
    }

    @Override // com.google.common.base.k
    @Deprecated
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean apply(C c2) {
        return c(c2);
    }

    public boolean c(C c2) {
        Preconditions.checkNotNull(c2);
        return this.b.p(c2) && !this.c.p(c2);
    }

    public boolean e(Range<C> range) {
        return this.b.compareTo(range.b) <= 0 && this.c.compareTo(range.c) >= 0;
    }

    @Override // com.google.common.base.k
    public boolean equals(Object obj) {
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.b.equals(range.b) && this.c.equals(range.c);
    }

    public boolean f() {
        return this.b != e0.g();
    }

    public boolean g() {
        return this.c != e0.e();
    }

    public Range<C> h(Range<C> range) {
        int iCompareTo = this.b.compareTo(range.b);
        int iCompareTo2 = this.c.compareTo(range.c);
        if (iCompareTo >= 0 && iCompareTo2 <= 0) {
            return this;
        }
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return range;
        }
        e0<C> e0Var = iCompareTo >= 0 ? this.b : range.b;
        e0<C> e0Var2 = iCompareTo2 <= 0 ? this.c : range.c;
        Preconditions.checkArgument(e0Var.compareTo(e0Var2) <= 0, "intersection is undefined for disconnected ranges %s and %s", this, range);
        return d(e0Var, e0Var2);
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.c.hashCode();
    }

    public boolean i(Range<C> range) {
        return this.b.compareTo(range.c) <= 0 && range.b.compareTo(this.c) <= 0;
    }

    public boolean j() {
        return this.b.equals(this.c);
    }

    public BoundType m() {
        return this.b.s();
    }

    public C n() {
        return (C) this.b.m();
    }

    public Range<C> q(Range<C> range) {
        int iCompareTo = this.b.compareTo(range.b);
        int iCompareTo2 = this.c.compareTo(range.c);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return this;
        }
        if (iCompareTo < 0 || iCompareTo2 > 0) {
            return d(iCompareTo <= 0 ? this.b : range.b, iCompareTo2 >= 0 ? this.c : range.c);
        }
        return range;
    }

    Object readResolve() {
        return equals(a) ? all() : this;
    }

    public BoundType s() {
        return this.c.t();
    }

    public C t() {
        return (C) this.c.m();
    }

    public String toString() {
        return r(this.b, this.c);
    }
}
