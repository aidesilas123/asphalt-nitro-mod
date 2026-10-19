package com.json;

import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class cd {
    private int b = 4;
    private int c = 4;
    private HashMap<String, Boolean> a = new a();

    class a extends HashMap<String, Boolean> {
        a() {
            put(z5.k, Boolean.valueOf(cd.this.b == 0));
            put(z5.l, Boolean.valueOf(cd.this.c == 0));
            Boolean bool = Boolean.FALSE;
            put(z5.m, bool);
            put(z5.n, bool);
        }
    }

    cd() {
    }

    public JSONObject a() {
        return new JSONObject(this.a);
    }

    void b(String str, int i, boolean z) {
        if (this.a.containsKey(str)) {
            this.a.put(str, Boolean.valueOf(i == 0));
        }
        this.a.put(z5.m, Boolean.valueOf(z));
        this.a.put(z5.n, Boolean.valueOf((this.a.get(z5.l).booleanValue() || this.a.get(z5.k).booleanValue()) && this.a.get(z5.m).booleanValue()));
    }
}
