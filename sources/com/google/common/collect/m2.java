package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Objects;

/* JADX INFO: compiled from: RegularContiguousSet.java */
/* JADX INFO: loaded from: classes3.dex */
final class m2<C extends Comparable> extends ContiguousSet<C> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Range<C> f3804f;

    /* JADX INFO: compiled from: RegularContiguousSet.java */
    class a extends n<C> {
        final C b;

        a(Comparable comparable) {
            super(comparable);
            this.b = (C) m2.this.last();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.n
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C a(C c) {
            if (m2.h0(c, this.b)) {
                return null;
            }
            return (C) m2.this.f3561e.e(c);
        }
    }

    /* JADX INFO: compiled from: RegularContiguousSet.java */
    class b extends n<C> {
        final C b;

        b(Comparable comparable) {
            super(comparable);
            this.b = (C) m2.this.first();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.n
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C a(C c) {
            if (m2.h0(c, this.b)) {
                return null;
            }
            return (C) m2.this.f3561e.g(c);
        }
    }

    /* JADX INFO: compiled from: RegularContiguousSet.java */
    class c extends m1<C> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.m1
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public ImmutableSortedSet<C> C() {
            return m2.this;
        }

        @Override // java.util.List
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public C get(int i) {
            Preconditions.checkElementIndex(i, size());
            m2 m2Var = m2.this;
            return (C) m2Var.f3561e.f(m2Var.first(), i);
        }
    }

    /* JADX INFO: compiled from: RegularContiguousSet.java */
    private static final class d<C extends Comparable> implements Serializable {
        final Range<C> a;
        final DiscreteDomain<C> b;

        private d(Range<C> range, DiscreteDomain<C> discreteDomain) {
            this.a = range;
            this.b = discreteDomain;
        }

        /* synthetic */ d(Range range, DiscreteDomain discreteDomain, a aVar) {
            this(range, discreteDomain);
        }

        private Object readResolve() {
            return new m2(this.a, this.b);
        }
    }

    m2(Range<C> range, DiscreteDomain<C> discreteDomain) {
        super(discreteDomain);
        this.f3804f = range;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h0(Comparable<?> comparable, Comparable<?> comparable2) {
        return comparable2 != null && Range.b(comparable, comparable2) == 0;
    }

    private ContiguousSet<C> j0(Range<C> range) {
        return this.f3804f.i(range) ? ContiguousSet.create(this.f3804f.h(range), this.f3561e) : new j0(this.f3561e);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* JADX INFO: renamed from: D */
    public o3<C> descendingIterator() {
        return new b(last());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: Y */
    public ContiguousSet<C> M(C c2, boolean z) {
        return j0(Range.upTo(c2, BoundType.f(z)));
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> Z() {
        BoundType boundType = BoundType.CLOSED;
        return l0(boundType, boundType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: c0 */
    public ContiguousSet<C> Q(C c2, boolean z, C c3, boolean z2) {
        return (c2.compareTo(c3) != 0 || z || z2) ? j0(Range.range(c2, BoundType.f(z), c3, BoundType.f(z2))) : new j0(this.f3561e);
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.f3804f.c((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return Collections2.b(this, collection);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m2) {
            m2 m2Var = (m2) obj;
            if (this.f3561e.equals(m2Var.f3561e)) {
                return first().equals(m2Var.first()) && last().equals(m2Var.last());
            }
        }
        return super.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: f0 */
    public ContiguousSet<C> T(C c2, boolean z) {
        return j0(Range.downTo(c2, BoundType.f(z)));
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.b(this);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public C first() {
        Comparable comparableQ = this.f3804f.b.q(this.f3561e);
        Objects.requireNonNull(comparableQ);
        return (C) comparableQ;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return false;
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public C last() {
        Comparable comparableN = this.f3804f.c.n(this.f3561e);
        Objects.requireNonNull(comparableN);
        return (C) comparableN;
    }

    public Range<C> l0(BoundType boundType, BoundType boundType2) {
        return Range.d(this.f3804f.b.u(boundType, this.f3561e), this.f3804f.c.v(boundType2, this.f3561e));
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<C> iterator() {
        return new a(first());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        long jA = this.f3561e.a(first(), last());
        if (jA >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) jA) + 1;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.n1
    Object writeReplace() {
        return new d(this.f3804f, this.f3561e, null);
    }

    @Override // com.google.common.collect.ImmutableSet
    ImmutableList<C> y() {
        return this.f3561e.a ? new c() : super.y();
    }
}
