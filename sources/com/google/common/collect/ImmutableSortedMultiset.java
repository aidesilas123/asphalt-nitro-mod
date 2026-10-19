package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.c2;
import com.google.common.math.IntMath;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableSortedMultiset<E> extends ImmutableSortedMultisetFauxverideShim<E> implements e3<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient ImmutableSortedMultiset<E> f3596d;

    public static class a<E> extends ImmutableMultiset.b<E> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Comparator<? super E> f3597d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        E[] f3598e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int[] f3599f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f3600g;
        private boolean h;

        public a(Comparator<? super E> comparator) {
            super(true);
            this.f3597d = (Comparator) Preconditions.checkNotNull(comparator);
            this.f3598e = (E[]) new Object[4];
            this.f3599f = new int[4];
        }

        private void s(boolean z) {
            int i = this.f3600g;
            if (i == 0) {
                return;
            }
            Object[] objArr = (E[]) Arrays.copyOf(this.f3598e, i);
            Arrays.sort(objArr, this.f3597d);
            int i2 = 1;
            for (int i3 = 1; i3 < objArr.length; i3++) {
                if (this.f3597d.compare((Object) objArr[i2 - 1], (Object) objArr[i3]) < 0) {
                    objArr[i2] = objArr[i3];
                    i2++;
                }
            }
            Arrays.fill(objArr, i2, this.f3600g, (Object) null);
            if (z) {
                int i4 = i2 * 4;
                int i5 = this.f3600g;
                if (i4 > i5 * 3) {
                    objArr = (E[]) Arrays.copyOf(objArr, IntMath.saturatedAdd(i5, (i5 / 2) + 1));
                }
            }
            int[] iArr = new int[objArr.length];
            for (int i6 = 0; i6 < this.f3600g; i6++) {
                int iBinarySearch = Arrays.binarySearch(objArr, 0, i2, this.f3598e[i6], this.f3597d);
                int[] iArr2 = this.f3599f;
                if (iArr2[i6] >= 0) {
                    iArr[iBinarySearch] = iArr[iBinarySearch] + iArr2[i6];
                } else {
                    iArr[iBinarySearch] = ~iArr2[i6];
                }
            }
            this.f3598e = (E[]) objArr;
            this.f3599f = iArr;
            this.f3600g = i2;
        }

        private void t() {
            s(false);
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = this.f3600g;
                if (i >= i3) {
                    Arrays.fill(this.f3598e, i2, i3, (Object) null);
                    Arrays.fill(this.f3599f, i2, this.f3600g, 0);
                    this.f3600g = i2;
                    return;
                } else {
                    int[] iArr = this.f3599f;
                    if (iArr[i] > 0) {
                        E[] eArr = this.f3598e;
                        eArr[i2] = eArr[i];
                        iArr[i2] = iArr[i];
                        i2++;
                    }
                    i++;
                }
            }
        }

        private void u() {
            int i = this.f3600g;
            E[] eArr = this.f3598e;
            if (i == eArr.length) {
                s(true);
            } else if (this.h) {
                this.f3598e = (E[]) Arrays.copyOf(eArr, eArr.length);
            }
            this.h = false;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public a<E> a(E e2) {
            return j(e2, 1);
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public a<E> g(E... eArr) {
            for (E e2 : eArr) {
                a(e2);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public a<E> h(Iterable<? extends E> iterable) {
            if (iterable instanceof c2) {
                for (c2.a<E> aVar : ((c2) iterable).entrySet()) {
                    j(aVar.c(), aVar.getCount());
                }
            } else {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public a<E> i(Iterator<? extends E> it) {
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public a<E> j(E e2, int i) {
            Preconditions.checkNotNull(e2);
            z.b(i, "occurrences");
            if (i == 0) {
                return this;
            }
            u();
            E[] eArr = this.f3598e;
            int i2 = this.f3600g;
            eArr[i2] = e2;
            this.f3599f[i2] = i;
            this.f3600g = i2 + 1;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.b
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public ImmutableSortedMultiset<E> k() {
            t();
            int i = this.f3600g;
            if (i == 0) {
                return ImmutableSortedMultiset.D(this.f3597d);
            }
            t2 t2Var = (t2) ImmutableSortedSet.B(this.f3597d, i, this.f3598e);
            long[] jArr = new long[this.f3600g + 1];
            int i2 = 0;
            while (i2 < this.f3600g) {
                int i3 = i2 + 1;
                jArr[i3] = jArr[i2] + ((long) this.f3599f[i2]);
                i2 = i3;
            }
            this.h = true;
            return new s2(t2Var, jArr, 0, this.f3600g);
        }
    }

    private static final class b<E> implements Serializable {
        final Comparator<? super E> a;
        final E[] b;
        final int[] c;

        b(e3<E> e3Var) {
            this.a = e3Var.comparator();
            int size = e3Var.entrySet().size();
            this.b = (E[]) new Object[size];
            this.c = new int[size];
            int i = 0;
            for (c2.a<E> aVar : e3Var.entrySet()) {
                this.b[i] = aVar.c();
                this.c[i] = aVar.getCount();
                i++;
            }
        }

        Object readResolve() {
            int length = this.b.length;
            a aVar = new a(this.a);
            for (int i = 0; i < length; i++) {
                aVar.j(this.b[i], this.c[i]);
            }
            return aVar.k();
        }
    }

    ImmutableSortedMultiset() {
    }

    private static <E> ImmutableSortedMultiset<E> A(Comparator<? super E> comparator, Collection<c2.a<E>> collection) {
        if (collection.isEmpty()) {
            return D(comparator);
        }
        ImmutableList.a aVar = new ImmutableList.a(collection.size());
        long[] jArr = new long[collection.size() + 1];
        int i = 0;
        for (c2.a<E> aVar2 : collection) {
            aVar.a(aVar2.c());
            int i2 = i + 1;
            jArr[i2] = jArr[i] + ((long) aVar2.getCount());
            i = i2;
        }
        return new s2(new t2(aVar.k(), comparator), jArr, 0, collection.size());
    }

    static <E> ImmutableSortedMultiset<E> D(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (ImmutableSortedMultiset<E>) s2.f3839f : new s2(comparator);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableSortedMultiset) {
            ImmutableSortedMultiset<E> immutableSortedMultiset = (ImmutableSortedMultiset) iterable;
            if (comparator.equals(immutableSortedMultiset.comparator())) {
                return immutableSortedMultiset.j() ? A(comparator, immutableSortedMultiset.entrySet().e()) : immutableSortedMultiset;
            }
        }
        return new a(comparator).h(iterable).k();
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        Preconditions.checkNotNull(comparator);
        return new a(comparator).i(it).k();
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset copyOf(Comparable[] comparableArr) {
        return copyOf(Ordering.natural(), Arrays.asList(comparableArr));
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSorted(e3<E> e3Var) {
        return A(e3Var.comparator(), Lists.newArrayList(e3Var.entrySet()));
    }

    public static <E extends Comparable<?>> a<E> naturalOrder() {
        return new a<>(Ordering.natural());
    }

    public static <E> ImmutableSortedMultiset<E> of() {
        return (ImmutableSortedMultiset<E>) s2.f3839f;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable) {
        return new s2((t2) ImmutableSortedSet.of(comparable), new long[]{0, 1}, 0, 1);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4, comparable5));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(comparableArr.length + 6);
        Collections.addAll(arrayListNewArrayListWithCapacity, comparable, comparable2, comparable3, comparable4, comparable5, comparable6);
        Collections.addAll(arrayListNewArrayListWithCapacity, comparableArr);
        return copyOf(Ordering.natural(), arrayListNewArrayListWithCapacity);
    }

    public static <E> a<E> orderedBy(Comparator<E> comparator) {
        return new a<>(comparator);
    }

    public static <E extends Comparable<?>> a<E> reverseOrder() {
        return new a<>(Ordering.natural().f());
    }

    @Override // com.google.common.collect.e3
    /* JADX INFO: renamed from: B */
    public ImmutableSortedMultiset<E> w() {
        ImmutableSortedMultiset<E> immutableSortedMultisetD = this.f3596d;
        if (immutableSortedMultisetD == null) {
            immutableSortedMultisetD = isEmpty() ? D(Ordering.from(comparator()).f()) : new g0<>(this);
            this.f3596d = immutableSortedMultisetD;
        }
        return immutableSortedMultisetD;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    /* JADX INFO: renamed from: C */
    public abstract ImmutableSortedSet<E> k();

    @Override // com.google.common.collect.e3
    /* JADX INFO: renamed from: E */
    public abstract ImmutableSortedMultiset<E> J(E e2, BoundType boundType);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.e3
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMultiset<E> q(E e2, BoundType boundType, E e3, BoundType boundType2) {
        Preconditions.checkArgument(comparator().compare(e2, e3) <= 0, "Expected lowerBound <= upperBound but %s > %s", e2, e3);
        return L(e2, boundType).J(e3, boundType2);
    }

    @Override // com.google.common.collect.e3
    /* JADX INFO: renamed from: G */
    public abstract ImmutableSortedMultiset<E> L(E e2, BoundType boundType);

    @Override // com.google.common.collect.e3, com.google.common.collect.c3
    public final Comparator<? super E> comparator() {
        return k().comparator();
    }

    @Override // com.google.common.collect.e3
    @Deprecated
    public final c2.a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.e3
    @Deprecated
    public final c2.a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.n1
    Object writeReplace() {
        return new b(this);
    }
}
