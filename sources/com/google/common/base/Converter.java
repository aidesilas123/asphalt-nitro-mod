package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Converter<A, B> implements f<A, B> {
    private final boolean a;

    private static final class a<A, B> extends Converter<A, B> implements Serializable {
        private final f<? super A, ? extends B> b;
        private final f<? super B, ? extends A> c;

        private a(f<? super A, ? extends B> fVar, f<? super B, ? extends A> fVar2) {
            this.b = (f) Preconditions.checkNotNull(fVar);
            this.c = (f) Preconditions.checkNotNull(fVar2);
        }

        /* synthetic */ a(f fVar, f fVar2, d dVar) {
            this(fVar, fVar2);
        }

        @Override // com.google.common.base.Converter
        protected B c(A a) {
            return this.b.apply(a);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.f
        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.b.equals(aVar.b) && this.c.equals(aVar.c);
        }

        public int hashCode() {
            return (this.b.hashCode() * 31) + this.c.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.b);
            String strValueOf2 = String.valueOf(this.c);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 18 + strValueOf2.length());
            sb.append("Converter.from(");
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class b<T> extends Converter<T, T> implements Serializable {
        static final b<?> b = new b<>();
        private static final long serialVersionUID = 0;

        private b() {
        }

        private Object readResolve() {
            return b;
        }

        @Override // com.google.common.base.Converter
        protected T c(T t) {
            return t;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    protected Converter() {
        this(true);
    }

    Converter(boolean z) {
        this.a = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private B d(A a2) {
        return (B) c(h.a(a2));
    }

    public static <A, B> Converter<A, B> from(f<? super A, ? extends B> fVar, f<? super B, ? extends A> fVar2) {
        return new a(fVar, fVar2, null);
    }

    public static <T> Converter<T, T> identity() {
        return b.b;
    }

    public final B a(A a2) {
        return b(a2);
    }

    @Override // com.google.common.base.f
    @Deprecated
    public final B apply(A a2) {
        return a(a2);
    }

    B b(A a2) {
        if (!this.a) {
            return d(a2);
        }
        if (a2 == null) {
            return null;
        }
        return (B) Preconditions.checkNotNull(c(a2));
    }

    protected abstract B c(A a2);

    @Override // com.google.common.base.f
    public boolean equals(Object obj) {
        return super.equals(obj);
    }
}
