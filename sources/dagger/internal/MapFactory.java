package dagger.internal;

import dagger.internal.a;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MapFactory<K, V> extends dagger.internal.a<K, V, V> {
    private static final c<Map<Object, Object>> b = InstanceFactory.create(Collections.emptyMap());

    public static final class b<K, V> extends a.AbstractC0465a<K, V, V> {
        private b(int i) {
            super(i);
        }
    }

    public static <K, V> b<K, V> builder(int i) {
        return new b<>(i);
    }

    public static <K, V> c<Map<K, V>> emptyMapProvider() {
        return (c<Map<K, V>>) b;
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Map<K, V> get() {
        LinkedHashMap linkedHashMapNewLinkedHashMapWithExpectedSize = DaggerCollections.newLinkedHashMapWithExpectedSize(a().size());
        for (Map.Entry<K, c<V>> entry : a().entrySet()) {
            linkedHashMapNewLinkedHashMapWithExpectedSize.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(linkedHashMapNewLinkedHashMapWithExpectedSize);
    }
}
