package com.google.common.graph;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ElementOrder;

/* JADX INFO: loaded from: classes3.dex */
public final class ValueGraphBuilder<N, V> extends o<N> {
    private ValueGraphBuilder(boolean z) {
        super(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N1 extends N, V1 extends V> ValueGraphBuilder<N1, V1> c() {
        return this;
    }

    public static ValueGraphBuilder<Object, Object> directed() {
        return new ValueGraphBuilder<>(true);
    }

    public static <N, V> ValueGraphBuilder<N, V> from(v0<N, V> v0Var) {
        return new ValueGraphBuilder(v0Var.d()).a(v0Var.f()).f(v0Var.e()).e(v0Var.j());
    }

    public static ValueGraphBuilder<Object, Object> undirected() {
        return new ValueGraphBuilder<>(false);
    }

    public ValueGraphBuilder<N, V> a(boolean z) {
        this.b = z;
        return this;
    }

    public <N1 extends N, V1 extends V> j0<N1, V1> b() {
        return new o0(this);
    }

    public ValueGraphBuilder<N, V> d(int i) {
        this.f3858e = Optional.of(Integer.valueOf(Graphs.b(i)));
        return this;
    }

    public <N1 extends N> ValueGraphBuilder<N1, V> e(ElementOrder<N1> elementOrder) {
        Preconditions.checkArgument(elementOrder.d() == ElementOrder.Type.UNORDERED || elementOrder.d() == ElementOrder.Type.STABLE, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable().", elementOrder);
        ValueGraphBuilder<N1, V> valueGraphBuilder = (ValueGraphBuilder<N1, V>) c();
        valueGraphBuilder.f3857d = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return valueGraphBuilder;
    }

    public <N1 extends N> ValueGraphBuilder<N1, V> f(ElementOrder<N1> elementOrder) {
        ValueGraphBuilder<N1, V> valueGraphBuilder = (ValueGraphBuilder<N1, V>) c();
        valueGraphBuilder.c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return valueGraphBuilder;
    }
}
