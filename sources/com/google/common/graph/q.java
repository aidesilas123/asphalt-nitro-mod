package com.google.common.graph;

import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: AbstractUndirectedNetworkConnections.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class q<N, E> implements l0<N, E> {
    final Map<E, N> a;

    q(Map<E, N> map) {
        this.a = (Map) Preconditions.checkNotNull(map);
    }

    @Override // com.google.common.graph.l0
    public Set<N> a() {
        return c();
    }

    @Override // com.google.common.graph.l0
    public Set<N> b() {
        return c();
    }

    @Override // com.google.common.graph.l0
    public void d(E e2, N n) {
        Preconditions.checkState(this.a.put(e2, n) == null);
    }

    @Override // com.google.common.graph.l0
    public void e(E e2, N n, boolean z) {
        if (z) {
            return;
        }
        d(e2, n);
    }

    @Override // com.google.common.graph.l0
    public Set<E> f() {
        return Collections.unmodifiableSet(this.a.keySet());
    }

    @Override // com.google.common.graph.l0
    public N g(E e2) {
        N n = this.a.get(e2);
        Objects.requireNonNull(n);
        return n;
    }

    @Override // com.google.common.graph.l0
    public Set<E> h() {
        return f();
    }

    @Override // com.google.common.graph.l0
    public Set<E> i() {
        return f();
    }
}
