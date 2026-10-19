package com.google.gson.internal;

import com.json.o2;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: LinkedTreeMap.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Comparator<Comparable> a = new a();
    private final Comparator<? super K> b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e<K, V> f4231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f4232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f4233f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final e<K, V> f4234g;
    private d<K, V>.b h;
    private d<K, V>.c i;

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    class a implements Comparator<Comparable> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    class b extends AbstractSet<Map.Entry<K, V>> {

        /* JADX INFO: compiled from: LinkedTreeMap.java */
        class a extends d<K, V>.AbstractC0275d<Map.Entry<K, V>> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return b();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            d.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && d.this.c((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> eVarC;
            if (!(obj instanceof Map.Entry) || (eVarC = d.this.c((Map.Entry) obj)) == null) {
                return false;
            }
            d.this.f(eVarC, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return d.this.f4232e;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    final class c extends AbstractSet<K> {

        /* JADX INFO: compiled from: LinkedTreeMap.java */
        class a extends d<K, V>.AbstractC0275d<K> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return b().f4240f;
            }
        }

        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            d.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return d.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return d.this.h(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return d.this.f4232e;
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LinkedTreeMap.java */
    private abstract class AbstractC0275d<T> implements Iterator<T> {
        e<K, V> a;
        e<K, V> b = null;
        int c;

        AbstractC0275d() {
            this.a = d.this.f4234g.f4238d;
            this.c = d.this.f4233f;
        }

        final e<K, V> b() {
            e<K, V> eVar = this.a;
            d dVar = d.this;
            if (eVar == dVar.f4234g) {
                throw new NoSuchElementException();
            }
            if (dVar.f4233f != this.c) {
                throw new ConcurrentModificationException();
            }
            this.a = eVar.f4238d;
            this.b = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.a != d.this.f4234g;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.b;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            d.this.f(eVar, true);
            this.b = null;
            this.c = d.this.f4233f;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    static final class e<K, V> implements Map.Entry<K, V> {
        e<K, V> a;
        e<K, V> b;
        e<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        e<K, V> f4238d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        e<K, V> f4239e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final K f4240f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final boolean f4241g;
        V h;
        int i;

        e(boolean z) {
            this.f4240f = null;
            this.f4241g = z;
            this.f4239e = this;
            this.f4238d = this;
        }

        e(boolean z, e<K, V> eVar, K k, e<K, V> eVar2, e<K, V> eVar3) {
            this.a = eVar;
            this.f4240f = k;
            this.f4241g = z;
            this.i = 1;
            this.f4238d = eVar2;
            this.f4239e = eVar3;
            eVar3.f4238d = this;
            eVar2.f4239e = this;
        }

        public e<K, V> a() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.b; eVar2 != null; eVar2 = eVar2.b) {
                eVar = eVar2;
            }
            return eVar;
        }

        public e<K, V> b() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.c; eVar2 != null; eVar2 = eVar2.c) {
                eVar = eVar2;
            }
            return eVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.f4240f;
            if (k == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k.equals(entry.getKey())) {
                return false;
            }
            V v = this.h;
            if (v == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f4240f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.h;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f4240f;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.h;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (v == null && !this.f4241g) {
                throw new NullPointerException("value == null");
            }
            V v2 = this.h;
            this.h = v;
            return v2;
        }

        public String toString() {
            return this.f4240f + o2.i.b + this.h;
        }
    }

    public d() {
        this(a, true);
    }

    public d(Comparator<? super K> comparator, boolean z) {
        this.f4232e = 0;
        this.f4233f = 0;
        this.b = comparator == null ? a : comparator;
        this.c = z;
        this.f4234g = new e<>(z);
    }

    public d(boolean z) {
        this(a, z);
    }

    private boolean a(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    private void e(e<K, V> eVar, boolean z) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.b;
            e<K, V> eVar3 = eVar.c;
            int i = eVar2 != null ? eVar2.i : 0;
            int i2 = eVar3 != null ? eVar3.i : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                e<K, V> eVar4 = eVar3.b;
                e<K, V> eVar5 = eVar3.c;
                int i4 = (eVar4 != null ? eVar4.i : 0) - (eVar5 != null ? eVar5.i : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    j(eVar);
                } else {
                    k(eVar3);
                    j(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                e<K, V> eVar6 = eVar2.b;
                e<K, V> eVar7 = eVar2.c;
                int i5 = (eVar6 != null ? eVar6.i : 0) - (eVar7 != null ? eVar7.i : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    k(eVar);
                } else {
                    j(eVar2);
                    k(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                eVar.i = i + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.i = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.a;
        }
    }

    private void i(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.a;
        eVar.a = null;
        if (eVar2 != null) {
            eVar2.a = eVar3;
        }
        if (eVar3 == null) {
            this.f4231d = eVar2;
        } else if (eVar3.b == eVar) {
            eVar3.b = eVar2;
        } else {
            eVar3.c = eVar2;
        }
    }

    private void j(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.b;
        e<K, V> eVar3 = eVar.c;
        e<K, V> eVar4 = eVar3.b;
        e<K, V> eVar5 = eVar3.c;
        eVar.c = eVar4;
        if (eVar4 != null) {
            eVar4.a = eVar;
        }
        i(eVar, eVar3);
        eVar3.b = eVar;
        eVar.a = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.i : 0, eVar4 != null ? eVar4.i : 0) + 1;
        eVar.i = iMax;
        eVar3.i = Math.max(iMax, eVar5 != null ? eVar5.i : 0) + 1;
    }

    private void k(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.b;
        e<K, V> eVar3 = eVar.c;
        e<K, V> eVar4 = eVar2.b;
        e<K, V> eVar5 = eVar2.c;
        eVar.b = eVar5;
        if (eVar5 != null) {
            eVar5.a = eVar;
        }
        i(eVar, eVar2);
        eVar2.c = eVar;
        eVar.a = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.i : 0, eVar5 != null ? eVar5.i : 0) + 1;
        eVar.i = iMax;
        eVar2.i = Math.max(iMax, eVar4 != null ? eVar4.i : 0) + 1;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("Deserialization is unsupported");
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    e<K, V> b(K k, boolean z) {
        int iCompareTo;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.b;
        e<K, V> eVar2 = this.f4231d;
        if (eVar2 != null) {
            Comparable comparable = comparator == a ? (Comparable) k : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.f4240f) : comparator.compare(k, eVar2.f4240f);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = iCompareTo < 0 ? eVar2.b : eVar2.c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        e<K, V> eVar4 = this.f4234g;
        if (eVar2 != null) {
            eVar = new e<>(this.c, eVar2, k, eVar4, eVar4.f4239e);
            if (iCompareTo < 0) {
                eVar2.b = eVar;
            } else {
                eVar2.c = eVar;
            }
            e(eVar2, true);
        } else {
            if (comparator == a && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            eVar = new e<>(this.c, eVar2, k, eVar4, eVar4.f4239e);
            this.f4231d = eVar;
        }
        this.f4232e++;
        this.f4233f++;
        return eVar;
    }

    e<K, V> c(Map.Entry<?, ?> entry) {
        e<K, V> eVarD = d(entry.getKey());
        if (eVarD != null && a(eVarD.h, entry.getValue())) {
            return eVarD;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f4231d = null;
        this.f4232e = 0;
        this.f4233f++;
        e<K, V> eVar = this.f4234g;
        eVar.f4239e = eVar;
        eVar.f4238d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return d(obj) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    e<K, V> d(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return b(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        d<K, V>.b bVar = this.h;
        if (bVar != null) {
            return bVar;
        }
        d<K, V>.b bVar2 = new b();
        this.h = bVar2;
        return bVar2;
    }

    void f(e<K, V> eVar, boolean z) {
        int i;
        if (z) {
            e<K, V> eVar2 = eVar.f4239e;
            eVar2.f4238d = eVar.f4238d;
            eVar.f4238d.f4239e = eVar2;
        }
        e<K, V> eVar3 = eVar.b;
        e<K, V> eVar4 = eVar.c;
        e<K, V> eVar5 = eVar.a;
        int i2 = 0;
        if (eVar3 == null || eVar4 == null) {
            if (eVar3 != null) {
                i(eVar, eVar3);
                eVar.b = null;
            } else if (eVar4 != null) {
                i(eVar, eVar4);
                eVar.c = null;
            } else {
                i(eVar, null);
            }
            e(eVar5, false);
            this.f4232e--;
            this.f4233f++;
            return;
        }
        e<K, V> eVarB = eVar3.i > eVar4.i ? eVar3.b() : eVar4.a();
        f(eVarB, false);
        e<K, V> eVar6 = eVar.b;
        if (eVar6 != null) {
            i = eVar6.i;
            eVarB.b = eVar6;
            eVar6.a = eVarB;
            eVar.b = null;
        } else {
            i = 0;
        }
        e<K, V> eVar7 = eVar.c;
        if (eVar7 != null) {
            i2 = eVar7.i;
            eVarB.c = eVar7;
            eVar7.a = eVarB;
            eVar.c = null;
        }
        eVarB.i = Math.max(i, i2) + 1;
        i(eVar, eVarB);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> eVarD = d(obj);
        if (eVarD != null) {
            return eVarD.h;
        }
        return null;
    }

    e<K, V> h(Object obj) {
        e<K, V> eVarD = d(obj);
        if (eVarD != null) {
            f(eVarD, true);
        }
        return eVarD;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        d<K, V>.c cVar = this.i;
        if (cVar != null) {
            return cVar;
        }
        d<K, V>.c cVar2 = new c();
        this.i = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        if (v == null && !this.c) {
            throw new NullPointerException("value == null");
        }
        e<K, V> eVarB = b(k, true);
        V v2 = eVarB.h;
        eVarB.h = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> eVarH = h(obj);
        if (eVarH != null) {
            return eVarH.h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f4232e;
    }
}
