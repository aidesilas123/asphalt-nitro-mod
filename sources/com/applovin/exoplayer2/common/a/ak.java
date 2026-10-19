package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
class ak<E> extends s<E> {
    static final s<Object> qO = new ak(new Object[0], 0);
    private final transient int oW;
    final transient Object[] qA;

    ak(Object[] objArr, int i) {
        this.qA = objArr;
        this.oW = i;
    }

    @Override // com.applovin.exoplayer2.common.a.s, com.applovin.exoplayer2.common.a.q
    int a(Object[] objArr, int i) {
        System.arraycopy(this.qA, 0, objArr, i, this.oW);
        return i + this.oW;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    Object[] fV() {
        return this.qA;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    int fW() {
        return 0;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    int fX() {
        return this.oW;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    boolean fZ() {
        return false;
    }

    @Override // java.util.List
    public E get(int i) {
        Preconditions.checkElementIndex(i, this.oW);
        return (E) this.qA[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.oW;
    }
}
