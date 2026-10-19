package com.google.common.collect;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class Iterables {

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> implements com.google.common.base.f<Iterable<? extends T>, Iterator<? extends T>> {
        a() {
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Iterator<? extends T> apply(Iterable<? extends T> iterable) {
            return iterable.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable b;

        b(Iterable iterable) {
            this.b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.cycle(this.b);
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return String.valueOf(this.b.toString()).concat(" (cycled)");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> extends FluentIterable<List<T>> {
        final /* synthetic */ Iterable b;
        final /* synthetic */ int c;

        c(Iterable iterable, int i) {
            this.b = iterable;
            this.c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return Iterators.partition(this.b.iterator(), this.c);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class d<T> extends FluentIterable<List<T>> {
        final /* synthetic */ Iterable b;
        final /* synthetic */ int c;

        d(Iterable iterable, int i) {
            this.b = iterable;
            this.c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return Iterators.paddedPartition(this.b.iterator(), this.c);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class e<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable b;
        final /* synthetic */ com.google.common.base.k c;

        e(Iterable iterable, com.google.common.base.k kVar) {
            this.b = iterable;
            this.c = kVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.filter(this.b.iterator(), this.c);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class f<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable b;
        final /* synthetic */ com.google.common.base.f c;

        f(Iterable iterable, com.google.common.base.f fVar) {
            this.b = iterable;
            this.c = fVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.b.iterator(), this.c);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class g<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable b;
        final /* synthetic */ int c;

        class a implements Iterator<T> {
            boolean a = true;
            final /* synthetic */ Iterator b;

            a(g gVar, Iterator it) {
                this.b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.b.hasNext();
            }

            @Override // java.util.Iterator
            public T next() {
                T t = (T) this.b.next();
                this.a = false;
                return t;
            }

            @Override // java.util.Iterator
            public void remove() {
                z.e(!this.a);
                this.b.remove();
            }
        }

        g(Iterable iterable, int i) {
            this.b = iterable;
            this.c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.b;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.c), list.size()).iterator();
            }
            Iterator<T> it = iterable.iterator();
            Iterators.advance(it, this.c);
            return new a(this, it);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class h<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable b;
        final /* synthetic */ int c;

        h(Iterable iterable, int i) {
            this.b = iterable;
            this.c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.limit(this.b.iterator(), this.c);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class i<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable b;

        i(Iterable iterable) {
            this.b = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.b;
            return iterable instanceof Queue ? new d0((Queue) iterable) : Iterators.consumingIterator(iterable.iterator());
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return "Iterables.consumingIterable(...)";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class j<T> extends FluentIterable<T> {
        final /* synthetic */ Iterable b;
        final /* synthetic */ Comparator c;

        j(Iterable iterable, Comparator comparator) {
            this.b = iterable;
            this.c = comparator;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.mergeSorted(Iterables.transform(this.b, Iterables.h()), this.c);
        }
    }

    private static final class k<T> extends FluentIterable<T> {
        private final Iterable<? extends T> b;

        private k(Iterable<? extends T> iterable) {
            this.b = iterable;
        }

        /* synthetic */ k(Iterable iterable, b bVar) {
            this(iterable);
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.unmodifiableIterator(this.b.iterator());
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return this.b.toString();
        }
    }

    private Iterables() {
    }

    private static <E> Collection<E> a(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable.iterator());
    }

    public static <T> boolean addAll(Collection<T> collection, Iterable<? extends T> iterable) {
        return iterable instanceof Collection ? collection.addAll((Collection) iterable) : Iterators.addAll(collection, ((Iterable) Preconditions.checkNotNull(iterable)).iterator());
    }

    public static <T> boolean all(Iterable<T> iterable, com.google.common.base.k<? super T> kVar) {
        return Iterators.all(iterable.iterator(), kVar);
    }

    public static <T> boolean any(Iterable<T> iterable, com.google.common.base.k<? super T> kVar) {
        return Iterators.any(iterable.iterator(), kVar);
    }

    private static <T> T b(List<T> list) {
        return list.get(list.size() - 1);
    }

    static <T> T c(Iterable<T> iterable, com.google.common.base.k<? super T> kVar) {
        Preconditions.checkNotNull(kVar);
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            T next = it.next();
            if (kVar.apply(next)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    public static <T> Iterable<T> concat(Iterable<? extends Iterable<? extends T>> iterable) {
        return FluentIterable.concat(iterable);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return FluentIterable.concat(iterable, iterable2);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return FluentIterable.concat(iterable, iterable2, iterable3);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return FluentIterable.concat(iterable, iterable2, iterable3, iterable4);
    }

    @SafeVarargs
    public static <T> Iterable<T> concat(Iterable<? extends T>... iterableArr) {
        return FluentIterable.concat(iterableArr);
    }

    public static <T> Iterable<T> consumingIterable(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new i(iterable);
    }

    public static boolean contains(Iterable<? extends Object> iterable, Object obj) {
        return iterable instanceof Collection ? Collections2.f((Collection) iterable, obj) : Iterators.contains(iterable.iterator(), obj);
    }

    public static <T> Iterable<T> cycle(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new b(iterable);
    }

    @SafeVarargs
    public static <T> Iterable<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList(tArr));
    }

    private static <T> boolean d(List<T> list, com.google.common.base.k<? super T> kVar) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < list.size()) {
            T t = list.get(i2);
            if (!kVar.apply(t)) {
                if (i2 > i3) {
                    try {
                        list.set(i3, t);
                    } catch (IllegalArgumentException unused) {
                        e(list, kVar, i3, i2);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        e(list, kVar, i3, i2);
                        return true;
                    }
                }
                i3++;
            }
            i2++;
        }
        list.subList(i3, list.size()).clear();
        return i2 != i3;
    }

    private static <T> void e(List<T> list, com.google.common.base.k<? super T> kVar, int i2, int i3) {
        for (int size = list.size() - 1; size > i3; size--) {
            if (kVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            list.remove(i4);
        }
    }

    public static boolean elementsEqual(Iterable<?> iterable, Iterable<?> iterable2) {
        if ((iterable instanceof Collection) && (iterable2 instanceof Collection) && ((Collection) iterable).size() != ((Collection) iterable2).size()) {
            return false;
        }
        return Iterators.elementsEqual(iterable.iterator(), iterable2.iterator());
    }

    static Object[] f(Iterable<?> iterable) {
        return a(iterable).toArray();
    }

    public static <T> Iterable<T> filter(Iterable<T> iterable, com.google.common.base.k<? super T> kVar) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(kVar);
        return new e(iterable, kVar);
    }

    public static <T> Iterable<T> filter(Iterable<?> iterable, Class<T> cls) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(cls);
        return filter(iterable, Predicates.instanceOf(cls));
    }

    public static <T> T find(Iterable<T> iterable, com.google.common.base.k<? super T> kVar) {
        return (T) Iterators.find(iterable.iterator(), kVar);
    }

    public static <T> T find(Iterable<? extends T> iterable, com.google.common.base.k<? super T> kVar, T t) {
        return (T) Iterators.find(iterable.iterator(), kVar, t);
    }

    public static int frequency(Iterable<?> iterable, Object obj) {
        return iterable instanceof c2 ? ((c2) iterable).K(obj) : iterable instanceof Set ? ((Set) iterable).contains(obj) ? 1 : 0 : Iterators.frequency(iterable.iterator(), obj);
    }

    static <T> T[] g(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) a(iterable).toArray(tArr);
    }

    public static <T> T get(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        return iterable instanceof List ? (T) ((List) iterable).get(i2) : (T) Iterators.get(iterable.iterator(), i2);
    }

    public static <T> T get(Iterable<? extends T> iterable, int i2, T t) {
        Preconditions.checkNotNull(iterable);
        Iterators.b(i2);
        if (iterable instanceof List) {
            List listA = Lists.a(iterable);
            return i2 < listA.size() ? (T) listA.get(i2) : t;
        }
        Iterator<? extends T> it = iterable.iterator();
        Iterators.advance(it, i2);
        return (T) Iterators.getNext(it, t);
    }

    public static <T> T getFirst(Iterable<? extends T> iterable, T t) {
        return (T) Iterators.getNext(iterable.iterator(), t);
    }

    public static <T> T getLast(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) Iterators.getLast(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return (T) b(list);
    }

    public static <T> T getLast(Iterable<? extends T> iterable, T t) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return t;
            }
            if (iterable instanceof List) {
                return (T) b(Lists.a(iterable));
            }
        }
        return (T) Iterators.getLast(iterable.iterator(), t);
    }

    public static <T> T getOnlyElement(Iterable<T> iterable) {
        return (T) Iterators.getOnlyElement(iterable.iterator());
    }

    public static <T> T getOnlyElement(Iterable<? extends T> iterable, T t) {
        return (T) Iterators.getOnlyElement(iterable.iterator(), t);
    }

    static <T> com.google.common.base.f<Iterable<? extends T>, Iterator<? extends T>> h() {
        return new a();
    }

    public static <T> int indexOf(Iterable<T> iterable, com.google.common.base.k<? super T> kVar) {
        return Iterators.indexOf(iterable.iterator(), kVar);
    }

    public static boolean isEmpty(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    public static <T> Iterable<T> limit(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 >= 0, "limit is negative");
        return new h(iterable, i2);
    }

    public static <T> Iterable<T> mergeSorted(Iterable<? extends Iterable<? extends T>> iterable, Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterables");
        Preconditions.checkNotNull(comparator, "comparator");
        return new k(new j(iterable, comparator), null);
    }

    public static <T> Iterable<List<T>> paddedPartition(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 > 0);
        return new d(iterable, i2);
    }

    public static <T> Iterable<List<T>> partition(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 > 0);
        return new c(iterable, i2);
    }

    public static boolean removeAll(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).removeAll((Collection) Preconditions.checkNotNull(collection)) : Iterators.removeAll(iterable.iterator(), collection);
    }

    public static <T> boolean removeIf(Iterable<T> iterable, com.google.common.base.k<? super T> kVar) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? d((List) iterable, (com.google.common.base.k) Preconditions.checkNotNull(kVar)) : Iterators.removeIf(iterable.iterator(), kVar);
    }

    public static boolean retainAll(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).retainAll((Collection) Preconditions.checkNotNull(collection)) : Iterators.retainAll(iterable.iterator(), collection);
    }

    public static int size(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).size() : Iterators.size(iterable.iterator());
    }

    public static <T> Iterable<T> skip(Iterable<T> iterable, int i2) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i2 >= 0, "number to skip cannot be negative");
        return new g(iterable, i2);
    }

    public static <T> T[] toArray(Iterable<? extends T> iterable, Class<T> cls) {
        return (T[]) g(iterable, ObjectArrays.newArray(cls, 0));
    }

    public static String toString(Iterable<?> iterable) {
        return Iterators.toString(iterable.iterator());
    }

    public static <F, T> Iterable<T> transform(Iterable<F> iterable, com.google.common.base.f<? super F, ? extends T> fVar) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(fVar);
        return new f(iterable, fVar);
    }

    public static <T> Optional<T> tryFind(Iterable<T> iterable, com.google.common.base.k<? super T> kVar) {
        return Iterators.tryFind(iterable.iterator(), kVar);
    }

    @Deprecated
    public static <E> Iterable<E> unmodifiableIterable(n1<E> n1Var) {
        return (Iterable) Preconditions.checkNotNull(n1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Iterable<T> unmodifiableIterable(Iterable<? extends T> iterable) {
        Preconditions.checkNotNull(iterable);
        return ((iterable instanceof k) || (iterable instanceof n1)) ? iterable : new k(iterable, null);
    }
}
