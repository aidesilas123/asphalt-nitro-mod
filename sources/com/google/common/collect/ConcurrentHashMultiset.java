package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.c2;
import com.google.common.collect.y2;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class ConcurrentHashMultiset<E> extends k<E> implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient ConcurrentMap<E, AtomicInteger> c;

    class a extends f1<E> {
        final /* synthetic */ Set a;

        a(ConcurrentHashMultiset concurrentHashMultiset, Set set) {
            this.a = set;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        /* JADX INFO: renamed from: P */
        public Set<E> C() {
            return this.a;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return obj != null && Collections2.f(this.a, obj);
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return E(collection);
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return obj != null && Collections2.g(this.a, obj);
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return Q(collection);
        }
    }

    class b extends AbstractIterator<c2.a<E>> {
        private final Iterator<Map.Entry<E, AtomicInteger>> c;

        b() {
            this.c = ConcurrentHashMultiset.this.c.entrySet().iterator();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public c2.a<E> b() {
            while (this.c.hasNext()) {
                Map.Entry<E, AtomicInteger> next = this.c.next();
                int i = next.getValue().get();
                if (i != 0) {
                    return Multisets.immutableEntry(next.getKey(), i);
                }
            }
            return c();
        }
    }

    class c extends w0<c2.a<E>> {
        private c2.a<E> a;
        final /* synthetic */ Iterator b;

        c(Iterator it) {
            this.b = it;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        public Iterator<c2.a<E>> C() {
            return this.b;
        }

        @Override // com.google.common.collect.w0, java.util.Iterator
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public c2.a<E> next() {
            c2.a<E> aVar = (c2.a) super.next();
            this.a = aVar;
            return aVar;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.a != null, "no calls to next() since the last call to remove()");
            ConcurrentHashMultiset.this.m(this.a.c(), 0);
            this.a = null;
        }
    }

    private class d extends k<E>.b {
        private d() {
            super();
        }

        /* synthetic */ d(ConcurrentHashMultiset concurrentHashMultiset, a aVar) {
            this();
        }

        private List<c2.a<E>> l() {
            ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
            Iterators.addAll(arrayListNewArrayListWithExpectedSize, iterator());
            return arrayListNewArrayListWithExpectedSize;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k.b, com.google.common.collect.Multisets.i
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public ConcurrentHashMultiset<E> i() {
            return ConcurrentHashMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return l().toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) l().toArray(tArr);
        }
    }

    private static class e {
        static final y2.b<ConcurrentHashMultiset> a = y2.a(ConcurrentHashMultiset.class, "countMap");
    }

    ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        Preconditions.checkArgument(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.c = concurrentMap;
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> concurrentHashMultisetCreate = create();
        Iterables.addAll(concurrentHashMultisetCreate, iterable);
        return concurrentHashMultisetCreate;
    }

    public static <E> ConcurrentHashMultiset<E> create(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new ConcurrentHashMultiset<>(concurrentMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<E> n() {
        ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
        for (c2.a aVar : entrySet()) {
            Object objC = aVar.c();
            for (int count = aVar.getCount(); count > 0; count--) {
                arrayListNewArrayListWithExpectedSize.add(objC);
            }
        }
        return arrayListNewArrayListWithExpectedSize;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        e.a.b(this, (ConcurrentMap) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.c);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public boolean I(E e2, int i, int i2) {
        Preconditions.checkNotNull(e2);
        z.b(i, "oldCount");
        z.b(i2, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.C(this.c, e2);
        if (atomicInteger == null) {
            if (i != 0) {
                return false;
            }
            return i2 == 0 || this.c.putIfAbsent(e2, new AtomicInteger(i2)) == null;
        }
        int i3 = atomicInteger.get();
        if (i3 == i) {
            if (i3 == 0) {
                if (i2 == 0) {
                    this.c.remove(e2, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i2);
                return this.c.putIfAbsent(e2, atomicInteger2) == null || this.c.replace(e2, atomicInteger, atomicInteger2);
            }
            if (atomicInteger.compareAndSet(i3, i2)) {
                if (i2 == 0) {
                    this.c.remove(e2, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.c2
    public int K(Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) Maps.C(this.c, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.c.clear();
    }

    @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.k
    Set<E> e() {
        return new a(this, this.c.keySet());
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.k
    @Deprecated
    public Set<c2.a<E>> f() {
        return new d(this, null);
    }

    @Override // com.google.common.collect.k
    int g() {
        return this.c.size();
    }

    @Override // com.google.common.collect.k
    Iterator<E> h() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.k
    Iterator<c2.a<E>> i() {
        return new c(new b());
    }

    @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.c.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.c2
    public Iterator<E> iterator() {
        return Multisets.h(this);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ Set k() {
        return super.k();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public int m(E e2, int i) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i2;
        AtomicInteger atomicInteger;
        Preconditions.checkNotNull(e2);
        z.b(i, "count");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.C(this.c, e2);
            if (atomicIntegerPutIfAbsent == null && (i == 0 || (atomicIntegerPutIfAbsent = this.c.putIfAbsent(e2, new AtomicInteger(i))) == null)) {
                return 0;
            }
            do {
                i2 = atomicIntegerPutIfAbsent.get();
                if (i2 == 0) {
                    if (i != 0) {
                        atomicInteger = new AtomicInteger(i);
                        if (this.c.putIfAbsent(e2, atomicInteger) == null) {
                            break;
                        }
                    } else {
                        return 0;
                    }
                }
            } while (!atomicIntegerPutIfAbsent.compareAndSet(i2, i));
            if (i == 0) {
                this.c.remove(e2, atomicIntegerPutIfAbsent);
            }
            return i2;
        } while (!this.c.replace(e2, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public int s(Object obj, int i) {
        int i2;
        int iMax;
        if (i == 0) {
            return K(obj);
        }
        z.d(i, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.C(this.c, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 == 0) {
                return 0;
            }
            iMax = Math.max(0, i2 - i);
        } while (!atomicInteger.compareAndSet(i2, iMax));
        if (iMax == 0) {
            this.c.remove(obj, atomicInteger);
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public int size() {
        Iterator<AtomicInteger> it = this.c.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            j += (long) it.next().get();
        }
        return Ints.saturatedCast(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return n().toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) n().toArray(tArr);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public int u(E e2, int i) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i2;
        AtomicInteger atomicInteger;
        Preconditions.checkNotNull(e2);
        if (i == 0) {
            return K(e2);
        }
        z.d(i, "occurrences");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.C(this.c, e2);
            if (atomicIntegerPutIfAbsent == null && (atomicIntegerPutIfAbsent = this.c.putIfAbsent(e2, new AtomicInteger(i))) == null) {
                return 0;
            }
            do {
                i2 = atomicIntegerPutIfAbsent.get();
                if (i2 == 0) {
                    atomicInteger = new AtomicInteger(i);
                    if (this.c.putIfAbsent(e2, atomicInteger) == null) {
                        break;
                    }
                } else {
                    try {
                    } catch (ArithmeticException unused) {
                        StringBuilder sb = new StringBuilder(65);
                        sb.append("Overflow adding ");
                        sb.append(i);
                        sb.append(" occurrences to a count of ");
                        sb.append(i2);
                        throw new IllegalArgumentException(sb.toString());
                    }
                }
            } while (!atomicIntegerPutIfAbsent.compareAndSet(i2, IntMath.checkedAdd(i2, i)));
            return i2;
        } while (!this.c.replace(e2, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }
}
