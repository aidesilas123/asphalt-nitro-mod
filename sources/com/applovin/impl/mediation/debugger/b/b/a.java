package com.applovin.impl.mediation.debugger.b.b;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private final Map<String, List<b>> aoJ;
    private final List<b> aoK;

    public a(Map<String, List<b>> map, List<b> list) {
        this.aoJ = map;
        this.aoK = list;
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (!aVar.canEqual(this)) {
            return false;
        }
        Map<String, List<b>> mapVa = va();
        Map<String, List<b>> mapVa2 = aVar.va();
        if (mapVa != null ? !mapVa.equals(mapVa2) : mapVa2 != null) {
            return false;
        }
        List<b> listVb = vb();
        List<b> listVb2 = aVar.vb();
        return listVb != null ? listVb.equals(listVb2) : listVb2 == null;
    }

    public int hashCode() {
        Map<String, List<b>> mapVa = va();
        int iHashCode = mapVa == null ? 43 : mapVa.hashCode();
        List<b> listVb = vb();
        return ((iHashCode + 59) * 59) + (listVb != null ? listVb.hashCode() : 43);
    }

    public String toString() {
        return "AppAdsTxt(domainEntries=" + va() + ", invalidEntries=" + vb() + ")";
    }

    public Map<String, List<b>> va() {
        return this.aoJ;
    }

    public List<b> vb() {
        return this.aoK;
    }
}
