package com.google.common.graph;

import com.google.common.base.Preconditions;
import java.util.Map;

/* JADX INFO: compiled from: MapRetrievalCache.java */
/* JADX INFO: loaded from: classes3.dex */
final class f0<K, V> extends e0<K, V> {
    private volatile transient a<K, V> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile transient a<K, V> f3855d;

    /* JADX INFO: compiled from: MapRetrievalCache.java */
    private static final class a<K, V> {
        final K a;
        final V b;

        a(K k, V v) {
            this.a = k;
            this.b = v;
        }
    }

    f0(Map<K, V> map) {
        super(map);
    }

    private void j(a<K, V> aVar) {
        this.f3855d = this.c;
        this.c = aVar;
    }

    private void k(K k, V v) {
        j(new a<>(k, v));
    }

    @Override // com.google.common.graph.e0
    void c() {
        super.c();
        this.c = null;
        this.f3855d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.e0
    V e(Object obj) {
        Preconditions.checkNotNull(obj);
        V vF = f(obj);
        if (vF != null) {
            return vF;
        }
        V vG = g(obj);
        if (vG != null) {
            k(obj, vG);
        }
        return vG;
    }

    @Override // com.google.common.graph.e0
    V f(Object obj) {
        V v = (V) super.f(obj);
        if (v != null) {
            return v;
        }
        a<K, V> aVar = this.c;
        if (aVar != null && aVar.a == obj) {
            return aVar.b;
        }
        a<K, V> aVar2 = this.f3855d;
        if (aVar2 == null || aVar2.a != obj) {
            return null;
        }
        j(aVar2);
        return aVar2.b;
    }
}
