package com.google.common.collect;

import java.util.Queue;

/* JADX INFO: compiled from: ForwardingQueue.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class e1<E> extends u0<E> implements Queue<E> {
    protected e1() {
    }

    protected abstract Queue<E> P();

    @Override // java.util.Queue
    public E element() {
        return P().element();
    }

    @Override // java.util.Queue
    public E peek() {
        return P().peek();
    }

    @Override // java.util.Queue
    public E poll() {
        return P().poll();
    }

    @Override // java.util.Queue
    public E remove() {
        return P().remove();
    }
}
