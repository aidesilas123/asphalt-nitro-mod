package com.google.common.graph;

import java.util.Set;

/* JADX INFO: compiled from: BaseGraph.java */
/* JADX INFO: loaded from: classes3.dex */
interface s<N> extends r0<N> {
    @Override // com.google.common.graph.r0
    Set<N> a(N n);

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

    int n(N n);
}
