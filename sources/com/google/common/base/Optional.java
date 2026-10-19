package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    class a implements Iterable<T> {
        final /* synthetic */ Iterable a;

        /* JADX INFO: renamed from: com.google.common.base.Optional$a$a, reason: collision with other inner class name */
        class C0242a extends AbstractIterator<T> {
            private final Iterator<? extends Optional<? extends T>> c;

            C0242a() {
                this.c = (Iterator) Preconditions.checkNotNull(a.this.a.iterator());
            }

            @Override // com.google.common.base.AbstractIterator
            protected T b() {
                while (this.c.hasNext()) {
                    Optional<? extends T> next = this.c.next();
                    if (next.d()) {
                        return next.c();
                    }
                }
                return c();
            }
        }

        a(Iterable iterable) {
            this.a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new C0242a();
        }
    }

    Optional() {
    }

    public static <T> Optional<T> absent() {
        return com.google.common.base.a.f();
    }

    public static <T> Optional<T> fromNullable(T t) {
        return t == null ? absent() : new l(t);
    }

    public static <T> Optional<T> of(T t) {
        return new l(Preconditions.checkNotNull(t));
    }

    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        Preconditions.checkNotNull(iterable);
        return new a(iterable);
    }

    public abstract T c();

    public abstract boolean d();

    public abstract T e(T t);

    public abstract boolean equals(Object obj);
}
