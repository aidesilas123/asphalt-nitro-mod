package com.google.common.graph;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: GraphConnections.java */
/* JADX INFO: loaded from: classes3.dex */
interface c0<N, V> {
    Set<N> a();

    Set<N> b();

    Set<N> c();

    V d(N n);

    Iterator<EndpointPair<N>> e(N n);

    V f(N n, V v);

    void g(N n, V v);
}
