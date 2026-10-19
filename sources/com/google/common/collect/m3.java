package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Iterator;

/* JADX INFO: compiled from: TransformedIterator.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class m3<F, T> implements Iterator<T> {
    final Iterator<? extends F> a;

    m3(Iterator<? extends F> it) {
        this.a = (Iterator) Preconditions.checkNotNull(it);
    }

    abstract T a(F f2);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.a.remove();
    }
}
