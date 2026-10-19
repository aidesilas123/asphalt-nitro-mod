package com.applovin.impl.mediation.debugger.b.a;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c implements Comparable<c> {
    private final String aow;
    private final boolean aox;
    private final com.applovin.impl.mediation.debugger.b.c.b aoy;
    private final String name;

    c(String str, String str2, boolean z, com.applovin.impl.mediation.debugger.b.c.b bVar) {
        this.name = str;
        this.aow = str2;
        this.aox = z;
        this.aoy = bVar;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(c cVar) {
        return this.aow.compareToIgnoreCase(cVar.aow);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        String str = this.name;
        if (str == null ? cVar.name != null : !str.equals(cVar.name)) {
            return false;
        }
        String str2 = this.aow;
        if (str2 == null ? cVar.aow == null : str2.equals(cVar.aow)) {
            return this.aox == cVar.aox;
        }
        return false;
    }

    public String getDisplayName() {
        return this.aow;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.name;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.aow;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.aox ? 1 : 0);
    }

    public List<String> uO() {
        List<String> listVv = this.aoy.vv();
        return (listVv == null || listVv.isEmpty()) ? Collections.singletonList(this.name) : listVv;
    }

    public com.applovin.impl.mediation.debugger.b.c.b uP() {
        return this.aoy;
    }
}
