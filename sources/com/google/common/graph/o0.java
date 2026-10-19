package com.google.common.graph;

import com.google.common.base.Preconditions;

/* JADX INFO: compiled from: StandardMutableValueGraph.java */
/* JADX INFO: loaded from: classes3.dex */
final class o0<N, V> extends q0<N, V> implements j0<N, V> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ElementOrder<N> f3859f;

    o0(o<? super N> oVar) {
        super(oVar);
        this.f3859f = (ElementOrder<N>) oVar.f3857d.a();
    }

    private c0<N, V> F(N n) {
        c0<N, V> c0VarG = G();
        Preconditions.checkState(this.f3864d.h(n, c0VarG) == null);
        return c0VarG;
    }

    private c0<N, V> G() {
        return d() ? t.s(this.f3859f) : s0.i(this.f3859f);
    }

    @Override // com.google.common.graph.r, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> j() {
        return this.f3859f;
    }

    @Override // com.google.common.graph.j0
    public boolean k(N n) {
        Preconditions.checkNotNull(n, "node");
        if (D(n)) {
            return false;
        }
        F(n);
        return true;
    }

    @Override // com.google.common.graph.j0
    public V x(N n, N n2, V v) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        Preconditions.checkNotNull(v, "value");
        if (!f()) {
            Preconditions.checkArgument(!n.equals(n2), "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.", n);
        }
        c0<N, V> c0VarE = this.f3864d.e(n);
        if (c0VarE == null) {
            c0VarE = F(n);
        }
        V vF = c0VarE.f(n2, v);
        c0<N, V> c0VarE2 = this.f3864d.e(n2);
        if (c0VarE2 == null) {
            c0VarE2 = F(n2);
        }
        c0VarE2.g(n, v);
        if (vF == null) {
            long j = this.f3865e + 1;
            this.f3865e = j;
            Graphs.e(j);
        }
        return vF;
    }
}
