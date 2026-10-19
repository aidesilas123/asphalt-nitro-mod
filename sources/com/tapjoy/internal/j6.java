package com.tapjoy.internal;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class j6 extends AbstractList implements RandomAccess, Serializable {
    public final List a;
    public List b;

    public j6(List list) {
        this.a = list;
        this.b = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        if (this.b == this.a) {
            this.b = new ArrayList(this.a);
        }
        this.b.add(i, obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        if (this.b == this.a) {
            this.b = new ArrayList(this.a);
        }
        return this.b.remove(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        if (this.b == this.a) {
            this.b = new ArrayList(this.a);
        }
        return this.b.set(i, obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.b.size();
    }
}
