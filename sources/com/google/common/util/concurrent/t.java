package com.google.common.util.concurrent;

import com.google.common.collect.Lists;
import com.google.common.collect.n1;
import com.google.common.util.concurrent.AggregateFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: CollectionFuture.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class t<V, C> extends AggregateFuture<V, C> {
    private List<b<V>> p;

    /* JADX INFO: compiled from: CollectionFuture.java */
    static final class a<V> extends t<V, List<V>> {
        a(n1<? extends h0<? extends V>> n1Var, boolean z) {
            super(n1Var, z);
            S();
        }

        @Override // com.google.common.util.concurrent.t
        /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
        public List<V> a0(List<b<V>> list) {
            ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(list.size());
            Iterator<b<V>> it = list.iterator();
            while (it.hasNext()) {
                b<V> next = it.next();
                arrayListNewArrayListWithCapacity.add(next != null ? next.a : null);
            }
            return Collections.unmodifiableList(arrayListNewArrayListWithCapacity);
        }
    }

    /* JADX INFO: compiled from: CollectionFuture.java */
    private static final class b<V> {
        V a;

        b(V v) {
            this.a = v;
        }
    }

    t(n1<? extends h0<? extends V>> n1Var, boolean z) {
        super(n1Var, z, true);
        List<b<V>> listEmptyList = n1Var.isEmpty() ? Collections.emptyList() : Lists.newArrayListWithCapacity(n1Var.size());
        for (int i = 0; i < n1Var.size(); i++) {
            listEmptyList.add(null);
        }
        this.p = listEmptyList;
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    final void N(int i, V v) {
        List<b<V>> list = this.p;
        if (list != null) {
            list.set(i, new b<>(v));
        }
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    final void Q() {
        List<b<V>> list = this.p;
        if (list != null) {
            B(a0(list));
        }
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    void Z(AggregateFuture.ReleaseResourcesReason releaseResourcesReason) {
        super.Z(releaseResourcesReason);
        this.p = null;
    }

    abstract C a0(List<b<V>> list);
}
