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

/* JADX INFO: compiled from: DirectedMultiNetworkConnections.java */
/* JADX INFO: loaded from: classes3.dex */
final class u<N, E> extends m<N, E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient Reference<c2<N>> f3871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient Reference<c2<N>> f3872e;

    /* JADX INFO: compiled from: DirectedMultiNetworkConnections.java */
    class a extends g0<E> {
        final /* synthetic */ Object c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Map map, Object obj, Object obj2) {
            super(map, obj);
            this.c = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return u.this.q().K(this.c);
        }
    }

    private u(Map<E, N> map, Map<E, N> map2, int i) {
        super(map, map2, i);
    }

    private static <T> T m(Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    static <N, E> u<N, E> n() {
        return new u<>(new HashMap(2, 1.0f), new HashMap(2, 1.0f), 0);
    }

    static <N, E> u<N, E> o(Map<E, N> map, Map<E, N> map2, int i) {
        return new u<>(ImmutableMap.copyOf((Map) map), ImmutableMap.copyOf((Map) map2), i);
    }

    private c2<N> p() {
        c2<N> c2Var = (c2) m(this.f3871d);
        if (c2Var != null) {
            return c2Var;
        }
        HashMultiset hashMultisetCreate = HashMultiset.create(this.a.values());
        this.f3871d = new SoftReference(hashMultisetCreate);
        return hashMultisetCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c2<N> q() {
        c2<N> c2Var = (c2) m(this.f3872e);
        if (c2Var != null) {
            return c2Var;
        }
        HashMultiset hashMultisetCreate = HashMultiset.create(this.b.values());
        this.f3872e = new SoftReference(hashMultisetCreate);
        return hashMultisetCreate;
    }

    @Override // com.google.common.graph.l0
    public Set<N> a() {
        return Collections.unmodifiableSet(q().k());
    }

    @Override // com.google.common.graph.l0
    public Set<N> b() {
        return Collections.unmodifiableSet(p().k());
    }

    @Override // com.google.common.graph.m, com.google.common.graph.l0
    public void d(E e2, N n) {
        super.d(e2, n);
        c2 c2Var = (c2) m(this.f3872e);
        if (c2Var != null) {
            Preconditions.checkState(c2Var.add(n));
        }
    }

    @Override // com.google.common.graph.m, com.google.common.graph.l0
    public void e(E e2, N n, boolean z) {
        super.e(e2, n, z);
        c2 c2Var = (c2) m(this.f3871d);
        if (c2Var != null) {
            Preconditions.checkState(c2Var.add(n));
        }
    }

    @Override // com.google.common.graph.l0
    public Set<E> j(N n) {
        return new a(this.b, n, n);
    }
}
