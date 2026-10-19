package com.google.common.collect;

import com.google.common.collect.Multisets;
import com.google.common.collect.c2;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: AbstractMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class k<E> extends AbstractCollection<E> implements c2<E> {
    private transient Set<E> a;
    private transient Set<c2.a<E>> b;

    /* JADX INFO: compiled from: AbstractMultiset.java */
    class a extends Multisets.h<E> {
        a() {
        }

        @Override // com.google.common.collect.Multisets.h
        c2<E> i() {
            return k.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return k.this.h();
        }
    }

    /* JADX INFO: compiled from: AbstractMultiset.java */
    class b extends Multisets.i<E> {
        b() {
        }

        @Override // com.google.common.collect.Multisets.i
        c2<E> i() {
            return k.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<c2.a<E>> iterator() {
            return k.this.i();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return k.this.g();
        }
    }

    k() {
    }

    public boolean I(E e2, int i, int i2) {
        return Multisets.n(this, e2, i, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public final boolean add(E e2) {
        u(e2, 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        return Multisets.c(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public boolean contains(Object obj) {
        return K(obj) > 0;
    }

    Set<E> e() {
        return new a();
    }

    public Set<c2.a<E>> entrySet() {
        Set<c2.a<E>> set = this.b;
        if (set != null) {
            return set;
        }
        Set<c2.a<E>> setF = f();
        this.b = setF;
        return setF;
    }

    @Override // java.util.Collection, com.google.common.collect.c2
    public final boolean equals(Object obj) {
        return Multisets.f(this, obj);
    }

    Set<c2.a<E>> f() {
        return new b();
    }

    abstract int g();

    abstract Iterator<E> h();

    @Override // java.util.Collection, com.google.common.collect.c2
    public final int hashCode() {
        return entrySet().hashCode();
    }

    abstract Iterator<c2.a<E>> i();

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    public Set<E> k() {
        Set<E> set = this.a;
        if (set != null) {
            return set;
        }
        Set<E> setE = e();
        this.a = setE;
        return setE;
    }

    public int m(E e2, int i) {
        return Multisets.m(this, e2, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public final boolean remove(Object obj) {
        return s(obj, 1) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return Multisets.j(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return Multisets.k(this, collection);
    }

    public int s(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }

    public int u(E e2, int i) {
        throw new UnsupportedOperationException();
    }
}
