package com.google.common.collect;

/* JADX INFO: compiled from: IndexedImmutableSet.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class v1<E> extends ImmutableSet<E> {

    /* JADX INFO: compiled from: IndexedImmutableSet.java */
    class a extends ImmutableList<E> {
        a() {
        }

        @Override // java.util.List
        public E get(int i) {
            return (E) v1.this.get(i);
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return v1.this.j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return v1.this.size();
        }
    }

    v1() {
    }

    @Override // com.google.common.collect.n1
    int f(Object[] objArr, int i) {
        return e().f(objArr, i);
    }

    abstract E get(int i);

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<E> iterator() {
        return e().iterator();
    }

    @Override // com.google.common.collect.ImmutableSet
    ImmutableList<E> y() {
        return new a();
    }
}
