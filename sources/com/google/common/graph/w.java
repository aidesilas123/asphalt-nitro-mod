package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.o3;
import java.util.AbstractSet;
import java.util.Map;

/* JADX INFO: compiled from: EdgesConnecting.java */
/* JADX INFO: loaded from: classes3.dex */
final class w<E> extends AbstractSet<E> {
    private final Map<?, E> a;
    private final Object b;

    w(Map<?, E> map, Object obj) {
        this.a = (Map) Preconditions.checkNotNull(map);
        this.b = Preconditions.checkNotNull(obj);
    }

    private E e() {
        return this.a.get(this.b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        E e2 = e();
        return e2 != null && e2.equals(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public o3<E> iterator() {
        E e2 = e();
        return e2 == null ? ImmutableSet.of().iterator() : Iterators.singletonIterator(e2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return e() == null ? 0 : 1;
    }
}
