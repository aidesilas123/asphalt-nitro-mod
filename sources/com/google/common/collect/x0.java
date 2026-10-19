package com.google.common.collect;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: ForwardingList.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class x0<E> extends u0<E> implements List<E> {
    protected x0() {
    }

    protected abstract List<E> P();

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return obj == this || P().equals(obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return P().get(i);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return P().hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return P().indexOf(obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return P().lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return P().listIterator();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return P().listIterator(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        return P().remove(i);
    }

    @Override // java.util.List
    public E set(int i, E e2) {
        return P().set(i, e2);
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return P().subList(i, i2);
    }
}
