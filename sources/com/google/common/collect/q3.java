package com.google.common.collect;

import com.google.common.collect.Multisets;
import com.google.common.collect.c2;
import java.util.Comparator;
import java.util.NavigableSet;

/* JADX INFO: compiled from: UnmodifiableSortedMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
final class q3<E> extends Multisets.m<E> implements e3<E> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient q3<E> f3833d;

    q3(e3<E> e3Var) {
        super(e3Var);
    }

    @Override // com.google.common.collect.e3
    public e3<E> J(E e2, BoundType boundType) {
        return Multisets.unmodifiableSortedMultiset(P().J(e2, boundType));
    }

    @Override // com.google.common.collect.e3
    public e3<E> L(E e2, BoundType boundType) {
        return Multisets.unmodifiableSortedMultiset(P().L(e2, boundType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.Multisets.m
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public NavigableSet<E> Q() {
        return Sets.unmodifiableNavigableSet(P().k());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.Multisets.m, com.google.common.collect.b1
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public e3<E> C() {
        return (e3) super.C();
    }

    @Override // com.google.common.collect.e3, com.google.common.collect.c3
    public Comparator<? super E> comparator() {
        return P().comparator();
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> firstEntry() {
        return P().firstEntry();
    }

    @Override // com.google.common.collect.Multisets.m, com.google.common.collect.c2
    public NavigableSet<E> k() {
        return (NavigableSet) super.k();
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> lastEntry() {
        return P().lastEntry();
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.e3
    public e3<E> q(E e2, BoundType boundType, E e3, BoundType boundType2) {
        return Multisets.unmodifiableSortedMultiset(P().q(e2, boundType, e3, boundType2));
    }

    @Override // com.google.common.collect.e3
    public e3<E> w() {
        q3<E> q3Var = this.f3833d;
        if (q3Var != null) {
            return q3Var;
        }
        q3<E> q3Var2 = new q3<>(P().w());
        q3Var2.f3833d = this;
        this.f3833d = q3Var2;
        return q3Var2;
    }
}
