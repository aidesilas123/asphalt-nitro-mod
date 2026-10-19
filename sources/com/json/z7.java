package com.json;

import android.content.Context;
import android.text.TextUtils;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.WaterfallConfiguration;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class z7 {
    z4 a = new z4();

    public void a(int i) {
        this.a.a(v4.V, Integer.valueOf(i));
    }

    public void a(Context context) {
        this.a.a(context);
    }

    public void a(IronSource.AD_UNIT ad_unit, WaterfallConfiguration waterfallConfiguration) {
        JSONObject jSONObject = new JSONObject();
        if (waterfallConfiguration != null) {
            try {
                jSONObject.put(v4.V0, waterfallConfiguration.getFloor());
                jSONObject.put(v4.W0, waterfallConfiguration.getCeiling());
            } catch (JSONException unused) {
            }
        }
        if (jSONObject.length() == 0) {
            this.a.a(v4.U0, d0.a(ad_unit));
        } else {
            this.a.a(v4.U0, jSONObject, d0.a(ad_unit));
        }
    }

    public void a(p5 p5Var) {
        try {
            HashMap map = new HashMap();
            map.put(v4.w, p5Var.a());
            map.put(v4.v, p5Var.b());
            map.put(v4.J, p5Var.c());
            this.a.a(map);
        } catch (Exception unused) {
        }
    }

    public void a(Boolean bool) {
        this.a.a(v4.v0, bool);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(v4.r0, str);
    }

    public void a(JSONObject jSONObject) {
        this.a.a(v4.r, (Object) jSONObject);
    }

    public void a(boolean z) {
        this.a.a(v4.t0, Boolean.valueOf(z));
    }

    public void b(int i) {
        if (i >= 0) {
            this.a.a(v4.u0, Integer.valueOf(i));
        }
    }

    public void b(String str) {
        this.a.a(v4.n0, str);
    }

    public void b(JSONObject jSONObject) {
        this.a.a(v4.G0, (Object) jSONObject);
    }

    public void b(boolean z) {
        this.a.a("gpi", Boolean.valueOf(z));
    }

    public void c(int i) {
        this.a.a(v4.T, Integer.valueOf(i));
    }

    public void c(String str) {
        this.a.a(v4.p0, str);
    }

    public void d(String str) {
        this.a.a("mt", str);
    }

    public void e(String str) {
        this.a.a(v4.t, str);
    }

    public void f(String str) {
        this.a.a(v4.B, str);
    }

    public void g(String str) {
        this.a.a(v4.E0, str);
    }

    public void h(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(v4.S, str);
    }
}
