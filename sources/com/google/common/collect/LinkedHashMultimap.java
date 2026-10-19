package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class LinkedHashMultimap<K, V> extends y1<K, V> {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    transient int f3609f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient b<K, V> f3610g;

    class a implements Iterator<Map.Entry<K, V>> {
        b<K, V> a;
        b<K, V> b;

        a() {
            this.a = LinkedHashMultimap.this.f3610g.d();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            b<K, V> bVar = this.a;
            this.b = bVar;
            this.a = bVar.d();
            return bVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a != LinkedHashMultimap.this.f3610g;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.b != null, "no calls to next() since the last call to remove()");
            LinkedHashMultimap.this.remove(this.b.getKey(), this.b.getValue());
            this.b = null;
        }
    }

    static final class b<K, V> extends o1<K, V> implements d<K, V> {
        final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        b<K, V> f3611d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d<K, V> f3612e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        d<K, V> f3613f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        b<K, V> f3614g;
        b<K, V> h;

        b(K k, V v, int i, b<K, V> bVar) {
            super(k, v);
            this.c = i;
            this.f3611d = bVar;
        }

        static <K, V> b<K, V> j() {
            return new b<>(null, null, 0, null);
        }

        public b<K, V> c() {
            b<K, V> bVar = this.f3614g;
            Objects.requireNonNull(bVar);
            return bVar;
        }

        public b<K, V> d() {
            b<K, V> bVar = this.h;
            Objects.requireNonNull(bVar);
            return bVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> e() {
            d<K, V> dVar = this.f3612e;
            Objects.requireNonNull(dVar);
            return dVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> f() {
            d<K, V> dVar = this.f3613f;
            Objects.requireNonNull(dVar);
            return dVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void g(d<K, V> dVar) {
            this.f3613f = dVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void h(d<K, V> dVar) {
            this.f3612e = dVar;
        }

        boolean i(Object obj, int i) {
            return this.c == i && com.google.common.base.Objects.equal(getValue(), obj);
        }

        public void k(b<K, V> bVar) {
            this.f3614g = bVar;
        }

        public void m(b<K, V> bVar) {
            this.h = bVar;
        }
    }

    final class c extends Sets.j<V> implements d<K, V> {
        private final K a;
        b<K, V>[] b;
        private int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3615d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d<K, V> f3616e = this;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private d<K, V> f3617f = this;

        class a implements Iterator<V> {
            d<K, V> a;
            b<K, V> b;
            int c;

            a() {
                this.a = c.this.f3616e;
                this.c = c.this.f3615d;
            }

            private void b() {
                if (c.this.f3615d != this.c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                b();
                return this.a != c.this;
            }

            @Override // java.util.Iterator
            public V next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                b<K, V> bVar = (b) this.a;
                V value = bVar.getValue();
                this.b = bVar;
                this.a = bVar.f();
                return value;
            }

            @Override // java.util.Iterator
            public void remove() {
                b();
                Preconditions.checkState(this.b != null, "no calls to next() since the last call to remove()");
                c.this.remove(this.b.getValue());
                this.c = c.this.f3615d;
                this.b = null;
            }
        }

        c(K k, int i) {
            this.a = k;
            this.b = new b[l1.a(i, 1.0d)];
        }

        private int i() {
            return this.b.length - 1;
        }

        private void j() {
            if (l1.b(this.c, this.b.length, 1.0d)) {
                int length = this.b.length * 2;
                b<K, V>[] bVarArr = new b[length];
                this.b = bVarArr;
                int i = length - 1;
                for (d<K, V> dVarF = this.f3616e; dVarF != this; dVarF = dVarF.f()) {
                    b<K, V> bVar = (b) dVarF;
                    int i2 = bVar.c & i;
                    bVar.f3611d = bVarArr[i2];
                    bVarArr[i2] = bVar;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(V v) {
            int iD = l1.d(v);
            int i = i() & iD;
            b<K, V> bVar = this.b[i];
            for (b<K, V> bVar2 = bVar; bVar2 != null; bVar2 = bVar2.f3611d) {
                if (bVar2.i(v, iD)) {
                    return false;
                }
            }
            b<K, V> bVar3 = new b<>(this.a, v, iD, bVar);
            LinkedHashMultimap.R(this.f3617f, bVar3);
            LinkedHashMultimap.R(bVar3, this);
            LinkedHashMultimap.Q(LinkedHashMultimap.this.f3610g.c(), bVar3);
            LinkedHashMultimap.Q(bVar3, LinkedHashMultimap.this.f3610g);
            this.b[i] = bVar3;
            this.c++;
            this.f3615d++;
            j();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.b, (Object) null);
            this.c = 0;
            for (d<K, V> dVarF = this.f3616e; dVarF != this; dVarF = dVarF.f()) {
                LinkedHashMultimap.O((b) dVarF);
            }
            LinkedHashMultimap.R(this, this);
            this.f3615d++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            int iD = l1.d(obj);
            for (b<K, V> bVar = this.b[i() & iD]; bVar != null; bVar = bVar.f3611d) {
                if (bVar.i(obj, iD)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> e() {
            return this.f3617f;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> f() {
            return this.f3616e;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void g(d<K, V> dVar) {
            this.f3616e = dVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void h(d<K, V> dVar) {
            this.f3617f = dVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int iD = l1.d(obj);
            int i = i() & iD;
            b<K, V> bVar = null;
            for (b<K, V> bVar2 = this.b[i]; bVar2 != null; bVar2 = bVar2.f3611d) {
                if (bVar2.i(obj, iD)) {
                    if (bVar == null) {
                        this.b[i] = bVar2.f3611d;
                    } else {
                        bVar.f3611d = bVar2.f3611d;
                    }
                    LinkedHashMultimap.P(bVar2);
                    LinkedHashMultimap.O(bVar2);
                    this.c--;
                    this.f3615d++;
                    return true;
                }
                bVar = bVar2;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.c;
        }
    }

    private interface d<K, V> {
        d<K, V> e();

        d<K, V> f();

        void g(d<K, V> dVar);

        void h(d<K, V> dVar);
    }

    private LinkedHashMultimap(int i, int i2) {
        super(i2.e(i));
        this.f3609f = 2;
        z.b(i2, "expectedValuesPerKey");
        this.f3609f = i2;
        b<K, V> bVarJ = b.j();
        this.f3610g = bVarJ;
        Q(bVarJ, bVarJ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void O(b<K, V> bVar) {
        Q(bVar.c(), bVar.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void P(d<K, V> dVar) {
        R(dVar.e(), dVar.f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void Q(b<K, V> bVar, b<K, V> bVar2) {
        bVar.m(bVar2);
        bVar2.k(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void R(d<K, V> dVar, d<K, V> dVar2) {
        dVar.g(dVar2);
        dVar2.h(dVar);
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i, int i2) {
        return new LinkedHashMultimap<>(Maps.j(i), Maps.j(i2));
    }

    public static <K, V> LinkedHashMultimap<K, V> create(b2<? extends K, ? extends V> b2Var) {
        LinkedHashMultimap<K, V> linkedHashMultimapCreate = create(b2Var.keySet().size(), 2);
        linkedHashMultimapCreate.j(b2Var);
        return linkedHashMultimapCreate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        b<K, V> bVarJ = b.j();
        this.f3610g = bVarJ;
        Q(bVarJ, bVarJ);
        this.f3609f = 2;
        int i = objectInputStream.readInt();
        Map mapE = i2.e(12);
        for (int i2 = 0; i2 < i; i2++) {
            Object object = objectInputStream.readObject();
            mapE.put(object, v(object));
        }
        int i3 = objectInputStream.readInt();
        for (int i4 = 0; i4 < i3; i4++) {
            Object object2 = objectInputStream.readObject();
            Object object3 = objectInputStream.readObject();
            Collection collection = (Collection) mapE.get(object2);
            Objects.requireNonNull(collection);
            collection.add(object3);
        }
        D(mapE);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : f()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean A(Object obj, Object obj2) {
        return super.A(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.g
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public Set<V> u() {
        return i2.f(this.f3609f);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ Set a(Object obj) {
        return super.a(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2
    public void clear() {
        super.clear();
        b<K, V> bVar = this.f3610g;
        Q(bVar, bVar);
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
    public Set<Map.Entry<K, V>> f() {
        return super.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return super.get(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.j
    Iterator<Map.Entry<K, V>> h() {
        return new a();
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
    public Set<K> keySet() {
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

    @Override // com.google.common.collect.g
    Collection<V> v(K k) {
        return new c(k, this.f3609f);
    }
}
