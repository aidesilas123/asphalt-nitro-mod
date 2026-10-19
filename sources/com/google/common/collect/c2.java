package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: Multiset.java */
/* JADX INFO: loaded from: classes3.dex */
public interface c2<E> extends Collection<E> {

    /* JADX INFO: compiled from: Multiset.java */
    public interface a<E> {
        E c();

        int getCount();

        String toString();
    }

    boolean I(E e2, int i, int i2);

    int K(Object obj);

    @Override // java.util.Collection
    boolean add(E e2);

    boolean contains(Object obj);

    @Override // java.util.Collection
    boolean containsAll(Collection<?> collection);

    Set<a<E>> entrySet();

    boolean equals(Object obj);

    int hashCode();

    Iterator<E> iterator();

    Set<E> k();

    int m(E e2, int i);

    @Override // java.util.Collection
    boolean remove(Object obj);

    int s(Object obj, int i);

    int size();

    int u(E e2, int i);
}
