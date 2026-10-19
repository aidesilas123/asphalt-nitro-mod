package com.fyber.inneractive.sdk.config.global;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class h implements d {
    public Set<String> a = new HashSet();
    public boolean b;

    public h(JSONArray jSONArray, boolean z) {
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                String strOptString = jSONArray.optString(i);
                if (!TextUtils.isEmpty(strOptString)) {
                    this.a.add(strOptString);
                }
            }
        }
        this.b = z;
    }

    @Override // com.fyber.inneractive.sdk.config.global.d
    public boolean a(e eVar) {
        if (this.a.isEmpty() || eVar == null || eVar.c == null) {
            return false;
        }
        Iterator<String> it = this.a.iterator();
        while (it.hasNext()) {
            if (it.next().equals(eVar.c.value())) {
                return !this.b;
            }
        }
        return this.b;
    }

    public String toString() {
        return String.format("%s - %s include: %b", "placement_type", this.a, Boolean.valueOf(this.b));
    }
}
