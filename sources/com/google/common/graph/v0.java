package com.google.common.graph;

import java.util.Set;

/* JADX INFO: compiled from: ValueGraph.java */
/* JADX INFO: loaded from: classes3.dex */
public interface v0<N, V> extends s<N> {
    @Override // com.google.common.graph.s, com.google.common.graph.r0
    Set<N> a(N n);

    @Override // com.google.common.graph.s
    Set<EndpointPair<N>> b();

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    Set<N> c(N n);

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    boolean d();

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    ElementOrder<N> e();

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    boolean f();

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    Set<N> g(N n);

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    Set<EndpointPair<N>> h(N n);

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    Set<N> i();

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    ElementOrder<N> j();

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    int l(N n);

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    int m(N n);

    @Override // com.google.common.graph.s
    int n(N n);

    V r(N n, N n2, V v);
}
