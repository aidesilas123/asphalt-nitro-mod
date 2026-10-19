package com.mbridge.msdk.dycreator.g;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: BaseAbstractSubject.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends com.mbridge.msdk.dycreator.c.a {
    private List<Object> b = new ArrayList();
    protected ConcurrentHashMap<Integer, Object> a = new ConcurrentHashMap<>();

    public final synchronized void a() {
        this.a.clear();
    }

    public final synchronized void a(Object obj, int i) {
        if (obj != null) {
            ConcurrentHashMap<Integer, Object> concurrentHashMap = this.a;
            if (concurrentHashMap != null && !concurrentHashMap.containsValue(obj)) {
                this.a.put(Integer.valueOf(i), obj);
            }
        }
    }
}
