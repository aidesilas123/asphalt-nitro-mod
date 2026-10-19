package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.common.collect.o3;
import com.google.common.graph.ElementOrder;
import com.google.common.graph.t;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: DirectedGraphConnections.java */
/* JADX INFO: loaded from: classes3.dex */
final class t<N, V> implements c0<N, V> {
    private static final Object a = new Object();
    private final Map<N, Object> b;
    private final List<f<N>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3867e;

    /* JADX INFO: compiled from: DirectedGraphConnections.java */
    class a extends AbstractSet<N> {

        /* JADX INFO: renamed from: com.google.common.graph.t$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DirectedGraphConnections.java */
        class C0268a extends AbstractIterator<N> {
            final /* synthetic */ Iterator c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Set f3868d;

            C0268a(a aVar, Iterator it, Set set) {
                this.c = it;
                this.f3868d = set;
            }

            @Override // com.google.common.collect.AbstractIterator
            protected N b() {
                while (this.c.hasNext()) {
                    f fVar = (f) this.c.next();
                    if (this.f3868d.add(fVar.a)) {
                        return fVar.a;
                    }
                }
                return c();
            }
        }

        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return t.this.b.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public o3<N> iterator() {
            return new C0268a(this, t.this.c.iterator(), new HashSet());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return t.this.b.size();
        }
    }

    /* JADX INFO: compiled from: DirectedGraphConnections.java */
    class b extends AbstractSet<N> {

        /* JADX INFO: compiled from: DirectedGraphConnections.java */
        class a extends AbstractIterator<N> {
            final /* synthetic */ Iterator c;

