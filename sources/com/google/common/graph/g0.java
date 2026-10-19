package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.o3;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: MultiEdgesConnecting.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class g0<E> extends AbstractSet<E> {
    private final Map<E, ?> a;
    private final Object b;

    /* JADX INFO: compiled from: MultiEdgesConnecting.java */
    class a extends AbstractIterator<E> {
        final /* synthetic */ Iterator c;

        a(Iterator it) {
            this.c = it;
        }

        @Override // com.google.common.collect.AbstractIterator
        protected E b() {
            while (this.c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.c.next();
                if (g0.this.b.equals(entry.getValue())) {
                    return (E) entry.getKey();
                }
            }
            return c();
        }
    }

    g0(Map<E, ?> map, Object obj) {
        this.a = (Map) Preconditions.checkNotNull(map);
        this.b = Preconditions.checkNotNull(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.b.equals(this.a.get(obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public o3<E> iterator() {
        return new a(this.a.entrySet().iterator());
    }
}
