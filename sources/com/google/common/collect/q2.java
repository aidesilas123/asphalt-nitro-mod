package com.google.common.collect;

import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.c2;
import com.google.common.primitives.Ints;
import java.io.Serializable;

/* JADX INFO: compiled from: RegularImmutableMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
class q2<E> extends ImmutableMultiset<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final q2<Object> f3829d = new q2<>(f2.b());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final transient f2<E> f3830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final transient int f3831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient ImmutableSet<E> f3832g;

    /* JADX INFO: compiled from: RegularImmutableMultiset.java */
    private final class b extends v1<E> {
        private b() {
        }

        @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return q2.this.contains(obj);
        }

        @Override // com.google.common.collect.v1
        E get(int i) {
            return q2.this.f3830e.i(i);
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return q2.this.f3830e.C();
        }
    }

    /* JADX INFO: compiled from: RegularImmutableMultiset.java */
    private static class c implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] a;
        final int[] b;

        c(c2<? extends Object> c2Var) {
            int size = c2Var.entrySet().size();
            this.a = new Object[size];
            this.b = new int[size];
            int i = 0;
            for (c2.a<? extends Object> aVar : c2Var.entrySet()) {
                this.a[i] = aVar.c();
                this.b[i] = aVar.getCount();
                i++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        Object readResolve() {
            ImmutableMultiset.b bVar = new ImmutableMultiset.b(this.a.length);
            int i = 0;
            while (true) {
                Object[] objArr = this.a;
                if (i >= objArr.length) {
                    return bVar.k();
                }
                bVar.j(objArr[i], this.b[i]);
                i++;
            }
        }
    }

    q2(f2<E> f2Var) {
        this.f3830e = f2Var;
        long jK = 0;
        for (int i = 0; i < f2Var.C(); i++) {
            jK += (long) f2Var.k(i);
        }
        this.f3831f = Ints.saturatedCast(jK);
    }

    @Override // com.google.common.collect.c2
    public int K(Object obj) {
        return this.f3830e.f(obj);
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.c2
    public int size() {
        return this.f3831f;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.n1
    Object writeReplace() {
        return new c(this);
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.c2
    /* JADX INFO: renamed from: x */
    public ImmutableSet<E> k() {
        ImmutableSet<E> immutableSet = this.f3832g;
        if (immutableSet != null) {
            return immutableSet;
        }
        b bVar = new b();
        this.f3832g = bVar;
        return bVar;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    c2.a<E> z(int i) {
        return this.f3830e.g(i);
    }
}
