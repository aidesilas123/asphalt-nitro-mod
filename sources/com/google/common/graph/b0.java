package com.google.common.graph;

import java.util.Set;

/* JADX INFO: compiled from: Graph.java */
/* JADX INFO: loaded from: classes3.dex */
public interface b0<N> extends s<N> {
    @Override // com.google.common.graph.s, com.google.common.graph.r0
    Set<N> a(N n);

    @Override // com.google.common.graph.s
    Set<EndpointPair<N>> b();

    Set<N> c(N n);

    boolean d();

    ElementOrder<N> e();

    boolean f();

    Set<N> g(N n);

    Set<EndpointPair<N>> h(N n);

    Set<N> i();

    ElementOrder<N> j();

    int l(N n);

    int m(N n);
}
