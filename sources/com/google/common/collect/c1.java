package com.google.common.collect;

import java.util.Iterator;
import java.util.NavigableSet;

/* JADX INFO: compiled from: ForwardingNavigableSet.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class c1<E> extends h1<E> implements NavigableSet<E> {
    protected c1() {
    }

    protected abstract NavigableSet<E> S();

    @Override // java.util.NavigableSet
    public E ceiling(E e2) {
        return S().ceiling(e2);
    }

    @Override // java.util.NavigableSet
    public Iterator<E> descendingIterator() {
        return S().descendingIterator();
    }

    public NavigableSet<E> descendingSet() {
        return S().descendingSet();
    }

    @Override // java.util.NavigableSet
    public E floor(E e2) {
        return S().floor(e2);
    }

    public NavigableSet<E> headSet(E e2, boolean z) {
        return S().headSet(e2, z);
    }

    @Override // java.util.NavigableSet
    public E higher(E e2) {
        return S().higher(e2);
    }

    @Override // java.util.NavigableSet
    public E lower(E e2) {
        return S().lower(e2);
    }

    @Override // java.util.NavigableSet
    public E pollFirst() {
        return S().pollFirst();
    }

    @Override // java.util.NavigableSet
    public E pollLast() {
        return S().pollLast();
    }

    public NavigableSet<E> subSet(E e2, boolean z, E e3, boolean z2) {
        return S().subSet(e2, z, e3, z2);
    }

    public NavigableSet<E> tailSet(E e2, boolean z) {
        return S().tailSet(e2, z);
    }
}
