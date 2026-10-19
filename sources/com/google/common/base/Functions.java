package com.google.common.base;

import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class Functions {

    private enum IdentityFunction implements com.google.common.base.f<Object, Object> {
        INSTANCE;

        @Override // com.google.common.base.f
        public Object apply(Object obj) {
            return obj;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.identity()";
        }
    }

    private enum ToStringFunction implements com.google.common.base.f<Object, String> {
        INSTANCE;

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public String apply(Object obj) {
            Preconditions.checkNotNull(obj);
            return obj.toString();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.toStringFunction()";
        }
    }

    private static class b<E> implements com.google.common.base.f<Object, E>, Serializable {
        private static final long serialVersionUID = 0;
        private final E a;

        public b(E e2) {
            this.a = e2;
        }

        @Override // com.google.common.base.f
        public E apply(Object obj) {
            return this.a;
        }

        @Override // com.google.common.base.f
        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return Objects.equal(this.a, ((b) obj).a);
            }
            return false;
        }

        public int hashCode() {
            E e2 = this.a;
            if (e2 == null) {
                return 0;
            }
            return e2.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 20);
            sb.append("Functions.constant(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class c<K, V> implements com.google.common.base.f<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final Map<K, ? extends V> a;
        final V b;

        c(Map<K, ? extends V> map, V v) {
            this.a = (Map) Preconditions.checkNotNull(map);
            this.b = v;
        }

        @Override // com.google.common.base.f
        public V apply(K k) {
            V v = this.a.get(k);
            return (v != null || this.a.containsKey(k)) ? (V) h.a(v) : this.b;
        }

        @Override // com.google.common.base.f
        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a.equals(cVar.a) && Objects.equal(this.b, cVar.b);
        }

        public int hashCode() {
            return Objects.hashCode(this.a, this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 33 + strValueOf2.length());
            sb.append("Functions.forMap(");
            sb.append(strValueOf);
            sb.append(", defaultValue=");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class d<A, B, C> implements com.google.common.base.f<A, C>, Serializable {
        private static final long serialVersionUID = 0;
        private final com.google.common.base.f<B, C> a;
        private final com.google.common.base.f<A, ? extends B> b;

        public d(com.google.common.base.f<B, C> fVar, com.google.common.base.f<A, ? extends B> fVar2) {
            this.a = (com.google.common.base.f) Preconditions.checkNotNull(fVar);
            this.b = (com.google.common.base.f) Preconditions.checkNotNull(fVar2);
        }

        @Override // com.google.common.base.f
        public C apply(A a) {
            return (C) this.a.apply(this.b.apply(a));
        }

        @Override // com.google.common.base.f
        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.b.equals(dVar.b) && this.a.equals(dVar.a);
        }

        public int hashCode() {
            return this.b.hashCode() ^ this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 2 + strValueOf2.length());
            sb.append(strValueOf);
            sb.append("(");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class e<K, V> implements com.google.common.base.f<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final Map<K, V> a;

        e(Map<K, V> map) {
            this.a = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.base.f
        public V apply(K k) {
            V v = this.a.get(k);
            Preconditions.checkArgument(v != null || this.a.containsKey(k), "Key '%s' not present in map", k);
            return (V) h.a(v);
        }

        @Override // com.google.common.base.f
        public boolean equals(Object obj) {
            if (obj instanceof e) {
                return this.a.equals(((e) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 18);
            sb.append("Functions.forMap(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class f<T> implements com.google.common.base.f<T, Boolean>, Serializable {
        private static final long serialVersionUID = 0;
        private final k<T> a;

        private f(k<T> kVar) {
            this.a = (k) Preconditions.checkNotNull(kVar);
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean apply(T t) {
            return Boolean.valueOf(this.a.apply(t));
        }

        @Override // com.google.common.base.f
        public boolean equals(Object obj) {
            if (obj instanceof f) {
                return this.a.equals(((f) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 24);
            sb.append("Functions.forPredicate(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class g<F, T> implements com.google.common.base.f<F, T>, Serializable {
        private static final long serialVersionUID = 0;
        private final m<T> a;

        private g(m<T> mVar) {
            this.a = (m) Preconditions.checkNotNull(mVar);
        }

        @Override // com.google.common.base.f
        public T apply(F f2) {
            return this.a.get();
        }

        @Override // com.google.common.base.f
        public boolean equals(Object obj) {
            if (obj instanceof g) {
                return this.a.equals(((g) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
            sb.append("Functions.forSupplier(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private Functions() {
    }

    public static <A, B, C> com.google.common.base.f<A, C> compose(com.google.common.base.f<B, C> fVar, com.google.common.base.f<A, ? extends B> fVar2) {
        return new d(fVar, fVar2);
    }

    public static <E> com.google.common.base.f<Object, E> constant(E e2) {
        return new b(e2);
    }

    public static <K, V> com.google.common.base.f<K, V> forMap(Map<K, V> map) {
        return new e(map);
    }

    public static <K, V> com.google.common.base.f<K, V> forMap(Map<K, ? extends V> map, V v) {
        return new c(map, v);
    }

    public static <T> com.google.common.base.f<T, Boolean> forPredicate(k<T> kVar) {
        return new f(kVar);
    }

    public static <F, T> com.google.common.base.f<F, T> forSupplier(m<T> mVar) {
        return new g(mVar);
    }

    public static <E> com.google.common.base.f<E, E> identity() {
        return IdentityFunction.INSTANCE;
    }

    public static com.google.common.base.f<Object, String> toStringFunction() {
        return ToStringFunction.INSTANCE;
    }
}
