package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.SortedLists;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmutableRangeSet<C extends Comparable> extends m<C> implements Serializable {
    private static final ImmutableRangeSet<Comparable<?>> a = new ImmutableRangeSet<>(ImmutableList.of());
    private static final ImmutableRangeSet<Comparable<?>> b = new ImmutableRangeSet<>(ImmutableList.of(Range.all()));
    private final transient ImmutableList<Range<C>> c;

    public static class a<C extends Comparable<?>> {
        private final List<Range<C>> a = Lists.newArrayList();

        public a<C> a(Range<C> range) {
            Preconditions.checkArgument(!range.j(), "range must not be empty, but was %s", range);
            this.a.add(range);
            return this;
        }

        public a<C> b(Iterable<Range<C>> iterable) {
            Iterator<Range<C>> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public ImmutableRangeSet<C> c() {
            ImmutableList.a aVar = new ImmutableList.a(this.a.size());
            Collections.sort(this.a, Range.p());
            h2 h2VarPeekingIterator = Iterators.peekingIterator(this.a.iterator());
            while (h2VarPeekingIterator.hasNext()) {
                Range rangeQ = (Range) h2VarPeekingIterator.next();
                while (h2VarPeekingIterator.hasNext()) {
                    Range<C> range = (Range) h2VarPeekingIterator.peek();
                    if (rangeQ.i(range)) {
                        Preconditions.checkArgument(rangeQ.h(range).j(), "Overlapping ranges not permitted but found %s overlapping %s", rangeQ, range);
                        rangeQ = rangeQ.q((Range) h2VarPeekingIterator.next());
                    }
                }
                aVar.a(rangeQ);
            }
            ImmutableList immutableListK = aVar.k();
            return immutableListK.isEmpty() ? ImmutableRangeSet.of() : (immutableListK.size() == 1 && ((Range) Iterables.getOnlyElement(immutableListK)).equals(Range.all())) ? ImmutableRangeSet.f() : new ImmutableRangeSet<>(immutableListK);
        }
    }

    private static final class b<C extends Comparable> implements Serializable {
        private final ImmutableList<Range<C>> a;

        b(ImmutableList<Range<C>> immutableList) {
            this.a = immutableList;
        }

        Object readResolve() {
            return this.a.isEmpty() ? ImmutableRangeSet.of() : this.a.equals(ImmutableList.of(Range.all())) ? ImmutableRangeSet.f() : new ImmutableRangeSet(this.a);
        }
    }

    ImmutableRangeSet(ImmutableList<Range<C>> immutableList) {
        this.c = immutableList;
    }

    public static <C extends Comparable<?>> a<C> builder() {
        return new a<>();
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(l2<C> l2Var) {
        Preconditions.checkNotNull(l2Var);
        if (l2Var.isEmpty()) {
            return of();
        }
        if (l2Var.a(Range.all())) {
            return f();
        }
        if (l2Var instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) l2Var;
            if (!immutableRangeSet.h()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) l2Var.c()));
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> copyOf(Iterable<Range<C>> iterable) {
        return new a().b(iterable).c();
    }

    static <C extends Comparable> ImmutableRangeSet<C> f() {
        return b;
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of() {
        return a;
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of(Range<C> range) {
        Preconditions.checkNotNull(range);
        return range.j() ? of() : range.equals(Range.all()) ? f() : new ImmutableRangeSet<>(ImmutableList.of(range));
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> unionOf(Iterable<Range<C>> iterable) {
        return copyOf(TreeRangeSet.create(iterable));
    }

    @Override // com.google.common.collect.l2
    public boolean a(Range<C> range) {
        int iBinarySearch = SortedLists.binarySearch(this.c, Range.k(), range.b, Ordering.natural(), SortedLists.KeyPresentBehavior.a, SortedLists.KeyAbsentBehavior.a);
        return iBinarySearch != -1 && this.c.get(iBinarySearch).e(range);
    }

    @Override // com.google.common.collect.m
    @Deprecated
    public void b(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.m
    @Deprecated
    public void e(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.m
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.l2
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<Range<C>> c() {
        return this.c.isEmpty() ? ImmutableSet.of() : new t2(this.c, Range.p());
    }

    boolean h() {
        return this.c.j();
    }

    @Override // com.google.common.collect.m, com.google.common.collect.l2
    public boolean isEmpty() {
        return this.c.isEmpty();
    }

    Object writeReplace() {
        return new b(this.c);
    }
}
