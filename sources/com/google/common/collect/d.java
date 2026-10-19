package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: AbstractBiMap.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class d<K, V> extends y0<K, V> implements w<K, V>, Serializable {
    private static final long serialVersionUID = 0;
    private transient Map<K, V> a;
    transient d<V, K> b;
    private transient Set<K> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient Set<V> f3729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient Set<Map.Entry<K, V>> f3730e;

    /* JADX INFO: compiled from: AbstractBiMap.java */
    class a implements Iterator<Map.Entry<K, V>> {
        Map.Entry<K, V> a;
        final /* synthetic */ Iterator b;

        a(Iterator it) {
            this.b = it;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            Map.Entry<K, V> entry = (Map.Entry) this.b.next();
            this.a = entry;
            return new b(entry);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            Map.Entry<K, V> entry = this.a;
            if (entry == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            V value = entry.getValue();
            this.b.remove();
            d.this.T(value);
            this.a = null;
        }
    }

    /* JADX INFO: compiled from: AbstractBiMap.java */
    class b extends z0<K, V> {
        private final Map.Entry<K, V> a;

        b(Map.Entry<K, V> entry) {
            this.a = entry;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        /* JADX INFO: renamed from: C */
        public Map.Entry<K, V> P() {
            return this.a;
        }

        @Override // com.google.common.collect.z0, java.util.Map.Entry
        public V setValue(V v) {
            d.this.O(v);
            Preconditions.checkState(d.this.entrySet().contains(this), "entry no longer in map");
            if (Objects.equal(v, getValue())) {
                return v;
            }
            Preconditions.checkArgument(!d.this.containsValue(v), "value already present: %s", v);
            V value = this.a.setValue(v);
            Preconditions.checkState(Objects.equal(v, d.this.get(getKey())), "entry no longer in map");
            d.this.W(getKey(), true, value, v);
            return value;
        }
    }

    /* JADX INFO: compiled from: AbstractBiMap.java */
    private class c extends f1<Map.Entry<K, V>> {
        final Set<Map.Entry<K, V>> a;

        private c() {
            this.a = d.this.a.entrySet();
        }

        /* synthetic */ c(d dVar, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        public Set<Map.Entry<K, V>> P() {
            return this.a;
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public void clear() {
            d.this.clear();
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return Maps.k(P(), obj);
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return E(collection);
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return d.this.P();
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!this.a.contains(obj) || !(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            ((d) d.this.b).a.remove(entry.getValue());
            this.a.remove(entry);
            return true;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return Q(collection);
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return F(collection);
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public Object[] toArray() {
            return G();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) H(tArr);
        }
    }

    /* JADX INFO: renamed from: com.google.common.collect.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractBiMap.java */
    static class C0253d<K, V> extends d<K, V> {
        private static final long serialVersionUID = 0;

        C0253d(Map<K, V> map, d<V, K> dVar) {
            super(map, dVar, null);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            V((d) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(M());
        }

        @Override // com.google.common.collect.d, com.google.common.collect.d1
        /* JADX INFO: renamed from: B */
        protected /* bridge */ /* synthetic */ Object P() {
            return super.P();
        }

        @Override // com.google.common.collect.d
        K H(K k) {
            return this.b.O(k);
        }

        @Override // com.google.common.collect.d
        V O(V v) {
            return this.b.H(v);
        }

        Object readResolve() {
            return M().M();
        }

        @Override // com.google.common.collect.d, com.google.common.collect.y0, java.util.Map, com.google.common.collect.w
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    /* JADX INFO: compiled from: AbstractBiMap.java */
    private class e extends f1<K> {
        private e() {
        }

        /* synthetic */ e(d dVar, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        public Set<K> P() {
            return d.this.a.keySet();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public void clear() {
            d.this.clear();
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return Maps.t(d.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            d.this.S(obj);
            return true;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return Q(collection);
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return F(collection);
        }
    }

    /* JADX INFO: compiled from: AbstractBiMap.java */
    private class f extends f1<V> {
        final Set<V> a;

        private f() {
            this.a = d.this.b.keySet();
        }

        /* synthetic */ f(d dVar, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        public Set<V> P() {
            return this.a;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.M(d.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public Object[] toArray() {
            return G();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) H(tArr);
        }

        @Override // com.google.common.collect.d1
        public String toString() {
            return O();
        }
    }

    private d(Map<K, V> map, d<V, K> dVar) {
        this.a = map;
        this.b = dVar;
    }

    /* synthetic */ d(Map map, d dVar, a aVar) {
        this(map, dVar);
    }

    d(Map<K, V> map, Map<V, K> map2) {
        U(map, map2);
    }

    private V R(K k, V v, boolean z) {
        H(k);
        O(v);
        boolean zContainsKey = containsKey(k);
        if (zContainsKey && Objects.equal(v, get(k))) {
            return v;
        }
        if (z) {
            M().remove(v);
        } else {
            Preconditions.checkArgument(!containsValue(v), "value already present: %s", v);
        }
        V vPut = this.a.put(k, v);
        W(k, zContainsKey, vPut, v);
        return vPut;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V S(Object obj) {
        V v = (V) e2.a(this.a.remove(obj));
        T(v);
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(V v) {
        this.b.a.remove(v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void W(K k, boolean z, V v, V v2) {
        if (z) {
            T(e2.a(v));
        }
        this.b.a.put(v2, k);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.d1
    /* JADX INFO: renamed from: C */
    public Map<K, V> P() {
        return this.a;
    }

    K H(K k) {
        return k;
    }

    public w<V, K> M() {
        return this.b;
    }

    V O(V v) {
        return v;
    }

    Iterator<Map.Entry<K, V>> P() {
        return new a(this.a.entrySet().iterator());
    }

    d<V, K> Q(Map<V, K> map) {
        return new C0253d(map, this);
    }

    void U(Map<K, V> map, Map<V, K> map2) {
        Preconditions.checkState(this.a == null);
        Preconditions.checkState(this.b == null);
        Preconditions.checkArgument(map.isEmpty());
        Preconditions.checkArgument(map2.isEmpty());
        Preconditions.checkArgument(map != map2);
        this.a = map;
        this.b = Q(map2);
    }

    void V(d<V, K> dVar) {
        this.b = dVar;
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public void clear() {
        this.a.clear();
        this.b.a.clear();
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public boolean containsValue(Object obj) {
        return this.b.containsKey(obj);
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f3730e;
        if (set != null) {
            return set;
        }
        c cVar = new c(this, null);
        this.f3730e = cVar;
        return cVar;
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.c;
        if (set != null) {
            return set;
        }
        e eVar = new e(this, null);
        this.c = eVar;
        return eVar;
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public V put(K k, V v) {
        return R(k, v, false);
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public V remove(Object obj) {
        if (containsKey(obj)) {
            return S(obj);
        }
        return null;
    }

    @Override // com.google.common.collect.y0, java.util.Map, com.google.common.collect.w
    public Set<V> values() {
        Set<V> set = this.f3729d;
        if (set != null) {
            return set;
        }
        f fVar = new f(this, null);
        this.f3729d = fVar;
        return fVar;
    }
}
