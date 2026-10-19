package com.google.common.graph;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkBuilder<N, E> extends o<N> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f3851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ElementOrder<? super E> f3852g;
    Optional<Integer> h;

    private NetworkBuilder(boolean z) {
        super(z);
        this.f3851f = false;
        this.f3852g = ElementOrder.insertion();
        this.h = Optional.absent();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N1 extends N, E1 extends E> NetworkBuilder<N1, E1> d() {
        return this;
    }

    public static NetworkBuilder<Object, Object> directed() {
        return new NetworkBuilder<>(true);
    }

    public static <N, E> NetworkBuilder<N, E> from(k0<N, E> k0Var) {
        return new NetworkBuilder(k0Var.d()).a(k0Var.q()).b(k0Var.f()).h(k0Var.e()).e(k0Var.v());
    }

    public static NetworkBuilder<Object, Object> undirected() {
        return new NetworkBuilder<>(false);
    }

    public NetworkBuilder<N, E> a(boolean z) {
        this.f3851f = z;
        return this;
    }

    public NetworkBuilder<N, E> b(boolean z) {
        this.b = z;
        return this;
    }

    public <N1 extends N, E1 extends E> i0<N1, E1> c() {
        return new n0(this);
    }

    public <E1 extends E> NetworkBuilder<N, E1> e(ElementOrder<E1> elementOrder) {
        NetworkBuilder<N, E1> networkBuilder = (NetworkBuilder<N, E1>) d();
        networkBuilder.f3852g = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return networkBuilder;
    }

    public NetworkBuilder<N, E> f(int i) {
        this.h = Optional.of(Integer.valueOf(Graphs.b(i)));
        return this;
    }

    public NetworkBuilder<N, E> g(int i) {
        this.f3858e = Optional.of(Integer.valueOf(Graphs.b(i)));
        return this;
    }

    public <N1 extends N> NetworkBuilder<N1, E> h(ElementOrder<N1> elementOrder) {
        NetworkBuilder<N1, E> networkBuilder = (NetworkBuilder<N1, E>) d();
        networkBuilder.c = (ElementOrder) Preconditions.checkNotNull(elementOrder);
        return networkBuilder;
    }
}
