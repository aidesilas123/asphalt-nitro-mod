package com.bytedance.sdk.component.a;

import android.text.TextUtils;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: compiled from: PermissionConfigRepository.java */
/* JADX INFO: loaded from: classes.dex */
class w {
    private final Collection<String> a;
    private final Map<String, v> b;
    private final k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<a> f643d;

    /* JADX INFO: compiled from: PermissionConfigRepository.java */
    interface a {
    }

    private v a(String str, JSONObject jSONObject) {
        v vVar = this.b.get(str);
        if (vVar == null) {
            v vVar2 = new v(str, this.c.c(), this.c.a(), this.c.b(), jSONObject);
            this.b.put(str, vVar2);
            return vVar2;
        }
        if (jSONObject == null) {
            return vVar;
        }
        vVar.a(jSONObject);
        return vVar;
    }

    v a(String str) {
        if (this.a.contains(str) || TextUtils.equals(str, "host")) {
            return a(str, null);
        }
        throw new IllegalArgumentException("Namespace: " + str + " not registered.");
    }

    void a(a aVar) {
        this.f643d.add(aVar);
    }

    void b(a aVar) {
        this.f643d.remove(aVar);
    }
}
