package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.c2;
import com.google.common.collect.n1;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableMultiset<E> extends u1<E> implements c2<E> {
    private transient ImmutableList<E> b;
    private transient ImmutableSet<c2.a<E>> c;

    class a extends o3<E> {
        int a;
        E b;
        final /* synthetic */ Iterator c;

        a(ImmutableMultiset immutableMultiset, Iterator it) {
            this.c = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a > 0 || this.c.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.a <= 0) {
                c2.a aVar = (c2.a) this.c.next();
                this.b = (E) aVar.c();
                this.a = aVar.getCount();
            }
            this.a--;
            E e2 = this.b;
            Objects.requireNonNull(e2);
            return e2;
        }
    }

    public static class b<E> extends n1.b<E> {
        f2<E> a;
        boolean b;
        boolean c;

        public b() {
            this(4);
        }

        b(int i) {
            this.b = false;
            this.c = false;
            this.a = f2.c(i);
        }

        b(boolean z) {
            this.b = false;
            this.c = false;
            this.a = null;
        }

        static <T> f2<T> l(Iterable<T> iterable) {
            if (iterable instanceof q2) {
                return ((q2) iterable).f3830e;
            }
            if (iterable instanceof h) {
                return ((h) iterable).c;
            }
            return null;
        }

        @Override // com.google.common.collect.n1.b
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public b<E> a(E e2) {
            return j(e2, 1);
        }

        public b<E> g(E... eArr) {
            super.b(eArr);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b<E> h(Iterable<? extends E> iterable) {
            Objects.requireNonNull(this.a);
            if (iterable instanceof c2) {
                c2 c2VarD = Multisets.d(iterable);
                f2 f2VarL = l(c2VarD);
                if (f2VarL != null) {
                    f2<E> f2Var = this.a;
                    f2Var.d(Math.max(f2Var.C(), f2VarL.C()));
                    for (int iE = f2VarL.e(); iE >= 0; iE = f2VarL.s(iE)) {
                        j(f2VarL.i(iE), f2VarL.k(iE));
                    }
                } else {
                    Set<c2.a<E>> setEntrySet = c2VarD.entrySet();
                    f2<E> f2Var2 = this.a;
                    f2Var2.d(Math.max(f2Var2.C(), setEntrySet.size()));
                    for (c2.a<E> aVar : c2VarD.entrySet()) {
                        j(aVar.c(), aVar.getCount());
                    }
                }
            } else {
                super.c(iterable);
            }
            return this;
        }

        public b<E> i(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        public b<E> j(E e2, int i) {
            Objects.requireNonNull(this.a);
            if (i == 0) {
                return this;
            }
            if (this.b) {
                this.a = new f2<>(this.a);
                this.c = false;
            }
            this.b = false;
            Preconditions.checkNotNull(e2);
            f2<E> f2Var = this.a;
            f2Var.u(e2, i + f2Var.f(e2));
            return this;
        }

        public ImmutableMultiset<E> k() {
            Objects.requireNonNull(this.a);
            if (this.a.C() == 0) {
                return ImmutableMultiset.of();
            }
            if (this.c) {
                this.a = new f2<>(this.a);
                this.c = false;
            }
            this.b = true;
            return new q2(this.a);
        }
    }

    private final class c extends v1<c2.a<E>> {
        private static final long serialVersionUID = 0;

        private c() {
        }

        /* synthetic */ c(ImmutableMultiset immutableMultiset, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v1
        /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
        public c2.a<E> get(int i) {
            return ImmutableMultiset.this.z(i);
        }

        @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (!(obj instanceof c2.a)) {
                return false;
            }
            c2.a aVar = (c2.a) obj;
            return aVar.getCount() > 0 && ImmutableMultiset.this.K(aVar.c()) == aVar.getCount();
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return ImmutableMultiset.this.j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ImmutableMultiset.this.k().size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1
        Object writeReplace() {
            return new d(ImmutableMultiset.this);
        }
    }

    static class d<E> implements Serializable {
        final ImmutableMultiset<E> a;

        d(ImmutableMultiset<E> immutableMultiset) {
            this.a = immutableMultiset;
        }

        Object readResolve() {
            return this.a.entrySet();
        }
    }

    ImmutableMultiset() {
    }

    public static <E> b<E> builder() {
        return new b<>();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableMultiset) {
            ImmutableMultiset<E> immutableMultiset = (ImmutableMultiset) iterable;
            if (!immutableMultiset.j()) {
                return immutableMultiset;
            }
        }
        b bVar = new b(Multisets.g(iterable));
        bVar.h(iterable);
        return bVar.k();
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> it) {
        return new b().i(it).k();
    }

    public static <E> ImmutableMultiset<E> copyOf(E[] eArr) {
        return r(eArr);
    }

    public static <E> ImmutableMultiset<E> of() {
        return q2.f3829d;
    }

    public static <E> ImmutableMultiset<E> of(E e2) {
        return r(e2);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3) {
        return r(e2, e3);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3, E e4) {
        return r(e2, e3, e4);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3, E e4, E e5) {
        return r(e2, e3, e4, e5);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3, E e4, E e5, E e6) {
        return r(e2, e3, e4, e5, e6);
    }

    public static <E> ImmutableMultiset<E> of(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        return new b().a(e2).a(e3).a(e4).a(e5).a(e6).a(e7).g(eArr).k();
    }

    private static <E> ImmutableMultiset<E> r(E... eArr) {
        return new b().g(eArr).k();
    }

    static <E> ImmutableMultiset<E> t(Collection<? extends c2.a<? extends E>> collection) {
        b bVar = new b(collection.size());
        for (c2.a<? extends E> aVar : collection) {
            bVar.j(aVar.c(), aVar.getCount());
        }
        return bVar.k();
    }

    private ImmutableSet<c2.a<E>> v() {
        return isEmpty() ? ImmutableSet.of() : new c(this, null);
    }

    @Override // com.google.common.collect.c2
    @Deprecated
    public final boolean I(E e2, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return K(obj) > 0;
    }

    @Override // com.google.common.collect.n1
    public ImmutableList<E> e() {
        ImmutableList<E> immutableList = this.b;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList<E> immutableListE = super.e();
        this.b = immutableListE;
        return immutableListE;
    }

    @Override // java.util.Collection, com.google.common.collect.c2
    public boolean equals(Object obj) {
        return Multisets.f(this, obj);
    }

    @Override // com.google.common.collect.n1
    int f(Object[] objArr, int i) {
        o3<c2.a<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            c2.a<E> next = it.next();
            Arrays.fill(objArr, i, next.getCount() + i, next.c());
            i += next.getCount();
        }
        return i;
    }

    @Override // java.util.Collection, com.google.common.collect.c2
    public int hashCode() {
        return Sets.b(entrySet());
    }

    @Override // com.google.common.collect.c2
    @Deprecated
    public final int m(E e2, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<E> iterator() {
        return new a(this, entrySet().iterator());
    }

    @Override // com.google.common.collect.c2
    @Deprecated
    public final int s(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.c2
    @Deprecated
    public final int u(E e2, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.n1
    abstract Object writeReplace();

    @Override // com.google.common.collect.c2
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public abstract ImmutableSet<E> k();

    @Override // com.google.common.collect.c2
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<c2.a<E>> entrySet() {
        ImmutableSet<c2.a<E>> immutableSet = this.c;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<c2.a<E>> immutableSetV = v();
        this.c = immutableSetV;
        return immutableSetV;
    }

    abstract c2.a<E> z(int i);
}
