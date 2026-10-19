package com.tapjoy.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Observable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c4 extends Observable {
    public final ArrayList a = new ArrayList();

    public final q3 a() {
        q3 q3Var = new q3();
        this.a.add(q3Var);
        return q3Var;
    }

    public final boolean b(String str) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            Map map = ((q3) it.next()).a;
            Object obj = map != null ? map.get(str) : null;
            if (obj != null) {
                if (obj instanceof Boolean) {
                    return ((Boolean) obj).booleanValue();
                }
                if (!(obj instanceof String)) {
                    continue;
                } else {
                    if ("true".equals(obj)) {
                        return true;
                    }
                    if ("false".equals(obj)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    @Override // java.util.Observable
    public final void setChanged() {
        super.setChanged();
        notifyObservers();
    }
}
