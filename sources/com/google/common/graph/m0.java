package com.google.common.graph;

/* JADX INFO: compiled from: StandardMutableGraph.java */
/* JADX INFO: loaded from: classes3.dex */
final class m0<N> extends y<N> implements h0<N> {
    private final j0<N, GraphConstants$Presence> a;

    m0(o<? super N> oVar) {
        this.a = new o0(oVar);
    }

    @Override // com.google.common.graph.y
    s<N> B() {
        return this.a;
    }

    @Override // com.google.common.graph.h0
    public boolean k(N n) {
        return this.a.k(n);
    }

    @Override // com.google.common.graph.h0
    public boolean u(N n, N n2) {
        return this.a.x(n, n2, GraphConstants$Presence.EDGE_EXISTS) == null;
    }
}
