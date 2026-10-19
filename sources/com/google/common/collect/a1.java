package com.google.common.collect;

/* JADX INFO: compiled from: ForwardingMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class a1<K, V> extends d1 implements b2<K, V> {
    protected a1() {
    }

    @Override // com.google.common.collect.b2
    public boolean A(Object obj, Object obj2) {
        return C().A(obj, obj2);
    }

    protected abstract b2<K, V> C();

    @Override // com.google.common.collect.b2
    public boolean containsKey(Object obj) {
        return C().containsKey(obj);
    }

    @Override // com.google.common.collect.b2
    public boolean equals(Object obj) {
        return obj == this || C().equals(obj);
    }

    @Override // com.google.common.collect.b2
    public int hashCode() {
        return C().hashCode();
    }

    @Override // com.google.common.collect.b2
    public boolean isEmpty() {
        return C().isEmpty();
    }

    @Override // com.google.common.collect.b2
    public int size() {
        return C().size();
    }
}
