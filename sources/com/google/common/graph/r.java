package com.google.common.graph;

import com.google.common.collect.Maps;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: AbstractValueGraph.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class r<N, V> extends l<N> implements v0<N, V> {

    /* JADX INFO: compiled from: AbstractValueGraph.java */
    class a implements com.google.common.base.f<EndpointPair<N>, V> {
        final /* synthetic */ v0 a;

        a(v0 v0Var) {
            this.a = v0Var;
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public V apply(EndpointPair<N> endpointPair) {
            V v = (V) this.a.r(endpointPair.g(), endpointPair.h(), null);
            Objects.requireNonNull(v);
            return v;
        }
    }

    private static <N, V> Map<EndpointPair<N>, V> B(v0<N, V> v0Var) {
        return Maps.asMap(v0Var.b(), new a(v0Var));
    }

    @Override // com.google.common.graph.l, com.google.common.graph.s
    public /* bridge */ /* synthetic */ Set b() {
        return super.b();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v0)) {
            return false;
        }
        v0 v0Var = (v0) obj;
        return d() == v0Var.d() && i().equals(v0Var.i()) && B(this).equals(B(v0Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set h(Object obj) {
        return super.h(obj);
    }

    public final int hashCode() {
        return B(this).hashCode();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ ElementOrder j() {
        return super.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ int l(Object obj) {
        return super.l(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ int m(Object obj) {
        return super.m(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.s
    public /* bridge */ /* synthetic */ int n(Object obj) {
        return super.n(obj);
    }

    public String toString() {
        boolean zD = d();
        boolean zF = f();
        String strValueOf = String.valueOf(i());
        String strValueOf2 = String.valueOf(B(this));
        StringBuilder sb = new StringBuilder(strValueOf.length() + 59 + strValueOf2.length());
        sb.append("isDirected: ");
        sb.append(zD);
        sb.append(", allowsSelfLoops: ");
        sb.append(zF);
        sb.append(", nodes: ");
        sb.append(strValueOf);
        sb.append(", edges: ");
        sb.append(strValueOf2);
        return sb.toString();
    }
}
