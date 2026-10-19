package com.json;

import com.json.mediationsdk.e;
import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c1 extends e.a {
    public c1(t0 t0Var, URL url, JSONObject jSONObject, boolean z, int i, long j, boolean z2, boolean z3, int i2) {
        super(t0Var, url, jSONObject, z, i, j, z2, z3, i2);
    }

    @Override // com.ironsource.mediationsdk.e.a
    protected void i(boolean z, t0 t0Var, long j) {
        try {
            if (z) {
                ((y0) t0Var).a(this.b, this.f6320f + 1, j, this.j, this.i);
            } else {
                t0Var.a(this.c, this.f6318d, this.f6320f + 1, this.f6321g, j);
            }
        } catch (Exception e2) {
            t0Var.a(1009, e2.getMessage(), this.f6320f + 1, this.f6321g, j);
        }
    }
}
