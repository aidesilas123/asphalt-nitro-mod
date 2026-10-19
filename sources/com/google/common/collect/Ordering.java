package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Ordering<T> implements Comparator<T> {

    static class a extends Ordering<Object> {
        private final AtomicInteger a = new AtomicInteger(0);
        private final ConcurrentMap<Object, Integer> b = i2.i(new MapMaker()).i();

        a() {
        }

        private Integer h(Object obj) {
            Integer num = this.b.get(obj);
            if (num != null) {
                return num;
            }
            Integer numValueOf = Integer.valueOf(this.a.getAndIncrement());
            Integer numPutIfAbsent = this.b.putIfAbsent(obj, numValueOf);
            return numPutIfAbsent != null ? numPutIfAbsent : numValueOf;
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int i = i(obj);
            int i2 = i(obj2);
            if (i != i2) {
                return i < i2 ? -1 : 1;
            }
            int iCompareTo = h(obj).compareTo(h(obj2));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            throw new AssertionError();
        }

        int i(Object obj) {
            return System.identityHashCode(obj);
        }

        public String toString() {
            return "Ordering.arbitrary()";
        }
    }

    private static class b {
        static final Ordering<Object> a = new a();
    }

    static class c extends ClassCastException {
        private static final long serialVersionUID = 0;
        final Object a;

        c(Object obj) {
            String strValueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
            sb.append("Cannot compare value: ");
            sb.append(strValueOf);
            super(sb.toString());
            this.a = obj;
        }
    }

    protected Ordering() {
    }

    public static Ordering<Object> allEqual() {
        return t.a;
    }

    public static Ordering<Object> arbitrary() {
        return b.a;
    }

    public static <T> Ordering<T> compound(Iterable<? extends Comparator<? super T>> iterable) {
        return new c0(iterable);
    }

    public static <T> Ordering<T> explicit(T t, T... tArr) {
        return explicit(Lists.asList(t, tArr));
    }

    public static <T> Ordering<T> explicit(List<T> list) {
        return new m0(list);
    }

    @Deprecated
    public static <T> Ordering<T> from(Ordering<T> ordering) {
        return (Ordering) Preconditions.checkNotNull(ordering);
    }

    public static <T> Ordering<T> from(Comparator<T> comparator) {
        return comparator instanceof Ordering ? (Ordering) comparator : new b0(comparator);
    }

    public static <C extends Comparable> Ordering<C> natural() {
        return d2.a;
    }

    public static Ordering<Object> usingToString() {
        return r3.a;
    }

    public <E extends T> ImmutableList<E> a(Iterable<E> iterable) {
        return ImmutableList.sortedCopyOf(this, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E b(E e2, E e3) {
        return compare(e2, e3) >= 0 ? e2 : e3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E c(E e2, E e3) {
        return compare(e2, e3) <= 0 ? e2 : e3;
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);

    <T2 extends T> Ordering<Map.Entry<T2, ?>> d() {
        return (Ordering<Map.Entry<T2, ?>>) e(Maps.s());
    }

    public <F> Ordering<F> e(com.google.common.base.f<F, ? extends T> fVar) {
        return new x(fVar, this);
    }

    public <S extends T> Ordering<S> f() {
        return new w2(this);
    }

    public <E extends T> List<E> g(Iterable<E> iterable) {
        Object[] objArrF = Iterables.f(iterable);
        Arrays.sort(objArrF, this);
        return Lists.newArrayList(Arrays.asList(objArrF));
    }
}
