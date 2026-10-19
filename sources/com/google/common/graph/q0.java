package com.google.common.graph;

import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: StandardValueGraph.java */
/* JADX INFO: loaded from: classes3.dex */
class q0<N, V> extends r<N, V> {
    private final boolean a;
    private final boolean b;
    private final ElementOrder<N> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final e0<N, c0<N, V>> f3864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f3865e;

    /* JADX INFO: compiled from: StandardValueGraph.java */
    class a extends d0<N> {
        final /* synthetic */ c0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(q0 q0Var, s sVar, Object obj, c0 c0Var) {
            super(sVar, obj);
            this.c = c0Var;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<EndpointPair<N>> iterator() {
            return this.c.e(this.a);
        }
    }

    q0(o<? super N> oVar) {
        this(oVar, oVar.c.c(oVar.f3858e.e(10).intValue()), 0L);
    }

    q0(o<? super N> oVar, Map<N, c0<N, V>> map, long j) {
        this.a = oVar.a;
        this.b = oVar.b;
        this.c = (ElementOrder<N>) oVar.c.a();
        this.f3864d = map instanceof TreeMap ? new f0<>(map) : new e0<>(map);
        this.f3865e = Graphs.c(j);
    }

    private final c0<N, V> C(N n) {
        c0<N, V> c0VarE = this.f3864d.e(n);
        if (c0VarE != null) {
            return c0VarE;
        }
        Preconditions.checkNotNull(n);
        String strValueOf = String.valueOf(n);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 38);
        sb.append("Node ");
        sb.append(strValueOf);
        sb.append(" is not an element of this graph.");
        throw new IllegalArgumentException(sb.toString());
    }

    private final V E(N n, N n2, V v) {
        c0<N, V> c0VarE = this.f3864d.e(n);
        V vD = c0VarE == null ? null : c0VarE.d(n2);
        return vD == null ? v : vD;
    }

    final boolean D(N n) {
        return this.f3864d.d(n);
    }

    @Override // com.google.common.graph.r0
    public Set<N> a(N n) {
        return C(n).a();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<N> c(N n) {
        return C(n).b();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public boolean d() {
        return this.a;
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> e() {
        return this.c;
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public boolean f() {
        return this.b;
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<N> g(N n) {
        return C(n).c();
    }

    @Override // com.google.common.graph.r, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public Set<EndpointPair<N>> h(N n) {
        return new a(this, this, n, C(n));
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<N> i() {
        return this.f3864d.i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V r(N n, N n2, V v) {
        return (V) E(Preconditions.checkNotNull(n), Preconditions.checkNotNull(n2), v);
    }

    @Override // com.google.common.graph.l
    protected long z() {
        return this.f3865e;
    }
}
