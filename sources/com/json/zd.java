package com.json;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
abstract class zd {
    private final v a;

    public zd(v vVar) {
        this.a = vVar;
    }

    protected void a(t tVar) {
        b(tVar, null);
    }

    protected void b(t tVar, Map<String, Object> map) {
        this.a.d(tVar, map);
    }

    protected void c(t tVar, Map<String, Object> map, long j) {
        this.a.e(tVar, map, j);
    }
}
