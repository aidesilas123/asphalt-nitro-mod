package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.util.AbstractQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
public final class MinMaxPriorityQueue<E> extends AbstractQueue<E> {
    private final MinMaxPriorityQueue<E>.c a;
    private final MinMaxPriorityQueue<E>.c b;
    final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f3664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3665e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3666f;

    public static final class b<B> {
        private final Comparator<B> a;
        private int b;
        private int c;

        private b(Comparator<B> comparator) {
            this.b = -1;
            this.c = Integer.MAX_VALUE;
            this.a = (Comparator) Preconditions.checkNotNull(comparator);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public <T extends B> Ordering<T> g() {
            return Ordering.from(this.a);
        }

        public <T extends B> MinMaxPriorityQueue<T> c() {
            return d(Collections.emptySet());
        }

        public <T extends B> MinMaxPriorityQueue<T> d(Iterable<? extends T> iterable) {
            MinMaxPriorityQueue<T> minMaxPriorityQueue = new MinMaxPriorityQueue<>(this, MinMaxPriorityQueue.n(this.b, this.c, iterable));
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                minMaxPriorityQueue.offer(it.next());
            }
            return minMaxPriorityQueue;
        }

        public b<B> e(int i) {
            Preconditions.checkArgument(i >= 0);
            this.b = i;
            return this;
        }

        public b<B> f(int i) {
            Preconditions.checkArgument(i > 0);
            this.c = i;
            return this;
        }
    }

    private class c {
        final Ordering<E> a;
        MinMaxPriorityQueue<E>.c b;

        c(Ordering<E> ordering) {
            this.a = ordering;
        }

        private int j(int i) {
            return l(l(i));
        }

        private int k(int i) {
            return (i * 2) + 1;
        }

        private int l(int i) {
            return (i - 1) / 2;
        }

        private int m(int i) {
            return (i * 2) + 2;
        }

        void a(int i, E e2) {
            c cVar;
            int iE = e(i, e2);
            if (iE == i) {
                iE = i;
                cVar = this;
            } else {
                cVar = this.b;
            }
            cVar.b(iE, e2);
        }

        int b(int i, E e2) {
            while (i > 2) {
                int iJ = j(i);
                Object objG = MinMaxPriorityQueue.this.g(iJ);
                if (this.a.compare((E) objG, e2) <= 0) {
                    break;
                }
                MinMaxPriorityQueue.this.f3664d[i] = objG;
                i = iJ;
            }
            MinMaxPriorityQueue.this.f3664d[i] = e2;
            return i;
        }

        int c(int i, int i2) {
            return this.a.compare((E) MinMaxPriorityQueue.this.g(i), (E) MinMaxPriorityQueue.this.g(i2));
        }

        int d(int i, E e2) {
            int iH = h(i);
            if (iH <= 0 || this.a.compare((E) MinMaxPriorityQueue.this.g(iH), e2) >= 0) {
                return e(i, e2);
            }
            MinMaxPriorityQueue.this.f3664d[i] = MinMaxPriorityQueue.this.g(iH);
            MinMaxPriorityQueue.this.f3664d[iH] = e2;
            return iH;
        }

        int e(int i, E e2) {
            int iM;
            if (i == 0) {
                MinMaxPriorityQueue.this.f3664d[0] = e2;
                return 0;
            }
            int iL = l(i);
            Object objG = MinMaxPriorityQueue.this.g(iL);
            if (iL != 0 && (iM = m(l(iL))) != iL && k(iM) >= MinMaxPriorityQueue.this.f3665e) {
                Object objG2 = MinMaxPriorityQueue.this.g(iM);
                if (this.a.compare((E) objG2, (E) objG) < 0) {
                    iL = iM;
                    objG = objG2;
                }
            }
            if (this.a.compare((E) objG, e2) >= 0) {
                MinMaxPriorityQueue.this.f3664d[i] = e2;
                return i;
            }
            MinMaxPriorityQueue.this.f3664d[i] = objG;
            MinMaxPriorityQueue.this.f3664d[iL] = e2;
            return iL;
        }

        int f(int i) {
            while (true) {
                int i2 = i(i);
                if (i2 <= 0) {
                    return i;
                }
                MinMaxPriorityQueue.this.f3664d[i] = MinMaxPriorityQueue.this.g(i2);
                i = i2;
            }
        }

