package com.google.common.collect;

import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: FilteredKeySetMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
final class r0<K, V> extends q0<K, V> implements t0<K, V> {

    /* JADX INFO: compiled from: FilteredKeySetMultimap.java */
    class a extends q0<K, V>.c implements Set<Map.Entry<K, V>> {
        a(r0 r0Var) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.b(this);
        }
    }

    r0(z2<K, V> z2Var, com.google.common.base.k<? super K> kVar) {
        super(z2Var, kVar);
    }

    @Override // com.google.common.collect.q0, com.google.common.collect.b2, com.google.common.collect.z1
    public Set<V> a(Object obj) {
        return (Set) super.a(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public Set<Map.Entry<K, V>> f() {
        return (Set) super.f();
    }

    @Override // com.google.common.collect.q0, com.google.common.collect.b2, com.google.common.collect.z1
    public Set<V> get(K k) {
        return (Set) super.get((Object) k);
    }

    @Override // com.google.common.collect.q0, com.google.common.collect.s0
    public z2<K, V> i() {
        return (z2) this.f3826d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.q0, com.google.common.collect.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Set<Map.Entry<K, V>> d() {
        return new a(this);
    }
}
