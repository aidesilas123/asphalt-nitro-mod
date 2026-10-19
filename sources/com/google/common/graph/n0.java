package com.google.common.graph;

import com.google.common.base.Preconditions;

/* JADX INFO: compiled from: StandardMutableNetwork.java */
/* JADX INFO: loaded from: classes3.dex */
final class n0<N, E> extends p0<N, E> implements i0<N, E> {
    n0(NetworkBuilder<? super N, ? super E> networkBuilder) {
        super(networkBuilder);
    }

    private l0<N, E> E(N n) {
        l0<N, E> l0VarF = F();
        Preconditions.checkState(this.f3862f.h(n, l0VarF) == null);
        return l0VarF;
    }

    private l0<N, E> F() {
        return d() ? q() ? u.n() : v.l() : q() ? t0.n() : u0.k();
    }

    @Override // com.google.common.graph.i0
    public boolean k(N n) {
        Preconditions.checkNotNull(n, "node");
        if (D(n)) {
            return false;
        }
        E(n);
        return true;
    }

    @Override // com.google.common.graph.i0
    public boolean y(N n, N n2, E e2) {
        Preconditions.checkNotNull(n, "nodeU");
        Preconditions.checkNotNull(n2, "nodeV");
        Preconditions.checkNotNull(e2, "edge");
        if (C(e2)) {
            EndpointPair<N> endpointPairS = s(e2);
            EndpointPair endpointPairJ = EndpointPair.j(this, n, n2);
            Preconditions.checkArgument(endpointPairS.equals(endpointPairJ), "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s.", e2, endpointPairS, endpointPairJ);
            return false;
        }
        l0<N, E> l0VarE = this.f3862f.e(n);
        if (!q()) {
            Preconditions.checkArgument(l0VarE == null || !l0VarE.a().contains(n2), "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder.", n, n2);
        }
        boolean zEquals = n.equals(n2);
        if (!f()) {
            Preconditions.checkArgument(!zEquals, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.", n);
        }
        if (l0VarE == null) {
            l0VarE = E(n);
        }
        l0VarE.d(e2, n2);
        l0<N, E> l0VarE2 = this.f3862f.e(n2);
        if (l0VarE2 == null) {
            l0VarE2 = E(n2);
        }
        l0VarE2.e(e2, n, zEquals);
        this.f3863g.h(e2, n);
        return true;
    }
}