        int g(int i, int i2) {
            if (i >= MinMaxPriorityQueue.this.f3665e) {
                return -1;
            }
            Preconditions.checkState(i > 0);
            int iMin = Math.min(i, MinMaxPriorityQueue.this.f3665e - i2) + i2;
            for (int i3 = i + 1; i3 < iMin; i3++) {
                if (c(i3, i) < 0) {
                    i = i3;
                }
            }
            return i;
        }

        int h(int i) {
            return g(k(i), 2);
        }

        int i(int i) {
            int iK = k(i);
            if (iK < 0) {
                return -1;
            }
            return g(k(iK), 4);
        }

        int n(E e2) {
            int iM;
            int iL = l(MinMaxPriorityQueue.this.f3665e);
            if (iL != 0 && (iM = m(l(iL))) != iL && k(iM) >= MinMaxPriorityQueue.this.f3665e) {
                Object objG = MinMaxPriorityQueue.this.g(iM);
                if (this.a.compare((E) objG, e2) < 0) {
                    MinMaxPriorityQueue.this.f3664d[iM] = e2;
                    MinMaxPriorityQueue.this.f3664d[MinMaxPriorityQueue.this.f3665e] = objG;
                    return iM;
                }
            }
            return MinMaxPriorityQueue.this.f3665e;
        }

        d<E> o(int i, int i2, E e2) {
            int iD = d(i2, e2);
            if (iD == i2) {
                return null;
            }
            Object objG = iD < i ? MinMaxPriorityQueue.this.g(i) : MinMaxPriorityQueue.this.g(l(i));
            if (this.b.b(iD, e2) < i) {
                return new d<>(e2, objG);
            }
            return null;
        }
    }

    static class d<E> {
        final E a;
        final E b;

        d(E e2, E e3) {
            this.a = e2;
            this.b = e3;
        }
    }

    private class e implements Iterator<E> {
        private int a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Queue<E> f3667d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<E> f3668e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private E f3669f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f3670g;

        private e() {
            this.a = -1;
            this.b = -1;
            this.c = MinMaxPriorityQueue.this.f3666f;
        }

        private void b() {
            if (MinMaxPriorityQueue.this.f3666f != this.c) {
                throw new ConcurrentModificationException();
            }
        }

