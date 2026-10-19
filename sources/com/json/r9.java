package com.json;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.json.h6;
import com.json.sdk.utils.IronSourceQaProperties;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.SDKUtils;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class r9 {
    private final e5 b = e9.h().c();
    z4 a = new z4();

    public void a() {
        JSONObject jSONObject = new JSONObject(IronSourceQaProperties.getInstance().getParameters());
        if (jSONObject.length() > 0) {
            this.a.a("debug", jSONObject);
        }
    }

    public void a(Context context) {
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (Build.VERSION.SDK_INT >= 19) {
                this.a.a("imm", Boolean.valueOf(this.b.a(activity)));
            }
        }
    }

    public void a(h6.c cVar) {
        this.a.a(v4.Z0, Integer.valueOf(cVar.ordinal()));
    }

    public void a(JSONObject jSONObject) {
        this.a.a(v4.k, jSONObject);
    }

    public void b() {
        String controllerConfig = SDKUtils.getControllerConfig();
        if (TextUtils.isEmpty(controllerConfig)) {
            return;
        }
        try {
            this.a.a(v4.i, new JSONObject(controllerConfig).opt("chinaCDN"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void b(Context context) {
        this.a.a("gpi", Boolean.valueOf(ja.d(context)));
    }

    public void c() {
        this.a.a("uxt", Boolean.valueOf(IronSourceStorageUtils.isUxt()));
    }

    public void d() {
        this.a.a(v4.J, "7.7.0");
    }

    public void e() {
        HashMap map = new HashMap();
        map.put(v4.w, t9.f6641f);
        map.put(v4.v, t9.f6640e);
        this.a.a(map);
    }
}
