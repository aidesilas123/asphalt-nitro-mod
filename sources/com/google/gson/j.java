package com.google.gson;

import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: JsonObject.java */
/* JADX INFO: loaded from: classes3.dex */
public final class j extends g {
    private final com.google.gson.internal.d<String, g> a = new com.google.gson.internal.d<>(false);

    public Set<Map.Entry<String, g>> entrySet() {
        return this.a.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof j) && ((j) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public void n(String str, g gVar) {
        com.google.gson.internal.d<String, g> dVar = this.a;
        if (gVar == null) {
            gVar = i.a;
        }
        dVar.put(str, gVar);
    }
}
