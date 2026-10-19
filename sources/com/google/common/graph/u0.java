package com.google.common.graph;

import com.google.common.collect.HashBiMap;
import com.google.common.collect.ImmutableBiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: UndirectedNetworkConnections.java */
/* JADX INFO: loaded from: classes3.dex */
final class u0<N, E> extends q<N, E> {
    u0(Map<E, N> map) {
        super(map);
    }

    static <N, E> u0<N, E> k() {
        return new u0<>(HashBiMap.create(2));
    }

    static <N, E> u0<N, E> l(Map<E, N> map) {
        return new u0<>(ImmutableBiMap.copyOf((Map) map));
    }

    @Override // com.google.common.graph.l0
    public Set<N> c() {
        return Collections.unmodifiableSet(((com.google.common.collect.w) this.a).values());
    }

    @Override // com.google.common.graph.l0
    public Set<E> j(N n) {
        return new w(((com.google.common.collect.w) this.a).M(), n);
    }
}
