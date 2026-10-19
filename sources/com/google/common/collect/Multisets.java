package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.Sets;
import com.google.common.collect.c2;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class Multisets {

    /* JADX INFO: Add missing generic type declarations: [E] */
    class a<E> extends n<E> {
        final /* synthetic */ c2 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c2 f3681d;

        /* JADX INFO: renamed from: com.google.common.collect.Multisets$a$a, reason: collision with other inner class name */
        class C0249a extends AbstractIterator<c2.a<E>> {
            final /* synthetic */ Iterator c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Iterator f3682d;

            C0249a(Iterator it, Iterator it2) {
                this.c = it;
                this.f3682d = it2;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public c2.a<E> b() {
                if (this.c.hasNext()) {
                    c2.a aVar = (c2.a) this.c.next();
                    Object objC = aVar.c();
                    return Multisets.immutableEntry(objC, Math.max(aVar.getCount(), a.this.f3681d.K(objC)));
                }
                while (this.f3682d.hasNext()) {
                    c2.a aVar2 = (c2.a) this.f3682d.next();
                    Object objC2 = aVar2.c();
                    if (!a.this.c.contains(objC2)) {
                        return Multisets.immutableEntry(objC2, aVar2.getCount());
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(c2 c2Var, c2 c2Var2) {
            super(null);
            this.c = c2Var;
            this.f3681d = c2Var2;
        }

        @Override // com.google.common.collect.c2
        public int K(Object obj) {
            return Math.max(this.c.K(obj), this.f3681d.K(obj));
        }

        @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
        public boolean contains(Object obj) {
            return this.c.contains(obj) || this.f3681d.contains(obj);
        }

        @Override // com.google.common.collect.k
        Set<E> e() {
            return Sets.union(this.c.k(), this.f3681d.k());
        }

        @Override // com.google.common.collect.k
        Iterator<E> h() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.k
        Iterator<c2.a<E>> i() {
            return new C0249a(this.c.entrySet().iterator(), this.f3681d.entrySet().iterator());
        }

        @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.c.isEmpty() && this.f3681d.isEmpty();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class b<E> extends n<E> {
        final /* synthetic */ c2 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c2 f3684d;

        class a extends AbstractIterator<c2.a<E>> {
            final /* synthetic */ Iterator c;

            a(Iterator it) {
                this.c = it;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public c2.a<E> b() {
                while (this.c.hasNext()) {
                    c2.a aVar = (c2.a) this.c.next();
                    Object objC = aVar.c();
                    int iMin = Math.min(aVar.getCount(), b.this.f3684d.K(objC));
                    if (iMin > 0) {
                        return Multisets.immutableEntry(objC, iMin);
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(c2 c2Var, c2 c2Var2) {
            super(null);
            this.c = c2Var;
            this.f3684d = c2Var2;
        }

        @Override // com.google.common.collect.c2
        public int K(Object obj) {
            int iK = this.c.K(obj);
            if (iK == 0) {
                return 0;
            }
            return Math.min(iK, this.f3684d.K(obj));
        }

        @Override // com.google.common.collect.k
        Set<E> e() {
            return Sets.intersection(this.c.k(), this.f3684d.k());
        }

        @Override // com.google.common.collect.k
        Iterator<E> h() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.k
        Iterator<c2.a<E>> i() {
            return new a(this.c.entrySet().iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class c<E> extends n<E> {
        final /* synthetic */ c2 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c2 f3686d;

        class a extends AbstractIterator<c2.a<E>> {
            final /* synthetic */ Iterator c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Iterator f3687d;

            a(Iterator it, Iterator it2) {
                this.c = it;
                this.f3687d = it2;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public c2.a<E> b() {
                if (this.c.hasNext()) {
                    c2.a aVar = (c2.a) this.c.next();
                    Object objC = aVar.c();
                    return Multisets.immutableEntry(objC, aVar.getCount() + c.this.f3686d.K(objC));
                }
                while (this.f3687d.hasNext()) {
                    c2.a aVar2 = (c2.a) this.f3687d.next();
                    Object objC2 = aVar2.c();
                    if (!c.this.c.contains(objC2)) {
                        return Multisets.immutableEntry(objC2, aVar2.getCount());
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(c2 c2Var, c2 c2Var2) {
            super(null);
            this.c = c2Var;
            this.f3686d = c2Var2;
        }

        @Override // com.google.common.collect.c2
        public int K(Object obj) {
            return this.c.K(obj) + this.f3686d.K(obj);
        }

        @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
        public boolean contains(Object obj) {
            return this.c.contains(obj) || this.f3686d.contains(obj);
        }

        @Override // com.google.common.collect.k
        Set<E> e() {
            return Sets.union(this.c.k(), this.f3686d.k());
        }

        @Override // com.google.common.collect.k
        Iterator<E> h() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.k
        Iterator<c2.a<E>> i() {
            return new a(this.c.entrySet().iterator(), this.f3686d.entrySet().iterator());
        }

        @Override // com.google.common.collect.k, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.c.isEmpty() && this.f3686d.isEmpty();
        }

        @Override // com.google.common.collect.Multisets.n, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
        public int size() {
            return IntMath.saturatedAdd(this.c.size(), this.f3686d.size());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class d<E> extends n<E> {
        final /* synthetic */ c2 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c2 f3689d;

        class a extends AbstractIterator<E> {
            final /* synthetic */ Iterator c;

            a(Iterator it) {
                this.c = it;
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
            protected E b() {
                while (this.c.hasNext()) {
                    c2.a aVar = (c2.a) this.c.next();
                    E e2 = (E) aVar.c();
                    if (aVar.getCount() > d.this.f3689d.K(e2)) {
                        return e2;
                    }
                }
                return c();
            }
        }

        class b extends AbstractIterator<c2.a<E>> {
            final /* synthetic */ Iterator c;

            b(Iterator it) {
                this.c = it;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public c2.a<E> b() {
                while (this.c.hasNext()) {
                    c2.a aVar = (c2.a) this.c.next();
                    Object objC = aVar.c();
                    int count = aVar.getCount() - d.this.f3689d.K(objC);
                    if (count > 0) {
                        return Multisets.immutableEntry(objC, count);
                    }
                }
                return c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(c2 c2Var, c2 c2Var2) {
            super(null);
            this.c = c2Var;
            this.f3689d = c2Var2;
        }

        @Override // com.google.common.collect.c2
        public int K(Object obj) {
            int iK = this.c.K(obj);
            if (iK == 0) {
                return 0;
            }
            return Math.max(0, iK - this.f3689d.K(obj));
        }

        @Override // com.google.common.collect.Multisets.n, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multisets.n, com.google.common.collect.k
        int g() {
            return Iterators.size(i());
        }

        @Override // com.google.common.collect.k
        Iterator<E> h() {
            return new a(this.c.entrySet().iterator());
        }

        @Override // com.google.common.collect.k
        Iterator<c2.a<E>> i() {
            return new b(this.c.entrySet().iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class e<E> extends m3<c2.a<E>, E> {
        e(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.m3
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public E a(c2.a<E> aVar) {
            return aVar.c();
        }
    }

    static abstract class f<E> implements c2.a<E> {
        f() {
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c2.a)) {
                return false;
            }
            c2.a aVar = (c2.a) obj;
            return getCount() == aVar.getCount() && Objects.equal(c(), aVar.c());
        }

        public int hashCode() {
            E eC = c();
            return (eC == null ? 0 : eC.hashCode()) ^ getCount();
        }

        @Override // com.google.common.collect.c2.a
        public String toString() {
            String strValueOf = String.valueOf(c());
            int count = getCount();
            if (count == 1) {
                return strValueOf;
            }
            StringBuilder sb = new StringBuilder(strValueOf.length() + 14);
            sb.append(strValueOf);
            sb.append(" x ");
            sb.append(count);
            return sb.toString();
        }
    }

    private static final class g implements Comparator<c2.a<?>> {
        static final g a = new g();

        private g() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c2.a<?> aVar, c2.a<?> aVar2) {
            return aVar2.getCount() - aVar.getCount();
        }
    }

    static abstract class h<E> extends Sets.j<E> {
        h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            i().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return i().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return i().containsAll(collection);
        }

        abstract c2<E> i();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return i().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return i().s(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return i().entrySet().size();
        }
    }

    static abstract class i<E> extends Sets.j<c2.a<E>> {
        i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            i().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof c2.a)) {
                return false;
            }
            c2.a aVar = (c2.a) obj;
            return aVar.getCount() > 0 && i().K(aVar.c()) == aVar.getCount();
        }

        abstract c2<E> i();

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof c2.a) {
                c2.a aVar = (c2.a) obj;
                Object objC = aVar.c();
                int count = aVar.getCount();
                if (count != 0) {
                    return i().I(objC, count, 0);
                }
            }
            return false;
        }
    }

    private static final class j<E> extends n<E> {
        final c2<E> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final com.google.common.base.k<? super E> f3692d;

        class a implements com.google.common.base.k<c2.a<E>> {
            a() {
            }

            @Override // com.google.common.base.k
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean apply(c2.a<E> aVar) {
                return j.this.f3692d.apply(aVar.c());
            }
        }

        j(c2<E> c2Var, com.google.common.base.k<? super E> kVar) {
            super(null);
            this.c = (c2) Preconditions.checkNotNull(c2Var);
            this.f3692d = (com.google.common.base.k) Preconditions.checkNotNull(kVar);
        }

        @Override // com.google.common.collect.c2
        public int K(Object obj) {
            int iK = this.c.K(obj);
            if (iK <= 0 || !this.f3692d.apply(obj)) {
                return 0;
            }
            return iK;
        }

        @Override // com.google.common.collect.k
        Set<E> e() {
            return Sets.filter(this.c.k(), this.f3692d);
        }

        @Override // com.google.common.collect.k
        Set<c2.a<E>> f() {
            return Sets.filter(this.c.entrySet(), new a());
        }

        @Override // com.google.common.collect.k
        Iterator<E> h() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.k
        Iterator<c2.a<E>> i() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Multisets.n, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.c2
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public o3<E> iterator() {
            return Iterators.filter(this.c.iterator(), this.f3692d);
        }

        @Override // com.google.common.collect.k, com.google.common.collect.c2
        public int s(Object obj, int i) {
            z.b(i, "occurrences");
            if (i == 0) {
                return K(obj);
            }
            if (contains(obj)) {
                return this.c.s(obj, i);
            }
            return 0;
        }

        @Override // com.google.common.collect.k, com.google.common.collect.c2
        public int u(E e2, int i) {
            Preconditions.checkArgument(this.f3692d.apply(e2), "Element %s does not match predicate %s", e2, this.f3692d);
            return this.c.u(e2, i);
        }
    }

    static class k<E> extends f<E> implements Serializable {
        private static final long serialVersionUID = 0;
        private final E a;
        private final int b;

        k(E e2, int i) {
            this.a = e2;
            this.b = i;
            z.b(i, "count");
        }

        @Override // com.google.common.collect.c2.a
        public final E c() {
            return this.a;
        }

        @Override // com.google.common.collect.c2.a
        public final int getCount() {
            return this.b;
        }
    }

    static final class l<E> implements Iterator<E> {
        private final c2<E> a;
        private final Iterator<c2.a<E>> b;
        private c2.a<E> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3693d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3694e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f3695f;

        l(c2<E> c2Var, Iterator<c2.a<E>> it) {
            this.a = c2Var;
            this.b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3693d > 0 || this.b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.f3693d == 0) {
                c2.a<E> next = this.b.next();
                this.c = next;
                int count = next.getCount();
                this.f3693d = count;
                this.f3694e = count;
            }
            this.f3693d--;
            this.f3695f = true;
            c2.a<E> aVar = this.c;
            java.util.Objects.requireNonNull(aVar);
            return aVar.c();
        }

        @Override // java.util.Iterator
        public void remove() {
            z.e(this.f3695f);
            if (this.f3694e == 1) {
                this.b.remove();
            } else {
                c2<E> c2Var = this.a;
                c2.a<E> aVar = this.c;
                java.util.Objects.requireNonNull(aVar);
                c2Var.remove(aVar.c());
            }
            this.f3694e--;
            this.f3695f = false;
        }
    }

    static class m<E> extends b1<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final c2<? extends E> a;
        transient Set<E> b;
        transient Set<c2.a<E>> c;

        m(c2<? extends E> c2Var) {
            this.a = c2Var;
        }

        @Override // com.google.common.collect.b1, com.google.common.collect.c2
        public boolean I(E e2, int i, int i2) {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public c2<E> C() {
            return this.a;
        }

        Set<E> Q() {
            return Collections.unmodifiableSet(this.a.k());
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Queue
        public boolean add(E e2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.c2
        public Set<c2.a<E>> entrySet() {
            Set<c2.a<E>> set = this.c;
            if (set != null) {
                return set;
            }
            Set<c2.a<E>> setUnmodifiableSet = Collections.unmodifiableSet(this.a.entrySet());
            this.c = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.unmodifiableIterator(this.a.iterator());
        }

        @Override // com.google.common.collect.c2
        public Set<E> k() {
            Set<E> set = this.b;
            if (set != null) {
                return set;
            }
            Set<E> setQ = Q();
            this.b = setQ;
            return setQ;
        }

        @Override // com.google.common.collect.b1, com.google.common.collect.c2
        public int m(E e2, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b1, com.google.common.collect.c2
        public int s(Object obj, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b1, com.google.common.collect.c2
        public int u(E e2, int i) {
            throw new UnsupportedOperationException();
        }
    }

    private static abstract class n<E> extends com.google.common.collect.k<E> {
        private n() {
        }

        /* synthetic */ n(a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            k().clear();
        }

        @Override // com.google.common.collect.k
        int g() {
            return k().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.c2
        public Iterator<E> iterator() {
            return Multisets.h(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
        public int size() {
            return Multisets.i(this);
        }
    }

    private Multisets() {
    }

    private static <E> boolean a(c2<E> c2Var, com.google.common.collect.h<? extends E> hVar) {
        if (hVar.isEmpty()) {
            return false;
        }
        hVar.j(c2Var);
        return true;
    }

    private static <E> boolean b(c2<E> c2Var, c2<? extends E> c2Var2) {
        if (c2Var2 instanceof com.google.common.collect.h) {
            return a(c2Var, (com.google.common.collect.h) c2Var2);
        }
        if (c2Var2.isEmpty()) {
            return false;
        }
        for (c2.a<? extends E> aVar : c2Var2.entrySet()) {
            c2Var.u(aVar.c(), aVar.getCount());
        }
        return true;
    }

    static <E> boolean c(c2<E> c2Var, Collection<? extends E> collection) {
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(collection);
        if (collection instanceof c2) {
            return b(c2Var, d(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return Iterators.addAll(c2Var, collection.iterator());
    }

    public static boolean containsOccurrences(c2<?> c2Var, c2<?> c2Var2) {
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(c2Var2);
        for (c2.a<?> aVar : c2Var2.entrySet()) {
            if (c2Var.K(aVar.c()) < aVar.getCount()) {
                return false;
            }
        }
        return true;
    }

    public static <E> ImmutableMultiset<E> copyHighestCountFirst(c2<E> c2Var) {
        c2.a[] aVarArr = (c2.a[]) c2Var.entrySet().toArray(new c2.a[0]);
        Arrays.sort(aVarArr, g.a);
        return ImmutableMultiset.t(Arrays.asList(aVarArr));
    }

    static <T> c2<T> d(Iterable<T> iterable) {
        return (c2) iterable;
    }

    public static <E> c2<E> difference(c2<E> c2Var, c2<?> c2Var2) {
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(c2Var2);
        return new d(c2Var, c2Var2);
    }

    static <E> Iterator<E> e(Iterator<c2.a<E>> it) {
        return new e(it);
    }

    static boolean f(c2<?> c2Var, Object obj) {
        if (obj == c2Var) {
            return true;
        }
        if (obj instanceof c2) {
            c2 c2Var2 = (c2) obj;
            if (c2Var.size() == c2Var2.size() && c2Var.entrySet().size() == c2Var2.entrySet().size()) {
                for (c2.a aVar : c2Var2.entrySet()) {
                    if (c2Var.K(aVar.c()) != aVar.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static <E> c2<E> filter(c2<E> c2Var, com.google.common.base.k<? super E> kVar) {
        if (!(c2Var instanceof j)) {
            return new j(c2Var, kVar);
        }
        j jVar = (j) c2Var;
        return new j(jVar.c, Predicates.and(jVar.f3692d, kVar));
    }

    static int g(Iterable<?> iterable) {
        if (iterable instanceof c2) {
            return ((c2) iterable).k().size();
        }
        return 11;
    }

    static <E> Iterator<E> h(c2<E> c2Var) {
        return new l(c2Var, c2Var.entrySet().iterator());
    }

    static int i(c2<?> c2Var) {
        Iterator<c2.a<?>> it = c2Var.entrySet().iterator();
        long count = 0;
        while (it.hasNext()) {
            count += (long) it.next().getCount();
        }
        return Ints.saturatedCast(count);
    }

    public static <E> c2.a<E> immutableEntry(E e2, int i2) {
        return new k(e2, i2);
    }

    public static <E> c2<E> intersection(c2<E> c2Var, c2<?> c2Var2) {
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(c2Var2);
        return new b(c2Var, c2Var2);
    }

    static boolean j(c2<?> c2Var, Collection<?> collection) {
        if (collection instanceof c2) {
            collection = ((c2) collection).k();
        }
        return c2Var.k().removeAll(collection);
    }

    static boolean k(c2<?> c2Var, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof c2) {
            collection = ((c2) collection).k();
        }
        return c2Var.k().retainAll(collection);
    }

    private static <E> boolean l(c2<E> c2Var, c2<?> c2Var2) {
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(c2Var2);
        Iterator<c2.a<E>> it = c2Var.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            c2.a<E> next = it.next();
            int iK = c2Var2.K(next.c());
            if (iK == 0) {
                it.remove();
            } else if (iK < next.getCount()) {
                c2Var.m(next.c(), iK);
            }
            z = true;
        }
        return z;
    }

    static <E> int m(c2<E> c2Var, E e2, int i2) {
        z.b(i2, "count");
        int iK = c2Var.K(e2);
        int i3 = i2 - iK;
        if (i3 > 0) {
            c2Var.u(e2, i3);
        } else if (i3 < 0) {
            c2Var.s(e2, -i3);
        }
        return iK;
    }

    static <E> boolean n(c2<E> c2Var, E e2, int i2, int i3) {
        z.b(i2, "oldCount");
        z.b(i3, "newCount");
        if (c2Var.K(e2) != i2) {
            return false;
        }
        c2Var.m(e2, i3);
        return true;
    }

    public static boolean removeOccurrences(c2<?> c2Var, c2<?> c2Var2) {
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(c2Var2);
        Iterator<c2.a<?>> it = c2Var.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            c2.a<?> next = it.next();
            int iK = c2Var2.K(next.c());
            if (iK >= next.getCount()) {
                it.remove();
            } else if (iK > 0) {
                c2Var.s(next.c(), iK);
            }
            z = true;
        }
        return z;
    }

    public static boolean removeOccurrences(c2<?> c2Var, Iterable<?> iterable) {
        if (iterable instanceof c2) {
            return removeOccurrences(c2Var, (c2<?>) iterable);
        }
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(iterable);
        boolean zRemove = false;
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            zRemove |= c2Var.remove(it.next());
        }
        return zRemove;
    }

    public static boolean retainOccurrences(c2<?> c2Var, c2<?> c2Var2) {
        return l(c2Var, c2Var2);
    }

    public static <E> c2<E> sum(c2<? extends E> c2Var, c2<? extends E> c2Var2) {
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(c2Var2);
        return new c(c2Var, c2Var2);
    }

    public static <E> c2<E> union(c2<? extends E> c2Var, c2<? extends E> c2Var2) {
        Preconditions.checkNotNull(c2Var);
        Preconditions.checkNotNull(c2Var2);
        return new a(c2Var, c2Var2);
    }

    @Deprecated
    public static <E> c2<E> unmodifiableMultiset(ImmutableMultiset<E> immutableMultiset) {
        return (c2) Preconditions.checkNotNull(immutableMultiset);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> c2<E> unmodifiableMultiset(c2<? extends E> c2Var) {
        return ((c2Var instanceof m) || (c2Var instanceof ImmutableMultiset)) ? c2Var : new m((c2) Preconditions.checkNotNull(c2Var));
    }

    public static <E> e3<E> unmodifiableSortedMultiset(e3<E> e3Var) {
        return new q3((e3) Preconditions.checkNotNull(e3Var));
    }
}