        private boolean c(Iterable<E> iterable, E e2) {
            Iterator<E> it = iterable.iterator();
            while (it.hasNext()) {
                if (it.next() == e2) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void d(int i) {
            if (this.b < i) {
                if (this.f3668e != null) {
                    while (i < MinMaxPriorityQueue.this.size() && c(this.f3668e, MinMaxPriorityQueue.this.g(i))) {
                        i++;
                    }
                }
                this.b = i;
            }
        }

        private boolean e(Object obj) {
            for (int i = 0; i < MinMaxPriorityQueue.this.f3665e; i++) {
                if (MinMaxPriorityQueue.this.f3664d[i] == obj) {
                    MinMaxPriorityQueue.this.t(i);
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            b();
            d(this.a + 1);
            if (this.b < MinMaxPriorityQueue.this.size()) {
                return true;
            }
            Queue<E> queue = this.f3667d;
            return (queue == null || queue.isEmpty()) ? false : true;
        }

        @Override // java.util.Iterator
        public E next() {
            b();
            d(this.a + 1);
            if (this.b < MinMaxPriorityQueue.this.size()) {
                int i = this.b;
                this.a = i;
                this.f3670g = true;
                return (E) MinMaxPriorityQueue.this.g(i);
            }
            if (this.f3667d != null) {
                this.a = MinMaxPriorityQueue.this.size();
                E ePoll = this.f3667d.poll();
                this.f3669f = ePoll;
                if (ePoll != null) {
                    this.f3670g = true;
                    return ePoll;
                }
            }
            throw new NoSuchElementException("iterator moved past last element in queue.");
        }

        @Override // java.util.Iterator
        public void remove() {
            z.e(this.f3670g);
            b();
            this.f3670g = false;
            this.c++;
            if (this.a >= MinMaxPriorityQueue.this.size()) {
                E e2 = this.f3669f;
                Objects.requireNonNull(e2);
                Preconditions.checkState(e(e2));
                this.f3669f = null;
                return;
            }
            d<E> dVarT = MinMaxPriorityQueue.this.t(this.a);
            if (dVarT != null) {
                if (this.f3667d == null || this.f3668e == null) {
                    this.f3667d = new ArrayDeque();
                    this.f3668e = new ArrayList(3);
                }
                if (!c(this.f3668e, dVarT.a)) {
                    this.f3667d.add(dVarT.a);
                }
                if (!c(this.f3667d, dVarT.b)) {
                    this.f3668e.add(dVarT.b);
                }
            }
            this.a--;
            this.b--;
        }
    }

    private MinMaxPriorityQueue(b<? super E> bVar, int i) {
        Ordering orderingG = bVar.g();
        MinMaxPriorityQueue<E>.c cVar = new c(orderingG);
        this.a = cVar;
        MinMaxPriorityQueue<E>.c cVar2 = new c(orderingG.f());
        this.b = cVar2;
        cVar.b = cVar2;
        cVar2.b = cVar;
        this.c = ((b) bVar).c;
        this.f3664d = new Object[i];
    }

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create() {
        return new b(Ordering.natural()).c();
    }

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create(Iterable<? extends E> iterable) {
        return new b(Ordering.natural()).d(iterable);
    }

    private int e() {
        int length = this.f3664d.length;
        return f(length < 64 ? (length + 1) * 2 : IntMath.checkedMultiply(length / 2, 3), this.c);
    }

    public static b<Comparable> expectedSize(int i) {
        return new b(Ordering.natural()).e(i);
    }

    private static int f(int i, int i2) {
        return Math.min(i - 1, i2) + 1;
    }

    private d<E> h(int i, E e2) {
        MinMaxPriorityQueue<E>.c cVarL = l(i);
        int iF = cVarL.f(i);
        int iB = cVarL.b(iF, e2);
        if (iB == iF) {
            return cVarL.o(i, iF, e2);
        }
        if (iB < i) {
            return new d<>(e2, g(i));
        }
        return null;
    }

    private int i() {
        int i = this.f3665e;
        if (i != 1) {
            return (i == 2 || this.b.c(1, 2) <= 0) ? 1 : 2;
        }
        return 0;
    }

    private void j() {
        if (this.f3665e > this.f3664d.length) {
            Object[] objArr = new Object[e()];
            Object[] objArr2 = this.f3664d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f3664d = objArr;
        }
    }

    private MinMaxPriorityQueue<E>.c l(int i) {
        return o(i) ? this.a : this.b;
    }

    public static b<Comparable> maximumSize(int i) {
        return new b(Ordering.natural()).f(i);
    }

    static int n(int i, int i2, Iterable<?> iterable) {
        if (i == -1) {
            i = 11;
        }
        if (iterable instanceof Collection) {
            i = Math.max(i, ((Collection) iterable).size());
        }
        return f(i, i2);
    }

    static boolean o(int i) {
        int i2 = ~(~(i + 1));
        Preconditions.checkState(i2 > 0, "negative index");
        return (1431655765 & i2) > (i2 & (-1431655766));
    }

    public static <B> b<B> orderedBy(Comparator<B> comparator) {
        return new b<>(comparator);
    }

    private E r(int i) {
        E eG = g(i);
        t(i);
        return eG;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(E e2) {
        offer(e2);
        return true;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            offer(it.next());
            z = true;
        }
        return z;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i = 0; i < this.f3665e; i++) {
            this.f3664d[i] = null;
        }
        this.f3665e = 0;
    }

    E g(int i) {
        E e2 = (E) this.f3664d[i];
        Objects.requireNonNull(e2);
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new e();
    }

    @Override // java.util.Queue
    public boolean offer(E e2) {
        Preconditions.checkNotNull(e2);
        this.f3666f++;
        int i = this.f3665e;
        this.f3665e = i + 1;
        j();
        l(i).a(i, e2);
        return this.f3665e <= this.c || pollLast() != e2;
    }

    @Override // java.util.Queue
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return g(0);
    }

    @Override // java.util.Queue
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        return r(0);
    }

    public E pollLast() {
        if (isEmpty()) {
            return null;
        }
        return r(i());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f3665e;
    }

    d<E> t(int i) {
        Preconditions.checkPositionIndex(i, this.f3665e);
        this.f3666f++;
        int i2 = this.f3665e - 1;
        this.f3665e = i2;
        if (i2 == i) {
            this.f3664d[i2] = null;
            return null;
        }
        E eG = g(i2);
        int iN = l(this.f3665e).n(eG);
        if (iN == i) {
            this.f3664d[this.f3665e] = null;
            return null;
        }
        E eG2 = g(this.f3665e);
        this.f3664d[this.f3665e] = null;
        d<E> dVarH = h(i, eG2);
        return iN < i ? dVarH == null ? new d<>(eG, eG2) : new d<>(eG, dVarH.b) : dVarH;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        int i = this.f3665e;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f3664d, 0, objArr, 0, i);
        return objArr;
    }
}
