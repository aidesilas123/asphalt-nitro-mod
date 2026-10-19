package com.google.common.collect;

import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: BiMap.java */
/* JADX INFO: loaded from: classes3.dex */
public interface w<K, V> extends Map<K, V> {
    w<V, K> M();

    Set<V> values();
}
