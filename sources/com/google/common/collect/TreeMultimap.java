package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes3.dex */
public class TreeMultimap<K, V> extends p<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient Comparator<? super K> f3718f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient Comparator<? super V> f3719g;

    TreeMultimap(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        super(new TreeMap(comparator));
        this.f3718f = comparator;
        this.f3719g = comparator2;
    }

    private TreeMultimap(Comparator<? super K> comparator, Comparator<? super V> comparator2, b2<? extends K, ? extends V> b2Var) {
        this(comparator, comparator2);
        j(b2Var);
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create() {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural());
    }

    public static <K extends Comparable, V extends Comparable> TreeMultimap<K, V> create(b2<? extends K, ? extends V> b2Var) {
        return new TreeMultimap<>(Ordering.natural(), Ordering.natural(), b2Var);
    }

    public static <K, V> TreeMultimap<K, V> create(Comparator<? super K> comparator, Comparator<? super V> comparator2) {
        return new TreeMultimap<>((Comparator) Preconditions.checkNotNull(comparator), (Comparator) Preconditions.checkNotNull(comparator2));
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f3718f = (Comparator) Preconditions.checkNotNull((Comparator) objectInputStream.readObject());
        this.f3719g = (Comparator) Preconditions.checkNotNull((Comparator) objectInputStream.readObject());
        D(new TreeMap(this.f3718f));
        y2.d(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(P());
        objectOutputStream.writeObject(R());
        y2.j(this, objectOutputStream);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean A(Object obj, Object obj2) {
        return super.A(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.g
    /* JADX INFO: renamed from: I */
    public SortedSet<V> u() {
        return new TreeSet(this.f3719g);
    }

    @Override // com.google.common.collect.r, com.google.common.collect.o, com.google.common.collect.j, com.google.common.collect.b2, com.google.common.collect.z1
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public NavigableMap<K, Collection<V>> e() {
        return (NavigableMap) super.L();
    }

    @Override // com.google.common.collect.r, com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public NavigableSet<V> get(K k) {
        return (NavigableSet) super.get((Object) k);
    }

    @Deprecated
    public Comparator<? super K> P() {
        return this.f3718f;
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public NavigableSet<K> keySet() {
        return (NavigableSet) super.M();
    }

    public Comparator<? super V> R() {
        return this.f3719g;
    }

    @Override // com.google.common.collect.r, com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ SortedSet a(Object obj) {
        return super.a(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.j
    Map<K, Collection<V>> c() {
        return w();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ Set f() {
        return super.f();
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.g
    Collection<V> v(K k) {
        if (k == 0) {
            P().compare(k, k);
        }
        return super.v(k);
    }
}
