package com.google.common.collect;

import com.google.common.collect.p2;
import java.util.Map;

/* JADX INFO: compiled from: RegularImmutableBiMap.java */
/* JADX INFO: loaded from: classes3.dex */
final class n2<K, V> extends ImmutableBiMap<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final n2<Object, Object> f3809e = new n2<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final transient Object f3810f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient Object[] f3811g;
    private final transient int h;
    private final transient int i;
    private final transient n2<V, K> j;

    /* JADX WARN: Multi-variable type inference failed */
    private n2() {
        this.f3810f = null;
        this.f3811g = new Object[0];
        this.h = 0;
        this.i = 0;
        this.j = this;
    }

    private n2(Object obj, Object[] objArr, int i, n2<V, K> n2Var) {
        this.f3810f = obj;
        this.f3811g = objArr;
        this.h = 1;
        this.i = i;
        this.j = n2Var;
    }

    n2(Object[] objArr, int i) {
        this.f3811g = objArr;
        this.i = i;
        this.h = 0;
        int iV = i >= 2 ? ImmutableSet.v(i) : 0;
        this.f3810f = p2.s(objArr, i, iV, 0);
        this.j = new n2<>(p2.s(objArr, i, iV, 1), objArr, i, this);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> c() {
        return new p2.a(this, this.f3811g, this.h, this.i);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> d() {
        return new p2.b(this, new p2.c(this.f3811g, this.h, this.i));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        V v = (V) p2.t(this.f3810f, this.f3811g, this.i, this.h, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean j() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.w
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public ImmutableBiMap<V, K> M() {
        return this.j;
    }

    @Override // java.util.Map
    public int size() {
        return this.i;
    }
}
