package com.mbridge.msdk.foundation.same.report;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: CommonReportEventGroup.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private final String a;
    private final Map<String, b> b;

    public c() {
        this(null);
    }

    private c(String str) {
        this.a = str;
        this.b = new ConcurrentHashMap();
    }

    public final b a(b bVar) {
        if (bVar == null) {
            return null;
        }
        this.b.put(bVar.i(), bVar);
        return bVar;
    }

    public final b a(b bVar, String str, boolean z, boolean z2) {
        if (bVar == null) {
            return null;
        }
        b bVarRemove = z ? this.b.remove(str) : this.b.get(str);
        if (bVarRemove != null) {
            bVar = bVar.a().a(bVar.q() - bVarRemove.q()).a();
        }
        if (!z2) {
            this.b.put(bVar.i(), bVar);
        }
        return bVar;
    }
}
