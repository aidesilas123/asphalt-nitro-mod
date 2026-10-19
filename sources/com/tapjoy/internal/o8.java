package com.tapjoy.internal;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class o8 extends AbstractMap {
    public final HashMap a = new HashMap();
    public final d7 b = new d7();

    public final void a() {
        while (true) {
            s6 s6VarA = this.b.a();
            if (s6VarA == null) {
                return;
            } else {
                this.a.remove(s6VarA.a);
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.a.clear();
        while (this.b.a() != null) {
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        a();
        return this.a.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        a();
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            if (obj.equals(((s6) it.next()).get())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        a();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        a();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        a();
        s6 s6Var = (s6) this.a.get(obj);
        if (s6Var != null) {
            return s6Var.get();
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        a();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        a();
        return this.a.keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        a();
        HashMap map = this.a;
        d7 d7Var = this.b;
        d7Var.getClass();
        s6 s6Var = (s6) map.put(obj, new s6(obj, obj2, d7Var));
        if (s6Var != null) {
            return s6Var.get();
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        a();
        s6 s6Var = (s6) this.a.remove(obj);
        if (s6Var != null) {
            return s6Var.get();
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        a();
        return this.a.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        a();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        a();
        throw new UnsupportedOperationException();
    }
}
