package com.google.common.collect;

import com.google.common.collect.c2;

/* JADX INFO: compiled from: DescendingImmutableSortedMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
final class g0<E> extends ImmutableSortedMultiset<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final transient ImmutableSortedMultiset<E> f3764e;

    g0(ImmutableSortedMultiset<E> immutableSortedMultiset) {
        this.f3764e = immutableSortedMultiset;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.e3
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMultiset<E> w() {
        return this.f3764e;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> k() {
        return this.f3764e.k().descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.e3
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMultiset<E> J(E e2, BoundType boundType) {
        return this.f3764e.L(e2, boundType).w();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.e3
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMultiset<E> L(E e2, BoundType boundType) {
        return this.f3764e.J(e2, boundType).w();
    }

    @Override // com.google.common.collect.c2
    public int K(Object obj) {
        return this.f3764e.K(obj);
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> firstEntry() {
        return this.f3764e.lastEntry();
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return this.f3764e.j();
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> lastEntry() {
        return this.f3764e.firstEntry();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public int size() {
        return this.f3764e.size();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    c2.a<E> z(int i) {
        return this.f3764e.entrySet().e().z().get(i);
    }
}
