package com.fyber.inneractive.sdk.config.global;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class i implements d {
    public Set<Long> a = new HashSet();
    public boolean b;

    public i(JSONArray jSONArray, boolean z) {
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                long jOptLong = jSONArray.optLong(i);
                if (jOptLong != 0) {
                    this.a.add(Long.valueOf(jOptLong));
                }
            }
        }
        this.b = z;
    }

    @Override // com.fyber.inneractive.sdk.config.global.d
    public boolean a(e eVar) {
        if (this.a.isEmpty() || eVar == null || eVar.b == null) {
            return false;
        }
        Iterator<Long> it = this.a.iterator();
        while (it.hasNext()) {
            if (it.next().equals(eVar.b)) {
                return !this.b;
            }
        }
        return this.b;
    }

    public String toString() {
        return String.format("%s - %s include: %b", "pub_id", this.a, Boolean.valueOf(this.b));
    }
}
