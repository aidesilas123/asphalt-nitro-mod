package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.Collections2;
import com.google.common.collect.ImmutableList;
import com.google.common.math.IntMath;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes3.dex */
public final class Sets {

    /* JADX INFO: Add missing generic type declarations: [E] */
    class a<E> extends l<E> {
        final /* synthetic */ Set a;
        final /* synthetic */ Set b;

        /* JADX INFO: renamed from: com.google.common.collect.Sets$a$a, reason: collision with other inner class name */
        class C0250a extends AbstractIterator<E> {
            final Iterator<? extends E> c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final Iterator<? extends E> f3696d;

            C0250a() {
                this.c = a.this.a.iterator();
                this.f3696d = a.this.b.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            protected E b() {
                if (this.c.hasNext()) {
                    return this.c.next();
                }
                while (this.f3696d.hasNext()) {
                    E next = this.f3696d.next();
                    if (!a.this.a.contains(next)) {
                        return next;
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set, Set set2) {
            super(null);
            this.a = set;
            this.b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.a.contains(obj) || this.b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public o3<E> iterator() {
            return new C0250a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.a.isEmpty() && this.b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int size = this.a.size();
            Iterator<E> it = this.b.iterator();
            while (it.hasNext()) {
                if (!this.a.contains(it.next())) {
                    size++;
                }
            }
            return size;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class b<E> extends l<E> {
        final /* synthetic */ Set a;
        final /* synthetic */ Set b;

        class a extends AbstractIterator<E> {
            final Iterator<E> c;

            a() {
                this.c = b.this.a.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            protected E b() {
                while (this.c.hasNext()) {
                    E next = this.c.next();
                    if (b.this.b.contains(next)) {
                        return next;
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Set set, Set set2) {
            super(null);
            this.a = set;
            this.b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.a.contains(obj) && this.b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.a.containsAll(collection) && this.b.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e */
        public o3<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.b, this.a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.a.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.b.contains(it.next())) {
                    i++;
                }
            }
            return i;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class c<E> extends l<E> {
        final /* synthetic */ Set a;
        final /* synthetic */ Set b;

        class a extends AbstractIterator<E> {
            final Iterator<E> c;

            a() {
                this.c = c.this.a.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            protected E b() {
                while (this.c.hasNext()) {
                    E next = this.c.next();
                    if (!c.this.b.contains(next)) {
                        return next;
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Set set, Set set2) {
            super(null);
            this.a = set;
            this.b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.a.contains(obj) && !this.b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e */
        public o3<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.b.containsAll(this.a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.a.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!this.b.contains(it.next())) {
                    i++;
                }
            }
            return i;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class d<E> extends l<E> {
        final /* synthetic */ Set a;
        final /* synthetic */ Set b;

        class a extends AbstractIterator<E> {
            final /* synthetic */ Iterator c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Iterator f3700d;

            a(Iterator it, Iterator it2) {
                this.c = it;
                this.f3700d = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            public E b() {
                while (this.c.hasNext()) {
                    E e2 = (E) this.c.next();
                    if (!d.this.b.contains(e2)) {
                        return e2;
                    }
                }
                while (this.f3700d.hasNext()) {
                    E e3 = (E) this.f3700d.next();
                    if (!d.this.a.contains(e3)) {
                        return e3;
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Set set, Set set2) {
            super(null);
            this.a = set;
            this.b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.b.contains(obj) ^ this.a.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e */
        public o3<E> iterator() {
            return new a(this.a.iterator(), this.b.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.a.equals(this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.a.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!this.b.contains(it.next())) {
                    i++;
                }
            }
            Iterator<E> it2 = this.b.iterator();
            while (it2.hasNext()) {
                if (!this.a.contains(it2.next())) {
                    i++;
                }
            }
            return i;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class e<E> extends AbstractSet<Set<E>> {
        final /* synthetic */ int a;
        final /* synthetic */ ImmutableMap b;

        class a extends AbstractIterator<Set<E>> {
            final BitSet c;

            /* JADX INFO: renamed from: com.google.common.collect.Sets$e$a$a, reason: collision with other inner class name */
            class C0251a extends AbstractSet<E> {
                final /* synthetic */ BitSet a;

                /* JADX INFO: renamed from: com.google.common.collect.Sets$e$a$a$a, reason: collision with other inner class name */
                class C0252a extends AbstractIterator<E> {
                    int c = -1;

                    C0252a() {
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    protected E b() {
                        int iNextSetBit = C0251a.this.a.nextSetBit(this.c + 1);
                        this.c = iNextSetBit;
                        return iNextSetBit == -1 ? c() : e.this.b.keySet().e().get(this.c);
                    }
                }

                C0251a(BitSet bitSet) {
                    this.a = bitSet;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean contains(Object obj) {
                    Integer num = (Integer) e.this.b.get(obj);
                    return num != null && this.a.get(num.intValue());
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<E> iterator() {
                    return new C0252a();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return e.this.a;
                }
            }

            a() {
                this.c = new BitSet(e.this.b.size());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Set<E> b() {
                if (this.c.isEmpty()) {
                    this.c.set(0, e.this.a);
                } else {
                    int iNextSetBit = this.c.nextSetBit(0);
                    int iNextClearBit = this.c.nextClearBit(iNextSetBit);
                    if (iNextClearBit == e.this.b.size()) {
                        return c();
                    }
                    int i = (iNextClearBit - iNextSetBit) - 1;
                    this.c.set(0, i);
                    this.c.clear(i, iNextClearBit);
                    this.c.set(iNextClearBit);
                }
                return new C0251a((BitSet) this.c.clone());
            }
        }

        e(int i, ImmutableMap immutableMap) {
            this.a = i;
            this.b = immutableMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            return set.size() == this.a && this.b.keySet().containsAll(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return IntMath.binomial(this.b.size(), this.a);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String strValueOf = String.valueOf(this.b.keySet());
            int i = this.a;
            StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
            sb.append("Sets.combinations(");
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(i);
            sb.append(")");
            return sb.toString();
        }
    }

    private static final class f<E> extends u0<List<E>> implements Set<List<E>> {
        private final transient ImmutableList<ImmutableSet<E>> a;
        private final transient y<E> b;

        class a extends ImmutableList<List<E>> {
            final /* synthetic */ ImmutableList c;

            a(ImmutableList immutableList) {
                this.c = immutableList;
            }

            @Override // java.util.List
            /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
            public List<E> get(int i) {
                return ((ImmutableSet) this.c.get(i)).e();
            }

            @Override // com.google.common.collect.n1
            boolean j() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.c.size();
            }
        }

        private f(ImmutableList<ImmutableSet<E>> immutableList, y<E> yVar) {
            this.a = immutableList;
            this.b = yVar;
        }

        static <E> Set<List<E>> P(List<? extends Set<? extends E>> list) {
            ImmutableList.a aVar = new ImmutableList.a(list.size());
            Iterator<? extends Set<? extends E>> it = list.iterator();
            while (it.hasNext()) {
                ImmutableSet immutableSetCopyOf = ImmutableSet.copyOf((Collection) it.next());
                if (immutableSetCopyOf.isEmpty()) {
                    return ImmutableSet.of();
                }
                aVar.a(immutableSetCopyOf);
            }
            ImmutableList<E> immutableListK = aVar.k();
            return new f(immutableListK, new y(new a(immutableListK)));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public Collection<List<E>> P() {
            return this.b;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (list.size() != this.a.size()) {
                return false;
            }
            Iterator<E> it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!this.a.get(i).contains(it.next())) {
                    return false;
                }
                i++;
            }
            return true;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return obj instanceof f ? this.a.equals(((f) obj).a) : super.equals(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int i = 1;
            int size = size() - 1;
            for (int i2 = 0; i2 < this.a.size(); i2++) {
                size = ~(~(size * 31));
            }
            o3<ImmutableSet<E>> o3VarN = this.a.iterator();
            while (o3VarN.hasNext()) {
                ImmutableSet<E> next = o3VarN.next();
                i = ~(~((i * 31) + ((size() / next.size()) * next.hashCode())));
            }
            return ~(~(i + size));
        }
    }

    private static class g<E> extends i<E> implements NavigableSet<E> {
        g(NavigableSet<E> navigableSet, com.google.common.base.k<? super E> kVar) {
            super(navigableSet, kVar);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e2) {
            return (E) Iterables.find(e().tailSet(e2, true), this.b, null);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.filter(e().descendingIterator(), this.b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return Sets.filter((NavigableSet) e().descendingSet(), (com.google.common.base.k) this.b);
        }

        NavigableSet<E> e() {
            return (NavigableSet) this.a;
        }

        @Override // java.util.NavigableSet
        public E floor(E e2) {
            return (E) Iterators.find(e().headSet(e2, true).descendingIterator(), this.b, null);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e2, boolean z) {
            return Sets.filter((NavigableSet) e().headSet(e2, z), (com.google.common.base.k) this.b);
        }

        @Override // java.util.NavigableSet
        public E higher(E e2) {
            return (E) Iterables.find(e().tailSet(e2, false), this.b, null);
        }

        @Override // com.google.common.collect.Sets.i, java.util.SortedSet
        public E last() {
            return (E) Iterators.find(e().descendingIterator(), this.b);
        }

        @Override // java.util.NavigableSet
        public E lower(E e2) {
            return (E) Iterators.find(e().headSet(e2, false).descendingIterator(), this.b, null);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) Iterables.c(e(), this.b);
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) Iterables.c(e().descendingSet(), this.b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e2, boolean z, E e3, boolean z2) {
            return Sets.filter((NavigableSet) e().subSet(e2, z, e3, z2), (com.google.common.base.k) this.b);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e2, boolean z) {
            return Sets.filter((NavigableSet) e().tailSet(e2, z), (com.google.common.base.k) this.b);
        }
    }

    private static class h<E> extends Collections2.a<E> implements Set<E> {
        h(Set<E> set, com.google.common.base.k<? super E> kVar) {
            super(set, kVar);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.b(this);
        }
    }

    private static class i<E> extends h<E> implements SortedSet<E> {
        i(SortedSet<E> sortedSet, com.google.common.base.k<? super E> kVar) {
            super(sortedSet, kVar);
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.a).comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) Iterators.find(this.a.iterator(), this.b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e2) {
            return new i(((SortedSet) this.a).headSet(e2), this.b);
        }

        public E last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.a;
            while (true) {
                E e2 = (Object) sortedSetHeadSet.last();
                if (this.b.apply(e2)) {
                    return e2;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(e2);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e2, E e3) {
            return new i(((SortedSet) this.a).subSet(e2, e3), this.b);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e2) {
            return new i(((SortedSet) this.a).tailSet(e2), this.b);
        }
    }

    static abstract class j<E> extends AbstractSet<E> {
        j() {
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return Sets.d(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) Preconditions.checkNotNull(collection));
        }
    }

    private static final class k<E> extends AbstractSet<Set<E>> {
        final ImmutableMap<E, Integer> a;

        class a extends com.google.common.collect.e<Set<E>> {
            a(int i) {
                super(i);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.e
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Set<E> a(int i) {
                return new m(k.this.a, i);
            }
        }

        k(Set<E> set) {
            Preconditions.checkArgument(set.size() <= 30, "Too many elements to create power set: %s > 30", set.size());
            this.a = Maps.r(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            return this.a.keySet().containsAll((Set) obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return obj instanceof k ? this.a.keySet().equals(((k) obj).a.keySet()) : super.equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.a.keySet().hashCode() << (this.a.size() - 1);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new a(size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return 1 << this.a.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 10);
            sb.append("powerSet(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    public static abstract class l<E> extends AbstractSet<E> {
        private l() {
        }

        /* synthetic */ l(a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean add(E e2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: renamed from: e */
        public abstract o3<E> iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }
    }

    private static final class m<E> extends AbstractSet<E> {
        private final ImmutableMap<E, Integer> a;
        private final int b;

        class a extends o3<E> {
            final ImmutableList<E> a;
            int b;

            a() {
                this.a = m.this.a.keySet().e();
                this.b = m.this.b;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.b != 0;
            }

            @Override // java.util.Iterator
            public E next() {
                int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(this.b);
                if (iNumberOfTrailingZeros == 32) {
                    throw new NoSuchElementException();
                }
                this.b &= ~(1 << iNumberOfTrailingZeros);
                return this.a.get(iNumberOfTrailingZeros);
            }
        }

        m(ImmutableMap<E, Integer> immutableMap, int i) {
            this.a = immutableMap;
            this.b = i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Integer num = this.a.get(obj);
            if (num != null) {
                if (((1 << num.intValue()) & this.b) != 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Integer.bitCount(this.b);
        }
    }

    static final class n<E> extends h1<E> implements NavigableSet<E>, Serializable {
        private static final long serialVersionUID = 0;
        private final NavigableSet<E> a;
        private final SortedSet<E> b;
        private transient n<E> c;

        n(NavigableSet<E> navigableSet) {
            this.a = (NavigableSet) Preconditions.checkNotNull(navigableSet);
            this.b = Collections.unmodifiableSortedSet(navigableSet);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.f1
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public SortedSet<E> P() {
            return this.b;
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e2) {
            return this.a.ceiling(e2);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.unmodifiableIterator(this.a.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            n<E> nVar = this.c;
            if (nVar != null) {
                return nVar;
            }
            n<E> nVar2 = new n<>(this.a.descendingSet());
            this.c = nVar2;
            nVar2.c = this;
            return nVar2;
        }

        @Override // java.util.NavigableSet
        public E floor(E e2) {
            return this.a.floor(e2);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e2, boolean z) {
            return Sets.unmodifiableNavigableSet(this.a.headSet(e2, z));
        }

        @Override // java.util.NavigableSet
        public E higher(E e2) {
            return this.a.higher(e2);
        }

        @Override // java.util.NavigableSet
        public E lower(E e2) {
            return this.a.lower(e2);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e2, boolean z, E e3, boolean z2) {
            return Sets.unmodifiableNavigableSet(this.a.subSet(e2, z, e3, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e2, boolean z) {
            return Sets.unmodifiableNavigableSet(this.a.tailSet(e2, z));
        }
    }

    private Sets() {
    }

    static boolean a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    static int b(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i2 = ~(~(i2 + (next != null ? next.hashCode() : 0)));
        }
        return i2;
    }

    private static <E extends Enum<E>> EnumSet<E> c(Collection<E> collection, Class<E> cls) {
        EnumSet<E> enumSetAllOf = EnumSet.allOf(cls);
        enumSetAllOf.removeAll(collection);
        return enumSetAllOf;
    }

    public static <B> Set<List<B>> cartesianProduct(List<? extends Set<? extends B>> list) {
        return f.P(list);
    }

    @SafeVarargs
    public static <B> Set<List<B>> cartesianProduct(Set<? extends B>... setArr) {
        return cartesianProduct(Arrays.asList(setArr));
    }

    public static <E> Set<Set<E>> combinations(Set<E> set, int i2) {
        ImmutableMap immutableMapR = Maps.r(set);
        z.b(i2, "size");
        Preconditions.checkArgument(i2 <= immutableMapR.size(), "size (%s) must be <= set.size() (%s)", i2, immutableMapR.size());
        return i2 == 0 ? ImmutableSet.of(ImmutableSet.of()) : i2 == immutableMapR.size() ? ImmutableSet.of(immutableMapR.keySet()) : new e(i2, immutableMapR);
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> collection) {
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        Preconditions.checkArgument(!collection.isEmpty(), "collection is empty; use the other version of this method");
        return c(collection, collection.iterator().next().getDeclaringClass());
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> collection, Class<E> cls) {
        Preconditions.checkNotNull(collection);
        return collection instanceof EnumSet ? EnumSet.complementOf((EnumSet) collection) : c(collection, cls);
    }

    static boolean d(Set<?> set, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof c2) {
            collection = ((c2) collection).k();
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? e(set, collection.iterator()) : Iterators.removeAll(set.iterator(), collection);
    }

    public static <E> l<E> difference(Set<E> set, Set<?> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new c(set, set2);
    }

    static boolean e(Set<?> set, Iterator<?> it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> NavigableSet<E> filter(NavigableSet<E> navigableSet, com.google.common.base.k<? super E> kVar) {
        if (!(navigableSet instanceof h)) {
            return new g((NavigableSet) Preconditions.checkNotNull(navigableSet), (com.google.common.base.k) Preconditions.checkNotNull(kVar));
        }
        h hVar = (h) navigableSet;
        return new g((NavigableSet) hVar.a, Predicates.and(hVar.b, kVar));
    }

    public static <E> Set<E> filter(Set<E> set, com.google.common.base.k<? super E> kVar) {
        if (set instanceof SortedSet) {
            return filter((SortedSet) set, (com.google.common.base.k) kVar);
        }
        if (!(set instanceof h)) {
            return new h((Set) Preconditions.checkNotNull(set), (com.google.common.base.k) Preconditions.checkNotNull(kVar));
        }
        h hVar = (h) set;
        return new h((Set) hVar.a, Predicates.and(hVar.b, kVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> SortedSet<E> filter(SortedSet<E> sortedSet, com.google.common.base.k<? super E> kVar) {
        if (!(sortedSet instanceof h)) {
            return new i((SortedSet) Preconditions.checkNotNull(sortedSet), (com.google.common.base.k) Preconditions.checkNotNull(kVar));
        }
        h hVar = (h) sortedSet;
        return new i((SortedSet) hVar.a, Predicates.and(hVar.b, kVar));
    }

    public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(E e2, E... eArr) {
        return q1.B(EnumSet.of((Enum) e2, (Enum[]) eArr));
    }

    public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(Iterable<E> iterable) {
        if (iterable instanceof q1) {
            return (q1) iterable;
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            return collection.isEmpty() ? ImmutableSet.of() : q1.B(EnumSet.copyOf(collection));
        }
        Iterator<E> it = iterable.iterator();
        if (!it.hasNext()) {
            return ImmutableSet.of();
        }
        EnumSet enumSetOf = EnumSet.of((Enum) it.next());
        Iterators.addAll(enumSetOf, it);
        return q1.B(enumSetOf);
    }

    public static <E> l<E> intersection(Set<E> set, Set<?> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new b(set, set2);
    }

    public static <E> Set<E> newConcurrentHashSet() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public static <E> Set<E> newConcurrentHashSet(Iterable<? extends E> iterable) {
        Set<E> setNewConcurrentHashSet = newConcurrentHashSet();
        Iterables.addAll(setNewConcurrentHashSet, iterable);
        return setNewConcurrentHashSet;
    }

    public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet() {
        return new CopyOnWriteArraySet<>();
    }

    public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet(Iterable<? extends E> iterable) {
        return new CopyOnWriteArraySet<>(iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable));
    }

    public static <E extends Enum<E>> EnumSet<E> newEnumSet(Iterable<E> iterable, Class<E> cls) {
        EnumSet<E> enumSetNoneOf = EnumSet.noneOf(cls);
        Iterables.addAll(enumSetNoneOf, iterable);
        return enumSetNoneOf;
    }

    public static <E> HashSet<E> newHashSet() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> newHashSet(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? new HashSet<>((Collection) iterable) : newHashSet(iterable.iterator());
    }

    public static <E> HashSet<E> newHashSet(Iterator<? extends E> it) {
        HashSet<E> hashSetNewHashSet = newHashSet();
        Iterators.addAll(hashSetNewHashSet, it);
        return hashSetNewHashSet;
    }

    public static <E> HashSet<E> newHashSet(E... eArr) {
        HashSet<E> hashSetNewHashSetWithExpectedSize = newHashSetWithExpectedSize(eArr.length);
        Collections.addAll(hashSetNewHashSetWithExpectedSize, eArr);
        return hashSetNewHashSetWithExpectedSize;
    }

    public static <E> HashSet<E> newHashSetWithExpectedSize(int i2) {
        return new HashSet<>(Maps.j(i2));
    }

    public static <E> Set<E> newIdentityHashSet() {
        return Collections.newSetFromMap(Maps.newIdentityHashMap());
    }

    public static <E> LinkedHashSet<E> newLinkedHashSet() {
        return new LinkedHashSet<>();
    }

    public static <E> LinkedHashSet<E> newLinkedHashSet(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedHashSet<>((Collection) iterable);
        }
        LinkedHashSet<E> linkedHashSetNewLinkedHashSet = newLinkedHashSet();
        Iterables.addAll(linkedHashSetNewLinkedHashSet, iterable);
        return linkedHashSetNewLinkedHashSet;
    }

    public static <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int i2) {
        return new LinkedHashSet<>(Maps.j(i2));
    }

    @Deprecated
    public static <E> Set<E> newSetFromMap(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    public static <E extends Comparable> TreeSet<E> newTreeSet() {
        return new TreeSet<>();
    }

    public static <E extends Comparable> TreeSet<E> newTreeSet(Iterable<? extends E> iterable) {
        TreeSet<E> treeSetNewTreeSet = newTreeSet();
        Iterables.addAll(treeSetNewTreeSet, iterable);
        return treeSetNewTreeSet;
    }

    public static <E> TreeSet<E> newTreeSet(Comparator<? super E> comparator) {
        return new TreeSet<>((Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <E> Set<Set<E>> powerSet(Set<E> set) {
        return new k(set);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K extends Comparable<? super K>> NavigableSet<K> subSet(NavigableSet<K> navigableSet, Range<K> range) {
        if (navigableSet.comparator() != null && navigableSet.comparator() != Ordering.natural() && range.f() && range.g()) {
            Preconditions.checkArgument(navigableSet.comparator().compare(range.n(), range.t()) <= 0, "set is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.f() && range.g()) {
            Comparable comparableN = range.n();
            BoundType boundTypeM = range.m();
            BoundType boundType = BoundType.CLOSED;
            return navigableSet.subSet(comparableN, boundTypeM == boundType, range.t(), range.s() == boundType);
        }
        if (range.f()) {
            return navigableSet.tailSet(range.n(), range.m() == BoundType.CLOSED);
        }
        if (range.g()) {
            return navigableSet.headSet(range.t(), range.s() == BoundType.CLOSED);
        }
        return (NavigableSet) Preconditions.checkNotNull(navigableSet);
    }

    public static <E> l<E> symmetricDifference(Set<? extends E> set, Set<? extends E> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new d(set, set2);
    }

    public static <E> NavigableSet<E> synchronizedNavigableSet(NavigableSet<E> navigableSet) {
        return k3.p(navigableSet);
    }

    public static <E> l<E> union(Set<? extends E> set, Set<? extends E> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new a(set, set2);
    }

    public static <E> NavigableSet<E> unmodifiableNavigableSet(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof n1) || (navigableSet instanceof n)) ? navigableSet : new n(navigableSet);
    }
}
