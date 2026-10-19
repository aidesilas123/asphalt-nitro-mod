package com.mbridge.msdk.foundation.controller;

import java.util.HashMap;
import org.json.JSONArray;

/* JADX INFO: compiled from: CandidateController.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private HashMap<String, com.mbridge.msdk.foundation.b.d> a;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.controller.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CandidateController.java */
    static class C0400a {
        static a a = new a();
    }

    private a() {
        this.a = new HashMap<>();
    }

    public static a a() {
        return C0400a.a;
    }

    public final com.mbridge.msdk.foundation.b.d a(String str, JSONArray jSONArray) {
        if (this.a == null) {
            this.a = new HashMap<>();
        }
        if (this.a.containsKey(str)) {
            return this.a.get(str);
        }
        if (this.a == null) {
            this.a = new HashMap<>();
        }
        if (this.a.containsKey(str)) {
            return this.a.get(str);
        }
        com.mbridge.msdk.foundation.b.d dVar = new com.mbridge.msdk.foundation.b.d(str, jSONArray);
        this.a.put(str, dVar);
        return dVar;
    }
}
