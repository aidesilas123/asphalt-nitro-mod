package com.google.common.graph;

import java.util.Set;

/* JADX INFO: compiled from: AbstractGraph.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class n<N> extends l<N> implements b0<N> {
    @Override // com.google.common.graph.l, com.google.common.graph.s
    public /* bridge */ /* synthetic */ Set b() {
        return super.b();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return d() == b0Var.d() && i().equals(b0Var.i()) && b().equals(b0Var.b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set h(Object obj) {
        return super.h(obj);
    }

    public final int hashCode() {
        return b().hashCode();
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
        String strValueOf2 = String.valueOf(b());
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
