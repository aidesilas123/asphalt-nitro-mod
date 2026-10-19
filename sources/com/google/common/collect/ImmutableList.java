package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.n1;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableList<E> extends n1<E> implements List<E>, RandomAccess {
    private static final p3<Object> b = new b(o2.c, 0);

    public static final class a<E> extends n1.a<E> {
        public a() {
            this(4);
        }

        a(int i) {
            super(i);
        }

        @Override // com.google.common.collect.n1.b
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public a<E> a(E e2) {
            super.f(e2);
            return this;
        }

        public a<E> j(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        public ImmutableList<E> k() {
            this.c = true;
            return ImmutableList.t(this.a, this.b);
        }
    }

    static class b<E> extends com.google.common.collect.e<E> {
        private final ImmutableList<E> c;

        b(ImmutableList<E> immutableList, int i) {
            super(immutableList.size(), i);
            this.c = immutableList;
        }

        @Override // com.google.common.collect.e
        protected E a(int i) {
            return this.c.get(i);
        }
    }

    private static class c<E> extends ImmutableList<E> {
        private final transient ImmutableList<E> c;

        c(ImmutableList<E> immutableList) {
            this.c = immutableList;
        }

        private int C(int i) {
            return (size() - 1) - i;
        }

        private int D(int i) {
            return size() - i;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public ImmutableList<E> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            return this.c.subList(D(i2), D(i)).z();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.c.contains(obj);
        }

        @Override // java.util.List
        public E get(int i) {
            Preconditions.checkElementIndex(i, size());
            return this.c.get(C(i));
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(Object obj) {
            int iLastIndexOf = this.c.lastIndexOf(obj);
            if (iLastIndexOf >= 0) {
                return C(iLastIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return this.c.j();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(Object obj) {
            int iIndexOf = this.c.indexOf(obj);
            if (iIndexOf >= 0) {
                return C(iIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c.size();
        }

        @Override // com.google.common.collect.ImmutableList
        public ImmutableList<E> z() {
            return this.c;
        }
    }

    static class d implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] a;

        d(Object[] objArr) {
            this.a = objArr;
        }

        Object readResolve() {
            return ImmutableList.copyOf(this.a);
        }
    }

    class e extends ImmutableList<E> {
        final transient int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final transient int f3579d;

        e(int i, int i2) {
            this.c = i;
            this.f3579d = i2;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* JADX INFO: renamed from: A */
        public ImmutableList<E> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, this.f3579d);
            ImmutableList immutableList = ImmutableList.this;
            int i3 = this.c;
            return immutableList.subList(i + i3, i2 + i3);
        }

        @Override // com.google.common.collect.n1
        Object[] g() {
            return ImmutableList.this.g();
        }

        @Override // java.util.List
        public E get(int i) {
            Preconditions.checkElementIndex(i, this.f3579d);
            return ImmutableList.this.get(i + this.c);
        }

        @Override // com.google.common.collect.n1
        int h() {
            return ImmutableList.this.i() + this.c + this.f3579d;
        }

        @Override // com.google.common.collect.n1
        int i() {
            return ImmutableList.this.i() + this.c;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3579d;
        }
    }

    ImmutableList() {
    }

    public static <E> a<E> builder() {
        return new a<>();
    }

    public static <E> a<E> builderWithExpectedSize(int i) {
        z.b(i, "expectedSize");
        return new a<>(i);
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(iterable);
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (!(collection instanceof n1)) {
            return v(collection.toArray());
        }
        ImmutableList<E> immutableListE = ((n1) collection).e();
        return immutableListE.j() ? r(immutableListE.toArray()) : immutableListE;
    }

    public static <E> ImmutableList<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        return !it.hasNext() ? of((Object) next) : new a().a(next).j(it).k();
    }

    public static <E> ImmutableList<E> copyOf(E[] eArr) {
        return eArr.length == 0 ? of() : v((Object[]) eArr.clone());
    }

    public static <E> ImmutableList<E> of() {
        return (ImmutableList<E>) o2.c;
    }

    public static <E> ImmutableList<E> of(E e2) {
        return v(e2);
    }

    public static <E> ImmutableList<E> of(E e2, E e3) {
        return v(e2, e3);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4) {
        return v(e2, e3, e4);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5) {
        return v(e2, e3, e4, e5);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5, E e6) {
        return v(e2, e3, e4, e5, e6);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5, E e6, E e7) {
        return v(e2, e3, e4, e5, e6, e7);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8) {
        return v(e2, e3, e4, e5, e6, e7, e8);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9) {
        return v(e2, e3, e4, e5, e6, e7, e8, e9);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10) {
        return v(e2, e3, e4, e5, e6, e7, e8, e9, e10);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11) {
        return v(e2, e3, e4, e5, e6, e7, e8, e9, e10, e11);
    }

    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11, E e12) {
        return v(e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12);
    }

    @SafeVarargs
    public static <E> ImmutableList<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11, E e12, E e13, E... eArr) {
        Preconditions.checkArgument(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e2;
        objArr[1] = e3;
        objArr[2] = e4;
        objArr[3] = e5;
        objArr[4] = e6;
        objArr[5] = e7;
        objArr[6] = e8;
        objArr[7] = e9;
        objArr[8] = e10;
        objArr[9] = e11;
        objArr[10] = e12;
        objArr[11] = e13;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return v(objArr);
    }

    static <E> ImmutableList<E> r(Object[] objArr) {
        return t(objArr, objArr.length);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> ImmutableList<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) Iterables.g(iterable, new Comparable[0]);
        ObjectArrays.b(comparableArr);
        Arrays.sort(comparableArr);
        return r(comparableArr);
    }

    public static <E> ImmutableList<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(comparator);
        Object[] objArrF = Iterables.f(iterable);
        ObjectArrays.b(objArrF);
        Arrays.sort(objArrF, comparator);
        return r(objArrF);
    }

    static <E> ImmutableList<E> t(Object[] objArr, int i) {
        return i == 0 ? of() : new o2(objArr, i);
    }

    private static <E> ImmutableList<E> v(Object... objArr) {
        return r(ObjectArrays.b(objArr));
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: A */
    public ImmutableList<E> subList(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? of() : B(i, i2);
    }

    ImmutableList<E> B(int i, int i2) {
        return new e(i, i2 - i);
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

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.n1
    @Deprecated
    public final ImmutableList<E> e() {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return Lists.c(this, obj);
    }

    @Override // com.google.common.collect.n1
    int f(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
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
        return Lists.d(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return Lists.f(this, obj);
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public o3<E> iterator() {
        return listIterator();
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

    @Override // com.google.common.collect.n1
    Object writeReplace() {
        return new d(toArray());
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public p3<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public p3<E> listIterator(int i) {
        Preconditions.checkPositionIndex(i, size());
        return isEmpty() ? (p3<E>) b : new b(this, i);
    }

    public ImmutableList<E> z() {
        return size() <= 1 ? this : new c(this);
    }
}
