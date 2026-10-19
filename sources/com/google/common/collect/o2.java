package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: compiled from: RegularImmutableList.java */
/* JADX INFO: loaded from: classes3.dex */
class o2<E> extends ImmutableList<E> {
    static final ImmutableList<Object> c = new o2(new Object[0], 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final transient Object[] f3812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final transient int f3813e;

    o2(Object[] objArr, int i) {
        this.f3812d = objArr;
        this.f3813e = i;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.n1
    int f(Object[] objArr, int i) {
        System.arraycopy(this.f3812d, 0, objArr, i, this.f3813e);
        return i + this.f3813e;
    }

    @Override // com.google.common.collect.n1
    Object[] g() {
        return this.f3812d;
    }

    @Override // java.util.List
    public E get(int i) {
        Preconditions.checkElementIndex(i, this.f3813e);
        E e2 = (E) this.f3812d[i];
        Objects.requireNonNull(e2);
        return e2;
    }

    @Override // com.google.common.collect.n1
    int h() {
        return this.f3813e;
    }

    @Override // com.google.common.collect.n1
    int i() {
        return 0;
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3813e;
    }
}
