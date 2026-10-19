package com.tapjoy;

import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class TJMemoryDataStorage {
    public static TJMemoryDataStorage a;
    public final WeakHashMap b = new WeakHashMap();

    public static TJMemoryDataStorage getInstance() {
        if (a == null) {
            synchronized (TJMemoryDataStorage.class) {
                if (a == null) {
                    a = new TJMemoryDataStorage();
                }
            }
        }
        return a;
    }

    public Object a(String str) {
        return this.b.get(str);
    }

    public void b(String str, Object obj) {
        this.b.put(str, obj);
    }

    public Object c(String str) {
        return this.b.remove(str);
    }
}
