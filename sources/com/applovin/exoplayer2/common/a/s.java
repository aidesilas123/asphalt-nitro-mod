package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.a.q;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class s<E> extends q<E> implements List<E>, RandomAccess {
    private static final ay<Object> qe = new b(ak.qO, 0);

    public static final class a<E> extends q.a<E> {
        public a() {
            this(4);
        }

        a(int i) {
            super(i);
        }

        public s<E> gd() {
            this.qd = true;
            return s.b(this.qc, this.oW);
        }

        @Override // com.applovin.exoplayer2.common.a.q.a
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public a<E> t(E e2) {
            super.t(e2);
            return this;
        }
    }

    static class b<E> extends com.applovin.exoplayer2.common.a.a<E> {
        private final s<E> ai;

        b(s<E> sVar, int i) {
            super(sVar.size(), i);
            this.ai = sVar;
        }

        @Override // com.applovin.exoplayer2.common.a.a
        protected E get(int i) {
            return this.ai.get(i);
        }
    }

    class c extends s<E> {
        final transient int fR;
        final transient int oU;

        c(int i, int i2) {
            this.oU = i;
            this.fR = i2;
        }

        @Override // com.applovin.exoplayer2.common.a.q
        Object[] fV() {
            return s.this.fV();
        }

        @Override // com.applovin.exoplayer2.common.a.q
        int fW() {
            return s.this.fW() + this.oU;
        }

        @Override // com.applovin.exoplayer2.common.a.q
        int fX() {
            return s.this.fW() + this.oU + this.fR;
        }

        @Override // com.applovin.exoplayer2.common.a.q
        boolean fZ() {
            return true;
        }

        @Override // java.util.List
        public E get(int i) {
            Preconditions.checkElementIndex(i, this.fR);
            return s.this.get(i + this.oU);
        }

        @Override // com.applovin.exoplayer2.common.a.s, com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.applovin.exoplayer2.common.a.s, java.util.List
        public /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.applovin.exoplayer2.common.a.s, java.util.List
        public /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fR;
        }

        @Override // com.applovin.exoplayer2.common.a.s, java.util.List
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public s<E> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, this.fR);
            s sVar = s.this;
            int i3 = this.oU;
            return sVar.subList(i + i3, i2 + i3);
        }
    }

    s() {
    }

    public static <E> s<E> a(E e2, E e3, E e4, E e5, E e6) {
        return c(e2, e3, e4, e5, e6);
    }

    public static <E> s<E> a(E e2, E e3, E e4, E e5, E e6, E e7) {
        return c(e2, e3, e4, e5, e6, e7);
    }

    public static <E> s<E> a(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(comparator);
        Object[] objArrD = x.d(iterable);
        ah.f(objArrD);
        Arrays.sort(objArrD, comparator);
        return d(objArrD);
    }

    public static <E> s<E> b(E[] eArr) {
        return eArr.length == 0 ? ga() : c((Object[]) eArr.clone());
    }

    static <E> s<E> b(Object[] objArr, int i) {
        return i == 0 ? ga() : new ak(objArr, i);
    }

    private static <E> s<E> c(Object... objArr) {
        return d(ah.f(objArr));
    }

    public static <E> s<E> d(Collection<? extends E> collection) {
        if (!(collection instanceof q)) {
            return c(collection.toArray());
        }
        s<E> sVarFY = ((q) collection).fY();
        return sVarFY.fZ() ? d(sVarFY.toArray()) : sVarFY;
    }

    static <E> s<E> d(Object[] objArr) {
        return b(objArr, objArr.length);
    }

    public static <E> s<E> ga() {
        return (s<E>) ak.qO;
    }

    public static <E> a<E> gc() {
        return new a<>();
    }

    public static <E> s<E> k(E e2, E e3) {
        return c(e2, e3);
    }

    public static <E> s<E> u(E e2) {
        return c(e2);
    }

    @Override // com.applovin.exoplayer2.common.a.q
    int a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: bi, reason: merged with bridge method [inline-methods] */
    public ay<E> listIterator(int i) {
        Preconditions.checkPositionIndex(i, size());
        return isEmpty() ? (ay<E>) qe : new b(this, i);
    }

    @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return aa.a(this, obj);
    }

    @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: fU */
    public ax<E> iterator() {
        return listIterator();
    }

    @Override // com.applovin.exoplayer2.common.a.q
    public final s<E> fY() {
        return this;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: gb, reason: merged with bridge method [inline-methods] */
    public ay<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~((i * 31) + get(i2).hashCode()));
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return aa.b(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return aa.d(this, obj);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: t */
    public s<E> subList(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? ga() : u(i, i2);
    }

    s<E> u(int i, int i2) {
        return new c(i, i2 - i);
    }
}
