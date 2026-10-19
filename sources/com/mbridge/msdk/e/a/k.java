package com.mbridge.msdk.e.a;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: NetworkResponse.java */
/* JADX INFO: loaded from: classes4.dex */
public final class k {
    public final int a;
    public final byte[] b;
    public final Map<String, String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<g> f6950d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f6952f;

    private k(int i, byte[] bArr, Map<String, String> map, List<g> list, boolean z, long j) {
        this.a = i;
        this.b = bArr;
        this.c = map;
        if (list == null) {
            this.f6950d = null;
        } else {
            this.f6950d = Collections.unmodifiableList(list);
        }
        this.f6951e = z;
        this.f6952f = j;
    }

    public k(int i, byte[] bArr, boolean z, long j, List<g> list) {
        this(i, bArr, a(list), list, z, j);
    }

    private static Map<String, String> a(List<g> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (g gVar : list) {
            treeMap.put(gVar.a(), gVar.b());
        }
        return treeMap;
    }
}
