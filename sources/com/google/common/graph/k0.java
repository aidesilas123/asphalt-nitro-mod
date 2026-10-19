package com.google.common.graph;

import java.util.Set;

/* JADX INFO: compiled from: Network.java */
/* JADX INFO: loaded from: classes3.dex */
public interface k0<N, E> extends r0<N> {
    @Override // com.google.common.graph.r0
    Set<N> a(N n);

    Set<E> b();

    Set<N> c(N n);

    boolean d();

    ElementOrder<N> e();

    boolean f();

    Set<N> g(N n);

    Set<E> h(N n);

    Set<N> i();

    Set<E> o(N n);

    Set<E> p(N n, N n2);

    boolean q();

    EndpointPair<N> s(E e2);

    b0<N> t();

    ElementOrder<E> v();

    Set<E> w(N n);
}
