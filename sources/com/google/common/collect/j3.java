package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.collect.l3;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: StandardTable.java */
/* JADX INFO: loaded from: classes3.dex */
class j3<R, C, V> extends s<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final Map<R, Map<C, V>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final com.google.common.base.m<? extends Map<C, V>> f3779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient Set<C> f3780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient Map<R, Map<C, V>> f3781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient j3<R, C, V>.f f3782g;

    /* JADX INFO: compiled from: StandardTable.java */
    private class b implements Iterator<l3.a<R, C, V>> {
        final Iterator<Map.Entry<R, Map<C, V>>> a;
        Map.Entry<R, Map<C, V>> b;
        Iterator<Map.Entry<C, V>> c;

        private b() {
            this.a = j3.this.c.entrySet().iterator();
            this.c = Iterators.h();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l3.a<R, C, V> next() {
            if (!this.c.hasNext()) {
                Map.Entry<R, Map<C, V>> next = this.a.next();
                this.b = next;
                this.c = next.getValue().entrySet().iterator();
            }
            Objects.requireNonNull(this.b);
            Map.Entry<C, V> next2 = this.c.next();
            return Tables.immutableCell(this.b.getKey(), next2.getKey(), next2.getValue());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext() || this.c.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.c.remove();
            Map.Entry<R, Map<C, V>> entry = this.b;
            Objects.requireNonNull(entry);
            if (entry.getValue().isEmpty()) {
                this.a.remove();
                this.b = null;
            }
        }
    }

    /* JADX INFO: compiled from: StandardTable.java */
    private class c extends Maps.o0<R, V> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final C f3784d;

        /* JADX INFO: compiled from: StandardTable.java */
        private class a extends Sets.j<Map.Entry<R, V>> {
            private a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                c.this.d(Predicates.alwaysTrue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return j3.this.w(entry.getKey(), c.this.f3784d, entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                c cVar = c.this;
                return !j3.this.u(cVar.f3784d);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, V>> iterator() {
                return new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return j3.this.E(entry.getKey(), c.this.f3784d, entry.getValue());
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(Predicates.not(Predicates.in(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                Iterator<Map<C, V>> it = j3.this.c.values().iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (it.next().containsKey(c.this.f3784d)) {
                        i++;
                    }
                }
                return i;
            }
        }

        /* JADX INFO: compiled from: StandardTable.java */
        private class b extends AbstractIterator<Map.Entry<R, V>> {
            final Iterator<Map.Entry<R, Map<C, V>>> c;

            /* JADX INFO: compiled from: StandardTable.java */
            class a extends com.google.common.collect.i<R, V> {
                final /* synthetic */ Map.Entry a;

                a(Map.Entry entry) {
                    this.a = entry;
                }

                @Override // com.google.common.collect.i, java.util.Map.Entry
                public R getKey() {
                    return (R) this.a.getKey();
                }

                @Override // com.google.common.collect.i, java.util.Map.Entry
                public V getValue() {
                    return (V) ((Map) this.a.getValue()).get(c.this.f3784d);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.i, java.util.Map.Entry
                public V setValue(V v) {
                    return (V) e2.a(((Map) this.a.getValue()).put(c.this.f3784d, Preconditions.checkNotNull(v)));
                }
            }

            private b() {
                this.c = j3.this.c.entrySet().iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Map.Entry<R, V> b() {
                while (this.c.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = this.c.next();
                    if (next.getValue().containsKey(c.this.f3784d)) {
                        return new a(next);
                    }
                }
                return c();
            }
        }

        /* JADX INFO: renamed from: com.google.common.collect.j3$c$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: StandardTable.java */
        private class C0256c extends Maps.y<R, V> {
            C0256c() {
                super(c.this);
            }

            @Override // com.google.common.collect.Maps.y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                c cVar = c.this;
                return j3.this.d(obj, cVar.f3784d);
            }

            @Override // com.google.common.collect.Maps.y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                c cVar = c.this;
                return j3.this.C(obj, cVar.f3784d) != null;
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(Maps.v(Predicates.not(Predicates.in(collection))));
            }
        }

        /* JADX INFO: compiled from: StandardTable.java */
        private class d extends Maps.n0<R, V> {
            d() {
                super(c.this);
            }

            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                return obj != null && c.this.d(Maps.N(Predicates.equalTo(obj)));
            }

            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return c.this.d(Maps.N(Predicates.in(collection)));
            }

            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return c.this.d(Maps.N(Predicates.not(Predicates.in(collection))));
            }
        }

        c(C c) {
            this.f3784d = (C) Preconditions.checkNotNull(c);
        }

        @Override // com.google.common.collect.Maps.o0
        Set<Map.Entry<R, V>> a() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.o0
        /* JADX INFO: renamed from: b */
        Set<R> h() {
            return new C0256c();
        }

        @Override // com.google.common.collect.Maps.o0
        Collection<V> c() {
            return new d();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return j3.this.d(obj, this.f3784d);
        }

        boolean d(com.google.common.base.k<? super Map.Entry<R, V>> kVar) {
            Iterator<Map.Entry<R, Map<C, V>>> it = j3.this.c.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<R, Map<C, V>> next = it.next();
                Map<C, V> value = next.getValue();
                V v = value.get(this.f3784d);
                if (v != null && kVar.apply(Maps.immutableEntry(next.getKey(), v))) {
                    value.remove(this.f3784d);
                    z = true;
                    if (value.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            return (V) j3.this.g(obj, this.f3784d);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(R r, V v) {
            return (V) j3.this.v(r, this.f3784d, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            return (V) j3.this.C(obj, this.f3784d);
        }
    }

    /* JADX INFO: compiled from: StandardTable.java */
    private class d extends AbstractIterator<C> {
        final Map<C, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Iterator<Map<C, V>> f3787d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Iterator<Map.Entry<C, V>> f3788e;

        private d() {
            this.c = j3.this.f3779d.get();
            this.f3787d = j3.this.c.values().iterator();
            this.f3788e = Iterators.f();
        }

        @Override // com.google.common.collect.AbstractIterator
        protected C b() {
            while (true) {
                if (this.f3788e.hasNext()) {
                    Map.Entry<C, V> next = this.f3788e.next();
                    if (!this.c.containsKey(next.getKey())) {
                        this.c.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else {
                    if (!this.f3787d.hasNext()) {
                        return c();
                    }
                    this.f3788e = this.f3787d.next().entrySet().iterator();
                }
            }
        }
    }

    /* JADX INFO: compiled from: StandardTable.java */
    private class e extends j3<R, C, V>.i<C> {
        private e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return j3.this.u(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<C> iterator() {
            return j3.this.y();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = j3.this.c.values().iterator();
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Sets.j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            Iterator<Map<C, V>> it = j3.this.c.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (Iterators.removeAll(next.keySet().iterator(), collection)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            Iterator<Map<C, V>> it = j3.this.c.values().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map<C, V> next = it.next();
                if (next.keySet().retainAll(collection)) {
                    z = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Iterators.size(iterator());
        }
    }

    /* JADX INFO: compiled from: StandardTable.java */
    private class f extends Maps.o0<C, Map<R, V>> {

        /* JADX INFO: compiled from: StandardTable.java */
        class a extends j3<R, C, V>.i<Map.Entry<C, Map<R, V>>> {

            /* JADX INFO: renamed from: com.google.common.collect.j3$f$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: StandardTable.java */
            class C0257a implements com.google.common.base.f<C, Map<R, V>> {
                C0257a() {
                }

                @Override // com.google.common.base.f
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map<R, V> apply(C c) {
                    return j3.this.s(c);
                }
            }

            a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                if (!j3.this.u(entry.getKey())) {
                    return false;
                }
                Map<R, V> map = f.this.get(entry.getKey());
                Objects.requireNonNull(map);
                return map.equals(entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return Maps.h(j3.this.z(), new C0257a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj) || !(obj instanceof Map.Entry)) {
                    return false;
                }
                j3.this.D(((Map.Entry) obj).getKey());
                return true;
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                return Sets.e(this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean z = false;
                for (Object obj : Lists.newArrayList(j3.this.z().iterator())) {
                    if (!collection.contains(Maps.immutableEntry(obj, j3.this.s(obj)))) {
                        j3.this.D(obj);
                        z = true;
                    }
                }
                return z;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return j3.this.z().size();
            }
        }

        /* JADX INFO: compiled from: StandardTable.java */
        private class b extends Maps.n0<C, Map<R, V>> {
            b() {
                super(f.this);
            }

            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : f.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        j3.this.D(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean z = false;
                for (Object obj : Lists.newArrayList(j3.this.z().iterator())) {
                    if (collection.contains(j3.this.s(obj))) {
                        j3.this.D(obj);
                        z = true;
                    }
                }
                return z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean z = false;
                for (Object obj : Lists.newArrayList(j3.this.z().iterator())) {
                    if (!collection.contains(j3.this.s(obj))) {
                        j3.this.D(obj);
                        z = true;
                    }
                }
                return z;
            }
        }

        private f() {
        }

        @Override // com.google.common.collect.Maps.o0
        public Set<Map.Entry<C, Map<R, V>>> a() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.o0
        Collection<Map<R, V>> c() {
            return new b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return j3.this.u(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map<R, V> get(Object obj) {
            if (!j3.this.u(obj)) {
                return null;
            }
            j3 j3Var = j3.this;
            Objects.requireNonNull(obj);
            return j3Var.s(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map<R, V> remove(Object obj) {
            if (j3.this.u(obj)) {
                return j3.this.D(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<C> keySet() {
            return j3.this.z();
        }
    }

    /* JADX INFO: compiled from: StandardTable.java */
    class g extends Maps.x<C, V> {
        final R a;
        Map<C, V> b;

        /* JADX INFO: compiled from: StandardTable.java */
        class a implements Iterator<Map.Entry<C, V>> {
            final /* synthetic */ Iterator a;

            a(Iterator it) {
                this.a = it;
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<C, V> next() {
                return g.this.e((Map.Entry) this.a.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.a.remove();
                g.this.c();
            }
        }

        /* JADX INFO: compiled from: StandardTable.java */
        class b extends z0<C, V> {
            final /* synthetic */ Map.Entry a;

            b(g gVar, Map.Entry entry) {
                this.a = entry;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.d1
            public Map.Entry<C, V> C() {
                return this.a;
            }

            @Override // com.google.common.collect.z0, java.util.Map.Entry
            public boolean equals(Object obj) {
                return D(obj);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.z0, java.util.Map.Entry
            public V setValue(V v) {
                return (V) super.setValue(Preconditions.checkNotNull(v));
            }
        }

        g(R r) {
            this.a = (R) Preconditions.checkNotNull(r);
        }

        @Override // com.google.common.collect.Maps.x
        Iterator<Map.Entry<C, V>> a() {
            d();
            Map<C, V> map = this.b;
            return map == null ? Iterators.h() : new a(map.entrySet().iterator());
        }

        Map<C, V> b() {
            return j3.this.c.get(this.a);
        }

        void c() {
            d();
            Map<C, V> map = this.b;
            if (map == null || !map.isEmpty()) {
                return;
            }
            j3.this.c.remove(this.a);
            this.b = null;
        }

        @Override // com.google.common.collect.Maps.x, java.util.AbstractMap, java.util.Map
        public void clear() {
            d();
            Map<C, V> map = this.b;
            if (map != null) {
                map.clear();
            }
            c();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map<C, V> map;
            d();
            return (obj == null || (map = this.b) == null || !Maps.B(map, obj)) ? false : true;
        }

        final void d() {
            Map<C, V> map = this.b;
            if (map == null || (map.isEmpty() && j3.this.c.containsKey(this.a))) {
                this.b = b();
            }
        }

        Map.Entry<C, V> e(Map.Entry<C, V> entry) {
            return new b(this, entry);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Map<C, V> map;
            d();
            if (obj == null || (map = this.b) == null) {
                return null;
            }
            return (V) Maps.C(map, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            Preconditions.checkNotNull(c);
            Preconditions.checkNotNull(v);
            Map<C, V> map = this.b;
            return (map == null || map.isEmpty()) ? (V) j3.this.v(this.a, c, v) : this.b.put(c, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            d();
            Map<C, V> map = this.b;
            if (map == null) {
                return null;
            }
            V v = (V) Maps.D(map, obj);
            c();
            return v;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            d();
            Map<C, V> map = this.b;
            if (map == null) {
                return 0;
            }
            return map.size();
        }
    }

    /* JADX INFO: compiled from: StandardTable.java */
    class h extends Maps.o0<R, Map<C, V>> {

        /* JADX INFO: compiled from: StandardTable.java */
        class a extends j3<R, C, V>.i<Map.Entry<R, Map<C, V>>> {

            /* JADX INFO: renamed from: com.google.common.collect.j3$h$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: StandardTable.java */
            class C0258a implements com.google.common.base.f<R, Map<C, V>> {
                C0258a() {
                }

                @Override // com.google.common.base.f
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map<C, V> apply(R r) {
                    return j3.this.F(r);
                }
            }

            a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && Collections2.f(j3.this.c.entrySet(), entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return Maps.h(j3.this.c.keySet(), new C0258a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && j3.this.c.entrySet().remove(entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return j3.this.c.size();
            }
        }

        h() {
        }

        @Override // com.google.common.collect.Maps.o0
        protected Set<Map.Entry<R, Map<C, V>>> a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return j3.this.x(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map<C, V> get(Object obj) {
            if (!j3.this.x(obj)) {
                return null;
            }
            j3 j3Var = j3.this;
            Objects.requireNonNull(obj);
            return j3Var.F(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map<C, V> remove(Object obj) {
            if (obj == null) {
                return null;
            }
            return j3.this.c.remove(obj);
        }
    }

    /* JADX INFO: compiled from: StandardTable.java */
    private abstract class i<T> extends Sets.j<T> {
        private i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            j3.this.c.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return j3.this.c.isEmpty();
        }
    }

    j3(Map<R, Map<C, V>> map, com.google.common.base.m<? extends Map<C, V>> mVar) {
        this.c = map;
        this.f3779d = mVar;
    }

    private Map<C, V> B(R r) {
        Map<C, V> map = this.c.get(r);
        if (map != null) {
            return map;
        }
        Map<C, V> map2 = this.f3779d.get();
        this.c.put(r, map2);
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<R, V> D(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V vRemove = next.getValue().remove(obj);
            if (vRemove != null) {
                linkedHashMap.put(next.getKey(), vRemove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean E(Object obj, Object obj2, Object obj3) {
        if (!w(obj, obj2, obj3)) {
            return false;
        }
        C(obj, obj2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(g(obj, obj2));
    }

    Map<R, Map<C, V>> A() {
        return new h();
    }

    public V C(Object obj, Object obj2) {
        Map map;
        if (obj == null || obj2 == null || (map = (Map) Maps.C(this.c, obj)) == null) {
            return null;
        }
        V v = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.c.remove(obj);
        }
        return v;
    }

    public Map<C, V> F(R r) {
        return new g(r);
    }

    @Override // com.google.common.collect.s
    Iterator<l3.a<R, C, V>> c() {
        return new b();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public void clear() {
        this.c.clear();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.s
    public boolean d(Object obj, Object obj2) {
        return (obj == null || obj2 == null || !super.d(obj, obj2)) ? false : true;
    }

    @Override // com.google.common.collect.s
    public V g(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.g(obj, obj2);
    }

    @Override // com.google.common.collect.l3
    public Set<R> h() {
        return j().keySet();
    }

    @Override // com.google.common.collect.l3
    public Map<R, Map<C, V>> j() {
        Map<R, Map<C, V>> map = this.f3781f;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> mapA = A();
        this.f3781f = mapA;
        return mapA;
    }

    @Override // com.google.common.collect.l3
    public Map<C, Map<R, V>> n() {
        j3<R, C, V>.f fVar = this.f3782g;
        if (fVar != null) {
            return fVar;
        }
        j3<R, C, V>.f fVar2 = new f();
        this.f3782g = fVar2;
        return fVar2;
    }

    public Map<R, V> s(C c2) {
        return new c(c2);
    }

    @Override // com.google.common.collect.l3
    public int size() {
        Iterator<Map<C, V>> it = this.c.values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public Set<l3.a<R, C, V>> t() {
        return super.t();
    }

    public boolean u(Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<Map<C, V>> it = this.c.values().iterator();
        while (it.hasNext()) {
            if (Maps.B(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public V v(R r, C c2, V v) {
        Preconditions.checkNotNull(r);
        Preconditions.checkNotNull(c2);
        Preconditions.checkNotNull(v);
        return B(r).put(c2, v);
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public Collection<V> values() {
        return super.values();
    }

    public boolean x(Object obj) {
        return obj != null && Maps.B(this.c, obj);
    }

    Iterator<C> y() {
        return new d();
    }

    @Override // com.google.common.collect.l3
    public Set<C> z() {
        Set<C> set = this.f3780e;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.f3780e = eVar;
        return eVar;
    }
}
