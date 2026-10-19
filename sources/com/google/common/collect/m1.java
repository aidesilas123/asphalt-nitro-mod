package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: compiled from: ImmutableAsList.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class m1<E> extends ImmutableList<E> {

    /* JADX INFO: compiled from: ImmutableAsList.java */
    static class a implements Serializable {
        private static final long serialVersionUID = 0;
        final n1<?> a;

        a(n1<?> n1Var) {
            this.a = n1Var;
        }

        Object readResolve() {
            return this.a.e();
        }
    }

    m1() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    abstract n1<E> C();

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return C().contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return C().isEmpty();
    }

    @Override // com.google.common.collect.n1
    boolean j() {
        return C().j();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return C().size();
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.n1
    Object writeReplace() {
        return new a(C());
    }
}
