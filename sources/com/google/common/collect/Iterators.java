package com.google.common.collect;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.primitives.Ints;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
public final class Iterators {

    private enum EmptyModifiableIterator implements Iterator<Object> {
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
            z.e(false);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> extends o3<T> {
        final /* synthetic */ Enumeration a;

        a(Enumeration enumeration) {
            this.a = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasMoreElements();
        }

        @Override // java.util.Iterator
        public T next() {
            return (T) this.a.nextElement();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> implements Enumeration<T> {
        final /* synthetic */ Iterator a;

        b(Iterator it) {
            this.a = it;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.a.hasNext();
        }

        @Override // java.util.Enumeration
        public T nextElement() {
            return (T) this.a.next();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> extends o3<T> {
        final /* synthetic */ Iterator a;

        c(Iterator it) {
            this.a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            return (T) this.a.next();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class d<T> implements Iterator<T> {
        Iterator<T> a = Iterators.h();
        final /* synthetic */ Iterable b;

        d(Iterable iterable) {
            this.b = iterable;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext() || this.b.iterator().hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.a.hasNext()) {
                Iterator<T> it = this.b.iterator();
                this.a = it;
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
            }
            return this.a.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.a.remove();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    class e<I> extends o3<I> {
        int a = 0;
        final /* synthetic */ Iterator[] b;

        e(Iterator[] itArr) {
            this.b = itArr;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TI; */
        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Iterator next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator it = this.b[this.a];
            Objects.requireNonNull(it);
            Iterator it2 = it;
            Iterator[] itArr = this.b;
            int i = this.a;
            itArr[i] = null;
            this.a = i + 1;
            return it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a < this.b.length;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class f<T> extends o3<List<T>> {
        final /* synthetic */ Iterator a;
        final /* synthetic */ int b;
        final /* synthetic */ boolean c;

        f(Iterator it, int i, boolean z) {
            this.a = it;
            this.b = i;
            this.c = z;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<T> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object[] objArr = new Object[this.b];
            int i = 0;
            while (i < this.b && this.a.hasNext()) {
                objArr[i] = this.a.next();
                i++;
            }
            for (int i2 = i; i2 < this.b; i2++) {
                objArr[i2] = null;
            }
            List<T> listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
            return (this.c || i == this.b) ? listUnmodifiableList : listUnmodifiableList.subList(0, i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class g<T> extends AbstractIterator<T> {
        final /* synthetic */ Iterator c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.google.common.base.k f3605d;

        g(Iterator it, com.google.common.base.k kVar) {
            this.c = it;
            this.f3605d = kVar;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.google.common.collect.AbstractIterator
        protected T b() {
            while (this.c.hasNext()) {
                T t = (T) this.c.next();
                if (this.f3605d.apply(t)) {
                    return t;
                }
            }
            return c();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T, F] */
    class h<F, T> extends m3<F, T> {
        final /* synthetic */ com.google.common.base.f b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(Iterator it, com.google.common.base.f fVar) {
            super(it);
            this.b = fVar;
        }

        @Override // com.google.common.collect.m3
        T a(F f2) {
            return (T) this.b.apply(f2);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class i<T> implements Iterator<T> {
        private int a;
        final /* synthetic */ int b;
        final /* synthetic */ Iterator c;

        i(int i, Iterator it) {
            this.b = i;
            this.c = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a < this.b && this.c.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.a++;
            return (T) this.c.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.c.remove();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class j<T> extends o3<T> {
        final /* synthetic */ Iterator a;

        j(Iterator it) {
            this.a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            T t = (T) this.a.next();
            this.a.remove();
            return t;
        }

        public String toString() {
            return "Iterators.consumingIterator(...)";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class k<T> extends o3<T> {
        boolean a;
        final /* synthetic */ Object b;

        k(Object obj) {
            this.b = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.a;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.a) {
                throw new NoSuchElementException();
            }
            this.a = true;
            return (T) this.b;
        }
    }

    private static final class l<T> extends com.google.common.collect.e<T> {
        static final p3<Object> c = new l(new Object[0], 0, 0, 0);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final T[] f3606d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f3607e;

        l(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.f3606d = tArr;
            this.f3607e = i;
        }

        @Override // com.google.common.collect.e
        protected T a(int i) {
            return this.f3606d[this.f3607e + i];
        }
    }

    private static class m<T> implements Iterator<T> {
        private Iterator<? extends T> a;
        private Iterator<? extends T> b = Iterators.f();
        private Iterator<? extends Iterator<? extends T>> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Deque<Iterator<? extends Iterator<? extends T>>> f3608d;

        m(Iterator<? extends Iterator<? extends T>> it) {
            this.c = (Iterator) Preconditions.checkNotNull(it);
        }

        private Iterator<? extends Iterator<? extends T>> b() {
            while (true) {
                Iterator<? extends Iterator<? extends T>> it = this.c;
                if (it != null && it.hasNext()) {
                    return this.c;
                }
                Deque<Iterator<? extends Iterator<? extends T>>> deque = this.f3608d;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.c = this.f3608d.removeFirst();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!((Iterator) Preconditions.checkNotNull(this.b)).hasNext()) {
                Iterator<? extends Iterator<? extends T>> itB = b();
                this.c = itB;
                if (itB == null) {
                    return false;
                }
                Iterator<? extends T> next = itB.next();
                this.b = next;
                if (next instanceof m) {
                    m mVar = (m) next;
                    this.b = mVar.b;
                    if (this.f3608d == null) {
                        this.f3608d = new ArrayDeque();
                    }
                    this.f3608d.addFirst(this.c);
                    if (mVar.f3608d != null) {
                        while (!mVar.f3608d.isEmpty()) {
                            this.f3608d.addFirst(mVar.f3608d.removeLast());
                        }
                    }
                    this.c = mVar.c;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator<? extends T> it = this.b;
            this.a = it;
            return it.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            Iterator<? extends T> it = this.a;
            if (it == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            it.remove();
            this.a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class n<T> extends o3<T> {
        final Queue<h2<T>> a;

        public n(Iterable<? extends Iterator<? extends T>> iterable, final Comparator<? super T> comparator) {
            this.a = new PriorityQueue(2, new Comparator() { // from class: com.google.common.collect.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return comparator.compare(((h2) obj).peek(), ((h2) obj2).peek());
                }
            });
            for (Iterator<? extends T> it : iterable) {
                if (it.hasNext()) {
                    this.a.add(Iterators.peekingIterator(it));
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.a.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            h2<T> h2VarRemove = this.a.remove();
            T next = h2VarRemove.next();
            if (h2VarRemove.hasNext()) {
                this.a.add(h2VarRemove);
            }
            return next;
        }
    }

    private static class o<E> implements h2<E> {
        private final Iterator<? extends E> a;
        private boolean b;
        private E c;

        public o(Iterator<? extends E> it) {
            this.a = (Iterator) Preconditions.checkNotNull(it);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b || this.a.hasNext();
        }

        @Override // com.google.common.collect.h2, java.util.Iterator
        public E next() {
            if (!this.b) {
                return this.a.next();
            }
            E e2 = (E) e2.a(this.c);
            this.b = false;
            this.c = null;
            return e2;
        }

        @Override // com.google.common.collect.h2
        public E peek() {
            if (!this.b) {
                this.c = this.a.next();
                this.b = true;
            }
            return (E) e2.a(this.c);
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(!this.b, "Can't remove after you've peeked at next");
            this.a.remove();
        }
    }

    private Iterators() {
    }

    static <T> ListIterator<T> a(Iterator<T> it) {
        return (ListIterator) it;
    }

    public static <T> boolean addAll(Collection<T> collection, Iterator<? extends T> it) {
        Preconditions.checkNotNull(collection);
        Preconditions.checkNotNull(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static int advance(Iterator<?> it, int i2) {
        Preconditions.checkNotNull(it);
        int i3 = 0;
        Preconditions.checkArgument(i2 >= 0, "numberToAdvance must be nonnegative");
        while (i3 < i2 && it.hasNext()) {
            it.next();
            i3++;
        }
        return i3;
    }

    public static <T> boolean all(Iterator<T> it, com.google.common.base.k<? super T> kVar) {
        Preconditions.checkNotNull(kVar);
        while (it.hasNext()) {
            if (!kVar.apply(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean any(Iterator<T> it, com.google.common.base.k<? super T> kVar) {
        return indexOf(it, kVar) != -1;
    }

    public static <T> Enumeration<T> asEnumeration(Iterator<T> it) {
        Preconditions.checkNotNull(it);
        return new b(it);
    }

    static void b(int i2) {
        if (i2 >= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("position (");
        sb.append(i2);
        sb.append(") must not be negative");
        throw new IndexOutOfBoundsException(sb.toString());
    }

    static void c(Iterator<?> it) {
        Preconditions.checkNotNull(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> Iterator<T> concat(Iterator<? extends Iterator<? extends T>> it) {
        return new m(it);
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(it2);
        return concat(e(it, it2));
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(it3);
        return concat(e(it, it2, it3));
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it, Iterator<? extends T> it2, Iterator<? extends T> it3, Iterator<? extends T> it4) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(it3);
        Preconditions.checkNotNull(it4);
        return concat(e(it, it2, it3, it4));
    }

    public static <T> Iterator<T> concat(Iterator<? extends T>... itArr) {
        return d((Iterator[]) Arrays.copyOf(itArr, itArr.length));
    }

    public static <T> Iterator<T> consumingIterator(Iterator<T> it) {
        Preconditions.checkNotNull(it);
        return new j(it);
    }

    public static boolean contains(Iterator<?> it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static <T> Iterator<T> cycle(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new d(iterable);
    }

    @SafeVarargs
    public static <T> Iterator<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList(tArr));
    }

    static <T> Iterator<T> d(Iterator<? extends T>... itArr) {
        for (Iterator it : (Iterator[]) Preconditions.checkNotNull(itArr)) {
            Preconditions.checkNotNull(it);
        }
        return concat(e(itArr));
    }

    private static <I extends Iterator<?>> Iterator<I> e(I... iArr) {
        return new e(iArr);
    }

    public static boolean elementsEqual(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !com.google.common.base.Objects.equal(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    static <T> o3<T> f() {
        return g();
    }

    public static <T> o3<T> filter(Iterator<T> it, com.google.common.base.k<? super T> kVar) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(kVar);
        return new g(it, kVar);
    }

    public static <T> o3<T> filter(Iterator<?> it, Class<T> cls) {
        return filter(it, Predicates.instanceOf(cls));
    }

    public static <T> T find(Iterator<T> it, com.google.common.base.k<? super T> kVar) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(kVar);
        while (it.hasNext()) {
            T next = it.next();
            if (kVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    public static <T> T find(Iterator<? extends T> it, com.google.common.base.k<? super T> kVar, T t) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(kVar);
        while (it.hasNext()) {
            T next = it.next();
            if (kVar.apply(next)) {
                return next;
            }
        }
        return t;
    }

    @SafeVarargs
    public static <T> o3<T> forArray(T... tArr) {
        return i(tArr, 0, tArr.length, 0);
    }

    public static <T> o3<T> forEnumeration(Enumeration<T> enumeration) {
        Preconditions.checkNotNull(enumeration);
        return new a(enumeration);
    }

    public static int frequency(Iterator<?> it, Object obj) {
        int i2 = 0;
        while (contains(it, obj)) {
            i2++;
        }
        return i2;
    }

    static <T> p3<T> g() {
        return (p3<T>) l.c;
    }

    public static <T> T get(Iterator<T> it, int i2) {
        b(i2);
        int iAdvance = advance(it, i2);
        if (it.hasNext()) {
            return it.next();
        }
        StringBuilder sb = new StringBuilder(91);
        sb.append("position (");
        sb.append(i2);
        sb.append(") must be less than the number of elements that remained (");
        sb.append(iAdvance);
        sb.append(")");
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public static <T> T get(Iterator<? extends T> it, int i2, T t) {
        b(i2);
        advance(it, i2);
        return (T) getNext(it, t);
    }

    public static <T> T getLast(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static <T> T getLast(Iterator<? extends T> it, T t) {
        return it.hasNext() ? (T) getLast(it) : t;
    }

    public static <T> T getNext(Iterator<? extends T> it, T t) {
        return it.hasNext() ? it.next() : t;
    }

    public static <T> T getOnlyElement(Iterator<T> it) {
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("expected one element but was: <");
        sb.append(next);
        for (int i2 = 0; i2 < 4 && it.hasNext(); i2++) {
            sb.append(", ");
            sb.append(it.next());
        }
        if (it.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }

    public static <T> T getOnlyElement(Iterator<? extends T> it, T t) {
        return it.hasNext() ? (T) getOnlyElement(it) : t;
    }

    static <T> Iterator<T> h() {
        return EmptyModifiableIterator.INSTANCE;
    }

    static <T> p3<T> i(T[] tArr, int i2, int i3, int i4) {
        Preconditions.checkArgument(i3 >= 0);
        Preconditions.checkPositionIndexes(i2, i2 + i3, tArr.length);
        Preconditions.checkPositionIndex(i4, i3);
        return i3 == 0 ? g() : new l(tArr, i2, i3, i4);
    }

    public static <T> int indexOf(Iterator<T> it, com.google.common.base.k<? super T> kVar) {
        Preconditions.checkNotNull(kVar, "predicate");
        int i2 = 0;
        while (it.hasNext()) {
            if (kVar.apply(it.next())) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static <T> o3<List<T>> j(Iterator<T> it, int i2, boolean z) {
        Preconditions.checkNotNull(it);
        Preconditions.checkArgument(i2 > 0);
        return new f(it, i2, z);
    }

    static <T> T k(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        it.remove();
        return next;
    }

    public static <T> Iterator<T> limit(Iterator<T> it, int i2) {
        Preconditions.checkNotNull(it);
        Preconditions.checkArgument(i2 >= 0, "limit is negative");
        return new i(i2, it);
    }

    public static <T> o3<T> mergeSorted(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterators");
        Preconditions.checkNotNull(comparator, "comparator");
        return new n(iterable, comparator);
    }

    public static <T> o3<List<T>> paddedPartition(Iterator<T> it, int i2) {
        return j(it, i2, true);
    }

    public static <T> o3<List<T>> partition(Iterator<T> it, int i2) {
        return j(it, i2, false);
    }

    @Deprecated
    public static <T> h2<T> peekingIterator(h2<T> h2Var) {
        return (h2) Preconditions.checkNotNull(h2Var);
    }

    public static <T> h2<T> peekingIterator(Iterator<? extends T> it) {
        return it instanceof o ? (o) it : new o(it);
    }

    public static boolean removeAll(Iterator<?> it, Collection<?> collection) {
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

    public static <T> boolean removeIf(Iterator<T> it, com.google.common.base.k<? super T> kVar) {
        Preconditions.checkNotNull(kVar);
        boolean z = false;
        while (it.hasNext()) {
            if (kVar.apply(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean retainAll(Iterator<?> it, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static <T> o3<T> singletonIterator(T t) {
        return new k(t);
    }

    public static int size(Iterator<?> it) {
        long j2 = 0;
        while (it.hasNext()) {
            it.next();
            j2++;
        }
        return Ints.saturatedCast(j2);
    }

    public static <T> T[] toArray(Iterator<? extends T> it, Class<T> cls) {
        return (T[]) Iterables.toArray(Lists.newArrayList(it), cls);
    }

    public static String toString(Iterator<?> it) {
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

    public static <F, T> Iterator<T> transform(Iterator<F> it, com.google.common.base.f<? super F, ? extends T> fVar) {
        Preconditions.checkNotNull(fVar);
        return new h(it, fVar);
    }

    public static <T> Optional<T> tryFind(Iterator<T> it, com.google.common.base.k<? super T> kVar) {
        Preconditions.checkNotNull(it);
        Preconditions.checkNotNull(kVar);
        while (it.hasNext()) {
            T next = it.next();
            if (kVar.apply(next)) {
                return Optional.of(next);
            }
        }
        return Optional.absent();
    }

    @Deprecated
    public static <T> o3<T> unmodifiableIterator(o3<T> o3Var) {
        return (o3) Preconditions.checkNotNull(o3Var);
    }

    public static <T> o3<T> unmodifiableIterator(Iterator<? extends T> it) {
        Preconditions.checkNotNull(it);
        return it instanceof o3 ? (o3) it : new c(it);
    }
}
