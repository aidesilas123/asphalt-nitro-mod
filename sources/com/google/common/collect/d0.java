package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Queue;

/* JADX INFO: compiled from: ConsumingQueueIterator.java */
/* JADX INFO: loaded from: classes3.dex */
final class d0<T> extends AbstractIterator<T> {
    private final Queue<T> c;

    d0(Queue<T> queue) {
        this.c = (Queue) Preconditions.checkNotNull(queue);
    }

    @Override // com.google.common.collect.AbstractIterator
    public T b() {
        return this.c.isEmpty() ? c() : this.c.remove();
    }
}
