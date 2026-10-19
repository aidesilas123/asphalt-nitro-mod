package com.google.common.collect;

/* JADX INFO: compiled from: ForwardingMultiset.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class b1<E> extends u0<E> implements c2<E> {
    protected b1() {
    }

    public boolean I(E e2, int i, int i2) {
        return P().I(e2, i, i2);
    }

    @Override // com.google.common.collect.c2
    public int K(Object obj) {
        return P().K(obj);
    }

    protected abstract c2<E> P();

    @Override // java.util.Collection, com.google.common.collect.c2
    public boolean equals(Object obj) {
        return obj == this || P().equals(obj);
    }

    @Override // java.util.Collection, com.google.common.collect.c2
    public int hashCode() {
        return P().hashCode();
    }

    public int m(E e2, int i) {
        return P().m(e2, i);
    }

    public int s(Object obj, int i) {
        return P().s(obj, i);
    }

    public int u(E e2, int i) {
        return P().u(e2, i);
    }
}
