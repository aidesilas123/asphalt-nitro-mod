package com.google.common.collect;

import com.google.common.collect.Multisets;
import com.google.common.collect.c2;
import com.google.common.collect.f3;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: compiled from: DescendingMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class i0<E> extends b1<E> implements e3<E> {
    private transient Comparator<? super E> a;
    private transient NavigableSet<E> b;
    private transient Set<c2.a<E>> c;

    /* JADX INFO: compiled from: DescendingMultiset.java */
    class a extends Multisets.i<E> {
        a() {
        }

        @Override // com.google.common.collect.Multisets.i
        c2<E> i() {
            return i0.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<c2.a<E>> iterator() {
            return i0.this.R();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return i0.this.S().entrySet().size();
        }
    }

    i0() {
    }

    @Override // com.google.common.collect.e3
    public e3<E> J(E e2, BoundType boundType) {
        return S().L(e2, boundType).w();
    }

    @Override // com.google.common.collect.e3
    public e3<E> L(E e2, BoundType boundType) {
        return S().J(e2, boundType).w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.u0
    /* JADX INFO: renamed from: P */
    public c2<E> C() {
        return S();
    }

    Set<c2.a<E>> Q() {
        return new a();
    }

    abstract Iterator<c2.a<E>> R();

    abstract e3<E> S();

    @Override // com.google.common.collect.e3, com.google.common.collect.c3
    public Comparator<? super E> comparator() {
        Comparator<? super E> comparator = this.a;
        if (comparator != null) {
            return comparator;
        }
        Ordering orderingF = Ordering.from(S().comparator()).f();
        this.a = orderingF;
        return orderingF;
    }

    @Override // com.google.common.collect.c2
    public Set<c2.a<E>> entrySet() {
        Set<c2.a<E>> set = this.c;
        if (set != null) {
            return set;
        }
        Set<c2.a<E>> setQ = Q();
        this.c = setQ;
        return setQ;
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> firstEntry() {
        return S().lastEntry();
    }

    @Override // com.google.common.collect.c2
    public NavigableSet<E> k() {
        NavigableSet<E> navigableSet = this.b;
        if (navigableSet != null) {
            return navigableSet;
        }
        f3.b bVar = new f3.b(this);
        this.b = bVar;
        return bVar;
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> lastEntry() {
        return S().firstEntry();
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> pollFirstEntry() {
        return S().pollLastEntry();
    }

    @Override // com.google.common.collect.e3
    public c2.a<E> pollLastEntry() {
        return S().pollFirstEntry();
    }

    @Override // com.google.common.collect.e3
    public e3<E> q(E e2, BoundType boundType, E e3, BoundType boundType2) {
        return S().q(e3, boundType2, e2, boundType).w();
    }

    @Override // com.google.common.collect.u0, java.util.Collection
    public Object[] toArray() {
        return G();
    }

    @Override // com.google.common.collect.u0, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) H(tArr);
    }

    @Override // com.google.common.collect.d1
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.e3
    public e3<E> w() {
        return S();
    }
}
