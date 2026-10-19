package com.google.common.collect;

/* JADX INFO: compiled from: DescendingImmutableSortedSet.java */
/* JADX INFO: loaded from: classes3.dex */
final class h0<E> extends ImmutableSortedSet<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ImmutableSortedSet<E> f3769e;

    h0(ImmutableSortedSet<E> immutableSortedSet) {
        super(Ordering.from(immutableSortedSet.comparator()).f());
        this.f3769e = immutableSortedSet;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> C() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* JADX INFO: renamed from: D */
    public o3<E> descendingIterator() {
        return this.f3769e.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* JADX INFO: renamed from: E */
    public ImmutableSortedSet<E> descendingSet() {
        return this.f3769e;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> M(E e2, boolean z) {
        return this.f3769e.tailSet(e2, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> Q(E e2, boolean z, E e3, boolean z2) {
        return this.f3769e.subSet(e3, z2, e2, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> T(E e2, boolean z) {
        return this.f3769e.headSet(e2, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e2) {
        return this.f3769e.floor(e2);
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.f3769e.contains(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e2) {
        return this.f3769e.ceiling(e2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e2) {
        return this.f3769e.lower(e2);
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return this.f3769e.j();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e2) {
        return this.f3769e.higher(e2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<E> iterator() {
        return this.f3769e.descendingIterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f3769e.size();
    }
}
