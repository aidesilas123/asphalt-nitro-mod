package com.koushikdutta.quack;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class WeakExactHashMap<K, V> {
    private HashMap<Entry<K>, V> map = new HashMap<>();
    private int purgeThreshold = 0;

    public static class Entry<K> {
        int hash;
        WeakReference<K> key;

        public Entry(K k) {
            if (k == null) {
                throw new IllegalArgumentException("key can not be null");
            }
            this.key = new WeakReference<>(k);
            this.hash = k.hashCode();
        }

        public boolean equals(Object obj) {
            Entry entry = (Entry) obj;
            K k = this.key.get();
            return k != null && entry.key.get() == k;
        }

        public int hashCode() {
            return this.hash;
        }
    }

    private void maybePurge() {
        if (this.map.size() < this.purgeThreshold) {
            return;
        }
        purge();
    }

    public void clear() {
        this.map.clear();
    }

    public V get(K k) {
        maybePurge();
        return this.map.get(new Entry(k));
    }

    public int purge() {
        int size = this.map.size();
        Iterator<Entry<K>> it = this.map.keySet().iterator();
        while (it.hasNext()) {
            if (it.next().key.get() == null) {
                it.remove();
            }
        }
        int size2 = this.map.size();
        setPurgeThreshold(size2 * 2);
        return size - size2;
    }

    public V put(K k, V v) {
        maybePurge();
        return this.map.put(new Entry<>(k), v);
    }

    public void setPurgeThreshold(int i) {
        this.purgeThreshold = i;
    }

    public int size() {
        return this.map.size();
    }
}
