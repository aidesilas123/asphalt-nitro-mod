package com.unity3d.scar.adapter.common.l;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: SignalsResult.java */
/* JADX INFO: loaded from: classes4.dex */
public class f {
    private Map<String, String> a = new HashMap();
    private String b = null;

    public void a(String str, String str2) {
        this.a.put(str, str2);
    }

    public String b() {
        return this.b;
    }

    public Map<String, String> c() {
        return this.a;
    }

    public void d(String str) {
        this.b = str;
    }
}
