package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
public final class EvictingQueue<E> extends e1<E> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Queue<E> a;
    final int b;

    private EvictingQueue(int i) {
        Preconditions.checkArgument(i >= 0, "maxSize (%s) must >= 0", i);
        this.a = new ArrayDeque(i);
        this.b = i;
    }

    public static <E> EvictingQueue<E> create(int i) {
        return new EvictingQueue<>(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.u0
    public Queue<E> P() {
        return this.a;
    }

    @Override // com.google.common.collect.u0, java.util.Collection, java.util.Queue
    public boolean add(E e2) {
        Preconditions.checkNotNull(e2);
        if (this.b == 0) {
            return true;
        }
        if (size() == this.b) {
            this.a.remove();
        }
        this.a.add(e2);
        return true;
    }

    @Override // com.google.common.collect.u0, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size < this.b) {
            return D(collection);
        }
        clear();
        return Iterables.addAll(this, Iterables.skip(collection, size - this.b));
    }

    @Override // java.util.Queue
    public boolean offer(E e2) {
        return add(e2);
    }

    @Override // com.google.common.collect.u0, java.util.Collection
    public Object[] toArray() {
        return super.toArray();
    }
}
