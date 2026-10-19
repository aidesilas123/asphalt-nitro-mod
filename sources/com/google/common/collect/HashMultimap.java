package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class HashMultimap<K, V> extends k1<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    transient int f3578f;

    private HashMultimap() {
        this(12, 2);
    }

    private HashMultimap(int i, int i2) {
        super(i2.c(i));
        this.f3578f = 2;
        Preconditions.checkArgument(i2 >= 0);
        this.f3578f = i2;
    }

    private HashMultimap(b2<? extends K, ? extends V> b2Var) {
        super(i2.c(b2Var.keySet().size()));
        this.f3578f = 2;
        j(b2Var);
    }

    public static <K, V> HashMultimap<K, V> create() {
        return new HashMultimap<>();
    }

    public static <K, V> HashMultimap<K, V> create(int i, int i2) {
        return new HashMultimap<>(i, i2);
    }

    public static <K, V> HashMultimap<K, V> create(b2<? extends K, ? extends V> b2Var) {
        return new HashMultimap<>(b2Var);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f3578f = 2;
        int iH = y2.h(objectInputStream);
        D(i2.c(12));
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
    public Set<V> u() {
        return i2.d(this.f3578f);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ Set a(Object obj) {
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

    @Override // com.google.common.collect.o, com.google.common.collect.j, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ Map e() {
        return super.e();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ Set f() {
        return super.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ Set get(Object obj) {
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
    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.j, com.google.common.collect.b2
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
