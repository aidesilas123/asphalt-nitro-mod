package com.google.common.graph;

import java.util.AbstractSet;
import java.util.Set;

/* JADX INFO: compiled from: IncidentEdgeSet.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class d0<N> extends AbstractSet<EndpointPair<N>> {
    final N a;
    final s<N> b;

    d0(s<N> sVar, N n) {
        this.b = sVar;
        this.a = n;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (!(obj instanceof EndpointPair)) {
            return false;
        }
        EndpointPair endpointPair = (EndpointPair) obj;
        if (this.b.d()) {
            if (!endpointPair.e()) {
                return false;
            }
            Object objL = endpointPair.l();
            Object objN = endpointPair.n();
            return (this.a.equals(objL) && this.b.a((Object) this.a).contains(objN)) || (this.a.equals(objN) && this.b.c(this.a).contains(objL));
        }
        if (endpointPair.e()) {
            return false;
        }
        Set<N> setG = this.b.g(this.a);
        Object objG = endpointPair.g();
        Object objH = endpointPair.h();
        return (this.a.equals(objH) && setG.contains(objG)) || (this.a.equals(objG) && setG.contains(objH));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.b.d() ? (this.b.m(this.a) + this.b.l(this.a)) - (this.b.a((Object) this.a).contains(this.a) ? 1 : 0) : this.b.g(this.a).size();
    }
}
