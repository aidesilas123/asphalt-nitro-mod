package com.google.common.graph;

import com.google.common.base.Functions;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class ImmutableGraph<N> extends y<N> {
    private final s<N> a;

    ImmutableGraph(s<N> sVar) {
        this.a = sVar;
    }

    private static <N> c0<N, GraphConstants$Presence> C(b0<N> b0Var, N n) {
        com.google.common.base.f fVarConstant = Functions.constant(GraphConstants$Presence.EDGE_EXISTS);
        return b0Var.d() ? t.t(n, b0Var.h(n), fVarConstant) : s0.j(Maps.asMap(b0Var.g(n), fVarConstant));
    }

    private static <N> ImmutableMap<N, c0<N, GraphConstants$Presence>> D(b0<N> b0Var) {
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        for (N n : b0Var.i()) {
            bVarBuilder.g(n, C(b0Var, n));
        }
        return bVarBuilder.d();
    }

    @Deprecated
    public static <N> ImmutableGraph<N> copyOf(ImmutableGraph<N> immutableGraph) {
        return (ImmutableGraph) Preconditions.checkNotNull(immutableGraph);
    }

    public static <N> ImmutableGraph<N> copyOf(b0<N> b0Var) {
        return b0Var instanceof ImmutableGraph ? (ImmutableGraph) b0Var : new ImmutableGraph<>(new q0(GraphBuilder.from(b0Var), D(b0Var), b0Var.b().size()));
    }

    @Override // com.google.common.graph.y
    s<N> B() {
        return this.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.y, com.google.common.graph.s, com.google.common.graph.r0
    public /* bridge */ /* synthetic */ Set a(Object obj) {
        return super.a(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.y, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set c(Object obj) {
        return super.c(obj);
    }

    @Override // com.google.common.graph.y, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ boolean d() {
        return super.d();
    }

    @Override // com.google.common.graph.y, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ ElementOrder e() {
        return super.e();
    }

    @Override // com.google.common.graph.y, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ boolean f() {
        return super.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.y, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set g(Object obj) {
        return super.g(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.y, com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set h(Object obj) {
        return super.h(obj);
    }

    @Override // com.google.common.graph.y, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set i() {
        return super.i();
    }

    @Override // com.google.common.graph.y, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> j() {
        return ElementOrder.stable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.y, com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ int l(Object obj) {
        return super.l(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.y, com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ int m(Object obj) {
        return super.m(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.y, com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s
    public /* bridge */ /* synthetic */ int n(Object obj) {
        return super.n(obj);
    }
}
