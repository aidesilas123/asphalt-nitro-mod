package com.applovin.impl.sdk;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class s {
    private final Map<String, Object> aEQ;
    private final long aER;

    /* JADX INFO: renamed from: do, reason: not valid java name */
    private final String f13do = UUID.randomUUID().toString();
    private final String name;

    public s(String str, Map<String, String> map, Map<String, Object> map2) {
        this.name = str;
        HashMap map3 = new HashMap();
        this.aEQ = map3;
        map3.putAll(map);
        map3.put("applovin_sdk_super_properties", map2);
        this.aER = System.currentTimeMillis();
    }

    public Map<String, Object> EU() {
        return this.aEQ;
    }

    public long EV() {
        return this.aER;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        if (this.aER != sVar.aER) {
            return false;
        }
        String str = this.name;
        if (str == null ? sVar.name != null : !str.equals(sVar.name)) {
            return false;
        }
        Map<String, Object> map = this.aEQ;
        if (map == null ? sVar.aEQ != null : !map.equals(sVar.aEQ)) {
            return false;
        }
        String str2 = this.f13do;
        String str3 = sVar.f13do;
        if (str2 != null) {
            if (str2.equals(str3)) {
                return true;
            }
        } else if (str3 == null) {
            return true;
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.name;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, Object> map = this.aEQ;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        long j = this.aER;
        int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        String str2 = this.f13do;
        return i + (str2 != null ? str2.hashCode() : 0);
    }

    public String mQ() {
        return this.f13do;
    }

    public String toString() {
        return "Event{name='" + this.name + "', id='" + this.f13do + "', creationTimestampMillis=" + this.aER + ", parameters=" + this.aEQ + '}';
    }
}
