package com.google.android.datatransport.runtime.dagger.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class MapBuilder<K, V> {
    private final Map<K, V> a;

    private MapBuilder(int i) {
        this.a = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
    }

    public static <K, V> MapBuilder<K, V> newMapBuilder(int i) {
        return new MapBuilder<>(i);
    }
}
