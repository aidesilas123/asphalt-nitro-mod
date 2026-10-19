package com.google.common.base;

import java.io.Serializable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class Suppliers {

    private enum SupplierFunctionImpl implements com.google.common.base.f {
        INSTANCE;

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Object apply(m<Object> mVar) {
            return mVar.get();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Suppliers.supplierFunction()";
        }
    }

    static class a<T> implements m<T>, Serializable {
        private static final long serialVersionUID = 0;
        final m<T> a;
        final long b;
        volatile transient T c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        volatile transient long f3500d;

        a(m<T> mVar, long j, TimeUnit timeUnit) {
            this.a = (m) Preconditions.checkNotNull(mVar);
            this.b = timeUnit.toNanos(j);
            Preconditions.checkArgument(j > 0, "duration (%s %s) must be > 0", j, timeUnit);
        }

        @Override // com.google.common.base.m
        public T get() {
            long j = this.f3500d;
            long jI = j.i();
            if (j == 0 || jI - j >= 0) {
                synchronized (this) {
                    if (j == this.f3500d) {
                        T t = this.a.get();
                        this.c = t;
                        long j2 = jI + this.b;
                        if (j2 == 0) {
                            j2 = 1;
                        }
                        this.f3500d = j2;
                        return t;
                    }
                }
            }
            return (T) h.a(this.c);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            long j = this.b;
            StringBuilder sb = new StringBuilder(strValueOf.length() + 62);
            sb.append("Suppliers.memoizeWithExpiration(");
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(j);
            sb.append(", NANOS)");
            return sb.toString();
        }
    }

    static class b<T> implements m<T>, Serializable {
        private static final long serialVersionUID = 0;
        final m<T> a;
        volatile transient boolean b;
        transient T c;

        b(m<T> mVar) {
            this.a = (m) Preconditions.checkNotNull(mVar);
        }

        @Override // com.google.common.base.m
        public T get() {
            if (!this.b) {
                synchronized (this) {
                    if (!this.b) {
                        T t = this.a.get();
                        this.c = t;
                        this.b = true;
                        return t;
                    }
                }
            }
            return (T) h.a(this.c);
        }

        public String toString() {
            Object string;
            if (this.b) {
                String strValueOf = String.valueOf(this.c);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
                sb.append("<supplier that returned ");
                sb.append(strValueOf);
                sb.append(">");
                string = sb.toString();
            } else {
                string = this.a;
            }
            String strValueOf2 = String.valueOf(string);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
            sb2.append("Suppliers.memoize(");
            sb2.append(strValueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    static class c<T> implements m<T> {
        volatile m<T> a;
        volatile boolean b;
        T c;

        c(m<T> mVar) {
            this.a = (m) Preconditions.checkNotNull(mVar);
        }

        @Override // com.google.common.base.m
        public T get() {
            if (!this.b) {
                synchronized (this) {
                    if (!this.b) {
                        m<T> mVar = this.a;
                        java.util.Objects.requireNonNull(mVar);
                        T t = mVar.get();
                        this.c = t;
                        this.b = true;
                        this.a = null;
                        return t;
                    }
                }
            }
            return (T) h.a(this.c);
        }

        public String toString() {
            Object string = this.a;
            if (string == null) {
                String strValueOf = String.valueOf(this.c);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
                sb.append("<supplier that returned ");
                sb.append(strValueOf);
                sb.append(">");
                string = sb.toString();
            }
            String strValueOf2 = String.valueOf(string);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
            sb2.append("Suppliers.memoize(");
            sb2.append(strValueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    private static class d<F, T> implements m<T>, Serializable {
        private static final long serialVersionUID = 0;
        final com.google.common.base.f<? super F, T> a;
        final m<F> b;

        d(com.google.common.base.f<? super F, T> fVar, m<F> mVar) {
            this.a = (com.google.common.base.f) Preconditions.checkNotNull(fVar);
            this.b = (m) Preconditions.checkNotNull(mVar);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a.equals(dVar.a) && this.b.equals(dVar.b);
        }

        @Override // com.google.common.base.m
        public T get() {
            return this.a.apply(this.b.get());
        }

        public int hashCode() {
            return Objects.hashCode(this.a, this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 21 + strValueOf2.length());
            sb.append("Suppliers.compose(");
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class e<T> implements m<T>, Serializable {
        private static final long serialVersionUID = 0;
        final T a;

        e(T t) {
            this.a = t;
        }

        public boolean equals(Object obj) {
            if (obj instanceof e) {
                return Objects.equal(this.a, ((e) obj).a);
            }
            return false;
        }

        @Override // com.google.common.base.m
        public T get() {
            return this.a;
        }

        public int hashCode() {
            return Objects.hashCode(this.a);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
            sb.append("Suppliers.ofInstance(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class f<T> implements m<T>, Serializable {
        private static final long serialVersionUID = 0;
        final m<T> a;

        f(m<T> mVar) {
            this.a = (m) Preconditions.checkNotNull(mVar);
        }

        @Override // com.google.common.base.m
        public T get() {
            T t;
            synchronized (this.a) {
                t = this.a.get();
            }
            return t;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
            sb.append("Suppliers.synchronizedSupplier(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private Suppliers() {
    }

    public static <F, T> m<T> compose(com.google.common.base.f<? super F, T> fVar, m<F> mVar) {
        return new d(fVar, mVar);
    }

    public static <T> m<T> memoize(m<T> mVar) {
        return ((mVar instanceof c) || (mVar instanceof b)) ? mVar : mVar instanceof Serializable ? new b(mVar) : new c(mVar);
    }

    public static <T> m<T> memoizeWithExpiration(m<T> mVar, long j, TimeUnit timeUnit) {
        return new a(mVar, j, timeUnit);
    }

    public static <T> m<T> ofInstance(T t) {
        return new e(t);
    }

    public static <T> com.google.common.base.f<m<T>, T> supplierFunction() {
        return SupplierFunctionImpl.INSTANCE;
    }

    public static <T> m<T> synchronizedSupplier(m<T> mVar) {
        return new f(mVar);
    }
}
