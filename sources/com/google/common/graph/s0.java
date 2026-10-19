package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterators;
import com.google.common.graph.ElementOrder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: UndirectedGraphConnections.java */
/* JADX INFO: loaded from: classes3.dex */
final class s0<N, V> implements c0<N, V> {
    private final Map<N, V> a;

    /* JADX INFO: compiled from: UndirectedGraphConnections.java */
    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            a = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private s0(Map<N, V> map) {
        this.a = (Map) Preconditions.checkNotNull(map);
    }

    static <N, V> s0<N, V> i(ElementOrder<N> elementOrder) {
        int i = a.a[elementOrder.d().ordinal()];
        if (i == 1) {
            return new s0<>(new HashMap(2, 1.0f));
        }
        if (i == 2) {
            return new s0<>(new LinkedHashMap(2, 1.0f));
        }
        throw new AssertionError(elementOrder.d());
    }

    static <N, V> s0<N, V> j(Map<N, V> map) {
        return new s0<>(ImmutableMap.copyOf((Map) map));
    }

    @Override // com.google.common.graph.c0
    public Set<N> a() {
        return c();
    }

    @Override // com.google.common.graph.c0
    public Set<N> b() {
        return c();
    }

    @Override // com.google.common.graph.c0
    public Set<N> c() {
        return Collections.unmodifiableSet(this.a.keySet());
    }

    @Override // com.google.common.graph.c0
    public V d(N n) {
        return this.a.get(n);
    }

    @Override // com.google.common.graph.c0
    public Iterator<EndpointPair<N>> e(final N n) {
        return Iterators.transform(this.a.keySet().iterator(), new com.google.common.base.f() { // from class: com.google.common.graph.k
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return EndpointPair.unordered(n, obj);
            }
        });
    }

    @Override // com.google.common.graph.c0
    public V f(N n, V v) {
        return this.a.put(n, v);
    }

    @Override // com.google.common.graph.c0
    public void g(N n, V v) {
        f(n, v);
    }
}
