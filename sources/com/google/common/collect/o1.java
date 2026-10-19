package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: compiled from: ImmutableEntry.java */
/* JADX INFO: loaded from: classes3.dex */
class o1<K, V> extends i<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final K a;
    final V b;

    o1(K k, V v) {
        this.a = k;
        this.b = v;
    }

    @Override // com.google.common.collect.i, java.util.Map.Entry
    public final K getKey() {
        return this.a;
    }

    @Override // com.google.common.collect.i, java.util.Map.Entry
    public final V getValue() {
        return this.b;
    }

    @Override // com.google.common.collect.i, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
