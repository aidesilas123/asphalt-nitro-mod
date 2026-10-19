package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSortedSet;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final DiscreteDomain<C> f3561e;

    ContiguousSet(DiscreteDomain<C> discreteDomain) {
        super(Ordering.natural());
        this.f3561e = discreteDomain;
    }

    @Deprecated
    public static <E> ImmutableSortedSet.a<E> builder() {
        throw new UnsupportedOperationException();
    }

    public static ContiguousSet<Integer> closed(int i, int i2) {
        return create(Range.closed(Integer.valueOf(i), Integer.valueOf(i2)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Long> closed(long j, long j2) {
        return create(Range.closed(Long.valueOf(j), Long.valueOf(j2)), DiscreteDomain.longs());
    }

    public static ContiguousSet<Integer> closedOpen(int i, int i2) {
        return create(Range.closedOpen(Integer.valueOf(i), Integer.valueOf(i2)), DiscreteDomain.integers());
    }

    public static ContiguousSet<Long> closedOpen(long j, long j2) {
        return create(Range.closedOpen(Long.valueOf(j), Long.valueOf(j2)), DiscreteDomain.longs());
    }

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(range);
        Preconditions.checkNotNull(discreteDomain);
        try {
            Range<C> rangeH = !range.f() ? range.h(Range.atLeast(discreteDomain.d())) : range;
            if (!range.g()) {
                rangeH = rangeH.h(Range.atMost(discreteDomain.c()));
            }
            boolean z = true;
            if (!rangeH.j()) {
                Comparable comparableQ = range.b.q(discreteDomain);
                Objects.requireNonNull(comparableQ);
                Comparable comparableN = range.c.n(discreteDomain);
                Objects.requireNonNull(comparableN);
                if (Range.b(comparableQ, comparableN) <= 0) {
                    z = false;
                }
            }
            return z ? new j0(discreteDomain) : new m2(rangeH, discreteDomain);
        } catch (NoSuchElementException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<C> C() {
        return new h0(this);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public ContiguousSet<C> headSet(C c) {
        return M((Comparable) Preconditions.checkNotNull(c), false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public ContiguousSet<C> headSet(C c, boolean z) {
        return M((Comparable) Preconditions.checkNotNull(c), z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public abstract ContiguousSet<C> M(C c, boolean z);

    public abstract Range<C> Z();

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public ContiguousSet<C> subSet(C c, C c2) {
        Preconditions.checkNotNull(c);
        Preconditions.checkNotNull(c2);
        Preconditions.checkArgument(comparator().compare(c, c2) <= 0);
        return Q(c, true, c2, false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public ContiguousSet<C> subSet(C c, boolean z, C c2, boolean z2) {
        Preconditions.checkNotNull(c);
        Preconditions.checkNotNull(c2);
        Preconditions.checkArgument(comparator().compare(c, c2) <= 0);
        return Q(c, z, c2, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public abstract ContiguousSet<C> Q(C c, boolean z, C c2, boolean z2);

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public ContiguousSet<C> tailSet(C c) {
        return T((Comparable) Preconditions.checkNotNull(c), true);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public ContiguousSet<C> tailSet(C c, boolean z) {
        return T((Comparable) Preconditions.checkNotNull(c), z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public abstract ContiguousSet<C> T(C c, boolean z);

    @Override // java.util.AbstractCollection
    public String toString() {
        return Z().toString();
    }
}
