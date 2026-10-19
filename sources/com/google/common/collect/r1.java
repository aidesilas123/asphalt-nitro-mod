package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;

/* JADX INFO: compiled from: ImmutableMapEntrySet.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class r1<K, V> extends ImmutableSet<Map.Entry<K, V>> {

    /* JADX INFO: compiled from: ImmutableMapEntrySet.java */
    private static class a<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, V> a;

        a(ImmutableMap<K, V> immutableMap) {
            this.a = immutableMap;
        }

        Object readResolve() {
            return this.a.entrySet();
        }
    }

    r1() {
    }

    abstract ImmutableMap<K, V> B();

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        V v = B().get(entry.getKey());
        return v != null && v.equals(entry.getValue());
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return B().hashCode();
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return B().j();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return B().size();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1
    Object writeReplace() {
        return new a(B());
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean z() {
        return B().i();
    }
}
