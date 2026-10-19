package com.google.common.collect;

import java.io.Serializable;
import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;

/* JADX INFO: compiled from: ImmutableEnumSet.java */
/* JADX INFO: loaded from: classes3.dex */
final class q1<E extends Enum<E>> extends ImmutableSet<E> {
    private final transient EnumSet<E> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient int f3828d;

    /* JADX INFO: compiled from: ImmutableEnumSet.java */
    private static class b<E extends Enum<E>> implements Serializable {
        private static final long serialVersionUID = 0;
        final EnumSet<E> a;

        b(EnumSet<E> enumSet) {
            this.a = enumSet;
        }

        Object readResolve() {
            return new q1(this.a.clone());
        }
    }

    private q1(EnumSet<E> enumSet) {
        this.c = enumSet;
    }

    static ImmutableSet B(EnumSet enumSet) {
        int size = enumSet.size();
        return size != 0 ? size != 1 ? new q1(enumSet) : ImmutableSet.of(Iterables.getOnlyElement(enumSet)) : ImmutableSet.of();
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.c.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof q1) {
            collection = ((q1) collection).c;
        }
        return this.c.containsAll(collection);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q1) {
            obj = ((q1) obj).c;
        }
        return this.c.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        int i = this.f3828d;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.c.hashCode();
        this.f3828d = iHashCode;
        return iHashCode;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.c.isEmpty();
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<E> iterator() {
        return Iterators.unmodifiableIterator(this.c.iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.c.size();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return this.c.toString();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1
    Object writeReplace() {
        return new b(this.c);
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean z() {
        return true;
    }
}
