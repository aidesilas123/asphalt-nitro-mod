package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmutableValueGraph<N, V> extends q0<N, V> {
    private ImmutableValueGraph(v0<N, V> v0Var) {
        super(ValueGraphBuilder.from(v0Var), G(v0Var), v0Var.b().size());
    }

    private static <N, V> c0<N, V> F(final v0<N, V> v0Var, final N n) {
        com.google.common.base.f fVar = new com.google.common.base.f() { // from class: com.google.common.graph.j
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return ImmutableValueGraph.H(v0Var, n, obj);
            }
        };
        return v0Var.d() ? t.t(n, v0Var.h(n), fVar) : s0.j(Maps.asMap(v0Var.g(n), fVar));
    }

    private static <N, V> ImmutableMap<N, c0<N, V>> G(v0<N, V> v0Var) {
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        for (N n : v0Var.i()) {
            bVarBuilder.g(n, F(v0Var, n));
        }
        return bVarBuilder.d();
    }

    static /* synthetic */ Object H(v0 v0Var, Object obj, Object obj2) {
        Object objR = v0Var.r(obj, obj2, null);
        Objects.requireNonNull(objR);
        return objR;
    }

    @Deprecated
    public static <N, V> ImmutableValueGraph<N, V> copyOf(ImmutableValueGraph<N, V> immutableValueGraph) {
        return (ImmutableValueGraph) Preconditions.checkNotNull(immutableValueGraph);
    }

    public static <N, V> ImmutableValueGraph<N, V> copyOf(v0<N, V> v0Var) {
        return v0Var instanceof ImmutableValueGraph ? (ImmutableValueGraph) v0Var : new ImmutableValueGraph<>(v0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.q0, com.google.common.graph.s, com.google.common.graph.r0
    public /* bridge */ /* synthetic */ Set a(Object obj) {
        return super.a(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.q0, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set c(Object obj) {
        return super.c(obj);
    }

    @Override // com.google.common.graph.q0, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ boolean d() {
        return super.d();
    }

    @Override // com.google.common.graph.q0, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ ElementOrder e() {
        return super.e();
    }

    @Override // com.google.common.graph.q0, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ boolean f() {
        return super.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.q0, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set g(Object obj) {
        return super.g(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.q0, com.google.common.graph.r, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set h(Object obj) {
        return super.h(obj);
    }

    @Override // com.google.common.graph.q0, com.google.common.graph.s, com.google.common.graph.b0
    public /* bridge */ /* synthetic */ Set i() {
        return super.i();
    }

    @Override // com.google.common.graph.r, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> j() {
        return ElementOrder.stable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.q0, com.google.common.graph.v0
    public /* bridge */ /* synthetic */ Object r(Object obj, Object obj2, Object obj3) {
        return super.r(obj, obj2, obj3);
    }
}
