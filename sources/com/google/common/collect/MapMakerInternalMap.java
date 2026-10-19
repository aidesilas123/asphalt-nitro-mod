package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.google.common.collect.MapMakerInternalMap.i;
import com.google.common.collect.MapMakerInternalMap.n;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
class MapMakerInternalMap<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    static final e0<Object, Object, e> a = new a();
    private static final long serialVersionUID = 5;
    final transient int b;
    final transient int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final transient n<K, V, E, S>[] f3638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f3639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Equivalence<Object> f3640f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient j<K, V, E, S> f3641g;
    transient Set<K> h;
    transient Collection<V> i;
    transient Set<Map.Entry<K, V>> j;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    static abstract class Strength {
        public static final Strength a = new a("STRONG", 0);
        public static final Strength b = new b("WEAK", 1);
        private static final /* synthetic */ Strength[] c = e();

        enum a extends Strength {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            Equivalence<Object> f() {
                return Equivalence.equals();
            }
        }

        enum b extends Strength {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            Equivalence<Object> f() {
                return Equivalence.identity();
            }
        }

        private Strength(String str, int i) {
        }

        /* synthetic */ Strength(String str, int i, a aVar) {
            this(str, i);
        }

        private static /* synthetic */ Strength[] e() {
            return new Strength[]{a, b};
        }

        public static Strength valueOf(String str) {
            return (Strength) Enum.valueOf(Strength.class, str);
        }

        public static Strength[] values() {
            return (Strength[]) c.clone();
        }

        abstract Equivalence<Object> f();
    }

    class a implements e0<Object, Object, e> {
        a() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.e0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public e0<Object, Object, e> b(ReferenceQueue<Object> referenceQueue, e eVar) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.e0
        public void clear() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.e0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public e a() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.e0
        public Object get() {
            return null;
        }
    }

    static final class a0<K, V> extends n<K, V, z<K, V>, a0<K, V>> {
        private final ReferenceQueue<K> h;

        a0(MapMakerInternalMap<K, V, z<K, V>, a0<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.h = new ReferenceQueue<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.n
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public a0<K, V> H() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.n
        void s() {
            d(this.h);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.n
        void t() {
            g(this.h);
        }
    }

    static abstract class b<K, V> extends v0<K, V> implements Serializable {
        private static final long serialVersionUID = 3;
        final Strength a;
        final Strength b;
        final Equivalence<Object> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Equivalence<Object> f3642d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f3643e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient ConcurrentMap<K, V> f3644f;

        b(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.a = strength;
            this.b = strength2;
            this.c = equivalence;
            this.f3642d = equivalence2;
            this.f3643e = i;
            this.f3644f = concurrentMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y0
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public ConcurrentMap<K, V> P() {
            return this.f3644f;
        }

        void E(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            while (true) {
                Object object = objectInputStream.readObject();
                if (object == null) {
                    return;
                }
                this.f3644f.put((K) object, (V) objectInputStream.readObject());
            }
        }

        MapMaker F(ObjectInputStream objectInputStream) throws IOException {
            return new MapMaker().g(objectInputStream.readInt()).j(this.a).k(this.b).h(this.c).a(this.f3643e);
        }

        void G(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.f3644f.size());
            for (Map.Entry<K, V> entry : this.f3644f.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    static final class b0<K, V> extends d<K, V, b0<K, V>> implements d0<K, V, b0<K, V>> {
        private volatile e0<K, V, b0<K, V>> c;

        static final class a<K, V> implements j<K, V, b0<K, V>, c0<K, V>> {
            private static final a<?, ?> a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength b() {
                return Strength.b;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength e() {
                return Strength.b;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public b0<K, V> a(c0<K, V> c0Var, b0<K, V> b0Var, b0<K, V> b0Var2) {
                if (b0Var.getKey() == null || n.r(b0Var)) {
                    return null;
                }
                return b0Var.d(((c0) c0Var).h, ((c0) c0Var).i, b0Var2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public b0<K, V> d(c0<K, V> c0Var, K k, int i, b0<K, V> b0Var) {
                return new b0<>(((c0) c0Var).h, k, i, b0Var);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public c0<K, V> f(MapMakerInternalMap<K, V, b0<K, V>, c0<K, V>> mapMakerInternalMap, int i, int i2) {
                return new c0<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void c(c0<K, V> c0Var, b0<K, V> b0Var, V v) {
                b0Var.e(v, ((c0) c0Var).i);
            }
        }

        b0(ReferenceQueue<K> referenceQueue, K k, int i, b0<K, V> b0Var) {
            super(referenceQueue, k, i, b0Var);
            this.c = MapMakerInternalMap.q();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.d0
        public e0<K, V, b0<K, V>> a() {
            return this.c;
        }

        b0<K, V> d(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, b0<K, V> b0Var) {
            b0<K, V> b0Var2 = new b0<>(referenceQueue, getKey(), this.a, b0Var);
            b0Var2.c = this.c.b(referenceQueue2, b0Var2);
            return b0Var2;
        }

        void e(V v, ReferenceQueue<V> referenceQueue) {
            e0<K, V, b0<K, V>> e0Var = this.c;
            this.c = new f0(referenceQueue, v, this);
            e0Var.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public V getValue() {
            return this.c.get();
        }
    }

    static abstract class c<K, V, E extends i<K, V, E>> implements i<K, V, E> {
        final K a;
        final int b;
        final E c;

        c(K k, int i, E e2) {
            this.a = k;
            this.b = i;
            this.c = e2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public int b() {
            return this.b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public E c() {
            return this.c;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public K getKey() {
            return this.a;
        }
    }

    static final class c0<K, V> extends n<K, V, b0<K, V>, c0<K, V>> {
        private final ReferenceQueue<K> h;
        private final ReferenceQueue<V> i;

        c0(MapMakerInternalMap<K, V, b0<K, V>, c0<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.h = new ReferenceQueue<>();
            this.i = new ReferenceQueue<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.n
        /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
        public c0<K, V> H() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.n
        void s() {
            d(this.h);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.n
        void t() {
            g(this.h);
            h(this.i);
        }
    }

    static abstract class d<K, V, E extends i<K, V, E>> extends WeakReference<K> implements i<K, V, E> {
        final int a;
        final E b;

        d(ReferenceQueue<K> referenceQueue, K k, int i, E e2) {
            super(k, referenceQueue);
            this.a = i;
            this.b = e2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public int b() {
            return this.a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public E c() {
            return this.b;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public K getKey() {
            return get();
        }
    }

    interface d0<K, V, E extends i<K, V, E>> extends i<K, V, E> {
        e0<K, V, E> a();
    }

    static final class e implements i<Object, Object, e> {
        private e() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public int b() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public e c() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public Object getValue() {
            throw new AssertionError();
        }
    }

    interface e0<K, V, E extends i<K, V, E>> {
        E a();

        e0<K, V, E> b(ReferenceQueue<V> referenceQueue, E e2);

        void clear();

        V get();
    }

    final class f extends MapMakerInternalMap<K, V, E, S>.h<Map.Entry<K, V>> {
        f(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return d();
        }
    }

    static final class f0<K, V, E extends i<K, V, E>> extends WeakReference<V> implements e0<K, V, E> {
        final E a;

        f0(ReferenceQueue<V> referenceQueue, V v, E e2) {
            super(v, referenceQueue);
            this.a = e2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.e0
        public E a() {
            return this.a;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.e0
        public e0<K, V, E> b(ReferenceQueue<V> referenceQueue, E e2) {
            return new f0(referenceQueue, get(), e2);
        }
    }

    final class g extends m<Map.Entry<K, V>> {
        g() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = MapMakerInternalMap.this.get(key)) != null && MapMakerInternalMap.this.r().c(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && MapMakerInternalMap.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    final class g0 extends com.google.common.collect.i<K, V> {
        final K a;
        V b;

        g0(K k, V v) {
            this.a = k;
            this.b = v;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.a.equals(entry.getKey()) && this.b.equals(entry.getValue());
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) MapMakerInternalMap.this.put(this.a, v);
            this.b = v;
            return v2;
        }
    }

    abstract class h<T> implements Iterator<T> {
        int a;
        int b = -1;
        n<K, V, E, S> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        AtomicReferenceArray<E> f3645d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        E f3646e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        MapMakerInternalMap<K, V, E, S>.g0 f3647f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        MapMakerInternalMap<K, V, E, S>.g0 f3648g;

        h() {
            this.a = MapMakerInternalMap.this.f3638d.length - 1;
            b();
        }

        final void b() {
            this.f3647f = null;
            if (e() || f()) {
                return;
            }
            while (true) {
                int i = this.a;
                if (i < 0) {
                    return;
                }
                n<K, V, E, S>[] nVarArr = MapMakerInternalMap.this.f3638d;
                this.a = i - 1;
                n<K, V, E, S> nVar = nVarArr[i];
                this.c = nVar;
                if (nVar.b != 0) {
                    this.f3645d = this.c.f3650e;
                    this.b = r0.length() - 1;
                    if (f()) {
                        return;
                    }
                }
            }
        }

        boolean c(E e2) {
            boolean z;
            try {
                Object key = e2.getKey();
                Object objF = MapMakerInternalMap.this.f(e2);
                if (objF != null) {
                    this.f3647f = new g0(key, objF);
                    z = true;
                } else {
                    z = false;
                }
                return z;
            } finally {
                this.c.v();
            }
        }

        MapMakerInternalMap<K, V, E, S>.g0 d() {
            MapMakerInternalMap<K, V, E, S>.g0 g0Var = this.f3647f;
            if (g0Var == null) {
                throw new NoSuchElementException();
            }
            this.f3648g = g0Var;
            b();
            return this.f3648g;
        }

        boolean e() {
            E e2 = this.f3646e;
            if (e2 == null) {
                return false;
            }
            while (true) {
                this.f3646e = (E) e2.c();
                E e3 = this.f3646e;
                if (e3 == null) {
                    return false;
                }
                if (c(e3)) {
                    return true;
                }
                e2 = this.f3646e;
            }
        }

        boolean f() {
            while (true) {
                int i = this.b;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f3645d;
                this.b = i - 1;
                E e2 = atomicReferenceArray.get(i);
                this.f3646e = e2;
                if (e2 != null && (c(e2) || e())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3647f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.collect.z.e(this.f3648g != null);
            MapMakerInternalMap.this.remove(this.f3648g.getKey());
            this.f3648g = null;
        }
    }

    interface i<K, V, E extends i<K, V, E>> {
        int b();

        E c();

        K getKey();

        V getValue();
    }

    interface j<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> {
        E a(S s, E e2, E e3);

        Strength b();

        void c(S s, E e2, V v);

        E d(S s, K k, int i, E e2);

        Strength e();

        S f(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2);
    }

    final class k extends MapMakerInternalMap<K, V, E, S>.h<K> {
        k(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return d().getKey();
        }
    }

    final class l extends m<K> {
        l() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new k(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    private static abstract class m<E> extends AbstractSet<E> {
        private m() {
        }

        /* synthetic */ m(a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return MapMakerInternalMap.p(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.p(this).toArray(tArr);
        }
    }

    static abstract class n<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> extends ReentrantLock {
        final MapMakerInternalMap<K, V, E, S> a;
        volatile int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3649d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        volatile AtomicReferenceArray<E> f3650e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final int f3651f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final AtomicInteger f3652g = new AtomicInteger();

        n(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2) {
            this.a = mapMakerInternalMap;
            this.f3651f = i2;
            q(u(i));
        }

        static <K, V, E extends i<K, V, E>> boolean r(E e2) {
            return e2.getValue() == null;
        }

        V A(Object obj, int i) {
            lock();
            try {
                w();
                AtomicReferenceArray<E> atomicReferenceArray = this.f3650e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e2 = atomicReferenceArray.get(length);
                for (i iVarC = e2; iVarC != null; iVarC = iVarC.c()) {
                    Object key = iVarC.getKey();
                    if (iVarC.b() == i && key != null && this.a.f3640f.c(obj, key)) {
                        V v = (V) iVarC.getValue();
                        if (v == null && !r(iVarC)) {
                            return null;
                        }
                        this.c++;
                        i iVarC2 = C(e2, iVarC);
                        int i2 = this.b - 1;
                        atomicReferenceArray.set(length, (E) iVarC2);
                        this.b = i2;
                        return v;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        
            if (r8.a.r().c(r11, r4.getValue()) == false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
        
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        
            if (r(r4) == false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
        
            r8.c++;
            r9 = C(r3, r4);
            r10 = r8.b - 1;
            r0.set(r1, (E) r9);
            r8.b = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        boolean B(java.lang.Object r9, int r10, java.lang.Object r11) {
            /*
                r8 = this;
                r8.lock()
                r8.w()     // Catch: java.lang.Throwable -> L69
                java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.MapMakerInternalMap$i<K, V, E>> r0 = r8.f3650e     // Catch: java.lang.Throwable -> L69
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L69
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r10
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.MapMakerInternalMap$i r3 = (com.google.common.collect.MapMakerInternalMap.i) r3     // Catch: java.lang.Throwable -> L69
                r4 = r3
            L16:
                r5 = 0
                if (r4 == 0) goto L65
                java.lang.Object r6 = r4.getKey()     // Catch: java.lang.Throwable -> L69
                int r7 = r4.b()     // Catch: java.lang.Throwable -> L69
                if (r7 != r10) goto L60
                if (r6 == 0) goto L60
                com.google.common.collect.MapMakerInternalMap<K, V, E extends com.google.common.collect.MapMakerInternalMap$i<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$n<K, V, E, S>> r7 = r8.a     // Catch: java.lang.Throwable -> L69
                com.google.common.base.Equivalence<java.lang.Object> r7 = r7.f3640f     // Catch: java.lang.Throwable -> L69
                boolean r6 = r7.c(r9, r6)     // Catch: java.lang.Throwable -> L69
                if (r6 == 0) goto L60
                java.lang.Object r9 = r4.getValue()     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.MapMakerInternalMap<K, V, E extends com.google.common.collect.MapMakerInternalMap$i<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$n<K, V, E, S>> r10 = r8.a     // Catch: java.lang.Throwable -> L69
                com.google.common.base.Equivalence r10 = r10.r()     // Catch: java.lang.Throwable -> L69
                boolean r9 = r10.c(r11, r9)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L41
                r5 = 1
                goto L47
            L41:
                boolean r9 = r(r4)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L5c
            L47:
                int r9 = r8.c     // Catch: java.lang.Throwable -> L69
                int r9 = r9 + r2
                r8.c = r9     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.MapMakerInternalMap$i r9 = r8.C(r3, r4)     // Catch: java.lang.Throwable -> L69
                int r10 = r8.b     // Catch: java.lang.Throwable -> L69
                int r10 = r10 - r2
                r0.set(r1, r9)     // Catch: java.lang.Throwable -> L69
                r8.b = r10     // Catch: java.lang.Throwable -> L69
                r8.unlock()
                return r5
            L5c:
                r8.unlock()
                return r5
            L60:
                com.google.common.collect.MapMakerInternalMap$i r4 = r4.c()     // Catch: java.lang.Throwable -> L69
                goto L16
            L65:
                r8.unlock()
                return r5
            L69:
                r9 = move-exception
                r8.unlock()
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.n.B(java.lang.Object, int, java.lang.Object):boolean");
        }

        E C(E e2, E e3) {
            int i = this.b;
            E e4 = (E) e3.c();
            while (e2 != e3) {
                i iVarF = f(e2, e4);
                if (iVarF != null) {
                    e4 = (E) iVarF;
                } else {
                    i--;
                }
                e2 = (E) e2.c();
            }
            this.b = i;
            return e4;
        }

        V D(K k, int i, V v) {
            lock();
            try {
                w();
                AtomicReferenceArray<E> atomicReferenceArray = this.f3650e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e2 = atomicReferenceArray.get(length);
                for (i iVarC = e2; iVarC != null; iVarC = iVarC.c()) {
                    Object key = iVarC.getKey();
                    if (iVarC.b() == i && key != null && this.a.f3640f.c(k, key)) {
                        V v2 = (V) iVarC.getValue();
                        if (v2 != null) {
                            this.c++;
                            I(iVarC, v);
                            return v2;
                        }
                        if (r(iVarC)) {
                            this.c++;
                            i iVarC2 = C(e2, iVarC);
                            int i2 = this.b - 1;
                            atomicReferenceArray.set(length, (E) iVarC2);
                            this.b = i2;
                        }
                        return null;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        boolean E(K k, int i, V v, V v2) {
            lock();
            try {
                w();
                AtomicReferenceArray<E> atomicReferenceArray = this.f3650e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e2 = atomicReferenceArray.get(length);
                for (i iVarC = e2; iVarC != null; iVarC = iVarC.c()) {
                    Object key = iVarC.getKey();
                    if (iVarC.b() == i && key != null && this.a.f3640f.c(k, key)) {
                        Object value = iVarC.getValue();
                        if (value != null) {
                            if (!this.a.r().c(v, value)) {
                                return false;
                            }
                            this.c++;
                            I(iVarC, v2);
                            return true;
                        }
                        if (r(iVarC)) {
                            this.c++;
                            i iVarC2 = C(e2, iVarC);
                            int i2 = this.b - 1;
                            atomicReferenceArray.set(length, (E) iVarC2);
                            this.b = i2;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        void F() {
            G();
        }

        void G() {
            if (tryLock()) {
                try {
                    t();
                    this.f3652g.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S H();

        void I(E e2, V v) {
            this.a.f3641g.c(H(), e2, v);
        }

        void J() {
            if (tryLock()) {
                try {
                    t();
                } finally {
                    unlock();
                }
            }
        }

        void c() {
            if (this.b != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.f3650e;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
                    }
                    s();
                    this.f3652g.set(0);
                    this.c++;
                    this.b = 0;
                } finally {
                    unlock();
                }
            }
        }

        <T> void d(ReferenceQueue<T> referenceQueue) {
            while (referenceQueue.poll() != null) {
            }
        }

        boolean e(Object obj, int i) {
            try {
                boolean z = false;
                if (this.b == 0) {
                    return false;
                }
                i iVarN = n(obj, i);
                if (iVarN != null) {
                    if (iVarN.getValue() != null) {
                        z = true;
                    }
                }
                return z;
            } finally {
                v();
            }
        }

        E f(E e2, E e3) {
            return (E) this.a.f3641g.a(H(), e2, e3);
        }

        void g(ReferenceQueue<K> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends K> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.a.j((i) referencePoll);
                i++;
            } while (i != 16);
        }

        void h(ReferenceQueue<V> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends V> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.a.k((e0) referencePoll);
                i++;
            } while (i != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            AtomicReferenceArray<E> atomicReferenceArray = this.f3650e;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.b;
            AtomicReferenceArray<E> atomicReferenceArrayU = u(length << 1);
            this.f3649d = (atomicReferenceArrayU.length() * 3) / 4;
            int length2 = atomicReferenceArrayU.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                E eC = atomicReferenceArray.get(i2);
                if (eC != null) {
                    i iVarC = eC.c();
                    int iB = eC.b() & length2;
                    if (iVarC == null) {
                        atomicReferenceArrayU.set(iB, eC);
                    } else {
                        i iVar = eC;
                        while (iVarC != null) {
                            int iB2 = iVarC.b() & length2;
                            if (iB2 != iB) {
                                iVar = iVarC;
                                iB = iB2;
                            }
                            iVarC = iVarC.c();
                        }
                        atomicReferenceArrayU.set(iB, iVar);
                        while (eC != iVar) {
                            int iB3 = eC.b() & length2;
                            i iVarF = f(eC, (i) atomicReferenceArrayU.get(iB3));
                            if (iVarF != null) {
                                atomicReferenceArrayU.set(iB3, iVarF);
                            } else {
                                i--;
                            }
                            eC = eC.c();
                        }
                    }
                }
            }
            this.f3650e = atomicReferenceArrayU;
            this.b = i;
        }

        V j(Object obj, int i) {
            try {
                i iVarN = n(obj, i);
                if (iVarN == null) {
                    return null;
                }
                V v = (V) iVarN.getValue();
                if (v == null) {
                    J();
                }
                return v;
            } finally {
                v();
            }
        }

        E k(Object obj, int i) {
            if (this.b == 0) {
                return null;
            }
            for (E e2 = (E) m(i); e2 != null; e2 = (E) e2.c()) {
                if (e2.b() == i) {
                    Object key = e2.getKey();
                    if (key == null) {
                        J();
                    } else if (this.a.f3640f.c(obj, key)) {
                        return e2;
                    }
                }
            }
            return null;
        }

        E m(int i) {
            return this.f3650e.get(i & (r0.length() - 1));
        }

        E n(Object obj, int i) {
            return (E) k(obj, i);
        }

        V p(E e2) {
            if (e2.getKey() == null) {
                J();
                return null;
            }
            V v = (V) e2.getValue();
            if (v != null) {
                return v;
            }
            J();
            return null;
        }

        void q(AtomicReferenceArray<E> atomicReferenceArray) {
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.f3649d = length;
            if (length == this.f3651f) {
                this.f3649d = length + 1;
            }
            this.f3650e = atomicReferenceArray;
        }

        void s() {
        }

        void t() {
        }

        AtomicReferenceArray<E> u(int i) {
            return new AtomicReferenceArray<>(i);
        }

        void v() {
            if ((this.f3652g.incrementAndGet() & 63) == 0) {
                F();
            }
        }

        void w() {
            G();
        }

        V x(K k, int i, V v, boolean z) {
            lock();
            try {
                w();
                int i2 = this.b + 1;
                if (i2 > this.f3649d) {
                    i();
                    i2 = this.b + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f3650e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e2 = atomicReferenceArray.get(length);
                for (i iVarC = e2; iVarC != null; iVarC = iVarC.c()) {
                    Object key = iVarC.getKey();
                    if (iVarC.b() == i && key != null && this.a.f3640f.c(k, key)) {
                        V v2 = (V) iVarC.getValue();
                        if (v2 == null) {
                            this.c++;
                            I(iVarC, v);
                            this.b = this.b;
                            return null;
                        }
                        if (z) {
                            return v2;
                        }
                        this.c++;
                        I(iVarC, v);
                        return v2;
                    }
                }
                this.c++;
                i iVarD = this.a.f3641g.d(H(), k, i, e2);
                I(iVarD, v);
                atomicReferenceArray.set(length, (E) iVarD);
                this.b = i2;
                return null;
            } finally {
                unlock();
            }
        }

        boolean y(E e2, int i) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f3650e;
                int length = i & (atomicReferenceArray.length() - 1);
                E e3 = atomicReferenceArray.get(length);
                for (i iVarC = e3; iVarC != null; iVarC = iVarC.c()) {
                    if (iVarC == e2) {
                        this.c++;
                        i iVarC2 = C(e3, iVarC);
                        int i2 = this.b - 1;
                        atomicReferenceArray.set(length, (E) iVarC2);
                        this.b = i2;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        boolean z(K k, int i, e0<K, V, E> e0Var) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.f3650e;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e2 = atomicReferenceArray.get(length);
                for (i iVarC = e2; iVarC != null; iVarC = iVarC.c()) {
                    Object key = iVarC.getKey();
                    if (iVarC.b() == i && key != null && this.a.f3640f.c(k, key)) {
                        if (((d0) iVarC).a() != e0Var) {
                            return false;
                        }
                        this.c++;
                        i iVarC2 = C(e2, iVarC);
                        int i2 = this.b - 1;
                        atomicReferenceArray.set(length, (E) iVarC2);
                        this.b = i2;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }
    }

    private static final class o<K, V> extends b<K, V> {
        private static final long serialVersionUID = 3;

        o(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.f3644f = F(objectInputStream).i();
            E(objectInputStream);
        }

        private Object readResolve() {
            return this.f3644f;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            G(objectOutputStream);
        }
    }

    static final class p<K> extends c<K, MapMaker.Dummy, p<K>> implements i {

        static final class a<K> implements j<K, MapMaker.Dummy, p<K>, q<K>> {
            private static final a<?> a = new a<>();

            a() {
            }

            static <K> a<K> h() {
                return (a<K>) a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength b() {
                return Strength.a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength e() {
                return Strength.a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public p<K> a(q<K> qVar, p<K> pVar, p<K> pVar2) {
                return pVar.d(pVar2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public p<K> d(q<K> qVar, K k, int i, p<K> pVar) {
                return new p<>(k, i, pVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public q<K> f(MapMakerInternalMap<K, MapMaker.Dummy, p<K>, q<K>> mapMakerInternalMap, int i, int i2) {
                return new q<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void c(q<K> qVar, p<K> pVar, MapMaker.Dummy dummy) {
            }
        }

        p(K k, int i, p<K> pVar) {
            super(k, i, pVar);
        }

        p<K> d(p<K> pVar) {
            return new p<>(this.a, this.b, pVar);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }
    }

    static final class q<K> extends n<K, MapMaker.Dummy, p<K>, q<K>> {
        q(MapMakerInternalMap<K, MapMaker.Dummy, p<K>, q<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.n
        /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
        public q<K> H() {
            return this;
        }
    }

    static final class r<K, V> extends c<K, V, r<K, V>> implements i {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile V f3653d;

        static final class a<K, V> implements j<K, V, r<K, V>, s<K, V>> {
            private static final a<?, ?> a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength b() {
                return Strength.a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength e() {
                return Strength.a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public r<K, V> a(s<K, V> sVar, r<K, V> rVar, r<K, V> rVar2) {
                return rVar.d(rVar2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public r<K, V> d(s<K, V> sVar, K k, int i, r<K, V> rVar) {
                return new r<>(k, i, rVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public s<K, V> f(MapMakerInternalMap<K, V, r<K, V>, s<K, V>> mapMakerInternalMap, int i, int i2) {
                return new s<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void c(s<K, V> sVar, r<K, V> rVar, V v) {
                rVar.e(v);
            }
        }

        r(K k, int i, r<K, V> rVar) {
            super(k, i, rVar);
            this.f3653d = null;
        }

        r<K, V> d(r<K, V> rVar) {
            r<K, V> rVar2 = new r<>(this.a, this.b, rVar);
            rVar2.f3653d = this.f3653d;
            return rVar2;
        }

        void e(V v) {
            this.f3653d = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public V getValue() {
            return this.f3653d;
        }
    }

    static final class s<K, V> extends n<K, V, r<K, V>, s<K, V>> {
        s(MapMakerInternalMap<K, V, r<K, V>, s<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.n
        /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
        public s<K, V> H() {
            return this;
        }
    }

    static final class t<K, V> extends c<K, V, t<K, V>> implements d0<K, V, t<K, V>> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile e0<K, V, t<K, V>> f3654d;

        static final class a<K, V> implements j<K, V, t<K, V>, u<K, V>> {
            private static final a<?, ?> a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength b() {
                return Strength.b;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength e() {
                return Strength.a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public t<K, V> a(u<K, V> uVar, t<K, V> tVar, t<K, V> tVar2) {
                if (n.r(tVar)) {
                    return null;
                }
                return tVar.d(((u) uVar).h, tVar2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public t<K, V> d(u<K, V> uVar, K k, int i, t<K, V> tVar) {
                return new t<>(k, i, tVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public u<K, V> f(MapMakerInternalMap<K, V, t<K, V>, u<K, V>> mapMakerInternalMap, int i, int i2) {
                return new u<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void c(u<K, V> uVar, t<K, V> tVar, V v) {
                tVar.e(v, ((u) uVar).h);
            }
        }

        t(K k, int i, t<K, V> tVar) {
            super(k, i, tVar);
            this.f3654d = MapMakerInternalMap.q();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.d0
        public e0<K, V, t<K, V>> a() {
            return this.f3654d;
        }

        t<K, V> d(ReferenceQueue<V> referenceQueue, t<K, V> tVar) {
            t<K, V> tVar2 = new t<>(this.a, this.b, tVar);
            tVar2.f3654d = this.f3654d.b(referenceQueue, tVar2);
            return tVar2;
        }

        void e(V v, ReferenceQueue<V> referenceQueue) {
            e0<K, V, t<K, V>> e0Var = this.f3654d;
            this.f3654d = new f0(referenceQueue, v, this);
            e0Var.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public V getValue() {
            return this.f3654d.get();
        }
    }

    static final class u<K, V> extends n<K, V, t<K, V>, u<K, V>> {
        private final ReferenceQueue<V> h;

        u(MapMakerInternalMap<K, V, t<K, V>, u<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.h = new ReferenceQueue<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.n
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public u<K, V> H() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.n
        void s() {
            d(this.h);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.n
        void t() {
            h(this.h);
        }
    }

    final class v extends MapMakerInternalMap<K, V, E, S>.h<V> {
        v(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return d().getValue();
        }
    }

    final class w extends AbstractCollection<V> {
        w() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new v(MapMakerInternalMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MapMakerInternalMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return MapMakerInternalMap.p(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.p(this).toArray(tArr);
        }
    }

    static final class x<K> extends d<K, MapMaker.Dummy, x<K>> implements i {

        static final class a<K> implements j<K, MapMaker.Dummy, x<K>, y<K>> {
            private static final a<?> a = new a<>();

            a() {
            }

            static <K> a<K> h() {
                return (a<K>) a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength b() {
                return Strength.a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength e() {
                return Strength.b;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public x<K> a(y<K> yVar, x<K> xVar, x<K> xVar2) {
                if (xVar.getKey() == null) {
                    return null;
                }
                return xVar.d(((y) yVar).h, xVar2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public x<K> d(y<K> yVar, K k, int i, x<K> xVar) {
                return new x<>(((y) yVar).h, k, i, xVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public y<K> f(MapMakerInternalMap<K, MapMaker.Dummy, x<K>, y<K>> mapMakerInternalMap, int i, int i2) {
                return new y<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void c(y<K> yVar, x<K> xVar, MapMaker.Dummy dummy) {
            }
        }

        x(ReferenceQueue<K> referenceQueue, K k, int i, x<K> xVar) {
            super(referenceQueue, k, i, xVar);
        }

        x<K> d(ReferenceQueue<K> referenceQueue, x<K> xVar) {
            return new x<>(referenceQueue, getKey(), this.a, xVar);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }
    }

    static final class y<K> extends n<K, MapMaker.Dummy, x<K>, y<K>> {
        private final ReferenceQueue<K> h;

        y(MapMakerInternalMap<K, MapMaker.Dummy, x<K>, y<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.h = new ReferenceQueue<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.n
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public y<K> H() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.n
        void s() {
            d(this.h);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.n
        void t() {
            g(this.h);
        }
    }

    static final class z<K, V> extends d<K, V, z<K, V>> implements i {
        private volatile V c;

        static final class a<K, V> implements j<K, V, z<K, V>, a0<K, V>> {
            private static final a<?, ?> a = new a<>();

            a() {
            }

            static <K, V> a<K, V> h() {
                return (a<K, V>) a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength b() {
                return Strength.a;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            public Strength e() {
                return Strength.b;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
            public z<K, V> a(a0<K, V> a0Var, z<K, V> zVar, z<K, V> zVar2) {
                if (zVar.getKey() == null) {
                    return null;
                }
                return zVar.d(((a0) a0Var).h, zVar2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public z<K, V> d(a0<K, V> a0Var, K k, int i, z<K, V> zVar) {
                return new z<>(((a0) a0Var).h, k, i, zVar);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public a0<K, V> f(MapMakerInternalMap<K, V, z<K, V>, a0<K, V>> mapMakerInternalMap, int i, int i2) {
                return new a0<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.j
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public void c(a0<K, V> a0Var, z<K, V> zVar, V v) {
                zVar.e(v);
            }
        }

        z(ReferenceQueue<K> referenceQueue, K k, int i, z<K, V> zVar) {
            super(referenceQueue, k, i, zVar);
            this.c = null;
        }

        z<K, V> d(ReferenceQueue<K> referenceQueue, z<K, V> zVar) {
            z<K, V> zVar2 = new z<>(referenceQueue, getKey(), this.a, zVar);
            zVar2.e(this.c);
            return zVar2;
        }

        void e(V v) {
            this.c = v;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.i
        public V getValue() {
            return this.c;
        }
    }

    private MapMakerInternalMap(MapMaker mapMaker, j<K, V, E, S> jVar) {
        this.f3639e = Math.min(mapMaker.b(), 65536);
        this.f3640f = mapMaker.d();
        this.f3641g = jVar;
        int iMin = Math.min(mapMaker.c(), 1073741824);
        int i2 = 0;
        int i3 = 1;
        int i4 = 1;
        int i5 = 0;
        while (i4 < this.f3639e) {
            i5++;
            i4 <<= 1;
        }
        this.c = 32 - i5;
        this.b = i4 - 1;
        this.f3638d = i(i4);
        int i6 = iMin / i4;
        while (i3 < (i4 * i6 < iMin ? i6 + 1 : i6)) {
            i3 <<= 1;
        }
        while (true) {
            n<K, V, E, S>[] nVarArr = this.f3638d;
            if (i2 >= nVarArr.length) {
                return;
            }
            nVarArr[i2] = c(i3, -1);
            i2++;
        }
    }

    static <K, V> MapMakerInternalMap<K, V, ? extends i<K, V, ?>, ?> b(MapMaker mapMaker) {
        Strength strengthE = mapMaker.e();
        Strength strength = Strength.a;
        if (strengthE == strength && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, r.a.h());
        }
        if (mapMaker.e() == strength && mapMaker.f() == Strength.b) {
            return new MapMakerInternalMap<>(mapMaker, t.a.h());
        }
        Strength strengthE2 = mapMaker.e();
        Strength strength2 = Strength.b;
        if (strengthE2 == strength2 && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, z.a.h());
        }
        if (mapMaker.e() == strength2 && mapMaker.f() == strength2) {
            return new MapMakerInternalMap<>(mapMaker, b0.a.h());
        }
        throw new AssertionError();
    }

    static <K> MapMakerInternalMap<K, MapMaker.Dummy, ? extends i<K, MapMaker.Dummy, ?>, ?> d(MapMaker mapMaker) {
        Strength strengthE = mapMaker.e();
        Strength strength = Strength.a;
        if (strengthE == strength && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, p.a.h());
        }
        Strength strengthE2 = mapMaker.e();
        Strength strength2 = Strength.b;
        if (strengthE2 == strength2 && mapMaker.f() == strength) {
            return new MapMakerInternalMap<>(mapMaker, x.a.h());
        }
        if (mapMaker.f() == strength2) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    static int m(int i2) {
        int i3 = i2 + ((i2 << 15) ^ (-12931));
        int i4 = i3 ^ (i3 >>> 10);
        int i5 = i4 + (i4 << 3);
        int i6 = i5 ^ (i5 >>> 6);
        int i7 = i6 + (i6 << 2) + (i6 << 14);
        return i7 ^ (i7 >>> 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> p(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.addAll(arrayList, collection.iterator());
        return arrayList;
    }

    static <K, V, E extends i<K, V, E>> e0<K, V, E> q() {
        return (e0<K, V, E>) a;
    }

    n<K, V, E, S> c(int i2, int i3) {
        return this.f3641g.f(this, i2, i3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (n<K, V, E, S> nVar : this.f3638d) {
            nVar.c();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int iH = h(obj);
        return n(iH).e(obj, iH);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        if (obj == null) {
            return false;
        }
        n<K, V, E, S>[] nVarArr = this.f3638d;
        long j2 = -1;
        int i2 = 0;
        while (i2 < 3) {
            long j3 = 0;
            for (n<K, V, E, S> nVar : nVarArr) {
                int i3 = nVar.b;
                AtomicReferenceArray<E> atomicReferenceArray = nVar.f3650e;
                for (int i4 = 0; i4 < atomicReferenceArray.length(); i4++) {
                    for (E eC = atomicReferenceArray.get(i4); eC != null; eC = eC.c()) {
                        V vP = nVar.p(eC);
                        if (vP != null && r().c(obj, vP)) {
                            return true;
                        }
                    }
                }
                j3 += (long) nVar.c;
            }
            if (j3 == j2) {
                return false;
            }
            i2++;
            j2 = j3;
        }
        return false;
    }

    E e(Object obj) {
        if (obj == null) {
            return null;
        }
        int iH = h(obj);
        return (E) n(iH).k(obj, iH);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.j;
        if (set != null) {
            return set;
        }
        g gVar = new g();
        this.j = gVar;
        return gVar;
    }

    V f(E e2) {
        if (e2.getKey() == null) {
            return null;
        }
        return (V) e2.getValue();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int iH = h(obj);
        return n(iH).j(obj, iH);
    }

    int h(Object obj) {
        return m(this.f3640f.d(obj));
    }

    final n<K, V, E, S>[] i(int i2) {
        return new n[i2];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        n<K, V, E, S>[] nVarArr = this.f3638d;
        long j2 = 0;
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (nVarArr[i2].b != 0) {
                return false;
            }
            j2 += (long) nVarArr[i2].c;
        }
        if (j2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < nVarArr.length; i3++) {
            if (nVarArr[i3].b != 0) {
                return false;
            }
            j2 -= (long) nVarArr[i3].c;
        }
        return j2 == 0;
    }

    void j(E e2) {
        int iB = e2.b();
        n(iB).y(e2, iB);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void k(e0<K, V, E> e0Var) {
        i iVarA = e0Var.a();
        int iB = iVarA.b();
        n(iB).z(iVarA.getKey(), iB, e0Var);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.h;
        if (set != null) {
            return set;
        }
        l lVar = new l();
        this.h = lVar;
        return lVar;
    }

    n<K, V, E, S> n(int i2) {
        return this.f3638d[(i2 >>> this.c) & this.b];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iH = h(k2);
        return n(iH).x(k2, iH, v2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iH = h(k2);
        return n(iH).x(k2, iH, v2, true);
    }

    Equivalence<Object> r() {
        return this.f3641g.b().f();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int iH = h(obj);
        return n(iH).A(obj, iH);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int iH = h(obj);
        return n(iH).B(obj, iH, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iH = h(k2);
        return n(iH).D(k2, iH, v2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k2, V v2, V v3) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v3);
        if (v2 == null) {
            return false;
        }
        int iH = h(k2);
        return n(iH).E(k2, iH, v2, v3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j2 = 0;
        for (n<K, V, E, S> nVar : this.f3638d) {
            j2 += (long) nVar.b;
        }
        return Ints.saturatedCast(j2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.i;
        if (collection != null) {
            return collection;
        }
        w wVar = new w();
        this.i = wVar;
        return wVar;
    }

    Object writeReplace() {
        return new o(this.f3641g.e(), this.f3641g.b(), this.f3640f, this.f3641g.b().f(), this.f3639e, this);
    }
}
