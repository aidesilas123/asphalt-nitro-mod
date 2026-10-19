package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.internal.a;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class MapFactory<K, V> extends com.google.android.datatransport.runtime.dagger.internal.a<K, V, V> {
    private static final e.a.a<Map<Object, Object>> b = InstanceFactory.create(Collections.emptyMap());

    public static final class b<K, V> extends a.AbstractC0225a<K, V, V> {
        private b(int i) {
            super(i);
        }
    }

    public static <K, V> b<K, V> builder(int i) {
        return new b<>(i);
    }

    public static <K, V> e.a.a<Map<K, V>> emptyMapProvider() {
        return (e.a.a<Map<K, V>>) b;
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Map<K, V> get() {
        LinkedHashMap linkedHashMapNewLinkedHashMapWithExpectedSize = DaggerCollections.newLinkedHashMapWithExpectedSize(a().size());
        for (Map.Entry<K, e.a.a<V>> entry : a().entrySet()) {
            linkedHashMapNewLinkedHashMapWithExpectedSize.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(linkedHashMapNewLinkedHashMapWithExpectedSize);
    }
}
