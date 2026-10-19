package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.l3;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
public final class Tables {
    private static final com.google.common.base.f<? extends Map<?, ?>, ? extends Map<?, ?>> a = new a();

    class a implements com.google.common.base.f<Map<Object, Object>, Map<Object, Object>> {
        a() {
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    }

    static abstract class b<R, C, V> implements l3.a<R, C, V> {
        b() {
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof l3.a)) {
                return false;
            }
            l3.a aVar = (l3.a) obj;
            return Objects.equal(c(), aVar.c()) && Objects.equal(d(), aVar.d()) && Objects.equal(getValue(), aVar.getValue());
        }

        public int hashCode() {
            return Objects.hashCode(c(), d(), getValue());
        }

        public String toString() {
            String strValueOf = String.valueOf(c());
            String strValueOf2 = String.valueOf(d());
            String strValueOf3 = String.valueOf(getValue());
            StringBuilder sb = new StringBuilder(strValueOf.length() + 4 + strValueOf2.length() + strValueOf3.length());
            sb.append("(");
            sb.append(strValueOf);
            sb.append(",");
            sb.append(strValueOf2);
            sb.append(")=");
            sb.append(strValueOf3);
            return sb.toString();
        }
    }

    static final class c<R, C, V> extends b<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final R a;
        private final C b;
        private final V c;

        c(R r, C c, V v) {
            this.a = r;
            this.b = c;
            this.c = v;
        }

        @Override // com.google.common.collect.l3.a
        public R c() {
            return this.a;
        }

        @Override // com.google.common.collect.l3.a
        public C d() {
            return this.b;
        }

        @Override // com.google.common.collect.l3.a
        public V getValue() {
            return this.c;
        }
    }

    private static class d<R, C, V1, V2> extends s<R, C, V2> {
        final l3<R, C, V1> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final com.google.common.base.f<? super V1, V2> f3708d;

        class a implements com.google.common.base.f<l3.a<R, C, V1>, l3.a<R, C, V2>> {
            a() {
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public l3.a<R, C, V2> apply(l3.a<R, C, V1> aVar) {
                return Tables.immutableCell(aVar.c(), aVar.d(), d.this.f3708d.apply(aVar.getValue()));
            }
        }

        class b implements com.google.common.base.f<Map<C, V1>, Map<C, V2>> {
            b() {
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map<C, V2> apply(Map<C, V1> map) {
                return Maps.transformValues(map, d.this.f3708d);
            }
        }

        class c implements com.google.common.base.f<Map<R, V1>, Map<R, V2>> {
            c() {
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map<R, V2> apply(Map<R, V1> map) {
                return Maps.transformValues(map, d.this.f3708d);
            }
        }

        d(l3<R, C, V1> l3Var, com.google.common.base.f<? super V1, V2> fVar) {
            this.c = (l3) Preconditions.checkNotNull(l3Var);
            this.f3708d = (com.google.common.base.f) Preconditions.checkNotNull(fVar);
        }

        @Override // com.google.common.collect.s
        Iterator<l3.a<R, C, V2>> c() {
            return Iterators.transform(this.c.t().iterator(), p());
        }

        @Override // com.google.common.collect.s, com.google.common.collect.l3
        public void clear() {
            this.c.clear();
        }

        @Override // com.google.common.collect.s
        Collection<V2> f() {
            return Collections2.transform(this.c.values(), this.f3708d);
        }

        @Override // com.google.common.collect.l3
        public Set<R> h() {
            return this.c.h();
        }

        @Override // com.google.common.collect.l3
        public Map<R, Map<C, V2>> j() {
            return Maps.transformValues(this.c.j(), new b());
        }

        @Override // com.google.common.collect.l3
        public Map<C, Map<R, V2>> n() {
            return Maps.transformValues(this.c.n(), new c());
        }

        com.google.common.base.f<l3.a<R, C, V1>, l3.a<R, C, V2>> p() {
            return new a();
        }

        @Override // com.google.common.collect.l3
        public int size() {
            return this.c.size();
        }

        @Override // com.google.common.collect.s, com.google.common.collect.l3
        public V2 v(R r, C c2, V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.l3
        public Set<C> z() {
            return this.c.z();
        }
    }

    private static class e<C, R, V> extends s<C, R, V> {
        private static final com.google.common.base.f<l3.a<?, ?, ?>, l3.a<?, ?, ?>> c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final l3<R, C, V> f3709d;

        class a implements com.google.common.base.f<l3.a<?, ?, ?>, l3.a<?, ?, ?>> {
            a() {
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public l3.a<?, ?, ?> apply(l3.a<?, ?, ?> aVar) {
                return Tables.immutableCell(aVar.d(), aVar.c(), aVar.getValue());
            }
        }

        e(l3<R, C, V> l3Var) {
            this.f3709d = (l3) Preconditions.checkNotNull(l3Var);
        }

        @Override // com.google.common.collect.s
        Iterator<l3.a<C, R, V>> c() {
            return Iterators.transform(this.f3709d.t().iterator(), c);
        }

        @Override // com.google.common.collect.s, com.google.common.collect.l3
        public void clear() {
            this.f3709d.clear();
        }

        @Override // com.google.common.collect.s, com.google.common.collect.l3
        public boolean containsValue(Object obj) {
            return this.f3709d.containsValue(obj);
        }

        @Override // com.google.common.collect.l3
        public Set<C> h() {
            return this.f3709d.z();
        }

        @Override // com.google.common.collect.l3
        public Map<C, Map<R, V>> j() {
            return this.f3709d.n();
        }

        @Override // com.google.common.collect.l3
        public Map<R, Map<C, V>> n() {
            return this.f3709d.j();
        }

        @Override // com.google.common.collect.l3
        public int size() {
            return this.f3709d.size();
        }

        @Override // com.google.common.collect.s, com.google.common.collect.l3
        public V v(C c2, R r, V v) {
            return this.f3709d.v(r, c2, v);
        }

        @Override // com.google.common.collect.s, com.google.common.collect.l3
        public Collection<V> values() {
            return this.f3709d.values();
        }

        @Override // com.google.common.collect.l3
        public Set<R> z() {
            return this.f3709d.h();
        }
    }

    static final class f<R, C, V> extends g<R, C, V> implements x2<R, C, V> {
        private static final long serialVersionUID = 0;

        public f(x2<R, ? extends C, ? extends V> x2Var) {
            super(x2Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Tables.g, com.google.common.collect.i1
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public x2<R, C, V> C() {
            return (x2) super.C();
        }

        @Override // com.google.common.collect.Tables.g, com.google.common.collect.i1, com.google.common.collect.l3
        public SortedSet<R> h() {
            return Collections.unmodifiableSortedSet(P().h());
        }

        @Override // com.google.common.collect.Tables.g, com.google.common.collect.i1, com.google.common.collect.l3
        public SortedMap<R, Map<C, V>> j() {
            return Collections.unmodifiableSortedMap(Maps.transformValues((SortedMap) P().j(), Tables.c()));
        }
    }

    private static class g<R, C, V> extends i1<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final l3<? extends R, ? extends C, ? extends V> a;

        g(l3<? extends R, ? extends C, ? extends V> l3Var) {
            this.a = (l3) Preconditions.checkNotNull(l3Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        public l3<R, C, V> C() {
            return this.a;
        }

        @Override // com.google.common.collect.l3
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.i1, com.google.common.collect.l3
        public Set<R> h() {
            return Collections.unmodifiableSet(super.h());
        }

        @Override // com.google.common.collect.i1, com.google.common.collect.l3
        public Map<R, Map<C, V>> j() {
            return Collections.unmodifiableMap(Maps.transformValues(super.j(), Tables.c()));
        }

        @Override // com.google.common.collect.i1, com.google.common.collect.l3
        public Map<C, Map<R, V>> n() {
            return Collections.unmodifiableMap(Maps.transformValues(super.n(), Tables.c()));
        }

        @Override // com.google.common.collect.i1, com.google.common.collect.l3
        public Set<l3.a<R, C, V>> t() {
            return Collections.unmodifiableSet(super.t());
        }

        @Override // com.google.common.collect.l3
        public V v(R r, C c, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.i1, com.google.common.collect.l3
        public Collection<V> values() {
            return Collections.unmodifiableCollection(super.values());
        }

        @Override // com.google.common.collect.i1, com.google.common.collect.l3
        public Set<C> z() {
            return Collections.unmodifiableSet(super.z());
        }
    }

    private Tables() {
    }

    static boolean b(l3<?, ?, ?> l3Var, Object obj) {
        if (obj == l3Var) {
            return true;
        }
        if (obj instanceof l3) {
            return l3Var.t().equals(((l3) obj).t());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> com.google.common.base.f<Map<K, V>, Map<K, V>> c() {
        return (com.google.common.base.f<Map<K, V>, Map<K, V>>) a;
    }

    public static <R, C, V> l3.a<R, C, V> immutableCell(R r, C c2, V v) {
        return new c(r, c2, v);
    }

    public static <R, C, V> l3<R, C, V> newCustomTable(Map<R, Map<C, V>> map, com.google.common.base.m<? extends Map<C, V>> mVar) {
        Preconditions.checkArgument(map.isEmpty());
        Preconditions.checkNotNull(mVar);
        return new j3(map, mVar);
    }

    public static <R, C, V> l3<R, C, V> synchronizedTable(l3<R, C, V> l3Var) {
        return k3.y(l3Var, null);
    }

    public static <R, C, V1, V2> l3<R, C, V2> transformValues(l3<R, C, V1> l3Var, com.google.common.base.f<? super V1, V2> fVar) {
        return new d(l3Var, fVar);
    }

    public static <R, C, V> l3<C, R, V> transpose(l3<R, C, V> l3Var) {
        return l3Var instanceof e ? ((e) l3Var).f3709d : new e(l3Var);
    }

    public static <R, C, V> x2<R, C, V> unmodifiableRowSortedTable(x2<R, ? extends C, ? extends V> x2Var) {
        return new f(x2Var);
    }

    public static <R, C, V> l3<R, C, V> unmodifiableTable(l3<? extends R, ? extends C, ? extends V> l3Var) {
        return new g(l3Var);
    }
}
