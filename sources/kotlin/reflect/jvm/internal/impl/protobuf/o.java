package kotlin.reflect.jvm.internal.impl.protobuf;

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
import kotlin.reflect.jvm.internal.impl.protobuf.FieldSet;

/* JADX INFO: compiled from: SmallSortedMap.java */
/* JADX INFO: loaded from: classes5.dex */
class o<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private final int a;
    private List<o<K, V>.c> b;
    private Map<K, V> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile o<K, V>.e f9720e;

    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    /* JADX INFO: compiled from: SmallSortedMap.java */
    static class a<FieldDescriptorType> extends o<FieldDescriptorType, Object> {
        a(int i) {
            super(i, null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
        public void n() {
            if (!m()) {
                for (int i = 0; i < j(); i++) {
                    Map.Entry<FieldDescriptorType, Object> entryI = i(i);
                    if (((FieldSet.b) entryI.getKey()).isRepeated()) {
                        entryI.setValue(Collections.unmodifiableList((List) entryI.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : k()) {
                    if (((FieldSet.b) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.n();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.p((FieldSet.b) obj, obj2);
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private static class b {
        private static final Iterator<Object> a = new a();
        private static final Iterable<Object> b = new C0541b();

        /* JADX INFO: compiled from: SmallSortedMap.java */
        static class a implements Iterator<Object> {
            a() {
            }

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

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.o$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SmallSortedMap.java */
        static class C0541b implements Iterable<Object> {
            C0541b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return b.a;
            }
        }

        static <T> Iterable<T> b() {
            return (Iterable<T>) b;
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private class c implements Comparable<o<K, V>.c>, Map.Entry<K, V> {
        private final K a;
        private V b;

        c(K k, V v) {
            this.a = k;
            this.b = v;
        }

        c(o oVar, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        private boolean b(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(o<K, V>.c cVar) {
            return getKey().compareTo(cVar.getKey());
        }

        @Override // java.util.Map.Entry
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public K getKey() {
            return this.a;
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
            return b(this.a, entry.getKey()) && b(this.b, entry.getValue());
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
            o.this.f();
            V v2 = this.b;
            this.b = v;
            return v2;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 1 + strValueOf2.length());
            sb.append(strValueOf);
            sb.append(o2.i.b);
            sb.append(strValueOf2);
            return sb.toString();
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private class d implements Iterator<Map.Entry<K, V>> {
        private int a;
        private boolean b;
        private Iterator<Map.Entry<K, V>> c;

        private d() {
            this.a = -1;
        }

        /* synthetic */ d(o oVar, a aVar) {
            this();
        }

        private Iterator<Map.Entry<K, V>> b() {
            if (this.c == null) {
                this.c = o.this.c.entrySet().iterator();
            }
            return this.c;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            this.b = true;
            int i = this.a + 1;
            this.a = i;
            return i < o.this.b.size() ? (Map.Entry) o.this.b.get(this.a) : b().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a + 1 < o.this.b.size() || b().hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.b) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.b = false;
            o.this.f();
            if (this.a >= o.this.b.size()) {
                b().remove();
                return;
            }
            o oVar = o.this;
            int i = this.a;
            this.a = i - 1;
            oVar.q(i);
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private class e extends AbstractSet<Map.Entry<K, V>> {
        private e() {
        }

        /* synthetic */ e(o oVar, a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            o.this.p(entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            o.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = o.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d(o.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            o.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return o.this.size();
        }
    }

    private o(int i) {
        this.a = i;
        this.b = Collections.emptyList();
        this.c = Collections.emptyMap();
    }

    /* synthetic */ o(int i, a aVar) {
        this(i);
    }

    private int e(K k) {
        int size = this.b.size() - 1;
        if (size >= 0) {
            int iCompareTo = k.compareTo(this.b.get(size).getKey());
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
            int iCompareTo2 = k.compareTo(this.b.get(i2).getKey());
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

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f9719d) {
            throw new UnsupportedOperationException();
        }
    }

    private void h() {
        f();
        if (!this.b.isEmpty() || (this.b instanceof ArrayList)) {
            return;
        }
        this.b = new ArrayList(this.a);
    }

    private SortedMap<K, V> l() {
        f();
        if (this.c.isEmpty() && !(this.c instanceof TreeMap)) {
            this.c = new TreeMap();
        }
        return (SortedMap) this.c;
    }

    static <FieldDescriptorType extends FieldSet.b<FieldDescriptorType>> o<FieldDescriptorType, Object> o(int i) {
        return new a(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V q(int i) {
        f();
        V value = this.b.remove(i).getValue();
        if (!this.c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = l().entrySet().iterator();
            this.b.add(new c(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
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
        return e(comparable) >= 0 || this.c.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f9720e == null) {
            this.f9720e = new e(this, null);
        }
        return this.f9720e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iE = e(comparable);
        return iE >= 0 ? this.b.get(iE).getValue() : this.c.get(comparable);
    }

    public Map.Entry<K, V> i(int i) {
        return this.b.get(i);
    }

    public int j() {
        return this.b.size();
    }

    public Iterable<Map.Entry<K, V>> k() {
        return this.c.isEmpty() ? b.b() : this.c.entrySet();
    }

    public boolean m() {
        return this.f9719d;
    }

    public void n() {
        if (this.f9719d) {
            return;
        }
        this.c = this.c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.c);
        this.f9719d = true;
    }

    public V p(K k, V v) {
        f();
        int iE = e(k);
        if (iE >= 0) {
            return this.b.get(iE).setValue(v);
        }
        h();
        int i = -(iE + 1);
        if (i >= this.a) {
            return l().put(k, v);
        }
        int size = this.b.size();
        int i2 = this.a;
        if (size == i2) {
            o<K, V>.c cVarRemove = this.b.remove(i2 - 1);
            l().put(cVarRemove.getKey(), cVarRemove.getValue());
        }
        this.b.add(i, new c(k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int iE = e(comparable);
        if (iE >= 0) {
            return q(iE);
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
