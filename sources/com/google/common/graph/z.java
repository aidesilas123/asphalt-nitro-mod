package com.google.common.graph;

import java.util.Set;

/* JADX INFO: compiled from: ForwardingNetwork.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class z<N, E> extends p<N, E> {
    z() {
    }

    abstract k0<N, E> A();

    @Override // com.google.common.graph.k0
    public Set<E> b() {
        return A().b();
    }

    @Override // com.google.common.graph.k0
    public boolean d() {
        return A().d();
    }

    @Override // com.google.common.graph.k0
    public ElementOrder<N> e() {
        return A().e();
    }

    @Override // com.google.common.graph.k0
    public boolean f() {
        return A().f();
    }

    @Override // com.google.common.graph.k0
    public Set<N> g(N n) {
        return A().g(n);
    }

    @Override // com.google.common.graph.k0
    public Set<E> h(N n) {
        return A().h(n);
    }

    @Override // com.google.common.graph.k0
    public Set<N> i() {
        return A().i();
    }

    @Override // com.google.common.graph.k0
    public boolean q() {
        return A().q();
    }

    @Override // com.google.common.graph.k0
    public ElementOrder<E> v() {
        return A().v();
    }
}
