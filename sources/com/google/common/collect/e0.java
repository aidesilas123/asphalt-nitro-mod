package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import java.io.Serializable;
import java.lang.Comparable;

/* JADX INFO: compiled from: Cut.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class e0<C extends Comparable> implements Comparable<e0<C>>, Serializable {
    private static final long serialVersionUID = 0;
    final C a;

    /* JADX INFO: compiled from: Cut.java */
    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[BoundType.values().length];
            a = iArr;
            try {
                iArr[BoundType.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BoundType.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: compiled from: Cut.java */
    private static final class b extends e0<Comparable<?>> {
        private static final b b = new b();
        private static final long serialVersionUID = 0;

        private b() {
            super("");
        }

        private Object readResolve() {
            return b;
        }

        @Override // com.google.common.collect.e0
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.e0, java.lang.Comparable
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public int compareTo(e0<Comparable<?>> e0Var) {
            return e0Var == this ? 0 : 1;
        }

        @Override // com.google.common.collect.e0
        void j(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e0
        void k(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override // com.google.common.collect.e0
        Comparable<?> m() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.e0
        Comparable<?> n(DiscreteDomain<Comparable<?>> discreteDomain) {
            return discreteDomain.c();
        }

        @Override // com.google.common.collect.e0
        boolean p(Comparable<?> comparable) {
            return false;
        }

        @Override // com.google.common.collect.e0
        Comparable<?> q(DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e0
        BoundType s() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.e0
        BoundType t() {
            throw new IllegalStateException();
        }

        public String toString() {
            return "+∞";
        }

        @Override // com.google.common.collect.e0
        e0<Comparable<?>> u(BoundType boundType, DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.e0
        e0<Comparable<?>> v(BoundType boundType, DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: compiled from: Cut.java */
    private static final class c<C extends Comparable> extends e0<C> {
        private static final long serialVersionUID = 0;

        c(C c) {
            super((Comparable) Preconditions.checkNotNull(c));
        }

        @Override // com.google.common.collect.e0, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((e0) obj);
        }

        @Override // com.google.common.collect.e0
        public int hashCode() {
            return ~this.a.hashCode();
        }

        @Override // com.google.common.collect.e0
        void j(StringBuilder sb) {
            sb.append('(');
            sb.append(this.a);
        }

        @Override // com.google.common.collect.e0
        void k(StringBuilder sb) {
            sb.append(this.a);
            sb.append(']');
        }

        @Override // com.google.common.collect.e0
        C n(DiscreteDomain<C> discreteDomain) {
            return this.a;
        }

        @Override // com.google.common.collect.e0
        boolean p(C c) {
            return Range.b(this.a, c) < 0;
        }

        @Override // com.google.common.collect.e0
        C q(DiscreteDomain<C> discreteDomain) {
            return (C) discreteDomain.e(this.a);
        }

        @Override // com.google.common.collect.e0
        BoundType s() {
            return BoundType.OPEN;
        }

        @Override // com.google.common.collect.e0
        BoundType t() {
            return BoundType.CLOSED;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 2);
            sb.append("/");
            sb.append(strValueOf);
            sb.append("\\");
            return sb.toString();
        }

        @Override // com.google.common.collect.e0
        e0<C> u(BoundType boundType, DiscreteDomain<C> discreteDomain) {
            int i = a.a[boundType.ordinal()];
            if (i == 1) {
                Comparable comparableE = discreteDomain.e(this.a);
                return comparableE == null ? e0.g() : e0.h(comparableE);
            }
            if (i == 2) {
                return this;
            }
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e0
        e0<C> v(BoundType boundType, DiscreteDomain<C> discreteDomain) {
            int i = a.a[boundType.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i != 2) {
                throw new AssertionError();
            }
            Comparable comparableE = discreteDomain.e(this.a);
            return comparableE == null ? e0.e() : e0.h(comparableE);
        }
    }

    /* JADX INFO: compiled from: Cut.java */
    private static final class d extends e0<Comparable<?>> {
        private static final d b = new d();
        private static final long serialVersionUID = 0;

        private d() {
            super("");
        }

        private Object readResolve() {
            return b;
        }

        @Override // com.google.common.collect.e0
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.e0, java.lang.Comparable
        /* JADX INFO: renamed from: i */
        public int compareTo(e0<Comparable<?>> e0Var) {
            return e0Var == this ? 0 : -1;
        }

        @Override // com.google.common.collect.e0
        void j(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override // com.google.common.collect.e0
        void k(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e0
        Comparable<?> m() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.e0
        Comparable<?> n(DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.e0
        boolean p(Comparable<?> comparable) {
            return true;
        }

        @Override // com.google.common.collect.e0
        Comparable<?> q(DiscreteDomain<Comparable<?>> discreteDomain) {
            return discreteDomain.d();
        }

        @Override // com.google.common.collect.e0
        BoundType s() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.e0
        BoundType t() {
            throw new AssertionError("this statement should be unreachable");
        }

        public String toString() {
            return "-∞";
        }

        @Override // com.google.common.collect.e0
        e0<Comparable<?>> u(BoundType boundType, DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.e0
        e0<Comparable<?>> v(BoundType boundType, DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }
    }

    /* JADX INFO: compiled from: Cut.java */
    private static final class e<C extends Comparable> extends e0<C> {
        private static final long serialVersionUID = 0;

        e(C c) {
            super((Comparable) Preconditions.checkNotNull(c));
        }

        @Override // com.google.common.collect.e0, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((e0) obj);
        }

        @Override // com.google.common.collect.e0
        public int hashCode() {
            return this.a.hashCode();
        }

        @Override // com.google.common.collect.e0
        void j(StringBuilder sb) {
            sb.append('[');
            sb.append(this.a);
        }

        @Override // com.google.common.collect.e0
        void k(StringBuilder sb) {
            sb.append(this.a);
            sb.append(')');
        }

        @Override // com.google.common.collect.e0
        C n(DiscreteDomain<C> discreteDomain) {
            return (C) discreteDomain.g(this.a);
        }

        @Override // com.google.common.collect.e0
        boolean p(C c) {
            return Range.b(this.a, c) <= 0;
        }

        @Override // com.google.common.collect.e0
        C q(DiscreteDomain<C> discreteDomain) {
            return this.a;
        }

        @Override // com.google.common.collect.e0
        BoundType s() {
            return BoundType.CLOSED;
        }

        @Override // com.google.common.collect.e0
        BoundType t() {
            return BoundType.OPEN;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 2);
            sb.append("\\");
            sb.append(strValueOf);
            sb.append("/");
            return sb.toString();
        }

        @Override // com.google.common.collect.e0
        e0<C> u(BoundType boundType, DiscreteDomain<C> discreteDomain) {
            int i = a.a[boundType.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i != 2) {
                throw new AssertionError();
            }
            Comparable comparableG = discreteDomain.g(this.a);
            return comparableG == null ? e0.g() : new c(comparableG);
        }

        @Override // com.google.common.collect.e0
        e0<C> v(BoundType boundType, DiscreteDomain<C> discreteDomain) {
            int i = a.a[boundType.ordinal()];
            if (i == 1) {
                Comparable comparableG = discreteDomain.g(this.a);
                return comparableG == null ? e0.e() : new c(comparableG);
            }
            if (i == 2) {
                return this;
            }
            throw new AssertionError();
        }
    }

    e0(C c2) {
        this.a = c2;
    }

    static <C extends Comparable> e0<C> e() {
        return b.b;
    }

    static <C extends Comparable> e0<C> f(C c2) {
        return new c(c2);
    }

    static <C extends Comparable> e0<C> g() {
        return d.b;
    }

    static <C extends Comparable> e0<C> h(C c2) {
        return new e(c2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e0)) {
            return false;
        }
        try {
            return compareTo((e0) obj) == 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public abstract int hashCode();

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: i */
    public int compareTo(e0<C> e0Var) {
        if (e0Var == g()) {
            return 1;
        }
        if (e0Var == e()) {
            return -1;
        }
        int iB = Range.b(this.a, e0Var.a);
        return iB != 0 ? iB : Booleans.compare(this instanceof c, e0Var instanceof c);
    }

    abstract void j(StringBuilder sb);

    abstract void k(StringBuilder sb);

    C m() {
        return this.a;
    }

    abstract C n(DiscreteDomain<C> discreteDomain);

    abstract boolean p(C c2);

    abstract C q(DiscreteDomain<C> discreteDomain);

    abstract BoundType s();

    abstract BoundType t();

    abstract e0<C> u(BoundType boundType, DiscreteDomain<C> discreteDomain);

    abstract e0<C> v(BoundType boundType, DiscreteDomain<C> discreteDomain);
}
