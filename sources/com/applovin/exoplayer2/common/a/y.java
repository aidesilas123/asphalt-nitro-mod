package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    private static final class a<T> extends com.applovin.exoplayer2.common.a.a<T> {
        static final ay<Object> qz = new a(new Object[0], 0, 0, 0);
        private final int oU;
        private final T[] qA;

        a(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.qA = tArr;
            this.oU = i;
        }

        @Override // com.applovin.exoplayer2.common.a.a
        protected T get(int i) {
            return this.qA[this.oU + i];
        }
    }

    private enum b implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            j.I(false);
        }
    }

    @NullableDecl
    public static <T> T a(Iterator<? extends T> it, @NullableDecl T t) {
        return it.hasNext() ? it.next() : t;
    }

    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        Preconditions.checkNotNull(collection);
        Preconditions.checkNotNull(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static boolean a(Iterator<?> it, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean a(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !Objects.equal(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static String b(Iterator<?> it) {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(it.next());
        }
        sb.append(']');
        return sb.toString();
    }

    public static <T> T c(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    @NullableDecl
    static <T> T d(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        it.remove();
        return next;
    }

    static void e(Iterator<?> it) {
        Preconditions.checkNotNull(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    static <T> ax<T> gB() {
        return gC();
    }

    static <T> ay<T> gC() {
        return (ay<T>) a.qz;
    }

    static <T> Iterator<T> gD() {
        return b.INSTANCE;
    }

    public static <T> ax<T> z(@NullableDecl final T t) {
        return new ax<T>() { // from class: com.applovin.exoplayer2.common.a.y.1
            boolean qx;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.qx;
            }

            @Override // java.util.Iterator
            public T next() {
                if (this.qx) {
                    throw new NoSuchElementException();
                }
                this.qx = true;
                return (T) t;
            }
        };
    }
}
