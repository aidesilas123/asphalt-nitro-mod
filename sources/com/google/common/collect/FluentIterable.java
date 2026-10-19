package com.google.common.collect;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FluentIterable<E> implements Iterable<E> {
    private final Optional<Iterable<E>> a;

    class a extends FluentIterable<E> {
        final /* synthetic */ Iterable b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.b = iterable2;
        }

        @Override // java.lang.Iterable
        public Iterator<E> iterator() {
            return this.b.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable b;

        b(Iterable iterable) {
            this.b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.concat(Iterators.transform(this.b.iterator(), Iterables.h()));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable[] b;

        class a extends e<Iterator<? extends T>> {
            a(int i) {
                super(i);
            }

            @Override // com.google.common.collect.e
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Iterator<? extends T> a(int i) {
                return c.this.b[i].iterator();
            }
        }

        c(Iterable[] iterableArr) {
            this.b = iterableArr;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.concat(new a(this.b.length));
        }
    }

    protected FluentIterable() {
        this.a = Optional.absent();
    }

    FluentIterable(Iterable<E> iterable) {
        this.a = Optional.of(iterable);
    }

    private static <T> FluentIterable<T> c(Iterable<? extends T>... iterableArr) {
        for (Iterable<? extends T> iterable : iterableArr) {
            Preconditions.checkNotNull(iterable);
        }
        return new c(iterableArr);
    }

    public static <T> FluentIterable<T> concat(Iterable<? extends Iterable<? extends T>> iterable) {
        Preconditions.checkNotNull(iterable);
        return new b(iterable);
    }

    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return c(iterable, iterable2);
    }

    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return c(iterable, iterable2, iterable3);
    }

    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return c(iterable, iterable2, iterable3, iterable4);
    }

    public static <T> FluentIterable<T> concat(Iterable<? extends T>... iterableArr) {
        return c((Iterable[]) Arrays.copyOf(iterableArr, iterableArr.length));
    }

    private Iterable<E> e() {
        return this.a.e(this);
    }

    @Deprecated
    public static <E> FluentIterable<E> from(FluentIterable<E> fluentIterable) {
        return (FluentIterable) Preconditions.checkNotNull(fluentIterable);
    }

    public static <E> FluentIterable<E> from(Iterable<E> iterable) {
        return iterable instanceof FluentIterable ? (FluentIterable) iterable : new a(iterable, iterable);
    }

    public static <E> FluentIterable<E> from(E[] eArr) {
        return from(Arrays.asList(eArr));
    }

    public static <E> FluentIterable<E> of() {
        return from(Collections.emptyList());
    }

    public static <E> FluentIterable<E> of(E e2, E... eArr) {
        return from(Lists.asList(e2, eArr));
    }

    public final FluentIterable<E> a(E... eArr) {
        return concat(e(), Arrays.asList(eArr));
    }

    public String toString() {
        return Iterables.toString(e());
    }
}
