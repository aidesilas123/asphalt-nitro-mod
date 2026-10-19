package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class ar<E> extends w<E> {
    final transient E rg;
    private transient int rh;

    ar(E e2) {
        this.rg = (E) Preconditions.checkNotNull(e2);
    }

    ar(E e2, int i) {
        this.rg = e2;
        this.rh = i;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    int a(Object[] objArr, int i) {
        objArr[i] = this.rg;
        return i + 1;
    }

    @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.rg.equals(obj);
    }

    @Override // com.applovin.exoplayer2.common.a.w, com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: fU */
    public ax<E> iterator() {
        return y.z(this.rg);
    }

    @Override // com.applovin.exoplayer2.common.a.q
    boolean fZ() {
        return false;
    }

    @Override // com.applovin.exoplayer2.common.a.w
    s<E> gA() {
        return s.u(this.rg);
    }

    @Override // com.applovin.exoplayer2.common.a.w
    boolean gz() {
        return this.rh != 0;
    }

    @Override // com.applovin.exoplayer2.common.a.w, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.rh;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.rg.hashCode();
        this.rh = iHashCode;
        return iHashCode;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.rg.toString() + ']';
    }
}
