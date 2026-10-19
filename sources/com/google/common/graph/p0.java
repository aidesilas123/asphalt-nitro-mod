package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: StandardNetwork.java */
/* JADX INFO: loaded from: classes3.dex */
class p0<N, E> extends p<N, E> {
    private final boolean a;
    private final boolean b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ElementOrder<N> f3860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ElementOrder<E> f3861e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final e0<N, l0<N, E>> f3862f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final e0<E, N> f3863g;

    p0(NetworkBuilder<? super N, ? super E> networkBuilder) {
        this(networkBuilder, networkBuilder.c.c(networkBuilder.f3858e.e(10).intValue()), networkBuilder.f3852g.c(networkBuilder.h.e(20).intValue()));
    }

    p0(NetworkBuilder<? super N, ? super E> networkBuilder, Map<N, l0<N, E>> map, Map<E, N> map2) {
        this.a = networkBuilder.a;
        this.b = networkBuilder.f3851f;
        this.c = networkBuilder.b;
        this.f3860d = (ElementOrder<N>) networkBuilder.c.a();
        this.f3861e = (ElementOrder<E>) networkBuilder.f3852g.a();
        this.f3862f = map instanceof TreeMap ? new f0<>(map) : new e0<>(map);
        this.f3863g = new e0<>(map2);
    }

    final l0<N, E> A(N n) {
        l0<N, E> l0VarE = this.f3862f.e(n);
        if (l0VarE != null) {
            return l0VarE;
        }
        Preconditions.checkNotNull(n);
        throw new IllegalArgumentException(String.format("Node %s is not an element of this graph.", n));
    }

    final N B(E e2) {
        N nE = this.f3863g.e(e2);
        if (nE != null) {
            return nE;
        }
        Preconditions.checkNotNull(e2);
        throw new IllegalArgumentException(String.format("Edge %s is not an element of this graph.", e2));
    }

    final boolean C(E e2) {
        return this.f3863g.d(e2);
    }

    final boolean D(N n) {
        return this.f3862f.d(n);
    }

    @Override // com.google.common.graph.r0
    public Set<N> a(N n) {
        return A(n).a();
    }

    @Override // com.google.common.graph.k0
    public Set<E> b() {
        return this.f3863g.i();
    }

    @Override // com.google.common.graph.k0
    public Set<N> c(N n) {
        return A(n).b();
    }

    @Override // com.google.common.graph.k0
    public boolean d() {
        return this.a;
    }

    @Override // com.google.common.graph.k0
    public ElementOrder<N> e() {
        return this.f3860d;
    }

    @Override // com.google.common.graph.k0
    public boolean f() {
        return this.c;
    }

    @Override // com.google.common.graph.k0
    public Set<N> g(N n) {
        return A(n).c();
    }

    @Override // com.google.common.graph.k0
    public Set<E> h(N n) {
        return A(n).f();
    }

    @Override // com.google.common.graph.k0
    public Set<N> i() {
        return this.f3862f.i();
    }

    @Override // com.google.common.graph.k0
    public Set<E> o(N n) {
        return A(n).i();
    }

    @Override // com.google.common.graph.k0
    public Set<E> p(N n, N n2) {
        l0<N, E> l0VarA = A(n);
        if (!this.c && n == n2) {
            return ImmutableSet.of();
        }
        Preconditions.checkArgument(D(n2), "Node %s is not an element of this graph.", n2);
        return l0VarA.j(n2);
    }

    @Override // com.google.common.graph.k0
    public boolean q() {
        return this.b;
    }

    @Override // com.google.common.graph.k0
    public EndpointPair<N> s(E e2) {
        N nB = B(e2);
        l0<N, E> l0VarE = this.f3862f.e(nB);
        Objects.requireNonNull(l0VarE);
        return EndpointPair.j(this, nB, l0VarE.g(e2));
    }

    @Override // com.google.common.graph.k0
    public ElementOrder<E> v() {
        return this.f3861e;
    }

    @Override // com.google.common.graph.k0
    public Set<E> w(N n) {
        return A(n).h();
    }
}
