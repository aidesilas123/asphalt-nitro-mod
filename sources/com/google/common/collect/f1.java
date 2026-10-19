package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: compiled from: ForwardingSet.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class f1<E> extends u0<E> implements Set<E> {
    protected f1() {
    }

    protected abstract Set<E> P();

    protected boolean Q(Collection<?> collection) {
        return Sets.d(this, (Collection) Preconditions.checkNotNull(collection));
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        return obj == this || P().equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return P().hashCode();
    }
}
