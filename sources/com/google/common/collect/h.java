package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.c2;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: AbstractMapBasedMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class h<E> extends k<E> implements Serializable {
    private static final long serialVersionUID = 0;
    transient f2<E> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient long f3765d;

    /* JADX INFO: compiled from: AbstractMapBasedMultiset.java */
    class a extends h<E>.c<E> {
        a() {
            super();
        }

        @Override // com.google.common.collect.h.c
        E c(int i) {
            return h.this.c.i(i);
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultiset.java */
    class b extends h<E>.c<c2.a<E>> {
        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.h.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public c2.a<E> c(int i) {
            return h.this.c.g(i);
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultiset.java */
    abstract class c<T> implements Iterator<T> {
        int a;
        int b = -1;
        int c;

        c() {
            this.a = h.this.c.e();
            this.c = h.this.c.f3744d;
        }

        private void b() {
            if (h.this.c.f3744d != this.c) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T c(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            b();
            return this.a >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T tC = c(this.a);
            int i = this.a;
            this.b = i;
            this.a = h.this.c.s(i);
            return tC;
        }

        @Override // java.util.Iterator
        public void remove() {
            b();
            z.e(this.b != -1);
            h hVar = h.this;
            hVar.f3765d -= (long) hVar.c.x(this.b);
            this.a = h.this.c.t(this.a, this.b);
            this.b = -1;
            this.c = h.this.c.f3744d;
        }
    }

    h(int i) {
        this.c = n(i);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iH = y2.h(objectInputStream);
        this.c = n(3);
        y2.g(this, objectInputStream, iH);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        y2.k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public final boolean I(E e2, int i, int i2) {
        z.b(i, "oldCount");
        z.b(i2, "newCount");
        int iM = this.c.m(e2);
        if (iM == -1) {
            if (i != 0) {
                return false;
            }
            if (i2 > 0) {
                this.c.u(e2, i2);
                this.f3765d += (long) i2;
            }
            return true;
        }
        if (this.c.k(iM) != i) {
            return false;
        }
        if (i2 == 0) {
            this.c.x(iM);
            this.f3765d -= (long) i;
        } else {
            this.c.B(iM, i2);
            this.f3765d += (long) (i2 - i);
        }
        return true;
    }

    @Override // com.google.common.collect.c2
    public final int K(Object obj) {
        return this.c.f(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.c.a();
        this.f3765d = 0L;
    }

    @Override // com.google.common.collect.k
    final int g() {
        return this.c.C();
    }

    @Override // com.google.common.collect.k
    final Iterator<E> h() {
        return new a();
    }

    @Override // com.google.common.collect.k
    final Iterator<c2.a<E>> i() {
        return new b();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.c2
    public final Iterator<E> iterator() {
        return Multisets.h(this);
    }

    void j(c2<? super E> c2Var) {
        Preconditions.checkNotNull(c2Var);
        int iE = this.c.e();
        while (iE >= 0) {
            c2Var.u(this.c.i(iE), this.c.k(iE));
            iE = this.c.s(iE);
        }
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public final int m(E e2, int i) {
        z.b(i, "count");
        f2<E> f2Var = this.c;
        int iV = i == 0 ? f2Var.v(e2) : f2Var.u(e2, i);
        this.f3765d += (long) (i - iV);
        return iV;
    }

    abstract f2<E> n(int i);

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public final int s(Object obj, int i) {
        if (i == 0) {
            return K(obj);
        }
        Preconditions.checkArgument(i > 0, "occurrences cannot be negative: %s", i);
        int iM = this.c.m(obj);
        if (iM == -1) {
            return 0;
        }
        int iK = this.c.k(iM);
        if (iK > i) {
            this.c.B(iM, iK - i);
        } else {
            this.c.x(iM);
            i = iK;
        }
        this.f3765d -= (long) i;
        return iK;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public final int size() {
        return Ints.saturatedCast(this.f3765d);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public final int u(E e2, int i) {
        if (i == 0) {
            return K(e2);
        }
        Preconditions.checkArgument(i > 0, "occurrences cannot be negative: %s", i);
        int iM = this.c.m(e2);
        if (iM == -1) {
            this.c.u(e2, i);
            this.f3765d += (long) i;
            return 0;
        }
        int iK = this.c.k(iM);
        long j = i;
        long j2 = ((long) iK) + j;
        Preconditions.checkArgument(j2 <= 2147483647L, "too many occurrences: %s", j2);
        this.c.B(iM, (int) j2);
        this.f3765d += j;
        return iK;
    }
}
