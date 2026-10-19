package com.applovin.exoplayer2.common.base;

import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public abstract class Converter<A, B> implements Function<A, B> {
    private final boolean handleNullAutomatically;

    @MonotonicNonNullDecl
    private transient Converter<B, A> reverse;

    private static final class a<A, B, C> extends Converter<A, C> implements Serializable {
        final Converter<A, B> op;
        final Converter<B, C> oq;

        a(Converter<A, B> converter, Converter<B, C> converter2) {
            this.op = converter;
            this.oq = converter2;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        @NullableDecl
        A correctedDoBackward(@NullableDecl C c) {
            return (A) this.op.correctedDoBackward(this.oq.correctedDoBackward(c));
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        @NullableDecl
        C correctedDoForward(@NullableDecl A a) {
            return (C) this.oq.correctedDoForward(this.op.correctedDoForward(a));
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected A doBackward(C c) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected C doForward(A a) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.op.equals(aVar.op) && this.oq.equals(aVar.oq);
        }

        public int hashCode() {
            return (this.op.hashCode() * 31) + this.oq.hashCode();
        }

        public String toString() {
            return this.op + ".andThen(" + this.oq + ")";
        }
    }

    private static final class b<A, B> extends Converter<A, B> implements Serializable {
        private final Function<? super A, ? extends B> or;
        private final Function<? super B, ? extends A> os;

        private b(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
            this.or = (Function) Preconditions.checkNotNull(function);
            this.os = (Function) Preconditions.checkNotNull(function2);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected A doBackward(B b) {
            return this.os.apply(b);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected B doForward(A a) {
            return this.or.apply(a);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.or.equals(bVar.or) && this.os.equals(bVar.os);
        }

        public int hashCode() {
            return (this.or.hashCode() * 31) + this.os.hashCode();
        }

        public String toString() {
            return "Converter.from(" + this.or + ", " + this.os + ")";
        }
    }

    private static final class c<T> extends Converter<T, T> implements Serializable {
        static final c ot = new c();

        private c() {
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        <S> Converter<T, S> doAndThen(Converter<T, S> converter) {
            return (Converter) Preconditions.checkNotNull(converter, "otherConverter");
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected T doBackward(T t) {
            return t;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected T doForward(T t) {
            return t;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        /* JADX INFO: renamed from: eY, reason: merged with bridge method [inline-methods] */
        public c<T> reverse() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    private static final class d<A, B> extends Converter<B, A> implements Serializable {
        final Converter<A, B> ou;

        d(Converter<A, B> converter) {
            this.ou = converter;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        @NullableDecl
        B correctedDoBackward(@NullableDecl A a) {
            return this.ou.correctedDoForward(a);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        @NullableDecl
        A correctedDoForward(@NullableDecl B b) {
            return this.ou.correctedDoBackward(b);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected B doBackward(A a) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected A doForward(B b) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof d) {
                return this.ou.equals(((d) obj).ou);
            }
            return false;
        }

        public int hashCode() {
            return ~this.ou.hashCode();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        public Converter<A, B> reverse() {
            return this.ou;
        }

        public String toString() {
            return this.ou + ".reverse()";
        }
    }

    protected Converter() {
        this(true);
    }

    Converter(boolean z) {
        this.handleNullAutomatically = z;
    }

    public static <A, B> Converter<A, B> from(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
        return new b(function, function2);
    }

    public static <T> Converter<T, T> identity() {
        return c.ot;
    }

    public final <C> Converter<A, C> andThen(Converter<B, C> converter) {
        return doAndThen(converter);
    }

    @Override // com.applovin.exoplayer2.common.base.Function
    @NullableDecl
    @Deprecated
    public final B apply(@NullableDecl A a2) {
        return convert(a2);
    }

    @NullableDecl
    public final B convert(@NullableDecl A a2) {
        return correctedDoForward(a2);
    }

    public Iterable<B> convertAll(final Iterable<? extends A> iterable) {
        Preconditions.checkNotNull(iterable, "fromIterable");
        return new Iterable<B>() { // from class: com.applovin.exoplayer2.common.base.Converter.1
            @Override // java.lang.Iterable
            public Iterator<B> iterator() {
                return new Iterator<B>() { // from class: com.applovin.exoplayer2.common.base.Converter.1.1
                    private final Iterator<? extends A> om;

                    {
                        this.om = iterable.iterator();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.om.hasNext();
                    }

                    @Override // java.util.Iterator
                    public B next() {
                        return (B) Converter.this.convert(this.om.next());
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        this.om.remove();
                    }
                };
            }
        };
    }

    @NullableDecl
    A correctedDoBackward(@NullableDecl B b2) {
        if (!this.handleNullAutomatically) {
            return doBackward(b2);
        }
        if (b2 == null) {
            return null;
        }
        return (A) Preconditions.checkNotNull(doBackward(b2));
    }

    @NullableDecl
    B correctedDoForward(@NullableDecl A a2) {
        if (!this.handleNullAutomatically) {
            return doForward(a2);
        }
        if (a2 == null) {
            return null;
        }
        return (B) Preconditions.checkNotNull(doForward(a2));
    }

    <C> Converter<A, C> doAndThen(Converter<B, C> converter) {
        return new a(this, (Converter) Preconditions.checkNotNull(converter));
    }

    protected abstract A doBackward(B b2);

    protected abstract B doForward(A a2);

    @Override // com.applovin.exoplayer2.common.base.Function
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    public Converter<B, A> reverse() {
        Converter<B, A> converter = this.reverse;
        if (converter != null) {
            return converter;
        }
        d dVar = new d(this);
        this.reverse = dVar;
        return dVar;
    }
}
