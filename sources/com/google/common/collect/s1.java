package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: compiled from: ImmutableMapKeySet.java */
/* JADX INFO: loaded from: classes3.dex */
final class s1<K, V> extends v1<K> {
    private final ImmutableMap<K, V> c;

    /* JADX INFO: compiled from: ImmutableMapKeySet.java */
    private static class a<K> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, ?> a;

        a(ImmutableMap<K, ?> immutableMap) {
            this.a = immutableMap;
        }

        Object readResolve() {
            return this.a.keySet();
        }
    }

    s1(ImmutableMap<K, V> immutableMap) {
        this.c = immutableMap;
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.c.containsKey(obj);
    }

    @Override // com.google.common.collect.v1
    K get(int i) {
        return this.c.entrySet().e().get(i).getKey();
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return true;
    }

    @Override // com.google.common.collect.v1, com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<K> iterator() {
        return this.c.k();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.c.size();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1
    Object writeReplace() {
        return new a(this.c);
    }
}
