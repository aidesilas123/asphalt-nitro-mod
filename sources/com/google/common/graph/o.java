package com.google.common.graph;

import com.google.common.base.Optional;

/* JADX INFO: compiled from: AbstractGraphBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class o<N> {
    final boolean a;
    boolean b = false;
    ElementOrder<N> c = ElementOrder.insertion();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ElementOrder<N> f3857d = ElementOrder.unordered();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Optional<Integer> f3858e = Optional.absent();

    o(boolean z) {
        this.a = z;
    }
}
