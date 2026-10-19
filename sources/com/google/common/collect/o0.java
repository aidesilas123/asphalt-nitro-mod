package com.google.common.collect;

import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: FilteredEntrySetMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
final class o0<K, V> extends n0<K, V> implements t0<K, V> {
    o0(z2<K, V> z2Var, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        super(z2Var, kVar);
    }

    @Override // com.google.common.collect.n0, com.google.common.collect.b2, com.google.common.collect.z1
    public Set<V> a(Object obj) {
        return (Set) super.a(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public Set<Map.Entry<K, V>> f() {
        return (Set) super.f();
    }

    @Override // com.google.common.collect.n0, com.google.common.collect.b2, com.google.common.collect.z1
    public Set<V> get(K k) {
        return (Set) super.get((Object) k);
    }

    @Override // com.google.common.collect.n0, com.google.common.collect.s0
    public z2<K, V> i() {
        return (z2) this.f3805d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.n0, com.google.common.collect.j
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Set<Map.Entry<K, V>> d() {
        return Sets.filter(i().f(), y());
    }
}
