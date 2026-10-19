package com.google.common.collect;

import com.google.common.base.Preconditions;

/* JADX INFO: compiled from: SingletonImmutableSet.java */
/* JADX INFO: loaded from: classes3.dex */
final class a3<E> extends ImmutableSet<E> {
    final transient E c;

    a3(E e2) {
        this.c = (E) Preconditions.checkNotNull(e2);
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.c.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1
    public ImmutableList<E> e() {
        return ImmutableList.of((Object) this.c);
    }

    @Override // com.google.common.collect.n1
    int f(Object[] objArr, int i) {
        objArr[i] = this.c;
        return i + 1;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.c.hashCode();
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<E> iterator() {
        return Iterators.singletonIterator(this.c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String string = this.c.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2);
        sb.append('[');
        sb.append(string);
        sb.append(']');
        return sb.toString();
    }
}
