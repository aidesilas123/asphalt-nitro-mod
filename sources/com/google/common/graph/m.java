package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.Iterables;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.o3;
import com.google.common.math.IntMath;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: AbstractDirectedNetworkConnections.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class m<N, E> implements l0<N, E> {
    final Map<E, N> a;
    final Map<E, N> b;
    private int c;

    /* JADX INFO: compiled from: AbstractDirectedNetworkConnections.java */
    class a extends AbstractSet<E> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return m.this.a.containsKey(obj) || m.this.b.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public o3<E> iterator() {
            return Iterators.unmodifiableIterator((m.this.c == 0 ? Iterables.concat(m.this.a.keySet(), m.this.b.keySet()) : Sets.union(m.this.a.keySet(), m.this.b.keySet())).iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return IntMath.saturatedAdd(m.this.a.size(), m.this.b.size() - m.this.c);
        }
    }

    m(Map<E, N> map, Map<E, N> map2, int i) {
        this.a = (Map) Preconditions.checkNotNull(map);
        this.b = (Map) Preconditions.checkNotNull(map2);
        this.c = Graphs.b(i);
        Preconditions.checkState(i <= map.size() && i <= map2.size());
    }

    @Override // com.google.common.graph.l0
    public Set<N> c() {
        return Sets.union(b(), a());
    }

    @Override // com.google.common.graph.l0
    public void d(E e2, N n) {
        Preconditions.checkNotNull(e2);
        Preconditions.checkNotNull(n);
        Preconditions.checkState(this.b.put(e2, n) == null);
    }

    @Override // com.google.common.graph.l0
    public void e(E e2, N n, boolean z) {
        Preconditions.checkNotNull(e2);
        Preconditions.checkNotNull(n);
        if (z) {
            int i = this.c + 1;
            this.c = i;
            Graphs.d(i);
        }
        Preconditions.checkState(this.a.put(e2, n) == null);
    }

    @Override // com.google.common.graph.l0
    public Set<E> f() {
        return new a();
    }

    @Override // com.google.common.graph.l0
    public N g(E e2) {
        N n = this.b.get(e2);
        Objects.requireNonNull(n);
        return n;
    }

    @Override // com.google.common.graph.l0
    public Set<E> h() {
        return Collections.unmodifiableSet(this.a.keySet());
    }

    @Override // com.google.common.graph.l0
    public Set<E> i() {
        return Collections.unmodifiableSet(this.b.keySet());
    }
}
