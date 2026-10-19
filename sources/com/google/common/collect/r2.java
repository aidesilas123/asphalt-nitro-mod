package com.google.common.collect;

/* JADX INFO: compiled from: RegularImmutableSet.java */
/* JADX INFO: loaded from: classes3.dex */
final class r2<E> extends ImmutableSet<E> {
    private static final Object[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final r2<Object> f3834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final transient Object[] f3835e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final transient int f3836f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient Object[] f3837g;
    private final transient int h;
    private final transient int i;

    static {
        Object[] objArr = new Object[0];
        c = objArr;
        f3834d = new r2<>(objArr, 0, objArr, 0, 0);
    }

    r2(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f3835e = objArr;
        this.f3836f = i;
        this.f3837g = objArr2;
        this.h = i2;
        this.i = i3;
    }

    @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        Object[] objArr = this.f3837g;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iD = l1.d(obj);
        while (true) {
            int i = iD & this.h;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iD = i + 1;
        }
    }

    @Override // com.google.common.collect.n1
    int f(Object[] objArr, int i) {
        System.arraycopy(this.f3835e, 0, objArr, i, this.i);
        return i + this.i;
    }

    @Override // com.google.common.collect.n1
    Object[] g() {
        return this.f3835e;
    }

    @Override // com.google.common.collect.n1
    int h() {
        return this.i;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f3836f;
    }

    @Override // com.google.common.collect.n1
    int i() {
        return 0;
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: n */
    public o3<E> iterator() {
        return e().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.i;
    }

    @Override // com.google.common.collect.ImmutableSet
    ImmutableList<E> y() {
        return ImmutableList.t(this.f3835e, this.i);
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean z() {
        return true;
    }
}
