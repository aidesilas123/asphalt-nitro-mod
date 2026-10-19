package com.google.common.graph;

import java.util.Set;

/* JADX INFO: compiled from: ForwardingValueGraph.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class a0<N, V> extends r<N, V> {
    a0() {
    }

    abstract v0<N, V> C();

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public boolean d() {
        return C().d();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> e() {
        return C().e();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public boolean f() {
        return C().f();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<N> g(N n) {
        return C().g(n);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<N> i() {
        return C().i();
    }

    @Override // com.google.common.graph.r, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> j() {
        return C().j();
    }

    @Override // com.google.common.graph.r, com.google.common.graph.l, com.google.common.graph.s
    public int n(N n) {
        return C().n(n);
    }

    @Override // com.google.common.graph.l
    protected long z() {
        return C().b().size();
    }
}
