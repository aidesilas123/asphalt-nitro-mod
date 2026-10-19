package com.google.common.collect;

import java.lang.Comparable;
import java.util.Iterator;

/* JADX INFO: compiled from: AbstractRangeSet.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class m<C extends Comparable> implements l2<C> {
    m() {
    }

    public abstract void b(Range<C> range);

    public void d(l2<C> l2Var) {
        e(l2Var.c());
    }

    public void e(Iterable<Range<C>> iterable) {
        Iterator<Range<C>> it = iterable.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2) {
            return c().equals(((l2) obj).c());
        }
        return false;
    }

    public final int hashCode() {
        return c().hashCode();
    }

    @Override // com.google.common.collect.l2
    public boolean isEmpty() {
        return c().isEmpty();
    }

    public final String toString() {
        return c().toString();
    }
}
