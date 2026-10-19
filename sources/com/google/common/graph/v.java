package com.google.common.graph;

import com.google.common.collect.HashBiMap;
import com.google.common.collect.ImmutableBiMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: DirectedNetworkConnections.java */
/* JADX INFO: loaded from: classes3.dex */
final class v<N, E> extends m<N, E> {
    v(Map<E, N> map, Map<E, N> map2, int i) {
        super(map, map2, i);
    }

    static <N, E> v<N, E> l() {
        return new v<>(HashBiMap.create(2), HashBiMap.create(2), 0);
    }

    static <N, E> v<N, E> m(Map<E, N> map, Map<E, N> map2, int i) {
        return new v<>(ImmutableBiMap.copyOf((Map) map), ImmutableBiMap.copyOf((Map) map2), i);
    }

    @Override // com.google.common.graph.l0
    public Set<N> a() {
        return Collections.unmodifiableSet(((com.google.common.collect.w) this.b).values());
    }

    @Override // com.google.common.graph.l0
    public Set<N> b() {
        return Collections.unmodifiableSet(((com.google.common.collect.w) this.a).values());
    }

    @Override // com.google.common.graph.l0
    public Set<E> j(N n) {
        return new w(((com.google.common.collect.w) this.b).M(), n);
    }
}
