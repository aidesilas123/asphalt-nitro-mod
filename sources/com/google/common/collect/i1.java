package com.google.common.collect;

import com.google.common.collect.l3;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: ForwardingTable.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class i1<R, C, V> extends d1 implements l3<R, C, V> {
    protected i1() {
    }

    protected abstract l3<R, C, V> C();

    @Override // com.google.common.collect.l3
    public boolean containsValue(Object obj) {
        return C().containsValue(obj);
    }

    @Override // com.google.common.collect.l3
    public boolean equals(Object obj) {
        return obj == this || C().equals(obj);
    }

    public Set<R> h() {
        return C().h();
    }

    @Override // com.google.common.collect.l3
    public int hashCode() {
        return C().hashCode();
    }

    public Map<R, Map<C, V>> j() {
        return C().j();
    }

    public Map<C, Map<R, V>> n() {
        return C().n();
    }

    @Override // com.google.common.collect.l3
    public int size() {
        return C().size();
    }

    public Set<l3.a<R, C, V>> t() {
        return C().t();
    }

    public Collection<V> values() {
        return C().values();
    }

    public Set<C> z() {
        return C().z();
    }
}
