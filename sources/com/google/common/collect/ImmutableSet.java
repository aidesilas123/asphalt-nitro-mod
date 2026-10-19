package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.n1;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableSet<E> extends n1<E> implements Set<E> {
    private transient ImmutableList<E> b;

    public static class a<E> extends n1.a<E> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Object[] f3587d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3588e;

        public a() {
            super(4);
        }

        a(int i) {
            super(i);
            this.f3587d = new Object[ImmutableSet.v(i)];
        }

        private void m(E e2) {
            Objects.requireNonNull(this.f3587d);
            int length = this.f3587d.length - 1;
            int iHashCode = e2.hashCode();
            int iC = l1.c(iHashCode);
            while (true) {
                int i = iC & length;
                Object[] objArr = this.f3587d;
                Object obj = objArr[i];
                if (obj == null) {
                    objArr[i] = e2;
                    this.f3588e += iHashCode;
                    super.f(e2);
                    return;
                } else if (obj.equals(e2)) {
                    return;
                } else {
                    iC = i + 1;
                }
            }
        }

        @Override // com.google.common.collect.n1.b
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public a<E> a(E e2) {
            Preconditions.checkNotNull(e2);
            if (this.f3587d != null && ImmutableSet.v(this.b) <= this.f3587d.length) {
                m(e2);
                return this;
            }
            this.f3587d = null;
            super.f(e2);
            return this;
        }

        public a<E> j(E... eArr) {
            if (this.f3587d != null) {
                for (E e2 : eArr) {
                    a(e2);
                }
            } else {
                super.b(eArr);
            }
            return this;
        }

        public a<E> k(Iterable<? extends E> iterable) {
            Preconditions.checkNotNull(iterable);
            if (this.f3587d != null) {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        public a<E> l(Iterator<? extends E> it) {
            Preconditions.checkNotNull(it);
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public ImmutableSet<E> n() {
            ImmutableSet<E> immutableSetX;
            int i = this.b;
            if (i == 0) {
                return ImmutableSet.of();
            }
            if (i == 1) {
                Object obj = this.a[0];
                Objects.requireNonNull(obj);
                return ImmutableSet.of(obj);
            }
            if (this.f3587d == null || ImmutableSet.v(i) != this.f3587d.length) {
                immutableSetX = ImmutableSet.x(this.b, this.a);
                this.b = immutableSetX.size();
            } else {
                Object[] objArrCopyOf = ImmutableSet.A(this.b, this.a.length) ? Arrays.copyOf(this.a, this.b) : this.a;
                immutableSetX = new r2<>(objArrCopyOf, this.f3588e, this.f3587d, r5.length - 1, this.b);
            }
            this.c = true;
            this.f3587d = null;
            return immutableSetX;
        }
    }

    private static class b implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] a;

        b(Object[] objArr) {
            this.a = objArr;
        }

        Object readResolve() {
            return ImmutableSet.copyOf(this.a);
        }
    }

    ImmutableSet() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean A(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    public static <E> a<E> builder() {
        return new a<>();
    }

    public static <E> a<E> builderWithExpectedSize(int i) {
        z.b(i, "expectedSize");
        return new a<>(i);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.j()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return x(array.length, array);
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        return !it.hasNext() ? of((Object) next) : new a().a(next).l(it).n();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        return length != 0 ? length != 1 ? x(eArr.length, (Object[]) eArr.clone()) : of((Object) eArr[0]) : of();
    }

    public static <E> ImmutableSet<E> of() {
        return r2.f3834d;
    }

    public static <E> ImmutableSet<E> of(E e2) {
        return new a3(e2);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3) {
        return x(2, e2, e3);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4) {
        return x(3, e2, e3, e4);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5) {
        return x(4, e2, e3, e4, e5);
    }

    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5, E e6) {
        return x(5, e2, e3, e4, e5, e6);
    }

    @SafeVarargs
    public static <E> ImmutableSet<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        Preconditions.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e2;
        objArr[1] = e3;
        objArr[2] = e4;
        objArr[3] = e5;
        objArr[4] = e6;
        objArr[5] = e7;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return x(length, objArr);
    }

    static int v(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            Preconditions.checkArgument(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ImmutableSet<E> x(int i, Object... objArr) {
        if (i == 0) {
            return of();
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return of(obj);
        }
        int iV = v(i);
        Object[] objArr2 = new Object[iV];
        int i2 = iV - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object objA = ObjectArrays.a(objArr[i5], i5);
            int iHashCode = objA.hashCode();
            int iC = l1.c(iHashCode);
            while (true) {
                int i6 = iC & i2;
                Object obj2 = objArr2[i6];
                if (obj2 == null) {
                    objArr[i4] = objA;
                    objArr2[i6] = objA;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj2.equals(objA)) {
                    break;
                }
                iC++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return new a3(obj3);
        }
        if (v(i4) < iV / 2) {
            return x(i4, objArr);
        }
        if (A(i4, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new r2(objArr, i3, objArr2, i2, i4);
    }

    @Override // com.google.common.collect.n1
    public ImmutableList<E> e() {
        ImmutableList<E> immutableList = this.b;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListY = y();
        this.b = immutableListY;
        return immutableListY;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && z() && ((ImmutableSet) obj).z() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.b(this);
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.common.collect.n1
    Object writeReplace() {
        return new b(toArray());
    }

    ImmutableList<E> y() {
        return ImmutableList.r(toArray());
    }

    boolean z() {
        return false;
    }
}
