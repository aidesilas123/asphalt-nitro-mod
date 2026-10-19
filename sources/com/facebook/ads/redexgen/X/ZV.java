package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class ZV<K, V> extends C07172p<K, V> implements Map<K, V> {
    public AbstractC07142m<K, V> A00;

    private AbstractC07142m<K, V> A00() {
        if (this.A00 == null) {
            this.A00 = new ZW(this);
        }
        return this.A00;
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return A00().A08();
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        return A00().A09();
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        A0D(super.A00 + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        return A00().A0A();
    }
}
