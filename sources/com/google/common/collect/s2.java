package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.c2;
import com.google.common.primitives.Ints;
import java.util.Comparator;

/* JADX INFO: compiled from: RegularImmutableSortedMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
final class s2<E> extends ImmutableSortedMultiset<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long[] f3838e = {0};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final ImmutableSortedMultiset<Comparable> f3839f = new s2(Ordering.natural());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient t2<E> f3840g;
    private final transient long[] h;
    private final transient int i;
    private final transient int j;

    s2(t2<E> t2Var, long[] jArr, int i, int i2) {
        this.f3840g = t2Var;
        this.h = jArr;
        this.i = i;
        this.j = i2;
    }

    s2(Comparator<? super E> comparator) {
        this.f3840g = ImmutableSortedSet.F(comparator);
        this.h = f3838e;
        this.i = 0;
        this.j = 0;
    }

    private int H(int i) {
        long[] jArr = this.h;
        int i2 = this.i;
        return (int) (jArr[(i2 + i) + 1] - jArr[i2 + i]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset
    /* JADX INFO: renamed from: C */
    public ImmutableSortedSet<E> k() {
        return this.f3840g;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.e3
    /* JADX INFO: renamed from: E */
    public ImmutableSortedMultiset<E> J(E e2, BoundType boundType) {
        return M(0, this.f3840g.X(e2, Preconditions.checkNotNull(boundType) == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.e3
    /* JADX INFO: renamed from: G */
    public ImmutableSortedMultiset<E> L(E e2, BoundType boundType) {
        return M(this.f3840g.Y(e2, Preconditions.checkNotNull(boundType) == BoundType.CLOSED), this.j);
    }

    @Override // com.google.common.collect.c2
    public int K(Object obj) {
        int iIndexOf = this.f3840g.indexOf(obj);
        if (iIndexOf >= 0) {
            return H(iIndexOf);
        }
        return 0;
    }

    ImmutableSortedMultiset<E> M(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, this.j);
        return i == i2 ? ImmutableSortedMultiset.D(comparator()) : (i == 0 && i2 == this.j) ? this : new s2(this.f3840g.W(i, i2), this.h, this.i + i, i2 - i);
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return z(0);
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return this.i > 0 || this.j < this.h.length - 1;
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return z(this.j - 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public int size() {
        long[] jArr = this.h;
        int i = this.i;
        return Ints.saturatedCast(jArr[this.j + i] - jArr[i]);
    }

    @Override // com.google.common.collect.ImmutableMultiset
    c2.a<E> z(int i) {
        return Multisets.immutableEntry(this.f3840g.e().get(i), H(i));
    }
}
