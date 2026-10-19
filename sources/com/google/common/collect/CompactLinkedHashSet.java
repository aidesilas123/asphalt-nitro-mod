package com.google.common.collect;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
class CompactLinkedHashSet<E> extends CompactHashSet<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient int[] f3557f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient int[] f3558g;
    private transient int h;
    private transient int i;

    CompactLinkedHashSet() {
    }

    CompactLinkedHashSet(int i) {
        super(i);
    }

    private int P(int i) {
        return Q()[i] - 1;
    }

    private int[] Q() {
        int[] iArr = this.f3557f;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private int[] R() {
        int[] iArr = this.f3558g;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private void S(int i, int i2) {
        Q()[i] = i2 + 1;
    }

    private void T(int i, int i2) {
        if (i == -2) {
            this.h = i2;
        } else {
            U(i, i2);
        }
        if (i2 == -2) {
            this.i = i;
        } else {
            S(i2, i);
        }
    }

    private void U(int i, int i2) {
        R()[i] = i2 + 1;
    }

    public static <E> CompactLinkedHashSet<E> create() {
        return new CompactLinkedHashSet<>();
    }

    public static <E> CompactLinkedHashSet<E> create(Collection<? extends E> collection) {
        CompactLinkedHashSet<E> compactLinkedHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactLinkedHashSetCreateWithExpectedSize.addAll(collection);
        return compactLinkedHashSetCreateWithExpectedSize;
    }

    @SafeVarargs
    public static <E> CompactLinkedHashSet<E> create(E... eArr) {
        CompactLinkedHashSet<E> compactLinkedHashSetCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(compactLinkedHashSetCreateWithExpectedSize, eArr);
        return compactLinkedHashSetCreateWithExpectedSize;
    }

    public static <E> CompactLinkedHashSet<E> createWithExpectedSize(int i) {
        return new CompactLinkedHashSet<>(i);
    }

    @Override // com.google.common.collect.CompactHashSet
    void E(int i) {
        super.E(i);
        this.f3557f = Arrays.copyOf(Q(), i);
        this.f3558g = Arrays.copyOf(R(), i);
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (A()) {
            return;
        }
        this.h = -2;
        this.i = -2;
        int[] iArr = this.f3557f;
        if (iArr != null && this.f3558g != null) {
            Arrays.fill(iArr, 0, size(), 0);
            Arrays.fill(this.f3558g, 0, size(), 0);
        }
        super.clear();
    }

    @Override // com.google.common.collect.CompactHashSet
    int d(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override // com.google.common.collect.CompactHashSet
    int e() {
        int iE = super.e();
        this.f3557f = new int[iE];
        this.f3558g = new int[iE];
        return iE;
    }

    @Override // com.google.common.collect.CompactHashSet
    Set<E> f() {
        Set<E> setF = super.f();
        this.f3557f = null;
        this.f3558g = null;
        return setF;
    }

    @Override // com.google.common.collect.CompactHashSet
    int n() {
        return this.h;
    }

    @Override // com.google.common.collect.CompactHashSet
    int r(int i) {
        return R()[i] - 1;
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return ObjectArrays.e(this);
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) ObjectArrays.f(this, tArr);
    }

    @Override // com.google.common.collect.CompactHashSet
    void x(int i) {
        super.x(i);
        this.h = -2;
        this.i = -2;
    }

    @Override // com.google.common.collect.CompactHashSet
    void y(int i, E e2, int i2, int i3) {
        super.y(i, e2, i2, i3);
        T(this.i, i);
        T(i, -2);
    }

    @Override // com.google.common.collect.CompactHashSet
    void z(int i, int i2) {
        int size = size() - 1;
        super.z(i, i2);
        T(P(i), r(i));
        if (i < size) {
            T(P(size), i);
            T(i, r(size));
        }
        Q()[size] = 0;
        R()[size] = 0;
    }
}
