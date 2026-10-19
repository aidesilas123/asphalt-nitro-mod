package kotlin.reflect.jvm.internal.pcollections;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
final class ConsPStack<E> implements Iterable<E> {
    private static final ConsPStack<Object> a = new ConsPStack<>();
    final E b;
    final ConsPStack<E> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9900d;

    private static class a<E> implements Iterator<E> {
        private ConsPStack<E> a;

        public a(ConsPStack<E> consPStack) {
            this.a = consPStack;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return ((ConsPStack) this.a).f9900d > 0;
        }

        @Override // java.util.Iterator
        public E next() {
            ConsPStack<E> consPStack = this.a;
            E e2 = consPStack.b;
            this.a = consPStack.c;
            return e2;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private ConsPStack() {
        this.f9900d = 0;
        this.b = null;
        this.c = null;
    }

    private ConsPStack(E e2, ConsPStack<E> consPStack) {
        this.b = e2;
        this.c = consPStack;
        this.f9900d = consPStack.f9900d + 1;
    }

    private Iterator<E> c(int i) {
        return new a(g(i));
    }

    private ConsPStack<E> e(Object obj) {
        if (this.f9900d == 0) {
            return this;
        }
        if (this.b.equals(obj)) {
            return this.c;
        }
        ConsPStack<E> consPStackE = this.c.e(obj);
        return consPStackE == this.c ? this : new ConsPStack<>(this.b, consPStackE);
    }

    public static <E> ConsPStack<E> empty() {
        return (ConsPStack<E>) a;
    }

    private ConsPStack<E> g(int i) {
        if (i < 0 || i > this.f9900d) {
            throw new IndexOutOfBoundsException();
        }
        return i == 0 ? this : this.c.g(i - 1);
    }

    public ConsPStack<E> d(int i) {
        return e(get(i));
    }

    public ConsPStack<E> f(E e2) {
        return new ConsPStack<>(e2, this);
    }

    public E get(int i) {
        if (i < 0 || i > this.f9900d) {
            throw new IndexOutOfBoundsException();
        }
        try {
            return c(i).next();
        } catch (NoSuchElementException unused) {
            throw new IndexOutOfBoundsException("Index: " + i);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        return c(0);
    }

    public int size() {
        return this.f9900d;
    }
}
