package com.unity3d.scar.adapter.common.l;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: SignalsStorage.java */
/* JADX INFO: loaded from: classes4.dex */
public class g<T> {
    private final Map<String, T> a = new ConcurrentHashMap();

    public T a(String str) {
        return this.a.get(str);
    }

    public void b(String str, T t) {
        this.a.put(str, t);
    }
}
