package dagger.internal;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: AbstractMapFactory.java */
/* JADX INFO: loaded from: classes4.dex */
abstract class a<K, V, V2> implements b<Map<K, V2>> {
    private final Map<K, c<V>> a;

    /* JADX INFO: renamed from: dagger.internal.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractMapFactory.java */
    public static abstract class AbstractC0465a<K, V, V2> {
        final LinkedHashMap<K, c<V>> a;

        AbstractC0465a(int i) {
            this.a = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
        }
    }

    final Map<K, c<V>> a() {
        return this.a;
    }
}
