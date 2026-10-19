package com.google.common.collect;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: AbstractSequentialIterator.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class n<T> extends o3<T> {
    private T a;

    protected n(T t) {
        this.a = t;
    }

    protected abstract T a(T t);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a != null;
    }

    @Override // java.util.Iterator
    public final T next() {
        T t = this.a;
        if (t == null) {
            throw new NoSuchElementException();
        }
        this.a = a(t);
        return t;
    }
}
