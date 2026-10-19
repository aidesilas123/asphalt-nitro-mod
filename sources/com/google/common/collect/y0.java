package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: ForwardingMap.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class y0<K, V> extends d1 implements Map<K, V> {
    protected y0() {
    }

    protected abstract Map<K, V> C();

    public void clear() {
        C().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return C().containsKey(obj);
    }

    public boolean containsValue(Object obj) {
        return C().containsValue(obj);
    }

    public Set<Map.Entry<K, V>> entrySet() {
        return C().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return obj == this || C().equals(obj);
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return C().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return C().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return C().isEmpty();
    }

    public Set<K> keySet() {
        return C().keySet();
    }

    public V put(K k, V v) {
        return C().put(k, v);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        C().putAll(map);
    }

    public V remove(Object obj) {
        return C().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return C().size();
    }

    public Collection<V> values() {
        return C().values();
    }
}
