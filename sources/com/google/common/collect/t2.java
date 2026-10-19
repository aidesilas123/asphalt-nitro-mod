package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: compiled from: RegularImmutableSortedSet.java */
/* JADX INFO: loaded from: classes3.dex */
final class t2<E> extends ImmutableSortedSet<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final t2<Comparable> f3841e = new t2<>(ImmutableList.of(), Ordering.natural());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final transient ImmutableList<E> f3842f;

    t2(ImmutableList<E> immutableList, Comparator<? super E> comparator) {
        super(comparator);
        this.f3842f = immutableList;
    }

    private int Z(Object obj) throws ClassCastException {
        return Collections.binarySearch(this.f3842f, obj, a0());
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> C() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(this.c);
        return isEmpty() ? ImmutableSortedSet.F(comparatorReverseOrder) : new t2(this.f3842f.z(), comparatorReverseOrder);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public o3<E> descendingIterator() {
        return this.f3842f.z().iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> M(E e2, boolean z) {
        return W(0, X(e2, z));
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> Q(E e2, boolean z, E e3, boolean z2) {
        return T(e2, z).M(e3, z2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> T(E e2, boolean z) {
        return W(Y(e2, z), size());
    }

    t2<E> W(int i, int i2) {
        return (i == 0 && i2 == size()) ? this : i < i2 ? new t2<>(this.f3842f.subList(i, i2), this.c) : ImmutableSortedSet.F(this.c);
    }

    int X(E e2, boolean z) {
        int iBinarySearch = Collections.binarySearch(this.f3842f, Preconditions.checkNotNull(e2), comparator());
        return iBinarySearch >= 0 ? z ? iBinarySearch + 1 : iBinarySearch : ~iBinarySearch;
    }

    int Y(E e2, boolean z) {
        int iBinarySearch = Collections.binarySearch(this.f3842f, Preconditions.checkNotNull(e2), comparator());
        return iBinarySearch >= 0 ? z ? iBinarySearch : iBinarySearch + 1 : ~iBinarySearch;
    }

    Comparator<Object> a0() {
        return this.c;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e2) {
        int iY = Y(e2, true);
        if (iY == size()) {
            return null;
        }
        return this.f3842f.get(iY);
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return Z(obj) >= 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof c2) {
            collection = ((c2) collection).k();
        }
        if (!SortedIterables.hasSameComparator(comparator(), collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        o3<E> it = iterator();
        Iterator<?> it2 = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        E next2 = it.next();
        while (true) {
            try {
                int iU = U(next2, next);
                if (iU < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (iU == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (iU > 0) {
                    break;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1
    public ImmutableList<E> e() {
        return this.f3842f;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!SortedIterables.hasSameComparator(this.c, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            o3<E> it2 = iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                E next2 = it.next();
                if (next2 == null || U(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.common.collect.n1
    int f(Object[] objArr, int i) {
        return this.f3842f.f(objArr, i);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.f3842f.get(0);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e2) {
        int iX = X(e2, true) - 1;
        if (iX == -1) {
            return null;
        }
        return this.f3842f.get(iX);
    }

    @Override // com.google.common.collect.n1
    Object[] g() {
        return this.f3842f.g();
    }

    @Override // com.google.common.collect.n1
    int h() {
        return this.f3842f.h();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e2) {
        int iY = Y(e2, false);
        if (iY == size()) {
            return null;
        }
        return this.f3842f.get(iY);
    }

    @Override // com.google.common.collect.n1
    int i() {
        return this.f3842f.i();
    }

    int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            int iBinarySearch = Collections.binarySearch(this.f3842f, obj, a0());
            if (iBinarySearch >= 0) {
                return iBinarySearch;
            }
            return -1;
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return this.f3842f.j();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.f3842f.get(size() - 1);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e2) {
        int iX = X(e2, false) - 1;
        if (iX == -1) {
            return null;
        }
        return this.f3842f.get(iX);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<E> iterator() {
        return this.f3842f.iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f3842f.size();
    }
}
