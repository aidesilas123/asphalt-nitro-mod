package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.c2;
import com.google.common.collect.f3;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

/* JADX INFO: compiled from: AbstractSortedMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class q<E> extends k<E> implements e3<E> {
    final Comparator<? super E> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient e3<E> f3824d;

    /* JADX INFO: compiled from: AbstractSortedMultiset.java */
    class a extends i0<E> {
        a() {
        }

        @Override // com.google.common.collect.i0
        Iterator<c2.a<E>> R() {
            return q.this.r();
        }

        @Override // com.google.common.collect.i0
        e3<E> S() {
            return q.this;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return q.this.descendingIterator();
        }
    }

    q() {
        this(Ordering.natural());
    }

    q(Comparator<? super E> comparator) {
        this.c = (Comparator) Preconditions.checkNotNull(comparator);
    }

    public Comparator<? super E> comparator() {
        return this.c;
    }

    Iterator<E> descendingIterator() {
        return Multisets.h(w());
    }

    public c2.a<E> firstEntry() {
        Iterator<c2.a<E>> itI = i();
        if (itI.hasNext()) {
            return itI.next();
        }
        return null;
    }

    e3<E> j() {
        return new a();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public NavigableSet<E> k() {
        return (NavigableSet) super.k();
    }

    public c2.a<E> lastEntry() {
        Iterator<c2.a<E>> itR = r();
        if (itR.hasNext()) {
            return itR.next();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.k
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public NavigableSet<E> e() {
        return new f3.b(this);
    }

    public c2.a<E> pollFirstEntry() {
        Iterator<c2.a<E>> itI = i();
        if (!itI.hasNext()) {
            return null;
        }
        c2.a<E> next = itI.next();
        c2.a<E> aVarImmutableEntry = Multisets.immutableEntry(next.c(), next.getCount());
        itI.remove();
        return aVarImmutableEntry;
    }

    public c2.a<E> pollLastEntry() {
        Iterator<c2.a<E>> itR = r();
        if (!itR.hasNext()) {
            return null;
        }
        c2.a<E> next = itR.next();
        c2.a<E> aVarImmutableEntry = Multisets.immutableEntry(next.c(), next.getCount());
        itR.remove();
        return aVarImmutableEntry;
    }

    public e3<E> q(E e2, BoundType boundType, E e3, BoundType boundType2) {
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        return L(e2, boundType).J(e3, boundType2);
    }

    abstract Iterator<c2.a<E>> r();

    public e3<E> w() {
        e3<E> e3Var = this.f3824d;
        if (e3Var != null) {
            return e3Var;
        }
        e3<E> e3VarJ = j();
        this.f3824d = e3VarJ;
        return e3VarJ;
    }
}
