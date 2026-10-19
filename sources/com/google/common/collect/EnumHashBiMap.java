package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class EnumHashBiMap<K extends Enum<K>, V> extends d<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient Class<K> f3565f;

    private EnumHashBiMap(Class<K> cls) {
        super(new EnumMap(cls), Maps.newHashMapWithExpectedSize(cls.getEnumConstants().length));
        this.f3565f = cls;
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Class<K> cls) {
        return new EnumHashBiMap<>(cls);
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Map<K, ? extends V> map) {
        EnumHashBiMap<K, V> enumHashBiMapCreate = create(EnumBiMap.Z(map));
        enumHashBiMapCreate.putAll(map);
        return enumHashBiMapCreate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f3565f = (Class) objectInputStream.readObject();
        U(new EnumMap(this.f3565f), new HashMap((this.f3565f.getEnumConstants().length * 3) / 2));
        y2.b(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f3565f);
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

    public Class<K> Y() {
        return this.f3565f;
    }

    @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public V put(K k, V v) {
        return (V) super.put(k, v);
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
