package com.google.common.collect;

import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class LinkedHashMultiset<E> extends h<E> {
    LinkedHashMultiset(int i) {
        super(i);
    }

    public static <E> LinkedHashMultiset<E> create() {
        return create(3);
    }

    public static <E> LinkedHashMultiset<E> create(int i) {
        return new LinkedHashMultiset<>(i);
    }

    public static <E> LinkedHashMultiset<E> create(Iterable<? extends E> iterable) {
        LinkedHashMultiset<E> linkedHashMultisetCreate = create(Multisets.g(iterable));
        Iterables.addAll(linkedHashMultisetCreate, iterable);
        return linkedHashMultisetCreate;
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
        return new g2(i);
    }
}
