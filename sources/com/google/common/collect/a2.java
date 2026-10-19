package com.google.common.collect;

import java.util.Map;

/* JADX INFO: compiled from: MapDifference.java */
/* JADX INFO: loaded from: classes3.dex */
public interface a2<K, V> {

    /* JADX INFO: compiled from: MapDifference.java */
    public interface a<V> {
        V a();

        V b();
    }

    Map<K, V> a();

    Map<K, V> b();

    Map<K, a<V>> c();

    Map<K, V> d();
}
