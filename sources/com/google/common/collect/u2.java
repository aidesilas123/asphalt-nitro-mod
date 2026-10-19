package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.l3;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: RegularImmutableTable.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class u2<R, C, V> extends ImmutableTable<R, C, V> {

    /* JADX INFO: compiled from: RegularImmutableTable.java */
    private final class b extends v1<l3.a<R, C, V>> {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v1
        /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
        public l3.a<R, C, V> get(int i) {
            return u2.this.I(i);
        }

        @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (!(obj instanceof l3.a)) {
                return false;
            }
            l3.a aVar = (l3.a) obj;
            Object objG = u2.this.g(aVar.c(), aVar.d());
            return objG != null && objG.equals(aVar.getValue());
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return u2.this.size();
        }
    }

    /* JADX INFO: compiled from: RegularImmutableTable.java */
    private final class c extends ImmutableList<V> {
        private c() {
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) u2.this.J(i);
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return u2.this.size();
        }
    }

    u2() {
    }

    static <R, C, V> u2<R, C, V> F(List<l3.a<R, C, V>> list, final Comparator<? super R> comparator, final Comparator<? super C> comparator2) {
        Preconditions.checkNotNull(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Comparator() { // from class: com.google.common.collect.b
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return u2.K(comparator, comparator2, (l3.a) obj, (l3.a) obj2);
                }
            });
        }
        return G(list, comparator, comparator2);
    }

    private static <R, C, V> u2<R, C, V> G(Iterable<l3.a<R, C, V>> iterable, Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(iterable);
        for (l3.a<R, C, V> aVar : iterable) {
            linkedHashSet.add(aVar.c());
            linkedHashSet2.add(aVar.d());
        }
        return H(immutableListCopyOf, comparator == null ? ImmutableSet.copyOf((Collection) linkedHashSet) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator, linkedHashSet)), comparator2 == null ? ImmutableSet.copyOf((Collection) linkedHashSet2) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator2, linkedHashSet2)));
    }

    static <R, C, V> u2<R, C, V> H(ImmutableList<l3.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        return ((long) immutableList.size()) > (((long) immutableSet.size()) * ((long) immutableSet2.size())) / 2 ? new f0(immutableList, immutableSet, immutableSet2) : new h3(immutableList, immutableSet, immutableSet2);
    }

    static /* synthetic */ int K(Comparator comparator, Comparator comparator2, l3.a aVar, l3.a aVar2) {
        int iCompare = comparator == null ? 0 : comparator.compare(aVar.c(), aVar2.c());
        if (iCompare != 0) {
            return iCompare;
        }
        if (comparator2 == null) {
            return 0;
        }
        return comparator2.compare(aVar.d(), aVar2.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.s
    /* JADX INFO: renamed from: A */
    public final n1<V> f() {
        return i() ? ImmutableList.of() : new c();
    }

    final void E(R r, C c2, V v, V v2) {
        Preconditions.checkArgument(v == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r, c2, v2, v);
    }

    abstract l3.a<R, C, V> I(int i);

    abstract V J(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.s
    /* JADX INFO: renamed from: x */
    public final ImmutableSet<l3.a<R, C, V>> e() {
        return i() ? ImmutableSet.of() : new b();
    }
}
