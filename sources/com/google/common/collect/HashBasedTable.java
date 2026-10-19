package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class HashBasedTable<R, C, V> extends j3<R, C, V> {
    private static final long serialVersionUID = 0;

    private static class a<C, V> implements com.google.common.base.m<Map<C, V>>, Serializable {
        private static final long serialVersionUID = 0;
        final int a;

        a(int i) {
            this.a = i;
        }

        @Override // com.google.common.base.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Map<C, V> get() {
            return Maps.newLinkedHashMapWithExpectedSize(this.a);
        }
    }

    HashBasedTable(Map<R, Map<C, V>> map, a<C, V> aVar) {
        super(map, aVar);
    }

    public static <R, C, V> HashBasedTable<R, C, V> create() {
        return new HashBasedTable<>(new LinkedHashMap(), new a(0));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(int i, int i2) {
        z.b(i2, "expectedCellsPerRow");
        return new HashBasedTable<>(Maps.newLinkedHashMapWithExpectedSize(i), new a(i2));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(l3<? extends R, ? extends C, ? extends V> l3Var) {
        HashBasedTable<R, C, V> hashBasedTableCreate = create();
        hashBasedTableCreate.k(l3Var);
        return hashBasedTableCreate;
    }

    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Object C(Object obj, Object obj2) {
        return super.C(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Map F(Object obj) {
        return super.F(obj);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s
    public /* bridge */ /* synthetic */ boolean d(Object obj, Object obj2) {
        return super.d(obj, obj2);
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s
    public /* bridge */ /* synthetic */ Object g(Object obj, Object obj2) {
        return super.g(obj, obj2);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Set h() {
        return super.h();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Map j() {
        return super.j();
    }

    @Override // com.google.common.collect.s
    public /* bridge */ /* synthetic */ void k(l3 l3Var) {
        super.k(l3Var);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Map n() {
        return super.n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Map s(Object obj) {
        return super.s(obj);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Set t() {
        return super.t();
    }

    @Override // com.google.common.collect.s
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean u(Object obj) {
        return super.u(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Object v(Object obj, Object obj2, Object obj3) {
        return super.v(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean x(Object obj) {
        return super.x(obj);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Set z() {
        return super.z();
    }
}
