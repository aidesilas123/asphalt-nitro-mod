package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.u;
import com.json.o2;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class g1<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int h = 0;
    public final int a;
    public List<g1<K, V>.e> b;
    public Map<K, V> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile g1<K, V>.g f2667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<K, V> f2668f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile g1<K, V>.c f2669g;

    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    public class a<FieldDescriptorType> extends g1<FieldDescriptorType, Object> {
        public a(int i) {
            super(i, null);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.g1
        public void d() {
            if (!this.f2666d) {
                for (int i = 0; i < this.b.size(); i++) {
                    Map.Entry<FieldDescriptorType, Object> entryA = a(i);
                    if (((u.b) entryA.getKey()).b()) {
                        entryA.setValue(Collections.unmodifiableList((List) entryA.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : b()) {
                    if (((u.b) entry.getKey()).b()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.d();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.g1, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return put((Comparable) obj, obj2);
        }
    }

    public class b implements Iterator<Map.Entry<K, V>> {
        public int a;
        public Iterator<Map.Entry<K, V>> b;

        public b() {
            this.a = g1.this.b.size();
        }

        public final Iterator<Map.Entry<K, V>> b() {
            if (this.b == null) {
                this.b = g1.this.f2668f.entrySet().iterator();
            }
            return this.b;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i = this.a;
            return (i > 0 && i <= g1.this.b.size()) || b().hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (b().hasNext()) {
                return b().next();
            }
            List<g1<K, V>.e> list = g1.this.b;
            int i = this.a - 1;
            this.a = i;
            return list.get(i);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public class c extends g1<K, V>.g {
        public c() {
            super(g1.this, null);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.g1.g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b();
        }
    }

    public static class d {
        public static final Iterator<Object> a = new a();
        public static final Iterable<Object> b = new b();

        public class a implements Iterator<Object> {
            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public class b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return d.a;
            }
        }
    }

    public class e implements Map.Entry<K, V>, Comparable<g1<K, V>.e> {
        public final K a;
        public V b;

        public e(K k, V v) {
            this.a = k;
            this.b = v;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.a.compareTo(((e) obj).a);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.a;
            Object key = entry.getKey();
            if (k == null ? key == null : k.equals(key)) {
                V v = this.b;
                Object value = entry.getValue();
                if (v == null ? value == null : v.equals(value)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.a;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.b;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            g1 g1Var = g1.this;
            int i = g1.h;
            g1Var.a();
            V v2 = this.b;
            this.b = v;
            return v2;
        }

        public String toString() {
            return this.a + o2.i.b + this.b;
        }
    }

    public class f implements Iterator<Map.Entry<K, V>> {
        public int a = -1;
        public boolean b;
        public Iterator<Map.Entry<K, V>> c;

        public f() {
        }

        public final Iterator<Map.Entry<K, V>> b() {
            if (this.c == null) {
                this.c = g1.this.c.entrySet().iterator();
            }
            return this.c;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.a + 1 >= g1.this.b.size()) {
                return !g1.this.c.isEmpty() && b().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public Object next() {
            this.b = true;
            int i = this.a + 1;
            this.a = i;
            return i < g1.this.b.size() ? g1.this.b.get(this.a) : b().next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.b) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.b = false;
            g1 g1Var = g1.this;
            int i = g1.h;
            g1Var.a();
            if (this.a >= g1.this.b.size()) {
                b().remove();
                return;
            }
            g1 g1Var2 = g1.this;
            int i2 = this.a;
            this.a = i2 - 1;
            g1Var2.c(i2);
        }
    }

    public class g extends AbstractSet<Map.Entry<K, V>> {
        public g() {
        }

        public /* synthetic */ g(g1 g1Var, a aVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                return false;
            }
            g1.this.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            g1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = g1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            g1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g1.this.size();
        }
    }

    public g1(int i) {
        this.a = i;
        this.b = Collections.emptyList();
        this.c = Collections.emptyMap();
        this.f2668f = Collections.emptyMap();
    }

    public /* synthetic */ g1(int i, a aVar) {
        this(i);
    }

    public static <FieldDescriptorType extends u.b<FieldDescriptorType>> g1<FieldDescriptorType, Object> b(int i) {
        return new a(i);
    }

    public final int a(K k) {
        int size = this.b.size() - 1;
        if (size >= 0) {
            int iCompareTo = k.compareTo(this.b.get(size).a);
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int iCompareTo2 = k.compareTo(this.b.get(i2).a);
            if (iCompareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public V put(K k, V v) {
        a();
        int iA = a(k);
        if (iA >= 0) {
            g1<K, V>.e eVar = this.b.get(iA);
            g1.this.a();
            V v2 = eVar.b;
            eVar.b = v;
            return v2;
        }
        a();
        if (this.b.isEmpty() && !(this.b instanceof ArrayList)) {
            this.b = new ArrayList(this.a);
        }
        int i = -(iA + 1);
        if (i >= this.a) {
            return c().put(k, v);
        }
        int size = this.b.size();
        int i2 = this.a;
        if (size == i2) {
            g1<K, V>.e eVarRemove = this.b.remove(i2 - 1);
            c().put(eVarRemove.a, eVarRemove.b);
        }
        this.b.add(i, new e(k, v));
        return null;
    }

    public Map.Entry<K, V> a(int i) {
        return this.b.get(i);
    }

    public final void a() {
        if (this.f2666d) {
            throw new UnsupportedOperationException();
        }
    }

    public Iterable<Map.Entry<K, V>> b() {
        return this.c.isEmpty() ? (Iterable<Map.Entry<K, V>>) d.b : this.c.entrySet();
    }

    public final V c(int i) {
        a();
        V v = this.b.remove(i).b;
        if (!this.c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = c().entrySet().iterator();
            List<g1<K, V>.e> list = this.b;
            Map.Entry<K, V> next = it.next();
            list.add(new e(next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    public final SortedMap<K, V> c() {
        a();
        if (this.c.isEmpty() && !(this.c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.c = treeMap;
            this.f2668f = treeMap.descendingMap();
        }
        return (SortedMap) this.c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        a();
        if (!this.b.isEmpty()) {
            this.b.clear();
        }
        if (this.c.isEmpty()) {
            return;
        }
        this.c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.c.containsKey(comparable);
    }

    public void d() {
        if (this.f2666d) {
            return;
        }
        this.c = this.c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.c);
        this.f2668f = this.f2668f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f2668f);
        this.f2666d = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f2667e == null) {
            this.f2667e = new g();
        }
        return this.f2667e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g1)) {
            return super.equals(obj);
        }
        g1 g1Var = (g1) obj;
        int size = size();
        if (size != g1Var.size()) {
            return false;
        }
        int size2 = this.b.size();
        if (size2 != g1Var.b.size()) {
            return entrySet().equals(g1Var.entrySet());
        }
        for (int i = 0; i < size2; i++) {
            if (!a(i).equals(g1Var.a(i))) {
                return false;
            }
        }
        if (size2 != size) {
            return this.c.equals(g1Var.c);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? this.b.get(iA).b : this.c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int size = this.b.size();
        int iHashCode = 0;
        for (int i = 0; i < size; i++) {
            iHashCode += this.b.get(i).hashCode();
        }
        return this.c.size() > 0 ? iHashCode + this.c.hashCode() : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        a();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return c(iA);
        }
        if (this.c.isEmpty()) {
            return null;
        }
        return this.c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.b.size() + this.c.size();
    }
}
