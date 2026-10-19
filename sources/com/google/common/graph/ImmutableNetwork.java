package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmutableNetwork<N, E> extends p0<N, E> {
    private ImmutableNetwork(k0<N, E> k0Var) {
        super(NetworkBuilder.from(k0Var), I(k0Var), H(k0Var));
    }

    private static <N, E> com.google.common.base.f<E, N> E(final k0<N, E> k0Var, final N n) {
        return new com.google.common.base.f() { // from class: com.google.common.graph.g
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return k0Var.s(obj).a(n);
            }
        };
    }

    private static <N, E> l0<N, E> G(k0<N, E> k0Var, N n) {
        if (!k0Var.d()) {
            Map mapAsMap = Maps.asMap(k0Var.h(n), E(k0Var, n));
            return k0Var.q() ? t0.o(mapAsMap) : u0.l(mapAsMap);
        }
        Map mapAsMap2 = Maps.asMap(k0Var.w(n), M(k0Var));
        Map mapAsMap3 = Maps.asMap(k0Var.o(n), N(k0Var));
        int size = k0Var.p(n, n).size();
        return k0Var.q() ? u.o(mapAsMap2, mapAsMap3, size) : v.m(mapAsMap2, mapAsMap3, size);
    }

    private static <N, E> Map<E, N> H(k0<N, E> k0Var) {
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        for (E e2 : k0Var.b()) {
            bVarBuilder.g(e2, k0Var.s(e2).g());
        }
        return bVarBuilder.d();
    }

    private static <N, E> Map<N, l0<N, E>> I(k0<N, E> k0Var) {
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        for (N n : k0Var.i()) {
            bVarBuilder.g(n, G(k0Var, n));
        }
        return bVarBuilder.d();
    }

    private static <N, E> com.google.common.base.f<E, N> M(final k0<N, E> k0Var) {
        return new com.google.common.base.f() { // from class: com.google.common.graph.i
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return k0Var.s(obj).l();
            }
        };
    }

    private static <N, E> com.google.common.base.f<E, N> N(final k0<N, E> k0Var) {
        return new com.google.common.base.f() { // from class: com.google.common.graph.h
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return k0Var.s(obj).n();
            }
        };
    }

    @Deprecated
    public static <N, E> ImmutableNetwork<N, E> copyOf(ImmutableNetwork<N, E> immutableNetwork) {
        return (ImmutableNetwork) Preconditions.checkNotNull(immutableNetwork);
    }

    public static <N, E> ImmutableNetwork<N, E> copyOf(k0<N, E> k0Var) {
        return k0Var instanceof ImmutableNetwork ? (ImmutableNetwork) k0Var : new ImmutableNetwork<>(k0Var);
    }

    @Override // com.google.common.graph.p, com.google.common.graph.k0
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public ImmutableGraph<N> t() {
        return new ImmutableGraph<>(super.t());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.p0, com.google.common.graph.k0, com.google.common.graph.r0
    public /* bridge */ /* synthetic */ Set a(Object obj) {
        return super.a(obj);
    }

    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set b() {
        return super.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set c(Object obj) {
        return super.c(obj);
    }

    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ boolean d() {
        return super.d();
    }

    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ ElementOrder e() {
        return super.e();
    }

    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ boolean f() {
        return super.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set g(Object obj) {
        return super.g(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set h(Object obj) {
        return super.h(obj);
    }

    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set i() {
        return super.i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set o(Object obj) {
        return super.o(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set p(Object obj, Object obj2) {
        return super.p(obj, obj2);
    }

    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ boolean q() {
        return super.q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ EndpointPair s(Object obj) {
        return super.s(obj);
    }

    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ ElementOrder v() {
        return super.v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.p0, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set w(Object obj) {
        return super.w(obj);
    }
}
