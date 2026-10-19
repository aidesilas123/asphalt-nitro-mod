package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class EnumBiMap<K extends Enum<K>, V extends Enum<V>> extends d<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient Class<K> f3563f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient Class<V> f3564g;

    private EnumBiMap(Class<K> cls, Class<V> cls2) {
        super(new EnumMap(cls), new EnumMap(cls2));
        this.f3563f = cls;
        this.f3564g = cls2;
    }

    static <K extends Enum<K>> Class<K> Z(Map<K, ?> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).b0();
        }
        if (map instanceof EnumHashBiMap) {
            return ((EnumHashBiMap) map).Y();
        }
        Preconditions.checkArgument(!map.isEmpty());
        return map.keySet().iterator().next().getDeclaringClass();
    }

    private static <V extends Enum<V>> Class<V> a0(Map<?, V> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).f3564g;
        }
        Preconditions.checkArgument(!map.isEmpty());
        return map.values().iterator().next().getDeclaringClass();
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Class<K> cls, Class<V> cls2) {
        return new EnumBiMap<>(cls, cls2);
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Map<K, V> map) {
        EnumBiMap<K, V> enumBiMapCreate = create(Z(map), a0(map));
        enumBiMapCreate.putAll(map);
        return enumBiMapCreate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f3563f = (Class) objectInputStream.readObject();
        this.f3564g = (Class) objectInputStream.readObject();
        U(new EnumMap(this.f3563f), new EnumMap(this.f3564g));
        y2.b(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f3563f);
        objectOutputStream.writeObject(this.f3564g);
        y2.i(this, objectOutputStream);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.w
    public /* bridge */ /* synthetic */ w M() {
        return super.M();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public K H(K k) {
        return (K) Preconditions.checkNotNull(k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public V O(V v) {
        return (V) Preconditions.checkNotNull(v);
    }

    public Class<K> b0() {
        return this.f3563f;
    }

    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map
    public /* bridge */ /* synthetic */ Object remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map, com.google.common.collect.w
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }
}
