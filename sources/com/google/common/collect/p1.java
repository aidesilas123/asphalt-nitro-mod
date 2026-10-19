package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: compiled from: ImmutableEnumMap.java */
/* JADX INFO: loaded from: classes3.dex */
final class p1<K extends Enum<K>, V> extends ImmutableMap.c<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final transient EnumMap<K, V> f3814e;

    /* JADX INFO: compiled from: ImmutableEnumMap.java */
    private static class b<K extends Enum<K>, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final EnumMap<K, V> a;

        b(EnumMap<K, V> enumMap) {
            this.a = enumMap;
        }

        Object readResolve() {
            return new p1(this.a);
        }
    }

    private p1(EnumMap<K, V> enumMap) {
        this.f3814e = enumMap;
        Preconditions.checkArgument(!enumMap.isEmpty());
    }

    static <K extends Enum<K>, V> ImmutableMap<K, V> q(EnumMap<K, V> enumMap) {
        int size = enumMap.size();
        if (size == 0) {
            return ImmutableMap.of();
        }
        if (size != 1) {
            return new p1(enumMap);
        }
        Map.Entry entry = (Map.Entry) Iterables.getOnlyElement(enumMap.entrySet());
        return ImmutableMap.of((Enum) entry.getKey(), entry.getValue());
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.f3814e.containsKey(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p1) {
            obj = ((p1) obj).f3814e;
        }
        return this.f3814e.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return this.f3814e.get(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean j() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableMap
    o3<K> k() {
        return Iterators.unmodifiableIterator(this.f3814e.keySet().iterator());
    }

    @Override // com.google.common.collect.ImmutableMap.c
    o3<Map.Entry<K, V>> p() {
        return Maps.H(this.f3814e.entrySet().iterator());
    }

    @Override // java.util.Map
    public int size() {
        return this.f3814e.size();
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new b(this.f3814e);
    }
}
