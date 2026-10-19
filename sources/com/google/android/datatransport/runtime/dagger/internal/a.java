package com.google.android.datatransport.runtime.dagger.internal;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: AbstractMapFactory.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class a<K, V, V2> implements b<Map<K, V2>> {
    private final Map<K, e.a.a<V>> a;

    /* JADX INFO: renamed from: com.google.android.datatransport.runtime.dagger.internal.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractMapFactory.java */
    public static abstract class AbstractC0225a<K, V, V2> {
        final LinkedHashMap<K, e.a.a<V>> a;

        AbstractC0225a(int i) {
            this.a = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
        }
    }

    final Map<K, e.a.a<V>> a() {
        return this.a;
    }
}
