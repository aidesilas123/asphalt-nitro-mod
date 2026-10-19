package dagger.internal;

import dagger.internal.a;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MapProviderFactory<K, V> extends dagger.internal.a<K, V, c<V>> implements d.a<Map<K, c<V>>> {

    public static final class b<K, V> extends a.AbstractC0465a<K, V, c<V>> {
        private b(int i) {
            super(i);
        }
    }

    public static <K, V> b<K, V> builder(int i) {
        return new b<>(i);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Map<K, c<V>> get() {
        return a();
    }
}
