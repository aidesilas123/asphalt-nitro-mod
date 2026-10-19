package com.google.common.collect;

import com.google.common.collect.c2;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: compiled from: SortedMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
public interface e3<E> extends c3<E>, c3 {
    e3<E> J(E e2, BoundType boundType);

    e3<E> L(E e2, BoundType boundType);

    @Override // com.google.common.collect.c3
    Comparator<? super E> comparator();

    Set<c2.a<E>> entrySet();

    c2.a<E> firstEntry();

    NavigableSet<E> k();

    c2.a<E> lastEntry();

    c2.a<E> pollFirstEntry();

    c2.a<E> pollLastEntry();

    e3<E> q(E e2, BoundType boundType, E e3, BoundType boundType2);

    e3<E> w();
}
