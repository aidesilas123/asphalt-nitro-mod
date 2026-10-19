package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedSet;

/* JADX INFO: compiled from: ForwardingSortedSet.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class h1<E> extends f1<E> implements SortedSet<E> {
    protected h1() {
    }

    protected abstract SortedSet<E> R();

    @Override // java.util.SortedSet
    public Comparator<? super E> comparator() {
        return R().comparator();
    }

    @Override // java.util.SortedSet
    public E first() {
        return R().first();
    }

    public SortedSet<E> headSet(E e2) {
        return R().headSet(e2);
    }

    @Override // java.util.SortedSet
    public E last() {
        return R().last();
    }

    public SortedSet<E> subSet(E e2, E e3) {
        return R().subSet(e2, e3);
    }

    public SortedSet<E> tailSet(E e2) {
        return R().tailSet(e2);
    }
}
