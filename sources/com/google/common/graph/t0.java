package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.HashMultiset;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.c2;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: UndirectedMultiNetworkConnections.java */
/* JADX INFO: loaded from: classes3.dex */
final class t0<N, E> extends q<N, E> {
    private transient Reference<c2<N>> b;

    /* JADX INFO: compiled from: UndirectedMultiNetworkConnections.java */
    class a extends g0<E> {
        final /* synthetic */ Object c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.c = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return t0.this.l().K(this.c);
        }
    }

    private t0(Map<E, N> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c2<N> l() {
        c2<N> c2Var = (c2) m(this.b);
        if (c2Var != null) {
            return c2Var;
        }
        HashMultiset hashMultisetCreate = HashMultiset.create(this.a.values());
        this.b = new SoftReference(hashMultisetCreate);
        return hashMultisetCreate;
    }

    private static <T> T m(Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    static <N, E> t0<N, E> n() {
        return new t0<>(new HashMap(2, 1.0f));
    }

    static <N, E> t0<N, E> o(Map<E, N> map) {
        return new t0<>(ImmutableMap.copyOf((Map) map));
    }

    @Override // com.google.common.graph.l0
    public Set<N> c() {
        return Collections.unmodifiableSet(l().k());
    }

    @Override // com.google.common.graph.q, com.google.common.graph.l0
    public void d(E e2, N n) {
        super.d(e2, n);
        c2 c2Var = (c2) m(this.b);
        if (c2Var != null) {
            Preconditions.checkState(c2Var.add(n));
        }
    }

    @Override // com.google.common.graph.q, com.google.common.graph.l0
    public void e(E e2, N n, boolean z) {
        if (z) {
            return;
        }
        d(e2, n);
    }

    @Override // com.google.common.graph.l0
    public Set<E> j(N n) {
        return new a(this.a, n, n);
    }
}
