package com.google.common.graph;

import java.util.Set;

/* JADX INFO: compiled from: ForwardingGraph.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class y<N> extends n<N> {
    y() {
    }

    abstract s<N> B();

    @Override // com.google.common.graph.r0
    public Set<N> a(N n) {
        return B().a((Object) n);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<N> c(N n) {
        return B().c(n);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public boolean d() {
        return B().d();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> e() {
        return B().e();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public boolean f() {
        return B().f();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<N> g(N n) {
        return B().g(n);
    }

    @Override // com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public Set<EndpointPair<N>> h(N n) {
        return B().h(n);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<N> i() {
        return B().i();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> j() {
        return B().j();
    }

    @Override // com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public int l(N n) {
        return B().l(n);
    }

    @Override // com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public int m(N n) {
        return B().m(n);
    }

    @Override // com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s
    public int n(N n) {
        return B().n(n);
    }

    @Override // com.google.common.graph.l
    protected long z() {
        return B().b().size();
    }
}
