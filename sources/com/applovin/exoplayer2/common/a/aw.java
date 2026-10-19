package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
abstract class aw<F, T> implements Iterator<T> {
    final Iterator<? extends F> ri;

    aw(Iterator<? extends F> it) {
        this.ri = (Iterator) Preconditions.checkNotNull(it);
    }

    abstract T A(F f2);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.ri.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return A(this.ri.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.ri.remove();
    }
}
