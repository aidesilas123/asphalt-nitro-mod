package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ArrayListMultimap<K, V> extends u<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    transient int f3535f;

    private ArrayListMultimap() {
        this(12, 3);
    }

    private ArrayListMultimap(int i, int i2) {
        super(i2.c(i));
        z.b(i2, "expectedValuesPerKey");
        this.f3535f = i2;
    }

    private ArrayListMultimap(b2<? extends K, ? extends V> b2Var) {
        this(b2Var.keySet().size(), b2Var instanceof ArrayListMultimap ? ((ArrayListMultimap) b2Var).f3535f : 3);
        j(b2Var);
    }

    public static <K, V> ArrayListMultimap<K, V> create() {
        return new ArrayListMultimap<>();
    }

    public static <K, V> ArrayListMultimap<K, V> create(int i, int i2) {
        return new ArrayListMultimap<>(i, i2);
    }

    public static <K, V> ArrayListMultimap<K, V> create(b2<? extends K, ? extends V> b2Var) {
        return new ArrayListMultimap<>(b2Var);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f3535f = 3;
        int iH = y2.h(objectInputStream);
        D(CompactHashMap.create());
        y2.e(this, objectInputStream, iH);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        y2.j(this, objectOutputStream);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean A(Object obj, Object obj2) {
        return super.A(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.g
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public List<V> u() {
        return new ArrayList(this.f3535f);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ List a(Object obj) {
        return super.a(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.j, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ Map e() {
        return super.e();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ Collection f() {
        return super.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.f, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ List get(Object obj) {
        return super.get(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.j
    public /* bridge */ /* synthetic */ boolean j(b2 b2Var) {
        return super.j(b2Var);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.f, com.google.common.collect.g, com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.j
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
