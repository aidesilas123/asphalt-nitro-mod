package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.internal.a;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class MapProviderFactory<K, V> extends com.google.android.datatransport.runtime.dagger.internal.a<K, V, e.a.a<V>> implements com.google.android.datatransport.runtime.o.a<Map<K, e.a.a<V>>> {

    public static final class b<K, V> extends a.AbstractC0225a<K, V, e.a.a<V>> {
        private b(int i) {
            super(i);
        }
    }

    public static <K, V> b<K, V> builder(int i) {
        return new b<>(i);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Map<K, e.a.a<V>> get() {
        return a();
    }
}
