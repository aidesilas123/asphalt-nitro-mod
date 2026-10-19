package com.kidoz.sdk.api.general.utils;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum StorageLife {
    WIDGET,
    SESSION,
    APP;

    private static final Map<StorageLife, Integer> lookup;
    private static final Map<Integer, StorageLife> reverseLookup;

    static {
        StorageLife storageLife = WIDGET;
        StorageLife storageLife2 = SESSION;
        StorageLife storageLife3 = APP;
        HashMap map = new HashMap();
        lookup = map;
        HashMap map2 = new HashMap();
        reverseLookup = map2;
        map.put(storageLife, 0);
        map.put(storageLife2, 1);
        map.put(storageLife3, 2);
        map2.put(0, storageLife);
        map2.put(1, storageLife2);
        map2.put(2, storageLife3);
    }

    public static StorageLife getTypeByValue(int i) {
        return reverseLookup.get(Integer.valueOf(i));
    }

    public static int getValueFromType(StorageLife storageLife) {
        return lookup.get(storageLife).intValue();
    }
}
