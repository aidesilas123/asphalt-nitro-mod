package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements w<K, V> {

    public static final class a<K, V> extends ImmutableMap.b<K, V> {
        public a() {
        }

        a(int i) {
            super(i);
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public ImmutableBiMap<K, V> a() {
            return d();
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @Deprecated
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public ImmutableBiMap<K, V> c() {
            throw new UnsupportedOperationException("Not supported for bimaps");
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ImmutableBiMap<K, V> d() {
            int i = this.c;
            if (i == 0) {
                return ImmutableBiMap.of();
            }
            if (this.a != null) {
                if (this.f3582d) {
                    this.b = Arrays.copyOf(this.b, i * 2);
                }
                ImmutableMap.b.j(this.b, this.c, this.a);
            }
            this.f3582d = true;
            return new n2(this.b, this.c);
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public a<K, V> g(K k, V v) {
            super.g(k, v);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public a<K, V> h(Map.Entry<? extends K, ? extends V> entry) {
            super.h(entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public a<K, V> i(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.i(iterable);
            return this;
        }
    }

    private static class b<K, V> extends ImmutableMap.d<K, V> {
        private static final long serialVersionUID = 0;

        b(ImmutableBiMap<K, V> immutableBiMap) {
            super(immutableBiMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.d
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public a<K, V> d(int i) {
            return new a<>(i);
        }
    }

    ImmutableBiMap() {
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> a<K, V> builderWithExpectedSize(int i) {
        z.b(i, "expectedSize");
        return new a<>(i);
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a(iterable instanceof Collection ? ((Collection) iterable).size() : 4).i(iterable).a();
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (map instanceof ImmutableBiMap) {
            ImmutableBiMap<K, V> immutableBiMap = (ImmutableBiMap) map;
            if (!immutableBiMap.j()) {
                return immutableBiMap;
            }
        }
        return copyOf((Iterable) map.entrySet());
    }

    public static <K, V> ImmutableBiMap<K, V> of() {
        return n2.f3809e;
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v) {
        z.a(k, v);
        return new n2(new Object[]{k, v}, 1);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2) {
        z.a(k, v);
        z.a(k2, v2);
        return new n2(new Object[]{k, v, k2, v2}, 2);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        return new n2(new Object[]{k, v, k2, v2, k3, v3}, 3);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        return new n2(new Object[]{k, v, k2, v2, k3, v3, k4, v4}, 4);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        return new n2(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5}, 5);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        return new n2(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6}, 6);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        z.a(k7, v7);
        return new n2(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7}, 7);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        z.a(k7, v7);
        z.a(k8, v8);
        return new n2(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8}, 8);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        z.a(k7, v7);
        z.a(k8, v8);
        z.a(k9, v9);
        return new n2(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8, k9, v9}, 9);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9, K k10, V v10) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        z.a(k7, v7);
        z.a(k8, v8);
        z.a(k9, v9);
        z.a(k10, v10);
        return new n2(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8, k9, v9, k10, v10}, 10);
    }

    @SafeVarargs
    public static <K, V> ImmutableBiMap<K, V> ofEntries(Map.Entry<? extends K, ? extends V>... entryArr) {
        return copyOf((Iterable) Arrays.asList(entryArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet<V> e() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.w
    /* JADX INFO: renamed from: q */
    public abstract ImmutableBiMap<V, K> M();

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<V> values() {
        return M().keySet();
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new b(this);
    }
}
