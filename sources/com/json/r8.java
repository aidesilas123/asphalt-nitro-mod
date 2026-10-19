package com.json;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class r8 {
    private p8 a;

    public r8(p8 p8Var) {
        this.a = p8Var;
    }

    public void a(q8 q8Var, JSONObject jSONObject) {
        this.a.a(false, q8Var.a(), jSONObject);
    }

    public void b(q8 q8Var, JSONObject jSONObject) {
        this.a.a(true, q8Var.d(), jSONObject);
    }
}
