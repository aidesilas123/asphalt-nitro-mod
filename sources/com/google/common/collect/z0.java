package com.google.common.collect;

import com.google.common.base.Objects;
import java.util.Map;

/* JADX INFO: compiled from: ForwardingMapEntry.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class z0<K, V> extends d1 implements Map.Entry<K, V> {
    protected z0() {
    }

    protected abstract Map.Entry<K, V> C();

    protected boolean D(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Objects.equal(getKey(), entry.getKey()) && Objects.equal(getValue(), entry.getValue());
    }

    public boolean equals(Object obj) {
        return C().equals(obj);
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return C().getKey();
    }

    public V getValue() {
        return C().getValue();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return C().hashCode();
    }

    public V setValue(V v) {
        return C().setValue(v);
    }
}
