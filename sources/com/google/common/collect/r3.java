package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: compiled from: UsingToStringOrdering.java */
/* JADX INFO: loaded from: classes3.dex */
final class r3 extends Ordering<Object> implements Serializable {
    static final r3 a = new r3();
    private static final long serialVersionUID = 0;

    private r3() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    public String toString() {
        return "Ordering.usingToString()";
    }
}
