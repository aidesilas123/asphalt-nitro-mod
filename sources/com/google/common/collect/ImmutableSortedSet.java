package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import defpackage.UniversalRequestStoreOuterClass;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableSortedSet<E> extends ImmutableSortedSetFauxverideShim<E> implements NavigableSet<E>, c3<E> {
    final transient Comparator<? super E> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient ImmutableSortedSet<E> f3601d;

    public static final class a<E> extends ImmutableSet.a<E> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Comparator<? super E> f3602f;

        public a(Comparator<? super E> comparator) {
            this.f3602f = (Comparator) Preconditions.checkNotNull(comparator);
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public a<E> a(E e2) {
            super.a(e2);
            return this;
        }

        public a<E> p(E... eArr) {
            super.j(eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public a<E> k(Iterable<? extends E> iterable) {
            super.k(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public a<E> l(Iterator<? extends E> it) {
            super.l(it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public ImmutableSortedSet<E> n() {
            ImmutableSortedSet<E> immutableSortedSetB = ImmutableSortedSet.B(this.f3602f, this.b, this.a);
            this.b = immutableSortedSetB.size();
            this.c = true;
            return immutableSortedSetB;
        }
    }

    private static class b<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super E> a;
        final Object[] b;

        public b(Comparator<? super E> comparator, Object[] objArr) {
            this.a = comparator;
            this.b = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        Object readResolve() {
            return new a(this.a).p(this.b).n();
        }
    }

    ImmutableSortedSet(Comparator<? super E> comparator) {
        this.c = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <E> ImmutableSortedSet<E> B(Comparator<? super E> comparator, int i, E... eArr) {
        if (i == 0) {
            return F(comparator);
        }
        ObjectArrays.c(eArr, i);
        Arrays.sort(eArr, 0, i, comparator);
        int i2 = 1;
        for (int i3 = 1; i3 < i; i3++) {
            UniversalRequestStoreOuterClass.UniversalRequestStore.b bVar = (Object) eArr[i3];
            if (comparator.compare(bVar, (Object) eArr[i2 - 1]) != 0) {
                eArr[i2] = bVar;
                i2++;
            }
        }
        Arrays.fill(eArr, i2, i, (Object) null);
        if (i2 < eArr.length / 2) {
            eArr = (E[]) Arrays.copyOf(eArr, i2);
        }
        return new t2(ImmutableList.t(eArr, i2), comparator);
    }

    static <E> t2<E> F(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (t2<E>) t2.f3841e : new t2<>(ImmutableList.of(), comparator);
    }

    static int V(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) Ordering.natural(), (Collection) collection);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(comparator);
        if (SortedIterables.hasSameComparator(comparator, iterable) && (iterable instanceof ImmutableSortedSet)) {
            ImmutableSortedSet<E> immutableSortedSet = (ImmutableSortedSet) iterable;
            if (!immutableSortedSet.j()) {
                return immutableSortedSet;
            }
        }
        Object[] objArrF = Iterables.f(iterable);
        return B(comparator, objArrF.length, objArrF);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new a(comparator).l(it).n();
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet copyOf(Comparable[] comparableArr) {
        return B(Ordering.natural(), comparableArr.length, (Comparable[]) comparableArr.clone());
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator comparator = SortedIterables.comparator(sortedSet);
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) sortedSet);
        return immutableListCopyOf.isEmpty() ? F(comparator) : new t2(immutableListCopyOf, comparator);
    }

    public static <E extends Comparable<?>> a<E> naturalOrder() {
        return new a<>(Ordering.natural());
    }

    public static <E> ImmutableSortedSet<E> of() {
        return t2.f3841e;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable) {
        return new t2(ImmutableList.of(comparable), Ordering.natural());
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2) {
        return B(Ordering.natural(), 2, comparable, comparable2);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return B(Ordering.natural(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return B(Ordering.natural(), 4, comparable, comparable2, comparable3, comparable4);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return B(Ordering.natural(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return B(Ordering.natural(), length, comparableArr2);
    }

    public static <E> a<E> orderedBy(Comparator<E> comparator) {
        return new a<>(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> a<E> reverseOrder() {
        return new a<>(Collections.reverseOrder());
    }

    abstract ImmutableSortedSet<E> C();

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: D */
    public abstract o3<E> descendingIterator();

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.f3601d;
        if (immutableSortedSet != null) {
            return immutableSortedSet;
        }
        ImmutableSortedSet<E> immutableSortedSetC = C();
        this.f3601d = immutableSortedSetC;
        immutableSortedSetC.f3601d = this;
        return immutableSortedSetC;
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> headSet(E e2) {
        return headSet(e2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> headSet(E e2, boolean z) {
        return M(Preconditions.checkNotNull(e2), z);
    }

    abstract ImmutableSortedSet<E> M(E e2, boolean z);

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> subSet(E e2, E e3) {
        return subSet(e2, true, e3, false);
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> subSet(E e2, boolean z, E e3, boolean z2) {
        Preconditions.checkNotNull(e2);
        Preconditions.checkNotNull(e3);
        Preconditions.checkArgument(this.c.compare(e2, e3) <= 0);
        return Q(e2, z, e3, z2);
    }

    abstract ImmutableSortedSet<E> Q(E e2, boolean z, E e3, boolean z2);

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> tailSet(E e2) {
        return tailSet(e2, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> tailSet(E e2, boolean z) {
        return T(Preconditions.checkNotNull(e2), z);
    }

    abstract ImmutableSortedSet<E> T(E e2, boolean z);

    int U(Object obj, Object obj2) {
        return V(this.c, obj, obj2);
    }

    @Override // java.util.NavigableSet
    public E ceiling(E e2) {
        return (E) Iterables.getFirst(tailSet(e2, true), null);
    }

    @Override // java.util.SortedSet, com.google.common.collect.c3
    public Comparator<? super E> comparator() {
        return this.c;
    }

    @Override // java.util.SortedSet
    public E first() {
        return iterator().next();
    }

    @Override // java.util.NavigableSet
    public E floor(E e2) {
        return (E) Iterators.getNext(headSet(e2, true).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    public E higher(E e2) {
        return (E) Iterables.getFirst(tailSet(e2, false), null);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.SortedSet
    public E last() {
        return descendingIterator().next();
    }

    @Override // java.util.NavigableSet
    public E lower(E e2) {
        return (E) Iterators.getNext(headSet(e2, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1
    Object writeReplace() {
        return new b(this.c, toArray());
    }
}