            a(b bVar, Iterator it) {
                this.c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            protected N b() {
                while (this.c.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.c.next();
                    if (t.n(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return c();
            }
        }

        /* JADX INFO: renamed from: com.google.common.graph.t$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DirectedGraphConnections.java */
        class C0269b extends AbstractIterator<N> {
            final /* synthetic */ Iterator c;

            C0269b(b bVar, Iterator it) {
                this.c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            protected N b() {
                while (this.c.hasNext()) {
                    f fVar = (f) this.c.next();
                    if (fVar instanceof f.a) {
                        return fVar.a;
                    }
                }
                return c();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return t.n(t.this.b.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public o3<N> iterator() {
            return t.this.c == null ? new a(this, t.this.b.entrySet().iterator()) : new C0269b(this, t.this.c.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return t.this.f3866d;
        }
    }

    /* JADX INFO: compiled from: DirectedGraphConnections.java */
    class c extends AbstractSet<N> {

        /* JADX INFO: compiled from: DirectedGraphConnections.java */
        class a extends AbstractIterator<N> {
            final /* synthetic */ Iterator c;

            a(c cVar, Iterator it) {
                this.c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            protected N b() {
                while (this.c.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.c.next();
                    if (t.o(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return c();
            }
        }

        /* JADX INFO: compiled from: DirectedGraphConnections.java */
        class b extends AbstractIterator<N> {
            final /* synthetic */ Iterator c;

            b(c cVar, Iterator it) {
                this.c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            protected N b() {
                while (this.c.hasNext()) {
                    f fVar = (f) this.c.next();
                    if (fVar instanceof f.b) {
                        return fVar.a;
                    }
                }
                return c();
            }
        }

        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return t.o(t.this.b.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public o3<N> iterator() {
            return t.this.c == null ? new a(this, t.this.b.entrySet().iterator()) : new b(this, t.this.c.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return t.this.f3867e;
        }
    }

    /* JADX INFO: compiled from: DirectedGraphConnections.java */
    class d extends AbstractIterator<EndpointPair<N>> {
        final /* synthetic */ Iterator c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f3869d;

        d(t tVar, Iterator it, AtomicBoolean atomicBoolean) {
            this.c = it;
            this.f3869d = atomicBoolean;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public EndpointPair<N> b() {
            while (this.c.hasNext()) {
                EndpointPair<N> endpointPair = (EndpointPair) this.c.next();
                if (!endpointPair.g().equals(endpointPair.h()) || !this.f3869d.getAndSet(true)) {
                    return endpointPair;
                }
            }
            return c();
        }
    }

    /* JADX INFO: compiled from: DirectedGraphConnections.java */
    static /* synthetic */ class e {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            a = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: DirectedGraphConnections.java */
    static abstract class f<N> {
        final N a;

        /* JADX INFO: compiled from: DirectedGraphConnections.java */
        static final class a<N> extends f<N> {
            a(N n) {
                super(n);
            }

            public boolean equals(Object obj) {
                if (obj instanceof a) {
                    return this.a.equals(((a) obj).a);
                }
                return false;
            }

            public int hashCode() {
                return a.class.hashCode() + this.a.hashCode();
            }
        }

        /* JADX INFO: compiled from: DirectedGraphConnections.java */
        static final class b<N> extends f<N> {
            b(N n) {
                super(n);
            }

            public boolean equals(Object obj) {
                if (obj instanceof b) {
                    return this.a.equals(((b) obj).a);
                }
                return false;
            }

            public int hashCode() {
                return b.class.hashCode() + this.a.hashCode();
            }
        }

        f(N n) {
            this.a = (N) Preconditions.checkNotNull(n);
        }
    }

    /* JADX INFO: compiled from: DirectedGraphConnections.java */
    private static final class g {
        private final Object a;

        g(Object obj) {
            this.a = obj;
        }
    }

    private t(Map<N, Object> map, List<f<N>> list, int i, int i2) {
        this.b = (Map) Preconditions.checkNotNull(map);
        this.c = list;
        this.f3866d = Graphs.b(i);
        this.f3867e = Graphs.b(i2);
        Preconditions.checkState(i <= map.size() && i2 <= map.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n(Object obj) {
        return obj == a || (obj instanceof g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean o(Object obj) {
        return (obj == a || obj == null) ? false : true;
    }

    static /* synthetic */ EndpointPair r(Object obj, f fVar) {
        return fVar instanceof f.b ? EndpointPair.ordered(obj, fVar.a) : EndpointPair.ordered(fVar.a, obj);
    }

    static <N, V> t<N, V> s(ElementOrder<N> elementOrder) {
        ArrayList arrayList;
        int i = e.a[elementOrder.d().ordinal()];
        if (i == 1) {
            arrayList = null;
        } else {
            if (i != 2) {
                throw new AssertionError(elementOrder.d());
            }
            arrayList = new ArrayList();
        }
        return new t<>(new HashMap(4, 1.0f), arrayList, 0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <N, V> t<N, V> t(N n, Iterable<EndpointPair<N>> iterable, com.google.common.base.f<N, V> fVar) {
        Preconditions.checkNotNull(n);
        Preconditions.checkNotNull(fVar);
        HashMap map = new HashMap();
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int i = 0;
        int i2 = 0;
        for (EndpointPair<N> endpointPair : iterable) {
            if (endpointPair.g().equals(n) && endpointPair.h().equals(n)) {
                map.put(n, new g(fVar.apply(n)));
                aVarBuilder.a(new f.a(n));
                aVarBuilder.a(new f.b(n));
                i++;
            } else if (endpointPair.h().equals(n)) {
                N nG = endpointPair.g();
                Object objPut = map.put(nG, a);
                if (objPut != null) {
                    map.put(nG, new g(objPut));
                }
                aVarBuilder.a(new f.a(nG));
                i++;
            } else {
                Preconditions.checkArgument(endpointPair.g().equals(n));
                N nH = endpointPair.h();
                V vApply = fVar.apply(nH);
                Object objPut2 = map.put(nH, vApply);
                if (objPut2 != null) {
                    Preconditions.checkArgument(objPut2 == a);
                    map.put(nH, new g(vApply));
                }
                aVarBuilder.a(new f.b(nH));
            }
            i2++;
        }
        return new t<>(map, aVarBuilder.k(), i, i2);
    }

    @Override // com.google.common.graph.c0
    public Set<N> a() {
        return new c();
    }

    @Override // com.google.common.graph.c0
    public Set<N> b() {
        return new b();
    }

    @Override // com.google.common.graph.c0
    public Set<N> c() {
        return this.c == null ? Collections.unmodifiableSet(this.b.keySet()) : new a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.c0
    public V d(N n) {
        Preconditions.checkNotNull(n);
        V v = (V) this.b.get(n);
        if (v == a) {
            return null;
        }
        return v instanceof g ? (V) ((g) v).a : v;
    }

    @Override // com.google.common.graph.c0
    public Iterator<EndpointPair<N>> e(final N n) {
        Preconditions.checkNotNull(n);
        List<f<N>> list = this.c;
        return new d(this, list == null ? Iterators.concat(Iterators.transform(b().iterator(), new com.google.common.base.f() { // from class: com.google.common.graph.f
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return EndpointPair.ordered(obj, n);
            }
        }), Iterators.transform(a().iterator(), new com.google.common.base.f() { // from class: com.google.common.graph.e
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return EndpointPair.ordered(n, obj);
            }
        })) : Iterators.transform(list.iterator(), new com.google.common.base.f() { // from class: com.google.common.graph.d
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return t.r(n, (t.f) obj);
            }
        }), new AtomicBoolean(false));
    }

    @Override // com.google.common.graph.c0
    public V f(N n, V v) {
        Object objPut = this.b.put(n, v);
        if (objPut == null) {
            objPut = null;
        } else if (objPut instanceof g) {
            this.b.put(n, new g(v));
            objPut = ((g) objPut).a;
        } else if (objPut == a) {
            this.b.put(n, new g(v));
            objPut = null;
        }
        if (objPut == null) {
            int i = this.f3867e + 1;
            this.f3867e = i;
            Graphs.d(i);
            List<f<N>> list = this.c;
            if (list != null) {
                list.add(new f.b(n));
            }
        }
        if (objPut == null) {
            return null;
        }
        return (V) objPut;
    }

    @Override // com.google.common.graph.c0
    public void g(N n, V v) {
        Map<N, Object> map = this.b;
        Object obj = a;
        Object objPut = map.put(n, obj);
        boolean z = false;
        if (objPut == null) {
            z = true;
        } else if (objPut instanceof g) {
            this.b.put(n, objPut);
        } else if (objPut != obj) {
            this.b.put(n, new g(objPut));
            z = true;
        }
        if (z) {
            int i = this.f3866d + 1;
            this.f3866d = i;
            Graphs.d(i);
            List<f<N>> list = this.c;
            if (list != null) {
                list.add(new f.a(n));
            }
        }
    }
}
