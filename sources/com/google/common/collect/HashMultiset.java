package com.google.common.collect;

import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class HashMultiset<E> extends h<E> {
    private static final long serialVersionUID = 0;

    HashMultiset(int i) {
        super(i);
    }

    public static <E> HashMultiset<E> create() {
        return create(3);
    }

    public static <E> HashMultiset<E> create(int i) {
        return new HashMultiset<>(i);
    }

    public static <E> HashMultiset<E> create(Iterable<? extends E> iterable) {
        HashMultiset<E> hashMultisetCreate = create(Multisets.g(iterable));
        Iterables.addAll(hashMultisetCreate, iterable);
        return hashMultisetCreate;
    }

    @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ Set k() {
        return super.k();
    }

    @Override // com.google.common.collect.h
    f2<E> n(int i) {
        return new f2<>(i);
    }
}
