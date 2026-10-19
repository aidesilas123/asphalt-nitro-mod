package com.mbridge.msdk.foundation.same.net.f;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: NetworkResponse.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public final int a;
    public final byte[] b;
    public final Map<String, String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<com.mbridge.msdk.foundation.same.net.d.b> f7145d;

    public c(int i, byte[] bArr, List<com.mbridge.msdk.foundation.same.net.d.b> list) {
        this(i, bArr, a(list), list);
    }

    private c(int i, byte[] bArr, Map<String, String> map, List<com.mbridge.msdk.foundation.same.net.d.b> list) {
        this.a = i;
        this.b = bArr;
        this.c = map;
        if (list == null) {
            this.f7145d = null;
        } else {
            this.f7145d = Collections.unmodifiableList(list);
        }
    }

    private static Map<String, String> a(List<com.mbridge.msdk.foundation.same.net.d.b> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (com.mbridge.msdk.foundation.same.net.d.b bVar : list) {
            treeMap.put(bVar.a(), bVar.b());
        }
        return treeMap;
    }
}
