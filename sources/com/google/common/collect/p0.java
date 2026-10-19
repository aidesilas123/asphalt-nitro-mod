package com.google.common.collect;

import java.util.List;

/* JADX INFO: compiled from: FilteredKeyListMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
final class p0<K, V> extends q0<K, V> implements z1<K, V> {
    p0(z1<K, V> z1Var, com.google.common.base.k<? super K> kVar) {
        super(z1Var, kVar);
    }

    @Override // com.google.common.collect.q0, com.google.common.collect.b2, com.google.common.collect.z1
    public List<V> a(Object obj) {
        return (List) super.a(obj);
    }

    @Override // com.google.common.collect.q0, com.google.common.collect.b2, com.google.common.collect.z1
    public List<V> get(K k) {
        return (List) super.get((Object) k);
    }

    @Override // com.google.common.collect.q0, com.google.common.collect.s0
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public z1<K, V> i() {
        return (z1) super.i();
    }
}
