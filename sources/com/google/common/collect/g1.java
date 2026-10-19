package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedMap;

/* JADX INFO: compiled from: ForwardingSortedMap.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class g1<K, V> extends y0<K, V> implements SortedMap<K, V> {
    protected g1() {
    }

    protected abstract SortedMap<K, V> D();

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return D().comparator();
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return D().firstKey();
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return D().lastKey();
    }
}
