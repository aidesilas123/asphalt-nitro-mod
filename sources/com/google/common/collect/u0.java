package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: ForwardingCollection.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class u0<E> extends d1 implements Collection<E> {
    protected u0() {
    }

    /* JADX INFO: renamed from: C */
    protected abstract Collection<E> P();

    protected boolean D(Collection<? extends E> collection) {
        return Iterators.addAll(this, collection.iterator());
    }

    protected boolean E(Collection<?> collection) {
        return Collections2.b(this, collection);
    }

    protected boolean F(Collection<?> collection) {
        return Iterators.retainAll(iterator(), collection);
    }

    protected Object[] G() {
        return toArray(new Object[size()]);
    }

    protected <T> T[] H(T[] tArr) {
        return (T[]) ObjectArrays.f(this, tArr);
    }

    protected String O() {
        return Collections2.h(this);
    }

    public boolean add(E e2) {
        return P().add(e2);
    }

    public boolean addAll(Collection<? extends E> collection) {
        return P().addAll(collection);
    }

    public void clear() {
        P().clear();
    }

    public boolean contains(Object obj) {
        return P().contains(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return P().containsAll(collection);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return P().isEmpty();
    }

    public Iterator<E> iterator() {
        return P().iterator();
    }

    public boolean remove(Object obj) {
        return P().remove(obj);
    }

    public boolean removeAll(Collection<?> collection) {
        return P().removeAll(collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return P().retainAll(collection);
    }

    @Override // java.util.Collection
    public int size() {
        return P().size();
    }

    public Object[] toArray() {
        return P().toArray();
    }

    public <T> T[] toArray(T[] tArr) {
        return (T[]) P().toArray(tArr);
    }
}
