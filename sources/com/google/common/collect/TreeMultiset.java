package com.google.common.collect;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multisets;
import com.google.common.collect.c2;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class TreeMultiset<E> extends q<E> implements Serializable {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final transient f<e<E>> f3720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final transient j1<E> f3721f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final transient e<E> f3722g;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class Aggregate {
        public static final Aggregate a = new a("SIZE", 0);
        public static final Aggregate b = new b("DISTINCT", 1);
        private static final /* synthetic */ Aggregate[] c = e();

        enum a extends Aggregate {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            int f(e<?> eVar) {
                return ((e) eVar).b;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            long g(e<?> eVar) {
                if (eVar == null) {
                    return 0L;
                }
                return ((e) eVar).f3723d;
            }
        }

        enum b extends Aggregate {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            int f(e<?> eVar) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            long g(e<?> eVar) {
                if (eVar == null) {
                    return 0L;
                }
                return ((e) eVar).c;
            }
        }

        private Aggregate(String str, int i) {
        }

        /* synthetic */ Aggregate(String str, int i, a aVar) {
            this(str, i);
        }

        private static /* synthetic */ Aggregate[] e() {
            return new Aggregate[]{a, b};
        }

        public static Aggregate valueOf(String str) {
            return (Aggregate) Enum.valueOf(Aggregate.class, str);
        }

        public static Aggregate[] values() {
            return (Aggregate[]) c.clone();
        }

        abstract int f(e<?> eVar);

        abstract long g(e<?> eVar);
    }

    class a extends Multisets.f<E> {
        final /* synthetic */ e a;

        a(e eVar) {
            this.a = eVar;
        }

        @Override // com.google.common.collect.c2.a
        public E c() {
            return (E) this.a.x();
        }

        @Override // com.google.common.collect.c2.a
        public int getCount() {
            int iW = this.a.w();
            return iW == 0 ? TreeMultiset.this.K(c()) : iW;
        }
    }

    class b implements Iterator<c2.a<E>> {
        e<E> a;
        c2.a<E> b;

        b() {
            this.a = TreeMultiset.this.G();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public c2.a<E> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            TreeMultiset treeMultiset = TreeMultiset.this;
            e<E> eVar = this.a;
            Objects.requireNonNull(eVar);
            c2.a<E> aVarP = treeMultiset.P(eVar);
            this.b = aVarP;
            if (this.a.L() == TreeMultiset.this.f3722g) {
                this.a = null;
            } else {
                this.a = this.a.L();
            }
            return aVarP;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.a == null) {
                return false;
            }
            if (!TreeMultiset.this.f3721f.n(this.a.x())) {
                return true;
            }
            this.a = null;
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.b != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.m(this.b.c(), 0);
            this.b = null;
        }
    }

    class c implements Iterator<c2.a<E>> {
        e<E> a;
        c2.a<E> b = null;

        c() {
            this.a = TreeMultiset.this.H();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public c2.a<E> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Objects.requireNonNull(this.a);
            c2.a<E> aVarP = TreeMultiset.this.P(this.a);
            this.b = aVarP;
            if (this.a.z() == TreeMultiset.this.f3722g) {
                this.a = null;
            } else {
                this.a = this.a.z();
            }
            return aVarP;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.a == null) {
                return false;
            }
            if (!TreeMultiset.this.f3721f.p(this.a.x())) {
                return true;
            }
            this.a = null;
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.b != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.m(this.b.c(), 0);
            this.b = null;
        }
    }

    static /* synthetic */ class d {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[BoundType.values().length];
            a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static final class e<E> {
        private final E a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f3723d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3724e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private e<E> f3725f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private e<E> f3726g;
        private e<E> h;
        private e<E> i;

        e() {
            this.a = null;
            this.b = 1;
        }

        e(E e2, int i) {
            Preconditions.checkArgument(i > 0);
            this.a = e2;
            this.b = i;
            this.f3723d = i;
            this.c = 1;
            this.f3724e = 1;
            this.f3725f = null;
            this.f3726g = null;
        }

        private e<E> A() {
            int iR = r();
            if (iR == -2) {
                Objects.requireNonNull(this.f3726g);
                if (this.f3726g.r() > 0) {
                    this.f3726g = this.f3726g.I();
                }
                return H();
            }
            if (iR != 2) {
                C();
                return this;
            }
            Objects.requireNonNull(this.f3725f);
            if (this.f3725f.r() < 0) {
                this.f3725f = this.f3725f.H();
            }
            return I();
        }

        private void B() {
            D();
            C();
        }

        private void C() {
            this.f3724e = Math.max(y(this.f3725f), y(this.f3726g)) + 1;
        }

        private void D() {
            this.c = TreeMultiset.F(this.f3725f) + 1 + TreeMultiset.F(this.f3726g);
            this.f3723d = ((long) this.b) + M(this.f3725f) + M(this.f3726g);
        }

        private e<E> F(e<E> eVar) {
            e<E> eVar2 = this.f3726g;
            if (eVar2 == null) {
                return this.f3725f;
            }
            this.f3726g = eVar2.F(eVar);
            this.c--;
            this.f3723d -= (long) eVar.b;
            return A();
        }

        private e<E> G(e<E> eVar) {
            e<E> eVar2 = this.f3725f;
            if (eVar2 == null) {
                return this.f3726g;
            }
            this.f3725f = eVar2.G(eVar);
            this.c--;
            this.f3723d -= (long) eVar.b;
            return A();
        }

        private e<E> H() {
            Preconditions.checkState(this.f3726g != null);
            e<E> eVar = this.f3726g;
            this.f3726g = eVar.f3725f;
            eVar.f3725f = this;
            eVar.f3723d = this.f3723d;
            eVar.c = this.c;
            B();
            eVar.C();
            return eVar;
        }

        private e<E> I() {
            Preconditions.checkState(this.f3725f != null);
            e<E> eVar = this.f3725f;
            this.f3725f = eVar.f3726g;
            eVar.f3726g = this;
            eVar.f3723d = this.f3723d;
            eVar.c = this.c;
            B();
            eVar.C();
            return eVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e<E> L() {
            e<E> eVar = this.i;
            Objects.requireNonNull(eVar);
            return eVar;
        }

        private static long M(e<?> eVar) {
            if (eVar == null) {
                return 0L;
            }
            return ((e) eVar).f3723d;
        }

        private e<E> p(E e2, int i) {
            this.f3725f = new e<>(e2, i);
            TreeMultiset.O(z(), this.f3725f, this);
            this.f3724e = Math.max(2, this.f3724e);
            this.c++;
            this.f3723d += (long) i;
            return this;
        }

        private e<E> q(E e2, int i) {
            e<E> eVar = new e<>(e2, i);
            this.f3726g = eVar;
            TreeMultiset.O(this, eVar, L());
            this.f3724e = Math.max(2, this.f3724e);
            this.c++;
            this.f3723d += (long) i;
            return this;
        }

        private int r() {
            return y(this.f3725f) - y(this.f3726g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public e<E> s(Comparator<? super E> comparator, E e2) {
            int iCompare = comparator.compare(e2, x());
            if (iCompare < 0) {
                e<E> eVar = this.f3725f;
                return eVar == null ? this : (e) MoreObjects.firstNonNull(eVar.s(comparator, e2), this);
            }
            if (iCompare == 0) {
                return this;
            }
            e<E> eVar2 = this.f3726g;
            if (eVar2 == null) {
                return null;
            }
            return eVar2.s(comparator, e2);
        }

        private e<E> u() {
            int i = this.b;
            this.b = 0;
            TreeMultiset.M(z(), L());
            e<E> eVar = this.f3725f;
            if (eVar == null) {
                return this.f3726g;
            }
            e<E> eVar2 = this.f3726g;
            if (eVar2 == null) {
                return eVar;
            }
            if (eVar.f3724e >= eVar2.f3724e) {
                e<E> eVarZ = z();
                eVarZ.f3725f = this.f3725f.F(eVarZ);
                eVarZ.f3726g = this.f3726g;
                eVarZ.c = this.c - 1;
                eVarZ.f3723d = this.f3723d - ((long) i);
                return eVarZ.A();
            }
            e<E> eVarL = L();
            eVarL.f3726g = this.f3726g.G(eVarL);
            eVarL.f3725f = this.f3725f;
            eVarL.c = this.c - 1;
            eVarL.f3723d = this.f3723d - ((long) i);
            return eVarL.A();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public e<E> v(Comparator<? super E> comparator, E e2) {
            int iCompare = comparator.compare(e2, x());
            if (iCompare > 0) {
                e<E> eVar = this.f3726g;
                return eVar == null ? this : (e) MoreObjects.firstNonNull(eVar.v(comparator, e2), this);
            }
            if (iCompare == 0) {
                return this;
            }
            e<E> eVar2 = this.f3725f;
            if (eVar2 == null) {
                return null;
            }
            return eVar2.v(comparator, e2);
        }

        private static int y(e<?> eVar) {
            if (eVar == null) {
                return 0;
            }
            return ((e) eVar).f3724e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e<E> z() {
            e<E> eVar = this.h;
            Objects.requireNonNull(eVar);
            return eVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        e<E> E(Comparator<? super E> comparator, E e2, int i, int[] iArr) {
            int iCompare = comparator.compare(e2, x());
            if (iCompare < 0) {
                e<E> eVar = this.f3725f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f3725f = eVar.E(comparator, e2, i, iArr);
                if (iArr[0] > 0) {
                    if (i >= iArr[0]) {
                        this.c--;
                        this.f3723d -= (long) iArr[0];
                    } else {
                        this.f3723d -= (long) i;
                    }
                }
                return iArr[0] == 0 ? this : A();
            }
            if (iCompare <= 0) {
                int i2 = this.b;
                iArr[0] = i2;
                if (i >= i2) {
                    return u();
                }
                this.b = i2 - i;
                this.f3723d -= (long) i;
                return this;
            }
            e<E> eVar2 = this.f3726g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return this;
            }
            this.f3726g = eVar2.E(comparator, e2, i, iArr);
            if (iArr[0] > 0) {
                if (i >= iArr[0]) {
                    this.c--;
                    this.f3723d -= (long) iArr[0];
                } else {
                    this.f3723d -= (long) i;
                }
            }
            return A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        e<E> J(Comparator<? super E> comparator, E e2, int i, int i2, int[] iArr) {
            int iCompare = comparator.compare(e2, x());
            if (iCompare < 0) {
                e<E> eVar = this.f3725f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return (i != 0 || i2 <= 0) ? this : p(e2, i2);
                }
                this.f3725f = eVar.J(comparator, e2, i, i2, iArr);
                if (iArr[0] == i) {
                    if (i2 == 0 && iArr[0] != 0) {
                        this.c--;
                    } else if (i2 > 0 && iArr[0] == 0) {
                        this.c++;
                    }
                    this.f3723d += (long) (i2 - iArr[0]);
                }
                return A();
            }
            if (iCompare <= 0) {
                int i3 = this.b;
                iArr[0] = i3;
                if (i == i3) {
                    if (i2 == 0) {
                        return u();
                    }
                    this.f3723d += (long) (i2 - i3);
                    this.b = i2;
                }
                return this;
            }
            e<E> eVar2 = this.f3726g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return (i != 0 || i2 <= 0) ? this : q(e2, i2);
            }
            this.f3726g = eVar2.J(comparator, e2, i, i2, iArr);
            if (iArr[0] == i) {
                if (i2 == 0 && iArr[0] != 0) {
                    this.c--;
                } else if (i2 > 0 && iArr[0] == 0) {
                    this.c++;
                }
                this.f3723d += (long) (i2 - iArr[0]);
            }
            return A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        e<E> K(Comparator<? super E> comparator, E e2, int i, int[] iArr) {
            int iCompare = comparator.compare(e2, x());
            if (iCompare < 0) {
                e<E> eVar = this.f3725f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return i > 0 ? p(e2, i) : this;
                }
                this.f3725f = eVar.K(comparator, e2, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.c--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.c++;
                }
                this.f3723d += (long) (i - iArr[0]);
                return A();
            }
            if (iCompare <= 0) {
                int i2 = this.b;
                iArr[0] = i2;
                if (i == 0) {
                    return u();
                }
                this.f3723d += (long) (i - i2);
                this.b = i;
                return this;
            }
            e<E> eVar2 = this.f3726g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return i > 0 ? q(e2, i) : this;
            }
            this.f3726g = eVar2.K(comparator, e2, i, iArr);
            if (i == 0 && iArr[0] != 0) {
                this.c--;
            } else if (i > 0 && iArr[0] == 0) {
                this.c++;
            }
            this.f3723d += (long) (i - iArr[0]);
            return A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        e<E> o(Comparator<? super E> comparator, E e2, int i, int[] iArr) {
            int iCompare = comparator.compare(e2, x());
            if (iCompare < 0) {
                e<E> eVar = this.f3725f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return p(e2, i);
                }
                int i2 = eVar.f3724e;
                e<E> eVarO = eVar.o(comparator, e2, i, iArr);
                this.f3725f = eVarO;
                if (iArr[0] == 0) {
                    this.c++;
                }
                this.f3723d += (long) i;
                return eVarO.f3724e == i2 ? this : A();
            }
            if (iCompare <= 0) {
                int i3 = this.b;
                iArr[0] = i3;
                long j = i;
                Preconditions.checkArgument(((long) i3) + j <= 2147483647L);
                this.b += i;
                this.f3723d += j;
                return this;
            }
            e<E> eVar2 = this.f3726g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return q(e2, i);
            }
            int i4 = eVar2.f3724e;
            e<E> eVarO2 = eVar2.o(comparator, e2, i, iArr);
            this.f3726g = eVarO2;
            if (iArr[0] == 0) {
                this.c++;
            }
            this.f3723d += (long) i;
            return eVarO2.f3724e == i4 ? this : A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        int t(Comparator<? super E> comparator, E e2) {
            int iCompare = comparator.compare(e2, x());
            if (iCompare < 0) {
                e<E> eVar = this.f3725f;
                if (eVar == null) {
                    return 0;
                }
                return eVar.t(comparator, e2);
            }
            if (iCompare <= 0) {
                return this.b;
            }
            e<E> eVar2 = this.f3726g;
            if (eVar2 == null) {
                return 0;
            }
            return eVar2.t(comparator, e2);
        }

        public String toString() {
            return Multisets.immutableEntry(x(), w()).toString();
        }

        int w() {
            return this.b;
        }

        E x() {
            return (E) e2.a(this.a);
        }
    }

    private static final class f<T> {
        private T a;

        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }

        public void a(T t, T t2) {
            if (this.a != t) {
                throw new ConcurrentModificationException();
            }
            this.a = t2;
        }

        void b() {
            this.a = null;
        }

        public T c() {
            return this.a;
        }
    }

    TreeMultiset(f<e<E>> fVar, j1<E> j1Var, e<E> eVar) {
        super(j1Var.c());
        this.f3720e = fVar;
        this.f3721f = j1Var;
        this.f3722g = eVar;
    }

    TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.f3721f = j1.a(comparator);
        e<E> eVar = new e<>();
        this.f3722g = eVar;
        M(eVar, eVar);
        this.f3720e = new f<>(null);
    }

    private long C(Aggregate aggregate, e<E> eVar) {
        long jG;
        long jC;
        if (eVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(e2.a(this.f3721f.i()), eVar.x());
        if (iCompare > 0) {
            return C(aggregate, ((e) eVar).f3726g);
        }
        if (iCompare == 0) {
            int i = d.a[this.f3721f.h().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return aggregate.g(((e) eVar).f3726g);
                }
                throw new AssertionError();
            }
            jG = aggregate.f(eVar);
            jC = aggregate.g(((e) eVar).f3726g);
        } else {
            jG = aggregate.g(((e) eVar).f3726g) + ((long) aggregate.f(eVar));
            jC = C(aggregate, ((e) eVar).f3725f);
        }
        return jG + jC;
    }

    private long D(Aggregate aggregate, e<E> eVar) {
        long jG;
        long jD;
        if (eVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(e2.a(this.f3721f.g()), eVar.x());
        if (iCompare < 0) {
            return D(aggregate, ((e) eVar).f3725f);
        }
        if (iCompare == 0) {
            int i = d.a[this.f3721f.f().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return aggregate.g(((e) eVar).f3725f);
                }
                throw new AssertionError();
            }
            jG = aggregate.f(eVar);
            jD = aggregate.g(((e) eVar).f3725f);
        } else {
            jG = aggregate.g(((e) eVar).f3725f) + ((long) aggregate.f(eVar));
            jD = D(aggregate, ((e) eVar).f3726g);
        }
        return jG + jD;
    }

    private long E(Aggregate aggregate) {
        e<E> eVarC = this.f3720e.c();
        long jG = aggregate.g(eVarC);
        if (this.f3721f.j()) {
            jG -= D(aggregate, eVarC);
        }
        return this.f3721f.k() ? jG - C(aggregate, eVarC) : jG;
    }

    static int F(e<?> eVar) {
        if (eVar == null) {
            return 0;
        }
        return ((e) eVar).c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e<E> G() {
        e<E> eVarL;
        e<E> eVarC = this.f3720e.c();
        if (eVarC == null) {
            return null;
        }
        if (this.f3721f.j()) {
            Object objA = e2.a(this.f3721f.g());
            eVarL = eVarC.s(comparator(), objA);
            if (eVarL == null) {
                return null;
            }
            if (this.f3721f.f() == BoundType.OPEN && comparator().compare(objA, eVarL.x()) == 0) {
                eVarL = eVarL.L();
            }
        } else {
            eVarL = this.f3722g.L();
        }
        if (eVarL == this.f3722g || !this.f3721f.d(eVarL.x())) {
            return null;
        }
        return eVarL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e<E> H() {
        e<E> eVarZ;
        e<E> eVarC = this.f3720e.c();
        if (eVarC == null) {
            return null;
        }
        if (this.f3721f.k()) {
            Object objA = e2.a(this.f3721f.i());
            eVarZ = eVarC.v(comparator(), objA);
            if (eVarZ == null) {
                return null;
            }
            if (this.f3721f.h() == BoundType.OPEN && comparator().compare(objA, eVarZ.x()) == 0) {
                eVarZ = eVarZ.z();
            }
        } else {
            eVarZ = this.f3722g.z();
        }
        if (eVarZ == this.f3722g || !this.f3721f.d(eVarZ.x())) {
            return null;
        }
        return eVarZ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void M(e<T> eVar, e<T> eVar2) {
        ((e) eVar).i = eVar2;
        ((e) eVar2).h = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void O(e<T> eVar, e<T> eVar2, e<T> eVar3) {
        M(eVar, eVar2);
        M(eVar2, eVar3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c2.a<E> P(e<E> eVar) {
        return new a(eVar);
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> treeMultisetCreate = create();
        Iterables.addAll(treeMultisetCreate, iterable);
        return treeMultisetCreate;
    }

    public static <E> TreeMultiset<E> create(Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(Ordering.natural()) : new TreeMultiset<>(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        y2.a(q.class, "comparator").b(this, comparator);
        y2.a(TreeMultiset.class, "range").b(this, j1.a(comparator));
        y2.a(TreeMultiset.class, "rootReference").b(this, new f(null));
        e eVar = new e();
        y2.a(TreeMultiset.class, "header").b(this, eVar);
        M(eVar, eVar);
        y2.f(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(k().comparator());
        y2.k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public boolean I(E e2, int i, int i2) {
        z.b(i2, "newCount");
        z.b(i, "oldCount");
        Preconditions.checkArgument(this.f3721f.d(e2));
        e<E> eVarC = this.f3720e.c();
        if (eVarC != null) {
            int[] iArr = new int[1];
            this.f3720e.a(eVarC, eVarC.J(comparator(), e2, i, i2, iArr));
            return iArr[0] == i;
        }
        if (i != 0) {
            return false;
        }
        if (i2 > 0) {
            u(e2, i2);
        }
        return true;
    }

    @Override // com.google.common.collect.e3
    public e3<E> J(E e2, BoundType boundType) {
        return new TreeMultiset(this.f3720e, this.f3721f.m(j1.q(comparator(), e2, boundType)), this.f3722g);
    }

    @Override // com.google.common.collect.c2
    public int K(Object obj) {
        try {
            e<E> eVarC = this.f3720e.c();
            if (this.f3721f.d(obj) && eVarC != null) {
                return eVarC.t(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.e3
    public e3<E> L(E e2, BoundType boundType) {
        return new TreeMultiset(this.f3720e, this.f3721f.m(j1.e(comparator(), e2, boundType)), this.f3722g);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        if (this.f3721f.j() || this.f3721f.k()) {
            Iterators.c(i());
            return;
        }
        e<E> eVarL = this.f3722g.L();
        while (true) {
            e<E> eVar = this.f3722g;
            if (eVarL == eVar) {
                M(eVar, eVar);
                this.f3720e.b();
                return;
            }
            e<E> eVarL2 = eVarL.L();
            ((e) eVarL).b = 0;
            ((e) eVarL).f3725f = null;
            ((e) eVarL).f3726g = null;
            ((e) eVarL).h = null;
            ((e) eVarL).i = null;
            eVarL = eVarL2;
        }
    }

    @Override // com.google.common.collect.q, com.google.common.collect.e3, com.google.common.collect.c3
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.e3
    public /* bridge */ /* synthetic */ c2.a firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.k
    int g() {
        return Ints.saturatedCast(E(Aggregate.b));
    }

    @Override // com.google.common.collect.k
    Iterator<E> h() {
        return Multisets.e(i());
    }

    @Override // com.google.common.collect.k
    Iterator<c2.a<E>> i() {
        return new b();
    }

    @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.c2
    public Iterator<E> iterator() {
        return Multisets.h(this);
    }

    @Override // com.google.common.collect.q, com.google.common.collect.k, com.google.common.collect.c2
    public /* bridge */ /* synthetic */ NavigableSet k() {
        return super.k();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.e3
    public /* bridge */ /* synthetic */ c2.a lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public int m(E e2, int i) {
        z.b(i, "count");
        if (!this.f3721f.d(e2)) {
            Preconditions.checkArgument(i == 0);
            return 0;
        }
        e<E> eVarC = this.f3720e.c();
        if (eVarC == null) {
            if (i > 0) {
                u(e2, i);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.f3720e.a(eVarC, eVarC.K(comparator(), e2, i, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.q, com.google.common.collect.e3
    public /* bridge */ /* synthetic */ c2.a pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.q, com.google.common.collect.e3
    public /* bridge */ /* synthetic */ c2.a pollLastEntry() {
        return super.pollLastEntry();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.q, com.google.common.collect.e3
    public /* bridge */ /* synthetic */ e3 q(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return super.q(obj, boundType, obj2, boundType2);
    }

    @Override // com.google.common.collect.q
    Iterator<c2.a<E>> r() {
        return new c();
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public int s(Object obj, int i) {
        z.b(i, "occurrences");
        if (i == 0) {
            return K(obj);
        }
        e<E> eVarC = this.f3720e.c();
        int[] iArr = new int[1];
        try {
            if (this.f3721f.d(obj) && eVarC != null) {
                this.f3720e.a(eVarC, eVarC.E(comparator(), obj, i, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public int size() {
        return Ints.saturatedCast(E(Aggregate.a));
    }

    @Override // com.google.common.collect.k, com.google.common.collect.c2
    public int u(E e2, int i) {
        z.b(i, "occurrences");
        if (i == 0) {
            return K(e2);
        }
        Preconditions.checkArgument(this.f3721f.d(e2));
        e<E> eVarC = this.f3720e.c();
        if (eVarC != null) {
            int[] iArr = new int[1];
            this.f3720e.a(eVarC, eVarC.o(comparator(), e2, i, iArr));
            return iArr[0];
        }
        comparator().compare(e2, e2);
        e<E> eVar = new e<>(e2, i);
        e<E> eVar2 = this.f3722g;
        O(eVar2, eVar, eVar2);
        this.f3720e.a(eVarC, eVar);
        return 0;
    }

    @Override // com.google.common.collect.q, com.google.common.collect.e3
    public /* bridge */ /* synthetic */ e3 w() {
        return super.w();
    }
}
