package com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: compiled from: ForwardingIterator.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class w0<T> extends d1 implements Iterator<T> {
    protected w0() {
    }

    protected abstract Iterator<T> C();

    @Override // java.util.Iterator
    public boolean hasNext() {
        return C().hasNext();
    }

    public T next() {
        return C().next();
    }
}
