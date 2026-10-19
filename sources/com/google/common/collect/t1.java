package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;

/* JADX INFO: compiled from: ImmutableMapValues.java */
/* JADX INFO: loaded from: classes3.dex */
final class t1<K, V> extends n1<V> {
    private final ImmutableMap<K, V> b;

    /* JADX INFO: compiled from: ImmutableMapValues.java */
    class a extends o3<V> {
        final o3<Map.Entry<K, V>> a;

        a() {
            this.a = t1.this.b.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return this.a.next().getValue();
        }
    }

    /* JADX INFO: compiled from: ImmutableMapValues.java */
    class b extends ImmutableList<V> {
        final /* synthetic */ ImmutableList c;

        b(t1 t1Var, ImmutableList immutableList) {
            this.c = immutableList;
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) ((Map.Entry) this.c.get(i)).getValue();
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c.size();
        }
    }

    /* JADX INFO: compiled from: ImmutableMapValues.java */
    private static class c<V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<?, V> a;

        c(ImmutableMap<?, V> immutableMap) {
            this.a = immutableMap;
        }

        Object readResolve() {
            return this.a.values();
        }
    }

    t1(ImmutableMap<K, V> immutableMap) {
        this.b = immutableMap;
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return obj != null && Iterators.contains(iterator(), obj);
    }

    @Override // com.google.common.collect.n1
    public ImmutableList<V> e() {
        return new b(this, this.b.entrySet().e());
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return true;
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<V> iterator() {
        return new a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.b.size();
    }

    @Override // com.google.common.collect.n1
    Object writeReplace() {
        return new c(this.b);
    }
}
