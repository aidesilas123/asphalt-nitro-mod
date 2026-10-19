package com.google.common.graph;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.graph.ElementOrder;

/* JADX INFO: loaded from: classes3.dex */
public final class GraphBuilder<N> extends o<N> {
    private GraphBuilder(boolean z) {
        super(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N1 extends N> GraphBuilder<N1> c() {
        return this;
    }

    public static GraphBuilder<Object> directed() {
        return new GraphBuilder<>(true);
    }

    public static <N> GraphBuilder<N> from(b0<N> b0Var) {
        return new GraphBuilder(b0Var.d()).a(b0Var.f()).f(b0Var.e()).e(b0Var.j());
    }

    public static GraphBuilder<Object> undirected() {
        return new GraphBuilder<>(false);
    }

    public GraphBuilder<N> a(boolean z) {
        this.b = z;
        return this;
    }

    public <N1 extends N> h0<N1> b() {
        return new m0(this);
    }

    public GraphBuilder<N> d(int i) {
        this.f3858e = Optional.of(Integer.valueOf(Graphs.b(i)));
        return this;
    }

    public <N1 extends N> GraphBuilder<N1> e(ElementOrder<N1> elementOrder) {
        Preconditions.checkArgument(elementOrder.d() == ElementOrder.Type.UNORDERED || elementOrder.d() == ElementOrder.Type.STABLE, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable().", elementOrder);
        GraphBuilder<N1> graphBuilderC = c();
        graphBuilderC.f3857d = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return graphBuilderC;
    }

    public <N1 extends N> GraphBuilder<N1> f(ElementOrder<N1> elementOrder) {
        GraphBuilder<N1> graphBuilderC = c();
        graphBuilderC.c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return graphBuilderC;
    }
}
