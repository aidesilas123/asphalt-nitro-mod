package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.math.IntMath;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Collections2 {

    static class a<E> extends AbstractCollection<E> {
        final Collection<E> a;
        final com.google.common.base.k<? super E> b;

        a(Collection<E> collection, com.google.common.base.k<? super E> kVar) {
            this.a = collection;
            this.b = kVar;
        }

        a<E> a(com.google.common.base.k<? super E> kVar) {
            return new a<>(this.a, Predicates.and(this.b, kVar));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(E e2) {
            Preconditions.checkArgument(this.b.apply(e2));
            return this.a.add(e2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            Iterator<? extends E> it = collection.iterator();
            while (it.hasNext()) {
                Preconditions.checkArgument(this.b.apply(it.next()));
            }
            return this.a.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Iterables.removeIf(this.a, this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (Collections2.f(this.a, obj)) {
                return this.b.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return Collections2.b(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !Iterables.any(this.a, this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.filter(this.a.iterator(), this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            return contains(obj) && this.a.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<E> it = this.a.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.b.apply(next) && collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = this.a.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.b.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            Iterator<E> it = this.a.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.b.apply(it.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.newArrayList(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
        }
    }

    private static final class b<E> extends AbstractCollection<List<E>> {
        final ImmutableList<E> a;
        final Comparator<? super E> b;
        final int c;

        b(Iterable<E> iterable, Comparator<? super E> comparator) {
            ImmutableList<E> immutableListSortedCopyOf = ImmutableList.sortedCopyOf(comparator, iterable);
            this.a = immutableListSortedCopyOf;
            this.b = comparator;
            this.c = a(immutableListSortedCopyOf, comparator);
        }

        private static <E> int a(List<E> list, Comparator<? super E> comparator) {
            int i = 1;
            int iSaturatedMultiply = 1;
            int i2 = 1;
            while (i < list.size()) {
                if (comparator.compare(list.get(i - 1), list.get(i)) < 0) {
                    iSaturatedMultiply = IntMath.saturatedMultiply(iSaturatedMultiply, IntMath.binomial(i, i2));
                    i2 = 0;
                    if (iSaturatedMultiply == Integer.MAX_VALUE) {
                        return Integer.MAX_VALUE;
                    }
                }
                i++;
                i2++;
            }
            return IntMath.saturatedMultiply(iSaturatedMultiply, IntMath.binomial(i, i2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.d(this.a, (List) obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new c(this.a, this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.c;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 30);
            sb.append("orderedPermutationCollection(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class c<E> extends AbstractIterator<List<E>> {
        List<E> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Comparator<? super E> f3542d;

        c(List<E> list, Comparator<? super E> comparator) {
            this.c = Lists.newArrayList(list);
            this.f3542d = comparator;
        }

        void e() {
            int iG = g();
            if (iG == -1) {
                this.c = null;
                return;
            }
            Objects.requireNonNull(this.c);
            Collections.swap(this.c, iG, h(iG));
            Collections.reverse(this.c.subList(iG + 1, this.c.size()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public List<E> b() {
            List<E> list = this.c;
            if (list == null) {
                return c();
            }
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) list);
            e();
            return immutableListCopyOf;
        }

        int g() {
            Objects.requireNonNull(this.c);
            for (int size = this.c.size() - 2; size >= 0; size--) {
                if (this.f3542d.compare(this.c.get(size), this.c.get(size + 1)) < 0) {
                    return size;
                }
            }
            return -1;
        }

        int h(int i) {
            Objects.requireNonNull(this.c);
            E e2 = this.c.get(i);
            for (int size = this.c.size() - 1; size > i; size--) {
                if (this.f3542d.compare(e2, this.c.get(size)) < 0) {
                    return size;
                }
            }
            throw new AssertionError("this statement should be unreachable");
        }
    }

    private static final class d<E> extends AbstractCollection<List<E>> {
        final ImmutableList<E> a;

        d(ImmutableList<E> immutableList) {
            this.a = immutableList;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.d(this.a, (List) obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new e(this.a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return IntMath.factorial(this.a.size());
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 14);
            sb.append("permutations(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class e<E> extends AbstractIterator<List<E>> {
        final List<E> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int[] f3543d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int[] f3544e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3545f;

        e(List<E> list) {
            this.c = new ArrayList(list);
            int size = list.size();
            int[] iArr = new int[size];
            this.f3543d = iArr;
            int[] iArr2 = new int[size];
            this.f3544e = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 1);
            this.f3545f = Integer.MAX_VALUE;
        }

        void e() {
            int size = this.c.size() - 1;
            this.f3545f = size;
            if (size == -1) {
                return;
            }
            int i = 0;
            while (true) {
                int[] iArr = this.f3543d;
                int i2 = this.f3545f;
                int i3 = iArr[i2] + this.f3544e[i2];
                if (i3 < 0) {
                    g();
                } else if (i3 != i2 + 1) {
                    Collections.swap(this.c, (i2 - iArr[i2]) + i, (i2 - i3) + i);
                    this.f3543d[this.f3545f] = i3;
                    return;
                } else {
                    if (i2 == 0) {
                        return;
                    }
                    i++;
                    g();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public List<E> b() {
            if (this.f3545f <= 0) {
                return c();
            }
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.c);
            e();
            return immutableListCopyOf;
        }

        void g() {
            int[] iArr = this.f3544e;
            int i = this.f3545f;
            iArr[i] = -iArr[i];
            this.f3545f = i - 1;
        }
    }

    static class f<F, T> extends AbstractCollection<T> {
        final Collection<F> a;
        final com.google.common.base.f<? super F, ? extends T> b;

        f(Collection<F> collection, com.google.common.base.f<? super F, ? extends T> fVar) {
            this.a = (Collection) Preconditions.checkNotNull(collection);
            this.b = (com.google.common.base.f) Preconditions.checkNotNull(fVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.a.iterator(), this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.a.size();
        }
    }

    private Collections2() {
    }

    static boolean b(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    private static <E> f2<E> c(Collection<E> collection) {
        f2<E> f2Var = new f2<>();
        for (E e2 : collection) {
            f2Var.u(e2, f2Var.f(e2) + 1);
        }
        return f2Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(List<?> list, List<?> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        f2 f2VarC = c(list);
        f2 f2VarC2 = c(list2);
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (f2VarC.k(i) != f2VarC2.f(f2VarC.i(i))) {
                return false;
            }
        }
        return true;
    }

    static StringBuilder e(int i) {
        z.b(i, "size");
        return new StringBuilder((int) Math.min(((long) i) * 8, 1073741824L));
    }

    static boolean f(Collection<?> collection, Object obj) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static <E> Collection<E> filter(Collection<E> collection, com.google.common.base.k<? super E> kVar) {
        return collection instanceof a ? ((a) collection).a(kVar) : new a((Collection) Preconditions.checkNotNull(collection), (com.google.common.base.k) Preconditions.checkNotNull(kVar));
    }

    static boolean g(Collection<?> collection, Object obj) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static String h(Collection<?> collection) {
        StringBuilder sbE = e(collection.size());
        sbE.append('[');
        boolean z = true;
        for (Object obj : collection) {
            if (!z) {
                sbE.append(", ");
            }
            z = false;
            if (obj == collection) {
                sbE.append("(this Collection)");
            } else {
                sbE.append(obj);
            }
        }
        sbE.append(']');
        return sbE.toString();
    }

    public static <E extends Comparable<? super E>> Collection<List<E>> orderedPermutations(Iterable<E> iterable) {
        return orderedPermutations(iterable, Ordering.natural());
    }

    public static <E> Collection<List<E>> orderedPermutations(Iterable<E> iterable, Comparator<? super E> comparator) {
        return new b(iterable, comparator);
    }

    public static <E> Collection<List<E>> permutations(Collection<E> collection) {
        return new d(ImmutableList.copyOf((Collection) collection));
    }

    public static <F, T> Collection<T> transform(Collection<F> collection, com.google.common.base.f<? super F, T> fVar) {
        return new f(collection, fVar);
    }
}
